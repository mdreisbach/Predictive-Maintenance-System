package v1;

import java.awt.GridLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;

import javax.swing.AbstractButton;
import javax.swing.BorderFactory;
import javax.swing.ButtonGroup;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.JRadioButton;

public class SystemGUI extends JFrame {

	SystemGUI() {
		 	JRadioButton Low_Button   = new JRadioButton("Low");
		 	JRadioButton Normal_Button    = new JRadioButton("Normal");
		 	JRadioButton Strict_Button = new JRadioButton("Strict");
		 	JButton Confirm_Button = new JButton("Save/Okay");

		 	//Create a button group and add the buttons.
		 	ButtonGroup bgroup = new ButtonGroup();
		 	bgroup.add(Low_Button);
		 	bgroup.add(Normal_Button);
		 	bgroup.add(Strict_Button);
		 	bgroup.add(Confirm_Button);

		 	//Arrange buttons vertically in a panel
		 	JPanel radioPanel = new JPanel();
		 	radioPanel.setLayout(new GridLayout(4, 1));
		 	radioPanel.add(Low_Button);
		 	radioPanel.add(Normal_Button);
		 	radioPanel.add(Strict_Button);
		 	radioPanel.add(Confirm_Button);
		 	
		 	
		 	try {
				int setSelect = checkSetSelect();
				switch (setSelect) {
				case 0:
					Low_Button.setSelected(true);
					break;
				case 1:
					Normal_Button.setSelected(true);
					break;
				case 2:
					Strict_Button.setSelected(true);
					break;
				}
				
			} catch (IOException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		 	
		 	//Title border to the button panel.
	        radioPanel.setBorder(BorderFactory.createTitledBorder(
	                   BorderFactory.createEtchedBorder(), "Validation Strength"));
	        
		 	Confirm_Button.addActionListener(new ActionListener() {
		 	    @Override
		        public void actionPerformed(ActionEvent e) {
		            if(Low_Button.isSelected()){
		            	createTextFile(0);
		            	System.exit(0);
		            } else if(Normal_Button.isSelected()){
		            	createTextFile(1);
		            	System.exit(0);
		            } else if(Strict_Button.isSelected()){
		            	createTextFile(2);
		            	System.exit(0);
		            }

		        }
		 	});
		 	//... Set window attributes.
		 	setContentPane(radioPanel);  // Button panel is only content.
		 	pack();                      // Layout window.
	}

	public int checkSetSelect() throws IOException {
		int returnValue = 1;
		// Open the file
		FileInputStream fstream;
		try {
			fstream = new FileInputStream("C:\\Users\\Miles\\workspace\\Settings\\the-file-name.txt");
			BufferedReader br = new BufferedReader(new InputStreamReader(fstream));
			String text = br.readLine();
			if(text.equals("low")){
				returnValue=0;
			}else if(text.equals("normal")){
				returnValue=1;
			}else if(text.equals("strict")){
				returnValue=2;
			}else { returnValue=1; }

		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return returnValue;
	}
	
	public void createTextFile(int i) {
		try {
			PrintWriter writer = new PrintWriter("the-file-name.txt", "UTF-8");
			switch (i){
				case 0:
					writer.println("low");
					writer.close();
					break;
				case 1:
					writer.println("normal");
					writer.close();
					break;
				case 2: 
					writer.println("strict");
					writer.close();
					break;
			}
			
			
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
}
