package com.aspose.tasks.model;

public class OutlineCode {
  private String FieldId = null;
  private Integer ValueId = null;
  private String ValueGuid = null;
  /**
	 * getFieldId
	 * Gets String
	 * @return FieldId
	 */
  public String getFieldId() {
    return FieldId;
  }

	/**
	 * setFieldId
	 * Sets String
	 * @param FieldId String
	 */
  public void setFieldId(String FieldId) {
    this.FieldId = FieldId;
  }

  /**
	 * getValueId
	 * Gets Integer
	 * @return ValueId
	 */
  public Integer getValueId() {
    return ValueId;
  }

	/**
	 * setValueId
	 * Sets Integer
	 * @param ValueId Integer
	 */
  public void setValueId(Integer ValueId) {
    this.ValueId = ValueId;
  }

  /**
	 * getValueGuid
	 * Gets String
	 * @return ValueGuid
	 */
  public String getValueGuid() {
    return ValueGuid;
  }

	/**
	 * setValueGuid
	 * Sets String
	 * @param ValueGuid String
	 */
  public void setValueGuid(String ValueGuid) {
    this.ValueGuid = ValueGuid;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class OutlineCode {\n");
    sb.append("  FieldId: ").append(FieldId).append("\n");
    sb.append("  ValueId: ").append(ValueId).append("\n");
    sb.append("  ValueGuid: ").append(ValueGuid).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

