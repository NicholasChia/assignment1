/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Digital;

import java.awt.Graphics;
import java.awt.Image;
import javax.swing.JPanel;
import javax.swing.ImageIcon;
import java.beans.PropertyChangeEvent;  
import java.beans.PropertyChangeListener;
import java.beans.*;
/**
 *
 * @author VincentLim
 */
public class LED extends JPanel implements PropertyChangeListener{
    
    private final Image LedOn;
    private final Image LedOff;
    
    private Terminal input;
    
    public LED()
    {
        java.net.URL url = getClass().getResource("images/LED_on.gif");
        LedOn = new javax.swing.ImageIcon(url).getImage();
        this.setSize(LedOn.getWidth(null), LedOn.getHeight(null));
        
        url  = getClass().getResource("images/LED_off.gif");
        LedOff = new javax.swing.ImageIcon(url).getImage();
        this.setSize(LedOff.getWidth(null), LedOff.getHeight(null));
    }
    
    public Terminal getInput() 
    {
        return input;
    }
    
    public void setInput(Terminal input) 
    {
        this.input = input;
        if(getInput()!=null)
        input.addPropertyChangeListener(this);
        repaint();        
    }
    
    @Override
    public void propertyChange(PropertyChangeEvent evt)
    {   
        repaint();
    }
    
    public void repaint(Graphics g)
    {
       paintComponent(g);
    }

    
    @Override
    public void paintComponent(java.awt.Graphics g)
    {
        
        if(getInput() == null)
        {
           g.drawImage(LedOff, 0,0, null);
        }   
        else 
        {
            if((input.getValue()==true))
            {
                g.drawImage(LedOn, 0,0, null);
            }
        
            if((input.getValue()==false))
            {
                g.drawImage(LedOff, 0,0, null);
            }
        }
        
    }
}
