/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ginf.entidades;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author aluno
 */
@Entity
@Table(name = "postagem")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Postagem.findAll", query = "SELECT p FROM Postagem p")
    , @NamedQuery(name = "Postagem.findByConteudo", query = "SELECT p FROM Postagem p WHERE p.conteudo = :conteudo")
    , @NamedQuery(name = "Postagem.findById", query = "SELECT p FROM Postagem p WHERE p.id = :id")})
public class Postagem implements Serializable {

    private static final long serialVersionUID = 1L;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 2147483647)
    @Column(name = "conteudo")
    private String conteudo;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "id")
    private Integer id;

    public Postagem() {
    }

    public Postagem(Integer id) {
        this.id = id;
    }

    public Postagem(Integer id, String conteudo) {
        this.id = id;
        this.conteudo = conteudo;
    }

    public String getConteudo() {
        return conteudo;
    }

    public void setConteudo(String conteudo) {
        this.conteudo = conteudo;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Postagem)) {
            return false;
        }
        Postagem other = (Postagem) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.ginf.entidades.Postagem[ id=" + id + " ]";
    }
    
}
