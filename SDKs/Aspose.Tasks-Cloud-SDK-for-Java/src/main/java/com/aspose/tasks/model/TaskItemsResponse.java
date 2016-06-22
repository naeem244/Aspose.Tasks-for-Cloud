package com.aspose.tasks.model;

import com.aspose.tasks.model.TaskItems;
public class TaskItemsResponse {
  private TaskItems Items = null;
  private String Code = null;
  private String Status = null;
  /**
	 * getItems
	 * Gets TaskItems
	 * @return Items
	 */
  public TaskItems getItems() {
    return Items;
  }

	/**
	 * setItems
	 * Sets TaskItems
	 * @param Items TaskItems
	 */
  public void setItems(TaskItems Items) {
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
    sb.append("class TaskItemsResponse {\n");
    sb.append("  Items: ").append(Items).append("\n");
    sb.append("  Code: ").append(Code).append("\n");
    sb.append("  Status: ").append(Status).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

