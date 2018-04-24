/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.util.ArrayList;
import javax.ejb.Singleton;

/**
 *
 * @author Informatica
 */
@Singleton
public class Servicio implements ServicioLocal {
private ArrayList<Producto> lista=new ArrayList();
    // Add business logic below. (Right-click in editor and choose
    // "Insert Code > Add Business Method")

    public Servicio() {
        lista.add(new Producto("Palo",250));
        lista.add(new Producto("clavo",100));
    }

    @Override
    public void addProducto(Producto p) {
        lista.add(p);
    }

    @Override
    public ArrayList<Producto> getProductos() {
        return lista;
    }
    
    
}
