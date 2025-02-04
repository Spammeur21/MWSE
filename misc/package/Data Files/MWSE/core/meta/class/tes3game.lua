--- @meta
--- @diagnostic disable:undefined-doc-name

--- A core game object used for storing game settings.
--- @class tes3game
--- @field activationAmbientLight niAmbientLight *Read-only*. No description yet available.
--- @field debugRoot niBillboardNode|niCollisionSwitch|niNode|niSwitchNode *Read-only*. Access to the root of the scene graph of the Debug menu layer.
--- @field fogProperty niFogProperty *Read-only*. No description yet available.
--- @field parentWindowHandle number *Read-only*. The Windows HWND for the parent window.
--- @field playerTarget tes3reference *Read-only*. The current activation target.
--- @field renderDistance number The game's rendering distance.
--- @field sceneGraphCollideString niBillboardNode|niCollisionSwitch|niNode|niSwitchNode *Read-only*. No description yet available.
--- @field sceneGraphGridString niBillboardNode|niCollisionSwitch|niNode|niSwitchNode *Read-only*. No description yet available.
--- @field sceneGraphTextureString niBillboardNode|niCollisionSwitch|niNode|niSwitchNode *Read-only*. No description yet available.
--- @field screenShotsEnabled boolean State on if screenshots are enabled.
--- @field screenX number *Read-only*. The screen's horizontal position.
--- @field screenY number *Read-only*. The screen's vertical position.
--- @field soundQuality number Sound quality level.
--- @field volumeEffect number Mix volumes for effects.
--- @field volumeFootsteps number Mix volumes for footsteps.
--- @field volumeMaster number Mix volumes for all sounds.
--- @field volumeMedia number Mix volumes for music.
--- @field volumeVoice number Mix volumes for voices.
--- @field windowHandle number *Read-only*. The Windows HWND for the window.
--- @field wireframeProperty niAlphaProperty|niFogProperty|niMaterialProperty|niStencilProperty|niTexturingProperty|niVertexColorProperty *Read-only*. The reused wireframe property, applied when toggling wireframe rendering.
--- @field worldLandscapeRoot niBillboardNode|niCollisionSwitch|niNode|niSwitchNode *Read-only*. Access to the root of the scene graph of all the currently loaded terrain.
--- @field worldObjectRoot niBillboardNode|niCollisionSwitch|niNode|niSwitchNode *Read-only*. Access to the root of the scene graph containing all the static objects, and lights that can't be picked up.
--- @field worldPickRoot niBillboardNode|niCollisionSwitch|niNode|niSwitchNode *Read-only*. Access to the root of the scene graph containing all the objects that can be interacted with (NPCs, items, harvestable plants, activators, doors...), but also some objects that are only rendered in the Construction Set such as sound emmiting activator objects with EditorMarker.NIF mesh.
--- @field worldRoot niBillboardNode|niCollisionSwitch|niNode|niSwitchNode *Read-only*. Access to the root of the world scene graph.
--- @field worldSceneGraphRoot niBillboardNode|niCollisionSwitch|niNode|niSwitchNode *Read-only*. Deprecated, please use `tes3.game.worldRoot` instead. Access to the root of the scene graph.
tes3game = {}

--- Clears data related to activation, resetting what the player can activate.
function tes3game:clearTarget() end

--- This method allows changing gamma correction.
--- @param value number No description yet available.
function tes3game:setGamma(value) end

