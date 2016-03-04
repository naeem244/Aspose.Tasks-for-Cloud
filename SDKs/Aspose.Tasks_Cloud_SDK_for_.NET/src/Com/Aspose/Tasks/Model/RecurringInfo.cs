using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;

namespace Com.Aspose.Tasks.Model {
  public class RecurringInfo {
    public RecurrencePattern RecurrencePattern { get; set; }

    public DateTime StartDate { get; set; }

    public DateTime EndDate { get; set; }

    public string Duration { get; set; }

    public string DurationString { get; set; }

    public int? Occurrences { get; set; }

    public bool? UseEndDate { get; set; }

    public int? DailyRepetitions { get; set; }

    public bool? DailyUseWorkdays { get; set; }

    public int? WeeklyRepetitions { get; set; }

    public WeekDayType WeeklyDays { get; set; }

    public bool? MonthlyUseOrdinalDay { get; set; }

    public OrdinalNumber MonthlyOrdinalNumber { get; set; }

    public string MonthlyOrdinalDay { get; set; }

    public int? MonthlyOrdinalRepetitions { get; set; }

    public int? MonthlyDay { get; set; }

    public int? MonthlyRepetitions { get; set; }

    public bool? YearlyUseOrdinalDay { get; set; }

    public DateTime YearlyDate { get; set; }

    public OrdinalNumber YearlyOrdinalNumber { get; set; }

    public string YearlyOrdinalDay { get; set; }

    public Month YearlyOrdinalMonth { get; set; }

    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class RecurringInfo {\n");
      sb.Append("  RecurrencePattern: ").Append(RecurrencePattern).Append("\n");
      sb.Append("  StartDate: ").Append(StartDate).Append("\n");
      sb.Append("  EndDate: ").Append(EndDate).Append("\n");
      sb.Append("  Duration: ").Append(Duration).Append("\n");
      sb.Append("  DurationString: ").Append(DurationString).Append("\n");
      sb.Append("  Occurrences: ").Append(Occurrences).Append("\n");
      sb.Append("  UseEndDate: ").Append(UseEndDate).Append("\n");
      sb.Append("  DailyRepetitions: ").Append(DailyRepetitions).Append("\n");
      sb.Append("  DailyUseWorkdays: ").Append(DailyUseWorkdays).Append("\n");
      sb.Append("  WeeklyRepetitions: ").Append(WeeklyRepetitions).Append("\n");
      sb.Append("  WeeklyDays: ").Append(WeeklyDays).Append("\n");
      sb.Append("  MonthlyUseOrdinalDay: ").Append(MonthlyUseOrdinalDay).Append("\n");
      sb.Append("  MonthlyOrdinalNumber: ").Append(MonthlyOrdinalNumber).Append("\n");
      sb.Append("  MonthlyOrdinalDay: ").Append(MonthlyOrdinalDay).Append("\n");
      sb.Append("  MonthlyOrdinalRepetitions: ").Append(MonthlyOrdinalRepetitions).Append("\n");
      sb.Append("  MonthlyDay: ").Append(MonthlyDay).Append("\n");
      sb.Append("  MonthlyRepetitions: ").Append(MonthlyRepetitions).Append("\n");
      sb.Append("  YearlyUseOrdinalDay: ").Append(YearlyUseOrdinalDay).Append("\n");
      sb.Append("  YearlyDate: ").Append(YearlyDate).Append("\n");
      sb.Append("  YearlyOrdinalNumber: ").Append(YearlyOrdinalNumber).Append("\n");
      sb.Append("  YearlyOrdinalDay: ").Append(YearlyOrdinalDay).Append("\n");
      sb.Append("  YearlyOrdinalMonth: ").Append(YearlyOrdinalMonth).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }
  }
  }
