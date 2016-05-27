package AsposeTasksCloud::Object::Task;

require 5.6.0;
use strict;
use warnings;
use utf8;
use JSON qw(decode_json);
use Data::Dumper;
use Module::Runtime qw(use_module);
use Log::Any qw($log);
use Date::Parse;

use base "AsposeTasksCloud::Object::BaseObject";

#
#
#
#NOTE: This class is auto generated by the swagger code generator program. Do not edit the class manually.
#

my $swagger_types = {
    'Uid' => 'int',
    'Id' => 'int',
    'Name' => 'string',
    'Duration' => 'string',
    'DurationString' => 'string',
    'Start' => 'string',
    'Finish' => 'string',
    'PercentComplete' => 'int',
    'PercentWorkComplete' => 'int',
    'IsActive' => 'boolean',
    'ActualCost' => 'double',
    'ActualDuration' => 'string',
    'ActualDurationString' => 'string',
    'ActualFinish' => 'string',
    'ActualOvertimeCost' => 'double',
    'ActualOvertimeWork' => 'string',
    'ActualOvertimeWorkString' => 'string',
    'ActualStart' => 'string',
    'BudgetWork' => 'string',
    'BudgetWorkString' => 'string',
    'BudgetCost' => 'double',
    'ConstraintDate' => 'string',
    'ConstraintType' => 'ConstraintType',
    'Contact' => 'string',
    'Cost' => 'double',
    'CV' => 'double',
    'Cv' => 'double',
    'Deadline' => 'string',
    'DurationVariance' => 'string',
    'DurationVarianceString' => 'string',
    'EarlyFinish' => 'string',
    'EarlyStart' => 'string',
    'IsEffortDriven' => 'boolean',
    'IsExternalTask' => 'boolean',
    'FinishSlack' => 'int',
    'FinishVariance' => 'int',
    'FixedCost' => 'double',
    'FixedCostAccrual' => 'CostAccrualType',
    'FreeSlack' => 'int',
    'Guid' => 'string',
    'GUID' => 'string',
    'HideBar' => 'boolean',
    'IgnoreResourceCalendar' => 'boolean',
    'LateFinish' => 'string',
    'LateStart' => 'string',
    'LevelAssignments' => 'boolean',
    'IsLevelAssignments' => 'boolean',
    'LevelingCanSplit' => 'boolean',
    'CanLevelingSplit' => 'boolean',
    'LevelingDelay' => 'int',
    'IsMarked' => 'boolean',
    'IsMilestone' => 'boolean',
    'IsCritical' => 'boolean',
    'IsSubproject' => 'boolean',
    'IsSubprojectReadOnly' => 'boolean',
    'SubprojectName' => 'string',
    'IsSummary' => 'boolean',
    'SubtasksUids' => 'ARRAY[int]',
    'OutlineLevel' => 'int',
    'IsOverallocated' => 'boolean',
    'IsOverAllocated' => 'boolean',
    'IsEstimated' => 'boolean',
    'OvertimeCost' => 'double',
    'OvertimeWork' => 'string',
    'OvertimeWorkString' => 'string',
    'PhysicalPercentComplete' => 'int',
    'PreleveledFinish' => 'string',
    'PreLeveledFinish' => 'string',
    'PreleveledStart' => 'string',
    'PreLeveledStart' => 'string',
    'IsRecurring' => 'boolean',
    'RegularWork' => 'string',
    'RegularWorkString' => 'string',
    'RemainingCost' => 'double',
    'RemainingDuration' => 'string',
    'RemainingDurationString' => 'string',
    'RemainingOvertimeCost' => 'double',
    'RemainingOvertimeWork' => 'string',
    'RemainingOvertimeWorkString' => 'string',
    'RemainingWork' => 'string',
    'RemainingWorkString' => 'string',
    'Resume' => 'string',
    'IsRollup' => 'boolean',
    'StartSlack' => 'int',
    'StartVariance' => 'int',
    'CalendarUid' => 'int',
    'IsManual' => 'boolean',
    'TotalSlack' => 'int',
    'Type' => 'TaskType',
    'Wbs' => 'string',
    'Priority' => 'int',
    'Work' => 'string',
    'WorkString' => 'string',
    'WorkVariance' => 'double',
    'NotesText' => 'string',
    'ACWP' => 'double',
    'Acwp' => 'double',
    'BCWS' => 'double',
    'Bcws' => 'double',
    'BCWP' => 'double',
    'Bcwp' => 'double',
    'LevelingDelayFormat' => 'TimeUnitType',
    'Predecessors' => 'string',
    'Successors' => 'string',
    'BaselineStart' => 'string',
    'BaselineFinish' => 'string',
    'BaselineDuration' => 'string',
    'BaselineDurationString' => 'string',
    'BaselineFixedCost' => 'double',
    'BaselineDurationFormat' => 'TimeUnitType',
    'BaselineEstimatedDuration' => 'boolean',
    'BaselineWork' => 'string',
    'BaselineWorkString' => 'string',
    'BaselineCost' => 'double',
    'BaselineBcws' => 'double',
    'BaselineBcwp' => 'double',
    'Baseline1Start' => 'string',
    'Baseline1Finish' => 'string',
    'Baseline1Duration' => 'string',
    'Baseline1DurationString' => 'string',
    'Baseline1FixedCost' => 'double',
    'Baseline1DurationFormat' => 'TimeUnitType',
    'Baseline1EstimatedDuration' => 'boolean',
    'Baseline1Work' => 'string',
    'Baseline1WorkString' => 'string',
    'Baseline1Cost' => 'double',
    'Baseline1Bcws' => 'double',
    'Baseline1Bcwp' => 'double',
    'Baseline2Start' => 'string',
    'Baseline2Finish' => 'string',
    'Baseline2Duration' => 'string',
    'Baseline2DurationString' => 'string',
    'Baseline2FixedCost' => 'double',
    'Baseline2DurationFormat' => 'TimeUnitType',
    'Baseline2EstimatedDuration' => 'boolean',
    'Baseline2Work' => 'string',
    'Baseline2WorkString' => 'string',
    'Baseline2Cost' => 'double',
    'Baseline2Bcws' => 'double',
    'Baseline2Bcwp' => 'double',
    'Baseline3Start' => 'string',
    'Baseline3Finish' => 'string',
    'Baseline3Duration' => 'string',
    'Baseline3DurationString' => 'string',
    'Baseline3FixedCost' => 'double',
    'Baseline3DurationFormat' => 'TimeUnitType',
    'Baseline3EstimatedDuration' => 'boolean',
    'Baseline3Work' => 'string',
    'Baseline3WorkString' => 'string',
    'Baseline3Cost' => 'double',
    'Baseline3Bcws' => 'double',
    'Baseline3Bcwp' => 'double',
    'Baseline4Start' => 'string',
    'Baseline4Finish' => 'string',
    'Baseline4Duration' => 'string',
    'Baseline4DurationString' => 'string',
    'Baseline4FixedCost' => 'double',
    'Baseline4DurationFormat' => 'TimeUnitType',
    'Baseline4EstimatedDuration' => 'boolean',
    'Baseline4Work' => 'string',
    'Baseline4WorkString' => 'string',
    'Baseline4Cost' => 'double',
    'Baseline4Bcws' => 'double',
    'Baseline4Bcwp' => 'double',
    'Baseline5Start' => 'string',
    'Baseline5Finish' => 'string',
    'Baseline5Duration' => 'string',
    'Baseline5DurationString' => 'string',
    'Baseline5FixedCost' => 'double',
    'Baseline5DurationFormat' => 'TimeUnitType',
    'Baseline5EstimatedDuration' => 'boolean',
    'Baseline5Work' => 'string',
    'Baseline5WorkString' => 'string',
    'Baseline5Cost' => 'double',
    'Baseline5Bcws' => 'double',
    'Baseline5Bcwp' => 'double',
    'Baseline6Start' => 'string',
    'Baseline6Finish' => 'string',
    'Baseline6Duration' => 'string',
    'Baseline6DurationString' => 'string',
    'Baseline6FixedCost' => 'double',
    'Baseline6DurationFormat' => 'TimeUnitType',
    'Baseline6EstimatedDuration' => 'boolean',
    'Baseline6Work' => 'string',
    'Baseline6WorkString' => 'string',
    'Baseline6Cost' => 'double',
    'Baseline6Bcws' => 'double',
    'Baseline6Bcwp' => 'double',
    'Baseline7Start' => 'string',
    'Baseline7Finish' => 'string',
    'Baseline7Duration' => 'string',
    'Baseline7DurationString' => 'string',
    'Baseline7FixedCost' => 'double',
    'Baseline7DurationFormat' => 'TimeUnitType',
    'Baseline7EstimatedDuration' => 'boolean',
    'Baseline7Work' => 'string',
    'Baseline7WorkString' => 'string',
    'Baseline7Cost' => 'double',
    'Baseline7Bcws' => 'double',
    'Baseline7Bcwp' => 'double',
    'Baseline8Start' => 'string',
    'Baseline8Finish' => 'string',
    'Baseline8Duration' => 'string',
    'Baseline8DurationString' => 'string',
    'Baseline8FixedCost' => 'double',
    'Baseline8DurationFormat' => 'TimeUnitType',
    'Baseline8EstimatedDuration' => 'boolean',
    'Baseline8Work' => 'string',
    'Baseline8WorkString' => 'string',
    'Baseline8Cost' => 'double',
    'Baseline8Bcws' => 'double',
    'Baseline8Bcwp' => 'double',
    'Baseline9Start' => 'string',
    'Baseline9Finish' => 'string',
    'Baseline9Duration' => 'string',
    'Baseline9DurationString' => 'string',
    'Baseline9FixedCost' => 'double',
    'Baseline9DurationFormat' => 'TimeUnitType',
    'Baseline9EstimatedDuration' => 'boolean',
    'Baseline9Work' => 'string',
    'Baseline9WorkString' => 'string',
    'Baseline9Cost' => 'double',
    'Baseline9Bcws' => 'double',
    'Baseline9Bcwp' => 'double',
    'Baseline10Start' => 'string',
    'Baseline10Finish' => 'string',
    'Baseline10Duration' => 'string',
    'Baseline10DurationString' => 'string',
    'Baseline10FixedCost' => 'double',
    'Baseline10DurationFormat' => 'TimeUnitType',
    'Baseline10EstimatedDuration' => 'boolean',
    'Baseline10Work' => 'string',
    'Baseline10WorkString' => 'string',
    'Baseline10Cost' => 'double',
    'Baseline10Bcws' => 'double',
    'Baseline10Bcwp' => 'double',
    'ExtendedAttributes' => 'ARRAY[ExtendedAttribute]',
    'OutlineCodes' => 'ARRAY[OutlineCode]'
};

my $attribute_map = {
    'Uid' => 'Uid',
    'Id' => 'Id',
    'Name' => 'Name',
    'Duration' => 'Duration',
    'DurationString' => 'DurationString',
    'Start' => 'Start',
    'Finish' => 'Finish',
    'PercentComplete' => 'PercentComplete',
    'PercentWorkComplete' => 'PercentWorkComplete',
    'IsActive' => 'IsActive',
    'ActualCost' => 'ActualCost',
    'ActualDuration' => 'ActualDuration',
    'ActualDurationString' => 'ActualDurationString',
    'ActualFinish' => 'ActualFinish',
    'ActualOvertimeCost' => 'ActualOvertimeCost',
    'ActualOvertimeWork' => 'ActualOvertimeWork',
    'ActualOvertimeWorkString' => 'ActualOvertimeWorkString',
    'ActualStart' => 'ActualStart',
    'BudgetWork' => 'BudgetWork',
    'BudgetWorkString' => 'BudgetWorkString',
    'BudgetCost' => 'BudgetCost',
    'ConstraintDate' => 'ConstraintDate',
    'ConstraintType' => 'ConstraintType',
    'Contact' => 'Contact',
    'Cost' => 'Cost',
    'CV' => 'CV',
    'Cv' => 'Cv',
    'Deadline' => 'Deadline',
    'DurationVariance' => 'DurationVariance',
    'DurationVarianceString' => 'DurationVarianceString',
    'EarlyFinish' => 'EarlyFinish',
    'EarlyStart' => 'EarlyStart',
    'IsEffortDriven' => 'IsEffortDriven',
    'IsExternalTask' => 'IsExternalTask',
    'FinishSlack' => 'FinishSlack',
    'FinishVariance' => 'FinishVariance',
    'FixedCost' => 'FixedCost',
    'FixedCostAccrual' => 'FixedCostAccrual',
    'FreeSlack' => 'FreeSlack',
    'Guid' => 'Guid',
    'GUID' => 'GUID',
    'HideBar' => 'HideBar',
    'IgnoreResourceCalendar' => 'IgnoreResourceCalendar',
    'LateFinish' => 'LateFinish',
    'LateStart' => 'LateStart',
    'LevelAssignments' => 'LevelAssignments',
    'IsLevelAssignments' => 'IsLevelAssignments',
    'LevelingCanSplit' => 'LevelingCanSplit',
    'CanLevelingSplit' => 'CanLevelingSplit',
    'LevelingDelay' => 'LevelingDelay',
    'IsMarked' => 'IsMarked',
    'IsMilestone' => 'IsMilestone',
    'IsCritical' => 'IsCritical',
    'IsSubproject' => 'IsSubproject',
    'IsSubprojectReadOnly' => 'IsSubprojectReadOnly',
    'SubprojectName' => 'SubprojectName',
    'IsSummary' => 'IsSummary',
    'SubtasksUids' => 'SubtasksUids',
    'OutlineLevel' => 'OutlineLevel',
    'IsOverallocated' => 'IsOverallocated',
    'IsOverAllocated' => 'IsOverAllocated',
    'IsEstimated' => 'IsEstimated',
    'OvertimeCost' => 'OvertimeCost',
    'OvertimeWork' => 'OvertimeWork',
    'OvertimeWorkString' => 'OvertimeWorkString',
    'PhysicalPercentComplete' => 'PhysicalPercentComplete',
    'PreleveledFinish' => 'PreleveledFinish',
    'PreLeveledFinish' => 'PreLeveledFinish',
    'PreleveledStart' => 'PreleveledStart',
    'PreLeveledStart' => 'PreLeveledStart',
    'IsRecurring' => 'IsRecurring',
    'RegularWork' => 'RegularWork',
    'RegularWorkString' => 'RegularWorkString',
    'RemainingCost' => 'RemainingCost',
    'RemainingDuration' => 'RemainingDuration',
    'RemainingDurationString' => 'RemainingDurationString',
    'RemainingOvertimeCost' => 'RemainingOvertimeCost',
    'RemainingOvertimeWork' => 'RemainingOvertimeWork',
    'RemainingOvertimeWorkString' => 'RemainingOvertimeWorkString',
    'RemainingWork' => 'RemainingWork',
    'RemainingWorkString' => 'RemainingWorkString',
    'Resume' => 'Resume',
    'IsRollup' => 'IsRollup',
    'StartSlack' => 'StartSlack',
    'StartVariance' => 'StartVariance',
    'CalendarUid' => 'CalendarUid',
    'IsManual' => 'IsManual',
    'TotalSlack' => 'TotalSlack',
    'Type' => 'Type',
    'Wbs' => 'Wbs',
    'Priority' => 'Priority',
    'Work' => 'Work',
    'WorkString' => 'WorkString',
    'WorkVariance' => 'WorkVariance',
    'NotesText' => 'NotesText',
    'ACWP' => 'ACWP',
    'Acwp' => 'Acwp',
    'BCWS' => 'BCWS',
    'Bcws' => 'Bcws',
    'BCWP' => 'BCWP',
    'Bcwp' => 'Bcwp',
    'LevelingDelayFormat' => 'LevelingDelayFormat',
    'Predecessors' => 'Predecessors',
    'Successors' => 'Successors',
    'BaselineStart' => 'BaselineStart',
    'BaselineFinish' => 'BaselineFinish',
    'BaselineDuration' => 'BaselineDuration',
    'BaselineDurationString' => 'BaselineDurationString',
    'BaselineFixedCost' => 'BaselineFixedCost',
    'BaselineDurationFormat' => 'BaselineDurationFormat',
    'BaselineEstimatedDuration' => 'BaselineEstimatedDuration',
    'BaselineWork' => 'BaselineWork',
    'BaselineWorkString' => 'BaselineWorkString',
    'BaselineCost' => 'BaselineCost',
    'BaselineBcws' => 'BaselineBcws',
    'BaselineBcwp' => 'BaselineBcwp',
    'Baseline1Start' => 'Baseline1Start',
    'Baseline1Finish' => 'Baseline1Finish',
    'Baseline1Duration' => 'Baseline1Duration',
    'Baseline1DurationString' => 'Baseline1DurationString',
    'Baseline1FixedCost' => 'Baseline1FixedCost',
    'Baseline1DurationFormat' => 'Baseline1DurationFormat',
    'Baseline1EstimatedDuration' => 'Baseline1EstimatedDuration',
    'Baseline1Work' => 'Baseline1Work',
    'Baseline1WorkString' => 'Baseline1WorkString',
    'Baseline1Cost' => 'Baseline1Cost',
    'Baseline1Bcws' => 'Baseline1Bcws',
    'Baseline1Bcwp' => 'Baseline1Bcwp',
    'Baseline2Start' => 'Baseline2Start',
    'Baseline2Finish' => 'Baseline2Finish',
    'Baseline2Duration' => 'Baseline2Duration',
    'Baseline2DurationString' => 'Baseline2DurationString',
    'Baseline2FixedCost' => 'Baseline2FixedCost',
    'Baseline2DurationFormat' => 'Baseline2DurationFormat',
    'Baseline2EstimatedDuration' => 'Baseline2EstimatedDuration',
    'Baseline2Work' => 'Baseline2Work',
    'Baseline2WorkString' => 'Baseline2WorkString',
    'Baseline2Cost' => 'Baseline2Cost',
    'Baseline2Bcws' => 'Baseline2Bcws',
    'Baseline2Bcwp' => 'Baseline2Bcwp',
    'Baseline3Start' => 'Baseline3Start',
    'Baseline3Finish' => 'Baseline3Finish',
    'Baseline3Duration' => 'Baseline3Duration',
    'Baseline3DurationString' => 'Baseline3DurationString',
    'Baseline3FixedCost' => 'Baseline3FixedCost',
    'Baseline3DurationFormat' => 'Baseline3DurationFormat',
    'Baseline3EstimatedDuration' => 'Baseline3EstimatedDuration',
    'Baseline3Work' => 'Baseline3Work',
    'Baseline3WorkString' => 'Baseline3WorkString',
    'Baseline3Cost' => 'Baseline3Cost',
    'Baseline3Bcws' => 'Baseline3Bcws',
    'Baseline3Bcwp' => 'Baseline3Bcwp',
    'Baseline4Start' => 'Baseline4Start',
    'Baseline4Finish' => 'Baseline4Finish',
    'Baseline4Duration' => 'Baseline4Duration',
    'Baseline4DurationString' => 'Baseline4DurationString',
    'Baseline4FixedCost' => 'Baseline4FixedCost',
    'Baseline4DurationFormat' => 'Baseline4DurationFormat',
    'Baseline4EstimatedDuration' => 'Baseline4EstimatedDuration',
    'Baseline4Work' => 'Baseline4Work',
    'Baseline4WorkString' => 'Baseline4WorkString',
    'Baseline4Cost' => 'Baseline4Cost',
    'Baseline4Bcws' => 'Baseline4Bcws',
    'Baseline4Bcwp' => 'Baseline4Bcwp',
    'Baseline5Start' => 'Baseline5Start',
    'Baseline5Finish' => 'Baseline5Finish',
    'Baseline5Duration' => 'Baseline5Duration',
    'Baseline5DurationString' => 'Baseline5DurationString',
    'Baseline5FixedCost' => 'Baseline5FixedCost',
    'Baseline5DurationFormat' => 'Baseline5DurationFormat',
    'Baseline5EstimatedDuration' => 'Baseline5EstimatedDuration',
    'Baseline5Work' => 'Baseline5Work',
    'Baseline5WorkString' => 'Baseline5WorkString',
    'Baseline5Cost' => 'Baseline5Cost',
    'Baseline5Bcws' => 'Baseline5Bcws',
    'Baseline5Bcwp' => 'Baseline5Bcwp',
    'Baseline6Start' => 'Baseline6Start',
    'Baseline6Finish' => 'Baseline6Finish',
    'Baseline6Duration' => 'Baseline6Duration',
    'Baseline6DurationString' => 'Baseline6DurationString',
    'Baseline6FixedCost' => 'Baseline6FixedCost',
    'Baseline6DurationFormat' => 'Baseline6DurationFormat',
    'Baseline6EstimatedDuration' => 'Baseline6EstimatedDuration',
    'Baseline6Work' => 'Baseline6Work',
    'Baseline6WorkString' => 'Baseline6WorkString',
    'Baseline6Cost' => 'Baseline6Cost',
    'Baseline6Bcws' => 'Baseline6Bcws',
    'Baseline6Bcwp' => 'Baseline6Bcwp',
    'Baseline7Start' => 'Baseline7Start',
    'Baseline7Finish' => 'Baseline7Finish',
    'Baseline7Duration' => 'Baseline7Duration',
    'Baseline7DurationString' => 'Baseline7DurationString',
    'Baseline7FixedCost' => 'Baseline7FixedCost',
    'Baseline7DurationFormat' => 'Baseline7DurationFormat',
    'Baseline7EstimatedDuration' => 'Baseline7EstimatedDuration',
    'Baseline7Work' => 'Baseline7Work',
    'Baseline7WorkString' => 'Baseline7WorkString',
    'Baseline7Cost' => 'Baseline7Cost',
    'Baseline7Bcws' => 'Baseline7Bcws',
    'Baseline7Bcwp' => 'Baseline7Bcwp',
    'Baseline8Start' => 'Baseline8Start',
    'Baseline8Finish' => 'Baseline8Finish',
    'Baseline8Duration' => 'Baseline8Duration',
    'Baseline8DurationString' => 'Baseline8DurationString',
    'Baseline8FixedCost' => 'Baseline8FixedCost',
    'Baseline8DurationFormat' => 'Baseline8DurationFormat',
    'Baseline8EstimatedDuration' => 'Baseline8EstimatedDuration',
    'Baseline8Work' => 'Baseline8Work',
    'Baseline8WorkString' => 'Baseline8WorkString',
    'Baseline8Cost' => 'Baseline8Cost',
    'Baseline8Bcws' => 'Baseline8Bcws',
    'Baseline8Bcwp' => 'Baseline8Bcwp',
    'Baseline9Start' => 'Baseline9Start',
    'Baseline9Finish' => 'Baseline9Finish',
    'Baseline9Duration' => 'Baseline9Duration',
    'Baseline9DurationString' => 'Baseline9DurationString',
    'Baseline9FixedCost' => 'Baseline9FixedCost',
    'Baseline9DurationFormat' => 'Baseline9DurationFormat',
    'Baseline9EstimatedDuration' => 'Baseline9EstimatedDuration',
    'Baseline9Work' => 'Baseline9Work',
    'Baseline9WorkString' => 'Baseline9WorkString',
    'Baseline9Cost' => 'Baseline9Cost',
    'Baseline9Bcws' => 'Baseline9Bcws',
    'Baseline9Bcwp' => 'Baseline9Bcwp',
    'Baseline10Start' => 'Baseline10Start',
    'Baseline10Finish' => 'Baseline10Finish',
    'Baseline10Duration' => 'Baseline10Duration',
    'Baseline10DurationString' => 'Baseline10DurationString',
    'Baseline10FixedCost' => 'Baseline10FixedCost',
    'Baseline10DurationFormat' => 'Baseline10DurationFormat',
    'Baseline10EstimatedDuration' => 'Baseline10EstimatedDuration',
    'Baseline10Work' => 'Baseline10Work',
    'Baseline10WorkString' => 'Baseline10WorkString',
    'Baseline10Cost' => 'Baseline10Cost',
    'Baseline10Bcws' => 'Baseline10Bcws',
    'Baseline10Bcwp' => 'Baseline10Bcwp',
    'ExtendedAttributes' => 'ExtendedAttributes',
    'OutlineCodes' => 'OutlineCodes'
};

# new object
sub new { 
    my ($class, %args) = @_; 
    my $self = { 
        #
        'Uid' => $args{'Uid'}, 
        #
        'Id' => $args{'Id'}, 
        #
        'Name' => $args{'Name'}, 
        #
        'Duration' => $args{'Duration'}, 
        #
        'DurationString' => $args{'DurationString'}, 
        #
        'Start' => $args{'Start'}, 
        #
        'Finish' => $args{'Finish'}, 
        #
        'PercentComplete' => $args{'PercentComplete'}, 
        #
        'PercentWorkComplete' => $args{'PercentWorkComplete'}, 
        #
        'IsActive' => $args{'IsActive'}, 
        #
        'ActualCost' => $args{'ActualCost'}, 
        #
        'ActualDuration' => $args{'ActualDuration'}, 
        #
        'ActualDurationString' => $args{'ActualDurationString'}, 
        #
        'ActualFinish' => $args{'ActualFinish'}, 
        #
        'ActualOvertimeCost' => $args{'ActualOvertimeCost'}, 
        #
        'ActualOvertimeWork' => $args{'ActualOvertimeWork'}, 
        #
        'ActualOvertimeWorkString' => $args{'ActualOvertimeWorkString'}, 
        #
        'ActualStart' => $args{'ActualStart'}, 
        #
        'BudgetWork' => $args{'BudgetWork'}, 
        #
        'BudgetWorkString' => $args{'BudgetWorkString'}, 
        #
        'BudgetCost' => $args{'BudgetCost'}, 
        #
        'ConstraintDate' => $args{'ConstraintDate'}, 
        #
        'ConstraintType' => $args{'ConstraintType'}, 
        #
        'Contact' => $args{'Contact'}, 
        #
        'Cost' => $args{'Cost'}, 
        #
        'CV' => $args{'CV'}, 
        #
        'Cv' => $args{'Cv'}, 
        #
        'Deadline' => $args{'Deadline'}, 
        #
        'DurationVariance' => $args{'DurationVariance'}, 
        #
        'DurationVarianceString' => $args{'DurationVarianceString'}, 
        #
        'EarlyFinish' => $args{'EarlyFinish'}, 
        #
        'EarlyStart' => $args{'EarlyStart'}, 
        #
        'IsEffortDriven' => $args{'IsEffortDriven'}, 
        #
        'IsExternalTask' => $args{'IsExternalTask'}, 
        #
        'FinishSlack' => $args{'FinishSlack'}, 
        #
        'FinishVariance' => $args{'FinishVariance'}, 
        #
        'FixedCost' => $args{'FixedCost'}, 
        #
        'FixedCostAccrual' => $args{'FixedCostAccrual'}, 
        #
        'FreeSlack' => $args{'FreeSlack'}, 
        #
        'Guid' => $args{'Guid'}, 
        #
        'GUID' => $args{'GUID'}, 
        #
        'HideBar' => $args{'HideBar'}, 
        #
        'IgnoreResourceCalendar' => $args{'IgnoreResourceCalendar'}, 
        #
        'LateFinish' => $args{'LateFinish'}, 
        #
        'LateStart' => $args{'LateStart'}, 
        #
        'LevelAssignments' => $args{'LevelAssignments'}, 
        #
        'IsLevelAssignments' => $args{'IsLevelAssignments'}, 
        #
        'LevelingCanSplit' => $args{'LevelingCanSplit'}, 
        #
        'CanLevelingSplit' => $args{'CanLevelingSplit'}, 
        #
        'LevelingDelay' => $args{'LevelingDelay'}, 
        #
        'IsMarked' => $args{'IsMarked'}, 
        #
        'IsMilestone' => $args{'IsMilestone'}, 
        #
        'IsCritical' => $args{'IsCritical'}, 
        #
        'IsSubproject' => $args{'IsSubproject'}, 
        #
        'IsSubprojectReadOnly' => $args{'IsSubprojectReadOnly'}, 
        #
        'SubprojectName' => $args{'SubprojectName'}, 
        #
        'IsSummary' => $args{'IsSummary'}, 
        #
        'SubtasksUids' => $args{'SubtasksUids'}, 
        #
        'OutlineLevel' => $args{'OutlineLevel'}, 
        #
        'IsOverallocated' => $args{'IsOverallocated'}, 
        #
        'IsOverAllocated' => $args{'IsOverAllocated'}, 
        #
        'IsEstimated' => $args{'IsEstimated'}, 
        #
        'OvertimeCost' => $args{'OvertimeCost'}, 
        #
        'OvertimeWork' => $args{'OvertimeWork'}, 
        #
        'OvertimeWorkString' => $args{'OvertimeWorkString'}, 
        #
        'PhysicalPercentComplete' => $args{'PhysicalPercentComplete'}, 
        #
        'PreleveledFinish' => $args{'PreleveledFinish'}, 
        #
        'PreLeveledFinish' => $args{'PreLeveledFinish'}, 
        #
        'PreleveledStart' => $args{'PreleveledStart'}, 
        #
        'PreLeveledStart' => $args{'PreLeveledStart'}, 
        #
        'IsRecurring' => $args{'IsRecurring'}, 
        #
        'RegularWork' => $args{'RegularWork'}, 
        #
        'RegularWorkString' => $args{'RegularWorkString'}, 
        #
        'RemainingCost' => $args{'RemainingCost'}, 
        #
        'RemainingDuration' => $args{'RemainingDuration'}, 
        #
        'RemainingDurationString' => $args{'RemainingDurationString'}, 
        #
        'RemainingOvertimeCost' => $args{'RemainingOvertimeCost'}, 
        #
        'RemainingOvertimeWork' => $args{'RemainingOvertimeWork'}, 
        #
        'RemainingOvertimeWorkString' => $args{'RemainingOvertimeWorkString'}, 
        #
        'RemainingWork' => $args{'RemainingWork'}, 
        #
        'RemainingWorkString' => $args{'RemainingWorkString'}, 
        #
        'Resume' => $args{'Resume'}, 
        #
        'IsRollup' => $args{'IsRollup'}, 
        #
        'StartSlack' => $args{'StartSlack'}, 
        #
        'StartVariance' => $args{'StartVariance'}, 
        #
        'CalendarUid' => $args{'CalendarUid'}, 
        #
        'IsManual' => $args{'IsManual'}, 
        #
        'TotalSlack' => $args{'TotalSlack'}, 
        #
        'Type' => $args{'Type'}, 
        #
        'Wbs' => $args{'Wbs'}, 
        #
        'Priority' => $args{'Priority'}, 
        #
        'Work' => $args{'Work'}, 
        #
        'WorkString' => $args{'WorkString'}, 
        #
        'WorkVariance' => $args{'WorkVariance'}, 
        #
        'NotesText' => $args{'NotesText'}, 
        #
        'ACWP' => $args{'ACWP'}, 
        #
        'Acwp' => $args{'Acwp'}, 
        #
        'BCWS' => $args{'BCWS'}, 
        #
        'Bcws' => $args{'Bcws'}, 
        #
        'BCWP' => $args{'BCWP'}, 
        #
        'Bcwp' => $args{'Bcwp'}, 
        #
        'LevelingDelayFormat' => $args{'LevelingDelayFormat'}, 
        #
        'Predecessors' => $args{'Predecessors'}, 
        #
        'Successors' => $args{'Successors'}, 
        #
        'BaselineStart' => $args{'BaselineStart'}, 
        #
        'BaselineFinish' => $args{'BaselineFinish'}, 
        #
        'BaselineDuration' => $args{'BaselineDuration'}, 
        #
        'BaselineDurationString' => $args{'BaselineDurationString'}, 
        #
        'BaselineFixedCost' => $args{'BaselineFixedCost'}, 
        #
        'BaselineDurationFormat' => $args{'BaselineDurationFormat'}, 
        #
        'BaselineEstimatedDuration' => $args{'BaselineEstimatedDuration'}, 
        #
        'BaselineWork' => $args{'BaselineWork'}, 
        #
        'BaselineWorkString' => $args{'BaselineWorkString'}, 
        #
        'BaselineCost' => $args{'BaselineCost'}, 
        #
        'BaselineBcws' => $args{'BaselineBcws'}, 
        #
        'BaselineBcwp' => $args{'BaselineBcwp'}, 
        #
        'Baseline1Start' => $args{'Baseline1Start'}, 
        #
        'Baseline1Finish' => $args{'Baseline1Finish'}, 
        #
        'Baseline1Duration' => $args{'Baseline1Duration'}, 
        #
        'Baseline1DurationString' => $args{'Baseline1DurationString'}, 
        #
        'Baseline1FixedCost' => $args{'Baseline1FixedCost'}, 
        #
        'Baseline1DurationFormat' => $args{'Baseline1DurationFormat'}, 
        #
        'Baseline1EstimatedDuration' => $args{'Baseline1EstimatedDuration'}, 
        #
        'Baseline1Work' => $args{'Baseline1Work'}, 
        #
        'Baseline1WorkString' => $args{'Baseline1WorkString'}, 
        #
        'Baseline1Cost' => $args{'Baseline1Cost'}, 
        #
        'Baseline1Bcws' => $args{'Baseline1Bcws'}, 
        #
        'Baseline1Bcwp' => $args{'Baseline1Bcwp'}, 
        #
        'Baseline2Start' => $args{'Baseline2Start'}, 
        #
        'Baseline2Finish' => $args{'Baseline2Finish'}, 
        #
        'Baseline2Duration' => $args{'Baseline2Duration'}, 
        #
        'Baseline2DurationString' => $args{'Baseline2DurationString'}, 
        #
        'Baseline2FixedCost' => $args{'Baseline2FixedCost'}, 
        #
        'Baseline2DurationFormat' => $args{'Baseline2DurationFormat'}, 
        #
        'Baseline2EstimatedDuration' => $args{'Baseline2EstimatedDuration'}, 
        #
        'Baseline2Work' => $args{'Baseline2Work'}, 
        #
        'Baseline2WorkString' => $args{'Baseline2WorkString'}, 
        #
        'Baseline2Cost' => $args{'Baseline2Cost'}, 
        #
        'Baseline2Bcws' => $args{'Baseline2Bcws'}, 
        #
        'Baseline2Bcwp' => $args{'Baseline2Bcwp'}, 
        #
        'Baseline3Start' => $args{'Baseline3Start'}, 
        #
        'Baseline3Finish' => $args{'Baseline3Finish'}, 
        #
        'Baseline3Duration' => $args{'Baseline3Duration'}, 
        #
        'Baseline3DurationString' => $args{'Baseline3DurationString'}, 
        #
        'Baseline3FixedCost' => $args{'Baseline3FixedCost'}, 
        #
        'Baseline3DurationFormat' => $args{'Baseline3DurationFormat'}, 
        #
        'Baseline3EstimatedDuration' => $args{'Baseline3EstimatedDuration'}, 
        #
        'Baseline3Work' => $args{'Baseline3Work'}, 
        #
        'Baseline3WorkString' => $args{'Baseline3WorkString'}, 
        #
        'Baseline3Cost' => $args{'Baseline3Cost'}, 
        #
        'Baseline3Bcws' => $args{'Baseline3Bcws'}, 
        #
        'Baseline3Bcwp' => $args{'Baseline3Bcwp'}, 
        #
        'Baseline4Start' => $args{'Baseline4Start'}, 
        #
        'Baseline4Finish' => $args{'Baseline4Finish'}, 
        #
        'Baseline4Duration' => $args{'Baseline4Duration'}, 
        #
        'Baseline4DurationString' => $args{'Baseline4DurationString'}, 
        #
        'Baseline4FixedCost' => $args{'Baseline4FixedCost'}, 
        #
        'Baseline4DurationFormat' => $args{'Baseline4DurationFormat'}, 
        #
        'Baseline4EstimatedDuration' => $args{'Baseline4EstimatedDuration'}, 
        #
        'Baseline4Work' => $args{'Baseline4Work'}, 
        #
        'Baseline4WorkString' => $args{'Baseline4WorkString'}, 
        #
        'Baseline4Cost' => $args{'Baseline4Cost'}, 
        #
        'Baseline4Bcws' => $args{'Baseline4Bcws'}, 
        #
        'Baseline4Bcwp' => $args{'Baseline4Bcwp'}, 
        #
        'Baseline5Start' => $args{'Baseline5Start'}, 
        #
        'Baseline5Finish' => $args{'Baseline5Finish'}, 
        #
        'Baseline5Duration' => $args{'Baseline5Duration'}, 
        #
        'Baseline5DurationString' => $args{'Baseline5DurationString'}, 
        #
        'Baseline5FixedCost' => $args{'Baseline5FixedCost'}, 
        #
        'Baseline5DurationFormat' => $args{'Baseline5DurationFormat'}, 
        #
        'Baseline5EstimatedDuration' => $args{'Baseline5EstimatedDuration'}, 
        #
        'Baseline5Work' => $args{'Baseline5Work'}, 
        #
        'Baseline5WorkString' => $args{'Baseline5WorkString'}, 
        #
        'Baseline5Cost' => $args{'Baseline5Cost'}, 
        #
        'Baseline5Bcws' => $args{'Baseline5Bcws'}, 
        #
        'Baseline5Bcwp' => $args{'Baseline5Bcwp'}, 
        #
        'Baseline6Start' => $args{'Baseline6Start'}, 
        #
        'Baseline6Finish' => $args{'Baseline6Finish'}, 
        #
        'Baseline6Duration' => $args{'Baseline6Duration'}, 
        #
        'Baseline6DurationString' => $args{'Baseline6DurationString'}, 
        #
        'Baseline6FixedCost' => $args{'Baseline6FixedCost'}, 
        #
        'Baseline6DurationFormat' => $args{'Baseline6DurationFormat'}, 
        #
        'Baseline6EstimatedDuration' => $args{'Baseline6EstimatedDuration'}, 
        #
        'Baseline6Work' => $args{'Baseline6Work'}, 
        #
        'Baseline6WorkString' => $args{'Baseline6WorkString'}, 
        #
        'Baseline6Cost' => $args{'Baseline6Cost'}, 
        #
        'Baseline6Bcws' => $args{'Baseline6Bcws'}, 
        #
        'Baseline6Bcwp' => $args{'Baseline6Bcwp'}, 
        #
        'Baseline7Start' => $args{'Baseline7Start'}, 
        #
        'Baseline7Finish' => $args{'Baseline7Finish'}, 
        #
        'Baseline7Duration' => $args{'Baseline7Duration'}, 
        #
        'Baseline7DurationString' => $args{'Baseline7DurationString'}, 
        #
        'Baseline7FixedCost' => $args{'Baseline7FixedCost'}, 
        #
        'Baseline7DurationFormat' => $args{'Baseline7DurationFormat'}, 
        #
        'Baseline7EstimatedDuration' => $args{'Baseline7EstimatedDuration'}, 
        #
        'Baseline7Work' => $args{'Baseline7Work'}, 
        #
        'Baseline7WorkString' => $args{'Baseline7WorkString'}, 
        #
        'Baseline7Cost' => $args{'Baseline7Cost'}, 
        #
        'Baseline7Bcws' => $args{'Baseline7Bcws'}, 
        #
        'Baseline7Bcwp' => $args{'Baseline7Bcwp'}, 
        #
        'Baseline8Start' => $args{'Baseline8Start'}, 
        #
        'Baseline8Finish' => $args{'Baseline8Finish'}, 
        #
        'Baseline8Duration' => $args{'Baseline8Duration'}, 
        #
        'Baseline8DurationString' => $args{'Baseline8DurationString'}, 
        #
        'Baseline8FixedCost' => $args{'Baseline8FixedCost'}, 
        #
        'Baseline8DurationFormat' => $args{'Baseline8DurationFormat'}, 
        #
        'Baseline8EstimatedDuration' => $args{'Baseline8EstimatedDuration'}, 
        #
        'Baseline8Work' => $args{'Baseline8Work'}, 
        #
        'Baseline8WorkString' => $args{'Baseline8WorkString'}, 
        #
        'Baseline8Cost' => $args{'Baseline8Cost'}, 
        #
        'Baseline8Bcws' => $args{'Baseline8Bcws'}, 
        #
        'Baseline8Bcwp' => $args{'Baseline8Bcwp'}, 
        #
        'Baseline9Start' => $args{'Baseline9Start'}, 
        #
        'Baseline9Finish' => $args{'Baseline9Finish'}, 
        #
        'Baseline9Duration' => $args{'Baseline9Duration'}, 
        #
        'Baseline9DurationString' => $args{'Baseline9DurationString'}, 
        #
        'Baseline9FixedCost' => $args{'Baseline9FixedCost'}, 
        #
        'Baseline9DurationFormat' => $args{'Baseline9DurationFormat'}, 
        #
        'Baseline9EstimatedDuration' => $args{'Baseline9EstimatedDuration'}, 
        #
        'Baseline9Work' => $args{'Baseline9Work'}, 
        #
        'Baseline9WorkString' => $args{'Baseline9WorkString'}, 
        #
        'Baseline9Cost' => $args{'Baseline9Cost'}, 
        #
        'Baseline9Bcws' => $args{'Baseline9Bcws'}, 
        #
        'Baseline9Bcwp' => $args{'Baseline9Bcwp'}, 
        #
        'Baseline10Start' => $args{'Baseline10Start'}, 
        #
        'Baseline10Finish' => $args{'Baseline10Finish'}, 
        #
        'Baseline10Duration' => $args{'Baseline10Duration'}, 
        #
        'Baseline10DurationString' => $args{'Baseline10DurationString'}, 
        #
        'Baseline10FixedCost' => $args{'Baseline10FixedCost'}, 
        #
        'Baseline10DurationFormat' => $args{'Baseline10DurationFormat'}, 
        #
        'Baseline10EstimatedDuration' => $args{'Baseline10EstimatedDuration'}, 
        #
        'Baseline10Work' => $args{'Baseline10Work'}, 
        #
        'Baseline10WorkString' => $args{'Baseline10WorkString'}, 
        #
        'Baseline10Cost' => $args{'Baseline10Cost'}, 
        #
        'Baseline10Bcws' => $args{'Baseline10Bcws'}, 
        #
        'Baseline10Bcwp' => $args{'Baseline10Bcwp'}, 
        #
        'ExtendedAttributes' => $args{'ExtendedAttributes'}, 
        #
        'OutlineCodes' => $args{'OutlineCodes'}
    }; 

    return bless $self, $class; 
}  

# get swagger type of the attribute
sub get_swagger_types {
    return $swagger_types;
}

# get attribute mappping
sub get_attribute_map {
    return $attribute_map;
}

1;