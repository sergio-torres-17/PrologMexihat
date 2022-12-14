/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import java.util.ArrayList;
import java.util.Map;
import org.jpl7.Query;
import org.jpl7.Term;

/**
 *
 * @author SERGIO
 */
public class ControlProlog {
    private Query conexion, consulta;
    private String nombreArchivo;

    public ControlProlog(String nombreArchivo) {
        this.conexion = new Query("consult('"+nombreArchivo+"')");
        this.nombreArchivo = nombreArchivo;
        this.isConnected();
    }
    
    public boolean isConnected(){
        return conexion.hasSolution();
    }
    
    public ArrayList<String> getProductType(){
        ArrayList<String> dev = new ArrayList<>();
        this.consulta = new Query("tipo_producto(X)");
        while (this.consulta.hasNext())
            dev.add(this.consulta.nextSolution().get("X").toString());
        return dev;
    }
    public ArrayList<String> getMaterial(){
        ArrayList<String> dev;
        dev = new ArrayList<>();
        this.consulta = new Query("materiales_disponibles(X)");
        while (this.consulta.hasNext())
            dev.add(this.consulta.nextSolution().get("X").toString());
        return dev;
    }
    public ArrayList<String> getDesignFromProductType(String productType){
        ArrayList<String> dev;
        dev = new ArrayList<>();
        this.consulta = new Query("disenoclasificacion("+productType.toLowerCase()+",X)");
        while (this.consulta.hasNext())
            dev.add(this.consulta.nextSolution().get("X").toString());
        return dev;
    }
    public ArrayList<String> getAllDesigns(){
        ArrayList<String> dev;
        dev = new ArrayList<>();
        this.consulta = new Query("disenos(_,X)");
        while (this.consulta.hasNext())
            dev.add(this.consulta.nextSolution().get("X").toString().replace('_', ' '));
        this.consulta.close();
        return dev;
    }
    public ArrayList<String> getSizesGuide(){
        ArrayList<String> dev;
        dev = new ArrayList<>();
        this.consulta = new Query("guia_tallas(Talla, Medida)");
        Map<String, Term> solution;
        while (this.consulta.hasNext()){
            solution = this.consulta.nextSolution();
            dev.add(solution.get("Talla").toString().replace('_', ' ')+","+
                    solution.get("Medida").toString().replace("__", "\0").replace('_', ' ')
            );
        }
        this.consulta.close();
        return dev;
    }
    public ArrayList<String> getColors(){
        ArrayList<String> dev;
        dev = new ArrayList<>();
        this.consulta = new Query("colores(Categoria, Color)");
        Map<String, Term> solution;
        while (this.consulta.hasNext()){
            solution = this.consulta.nextSolution();
            dev.add(solution.get("Categoria").toString() +","+solution.get("Color").toString());
        }
        return dev;
    }
    public ArrayList<String> getCatDesign(String design){
        ArrayList<String> dev;
        dev = new ArrayList<>();
        this.consulta = new Query("diseno_cat("+design.toLowerCase()+")");
        Map<String, Term> solution;
        while (this.consulta.hasNext()){
            solution = this.consulta.nextSolution();
            //dev.add(solution.toString());
        }
        this.consulta.close();
        return dev;
    }
    public String getPriceForTypeAndDesign(String typeProduct, String material, String design){
        this.consulta = null;
        String dev = null, query;
        this.isConnected();
        query = "cotizador("+typeProduct.toLowerCase()+","+material.toLowerCase()+","+design.toLowerCase()+",Precio)";
        System.out.println("Query "+query);
        this.consulta = new Query(query);
        //Map<String, Term> consulta;
        while (this.consulta.hasSolution()) 
            dev = this.consulta.oneSolution().get("Precio").toString();
        return dev;
    }
}