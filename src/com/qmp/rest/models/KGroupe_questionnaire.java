package com.qmp.rest.models;

import com.google.gson.annotations.Expose;

import net.ko.kobject.KObject;
import net.ko.persistence.annotation.Entity;
import net.ko.persistence.annotation.Table;
import net.ko.persistence.annotation.Id;


/**
* Classe KGroupe_questionnaire
*/
@SuppressWarnings("serial")
@Entity
@Table(name="groupe_questionnaire")
public class KGroupe_questionnaire extends KRestObject {
	
	
	@Id
	private int idGroupe;
	@Id
	private int idQuestionnaire;
	
	@Expose
	private KGroupe groupe;
	@Expose
	private KQuestionnaire questionnaire;

	public KGroupe_questionnaire() {
		super();
		belongsTo(KQuestionnaire.class);belongsTo(KGroupe.class);
	}
	/**
	 * return the value of idGroupe
	 * @return idGroupe
	 */
	public int getIdGroupe(){
		return this.idGroupe;
	}
	/**
	 * return the value of idQuestionnaire
	 * @return idQuestionnaire
	 */
	public int getIdQuestionnaire(){
		return this.idQuestionnaire;
	}
	/**
	 * return the value of groupe
	 * @return groupe
	 */
	public KGroupe getGroupe(){
		return this.groupe;
	}
	/**
	 * return the value of questionnaire
	 * @return questionnaire
	 */
	public KQuestionnaire getQuestionnaire(){
		return this.questionnaire;
	}

	/**
	 * set the value of idGroupe
	 * @param aIdGroupe
	 */
	public void setIdGroupe(int aIdGroupe){
		this.idGroupe=aIdGroupe;
	}
	/**
	 * set the value of idQuestionnaire
	 * @param aIdQuestionnaire
	 */
	public void setIdQuestionnaire(int aIdQuestionnaire){
		this.idQuestionnaire=aIdQuestionnaire;
	}
	/**
	 * set the value of groupe
	 * @param aGroupe
	 */
	public void setGroupe(KGroupe aGroupe){
		this.groupe=aGroupe;
	}
	/**
	 * set the value of questionnaire
	 * @param aQuestionnaire
	 */
	public void setQuestionnaire(KQuestionnaire aQuestionnaire){
		this.questionnaire=aQuestionnaire;
	}
	@Override
	public String toString() {
		return " [idQuestionnaire] = " + idQuestionnaire+" [idGroupe] = " + idGroupe;
	}
}