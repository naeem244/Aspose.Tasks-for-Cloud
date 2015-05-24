package com.aspose.tasks.model;

import com.aspose.tasks.model.OutlineCodeDefinition;
public class OutlineCodeResponse {
  private OutlineCodeDefinition OutlineCode = null;
  private String Code = null;
  private String Status = null;
  /**
	 * getOutlineCode
	 * Gets OutlineCodeDefinition
	 * @return OutlineCode
	 */
  public OutlineCodeDefinition getOutlineCode() {
    return OutlineCode;
  }

	/**
	 * setOutlineCode
	 * Sets OutlineCodeDefinition
	 * @param OutlineCode OutlineCodeDefinition
	 */
  public void setOutlineCode(OutlineCodeDefinition OutlineCode) {
    this.OutlineCode = OutlineCode;
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
    sb.append("class OutlineCodeResponse {\n");
    sb.append("  OutlineCode: ").append(OutlineCode).append("\n");
    sb.append("  Code: ").append(Code).append("\n");
    sb.append("  Status: ").append(Status).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

