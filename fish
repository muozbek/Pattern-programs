/*-----------------------------------------------------------------------
	Write the computer program that forms the fish-like pattern using n 
	as an input from the keyboard.

	n = 5  -->       *          
    			***        *
    		       *****      **
    		      *******    ***
    		     *********  ****
    		    ****************
    		     *********  ****
    		      *******    ***
    		       *****      **
    		        ***        *
    		         *          
-----------------------------------------------------------------------*/

package csd;

class App 
{
	public static void main(String [] args)
	{
		java.util.Scanner kb = new java.util.Scanner(System.in);
		
		int i, k, n;
		
		System.out.print("n?: ");
		n = kb.nextInt();
		
		for (i = 0; i <= 2 * n; i = i + 1) {
			if (i <= n) {
				for (k = 1; k <= n - i; k = k + 1)
					System.out.print(" ");
				
				for (k = 1; k <= i * 2 + 1; k = k + 1)
					System.out.print("*");
				
				for (k = 1; k <= (n - i) * 2; k = k + 1)
					System.out.print(" ");
				
				for (k = 1; k <= i; k = k + 1)
					System.out.print("*");
			}
			
			else {
				for (k = 1; k <= i - n; k = k + 1)
					System.out.print(" ");
			
				for (k = 1; k <= 2 * n - (2 * i - 2 * n) + 1; k = k + 1)  //This was only solution that I made it work			
					System.out.print("*");
				
				for (k = 1; k <= (i - n) * 2; k = k + 1)
					System.out.print(" ");
				
				for (k = 1; k <= (2 * n) - i; k = k + 1)
					System.out.print("*");
			}
		
			System.out.println();
		}
	}
}
