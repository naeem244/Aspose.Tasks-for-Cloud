package com.aspose.tasks.model;

public class TaskItem {
  private Link Link = null;
  private Integer Uid = null;
  private Integer Id = null;
  private String Name = null;
  private String Start = null;
  private String Finish = null;
  private String Duration = null;
  private String DurationString = null;
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
	 * getId
	 * Gets Integer
	 * @return Id
	 */
  public Integer getId() {
    return Id;
  }

	/**
	 * setId
	 * Sets Integer
	 * @param Id Integer
	 */
  public void setId(Integer Id) {
    this.Id = Id;
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

  /**
	 * getStart
	 * Gets String
	 * @return Start
	 */
  public String getStart() {
    return Start;
  }

	/**
	 * setStart
	 * Sets String
	 * @param Start String
	 */
  public void setStart(String Start) {
    this.Start = Start;
  }

  /**
	 * getFinish
	 * Gets String
	 * @return Finish
	 */
  public String getFinish() {
    return Finish;
  }

	/**
	 * setFinish
	 * Sets String
	 * @param Finish String
	 */
  public void setFinish(String Finish) {
    this.Finish = Finish;
  }

  /**
	 * getDuration
	 * Gets String
	 * @return Duration
	 */
  public String getDuration() {
    return Duration;
  }

	/**
	 * setDuration
	 * Sets String
	 * @param Duration String
	 */
  public void setDuration(String Duration) {
    this.Duration = Duration;
  }

  /**
	 * getDurationString
	 * Gets String
	 * @return DurationString
	 */
  public String getDurationString() {
    return DurationString;
  }

	/**
	 * setDurationString
	 * Sets String
	 * @param DurationString String
	 */
  public void setDurationString(String DurationString) {
    this.DurationString = DurationString;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class TaskItem {\n");
    sb.append("  Link: ").append(Link).append("\n");
    sb.append("  Uid: ").append(Uid).append("\n");
    sb.append("  Id: ").append(Id).append("\n");
    sb.append("  Name: ").append(Name).append("\n");
    sb.append("  Start: ").append(Start).append("\n");
    sb.append("  Finish: ").append(Finish).append("\n");
    sb.append("  Duration: ").append(Duration).append("\n");
    sb.append("  DurationString: ").append(DurationString).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

