 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description: Play as a Hero to help defeat another team
// Overall mission: Two Teams fight in order to conquer other team's base.
// Goals: Destroy enemy team's Base. Team won if its base health is higher than the other after at least one of minion die.
// Characters: Assign Player 1 to either Blue Team or Purple Team and play against the computer.
// Objects: Blue team, Purple team, blue team minion, purple team minion.
// Functions: Attack (Every object's action), Heal (Hero's specific spell)

// Pseudocode
//
//
//
//
//

// Initial Code

function Player(name){
  this.name = name;
  this.health = 100;
  // Hero specific spell
  this.heal = function(target){
    target.health = target.health + Math.floor(Math.random()*20);
    console.log("Healed minions" + Math.floor(Math.random()*20) + "health.");
  };
};

// Blue Team
var blueTeam = {
	name: "blueTeam",
	base:{ name: "blueTeamBase", health: 200, damage: 10 },
	minion:{  name: "blueCrap", health: 50, damage: 20 }
};

// Purple Team
var purpleTeam = {
	name: "purpleTeam",
	base:{ name: "purpleTeamBase", health: 200, damage: 10 },
	minion:{  name: "purpleCrap", health: 50, damage: 20 }
};

// Attack function
function attack(attacker, target) {
	var damageDone = attacker.damage + Math.floor(Math.random() * 10);
	target.health = target.health - damageDone;
	console.log(target.name + " received " + damageDone + " damage points, made by " + attacker.name + ".");
};

// A function that determine whether the hero got the chance to help his team when called
function heroSpell() {
	var specialMoment = Math.random();
	return specialMoment;
};

// Healing function, activated when the heroSpell function got called
function heal(target) {
	var healingDone = Math.floor(Math.random()*20);
	target.health = target.health + healingDone;
    console.log("You healed your minion with " + healingDone + "HP.");
};

// Wrapper function for the game start
function gameStart(){
	var currentTeam = "";

	// While loop to make sure player type in correct repsonse
	while (true) {
		var response1 = prompt("Welcome to the DBC's rift! Which team would you like to join? Please choose blue or purple. (blue / purple)");
		if (response1 === "blue") {
			currentTeam = blueTeam;
			blueTeam.hero = new Player("player");
			purpleTeam.hero = new Player("Computer");
			console.log("Blue Team Captain! You will be against purple Team Captain Computer. Go destroy their Base!");
			break;
		}
		else if (response1 === "purple") {
			currentTeam = purpleTeam;
			purpleTeam.hero = new Player("player");
			blueTeam.hero = new Player("Computer");
			console.log("purple Team Captain! You will be against blue Team Captain Computer. Go destroy their Base!");
			break;
		}
		else {
			console.log("Please choose blue or purple.");
		};
	};


	// Shows all object's health condition at the very beginning.
	var startingCondition = [blueTeam.base, purpleTeam.base, blueTeam.minion, purpleTeam.minion];
	for (var currentItem in startingCondition) {
		console.log( startingCondition[currentItem].name + " has full " + startingCondition[currentItem].health + "HP.");
	};

	// Two team will fight until at least one of their minion die.
	var counter = 1;
	while (blueTeam.base.health > 0 || purpleTeam.base.health > 0) {
		console.log("Round " + String(counter));
		counter++;
		// Minions attacking enemy base
		if (blueTeam.minion.health <= 0) {
			console.log("blueTeam's minion is dead.");
			delete blueTeam.minion;
			break;
		};
		attack(blueTeam.minion, purpleTeam.base);
		console.log("purpleTeam's base is under attack, it has " + String(purpleTeam.base.health) + "HP remaining.");


		if (purpleTeam.minion.health <= 0) {
			console.log("purpleTeam's minion is dead.");
			delete purpleTeam.minion;
			break;
		};

		attack(purpleTeam.minion, blueTeam.base);
		console.log("blueTeam's base is under attack, it has " + String(blueTeam.base.health) + "HP remaining.");
		

		// Base attacks minions if it is still alive
		if (purpleTeam.minion.health > 0) {
			attack(purpleTeam.base, purpleTeam.minion);
			console.log(purpleTeam.minion.name + " was attacked by enemy base, it has " + String(purpleTeam.minion.health) + "HP remaining.");
		};

		if (blueTeam.minion.health > 0) {
			attack(purpleTeam.base, blueTeam.minion);
			console.log(blueTeam.minion.name + " was attacked by enemy base, it has " + String(blueTeam.minion.health) + "HP remaining.");
		};

		// Check whether the hero got the chance to help his team
		if (heroSpell() > 0.4) {
			var helpFromHero = prompt("Want to Heal one of your minions? (Y / N)");
			if (helpFromHero.toLowerCase() === "y") {
				heal(currentTeam.minion);
				console.log("Now " + currentTeam.minion.name + " has " + String(currentTeam.minion.health) + "HP remaining.");
			}
			else if (helpFromHero.toLowerCase() === "n") {
				console.log( currentTeam.name + " got no help from their hero!");
			}
			else {
				console.log("You missed a winning chance!");
			}; 
		};


	};

	// Game ended, the team with a higher health base win the game.
	if (blueTeam.base.health > purpleTeam.base.health) {
		console.log("Blue Team Won!");
	}
	else {
		console.log("Purple Team Won!");
	}
};

// Game start

gameStart();


// Refactored Code

// ??

// Reflection
//
// What was the most difficult part of this challenge?

// The whole concept of objects and its functions. Also the syntax, syntax and syntax.


// What did you learn about creating objects and functions that interact with one another?

// Objects have their properties. In order to correctly recall a specific property inside one class. You
// need to be aware of its name and the syntax.


// Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?

// Not really. Rather, I become more familar on how to create my own methods.


// How can you access and manipulate properties of objects?

// I once used a for..in loop to loop through an array then to get each value from it.

