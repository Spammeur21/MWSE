#include "TES3MiscLua.h"

#include "LuaManager.h"
#include "TES3ObjectLua.h"

#include "TES3Misc.h"
#include "TES3Script.h"
#include "TES3SoulGemData.h"
#include "LuaObject.h"

namespace mwse {
	namespace lua {
		auto createMiscItem( sol::table params )
		{
			return makeObjectCreator( TES3::ObjectType::Misc )->create( params, false );
		}
		
		void bindTES3Misc() {
			// Get our lua state.
			auto stateHandle = LuaManager::getInstance().getThreadSafeStateHandle();
			sol::state& state = stateHandle.state;

			{
				// Start our usertype. We must finish this with state.set_usertype.
				auto usertypeDefinition = state.new_usertype<TES3::SoulGemData>("tes3soulGemData");
				usertypeDefinition["new"] = sol::no_constructor;

				// Allow object to be converted to strings using their object ID.
				usertypeDefinition[sol::meta_function::to_string] = [](TES3::SoulGemData& self) { self.id; };

				// Allow object to be serialized to json.
				usertypeDefinition["__tojson"] = [](TES3::SoulGemData& self, sol::table state) {
					std::ostringstream ss;
					ss << "\"tes3soulGemData:" << self.id << "\"";
					return ss.str();
				};

				// Basic property binding.
				usertypeDefinition["id"] = sol::readonly_property(&TES3::SoulGemData::id);
				usertypeDefinition["mesh"] = sol::readonly_property(&TES3::SoulGemData::mesh);
				usertypeDefinition["name"] = sol::readonly_property(&TES3::SoulGemData::name);
				usertypeDefinition["texture"] = sol::readonly_property(&TES3::SoulGemData::texture);
				usertypeDefinition["value"] = &TES3::SoulGemData::value;
				usertypeDefinition["weight"] = &TES3::SoulGemData::weight;

				// Data that needs to be packaged.
				usertypeDefinition["item"] = sol::readonly_property([](TES3::SoulGemData& self) { makeLuaObject(self.item); });

				// TODO: Deprecated. Remove before 2.1-stable.
				usertypeDefinition["model"] = sol::readonly_property(&TES3::SoulGemData::mesh);
			}

			{
				// Start our usertype. We must finish this with state.set_usertype.
				auto usertypeDefinition = state.new_usertype<TES3::Misc>("tes3misc");
				usertypeDefinition["new"] = sol::no_constructor;

				// Define inheritance structures. These must be defined in order from top to bottom. The complete chain must be defined.
				usertypeDefinition[sol::base_classes] = sol::bases<TES3::Item, TES3::PhysicalObject, TES3::Object, TES3::BaseObject>();
				setUserdataForPhysicalObject(usertypeDefinition);

				// Basic property binding.
				usertypeDefinition["value"] = &TES3::Misc::value;
				usertypeDefinition["weight"] = &TES3::Misc::weight;

				// Access to other objects that need to be packaged.
				usertypeDefinition["script"] = sol::readonly_property([](TES3::Misc& self) { return makeLuaObject(self.getScript()); });

				// Functions exposed as properties.
				usertypeDefinition["icon"] = sol::property(
					&TES3::Misc::getIconPath,
					[](TES3::Misc& self, const char* value) { if (strlen(value) < 32) tes3::setDataString(&self.icon, value); }
				);
				usertypeDefinition["isKey"] = sol::property(
					[](TES3::Misc& self) { return bool(self.flags & 1); },
					[](TES3::Misc& self, bool value) {
					if (value) {
						self.flags |= 1;
					}
					else {
						self.flags &= ~1;
					}
				}
				);
				usertypeDefinition["isSoulGem"] = sol::readonly_property(&TES3::Misc::isSoulGem);
				usertypeDefinition["soulGemData"] = sol::readonly_property(&TES3::Misc::getSoulGemData);

				usertypeDefinition["mesh"] = sol::property(&TES3::Misc::getModelPath, &TES3::Misc::setModelPath);
				usertypeDefinition["name"] = sol::property(&TES3::Misc::getName, &TES3::Misc::setName);

				// TODO: Deprecated. Remove before 2.1-stable.
				usertypeDefinition["model"] = sol::property(&TES3::Misc::getModelPath, &TES3::Misc::setModelPath);

				// utility function bindings
				usertypeDefinition["create"] = &createMiscItem;
			}
		}
	}
}
