package com.aspose.tasks.model;

import com.aspose.tasks.model.OutlineValueType;
public class OutlineValue {
  private Integer ValueId = null;
  private String FieldGuid = null;
  private OutlineValueType Type = null;
  private Integer ParentValueId = null;
  private String Value = null;
  private String Description = null;
  private Boolean IsCollapsed = null;
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
	 * getFieldGuid
	 * Gets String
	 * @return FieldGuid
	 */
  public String getFieldGuid() {
    return FieldGuid;
  }

	/**
	 * setFieldGuid
	 * Sets String
	 * @param FieldGuid String
	 */
  public void setFieldGuid(String FieldGuid) {
    this.FieldGuid = FieldGuid;
  }

  /**
	 * getType
	 * Gets OutlineValueType
	 * @return Type
	 */
  public OutlineValueType getType() {
    return Type;
  }

	/**
	 * setType
	 * Sets OutlineValueType
	 * @param Type OutlineValueType
	 */
  public void setType(OutlineValueType Type) {
    this.Type = Type;
  }

  /**
	 * getParentValueId
	 * Gets Integer
	 * @return ParentValueId
	 */
  public Integer getParentValueId() {
    return ParentValueId;
  }

	/**
	 * setParentValueId
	 * Sets Integer
	 * @param ParentValueId Integer
	 */
  public void setParentValueId(Integer ParentValueId) {
    this.ParentValueId = ParentValueId;
  }

  /**
	 * getValue
	 * Gets String
	 * @return Value
	 */
  public String getValue() {
    return Value;
  }

	/**
	 * setValue
	 * Sets String
	 * @param Value String
	 */
  public void setValue(String Value) {
    this.Value = Value;
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
	 * getIsCollapsed
	 * Gets Boolean
	 * @return IsCollapsed
	 */
  public Boolean getIsCollapsed() {
    return IsCollapsed;
  }

	/**
	 * setIsCollapsed
	 * Sets Boolean
	 * @param IsCollapsed Boolean
	 */
  public void setIsCollapsed(Boolean IsCollapsed) {
    this.IsCollapsed = IsCollapsed;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class OutlineValue {\n");
    sb.append("  ValueId: ").append(ValueId).append("\n");
    sb.append("  FieldGuid: ").append(FieldGuid).append("\n");
    sb.append("  Type: ").append(Type).append("\n");
    sb.append("  ParentValueId: ").append(ParentValueId).append("\n");
    sb.append("  Value: ").append(Value).append("\n");
    sb.append("  Description: ").append(Description).append("\n");
    sb.append("  IsCollapsed: ").append(IsCollapsed).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

