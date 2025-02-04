--- @meta
--- @diagnostic disable:undefined-doc-name

--- A skill object.
--- @class tes3skill : tes3baseObject
--- @field actions number[] *Read-only*. A table with 4 values. The amount of experience an action (use of skill) awards.
--- @field attribute number *Read-only*. Skill's governing attribute. Maps to [`tes3.attribute`](https://mwse.github.io/MWSE/references/attributes/) constants.
--- @field iconPath string *Read-only*. The path to the icon for the skill.
--- @field name string *Read-only*. The player-facing name of the skill.
--- @field specialization number The specialization in which the skill belongs. Maps to values in the [`tes3.specialization`](https://mwse.github.io/MWSE/references/specializations/) table.
tes3skill = {}

