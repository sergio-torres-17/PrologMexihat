/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Modelo.ControlProlog;
import javax.swing.DefaultComboBoxModel;
import javax.swing.DefaultListModel;
import javax.swing.table.DefaultTableModel;

/**
 *
 * @author SERGIO
 */
public class ViewsDataControl {
    private ControlProlog cp;

    public ViewsDataControl() {
        this.cp = new ControlProlog("Db Mexihat.pl");
    }
    
    
    public DefaultListModel<String> fillProductTypeJList(){
        DefaultListModel<String> dt;
        dt = new DefaultListModel<>();
        dt.addElement("Selecciona un tipo de producto");
        this.cp.getProductType().forEach((prdItem) -> {
            dt.addElement(prdItem.replace('_', ' '));
        });
        return dt;
    }
    public int countListProductType(){
        return this.cp.getProductType().size();
    }
    public DefaultComboBoxModel fillMaterialJComboBox(){
        DefaultComboBoxModel dev;
        dev = new DefaultComboBoxModel();
        dev.addElement("Selecciona un Material");
        this.cp.getMaterial().forEach((prdMaterial) -> {
            dev.addElement(prdMaterial.replace('_', '\0'));
        });
        return dev;
    }
    public DefaultComboBoxModel fillProductTypeJComboBox(){
        DefaultComboBoxModel dev;
        dev = new DefaultComboBoxModel();
        dev.addElement("Selecciona un tipo de producto");
        this.cp.getProductType().forEach((prdProductType) -> {
            dev.addElement(prdProductType.replace('_', ' '));
        });
        return dev;
    }
    public DefaultComboBoxModel fillDesignJList(String productType){
        DefaultComboBoxModel dev;
        dev = new DefaultComboBoxModel();
        dev.addElement("Selecciona un diseño...");
        this.cp.getDesignFromProductType(productType).forEach((desginName) ->{
            dev.addElement(desginName.replace('_', ' '));
        });
        
        return dev;
    }
    public DefaultListModel<String> fillDesginsJList(){
        DefaultListModel<String> dev;
        dev = new DefaultListModel<>();
        this.cp.getAllDesigns().forEach((desginName) ->{
            dev.addElement(desginName.replace('_', ' '));
        });
        return dev;
    }
    public DefaultTableModel fillTableSizes(){
        DefaultTableModel dev;
        String[] row;
        row = null;
        dev = new DefaultTableModel();
        dev.addColumn("Talla");
        dev.addColumn("Medida");
        for (String str : this.cp.getSizesGuide()) {
            row = str.split(",");
            dev.addRow(row);
        }
        return dev;
    }
    public DefaultTableModel fillColorsTable(){
        DefaultTableModel dev;
        dev = new DefaultTableModel();
        dev.addColumn("Categoria");
        dev.addColumn("Nombre Color");
        this.cp.getColors().forEach((colorName)->{
            dev.addRow(colorName.split(","));
        });
        return dev;
    }
    public String getPriceForProduct(String typeProduct, String material, String design){
        return this.cp.getPriceForTypeAndDesign(typeProduct, material, design);
    }
}
