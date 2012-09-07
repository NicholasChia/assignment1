/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Digital;

import javax.swing.JPanel;

/**
 *
 * @author VincentLim
 */
public class Switch extends JPanel {

    /**
     * Creates new form Switch
     */
    public Switch() {
        initComponents();
    }

    public OutputTerminal output = new OutputTerminal();
    
    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jToggleButton1 = new javax.swing.JToggleButton();

        jToggleButton1.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Digital/images/Switch_off.gif"))); // NOI18N
        jToggleButton1.setToolTipText("");
        jToggleButton1.setMargin(new java.awt.Insets(0, 0, 0, 0));
        jToggleButton1.setRolloverEnabled(false);
        jToggleButton1.setSelectedIcon(new javax.swing.ImageIcon(getClass().getResource("/Digital/images/Switch_on.gif"))); // NOI18N
        jToggleButton1.addChangeListener(new javax.swing.event.ChangeListener() {
            public void stateChanged(javax.swing.event.ChangeEvent evt) {
                jToggleButton1StateChanged(evt);
            }
        });
        jToggleButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                none(evt);
            }
        });

        org.jdesktop.layout.GroupLayout layout = new org.jdesktop.layout.GroupLayout(this);
        this.setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jToggleButton1)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jToggleButton1)
        );
    }// </editor-fold>//GEN-END:initComponents
    public Terminal getOutput()
    {
        return output;
    }
    
  /*  public void setOutput(Terminal output) 
    {
        this.output = output;
    }*/
    
    private void none(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_none
        // TODO add your handling code here:
    }//GEN-LAST:event_none

    private void jToggleButton1StateChanged(javax.swing.event.ChangeEvent evt) {//GEN-FIRST:event_jToggleButton1StateChanged
        // TODO add your handling code here:
        recomputeOutput();
    }//GEN-LAST:event_jToggleButton1StateChanged

    public void recomputeOutput()
    {
        if(jToggleButton1.isSelected()) {
            output.setValue(true);
        }
        
        else {
            output.setValue(false);
        }
    }
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JToggleButton jToggleButton1;
    // End of variables declaration//GEN-END:variables
}
