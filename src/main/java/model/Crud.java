/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package model;

import java.util.List;

/**
 *
 * @author jr972
 * @param <E>
 */
public interface Crud<E> {

    void insert(E obj);

    void delete(E obj);

    E get(int id);

    void update(E obj);

    List<E> getAll();

}
