using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;

namespace Com.Aspose.Tasks.Model {
  public class WBSCodeMask {
    public int? Level { get; set; }

    public string Length { get; set; }

    public WBSSequence Sequence { get; set; }

    public string Separator { get; set; }

    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class WBSCodeMask {\n");
      sb.Append("  Level: ").Append(Level).Append("\n");
      sb.Append("  Length: ").Append(Length).Append("\n");
      sb.Append("  Sequence: ").Append(Sequence).Append("\n");
      sb.Append("  Separator: ").Append(Separator).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }
  }
  }
