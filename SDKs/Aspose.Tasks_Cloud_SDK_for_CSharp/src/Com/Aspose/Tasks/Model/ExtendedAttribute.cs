using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;

namespace Com.Aspose.Tasks.Model {
  public class ExtendedAttribute {
    public string FieldId { get; set; }

    public string Value { get; set; }

    public string ValueGuid { get; set; }

    public TimeUnitType DurationFormat { get; set; }

    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class ExtendedAttribute {\n");
      sb.Append("  FieldId: ").Append(FieldId).Append("\n");
      sb.Append("  Value: ").Append(Value).Append("\n");
      sb.Append("  ValueGuid: ").Append(ValueGuid).Append("\n");
      sb.Append("  DurationFormat: ").Append(DurationFormat).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }
  }
  }
