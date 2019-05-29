execute at @s run function tinkery_data:construct/conversion/attr_damage
data modify block ~ ~0.6 ~ Items[{Slot:16b}].tag.Tinkery.itemdur set value 129
data modify block ~ ~0.6 ~ Items[{Slot:16b}].tag.Tinkery.material set value "stone"
data modify block ~ ~0.6 ~ Items[{Slot:16b}].tag.Tinkery.Type set value "axe"
data modify block ~ ~0.6 ~ Items[{Slot:16b}].tag.AttributeModifiers[{AttributeName:"tinkery.durability"}].Amount set value 256
data modify block ~ ~0.6 ~ Items[{Slot:16b}].tag.AttributeModifiers[{AttributeName:"tinkery.maxDurability"}].Amount set value 256
data modify block ~ ~0.6 ~ Items[{Slot:16b}].tag.AttributeModifiers[{AttributeName:"generic.attackDamage"}].Amount set value 8
data modify block ~ ~0.6 ~ Items[{Slot:16b}].tag.AttributeModifiers[{AttributeName:"generic.attackSpeed"}].Amount set value -3.2