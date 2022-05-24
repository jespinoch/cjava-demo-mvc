package com.cjava.mvc.model.daos;

import com.cjava.mvc.model.entities.Curso;

import java.util.List;

public interface CursoDao {

    void registrar(Curso curso);

    void actualizar(Integer id, Curso curso);

    Curso obtener(Integer id);

    Curso eliminar(Integer id);

    List<Curso> listar();
}
