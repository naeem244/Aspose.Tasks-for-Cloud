package com.aspose.tasks.model;

import com.aspose.tasks.model.ResourceItem;
public class ResourceItemResponse {
  private ResourceItem ResourceItem = null;
  private String Code = null;
  private String Status = null;
  /**
	 * getResourceItem
	 * Gets ResourceItem
	 * @return ResourceItem
	 */
  public ResourceItem getResourceItem() {
    return ResourceItem;
  }

	/**
	 * setResourceItem
	 * Sets ResourceItem
	 * @param ResourceItem ResourceItem
	 */
  public void setResourceItem(ResourceItem ResourceItem) {
    this.ResourceItem = ResourceItem;
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
    sb.append("class ResourceItemResponse {\n");
    sb.append("  ResourceItem: ").append(ResourceItem).append("\n");
    sb.append("  Code: ").append(Code).append("\n");
    sb.append("  Status: ").append(Status).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

