package ASG_Session_1;

public class ASG_S_1 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		//no.1
		System.out.println("No. 1.1");
		System.out.println("Welcome to Java");
		System.out.println("Welcome to Computer Science");
		System.out.println("Programming is fun\n");
		
		//no.2
		System.out.println("No. 1.2");
		for(int a = 1; a <= 5; a++) {
			System.out.println("Welcome to Java");
			if (a==5) System.out.println();
		}
		
		
		//no.3
		System.out.println("No. 1.3");
        System.out.println("    J     A    V     V    A");
		System.out.println("    J    A A    V   V    A A");
		System.out.println("J   J   AAAAA    V V    AAAAA");
		System.out.println(" J J   A     A    V    A     A");		
		System.out.println();
		
		//no.4
		System.out.println("No. 1.4");
		System.out.println("a\ta^2\ta^3");
		for(int a = 1; a <=  4; a++) {
			System.out.println((a) + "\t" + (a*a) + "\t" + (a*a*a));
			if(a==4) System.out.println();
		}
		
		
		//no.5
		System.out.println("No. 1.5");
		System.out.printf("Result : %.2f\n\n", ((9.5*4.5) - (2.5*3)) / (45.5 - 3.5));
		
	    //no.6
		System.out.println("No. 1.6");
		int h=0;
	    for(int i = 1; i<=9; i++) {
	    	h += i;
	    }
	    System.out.println("Result : " + h);
	    System.out.println(" ");
	    
	    
	    //no.7
	    System.out.println("No. 1.7");
        double pi = 4.0 * (1.0 - 1.0/3) + (1.0/5) - (1.0/7) + (1.0/9) - (1.0/11);
        double pi1= 4.0 * (1.0 - 1.0/3) + (1.0/5) - (1.0/7) + (1.0/9) - (1.0/11) + (1.0/13);
        System.out.printf("Result 1 : %.2f\n", pi);
        System.out.printf("Result 2 : %.2f\n\n", pi1);	  
        
	    //no.8
        System.out.println("No. 1.8");
        double radius = 5.5;
        double perimeter = (2 * radius * Math.PI);
        double area = (radius * radius * Math.PI);
        System.out.printf("The area of a circle that has a radius of 5.5 is %.2f\n", area);
        System.out.printf("The perimeter of a circle that has a radius of 5.5 is %.2f\n\n", perimeter);    
        
        
	    //no.9
        System.out.println("No. 1.9");
        double width = 4.5;
        double height = 7.9;
        double area1 = width * height;
        double perimeter1 = 2 * (width + height);
        System.out.printf("The area of a rectangle with a width of 4.5 and a height of 7.9 is %.2f\n", area1);
        System.out.printf("The perimeter of a rectangle with a width of 4.5 and a height of 7.9 is %.2f\n\n", perimeter1); 
        
	    //no.10
        System.out.println("No. 1.10");
        double distance = 14; // 14 km
        double time = 45.5; // 45 mins + 30 secs
        double avg = (distance/1.6)/(time/60);
        System.out.printf("The average speed in miles per hour is %.2f\n\n", avg); 	    
	    
	    //no 11
        System.out.println("No. 1.11");
        double birth = 7;
        double death = 13;
        double immigrant = 45;
        double population = 312032486;
        
        double totalseconds = 86400 * 365;
        
        double totalbirth = totalseconds / birth;
        double totaldeath = totalseconds / death;
        double totalimmigrant = totalseconds / immigrant;

        for (int i = 1; i <= 5; i++) {
            population += totalbirth + totalimmigrant - totaldeath;
            System.out.println("Year " + i + " = " + (int)population);

        }      
        
		
	}

}
