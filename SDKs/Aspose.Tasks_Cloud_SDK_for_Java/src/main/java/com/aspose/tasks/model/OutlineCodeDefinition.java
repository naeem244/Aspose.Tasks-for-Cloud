package com.aspose.tasks.model;

import java.util.*;
public class OutlineCodeDefinition {
  private String Guid = null;
  private String FieldId = null;
  private String FieldName = null;
  private String Alias = null;
  private String PhoneticAlias = null;
  private List<OutlineValue> Values = new ArrayList<OutlineValue>();
  private Boolean Enterprise = null;
  private Integer EnterpriseOutlineCodeAlias = null;
  private Boolean ResourceSubstitutionEnabled = null;
  private Boolean LeafOnly = null;
  private Boolean AllLevelsRequired = null;
  private Boolean OnlyTableValuesAllowed = null;
  private List<OutlineMask> Masks = new ArrayList<OutlineMask>();
  private Boolean ShowIndent = null;
  /**
	 * getGuid
	 * Gets String
	 * @return Guid
	 */
  public String getGuid() {
    return Guid;
  }

	/**
	 * setGuid
	 * Sets String
	 * @param Guid String
	 */
  public void setGuid(String Guid) {
    this.Guid = Guid;
  }

  /**
	 * getFieldId
	 * Gets String
	 * @return FieldId
	 */
  public String getFieldId() {
    return FieldId;
  }

	/**
	 * setFieldId
	 * Sets String
	 * @param FieldId String
	 */
  public void setFieldId(String FieldId) {
    this.FieldId = FieldId;
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

  /**
	 * getAlias
	 * Gets String
	 * @return Alias
	 */
  public String getAlias() {
    return Alias;
  }

	/**
	 * setAlias
	 * Sets String
	 * @param Alias String
	 */
  public void setAlias(String Alias) {
    this.Alias = Alias;
  }

  /**
	 * getPhoneticAlias
	 * Gets String
	 * @return PhoneticAlias
	 */
  public String getPhoneticAlias() {
    return PhoneticAlias;
  }

	/**
	 * setPhoneticAlias
	 * Sets String
	 * @param PhoneticAlias String
	 */
  public void setPhoneticAlias(String PhoneticAlias) {
    this.PhoneticAlias = PhoneticAlias;
  }

  /**
	 * getValues
	 * Gets List<OutlineValue>
	 * @return Values
	 */
  public List<OutlineValue> getValues() {
    return Values;
  }

	/**
	 * setValues
	 * Sets List<OutlineValue>
	 * @param Values List<OutlineValue>
	 */
  public void setValues(List<OutlineValue> Values) {
    this.Values = Values;
  }

  /**
	 * getEnterprise
	 * Gets Boolean
	 * @return Enterprise
	 */
  public Boolean getEnterprise() {
    return Enterprise;
  }

	/**
	 * setEnterprise
	 * Sets Boolean
	 * @param Enterprise Boolean
	 */
  public void setEnterprise(Boolean Enterprise) {
    this.Enterprise = Enterprise;
  }

  /**
	 * getEnterpriseOutlineCodeAlias
	 * Gets Integer
	 * @return EnterpriseOutlineCodeAlias
	 */
  public Integer getEnterpriseOutlineCodeAlias() {
    return EnterpriseOutlineCodeAlias;
  }

	/**
	 * setEnterpriseOutlineCodeAlias
	 * Sets Integer
	 * @param EnterpriseOutlineCodeAlias Integer
	 */
  public void setEnterpriseOutlineCodeAlias(Integer EnterpriseOutlineCodeAlias) {
    this.EnterpriseOutlineCodeAlias = EnterpriseOutlineCodeAlias;
  }

  /**
	 * getResourceSubstitutionEnabled
	 * Gets Boolean
	 * @return ResourceSubstitutionEnabled
	 */
  public Boolean getResourceSubstitutionEnabled() {
    return ResourceSubstitutionEnabled;
  }

	/**
	 * setResourceSubstitutionEnabled
	 * Sets Boolean
	 * @param ResourceSubstitutionEnabled Boolean
	 */
  public void setResourceSubstitutionEnabled(Boolean ResourceSubstitutionEnabled) {
    this.ResourceSubstitutionEnabled = ResourceSubstitutionEnabled;
  }

  /**
	 * getLeafOnly
	 * Gets Boolean
	 * @return LeafOnly
	 */
  public Boolean getLeafOnly() {
    return LeafOnly;
  }

	/**
	 * setLeafOnly
	 * Sets Boolean
	 * @param LeafOnly Boolean
	 */
  public void setLeafOnly(Boolean LeafOnly) {
    this.LeafOnly = LeafOnly;
  }

  /**
	 * getAllLevelsRequired
	 * Gets Boolean
	 * @return AllLevelsRequired
	 */
  public Boolean getAllLevelsRequired() {
    return AllLevelsRequired;
  }

	/**
	 * setAllLevelsRequired
	 * Sets Boolean
	 * @param AllLevelsRequired Boolean
	 */
  public void setAllLevelsRequired(Boolean AllLevelsRequired) {
    this.AllLevelsRequired = AllLevelsRequired;
  }

  /**
	 * getOnlyTableValuesAllowed
	 * Gets Boolean
	 * @return OnlyTableValuesAllowed
	 */
  public Boolean getOnlyTableValuesAllowed() {
    return OnlyTableValuesAllowed;
  }

	/**
	 * setOnlyTableValuesAllowed
	 * Sets Boolean
	 * @param OnlyTableValuesAllowed Boolean
	 */
  public void setOnlyTableValuesAllowed(Boolean OnlyTableValuesAllowed) {
    this.OnlyTableValuesAllowed = OnlyTableValuesAllowed;
  }

  /**
	 * getMasks
	 * Gets List<OutlineMask>
	 * @return Masks
	 */
  public List<OutlineMask> getMasks() {
    return Masks;
  }

	/**
	 * setMasks
	 * Sets List<OutlineMask>
	 * @param Masks List<OutlineMask>
	 */
  public void setMasks(List<OutlineMask> Masks) {
    this.Masks = Masks;
  }

  /**
	 * getShowIndent
	 * Gets Boolean
	 * @return ShowIndent
	 */
  public Boolean getShowIndent() {
    return ShowIndent;
  }

	/**
	 * setShowIndent
	 * Sets Boolean
	 * @param ShowIndent Boolean
	 */
  public void setShowIndent(Boolean ShowIndent) {
    this.ShowIndent = ShowIndent;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class OutlineCodeDefinition {\n");
    sb.append("  Guid: ").append(Guid).append("\n");
    sb.append("  FieldId: ").append(FieldId).append("\n");
    sb.append("  FieldName: ").append(FieldName).append("\n");
    sb.append("  Alias: ").append(Alias).append("\n");
    sb.append("  PhoneticAlias: ").append(PhoneticAlias).append("\n");
    sb.append("  Values: ").append(Values).append("\n");
    sb.append("  Enterprise: ").append(Enterprise).append("\n");
    sb.append("  EnterpriseOutlineCodeAlias: ").append(EnterpriseOutlineCodeAlias).append("\n");
    sb.append("  ResourceSubstitutionEnabled: ").append(ResourceSubstitutionEnabled).append("\n");
    sb.append("  LeafOnly: ").append(LeafOnly).append("\n");
    sb.append("  AllLevelsRequired: ").append(AllLevelsRequired).append("\n");
    sb.append("  OnlyTableValuesAllowed: ").append(OnlyTableValuesAllowed).append("\n");
    sb.append("  Masks: ").append(Masks).append("\n");
    sb.append("  ShowIndent: ").append(ShowIndent).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

