using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;

namespace Com.Aspose.Tasks.Model {
  public class OutlineCode {
    public string FieldId { get; set; }

    public int? ValueId { get; set; }

    public string ValueGuid { get; set; }

    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class OutlineCode {\n");
      sb.Append("  FieldId: ").Append(FieldId).Append("\n");
      sb.Append("  ValueId: ").Append(ValueId).Append("\n");
      sb.Append("  ValueGuid: ").Append(ValueGuid).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }
  }
  }
