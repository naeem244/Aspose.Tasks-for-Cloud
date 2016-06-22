package com.aspose.tasks.model;

import com.aspose.tasks.model.Link;
public class OutlineCodeItem {
  private Link Link = null;
  private Integer Index = null;
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

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class OutlineCodeItem {\n");
    sb.append("  Link: ").append(Link).append("\n");
    sb.append("  Index: ").append(Index).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

