package v1;

import java.io.IOException;
import java.lang.ProcessBuilder;

public class Execute_Matlab {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		try {
			ProcessBuilder p = new ProcessBuilder();
			p.command("C:\\PathToExe\\MyExe.exe");
			
			System.out.println("Starting Matlab");
			p.start();

//			Process process = new ProcessBuilder("C:\\PathToExe\\MyExe.exe").start();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}
	
}
