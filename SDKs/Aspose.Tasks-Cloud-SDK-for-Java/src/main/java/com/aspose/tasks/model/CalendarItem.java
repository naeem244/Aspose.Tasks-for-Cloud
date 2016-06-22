package com.aspose.tasks.model;

import com.aspose.tasks.model.Link;
public class CalendarItem {
  private Link Link = null;
  private Integer Uid = null;
  private String Name = null;
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
	 * getName
	 * Gets String
	 * @return Name
	 */
  public String getName() {
    return Name;
  }

	/**
	 * setName
	 * Sets String
	 * @param Name String
	 */
  public void setName(String Name) {
    this.Name = Name;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class CalendarItem {\n");
    sb.append("  Link: ").append(Link).append("\n");
    sb.append("  Uid: ").append(Uid).append("\n");
    sb.append("  Name: ").append(Name).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

