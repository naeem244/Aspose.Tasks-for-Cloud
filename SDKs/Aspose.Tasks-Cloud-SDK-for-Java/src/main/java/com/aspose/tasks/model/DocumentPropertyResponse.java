package com.aspose.tasks.model;

import com.aspose.tasks.model.DocumentProperty;
public class DocumentPropertyResponse {
  private DocumentProperty Property = null;
  private String Code = null;
  private String Status = null;
  /**
	 * getProperty
	 * Gets DocumentProperty
	 * @return Property
	 */
  public DocumentProperty getProperty() {
    return Property;
  }

	/**
	 * setProperty
	 * Sets DocumentProperty
	 * @param Property DocumentProperty
	 */
  public void setProperty(DocumentProperty Property) {
    this.Property = Property;
  }

  /**
	 * getCode
	 * Gets String
	 * @return Code
	 */
  public String getCode() {
    return Code;
  }

	/**
	 * setCode
	 * Sets String
	 * @param Code String
	 */
  public void setCode(String Code) {
    this.Code = Code;
  }

  /**
	 * getStatus
	 * Gets String
	 * @return Status
	 */
  public String getStatus() {
    return Status;
  }

	/**
	 * setStatus
	 * Sets String
	 * @param Status String
	 */
  public void setStatus(String Status) {
    this.Status = Status;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class DocumentPropertyResponse {\n");
    sb.append("  Property: ").append(Property).append("\n");
    sb.append("  Code: ").append(Code).append("\n");
    sb.append("  Status: ").append(Status).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

