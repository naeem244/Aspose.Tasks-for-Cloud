package com.aspose.tasks.model;

import com.aspose.tasks.model.ResourceItems;
public class ResourceItemsResponse {
  private ResourceItems Items = null;
  private String Code = null;
  private String Status = null;
  /**
	 * getItems
	 * Gets ResourceItems
	 * @return Items
	 */
  public ResourceItems getItems() {
    return Items;
  }

	/**
	 * setItems
	 * Sets ResourceItems
	 * @param Items ResourceItems
	 */
  public void setItems(ResourceItems Items) {
    this.Items = Items;
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
    sb.append("class ResourceItemsResponse {\n");
    sb.append("  Items: ").append(Items).append("\n");
    sb.append("  Code: ").append(Code).append("\n");
    sb.append("  Status: ").append(Status).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

