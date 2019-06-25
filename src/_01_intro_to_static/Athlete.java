package _01_intro_to_static;

import java.util.Random;

public class Athlete {
	static int nextBibNumber = 1;
	static String raceLocation = "New York";
	static String raceStartTime = "9.00am";

	static String name;
	int speed;
	static int bibNumber = 0;

	String[] strarr = new String[5];
	
	
	Athlete(String name, int speed) {
		this.name = name;
		this.speed = speed;
	}

	static String getName() {
		return name;
	}

	static int getBibNumber() {
		bibNumber += nextBibNumber;

		return bibNumber;

	}
	
	static String getLocation() {
		String[] strarr = new String[5];
		strarr[0] = "New York";
		strarr[1] = "Japan";
		strarr[2] = "Ohio";
		strarr[3] = "Italy";
		strarr[4] = "France";
		
		Random random = new Random();
		
		return strarr[random.nextInt(5)];
	}

	public static void main(String[] args) {

		Athlete athlete = new Athlete("Bob", 100);
		System.out.println(getName() + " " + getBibNumber() + " " + getLocation());
		
		Athlete athlete2 = new Athlete("John", 100);
		System.out.println(getName() + " " + getBibNumber() + " " + getLocation());
		// create two athletes
		// print their names, bibNumbers, and the location of their race.
	}
}