using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;

namespace Com.Aspose.Tasks.Model {
  public class Value {
    public int? Id { get; set; }

    public string Val { get; set; }

    public string Description { get; set; }

    public string Phonetic { get; set; }

    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class Value {\n");
      sb.Append("  Id: ").Append(Id).Append("\n");
      sb.Append("  Val: ").Append(Val).Append("\n");
      sb.Append("  Description: ").Append(Description).Append("\n");
      sb.Append("  Phonetic: ").Append(Phonetic).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }
  }
  }
