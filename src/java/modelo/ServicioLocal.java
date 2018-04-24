/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.util.ArrayList;
import javax.ejb.Local;

/**
 *
 * @author Informatica
 */
@Local
public interface ServicioLocal {

    void addProducto(Producto p);

    ArrayList<Producto> getProductos();
    
}
