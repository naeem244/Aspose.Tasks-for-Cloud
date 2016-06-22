using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;

namespace Com.Aspose.Tasks.Model {
  public class OutlineValue {
    public int? ValueId { get; set; }

    public string FieldGuid { get; set; }

    public OutlineValueType Type { get; set; }

    public int? ParentValueId { get; set; }

    public string Value { get; set; }

    public string Description { get; set; }

    public bool? IsCollapsed { get; set; }

    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class OutlineValue {\n");
      sb.Append("  ValueId: ").Append(ValueId).Append("\n");
      sb.Append("  FieldGuid: ").Append(FieldGuid).Append("\n");
      sb.Append("  Type: ").Append(Type).Append("\n");
      sb.Append("  ParentValueId: ").Append(ParentValueId).Append("\n");
      sb.Append("  Value: ").Append(Value).Append("\n");
      sb.Append("  Description: ").Append(Description).Append("\n");
      sb.Append("  IsCollapsed: ").Append(IsCollapsed).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }
  }
  }
