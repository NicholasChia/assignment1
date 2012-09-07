/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Digital;

import java.beans.*;

/**
 *
 * @author Vincent
 */
public class OutputTerminal implements Terminal{
    
    private transient final PropertyChangeSupport vPcs = new PropertyChangeSupport(this);

    private boolean value = false;
    
    public boolean getValue() 
    {
        return value;
    }
    
    public void setValue(boolean val) 
    {
        boolean oldValue = value;
        value = val;
        vPcs.firePropertyChange("Value", oldValue, val);
    }

    
     public void addPropertyChangeListener(PropertyChangeListener listener) 
     {
        vPcs.addPropertyChangeListener(listener);
     }
    
    public void removePropertyChangeListener(PropertyChangeListener listener)
    {
        vPcs.removePropertyChangeListener(listener);
    }
    
}
    