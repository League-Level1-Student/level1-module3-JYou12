package _04_magic_box;
/*
 *    Copyright (c) The League of Amazing Programmers 2013-2019
 *    Level 1
 */


import java.awt.Dimension;
import java.awt.Graphics;
import java.awt.Point;
import java.awt.event.MouseEvent;
import java.awt.event.MouseListener;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.net.URL;

import javax.imageio.ImageIO;
import javax.swing.Icon;
import javax.swing.ImageIcon;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.SwingUtilities;

public class MagicBox extends JPanel implements Runnable, MouseListener {

	/*
	 * We are going to hide secrets within the magic box. 
	 * When the user clicks on a secret place, stuff will happen.
	 * 
	 * 1. Make the frame respond to mouse clicks.
	 * 
	 * 2. When the mouse is clicked, use the Media Palace (read the code in the magic_box package) to play sounds, 
	 *    show images or speak.
	 * 
	 * 3. Choose 3 different locations on the background image.You can either use the mouse position, 
	 *    or the color of the image, then decide what action the Media Palace should take in each case. 
	 *     backgroundImage.getRGB(e.getX(), e.getY()) will give you the color of the current pixel.
	 */

	BufferedImage backgroundImage;
	JLabel label;


	@Override
	public void run() {
		try {
			loadBackgroundImage();
			createUI();
		} catch (Exception w) {
			System.err.println(w.getMessage());
		}
	}

	private void createUI() {
		JFrame frame = new JFrame("The Magic Box contains many secrets...");
		frame.addMouseListener(this);
		frame.add(this);
		setPreferredSize(new Dimension(backgroundImage.getWidth(), backgroundImage.getHeight()));
		frame.pack();
		frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		frame.setVisible(true);
	
		
		
	}

	private void loadBackgroundImage() throws Exception {
		String imageFile = "src/_04_magic_box/magic-box.jpg";
		try {
			backgroundImage = ImageIO.read(new File(imageFile));
		} catch (IOException e) {
			throw new Exception("Could not load image: " + imageFile);
		}
	}

	@Override
	public void paintComponent(Graphics g) {
		g.drawImage(backgroundImage, 0, 0, null);
	}

	@Override
	public void mouseClicked(MouseEvent e) {

		System.out.println(getMousePosition());
		Point point1 = new Point();
		point1.x = 196;
		point1.y = 512;
		
		Point point2 = new Point();
		point2.x = 185;
		point2.y = 830;
		
		Point point3 = new Point();
		point3.x = 540;
		point3.y = 340;
		
		//System.out.println(point1.distance(point1.getX(), point1.getY(), e.getX(), e.getY()));
		
		if(point1.distance(point1.getX(), point1.getY(), e.getX(), e.getY()) <= 50) {
			System.out.println("w");
			JOptionPane.showMessageDialog(null, loadImageFromWithinProject("Sword.jpg"));
			loadImageFromWithinProject("Sword.jpg");
		}else if(point2.distance(point2.getX(), point2.getY(), e.getX(), e.getY()) <= 50) {
			JOptionPane.showMessageDialog(null, loadImageFromWithinProject("Minion.jpg"));
		}else if(point3.distance(point3.getX(), point3.getY(), e.getX(), e.getY()) <= 100) {
			JOptionPane.showMessageDialog(null, loadImageFromWithinProject("Sword.jpeg"));
		}
		
	}

	@Override
	public void mousePressed(MouseEvent e) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void mouseReleased(MouseEvent e) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void mouseEntered(MouseEvent e) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void mouseExited(MouseEvent e) {
		// TODO Auto-generated method stub
		
	}
	
	public JLabel loadImageFromWithinProject(String fileName) {
		URL imageURL = getClass().getResource(fileName);
		Icon icon = new ImageIcon(imageURL);
		return new JLabel(icon);
	}
}


