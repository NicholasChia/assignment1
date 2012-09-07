/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Digital;

import java.awt.Image;
import javax.swing.JPanel;
import javax.swing.ImageIcon;
import java.beans.PropertyChangeListener;
import java.beans.PropertyChangeSupport;
import java.beans.PropertyChangeEvent;  
import java.beans.PropertyChangeListener;
/**
 *
 * @author Vincent Lim Tzit Xiang N7387512
 * @author Nicholas Chia Jin Chao N7307853
 */
public class PINGate extends JPanel implements PropertyChangeListener{
   
    private final Image image;
    
    private OutputTerminal output = new OutputTerminal();
    
    private Terminal input;
    
    
    public PINGate()
    {
        java.net.URL url = getClass().getResource("images/PIN.gif");
        image = new javax.swing.ImageIcon(url).getImage();
        this.setSize(image.getWidth(null), image.getHeight(null));
    }
    
    @Override
    public void paintComponent(java.awt.Graphics g)
    {
        g.drawImage(image, 0,0, null);
    }
    public Terminal getInput() 
    {
        return input;
    }
 
    public Terminal getOutput()
    {
        return output;
    }
    
    public void setInput(Terminal input) 
    {
        this.input = input;
        if(getInput()!=null)
        input.addPropertyChangeListener(this);
        recomputeOutput();        
    }
    
    @Override
    public void propertyChange(PropertyChangeEvent evt)
    {   
        recomputeOutput();
    }
    
    public void recomputeOutput()
    {
      if(getInput()==null)
      {
          output.setValue(false);
      }
            
      else 
      {
          
        if((input.getValue()==true))
        {
            output.setValue(true);
        }
      
        if(input.getValue() == false)
        {
             output.setValue(false);
         
        }
        
      }
      
    }
    
}      

