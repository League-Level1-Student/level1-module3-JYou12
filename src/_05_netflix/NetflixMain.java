package _05_netflix;

public class NetflixMain {
public static void main(String[] args) {
	
	Movie movie1 = new Movie("Movie1", 3);
	Movie movie2 = new Movie("Movie2", 5);
	Movie movie3 = new Movie("Movie3", 1);
	Movie movie4 = new Movie("Movie4", 4);
	Movie movie5 = new Movie("Movie5", 2);
	NetflixQueue queue = new NetflixQueue();
	
	movie1.getTicketPrice();
	queue.addMovie(movie1);
	queue.addMovie(movie2);
	queue.addMovie(movie3);
	queue.addMovie(movie4);
	queue.addMovie(movie5);


	queue.printMovies();
	
	System.out.println("The best move is " + queue.getBestMovie());
	System.out.println("The secound best move is " + queue.getMovie(1));
	
}
}
