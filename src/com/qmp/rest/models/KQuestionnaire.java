package com.qmp.rest.models;

import com.google.gson.annotations.Expose;

import net.ko.kobject.KObject;
import net.ko.persistence.annotation.Entity;
import net.ko.persistence.annotation.Table;
import net.ko.kobject.KListObject;


/**
* Classe KQuestionnaire
*/
@SuppressWarnings("serial")
@Entity
@Table(name="questionnaire")
public class KQuestionnaire extends KRestObject {
	@Expose
	private java.sql.Date date;
	private int idDomaine;
	@Expose
	private String libelle;
	@Expose
	private String description;
	@Expose
	private KDomaine domaine;
	private KListObject<KGroupe_questionnaire> groupe_questionnaires;
	private KListObject<KQuestion_questionnaire> question_questionnaires;
	@Expose
	private KListObject<KRealisation> realisations;
	@Expose
	private int idUtilisateur;
	@Expose
	private KUtilisateur utilisateur;
	@Expose
	private KListObject<KGroupe> groupes;
	@Expose
	private KListObject<KQuestion> questions;

	
	public KQuestionnaire() {
		super();
		hasMany(KRealisation.class);
		hasAndBelongsToMany("questions", KQuestion.class, KQuestion_questionnaire.class, "id", "question", "id", "idQuestionnaire", "idQuestion");
		belongsTo(KDomaine.class);
		hasAndBelongsToMany(KGroupe_questionnaire.class, KGroupe.class);
		belongsTo(KUtilisateur.class);
	}
	/**
	 * return the value of date
	 * @return date
	 */
	public java.sql.Date getDate(){
		return this.date;
	}
	/**
	 * return the value of idDomaine
	 * @return idDomaine
	 */
	public int getIdDomaine(){
		return this.idDomaine;
	}
	/**
	 * return the value of libelle
	 * @return libelle
	 */
	public String getLibelle(){
		return this.libelle;
	}
	/**
	 * return the value of description
	 * @return description
	 */
	public String getDescription(){
		return this.description;
	}
	/**
	 * return the value of domaine
	 * @return domaine
	 */
	public KDomaine getDomaine(){
		return this.domaine;
	}
	/**
	 * return the value of groupe_questionnaires
	 * @return groupe_questionnaires
	 */
	public KListObject<KGroupe_questionnaire> getGroupe_questionnaires(){
		return this.groupe_questionnaires;
	}
	/**
	 * return the value of questions
	 * @return questions
	 */
	public KListObject<KQuestion> getQuestions(){
		return this.questions;
	}
	/**
	 * return the value of realisations
	 * @return realisations
	 */
	public KListObject<KRealisation> getRealisations(){
		return this.realisations;
	}

	/**
	 * set the value of date
	 * @param aDate
	 */
	public void setDate(java.sql.Date aDate){
		this.date=aDate;
	}
	/**
	 * set the value of idDomaine
	 * @param aIdDomaine
	 */
	public void setIdDomaine(int aIdDomaine){
		this.idDomaine=aIdDomaine;
	}
	/**
	 * set the value of libelle
	 * @param aLibelle
	 */
	public void setLibelle(String aLibelle){
		this.libelle=aLibelle;
	}
	/**
	 * set the value of description
	 * @param aDescription
	 */
	public void setDescription(String aDescription){
		this.description=aDescription;
	}
	/**
	 * set the value of domaine
	 * @param aDomaine
	 */
	public void setDomaine(KDomaine aDomaine){
		this.domaine=aDomaine;
	}
	/**
	 * set the value of groupe_questionnaires
	 * @param aGroupe_questionnaires
	 */
	public void setGroupe_questionnaires(KListObject<KGroupe_questionnaire> aGroupe_questionnaires){
		this.groupe_questionnaires=aGroupe_questionnaires;
	}
	/**
	 * set the value of questions
	 * @param aQuestions
	 */
	public void setQuestions(KListObject<KQuestion> aQuestions){
		this.questions=aQuestions;
	}
	/**
	 * set the value of realisations
	 * @param aRealisations
	 */
	public void setRealisations(KListObject<KRealisation> aRealisations){
		this.realisations=aRealisations;
	}
	
	
	/**
	 * @return the createdBy
	 */
	public int getIdUtilisateur() {
		return idUtilisateur;
	}
	/**
	 * @param createdBy the createdBy to set
	 */
	public void setIdUtilisateur(int createdBy) {
		this.idUtilisateur = createdBy;
	}
	/**
	 * @return the utilisateur
	 */
	public KUtilisateur getUtilisateur() {
		return utilisateur;
	}
	/**
	 * @param utilisateur the utilisateur to set
	 */
	public void setUtilisateur(KUtilisateur utilisateur) {
		this.utilisateur = utilisateur;
	}
	@Override
	public String toString() {
		return " [date] = " + date+" [idDomaine] = " + idDomaine+" [libelle] = " + libelle;
	}
}