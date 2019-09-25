package trip.planner

class Trip {
	boolean avaiable
	String origin
	String destination
	int price
	String priceVIP



    static constraints = {
    	avaiable nullable: true
    	priceVIP nullable: true

    }
}
