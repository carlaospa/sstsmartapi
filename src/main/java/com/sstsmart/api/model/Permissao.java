package com.sstsmart.api.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="permissao")
public class Permissao {

	@Id
	@Column(name= "idpermissao")
	private Long idPermissao;
	
	private String descricao;
	
	public Long getIdPermissao() {
		return idPermissao;
	}
	
	public void setIdPermissao(Long idPermissao) {
		this.idPermissao = idPermissao;
	}
	
	public String getDescricao() {
		return descricao;
	}
	
	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((idPermissao == null) ? 0 : idPermissao.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Permissao other = (Permissao) obj;
		if (idPermissao == null) {
			if (other.idPermissao != null)
				return false;
		} else if (!idPermissao.equals(other.idPermissao))
			return false;
		return true;
	}
	
	
	
	
	
}
