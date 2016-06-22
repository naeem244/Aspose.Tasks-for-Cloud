package com.aspose.tasks.model;

import com.aspose.tasks.model.Resource;
public class ResourceResponse {
  private Resource Resource = null;
  private String Code = null;
  private String Status = null;
  /**
	 * getResource
	 * Gets Resource
	 * @return Resource
	 */
  public Resource getResource() {
    return Resource;
  }

	/**
	 * setResource
	 * Sets Resource
	 * @param Resource Resource
	 */
  public void setResource(Resource Resource) {
    this.Resource = Resource;
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
    sb.append("class ResourceResponse {\n");
    sb.append("  Resource: ").append(Resource).append("\n");
    sb.append("  Code: ").append(Code).append("\n");
    sb.append("  Status: ").append(Status).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

