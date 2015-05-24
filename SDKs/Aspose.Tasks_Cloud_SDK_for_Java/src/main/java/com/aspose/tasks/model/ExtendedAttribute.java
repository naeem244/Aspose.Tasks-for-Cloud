package com.aspose.tasks.model;

import com.aspose.tasks.model.TimeUnitType;
public class ExtendedAttribute {
  private String FieldId = null;
  private String Value = null;
  private String ValueGuid = null;
  private TimeUnitType DurationFormat = null;
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

  /**
	 * getDurationFormat
	 * Gets TimeUnitType
	 * @return DurationFormat
	 */
  public TimeUnitType getDurationFormat() {
    return DurationFormat;
  }

	/**
	 * setDurationFormat
	 * Sets TimeUnitType
	 * @param DurationFormat TimeUnitType
	 */
  public void setDurationFormat(TimeUnitType DurationFormat) {
    this.DurationFormat = DurationFormat;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class ExtendedAttribute {\n");
    sb.append("  FieldId: ").append(FieldId).append("\n");
    sb.append("  Value: ").append(Value).append("\n");
    sb.append("  ValueGuid: ").append(ValueGuid).append("\n");
    sb.append("  DurationFormat: ").append(DurationFormat).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

