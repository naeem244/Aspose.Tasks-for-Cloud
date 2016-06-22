exports.models = {
  "CalculationType": {
  "id" : "CalculationType"
},"WorkContourType": {
  "id" : "WorkContourType"
},"TaskResponse": {
  "properties" : {
    "Task" : {
      "$ref" : "Task"
    },
    "Code" : {
      "type" : "string"
    },
    "Status" : {
      "type" : "string"
    }
  },
  "id" : "TaskResponse"
},"ResponseMessage": {
  "properties" : {
    "Code" : {
      "$ref" : "int"
    },
    "Message" : {
      "type" : "string"
    }
  },
  "id" : "ResponseMessage"
},"DayOfWeek": {
  "id" : "DayOfWeek"
},"OutlineValueType": {
  "id" : "OutlineValueType"
},"DateTime": {
  "properties" : {
    "Year" : {
      "$ref" : "int"
    },
    "Month" : {
      "$ref" : "int"
    },
    "Day" : {
      "$ref" : "int"
    },
    "Hour" : {
      "$ref" : "int"
    },
    "Minute" : {
      "$ref" : "int"
    },
    "Second" : {
      "$ref" : "int"
    },
    "Millisecond" : {
      "$ref" : "int"
    },
    "DayOfWeek" : {
      "type" : "string"
    },
    "DayOfYear" : {
      "$ref" : "int"
    },
    "Kind" : {
      "type" : "string"
    },
    "Ticks" : {
      "$ref" : "long"
    },
    "TimeOfDay" : {
      "type" : "string"
    }
  },
  "id" : "DateTime"
},"CalendarExceptionType": {
  "id" : "CalendarExceptionType"
},"AssignmentResponse": {
  "properties" : {
    "Assignment" : {
      "$ref" : "ResourceAssignment"
    },
    "Code" : {
      "type" : "string"
    },
    "Status" : {
      "type" : "string"
    }
  },
  "id" : "AssignmentResponse"
},"CalendarResponse": {
  "properties" : {
    "Calendar" : {
      "$ref" : "Calendar"
    },
    "Code" : {
      "type" : "string"
    },
    "Status" : {
      "type" : "string"
    }
  },
  "id" : "CalendarResponse"
},"WeekDayType": {
  "id" : "WeekDayType"
},"CalendarException": {
  "properties" : {
    "EnteredByOccurrences" : {
      "type" : "boolean"
    },
    "FromDate" : {
      "$ref" : "DateTime"
    },
    "ToDate" : {
      "$ref" : "DateTime"
    },
    "Occurrences" : {
      "$ref" : "int"
    },
    "Name" : {
      "type" : "string"
    },
    "Type" : {
      "$ref" : "CalendarExceptionType"
    },
    "Period" : {
      "$ref" : "int"
    },
    "DaysOfWeek" : {
      "type" : "array",
      "items" : {
        "$ref" : "DayType"
      }
    },
    "MonthItem" : {
      "$ref" : "MonthItemType"
    },
    "MonthPosition" : {
      "$ref" : "MonthPosition"
    },
    "Month" : {
      "$ref" : "Month"
    },
    "MonthDay" : {
      "$ref" : "int"
    },
    "DayWorking" : {
      "type" : "boolean"
    },
    "WorkingTimes" : {
      "type" : "array",
      "items" : {
        "$ref" : "WorkingTime"
      }
    }
  },
  "id" : "CalendarException"
},"OutlineCode": {
  "properties" : {
    "FieldId" : {
      "type" : "string"
    },
    "ValueId" : {
      "$ref" : "int"
    },
    "ValueGuid" : {
      "type" : "string"
    }
  },
  "id" : "OutlineCode"
},"ResourceAssignment": {
  "properties" : {
    "TaskUid" : {
      "$ref" : "int"
    },
    "ResourceUid" : {
      "$ref" : "int"
    },
    "Uid" : {
      "$ref" : "int"
    },
    "PercentWorkComplete" : {
      "$ref" : "int"
    },
    "ActualCost" : {
      "$ref" : "double"
    },
    "ActualFinish" : {
      "$ref" : "DateTime"
    },
    "ActualOvertimeCost" : {
      "$ref" : "double"
    },
    "ActualOvertimeWork" : {
      "type" : "string"
    },
    "ActualOvertimeWorkString" : {
      "type" : "string"
    },
    "ActualStart" : {
      "$ref" : "DateTime"
    },
    "ActualWork" : {
      "type" : "string"
    },
    "ActualWorkString" : {
      "type" : "string"
    },
    "Acwp" : {
      "$ref" : "double"
    },
    "ACWP" : {
      "$ref" : "double"
    },
    "Confirmed" : {
      "type" : "boolean"
    },
    "Cost" : {
      "$ref" : "double"
    },
    "CostRateTableType" : {
      "$ref" : "RateType"
    },
    "CostVariance" : {
      "$ref" : "double"
    },
    "Cv" : {
      "$ref" : "double"
    },
    "CV" : {
      "$ref" : "double"
    },
    "Delay" : {
      "$ref" : "int"
    },
    "Finish" : {
      "$ref" : "DateTime"
    },
    "FinishVariance" : {
      "$ref" : "int"
    },
    "Hyperlink" : {
      "type" : "string"
    },
    "HyperlinkAddress" : {
      "type" : "string"
    },
    "HyperlinkSubAddress" : {
      "type" : "string"
    },
    "WorkVariance" : {
      "$ref" : "double"
    },
    "HasFixedRateUnits" : {
      "type" : "boolean"
    },
    "FixedMaterial" : {
      "type" : "boolean"
    },
    "LevelingDelay" : {
      "$ref" : "int"
    },
    "LevelingDelayFormat" : {
      "$ref" : "TimeUnitType"
    },
    "LinkedFields" : {
      "type" : "boolean"
    },
    "Milestone" : {
      "type" : "boolean"
    },
    "Notes" : {
      "type" : "string"
    },
    "Overallocated" : {
      "type" : "boolean"
    },
    "OvertimeCost" : {
      "$ref" : "double"
    },
    "OvertimeWork" : {
      "type" : "string"
    },
    "OvertimeWorkString" : {
      "type" : "string"
    },
    "PeakUnits" : {
      "$ref" : "double"
    },
    "RegularWork" : {
      "type" : "string"
    },
    "RegularWorkString" : {
      "type" : "string"
    },
    "RemainingCost" : {
      "$ref" : "double"
    },
    "RemainingOvertimeCost" : {
      "$ref" : "double"
    },
    "RemainingOvertimeWork" : {
      "type" : "string"
    },
    "RemainingOvertimeWorkString" : {
      "type" : "string"
    },
    "RemainingWork" : {
      "type" : "string"
    },
    "RemainingWorkString" : {
      "type" : "string"
    },
    "ResponsePending" : {
      "type" : "boolean"
    },
    "Start" : {
      "$ref" : "DateTime"
    },
    "Stop" : {
      "$ref" : "DateTime"
    },
    "Resume" : {
      "$ref" : "DateTime"
    },
    "StartVariance" : {
      "$ref" : "int"
    },
    "Summary" : {
      "type" : "boolean"
    },
    "Sv" : {
      "$ref" : "double"
    },
    "SV" : {
      "$ref" : "double"
    },
    "Units" : {
      "$ref" : "double"
    },
    "UpdateNeeded" : {
      "type" : "boolean"
    },
    "Vac" : {
      "$ref" : "double"
    },
    "VAC" : {
      "$ref" : "double"
    },
    "Work" : {
      "type" : "string"
    },
    "WorkString" : {
      "type" : "string"
    },
    "WorkContour" : {
      "$ref" : "WorkContourType"
    },
    "Bcws" : {
      "$ref" : "double"
    },
    "BCWS" : {
      "$ref" : "double"
    },
    "Bcwp" : {
      "$ref" : "double"
    },
    "BCWP" : {
      "$ref" : "double"
    },
    "BookingType" : {
      "$ref" : "BookingType"
    },
    "ActualWorkProtected" : {
      "type" : "string"
    },
    "ActualWorkProtectedString" : {
      "type" : "string"
    },
    "ActualOvertimeWorkProtected" : {
      "type" : "string"
    },
    "ActualOvertimeWorkProtectedString" : {
      "type" : "string"
    },
    "CreationDate" : {
      "$ref" : "DateTime"
    },
    "Created" : {
      "$ref" : "DateTime"
    },
    "AssnOwner" : {
      "type" : "string"
    },
    "AssignmentOwner" : {
      "type" : "string"
    },
    "AssnOwnerGuid" : {
      "type" : "string"
    },
    "AssignmentOwnerGuid" : {
      "type" : "string"
    },
    "BudgetCost" : {
      "$ref" : "double"
    },
    "BudgetWork" : {
      "type" : "string"
    },
    "BudgetWorkString" : {
      "type" : "string"
    },
    "RateScale" : {
      "$ref" : "int"
    },
    "BaselineStart" : {
      "$ref" : "DateTime"
    },
    "BaselineFinish" : {
      "$ref" : "DateTime"
    },
    "BaselineWork" : {
      "type" : "string"
    },
    "BaselineWorkString" : {
      "type" : "string"
    },
    "BaselineCost" : {
      "$ref" : "double"
    },
    "BaselineBcws" : {
      "$ref" : "double"
    },
    "BaselineBcwp" : {
      "$ref" : "double"
    },
    "Baseline1Start" : {
      "$ref" : "DateTime"
    },
    "Baseline1Finish" : {
      "$ref" : "DateTime"
    },
    "Baseline1Work" : {
      "type" : "string"
    },
    "Baseline1WorkString" : {
      "type" : "string"
    },
    "Baseline1Cost" : {
      "$ref" : "double"
    },
    "Baseline1Bcws" : {
      "$ref" : "double"
    },
    "Baseline1Bcwp" : {
      "$ref" : "double"
    },
    "Baseline2Start" : {
      "$ref" : "DateTime"
    },
    "Baseline2Finish" : {
      "$ref" : "DateTime"
    },
    "Baseline2Work" : {
      "type" : "string"
    },
    "Baseline2WorkString" : {
      "type" : "string"
    },
    "Baseline2Cost" : {
      "$ref" : "double"
    },
    "Baseline2Bcws" : {
      "$ref" : "double"
    },
    "Baseline2Bcwp" : {
      "$ref" : "double"
    },
    "Baseline3Start" : {
      "$ref" : "DateTime"
    },
    "Baseline3Finish" : {
      "$ref" : "DateTime"
    },
    "Baseline3Work" : {
      "type" : "string"
    },
    "Baseline3WorkString" : {
      "type" : "string"
    },
    "Baseline3Cost" : {
      "$ref" : "double"
    },
    "Baseline3Bcws" : {
      "$ref" : "double"
    },
    "Baseline3Bcwp" : {
      "$ref" : "double"
    },
    "Baseline4Start" : {
      "$ref" : "DateTime"
    },
    "Baseline4Finish" : {
      "$ref" : "DateTime"
    },
    "Baseline4Work" : {
      "type" : "string"
    },
    "Baseline4WorkString" : {
      "type" : "string"
    },
    "Baseline4Cost" : {
      "$ref" : "double"
    },
    "Baseline4Bcws" : {
      "$ref" : "double"
    },
    "Baseline4Bcwp" : {
      "$ref" : "double"
    },
    "Baseline5Start" : {
      "$ref" : "DateTime"
    },
    "Baseline5Finish" : {
      "$ref" : "DateTime"
    },
    "Baseline5Work" : {
      "type" : "string"
    },
    "Baseline5WorkString" : {
      "type" : "string"
    },
    "Baseline5Cost" : {
      "$ref" : "double"
    },
    "Baseline5Bcws" : {
      "$ref" : "double"
    },
    "Baseline5Bcwp" : {
      "$ref" : "double"
    },
    "Baseline6Start" : {
      "$ref" : "DateTime"
    },
    "Baseline6Finish" : {
      "$ref" : "DateTime"
    },
    "Baseline6Work" : {
      "type" : "string"
    },
    "Baseline6WorkString" : {
      "type" : "string"
    },
    "Baseline6Cost" : {
      "$ref" : "double"
    },
    "Baseline6Bcws" : {
      "$ref" : "double"
    },
    "Baseline6Bcwp" : {
      "$ref" : "double"
    },
    "Baseline7Start" : {
      "$ref" : "DateTime"
    },
    "Baseline7Finish" : {
      "$ref" : "DateTime"
    },
    "Baseline7Work" : {
      "type" : "string"
    },
    "Baseline7WorkString" : {
      "type" : "string"
    },
    "Baseline7Cost" : {
      "$ref" : "double"
    },
    "Baseline7Bcws" : {
      "$ref" : "double"
    },
    "Baseline7Bcwp" : {
      "$ref" : "double"
    },
    "Baseline8Start" : {
      "$ref" : "DateTime"
    },
    "Baseline8Finish" : {
      "$ref" : "DateTime"
    },
    "Baseline8Work" : {
      "type" : "string"
    },
    "Baseline8WorkString" : {
      "type" : "string"
    },
    "Baseline8Cost" : {
      "$ref" : "double"
    },
    "Baseline8Bcws" : {
      "$ref" : "double"
    },
    "Baseline8Bcwp" : {
      "$ref" : "double"
    },
    "Baseline9Start" : {
      "$ref" : "DateTime"
    },
    "Baseline9Finish" : {
      "$ref" : "DateTime"
    },
    "Baseline9Work" : {
      "type" : "string"
    },
    "Baseline9WorkString" : {
      "type" : "string"
    },
    "Baseline9Cost" : {
      "$ref" : "double"
    },
    "Baseline9Bcws" : {
      "$ref" : "double"
    },
    "Baseline9Bcwp" : {
      "$ref" : "double"
    },
    "Baseline10Start" : {
      "$ref" : "DateTime"
    },
    "Baseline10Finish" : {
      "$ref" : "DateTime"
    },
    "Baseline10Work" : {
      "type" : "string"
    },
    "Baseline10WorkString" : {
      "type" : "string"
    },
    "Baseline10Cost" : {
      "$ref" : "double"
    },
    "Baseline10Bcws" : {
      "$ref" : "double"
    },
    "Baseline10Bcwp" : {
      "$ref" : "double"
    },
    "ExtendedAttributes" : {
      "type" : "array",
      "items" : {
        "$ref" : "ExtendedAttribute"
      }
    }
  },
  "id" : "ResourceAssignment"
},"HttpStatusCode": {
  "id" : "HttpStatusCode"
},"AssignmentItems": {
  "properties" : {
    "List" : {
      "type" : "array",
      "items" : {
        "$ref" : "AssignmentItem"
      }
    },
    "link" : {
      "$ref" : "Link"
    }
  },
  "id" : "AssignmentItems"
},"ExtendedAttributeDefinition": {
  "properties" : {
    "FieldId" : {
      "type" : "string"
    },
    "FieldName" : {
      "type" : "string"
    },
    "CfType" : {
      "$ref" : "CustomFieldType"
    },
    "Guid" : {
      "type" : "string"
    },
    "ElementType" : {
      "$ref" : "ElementType"
    },
    "MaxMultiValues" : {
      "$ref" : "int"
    },
    "UserDef" : {
      "type" : "boolean"
    },
    "Alias" : {
      "type" : "string"
    },
    "SecondaryPid" : {
      "type" : "string"
    },
    "AutoRollDown" : {
      "type" : "boolean"
    },
    "DefaultGuid" : {
      "type" : "string"
    },
    "LookupUid" : {
      "type" : "string"
    },
    "PhoneticsAlias" : {
      "type" : "string"
    },
    "RollupType" : {
      "$ref" : "RollupType"
    },
    "CalculationType" : {
      "$ref" : "CalculationType"
    },
    "Formula" : {
      "type" : "string"
    },
    "RestrictValues" : {
      "type" : "boolean"
    },
    "ValuelistSortOrder" : {
      "$ref" : "int"
    },
    "AppendNewValues" : {
      "type" : "boolean"
    },
    "Default" : {
      "type" : "string"
    },
    "ValueList" : {
      "type" : "array",
      "items" : {
        "$ref" : "Value"
      }
    },
    "SecondaryGuid" : {
      "type" : "string"
    }
  },
  "id" : "ExtendedAttributeDefinition"
},"DocumentPropertiesResponse": {
  "properties" : {
    "Properties" : {
      "$ref" : "DocumentProperties"
    },
    "Code" : {
      "type" : "string"
    },
    "Status" : {
      "type" : "string"
    }
  },
  "id" : "DocumentPropertiesResponse"
},"Int32": {
  "id" : "Int32"
},"CalendarExceptionsResponse": {
  "properties" : {
    "CalendarExceptions" : {
      "type" : "array",
      "items" : {
        "$ref" : "CalendarException"
      }
    },
    "Code" : {
      "type" : "string"
    },
    "Status" : {
      "type" : "string"
    }
  },
  "id" : "CalendarExceptionsResponse"
},"ResourceAssignments": {
  "properties" : {
    "List" : {
      "type" : "array",
      "items" : {
        "$ref" : "ResourceAssignment"
      }
    },
    "link" : {
      "$ref" : "Link"
    }
  },
  "id" : "ResourceAssignments"
},"ConfidenceLevel": {
  "id" : "ConfidenceLevel"
},"Task": {
  "properties" : {
    "Uid" : {
      "$ref" : "int"
    },
    "Id" : {
      "$ref" : "int"
    },
    "Name" : {
      "type" : "string"
    },
    "Duration" : {
      "type" : "string"
    },
    "DurationString" : {
      "type" : "string"
    },
    "Start" : {
      "$ref" : "DateTime"
    },
    "Finish" : {
      "$ref" : "DateTime"
    },
    "PercentComplete" : {
      "$ref" : "int"
    },
    "PercentWorkComplete" : {
      "$ref" : "int"
    },
    "IsActive" : {
      "type" : "boolean"
    },
    "ActualCost" : {
      "$ref" : "double"
    },
    "ActualDuration" : {
      "type" : "string"
    },
    "ActualDurationString" : {
      "type" : "string"
    },
    "ActualFinish" : {
      "$ref" : "DateTime"
    },
    "ActualOvertimeCost" : {
      "$ref" : "double"
    },
    "ActualOvertimeWork" : {
      "type" : "string"
    },
    "ActualOvertimeWorkString" : {
      "type" : "string"
    },
    "ActualStart" : {
      "$ref" : "DateTime"
    },
    "BudgetWork" : {
      "type" : "string"
    },
    "BudgetWorkString" : {
      "type" : "string"
    },
    "BudgetCost" : {
      "$ref" : "double"
    },
    "ConstraintDate" : {
      "$ref" : "DateTime"
    },
    "ConstraintType" : {
      "$ref" : "ConstraintType"
    },
    "Contact" : {
      "type" : "string"
    },
    "Cost" : {
      "$ref" : "double"
    },
    "CV" : {
      "$ref" : "double"
    },
    "Cv" : {
      "$ref" : "double"
    },
    "Deadline" : {
      "$ref" : "DateTime"
    },
    "DurationVariance" : {
      "type" : "string"
    },
    "DurationVarianceString" : {
      "type" : "string"
    },
    "EarlyFinish" : {
      "$ref" : "DateTime"
    },
    "EarlyStart" : {
      "$ref" : "DateTime"
    },
    "IsEffortDriven" : {
      "type" : "boolean"
    },
    "IsExternalTask" : {
      "type" : "boolean"
    },
    "FinishSlack" : {
      "$ref" : "int"
    },
    "FinishVariance" : {
      "$ref" : "int"
    },
    "FixedCost" : {
      "$ref" : "double"
    },
    "FixedCostAccrual" : {
      "$ref" : "CostAccrualType"
    },
    "FreeSlack" : {
      "$ref" : "int"
    },
    "Guid" : {
      "type" : "string"
    },
    "GUID" : {
      "type" : "string"
    },
    "HideBar" : {
      "type" : "boolean"
    },
    "IgnoreResourceCalendar" : {
      "type" : "boolean"
    },
    "LateFinish" : {
      "$ref" : "DateTime"
    },
    "LateStart" : {
      "$ref" : "DateTime"
    },
    "LevelAssignments" : {
      "type" : "boolean"
    },
    "IsLevelAssignments" : {
      "type" : "boolean"
    },
    "LevelingCanSplit" : {
      "type" : "boolean"
    },
    "CanLevelingSplit" : {
      "type" : "boolean"
    },
    "LevelingDelay" : {
      "$ref" : "int"
    },
    "IsMarked" : {
      "type" : "boolean"
    },
    "IsMilestone" : {
      "type" : "boolean"
    },
    "IsCritical" : {
      "type" : "boolean"
    },
    "IsSubproject" : {
      "type" : "boolean"
    },
    "IsSubprojectReadOnly" : {
      "type" : "boolean"
    },
    "SubprojectName" : {
      "type" : "string"
    },
    "IsSummary" : {
      "type" : "boolean"
    },
    "SubtasksUids" : {
      "type" : "array",
      "items" : {
        "$ref" : "int"
      }
    },
    "OutlineLevel" : {
      "$ref" : "int"
    },
    "IsOverallocated" : {
      "type" : "boolean"
    },
    "IsOverAllocated" : {
      "type" : "boolean"
    },
    "IsEstimated" : {
      "type" : "boolean"
    },
    "OvertimeCost" : {
      "$ref" : "double"
    },
    "OvertimeWork" : {
      "type" : "string"
    },
    "OvertimeWorkString" : {
      "type" : "string"
    },
    "PhysicalPercentComplete" : {
      "$ref" : "int"
    },
    "PreleveledFinish" : {
      "$ref" : "DateTime"
    },
    "PreLeveledFinish" : {
      "$ref" : "DateTime"
    },
    "PreleveledStart" : {
      "$ref" : "DateTime"
    },
    "PreLeveledStart" : {
      "$ref" : "DateTime"
    },
    "IsRecurring" : {
      "type" : "boolean"
    },
    "RegularWork" : {
      "type" : "string"
    },
    "RegularWorkString" : {
      "type" : "string"
    },
    "RemainingCost" : {
      "$ref" : "double"
    },
    "RemainingDuration" : {
      "type" : "string"
    },
    "RemainingDurationString" : {
      "type" : "string"
    },
    "RemainingOvertimeCost" : {
      "$ref" : "double"
    },
    "RemainingOvertimeWork" : {
      "type" : "string"
    },
    "RemainingOvertimeWorkString" : {
      "type" : "string"
    },
    "RemainingWork" : {
      "type" : "string"
    },
    "RemainingWorkString" : {
      "type" : "string"
    },
    "Resume" : {
      "$ref" : "DateTime"
    },
    "IsRollup" : {
      "type" : "boolean"
    },
    "StartSlack" : {
      "$ref" : "int"
    },
    "StartVariance" : {
      "$ref" : "int"
    },
    "CalendarUid" : {
      "$ref" : "int"
    },
    "IsManual" : {
      "type" : "boolean"
    },
    "TotalSlack" : {
      "$ref" : "int"
    },
    "Type" : {
      "$ref" : "TaskType"
    },
    "Wbs" : {
      "type" : "string"
    },
    "Priority" : {
      "$ref" : "int"
    },
    "Work" : {
      "type" : "string"
    },
    "WorkString" : {
      "type" : "string"
    },
    "WorkVariance" : {
      "$ref" : "double"
    },
    "NotesText" : {
      "type" : "string"
    },
    "ACWP" : {
      "$ref" : "double"
    },
    "Acwp" : {
      "$ref" : "double"
    },
    "BCWS" : {
      "$ref" : "double"
    },
    "Bcws" : {
      "$ref" : "double"
    },
    "BCWP" : {
      "$ref" : "double"
    },
    "Bcwp" : {
      "$ref" : "double"
    },
    "LevelingDelayFormat" : {
      "$ref" : "TimeUnitType"
    },
    "Predecessors" : {
      "type" : "string"
    },
    "Successors" : {
      "type" : "string"
    },
    "BaselineStart" : {
      "$ref" : "DateTime"
    },
    "BaselineFinish" : {
      "$ref" : "DateTime"
    },
    "BaselineDuration" : {
      "type" : "string"
    },
    "BaselineDurationString" : {
      "type" : "string"
    },
    "BaselineFixedCost" : {
      "$ref" : "double"
    },
    "BaselineDurationFormat" : {
      "$ref" : "TimeUnitType"
    },
    "BaselineEstimatedDuration" : {
      "type" : "boolean"
    },
    "BaselineWork" : {
      "type" : "string"
    },
    "BaselineWorkString" : {
      "type" : "string"
    },
    "BaselineCost" : {
      "$ref" : "double"
    },
    "BaselineBcws" : {
      "$ref" : "double"
    },
    "BaselineBcwp" : {
      "$ref" : "double"
    },
    "Baseline1Start" : {
      "$ref" : "DateTime"
    },
    "Baseline1Finish" : {
      "$ref" : "DateTime"
    },
    "Baseline1Duration" : {
      "type" : "string"
    },
    "Baseline1DurationString" : {
      "type" : "string"
    },
    "Baseline1FixedCost" : {
      "$ref" : "double"
    },
    "Baseline1DurationFormat" : {
      "$ref" : "TimeUnitType"
    },
    "Baseline1EstimatedDuration" : {
      "type" : "boolean"
    },
    "Baseline1Work" : {
      "type" : "string"
    },
    "Baseline1WorkString" : {
      "type" : "string"
    },
    "Baseline1Cost" : {
      "$ref" : "double"
    },
    "Baseline1Bcws" : {
      "$ref" : "double"
    },
    "Baseline1Bcwp" : {
      "$ref" : "double"
    },
    "Baseline2Start" : {
      "$ref" : "DateTime"
    },
    "Baseline2Finish" : {
      "$ref" : "DateTime"
    },
    "Baseline2Duration" : {
      "type" : "string"
    },
    "Baseline2DurationString" : {
      "type" : "string"
    },
    "Baseline2FixedCost" : {
      "$ref" : "double"
    },
    "Baseline2DurationFormat" : {
      "$ref" : "TimeUnitType"
    },
    "Baseline2EstimatedDuration" : {
      "type" : "boolean"
    },
    "Baseline2Work" : {
      "type" : "string"
    },
    "Baseline2WorkString" : {
      "type" : "string"
    },
    "Baseline2Cost" : {
      "$ref" : "double"
    },
    "Baseline2Bcws" : {
      "$ref" : "double"
    },
    "Baseline2Bcwp" : {
      "$ref" : "double"
    },
    "Baseline3Start" : {
      "$ref" : "DateTime"
    },
    "Baseline3Finish" : {
      "$ref" : "DateTime"
    },
    "Baseline3Duration" : {
      "type" : "string"
    },
    "Baseline3DurationString" : {
      "type" : "string"
    },
    "Baseline3FixedCost" : {
      "$ref" : "double"
    },
    "Baseline3DurationFormat" : {
      "$ref" : "TimeUnitType"
    },
    "Baseline3EstimatedDuration" : {
      "type" : "boolean"
    },
    "Baseline3Work" : {
      "type" : "string"
    },
    "Baseline3WorkString" : {
      "type" : "string"
    },
    "Baseline3Cost" : {
      "$ref" : "double"
    },
    "Baseline3Bcws" : {
      "$ref" : "double"
    },
    "Baseline3Bcwp" : {
      "$ref" : "double"
    },
    "Baseline4Start" : {
      "$ref" : "DateTime"
    },
    "Baseline4Finish" : {
      "$ref" : "DateTime"
    },
    "Baseline4Duration" : {
      "type" : "string"
    },
    "Baseline4DurationString" : {
      "type" : "string"
    },
    "Baseline4FixedCost" : {
      "$ref" : "double"
    },
    "Baseline4DurationFormat" : {
      "$ref" : "TimeUnitType"
    },
    "Baseline4EstimatedDuration" : {
      "type" : "boolean"
    },
    "Baseline4Work" : {
      "type" : "string"
    },
    "Baseline4WorkString" : {
      "type" : "string"
    },
    "Baseline4Cost" : {
      "$ref" : "double"
    },
    "Baseline4Bcws" : {
      "$ref" : "double"
    },
    "Baseline4Bcwp" : {
      "$ref" : "double"
    },
    "Baseline5Start" : {
      "$ref" : "DateTime"
    },
    "Baseline5Finish" : {
      "$ref" : "DateTime"
    },
    "Baseline5Duration" : {
      "type" : "string"
    },
    "Baseline5DurationString" : {
      "type" : "string"
    },
    "Baseline5FixedCost" : {
      "$ref" : "double"
    },
    "Baseline5DurationFormat" : {
      "$ref" : "TimeUnitType"
    },
    "Baseline5EstimatedDuration" : {
      "type" : "boolean"
    },
    "Baseline5Work" : {
      "type" : "string"
    },
    "Baseline5WorkString" : {
      "type" : "string"
    },
    "Baseline5Cost" : {
      "$ref" : "double"
    },
    "Baseline5Bcws" : {
      "$ref" : "double"
    },
    "Baseline5Bcwp" : {
      "$ref" : "double"
    },
    "Baseline6Start" : {
      "$ref" : "DateTime"
    },
    "Baseline6Finish" : {
      "$ref" : "DateTime"
    },
    "Baseline6Duration" : {
      "type" : "string"
    },
    "Baseline6DurationString" : {
      "type" : "string"
    },
    "Baseline6FixedCost" : {
      "$ref" : "double"
    },
    "Baseline6DurationFormat" : {
      "$ref" : "TimeUnitType"
    },
    "Baseline6EstimatedDuration" : {
      "type" : "boolean"
    },
    "Baseline6Work" : {
      "type" : "string"
    },
    "Baseline6WorkString" : {
      "type" : "string"
    },
    "Baseline6Cost" : {
      "$ref" : "double"
    },
    "Baseline6Bcws" : {
      "$ref" : "double"
    },
    "Baseline6Bcwp" : {
      "$ref" : "double"
    },
    "Baseline7Start" : {
      "$ref" : "DateTime"
    },
    "Baseline7Finish" : {
      "$ref" : "DateTime"
    },
    "Baseline7Duration" : {
      "type" : "string"
    },
    "Baseline7DurationString" : {
      "type" : "string"
    },
    "Baseline7FixedCost" : {
      "$ref" : "double"
    },
    "Baseline7DurationFormat" : {
      "$ref" : "TimeUnitType"
    },
    "Baseline7EstimatedDuration" : {
      "type" : "boolean"
    },
    "Baseline7Work" : {
      "type" : "string"
    },
    "Baseline7WorkString" : {
      "type" : "string"
    },
    "Baseline7Cost" : {
      "$ref" : "double"
    },
    "Baseline7Bcws" : {
      "$ref" : "double"
    },
    "Baseline7Bcwp" : {
      "$ref" : "double"
    },
    "Baseline8Start" : {
      "$ref" : "DateTime"
    },
    "Baseline8Finish" : {
      "$ref" : "DateTime"
    },
    "Baseline8Duration" : {
      "type" : "string"
    },
    "Baseline8DurationString" : {
      "type" : "string"
    },
    "Baseline8FixedCost" : {
      "$ref" : "double"
    },
    "Baseline8DurationFormat" : {
      "$ref" : "TimeUnitType"
    },
    "Baseline8EstimatedDuration" : {
      "type" : "boolean"
    },
    "Baseline8Work" : {
      "type" : "string"
    },
    "Baseline8WorkString" : {
      "type" : "string"
    },
    "Baseline8Cost" : {
      "$ref" : "double"
    },
    "Baseline8Bcws" : {
      "$ref" : "double"
    },
    "Baseline8Bcwp" : {
      "$ref" : "double"
    },
    "Baseline9Start" : {
      "$ref" : "DateTime"
    },
    "Baseline9Finish" : {
      "$ref" : "DateTime"
    },
    "Baseline9Duration" : {
      "type" : "string"
    },
    "Baseline9DurationString" : {
      "type" : "string"
    },
    "Baseline9FixedCost" : {
      "$ref" : "double"
    },
    "Baseline9DurationFormat" : {
      "$ref" : "TimeUnitType"
    },
    "Baseline9EstimatedDuration" : {
      "type" : "boolean"
    },
    "Baseline9Work" : {
      "type" : "string"
    },
    "Baseline9WorkString" : {
      "type" : "string"
    },
    "Baseline9Cost" : {
      "$ref" : "double"
    },
    "Baseline9Bcws" : {
      "$ref" : "double"
    },
    "Baseline9Bcwp" : {
      "$ref" : "double"
    },
    "Baseline10Start" : {
      "$ref" : "DateTime"
    },
    "Baseline10Finish" : {
      "$ref" : "DateTime"
    },
    "Baseline10Duration" : {
      "type" : "string"
    },
    "Baseline10DurationString" : {
      "type" : "string"
    },
    "Baseline10FixedCost" : {
      "$ref" : "double"
    },
    "Baseline10DurationFormat" : {
      "$ref" : "TimeUnitType"
    },
    "Baseline10EstimatedDuration" : {
      "type" : "boolean"
    },
    "Baseline10Work" : {
      "type" : "string"
    },
    "Baseline10WorkString" : {
      "type" : "string"
    },
    "Baseline10Cost" : {
      "$ref" : "double"
    },
    "Baseline10Bcws" : {
      "$ref" : "double"
    },
    "Baseline10Bcwp" : {
      "$ref" : "double"
    },
    "ExtendedAttributes" : {
      "type" : "array",
      "items" : {
        "$ref" : "ExtendedAttribute"
      }
    },
    "OutlineCodes" : {
      "type" : "array",
      "items" : {
        "$ref" : "OutlineCode"
      }
    }
  },
  "id" : "Task"
},"AssignmentItemResponse": {
  "properties" : {
    "AssignmentItem" : {
      "$ref" : "AssignmentItem"
    },
    "Code" : {
      "type" : "string"
    },
    "Status" : {
      "type" : "string"
    }
  },
  "id" : "AssignmentItemResponse"
},"ExtendedAttributeItemsResponse": {
  "properties" : {
    "Items" : {
      "$ref" : "ExtendedAttributeItems"
    },
    "Code" : {
      "type" : "string"
    },
    "Status" : {
      "type" : "string"
    }
  },
  "id" : "ExtendedAttributeItemsResponse"
},"WeekDay": {
  "properties" : {
    "DayType" : {
      "$ref" : "DayType"
    },
    "DayWorking" : {
      "type" : "boolean"
    },
    "FromDate" : {
      "$ref" : "DateTime"
    },
    "ToDate" : {
      "$ref" : "DateTime"
    },
    "WorkingTimes" : {
      "type" : "array",
      "items" : {
        "$ref" : "WorkingTime"
      }
    }
  },
  "id" : "WeekDay"
},"TaskType": {
  "id" : "TaskType"
},"TaskItems": {
  "properties" : {
    "List" : {
      "type" : "array",
      "items" : {
        "$ref" : "TaskItem"
      }
    },
    "link" : {
      "$ref" : "Link"
    }
  },
  "id" : "TaskItems"
},"ProbabilityDistributionType": {
  "id" : "ProbabilityDistributionType"
},"ResourceItemResponse": {
  "properties" : {
    "ResourceItem" : {
      "$ref" : "ResourceItem"
    },
    "Code" : {
      "type" : "string"
    },
    "Status" : {
      "type" : "string"
    }
  },
  "id" : "ResourceItemResponse"
},"ExtendedAttribute": {
  "properties" : {
    "FieldId" : {
      "type" : "string"
    },
    "Value" : {
      "type" : "string"
    },
    "ValueGuid" : {
      "type" : "string"
    },
    "DurationFormat" : {
      "$ref" : "TimeUnitType"
    }
  },
  "id" : "ExtendedAttribute"
},"ExtendedAttributeItems": {
  "properties" : {
    "List" : {
      "type" : "array",
      "items" : {
        "$ref" : "ExtendedAttributeItem"
      }
    },
    "link" : {
      "$ref" : "Link"
    }
  },
  "id" : "ExtendedAttributeItems"
},"TaskItemResponse": {
  "properties" : {
    "TaskItem" : {
      "$ref" : "TaskItem"
    },
    "Code" : {
      "type" : "string"
    },
    "Status" : {
      "type" : "string"
    }
  },
  "id" : "TaskItemResponse"
},"TaskLinkResponse": {
  "properties" : {
    "TaskLink" : {
      "$ref" : "TaskLink"
    },
    "Code" : {
      "type" : "string"
    },
    "Status" : {
      "type" : "string"
    }
  },
  "id" : "TaskLinkResponse"
},"DocumentPropertyResponse": {
  "properties" : {
    "Property" : {
      "$ref" : "DocumentProperty"
    },
    "Code" : {
      "type" : "string"
    },
    "Status" : {
      "type" : "string"
    }
  },
  "id" : "DocumentPropertyResponse"
},"MaskType": {
  "id" : "MaskType"
},"CustomFieldType": {
  "id" : "CustomFieldType"
},"RollupType": {
  "id" : "RollupType"
},"ReportType": {
  "id" : "ReportType"
},"ResourceType": {
  "id" : "ResourceType"
},"ResourceItem": {
  "properties" : {
    "Link" : {
      "$ref" : "Link"
    },
    "Uid" : {
      "$ref" : "int"
    },
    "Id" : {
      "$ref" : "int"
    },
    "Name" : {
      "type" : "string"
    }
  },
  "id" : "ResourceItem"
},"Underline": {
  "id" : "Underline"
},"WBSSequence": {
  "id" : "WBSSequence"
},"CalendarItem": {
  "properties" : {
    "Link" : {
      "$ref" : "Link"
    },
    "Uid" : {
      "$ref" : "int"
    },
    "Name" : {
      "type" : "string"
    }
  },
  "id" : "CalendarItem"
},"MonthPosition": {
  "id" : "MonthPosition"
},"CalendarItemsResponse": {
  "properties" : {
    "Items" : {
      "$ref" : "CalendarItems"
    },
    "Code" : {
      "type" : "string"
    },
    "Status" : {
      "type" : "string"
    }
  },
  "id" : "CalendarItemsResponse"
},"Orientation": {
  "id" : "Orientation"
},"ExtendedAttributeItem": {
  "properties" : {
    "Link" : {
      "$ref" : "Link"
    },
    "Index" : {
      "$ref" : "int"
    },
    "FieldName" : {
      "type" : "string"
    }
  },
  "id" : "ExtendedAttributeItem"
},"AssignmentItem": {
  "properties" : {
    "Link" : {
      "$ref" : "Link"
    },
    "Uid" : {
      "$ref" : "int"
    },
    "TaskUid" : {
      "$ref" : "int"
    },
    "ResourceUid" : {
      "$ref" : "int"
    }
  },
  "id" : "AssignmentItem"
},"TimeSpan": {
  "properties" : {
    "Hours" : {
      "$ref" : "int"
    },
    "Minutes" : {
      "$ref" : "int"
    },
    "Seconds" : {
      "$ref" : "int"
    },
    "Milliseconds" : {
      "$ref" : "int"
    },
    "Ticks" : {
      "$ref" : "long"
    },
    "Days" : {
      "$ref" : "int"
    },
    "TotalDays" : {
      "$ref" : "double"
    },
    "TotalHours" : {
      "$ref" : "double"
    },
    "TotalMilliseconds" : {
      "$ref" : "double"
    },
    "TotalMinutes" : {
      "$ref" : "double"
    },
    "TotalSeconds" : {
      "$ref" : "double"
    }
  },
  "id" : "TimeSpan"
},"DocumentProperty": {
  "properties" : {
    "Name" : {
      "type" : "string"
    },
    "Value" : {
      "type" : "string"
    },
    "link" : {
      "$ref" : "Link"
    }
  },
  "id" : "DocumentProperty"
},"Link": {
  "properties" : {
    "Href" : {
      "type" : "string"
    },
    "Rel" : {
      "type" : "string"
    },
    "Type" : {
      "type" : "string"
    },
    "Title" : {
      "type" : "string"
    }
  },
  "id" : "Link"
},"OutlineCodeItem": {
  "properties" : {
    "Link" : {
      "$ref" : "Link"
    },
    "Index" : {
      "$ref" : "int"
    }
  },
  "id" : "OutlineCodeItem"
},"ConstraintType": {
  "id" : "ConstraintType"
},"CalendarItems": {
  "properties" : {
    "List" : {
      "type" : "array",
      "items" : {
        "$ref" : "CalendarItem"
      }
    },
    "link" : {
      "$ref" : "Link"
    }
  },
  "id" : "CalendarItems"
},"TimeUnitType": {
  "id" : "TimeUnitType"
},"ResourceItems": {
  "properties" : {
    "List" : {
      "type" : "array",
      "items" : {
        "$ref" : "ResourceItem"
      }
    },
    "link" : {
      "$ref" : "Link"
    }
  },
  "id" : "ResourceItems"
},"TextEffect": {
  "id" : "TextEffect"
},"OutlineCodeItemsResponse": {
  "properties" : {
    "Items" : {
      "$ref" : "OutlineCodeItems"
    },
    "Code" : {
      "type" : "string"
    },
    "Status" : {
      "type" : "string"
    }
  },
  "id" : "OutlineCodeItemsResponse"
},"Month": {
  "id" : "Month"
},"PaperSize": {
  "id" : "PaperSize"
},"CalendarItemResponse": {
  "properties" : {
    "CalendarItem" : {
      "$ref" : "CalendarItem"
    },
    "Code" : {
      "type" : "string"
    },
    "Status" : {
      "type" : "string"
    }
  },
  "id" : "CalendarItemResponse"
},"OutlineCodeItems": {
  "properties" : {
    "List" : {
      "type" : "array",
      "items" : {
        "$ref" : "OutlineCodeItem"
      }
    },
    "link" : {
      "$ref" : "Link"
    }
  },
  "id" : "OutlineCodeItems"
},"WorkingTime": {
  "properties" : {
    "FromTime" : {
      "$ref" : "DateTime"
    },
    "ToTime" : {
      "$ref" : "DateTime"
    }
  },
  "id" : "WorkingTime"
},"RateType": {
  "id" : "RateType"
},"RecurringInfoResponse": {
  "properties" : {
    "RecurringInfo" : {
      "$ref" : "RecurringInfo"
    },
    "Code" : {
      "type" : "string"
    },
    "Status" : {
      "type" : "string"
    }
  },
  "id" : "RecurringInfoResponse"
},"ExtendedAttributeResponse": {
  "properties" : {
    "ExtendedAttribute" : {
      "$ref" : "ExtendedAttributeDefinition"
    },
    "Code" : {
      "type" : "string"
    },
    "Status" : {
      "type" : "string"
    }
  },
  "id" : "ExtendedAttributeResponse"
},"WBSCodeMask": {
  "properties" : {
    "Level" : {
      "$ref" : "int"
    },
    "Length" : {
      "type" : "string"
    },
    "Sequence" : {
      "$ref" : "WBSSequence"
    },
    "Separator" : {
      "type" : "string"
    }
  },
  "id" : "WBSCodeMask"
},"Value": {
  "properties" : {
    "Id" : {
      "$ref" : "int"
    },
    "Val" : {
      "type" : "string"
    },
    "Description" : {
      "type" : "string"
    },
    "Phonetic" : {
      "type" : "string"
    }
  },
  "id" : "Value"
},"AssignmentsResponse": {
  "properties" : {
    "Assignments" : {
      "$ref" : "ResourceAssignments"
    },
    "Code" : {
      "type" : "string"
    },
    "Status" : {
      "type" : "string"
    }
  },
  "id" : "AssignmentsResponse"
},"ElementType": {
  "id" : "ElementType"
},"OrdinalNumber": {
  "id" : "OrdinalNumber"
},"NumberStyle": {
  "id" : "NumberStyle"
},"OutlineCodeDefinition": {
  "properties" : {
    "Guid" : {
      "type" : "string"
    },
    "FieldId" : {
      "type" : "string"
    },
    "FieldName" : {
      "type" : "string"
    },
    "Alias" : {
      "type" : "string"
    },
    "PhoneticAlias" : {
      "type" : "string"
    },
    "Values" : {
      "type" : "array",
      "items" : {
        "$ref" : "OutlineValue"
      }
    },
    "Enterprise" : {
      "type" : "boolean"
    },
    "EnterpriseOutlineCodeAlias" : {
      "$ref" : "int"
    },
    "ResourceSubstitutionEnabled" : {
      "type" : "boolean"
    },
    "LeafOnly" : {
      "type" : "boolean"
    },
    "AllLevelsRequired" : {
      "type" : "boolean"
    },
    "OnlyTableValuesAllowed" : {
      "type" : "boolean"
    },
    "Masks" : {
      "type" : "array",
      "items" : {
        "$ref" : "OutlineMask"
      }
    },
    "ShowIndent" : {
      "type" : "boolean"
    }
  },
  "id" : "OutlineCodeDefinition"
},"OutlineMask": {
  "properties" : {
    "Level" : {
      "$ref" : "int"
    },
    "Type" : {
      "$ref" : "MaskType"
    },
    "Length" : {
      "$ref" : "int"
    },
    "Separator" : {
      "type" : "string"
    }
  },
  "id" : "OutlineMask"
},"RateFormatType": {
  "id" : "RateFormatType"
},"DocumentProperties": {
  "properties" : {
    "List" : {
      "type" : "array",
      "items" : {
        "$ref" : "DocumentProperty"
      }
    },
    "link" : {
      "$ref" : "Link"
    }
  },
  "id" : "DocumentProperties"
},"SectionStart": {
  "id" : "SectionStart"
},"RecurrencePattern": {
  "id" : "RecurrencePattern"
},"HttpResponseMessage": {
  "properties" : {
    "Content" : {
      "type" : "string"
    },
    "Headers" : {
      "type" : "string"
    },
    "IsSuccessStatusCode" : {
      "$ref" : "bool"
    },
    "ReasonPhrase" : {
      "type" : "string"
    },
    "RequestMessage" : {
      "type" : "string"
    },
    "StatusCode" : {
      "type" : "string"
    },
    "Version" : {
      "type" : "string"
    }
  },
  "id" : "HttpResponseMessage"
},"TaskItem": {
  "properties" : {
    "Link" : {
      "$ref" : "Link"
    },
    "Uid" : {
      "$ref" : "int"
    },
    "Id" : {
      "$ref" : "int"
    },
    "Name" : {
      "type" : "string"
    },
    "Start" : {
      "$ref" : "DateTime"
    },
    "Finish" : {
      "$ref" : "DateTime"
    },
    "Duration" : {
      "type" : "string"
    },
    "DurationString" : {
      "type" : "string"
    }
  },
  "id" : "TaskItem"
},"DayType": {
  "id" : "DayType"
},"RecurringInfo": {
  "properties" : {
    "RecurrencePattern" : {
      "$ref" : "RecurrencePattern"
    },
    "StartDate" : {
      "$ref" : "DateTime"
    },
    "EndDate" : {
      "$ref" : "DateTime"
    },
    "Duration" : {
      "type" : "string"
    },
    "DurationString" : {
      "type" : "string"
    },
    "Occurrences" : {
      "$ref" : "int"
    },
    "UseEndDate" : {
      "type" : "boolean"
    },
    "DailyRepetitions" : {
      "$ref" : "int"
    },
    "DailyUseWorkdays" : {
      "type" : "boolean"
    },
    "WeeklyRepetitions" : {
      "$ref" : "int"
    },
    "WeeklyDays" : {
      "$ref" : "WeekDayType"
    },
    "MonthlyUseOrdinalDay" : {
      "type" : "boolean"
    },
    "MonthlyOrdinalNumber" : {
      "$ref" : "OrdinalNumber"
    },
    "MonthlyOrdinalDay" : {
      "type" : "string"
    },
    "MonthlyOrdinalRepetitions" : {
      "$ref" : "int"
    },
    "MonthlyDay" : {
      "$ref" : "int"
    },
    "MonthlyRepetitions" : {
      "$ref" : "int"
    },
    "YearlyUseOrdinalDay" : {
      "type" : "boolean"
    },
    "YearlyDate" : {
      "$ref" : "DateTime"
    },
    "YearlyOrdinalNumber" : {
      "$ref" : "OrdinalNumber"
    },
    "YearlyOrdinalDay" : {
      "type" : "string"
    },
    "YearlyOrdinalMonth" : {
      "$ref" : "Month"
    }
  },
  "id" : "RecurringInfo"
},"PageBorderAppliesTo": {
  "id" : "PageBorderAppliesTo"
},"OutlineCodeResponse": {
  "properties" : {
    "OutlineCode" : {
      "$ref" : "OutlineCodeDefinition"
    },
    "Code" : {
      "type" : "string"
    },
    "Status" : {
      "type" : "string"
    }
  },
  "id" : "OutlineCodeResponse"
},"PageBorderDistanceFrom": {
  "id" : "PageBorderDistanceFrom"
},"LineNumberRestartMode": {
  "id" : "LineNumberRestartMode"
},"BookingType": {
  "id" : "BookingType"
},"TaskItemsResponse": {
  "properties" : {
    "Items" : {
      "$ref" : "TaskItems"
    },
    "Code" : {
      "type" : "string"
    },
    "Status" : {
      "type" : "string"
    }
  },
  "id" : "TaskItemsResponse"
},"OutlineValue": {
  "properties" : {
    "ValueId" : {
      "$ref" : "int"
    },
    "FieldGuid" : {
      "type" : "string"
    },
    "Type" : {
      "$ref" : "OutlineValueType"
    },
    "ParentValueId" : {
      "$ref" : "int"
    },
    "Value" : {
      "type" : "string"
    },
    "Description" : {
      "type" : "string"
    },
    "IsCollapsed" : {
      "type" : "boolean"
    }
  },
  "id" : "OutlineValue"
},"AssignmentItemsResponse": {
  "properties" : {
    "Items" : {
      "$ref" : "AssignmentItems"
    },
    "Code" : {
      "type" : "string"
    },
    "Status" : {
      "type" : "string"
    }
  },
  "id" : "AssignmentItemsResponse"
},"MonthItemType": {
  "id" : "MonthItemType"
},"WBSDefinitionResponse": {
  "properties" : {
    "WBSDefinition" : {
      "$ref" : "WBSDefinition"
    },
    "Code" : {
      "type" : "string"
    },
    "Status" : {
      "type" : "string"
    }
  },
  "id" : "WBSDefinitionResponse"
},"CostAccrualType": {
  "id" : "CostAccrualType"
},"Resource": {
  "properties" : {
    "Name" : {
      "type" : "string"
    },
    "Uid" : {
      "$ref" : "int"
    },
    "Id" : {
      "$ref" : "int"
    },
    "Type" : {
      "$ref" : "ResourceType"
    },
    "IsNull" : {
      "type" : "boolean"
    },
    "Initials" : {
      "type" : "string"
    },
    "Phonetics" : {
      "type" : "string"
    },
    "NtAccount" : {
      "type" : "string"
    },
    "MaterialLabel" : {
      "type" : "string"
    },
    "Code" : {
      "type" : "string"
    },
    "Group" : {
      "type" : "string"
    },
    "EMailAddress" : {
      "type" : "string"
    },
    "EmailAddress" : {
      "type" : "string"
    },
    "Hyperlink" : {
      "type" : "string"
    },
    "HyperlinkAddress" : {
      "type" : "string"
    },
    "HyperlinkSubAddress" : {
      "type" : "string"
    },
    "MaxUnits" : {
      "$ref" : "double"
    },
    "PeakUnits" : {
      "$ref" : "double"
    },
    "Overallocated" : {
      "type" : "boolean"
    },
    "OverAllocated" : {
      "type" : "boolean"
    },
    "AvailableFrom" : {
      "$ref" : "DateTime"
    },
    "AvailableTo" : {
      "$ref" : "DateTime"
    },
    "Start" : {
      "$ref" : "DateTime"
    },
    "Finish" : {
      "$ref" : "DateTime"
    },
    "CanLevel" : {
      "type" : "boolean"
    },
    "AccrueAt" : {
      "$ref" : "CostAccrualType"
    },
    "Work" : {
      "type" : "string"
    },
    "WorkString" : {
      "type" : "string"
    },
    "RegularWork" : {
      "type" : "string"
    },
    "RegularWorkString" : {
      "type" : "string"
    },
    "OvertimeWork" : {
      "type" : "string"
    },
    "OvertimeWorkString" : {
      "type" : "string"
    },
    "ActualWork" : {
      "type" : "string"
    },
    "ActualWorkString" : {
      "type" : "string"
    },
    "RemainingWork" : {
      "type" : "string"
    },
    "RemainingWorkString" : {
      "type" : "string"
    },
    "ActualOvertimeWork" : {
      "type" : "string"
    },
    "ActualOvertimeWorkString" : {
      "type" : "string"
    },
    "RemainingOvertimeWork" : {
      "type" : "string"
    },
    "RemainingOvertimeWorkString" : {
      "type" : "string"
    },
    "PercentWorkComplete" : {
      "$ref" : "int"
    },
    "StandardRate" : {
      "$ref" : "double"
    },
    "StandardRateFormat" : {
      "$ref" : "RateFormatType"
    },
    "Cost" : {
      "$ref" : "double"
    },
    "OvertimeRateFormat" : {
      "$ref" : "RateFormatType"
    },
    "OvertimeCost" : {
      "$ref" : "double"
    },
    "CostPerUse" : {
      "$ref" : "double"
    },
    "ActualCost" : {
      "$ref" : "double"
    },
    "ActualOvertimeCost" : {
      "$ref" : "double"
    },
    "RemainingCost" : {
      "$ref" : "double"
    },
    "RemainingOvertimeCost" : {
      "$ref" : "double"
    },
    "WorkVariance" : {
      "$ref" : "double"
    },
    "CostVariance" : {
      "$ref" : "double"
    },
    "Sv" : {
      "$ref" : "double"
    },
    "SV" : {
      "$ref" : "double"
    },
    "Cv" : {
      "$ref" : "double"
    },
    "CV" : {
      "$ref" : "double"
    },
    "Acwp" : {
      "$ref" : "double"
    },
    "ACWP" : {
      "$ref" : "double"
    },
    "CalendarUid" : {
      "$ref" : "int"
    },
    "NotesText" : {
      "type" : "string"
    },
    "Bcws" : {
      "$ref" : "double"
    },
    "BCWS" : {
      "$ref" : "double"
    },
    "Bcwp" : {
      "$ref" : "double"
    },
    "BCWP" : {
      "$ref" : "double"
    },
    "IsGeneric" : {
      "type" : "boolean"
    },
    "IsInactive" : {
      "type" : "boolean"
    },
    "IsEnterprise" : {
      "type" : "boolean"
    },
    "BookingType" : {
      "$ref" : "BookingType"
    },
    "ActualWorkProtected" : {
      "type" : "string"
    },
    "ActualWorkProtectedString" : {
      "type" : "string"
    },
    "ActualOvertimeWorkProtected" : {
      "type" : "string"
    },
    "ActualOvertimeWorkProtectedString" : {
      "type" : "string"
    },
    "ActiveDirectoryGuid" : {
      "type" : "string"
    },
    "CreationDate" : {
      "$ref" : "DateTime"
    },
    "Created" : {
      "$ref" : "DateTime"
    },
    "CostCenter" : {
      "type" : "string"
    },
    "IsCostResource" : {
      "type" : "boolean"
    },
    "TeamAssignmentPool" : {
      "type" : "boolean"
    },
    "IsTeamAssignmentPool" : {
      "type" : "boolean"
    },
    "AssignmentOwner" : {
      "type" : "string"
    },
    "AssignmentOwnerGuid" : {
      "type" : "string"
    },
    "IsBudget" : {
      "type" : "boolean"
    },
    "BudgetWork" : {
      "type" : "string"
    },
    "BudgetWorkString" : {
      "type" : "string"
    },
    "BudgetCost" : {
      "$ref" : "double"
    },
    "OvertimeRate" : {
      "$ref" : "double"
    },
    "BaselineWork" : {
      "type" : "string"
    },
    "BaselineWorkString" : {
      "type" : "string"
    },
    "BaselineCost" : {
      "$ref" : "double"
    },
    "BaselineBcws" : {
      "$ref" : "double"
    },
    "BaselineBcwp" : {
      "$ref" : "double"
    },
    "Baseline1Work" : {
      "type" : "string"
    },
    "Baseline1WorkString" : {
      "type" : "string"
    },
    "Baseline1Cost" : {
      "$ref" : "double"
    },
    "Baseline1Bcws" : {
      "$ref" : "double"
    },
    "Baseline1Bcwp" : {
      "$ref" : "double"
    },
    "Baseline2Work" : {
      "type" : "string"
    },
    "Baseline2WorkString" : {
      "type" : "string"
    },
    "Baseline2Cost" : {
      "$ref" : "double"
    },
    "Baseline2Bcws" : {
      "$ref" : "double"
    },
    "Baseline2Bcwp" : {
      "$ref" : "double"
    },
    "Baseline3Work" : {
      "type" : "string"
    },
    "Baseline3WorkString" : {
      "type" : "string"
    },
    "Baseline3Cost" : {
      "$ref" : "double"
    },
    "Baseline3Bcws" : {
      "$ref" : "double"
    },
    "Baseline3Bcwp" : {
      "$ref" : "double"
    },
    "Baseline4Work" : {
      "type" : "string"
    },
    "Baseline4WorkString" : {
      "type" : "string"
    },
    "Baseline4Cost" : {
      "$ref" : "double"
    },
    "Baseline4Bcws" : {
      "$ref" : "double"
    },
    "Baseline4Bcwp" : {
      "$ref" : "double"
    },
    "Baseline5Work" : {
      "type" : "string"
    },
    "Baseline5WorkString" : {
      "type" : "string"
    },
    "Baseline5Cost" : {
      "$ref" : "double"
    },
    "Baseline5Bcws" : {
      "$ref" : "double"
    },
    "Baseline5Bcwp" : {
      "$ref" : "double"
    },
    "Baseline6Work" : {
      "type" : "string"
    },
    "Baseline6WorkString" : {
      "type" : "string"
    },
    "Baseline6Cost" : {
      "$ref" : "double"
    },
    "Baseline6Bcws" : {
      "$ref" : "double"
    },
    "Baseline6Bcwp" : {
      "$ref" : "double"
    },
    "Baseline7Work" : {
      "type" : "string"
    },
    "Baseline7WorkString" : {
      "type" : "string"
    },
    "Baseline7Cost" : {
      "$ref" : "double"
    },
    "Baseline7Bcws" : {
      "$ref" : "double"
    },
    "Baseline7Bcwp" : {
      "$ref" : "double"
    },
    "Baseline8Work" : {
      "type" : "string"
    },
    "Baseline8WorkString" : {
      "type" : "string"
    },
    "Baseline8Cost" : {
      "$ref" : "double"
    },
    "Baseline8Bcws" : {
      "$ref" : "double"
    },
    "Baseline8Bcwp" : {
      "$ref" : "double"
    },
    "Baseline9Work" : {
      "type" : "string"
    },
    "Baseline9WorkString" : {
      "type" : "string"
    },
    "Baseline9Cost" : {
      "$ref" : "double"
    },
    "Baseline9Bcws" : {
      "$ref" : "double"
    },
    "Baseline9Bcwp" : {
      "$ref" : "double"
    },
    "Baseline10Work" : {
      "type" : "string"
    },
    "Baseline10WorkString" : {
      "type" : "string"
    },
    "Baseline10Cost" : {
      "$ref" : "double"
    },
    "Baseline10Bcws" : {
      "$ref" : "double"
    },
    "Baseline10Bcwp" : {
      "$ref" : "double"
    },
    "ExtendedAttributes" : {
      "type" : "array",
      "items" : {
        "$ref" : "ExtendedAttribute"
      }
    },
    "OutlineCodes" : {
      "type" : "array",
      "items" : {
        "$ref" : "OutlineCode"
      }
    }
  },
  "id" : "Resource"
},"TaskLink": {
  "properties" : {
    "Link" : {
      "$ref" : "Link"
    },
    "Index" : {
      "$ref" : "int"
    },
    "PredecessorUid" : {
      "$ref" : "int"
    },
    "SuccessorUid" : {
      "$ref" : "int"
    },
    "LinkType" : {
      "$ref" : "TaskLinkType"
    },
    "Lag" : {
      "$ref" : "int"
    },
    "LagFormat" : {
      "$ref" : "TimeUnitType"
    }
  },
  "id" : "TaskLink"
},"ResourceItemsResponse": {
  "properties" : {
    "Items" : {
      "$ref" : "ResourceItems"
    },
    "Code" : {
      "type" : "string"
    },
    "Status" : {
      "type" : "string"
    }
  },
  "id" : "ResourceItemsResponse"
},"PageVerticalAlignment": {
  "id" : "PageVerticalAlignment"
},"TaskLinkType": {
  "id" : "TaskLinkType"
},"Calendar": {
  "properties" : {
    "Name" : {
      "type" : "string"
    },
    "Uid" : {
      "$ref" : "int"
    },
    "Days" : {
      "type" : "array",
      "items" : {
        "$ref" : "WeekDay"
      }
    },
    "Exceptions" : {
      "type" : "array",
      "items" : {
        "$ref" : "CalendarException"
      }
    },
    "IsBaseCalendar" : {
      "type" : "boolean"
    },
    "IsBaselineCalendar" : {
      "type" : "boolean"
    }
  },
  "id" : "Calendar"
},"DateTimeKind": {
  "id" : "DateTimeKind"
},"StyleIdentifier": {
  "id" : "StyleIdentifier"
},"TaskLinksResponse": {
  "properties" : {
    "TaskLinks" : {
      "type" : "array",
      "items" : {
        "$ref" : "TaskLink"
      }
    },
    "Code" : {
      "type" : "string"
    },
    "Status" : {
      "type" : "string"
    }
  },
  "id" : "TaskLinksResponse"
},"CalculationMode": {
  "id" : "CalculationMode"
},"WBSDefinition": {
  "properties" : {
    "CodePrefix" : {
      "type" : "string"
    },
    "GenerateWBSCode" : {
      "type" : "boolean"
    },
    "VerifyUniqueness" : {
      "type" : "boolean"
    },
    "CodeMaskCollection" : {
      "type" : "array",
      "items" : {
        "$ref" : "WBSCodeMask"
      }
    }
  },
  "id" : "WBSDefinition"
},"ResourceResponse": {
  "properties" : {
    "Resource" : {
      "$ref" : "Resource"
    },
    "Code" : {
      "type" : "string"
    },
    "Status" : {
      "type" : "string"
    }
  },
  "id" : "ResourceResponse"
},"SaaSposeResponse": {
  "properties" : {
    "Code" : {
      "type" : "string"
    },
    "Status" : {
      "type" : "string"
    }
  },
  "id" : "SaaSposeResponse"
}
}