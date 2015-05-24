package com.aspose.tasks.model;

import com.aspose.tasks.model.Link;
public class AssignmentItem {
  private Link Link = null;
  private Integer Uid = null;
  private Integer TaskUid = null;
  private Integer ResourceUid = null;
  /**
	 * getLink
	 * Gets Link
	 * @return Link
	 */
  public Link getLink() {
    return Link;
  }

	/**
	 * setLink
	 * Sets Link
	 * @param Link Link
	 */
  public void setLink(Link Link) {
    this.Link = Link;
  }

  /**
	 * getUid
	 * Gets Integer
	 * @return Uid
	 */
  public Integer getUid() {
    return Uid;
  }

	/**
	 * setUid
	 * Sets Integer
	 * @param Uid Integer
	 */
  public void setUid(Integer Uid) {
    this.Uid = Uid;
  }

  /**
	 * getTaskUid
	 * Gets Integer
	 * @return TaskUid
	 */
  public Integer getTaskUid() {
    return TaskUid;
  }

	/**
	 * setTaskUid
	 * Sets Integer
	 * @param TaskUid Integer
	 */
  public void setTaskUid(Integer TaskUid) {
    this.TaskUid = TaskUid;
  }

  /**
	 * getResourceUid
	 * Gets Integer
	 * @return ResourceUid
	 */
  public Integer getResourceUid() {
    return ResourceUid;
  }

	/**
	 * setResourceUid
	 * Sets Integer
	 * @param ResourceUid Integer
	 */
  public void setResourceUid(Integer ResourceUid) {
    this.ResourceUid = ResourceUid;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class AssignmentItem {\n");
    sb.append("  Link: ").append(Link).append("\n");
    sb.append("  Uid: ").append(Uid).append("\n");
    sb.append("  TaskUid: ").append(TaskUid).append("\n");
    sb.append("  ResourceUid: ").append(ResourceUid).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

