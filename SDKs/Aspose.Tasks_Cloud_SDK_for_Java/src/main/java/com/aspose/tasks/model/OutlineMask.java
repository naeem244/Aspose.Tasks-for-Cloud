package com.aspose.tasks.model;

import com.aspose.tasks.model.MaskType;
public class OutlineMask {
  private Integer Level = null;
  private MaskType Type = null;
  private Integer Length = null;
  private String Separator = null;
  /**
	 * getLevel
	 * Gets Integer
	 * @return Level
	 */
  public Integer getLevel() {
    return Level;
  }

	/**
	 * setLevel
	 * Sets Integer
	 * @param Level Integer
	 */
  public void setLevel(Integer Level) {
    this.Level = Level;
  }

  /**
	 * getType
	 * Gets MaskType
	 * @return Type
	 */
  public MaskType getType() {
    return Type;
  }

	/**
	 * setType
	 * Sets MaskType
	 * @param Type MaskType
	 */
  public void setType(MaskType Type) {
    this.Type = Type;
  }

  /**
	 * getLength
	 * Gets Integer
	 * @return Length
	 */
  public Integer getLength() {
    return Length;
  }

	/**
	 * setLength
	 * Sets Integer
	 * @param Length Integer
	 */
  public void setLength(Integer Length) {
    this.Length = Length;
  }

  /**
	 * getSeparator
	 * Gets String
	 * @return Separator
	 */
  public String getSeparator() {
    return Separator;
  }

	/**
	 * setSeparator
	 * Sets String
	 * @param Separator String
	 */
  public void setSeparator(String Separator) {
    this.Separator = Separator;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class OutlineMask {\n");
    sb.append("  Level: ").append(Level).append("\n");
    sb.append("  Type: ").append(Type).append("\n");
    sb.append("  Length: ").append(Length).append("\n");
    sb.append("  Separator: ").append(Separator).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

