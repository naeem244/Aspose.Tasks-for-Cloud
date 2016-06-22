package com.aspose.tasks.model;

import com.aspose.tasks.model.Link;
public class ExtendedAttributeItem {
  private Link Link = null;
  private Integer Index = null;
  private String FieldName = null;
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
	 * getIndex
	 * Gets Integer
	 * @return Index
	 */
  public Integer getIndex() {
    return Index;
  }

	/**
	 * setIndex
	 * Sets Integer
	 * @param Index Integer
	 */
  public void setIndex(Integer Index) {
    this.Index = Index;
  }

  /**
	 * getFieldName
	 * Gets String
	 * @return FieldName
	 */
  public String getFieldName() {
    return FieldName;
  }

	/**
	 * setFieldName
	 * Sets String
	 * @param FieldName String
	 */
  public void setFieldName(String FieldName) {
    this.FieldName = FieldName;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class ExtendedAttributeItem {\n");
    sb.append("  Link: ").append(Link).append("\n");
    sb.append("  Index: ").append(Index).append("\n");
    sb.append("  FieldName: ").append(FieldName).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

