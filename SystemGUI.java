package v1;

import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.Component;
import java.awt.Container;
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
import javax.swing.BoxLayout;
import javax.swing.ButtonGroup;
import javax.swing.JButton;
import javax.swing.JFileChooser;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JRadioButton;
import javax.swing.JTextField;
import javax.swing.border.CompoundBorder;
import javax.swing.filechooser.FileFilter;
import javax.swing.filechooser.FileNameExtensionFilter;


public class SystemGUI extends JFrame {

	public String dataLocationFilePath = "";
	public String modelExecutableFilePath = "";
	
	SystemGUI() {
		 	JRadioButton Low_Button   = new JRadioButton("Low");
		 	JRadioButton Normal_Button    = new JRadioButton("Normal");
		 	JRadioButton Strict_Button = new JRadioButton("Strict");
		 	JButton Confirm_Button = new JButton("Save/Okay");
		 	JButton Change_Button1 = new JButton("Change");
		 	JButton Change_Button2 = new JButton("Change");
		 	
		 	JRadioButton Yes_Button = new JRadioButton("Yes");
		 	JRadioButton No_Button = new JRadioButton("No");

		 	JLabel columnLabel = new JLabel("Column #:");
		 	JTextField columnNum = new JTextField("",5);
		 	
		 	JTextField dataLocationPathText =    new JTextField("example/file/path/data.csv",20);
		 	JTextField modelExecutablePathText = new JTextField("example/file/path/model.exe",20);
		 	
		 	
		 	
		 	
		 	//Create a button group and add the buttons.
		 	ButtonGroup bgroup = new ButtonGroup();
		 	ButtonGroup cgroup = new ButtonGroup();
		 	ButtonGroup dgroup = new ButtonGroup();
		 	ButtonGroup egroup = new ButtonGroup();
		 	
		 	bgroup.add(Low_Button);
		 	bgroup.add(Normal_Button);
		 	bgroup.add(Strict_Button);
		 	
		 	cgroup.add(Yes_Button);
		 	cgroup.add(No_Button);
		 	cgroup.add(Confirm_Button);
		 	
		 	dgroup.add(Change_Button1);
		 	egroup.add(Change_Button2);
		 	
		 	//Arrange buttons vertically in a panel
		 	JFrame frame = new JFrame();
		 	JPanel radioPanel = new JPanel();
		 	JPanel discretePanel = new JPanel();
		 	JPanel dataLocation = new JPanel();
		 	JPanel modelExecutable = new JPanel();
		 	
		 	
		 	radioPanel.setLayout(new GridLayout(4, 1));
		 	radioPanel.add(Low_Button);
		 	radioPanel.add(Normal_Button);
		 	radioPanel.add(Strict_Button);
		 	
		 	
		 	discretePanel.add(Yes_Button);
		 	discretePanel.add(No_Button);
		 	No_Button.setSelected(true);
		 	discretePanel.add(columnLabel);
		 	discretePanel.add(columnNum);
		 	
		 	dataLocation.add(dataLocationPathText);
		 	dataLocation.add(Change_Button1);
		 	
		 	modelExecutable.add(modelExecutablePathText);
		 	modelExecutable.add(Change_Button2);
		 	
		 	
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

		 	discretePanel.setBorder(new CompoundBorder(
		 			BorderFactory.createMatteBorder(0, 0, 1, 0, Color.BLUE), 
		 			BorderFactory.createMatteBorder(0, 0, 1, 0, Color.RED)));

		 	discretePanel.setBorder(BorderFactory.createTitledBorder(
		 			BorderFactory.createEtchedBorder(), "Has Discrete Column?"));

		 	dataLocation.setBorder(BorderFactory.createTitledBorder(
		 			BorderFactory.createEtchedBorder(), "Training Data Location"));

		 	modelExecutable.setBorder(BorderFactory.createTitledBorder(
		 			BorderFactory.createEtchedBorder(), "Trained Model Executable"));        


	        
	        
	        //Set the file types that the user can browse for
	        //Only allow CSV right now
	        JFileChooser fileSelect = new JFileChooser();
	        FileFilter csv = new FileNameExtensionFilter("CSV Files", new String[] { "csv" });
	        FileFilter exe = new FileNameExtensionFilter("Exe Files", new String[] { "exe" });

	        fileSelect.setFileFilter(csv);

	        Change_Button1.addActionListener(new ActionListener() {
	        	@Override
	        	public void actionPerformed(ActionEvent e) {
	        		JFileChooser chooser = new JFileChooser();

	        		//File path for Training Data Location
	    		 	String dataLocationPath = "";
	    		 	
	        		chooser.setFileFilter(csv);
	        		int returnVal = chooser.showOpenDialog(null);
	        		if(returnVal == JFileChooser.APPROVE_OPTION) {
	        			
	        			dataLocationPath = fileSelect.getSelectedFile().getAbsolutePath();
	        			dataLocationPathText.setText(dataLocationPath);
	        			setDataLocationFilePath(dataLocationPath);
	        			System.out.println("You chose to open this file: " +
	        					chooser.getSelectedFile().getName());
	        		}}
	        });


	        Change_Button2.addActionListener(new ActionListener() {
	        	@Override
	        	public void actionPerformed(ActionEvent e) {
	        		JFileChooser chooser = new JFileChooser();

	        		//File path for Trained Model Executable
	        		String modelExecutablePath = "";
	    		 	
	        		chooser.setFileFilter(exe);
	        		int returnVal = chooser.showOpenDialog(null);
	        		if(returnVal == JFileChooser.APPROVE_OPTION) {
	        			
	        			modelExecutablePath = fileSelect.getSelectedFile().getAbsolutePath();
	        			modelExecutablePathText.setText(modelExecutablePath);
	        			setModelExecutableFilePath(modelExecutablePath);
	        			System.out.println("You chose to open this file: " +
	        					chooser.getSelectedFile().getName());
	        		}}
	        });


		 	Confirm_Button.addActionListener(new ActionListener() {
		 	    @Override
		        public void actionPerformed(ActionEvent e) {
		            if(Low_Button.isSelected()){
		            	createTextFile(0,columnNum.getText(),getDataLocationFilePath(),getModelExecutableFilePath());
		            
		            	if(Yes_Button.isSelected()&&columnNum.getText().equals("")){
		            		 JOptionPane.showMessageDialog(null, "Please enter a column number." , "WARNING", JOptionPane.INFORMATION_MESSAGE);
		            	} else {
		            	System.exit(0);
		            	}
		            	
		            } else if(Normal_Button.isSelected()){
		            	createTextFile(0,columnNum.getText(),getDataLocationFilePath(),getModelExecutableFilePath());
		            		
		            	if(Yes_Button.isSelected()&&columnNum.getText().equals("")){
		            		 JOptionPane.showMessageDialog(null, "Please enter a column number." , "WARNING", JOptionPane.INFORMATION_MESSAGE);
		            	} else {
		            	System.exit(0);
		            	}
		            } else if(Strict_Button.isSelected()){
		            	createTextFile(0,columnNum.getText(),getDataLocationFilePath(),getModelExecutableFilePath());
		            	
		            
		            }
		        	if(Yes_Button.isSelected()&&columnNum.getText().equals("")){
	            		 JOptionPane.showMessageDialog(null, "Please enter a column number." , "WARNING", JOptionPane.INFORMATION_MESSAGE);
	            	} else {
	            	System.exit(0);
	            	}
		        	
		 	    }	

		        
		 	});
		 	//... Set window attributes.
		 	Container pane = new Container();
		 	pane.setLayout(new BoxLayout(pane, BoxLayout.Y_AXIS));
		 	
		 	dataLocation.setAlignmentX(Component.CENTER_ALIGNMENT);
	        pane.add(dataLocation);
	        
	        modelExecutable.setAlignmentX(Component.CENTER_ALIGNMENT);
	        pane.add(modelExecutable);
	        
	        radioPanel.setAlignmentX(Component.CENTER_ALIGNMENT);
	        pane.add(radioPanel);
	        
	        discretePanel.setAlignmentX(Component.CENTER_ALIGNMENT);
	        pane.add(discretePanel);
	        
	        Confirm_Button.setAlignmentX(Component.CENTER_ALIGNMENT);
	        pane.add(Confirm_Button);

//		 	setContentPane(radioPanel);  // Button panel is only content.
//		 	setContentPane(discretePanel);
	        
	        frame.add(pane);
	        frame.setTitle("Settings");
		 	frame.pack();                      // Layout window.
			frame.setVisible(true);
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
	
	
	public void createTextFile(int i, String columnNum, String dataLocationPath, String modelExecutablePath) {
		try {
			PrintWriter writer = new PrintWriter("the-file-name.txt", "UTF-8");
			switch (i){
				case 0:
					writer.println("low" + "," + columnNum + "," + dataLocationPath + "," + modelExecutablePath);
					writer.close();
					break;
				case 1:
					writer.println("normal" + "," + columnNum + "," + dataLocationPath + "," + modelExecutablePath);
					writer.close();
					break;
				case 2: 
					writer.println("strict" + "," + columnNum + "," + dataLocationPath + "," + modelExecutablePath);
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

	//Getters
	public String getDataLocationFilePath() {
		return dataLocationFilePath;
	}
	public String getModelExecutableFilePath() {
		return modelExecutableFilePath;
	}

	//Setters
	public void setDataLocationFilePath(String dataLocationFilePath) {
		this.dataLocationFilePath = dataLocationFilePath;
	}
	public void setModelExecutableFilePath(String modelExecutableFilePath) {
		this.modelExecutableFilePath = modelExecutableFilePath;
	}
}