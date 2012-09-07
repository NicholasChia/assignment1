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
public class ANDGate extends JPanel implements PropertyChangeListener{
   
    private final Image image;
    
    private OutputTerminal output = new OutputTerminal();
    
    private Terminal input0;
    private Terminal input1;
    
    
    public ANDGate()
    {
        java.net.URL url = getClass().getResource("images/AND.gif");
        image = new javax.swing.ImageIcon(url).getImage();
        this.setSize(image.getWidth(null), image.getHeight(null));
    }
    
    @Override
    public void paintComponent(java.awt.Graphics g)
    {
        g.drawImage(image, 0,0, null);
    }
    public Terminal getInput0() 
    {
        return input0;
    }
    
    public Terminal getInput1() 
    {
        return input1;
    }
 
    public Terminal getOutput()
    {
        return output;
    }
    
    public void setInput0(Terminal input) 
    {
        this.input0 = input;
        if(getInput0()!=null)
        input0.addPropertyChangeListener(this);
        recomputeOutput();        
    }
    
    public void setInput1(Terminal input)
    {
        this.input1 = input;
        if(getInput1()!=null)
        input1.addPropertyChangeListener(this);
        recomputeOutput(); 
    }
    
    
    @Override
    public void propertyChange(PropertyChangeEvent evt)
    {   
        recomputeOutput();
    }
    
    public void recomputeOutput()
    {
      if(getInput0()==null || getInput1() == null)
      {
          output.setValue(false);
      }
            
      else 
      {
        if(((input0.getValue()) && (input1.getValue()))==true)
        {
            output.setValue(true);
        }
      
        else
            output.setValue(false);
      }
    }
}      

