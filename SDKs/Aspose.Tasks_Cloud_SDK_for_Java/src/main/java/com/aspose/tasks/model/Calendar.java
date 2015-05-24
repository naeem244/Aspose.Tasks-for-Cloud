package com.aspose.tasks.model;

import java.util.*;
public class Calendar {
  private String Name = null;
  private Integer Uid = null;
  private List<WeekDay> Days = new ArrayList<WeekDay>();
  private List<CalendarException> Exceptions = new ArrayList<CalendarException>();
  private Boolean IsBaseCalendar = null;
  private Boolean IsBaselineCalendar = null;
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
	 * getDays
	 * Gets List<WeekDay>
	 * @return Days
	 */
  public List<WeekDay> getDays() {
    return Days;
  }

	/**
	 * setDays
	 * Sets List<WeekDay>
	 * @param Days List<WeekDay>
	 */
  public void setDays(List<WeekDay> Days) {
    this.Days = Days;
  }

  /**
	 * getExceptions
	 * Gets List<CalendarException>
	 * @return Exceptions
	 */
  public List<CalendarException> getExceptions() {
    return Exceptions;
  }

	/**
	 * setExceptions
	 * Sets List<CalendarException>
	 * @param Exceptions List<CalendarException>
	 */
  public void setExceptions(List<CalendarException> Exceptions) {
    this.Exceptions = Exceptions;
  }

  /**
	 * getIsBaseCalendar
	 * Gets Boolean
	 * @return IsBaseCalendar
	 */
  public Boolean getIsBaseCalendar() {
    return IsBaseCalendar;
  }

	/**
	 * setIsBaseCalendar
	 * Sets Boolean
	 * @param IsBaseCalendar Boolean
	 */
  public void setIsBaseCalendar(Boolean IsBaseCalendar) {
    this.IsBaseCalendar = IsBaseCalendar;
  }

  /**
	 * getIsBaselineCalendar
	 * Gets Boolean
	 * @return IsBaselineCalendar
	 */
  public Boolean getIsBaselineCalendar() {
    return IsBaselineCalendar;
  }

	/**
	 * setIsBaselineCalendar
	 * Sets Boolean
	 * @param IsBaselineCalendar Boolean
	 */
  public void setIsBaselineCalendar(Boolean IsBaselineCalendar) {
    this.IsBaselineCalendar = IsBaselineCalendar;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class Calendar {\n");
    sb.append("  Name: ").append(Name).append("\n");
    sb.append("  Uid: ").append(Uid).append("\n");
    sb.append("  Days: ").append(Days).append("\n");
    sb.append("  Exceptions: ").append(Exceptions).append("\n");
    sb.append("  IsBaseCalendar: ").append(IsBaseCalendar).append("\n");
    sb.append("  IsBaselineCalendar: ").append(IsBaselineCalendar).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

