using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;

namespace Com.Aspose.Tasks.Model {
  public class OutlineMask {
    public int? Level { get; set; }

    public MaskType Type { get; set; }

    public int? Length { get; set; }

    public string Separator { get; set; }

    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class OutlineMask {\n");
      sb.Append("  Level: ").Append(Level).Append("\n");
      sb.Append("  Type: ").Append(Type).Append("\n");
      sb.Append("  Length: ").Append(Length).Append("\n");
      sb.Append("  Separator: ").Append(Separator).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }
  }
  }
