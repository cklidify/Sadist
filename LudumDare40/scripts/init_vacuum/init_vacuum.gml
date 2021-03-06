///init_sweeping
/// @argument spawnBlock
/// @argument spawnChance/100
/// @argument toSpawn
/// @argument timeBonus
/// @argument totalMoney

var spawnBlock = argument0;
var spawnChance = argument1;
var toSpawn = argument2;

var timeBonus = argument3;
var totalMoney = argument4;

var controller = instance_create_depth(0,0,0,objGameVacuum);
controller.timeBonus = timeBonus;
controller.totalMoney = totalMoney;

for(var i=0;i<instance_number(spawnBlock);i++){
	var b = instance_find(spawnBlock,i);
	if(irandom(99)+1 <= spawnChance){
		repeat(irandom(1)+1){
			instance_create_depth(b.x+8+irandom_range(-4,4),b.y+8+irandom_range(-4,4),-1,toSpawn);
		}
	}
}

with(objTool){
	sprite_index = sprVacuum;
}