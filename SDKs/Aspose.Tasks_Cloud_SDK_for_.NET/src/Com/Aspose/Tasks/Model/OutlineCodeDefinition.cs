using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;

namespace Com.Aspose.Tasks.Model {
  public class OutlineCodeDefinition {
    public string Guid { get; set; }

    public string FieldId { get; set; }

    public string FieldName { get; set; }

    public string Alias { get; set; }

    public string PhoneticAlias { get; set; }

    public List<OutlineValue> Values { get; set; }

    public bool? Enterprise { get; set; }

    public int? EnterpriseOutlineCodeAlias { get; set; }

    public bool? ResourceSubstitutionEnabled { get; set; }

    public bool? LeafOnly { get; set; }

    public bool? AllLevelsRequired { get; set; }

    public bool? OnlyTableValuesAllowed { get; set; }

    public List<OutlineMask> Masks { get; set; }

    public bool? ShowIndent { get; set; }

    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class OutlineCodeDefinition {\n");
      sb.Append("  Guid: ").Append(Guid).Append("\n");
      sb.Append("  FieldId: ").Append(FieldId).Append("\n");
      sb.Append("  FieldName: ").Append(FieldName).Append("\n");
      sb.Append("  Alias: ").Append(Alias).Append("\n");
      sb.Append("  PhoneticAlias: ").Append(PhoneticAlias).Append("\n");
      sb.Append("  Values: ").Append(Values).Append("\n");
      sb.Append("  Enterprise: ").Append(Enterprise).Append("\n");
      sb.Append("  EnterpriseOutlineCodeAlias: ").Append(EnterpriseOutlineCodeAlias).Append("\n");
      sb.Append("  ResourceSubstitutionEnabled: ").Append(ResourceSubstitutionEnabled).Append("\n");
      sb.Append("  LeafOnly: ").Append(LeafOnly).Append("\n");
      sb.Append("  AllLevelsRequired: ").Append(AllLevelsRequired).Append("\n");
      sb.Append("  OnlyTableValuesAllowed: ").Append(OnlyTableValuesAllowed).Append("\n");
      sb.Append("  Masks: ").Append(Masks).Append("\n");
      sb.Append("  ShowIndent: ").Append(ShowIndent).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }
  }
  }
