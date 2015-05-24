package com.aspose.tasks.model;

import java.util.*;
import com.aspose.tasks.model.Link;
public class OutlineCodeItems {
  private List<OutlineCodeItem> List = new ArrayList<OutlineCodeItem>();
  private Link link = null;
  /**
	 * getList
	 * Gets List<OutlineCodeItem>
	 * @return List
	 */
  public List<OutlineCodeItem> getList() {
    return List;
  }

	/**
	 * setList
	 * Sets List<OutlineCodeItem>
	 * @param List List<OutlineCodeItem>
	 */
  public void setList(List<OutlineCodeItem> List) {
    this.List = List;
  }

  /**
	 * getLink
	 * Gets Link
	 * @return link
	 */
  public Link getLink() {
    return link;
  }

	/**
	 * setLink
	 * Sets Link
	 * @param link Link
	 */
  public void setLink(Link link) {
    this.link = link;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class OutlineCodeItems {\n");
    sb.append("  List: ").append(List).append("\n");
    sb.append("  link: ").append(link).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

