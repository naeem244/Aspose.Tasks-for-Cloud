using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;

namespace Com.Aspose.Tasks.Model {
  public class ExtendedAttributeDefinition {
    public string FieldId { get; set; }

    public string FieldName { get; set; }

    public CustomFieldType CfType { get; set; }

    public string Guid { get; set; }

    public ElementType ElementType { get; set; }

    public int? MaxMultiValues { get; set; }

    public bool? UserDef { get; set; }

    public string Alias { get; set; }

    public string SecondaryPid { get; set; }

    public bool? AutoRollDown { get; set; }

    public string DefaultGuid { get; set; }

    public string LookupUid { get; set; }

    public string PhoneticsAlias { get; set; }

    public RollupType RollupType { get; set; }

    public CalculationType CalculationType { get; set; }

    public string Formula { get; set; }

    public bool? RestrictValues { get; set; }

    public int? ValuelistSortOrder { get; set; }

    public bool? AppendNewValues { get; set; }

    public string Default { get; set; }

    public List<Value> ValueList { get; set; }

    public string SecondaryGuid { get; set; }

    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class ExtendedAttributeDefinition {\n");
      sb.Append("  FieldId: ").Append(FieldId).Append("\n");
      sb.Append("  FieldName: ").Append(FieldName).Append("\n");
      sb.Append("  CfType: ").Append(CfType).Append("\n");
      sb.Append("  Guid: ").Append(Guid).Append("\n");
      sb.Append("  ElementType: ").Append(ElementType).Append("\n");
      sb.Append("  MaxMultiValues: ").Append(MaxMultiValues).Append("\n");
      sb.Append("  UserDef: ").Append(UserDef).Append("\n");
      sb.Append("  Alias: ").Append(Alias).Append("\n");
      sb.Append("  SecondaryPid: ").Append(SecondaryPid).Append("\n");
      sb.Append("  AutoRollDown: ").Append(AutoRollDown).Append("\n");
      sb.Append("  DefaultGuid: ").Append(DefaultGuid).Append("\n");
      sb.Append("  LookupUid: ").Append(LookupUid).Append("\n");
      sb.Append("  PhoneticsAlias: ").Append(PhoneticsAlias).Append("\n");
      sb.Append("  RollupType: ").Append(RollupType).Append("\n");
      sb.Append("  CalculationType: ").Append(CalculationType).Append("\n");
      sb.Append("  Formula: ").Append(Formula).Append("\n");
      sb.Append("  RestrictValues: ").Append(RestrictValues).Append("\n");
      sb.Append("  ValuelistSortOrder: ").Append(ValuelistSortOrder).Append("\n");
      sb.Append("  AppendNewValues: ").Append(AppendNewValues).Append("\n");
      sb.Append("  Default: ").Append(Default).Append("\n");
      sb.Append("  ValueList: ").Append(ValueList).Append("\n");
      sb.Append("  SecondaryGuid: ").Append(SecondaryGuid).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }
  }
  }
