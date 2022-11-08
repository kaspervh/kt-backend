faction = Faction.where(name: 'Tau empire').first_or_create(name: 'Tau empire')

unit = Unit.where(name: "Chrisis Shas'vre").first_or_create(faction_id: faction.id, name: "Chrisis Shas'vre", weapon_skill: 2, balistics_skill: 3, strength: 5, toughness: 4, 
                                                            wounds: 2, initiative: 2, attacks: 3, leadership: 9, armor_save: 3, unit_type: "Jet	Pack Infantry (Character)", 
                                                            price: 32,  options: "<ul> <li>May	take up to three items from the Ranged Weapons and/or Support Systems list.</li><li>May	take any of the	following:</li></ul><p>- Bonding Knife Ritual</p><p>- XV8-02	Crisis ‘Iridium’ Battlesuit</p><ul><li>May	take up	to two drones from the Drones list</li><li>May	take wargear from the Tau Empire armoury including Battlesuit and Leader only items.</li></ul>"
                                                        )
armoury = Armoury.where(name: 'Hard-wired Light	Shield').first_or_create(unit_id: unit.id, name: 'Hard-wired Light Shield', description: "Grants a	5+ invulnerable	save.", price: 15)
armoury = Armoury.where(name: 'Portable	Repulsor Field').first_or_create(unit_id: unit.id, name: 'Portable Repulsor Field', description: "At the start of the Fight sub-phase, at the Initiative 10	step, the bearer inflicts a	Strength 4 AP – hit on every model that	completed a	charge against him.", price: 5)
armoury = Armoury.where(name: 'Command Node').first_or_create(unit_id: unit.id, name: 'Command Node', description: "A sophisticated	communications system. Increases a Leader’s	Inspiring Presence radius from 6” to 12”.", price: 10)
armoury = Armoury.where(name: 'Extended Drone Controller').first_or_create(unit_id: unit.id, name: 'Extended Drone Controller', description: "Any friendly Gun Drones and Marker Drones	within 12” of the Team Leader may use his BS instead of	their own.", price: 10)
armoury = Armoury.where(name: 'Multi-targeting	Array').first_or_create(unit_id: unit.id, name: 'Multi-targeting	Array', description: "This is an AI-assisted sensor	array that scans for hostiles and automatically aligns weapon arms. The model can shoot each of its	weapons	at a different target.", price: 10)
armoury = Armoury.where(name: 'Stabilised Jet').first_or_create(unit_id: unit.id, name: 'Stabilised	Jet', description: "The	model may roll 3D6 and choose two of the dice for the distance rolled for its additional move in the Assault phase.", price: 10)
armoury = Armoury.where(name: 'Low	Weight Composite').first_or_create(unit_id: unit.id, name: 'Low	Weight Composite', description: "The model is immune to	Strikedown.", price: 5)
armoury = Armoury.where(name: 'Coolant Injectors').first_or_create(unit_id: unit.id, name: 'Coolant Injectors', description: "The model	automatically passes Initiative	tests caused by	'Flaming' weapons", price: 5)

