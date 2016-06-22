package com.aspose.tasks.model;

import com.aspose.tasks.model.CalendarItem;
public class CalendarItemResponse {
  private CalendarItem CalendarItem = null;
  private String Code = null;
  private String Status = null;
  /**
	 * getCalendarItem
	 * Gets CalendarItem
	 * @return CalendarItem
	 */
  public CalendarItem getCalendarItem() {
    return CalendarItem;
  }

	/**
	 * setCalendarItem
	 * Sets CalendarItem
	 * @param CalendarItem CalendarItem
	 */
  public void setCalendarItem(CalendarItem CalendarItem) {
    this.CalendarItem = CalendarItem;
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
    sb.append("class CalendarItemResponse {\n");
    sb.append("  CalendarItem: ").append(CalendarItem).append("\n");
    sb.append("  Code: ").append(Code).append("\n");
    sb.append("  Status: ").append(Status).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

