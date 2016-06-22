package com.aspose.tasks.model;

public class Value {
  private Integer Id = null;
  private String Val = null;
  private String Description = null;
  private String Phonetic = null;
  /**
	 * getId
	 * Gets Integer
	 * @return Id
	 */
  public Integer getId() {
    return Id;
  }

	/**
	 * setId
	 * Sets Integer
	 * @param Id Integer
	 */
  public void setId(Integer Id) {
    this.Id = Id;
  }

  /**
	 * getVal
	 * Gets String
	 * @return Val
	 */
  public String getVal() {
    return Val;
  }

	/**
	 * setVal
	 * Sets String
	 * @param Val String
	 */
  public void setVal(String Val) {
    this.Val = Val;
  }

  /**
	 * getDescription
	 * Gets String
	 * @return Description
	 */
  public String getDescription() {
    return Description;
  }

	/**
	 * setDescription
	 * Sets String
	 * @param Description String
	 */
  public void setDescription(String Description) {
    this.Description = Description;
  }

  /**
	 * getPhonetic
	 * Gets String
	 * @return Phonetic
	 */
  public String getPhonetic() {
    return Phonetic;
  }

	/**
	 * setPhonetic
	 * Sets String
	 * @param Phonetic String
	 */
  public void setPhonetic(String Phonetic) {
    this.Phonetic = Phonetic;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class Value {\n");
    sb.append("  Id: ").append(Id).append("\n");
    sb.append("  Val: ").append(Val).append("\n");
    sb.append("  Description: ").append(Description).append("\n");
    sb.append("  Phonetic: ").append(Phonetic).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

