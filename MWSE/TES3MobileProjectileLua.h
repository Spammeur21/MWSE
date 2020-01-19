#pragma once

#include "sol.hpp"

namespace mwse {
	namespace lua {
		template <typename T>
		void setUserdataForMobileProjectile(sol::usertype<T>& usertypeDefinition) {
			setUserdataForMobileObject(usertypeDefinition);

			// Basic property binding.
			usertypeDefinition["expire"] = &TES3::MobileProjectile::flagExpire;

			// Access to other objects that need to be packaged.
			usertypeDefinition["firingMobile"] = sol::readonly_property([](TES3::MobileProjectile& self) { return makeLuaObject(self.firingActor); });
			usertypeDefinition["firingWeapon"] = sol::readonly_property([](TES3::MobileProjectile& self) { return makeLuaObject(self.firingWeapon); });
		}

		void bindTES3MobileProjectile();
	}
}
