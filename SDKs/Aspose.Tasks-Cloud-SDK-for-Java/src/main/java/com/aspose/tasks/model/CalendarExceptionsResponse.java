package com.aspose.tasks.model;

import java.util.*;
public class CalendarExceptionsResponse {
  private List<CalendarException> CalendarExceptions = new ArrayList<CalendarException>();
  private String Code = null;
  private String Status = null;
  /**
	 * getCalendarExceptions
	 * Gets List<CalendarException>
	 * @return CalendarExceptions
	 */
  public List<CalendarException> getCalendarExceptions() {
    return CalendarExceptions;
  }

	/**
	 * setCalendarExceptions
	 * Sets List<CalendarException>
	 * @param CalendarExceptions List<CalendarException>
	 */
  public void setCalendarExceptions(List<CalendarException> CalendarExceptions) {
    this.CalendarExceptions = CalendarExceptions;
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
    sb.append("class CalendarExceptionsResponse {\n");
    sb.append("  CalendarExceptions: ").append(CalendarExceptions).append("\n");
    sb.append("  Code: ").append(Code).append("\n");
    sb.append("  Status: ").append(Status).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

