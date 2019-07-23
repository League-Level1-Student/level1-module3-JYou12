package _07_cow_timer;

import javax.swing.JOptionPane;

public class CowTimerRunner {
	public static void main(String[] args) throws InterruptedException {
		/* Make a CowTimer, set its time and start it.
		 * Use a short delay (seconds) when testing, then try with longer delays */

		int countdown;
		String str;
		
		str = JOptionPane.showInputDialog("How long do you want to set you timer?");
		countdown = Integer.parseInt(str);
		
		CowTimer timer = new CowTimer(5);
		timer.setTime(countdown);
		timer.start();
	}
}
