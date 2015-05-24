package com.aspose.tasks.model;

import com.aspose.tasks.model.DocumentProperties;
public class DocumentPropertiesResponse {
  private DocumentProperties Properties = null;
  private String Code = null;
  private String Status = null;
  /**
	 * getProperties
	 * Gets DocumentProperties
	 * @return Properties
	 */
  public DocumentProperties getProperties() {
    return Properties;
  }

	/**
	 * setProperties
	 * Sets DocumentProperties
	 * @param Properties DocumentProperties
	 */
  public void setProperties(DocumentProperties Properties) {
    this.Properties = Properties;
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
    sb.append("class DocumentPropertiesResponse {\n");
    sb.append("  Properties: ").append(Properties).append("\n");
    sb.append("  Code: ").append(Code).append("\n");
    sb.append("  Status: ").append(Status).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

