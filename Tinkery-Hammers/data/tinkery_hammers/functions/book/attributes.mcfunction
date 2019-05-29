#Here you can add pages to the Attributes book
#These will be called whenever a player summons the Book of Attributes
#t_new_attr_book is the summoned book as an item entity
#Don't use white text - you can't see it on the pages
data modify entity @e[type=item,tag=t_new_attr_book,limit=1] Item.tag.pages append value "[\"\",{\"text\":\"Speed Effect\",\"color\":\"gray\"},{\"text\":\"\\n\\nApplies to Charms and Shields.\",\"color\":\"none\"},{\"text\":\"\\n\\nGives swiftness.\",\"color\":\"none\"},{\"text\":\"\\n\\nMaterial: Sugar\",\"color\":\"none\"},{\"text\":\"\\n\\nStarting cost: 32\",\"color\":\"none\"}]"