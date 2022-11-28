/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Vista;

import Modelo.ControlProlog;


/**
 *
 * @author SERGIO
 */
public class Principal {
    public static void main(String[] args) {
        ControlProlog cp = new ControlProlog("Db Mexihat.pl");
        cp.isConnected();
        new VistaPrincipal().setVisible(true);
    }
    
}
