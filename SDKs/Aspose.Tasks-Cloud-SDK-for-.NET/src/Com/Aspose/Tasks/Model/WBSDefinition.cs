using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;

namespace Com.Aspose.Tasks.Model {
  public class WBSDefinition {
    public string CodePrefix { get; set; }

    public bool? GenerateWBSCode { get; set; }

    public bool? VerifyUniqueness { get; set; }

    public List<WBSCodeMask> CodeMaskCollection { get; set; }

    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class WBSDefinition {\n");
      sb.Append("  CodePrefix: ").Append(CodePrefix).Append("\n");
      sb.Append("  GenerateWBSCode: ").Append(GenerateWBSCode).Append("\n");
      sb.Append("  VerifyUniqueness: ").Append(VerifyUniqueness).Append("\n");
      sb.Append("  CodeMaskCollection: ").Append(CodeMaskCollection).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }
  }
  }
