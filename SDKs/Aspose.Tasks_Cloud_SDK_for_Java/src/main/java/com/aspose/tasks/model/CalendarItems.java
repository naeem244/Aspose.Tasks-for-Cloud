package com.aspose.tasks.model;

import java.util.*;
import com.aspose.tasks.model.Link;
public class CalendarItems {
  private List<CalendarItem> List = new ArrayList<CalendarItem>();
  private Link link = null;
  /**
	 * getList
	 * Gets List<CalendarItem>
	 * @return List
	 */
  public List<CalendarItem> getList() {
    return List;
  }

	/**
	 * setList
	 * Sets List<CalendarItem>
	 * @param List List<CalendarItem>
	 */
  public void setList(List<CalendarItem> List) {
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
    sb.append("class CalendarItems {\n");
    sb.append("  List: ").append(List).append("\n");
    sb.append("  link: ").append(link).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

