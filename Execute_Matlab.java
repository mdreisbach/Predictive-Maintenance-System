package v1;

import java.io.IOException;
import java.lang.ProcessBuilder;

public class Execute_Matlab {

public Execute_Matlab(String File_Path) {
	try {
		ProcessBuilder p = new ProcessBuilder();
		p.command(File_Path);
			
		System.out.println("Starting Matlab");
		p.start();

//		Process process = new ProcessBuilder("C:\\PathToExe\\MyExe.exe").start();
			
	} catch (IOException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
}
	
}
