package _06_gridworld;

import java.awt.Color;
import java.util.Random;

import info.gridworld.actor.Bug;
import info.gridworld.actor.Flower;
import info.gridworld.grid.Location;
import info.gridworld.world.World;

public class GridworldRunner {

	public static void main(String[] args) {
		
		Location location = new Location(5, 2);		
		Location rightFlowerLocation = new Location(5, 3);
		Location leftFlowerLocation = new Location(5, 1);
		World world = new World();
		Bug bug = new Bug(Color.BLUE);
		Flower flower = new Flower();
		Flower flower2 = new Flower();
		
		//world.add(location, bug);
		bug.turn();
		//world.add(leftFlowerLocation, flower);
		//world.add(rightFlowerLocation, flower2);
		world.show();
		
		for(int i=0; i < 10; i++) {
			for (int e=0; e < 10; e++){
			world.add(world.getRandomEmptyLocation(), flower2);
		}
		}
		

	}
	
}
