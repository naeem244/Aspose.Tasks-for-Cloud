module AsposeTasksCloud
  # 
  class ResourceAssignment < BaseObject
    attr_accessor :task_uid, :resource_uid, :uid, :percent_work_complete, :actual_cost, :actual_finish, :actual_overtime_cost, :actual_overtime_work, :actual_start, :actual_work, :acwp, :confirmed, :cost, :cost_rate_table_type, :cost_variance, :cv, :delay, :finish, :finish_variance, :hyperlink, :hyperlink_address, :hyperlink_sub_address, :work_variance, :has_fixed_rate_units, :fixed_material, :leveling_delay, :leveling_delay_format, :linked_fields, :milestone, :notes, :overallocated, :overtime_cost, :overtime_work, :peak_units, :regular_work, :remaining_cost, :remaining_overtime_cost, :remaining_overtime_work, :remaining_work, :response_pending, :start, :stop, :resume, :start_variance, :summary, :sv, :units, :update_needed, :vac, :work, :work_contour, :bcws, :bcwp, :booking_type, :actual_work_protected, :actual_overtime_work_protected, :creation_date, :assn_owner, :assn_owner_guid, :budget_cost, :budget_work, :rate_scale, :baseline_start, :baseline_finish, :baseline_work, :baseline_cost, :baseline_bcws, :baseline_bcwp, :baseline1_start, :baseline1_finish, :baseline1_work, :baseline1_cost, :baseline1_bcws, :baseline1_bcwp, :baseline2_start, :baseline2_finish, :baseline2_work, :baseline2_cost, :baseline2_bcws, :baseline2_bcwp, :baseline3_start, :baseline3_finish, :baseline3_work, :baseline3_cost, :baseline3_bcws, :baseline3_bcwp, :baseline4_start, :baseline4_finish, :baseline4_work, :baseline4_cost, :baseline4_bcws, :baseline4_bcwp, :baseline5_start, :baseline5_finish, :baseline5_work, :baseline5_cost, :baseline5_bcws, :baseline5_bcwp, :baseline6_start, :baseline6_finish, :baseline6_work, :baseline6_cost, :baseline6_bcws, :baseline6_bcwp, :baseline7_start, :baseline7_finish, :baseline7_work, :baseline7_cost, :baseline7_bcws, :baseline7_bcwp, :baseline8_start, :baseline8_finish, :baseline8_work, :baseline8_cost, :baseline8_bcws, :baseline8_bcwp, :baseline9_start, :baseline9_finish, :baseline9_work, :baseline9_cost, :baseline9_bcws, :baseline9_bcwp, :baseline10_start, :baseline10_finish, :baseline10_work, :baseline10_cost, :baseline10_bcws, :baseline10_bcwp, :extended_attributes
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'task_uid' => :'TaskUid',
        
        # 
        :'resource_uid' => :'ResourceUid',
        
        # 
        :'uid' => :'Uid',
        
        # 
        :'percent_work_complete' => :'PercentWorkComplete',
        
        # 
        :'actual_cost' => :'ActualCost',
        
        # 
        :'actual_finish' => :'ActualFinish',
        
        # 
        :'actual_overtime_cost' => :'ActualOvertimeCost',
        
        # 
        :'actual_overtime_work' => :'ActualOvertimeWork',
        
        # 
        :'actual_start' => :'ActualStart',
        
        # 
        :'actual_work' => :'ActualWork',
        
        # 
        :'acwp' => :'Acwp',
        
        # 
        :'confirmed' => :'Confirmed',
        
        # 
        :'cost' => :'Cost',
        
        # 
        :'cost_rate_table_type' => :'CostRateTableType',
        
        # 
        :'cost_variance' => :'CostVariance',
        
        # 
        :'cv' => :'Cv',
        
        # 
        :'delay' => :'Delay',
        
        # 
        :'finish' => :'Finish',
        
        # 
        :'finish_variance' => :'FinishVariance',
        
        # 
        :'hyperlink' => :'Hyperlink',
        
        # 
        :'hyperlink_address' => :'HyperlinkAddress',
        
        # 
        :'hyperlink_sub_address' => :'HyperlinkSubAddress',
        
        # 
        :'work_variance' => :'WorkVariance',
        
        # 
        :'has_fixed_rate_units' => :'HasFixedRateUnits',
        
        # 
        :'fixed_material' => :'FixedMaterial',
        
        # 
        :'leveling_delay' => :'LevelingDelay',
        
        # 
        :'leveling_delay_format' => :'LevelingDelayFormat',
        
        # 
        :'linked_fields' => :'LinkedFields',
        
        # 
        :'milestone' => :'Milestone',
        
        # 
        :'notes' => :'Notes',
        
        # 
        :'overallocated' => :'Overallocated',
        
        # 
        :'overtime_cost' => :'OvertimeCost',
        
        # 
        :'overtime_work' => :'OvertimeWork',
        
        # 
        :'peak_units' => :'PeakUnits',
        
        # 
        :'regular_work' => :'RegularWork',
        
        # 
        :'remaining_cost' => :'RemainingCost',
        
        # 
        :'remaining_overtime_cost' => :'RemainingOvertimeCost',
        
        # 
        :'remaining_overtime_work' => :'RemainingOvertimeWork',
        
        # 
        :'remaining_work' => :'RemainingWork',
        
        # 
        :'response_pending' => :'ResponsePending',
        
        # 
        :'start' => :'Start',
        
        # 
        :'stop' => :'Stop',
        
        # 
        :'resume' => :'Resume',
        
        # 
        :'start_variance' => :'StartVariance',
        
        # 
        :'summary' => :'Summary',
        
        # 
        :'sv' => :'Sv',
        
        # 
        :'units' => :'Units',
        
        # 
        :'update_needed' => :'UpdateNeeded',
        
        # 
        :'vac' => :'Vac',
        
        # 
        :'work' => :'Work',
        
        # 
        :'work_contour' => :'WorkContour',
        
        # 
        :'bcws' => :'Bcws',
        
        # 
        :'bcwp' => :'Bcwp',
        
        # 
        :'booking_type' => :'BookingType',
        
        # 
        :'actual_work_protected' => :'ActualWorkProtected',
        
        # 
        :'actual_overtime_work_protected' => :'ActualOvertimeWorkProtected',
        
        # 
        :'creation_date' => :'CreationDate',
        
        # 
        :'assn_owner' => :'AssnOwner',
        
        # 
        :'assn_owner_guid' => :'AssnOwnerGuid',
        
        # 
        :'budget_cost' => :'BudgetCost',
        
        # 
        :'budget_work' => :'BudgetWork',
        
        # 
        :'rate_scale' => :'RateScale',
        
        # 
        :'baseline_start' => :'BaselineStart',
        
        # 
        :'baseline_finish' => :'BaselineFinish',
        
        # 
        :'baseline_work' => :'BaselineWork',
        
        # 
        :'baseline_cost' => :'BaselineCost',
        
        # 
        :'baseline_bcws' => :'BaselineBcws',
        
        # 
        :'baseline_bcwp' => :'BaselineBcwp',
        
        # 
        :'baseline1_start' => :'Baseline1Start',
        
        # 
        :'baseline1_finish' => :'Baseline1Finish',
        
        # 
        :'baseline1_work' => :'Baseline1Work',
        
        # 
        :'baseline1_cost' => :'Baseline1Cost',
        
        # 
        :'baseline1_bcws' => :'Baseline1Bcws',
        
        # 
        :'baseline1_bcwp' => :'Baseline1Bcwp',
        
        # 
        :'baseline2_start' => :'Baseline2Start',
        
        # 
        :'baseline2_finish' => :'Baseline2Finish',
        
        # 
        :'baseline2_work' => :'Baseline2Work',
        
        # 
        :'baseline2_cost' => :'Baseline2Cost',
        
        # 
        :'baseline2_bcws' => :'Baseline2Bcws',
        
        # 
        :'baseline2_bcwp' => :'Baseline2Bcwp',
        
        # 
        :'baseline3_start' => :'Baseline3Start',
        
        # 
        :'baseline3_finish' => :'Baseline3Finish',
        
        # 
        :'baseline3_work' => :'Baseline3Work',
        
        # 
        :'baseline3_cost' => :'Baseline3Cost',
        
        # 
        :'baseline3_bcws' => :'Baseline3Bcws',
        
        # 
        :'baseline3_bcwp' => :'Baseline3Bcwp',
        
        # 
        :'baseline4_start' => :'Baseline4Start',
        
        # 
        :'baseline4_finish' => :'Baseline4Finish',
        
        # 
        :'baseline4_work' => :'Baseline4Work',
        
        # 
        :'baseline4_cost' => :'Baseline4Cost',
        
        # 
        :'baseline4_bcws' => :'Baseline4Bcws',
        
        # 
        :'baseline4_bcwp' => :'Baseline4Bcwp',
        
        # 
        :'baseline5_start' => :'Baseline5Start',
        
        # 
        :'baseline5_finish' => :'Baseline5Finish',
        
        # 
        :'baseline5_work' => :'Baseline5Work',
        
        # 
        :'baseline5_cost' => :'Baseline5Cost',
        
        # 
        :'baseline5_bcws' => :'Baseline5Bcws',
        
        # 
        :'baseline5_bcwp' => :'Baseline5Bcwp',
        
        # 
        :'baseline6_start' => :'Baseline6Start',
        
        # 
        :'baseline6_finish' => :'Baseline6Finish',
        
        # 
        :'baseline6_work' => :'Baseline6Work',
        
        # 
        :'baseline6_cost' => :'Baseline6Cost',
        
        # 
        :'baseline6_bcws' => :'Baseline6Bcws',
        
        # 
        :'baseline6_bcwp' => :'Baseline6Bcwp',
        
        # 
        :'baseline7_start' => :'Baseline7Start',
        
        # 
        :'baseline7_finish' => :'Baseline7Finish',
        
        # 
        :'baseline7_work' => :'Baseline7Work',
        
        # 
        :'baseline7_cost' => :'Baseline7Cost',
        
        # 
        :'baseline7_bcws' => :'Baseline7Bcws',
        
        # 
        :'baseline7_bcwp' => :'Baseline7Bcwp',
        
        # 
        :'baseline8_start' => :'Baseline8Start',
        
        # 
        :'baseline8_finish' => :'Baseline8Finish',
        
        # 
        :'baseline8_work' => :'Baseline8Work',
        
        # 
        :'baseline8_cost' => :'Baseline8Cost',
        
        # 
        :'baseline8_bcws' => :'Baseline8Bcws',
        
        # 
        :'baseline8_bcwp' => :'Baseline8Bcwp',
        
        # 
        :'baseline9_start' => :'Baseline9Start',
        
        # 
        :'baseline9_finish' => :'Baseline9Finish',
        
        # 
        :'baseline9_work' => :'Baseline9Work',
        
        # 
        :'baseline9_cost' => :'Baseline9Cost',
        
        # 
        :'baseline9_bcws' => :'Baseline9Bcws',
        
        # 
        :'baseline9_bcwp' => :'Baseline9Bcwp',
        
        # 
        :'baseline10_start' => :'Baseline10Start',
        
        # 
        :'baseline10_finish' => :'Baseline10Finish',
        
        # 
        :'baseline10_work' => :'Baseline10Work',
        
        # 
        :'baseline10_cost' => :'Baseline10Cost',
        
        # 
        :'baseline10_bcws' => :'Baseline10Bcws',
        
        # 
        :'baseline10_bcwp' => :'Baseline10Bcwp',
        
        # 
        :'extended_attributes' => :'ExtendedAttributes'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'task_uid' => :'Integer',
        :'resource_uid' => :'Integer',
        :'uid' => :'Integer',
        :'percent_work_complete' => :'Integer',
        :'actual_cost' => :'Float',
        :'actual_finish' => :'String',
        :'actual_overtime_cost' => :'Float',
        :'actual_overtime_work' => :'String',
        :'actual_start' => :'String',
        :'actual_work' => :'String',
        :'acwp' => :'Float',
        :'confirmed' => :'BOOLEAN',
        :'cost' => :'Float',
        :'cost_rate_table_type' => :'String',
        :'cost_variance' => :'Float',
        :'cv' => :'Float',
        :'delay' => :'Integer',
        :'finish' => :'String',
        :'finish_variance' => :'Integer',
        :'hyperlink' => :'String',
        :'hyperlink_address' => :'String',
        :'hyperlink_sub_address' => :'String',
        :'work_variance' => :'Float',
        :'has_fixed_rate_units' => :'BOOLEAN',
        :'fixed_material' => :'BOOLEAN',
        :'leveling_delay' => :'Integer',
        :'leveling_delay_format' => :'String',
        :'linked_fields' => :'BOOLEAN',
        :'milestone' => :'BOOLEAN',
        :'notes' => :'String',
        :'overallocated' => :'BOOLEAN',
        :'overtime_cost' => :'Float',
        :'overtime_work' => :'String',
        :'peak_units' => :'Float',
        :'regular_work' => :'String',
        :'remaining_cost' => :'Float',
        :'remaining_overtime_cost' => :'Float',
        :'remaining_overtime_work' => :'String',
        :'remaining_work' => :'String',
        :'response_pending' => :'BOOLEAN',
        :'start' => :'String',
        :'stop' => :'String',
        :'resume' => :'String',
        :'start_variance' => :'Integer',
        :'summary' => :'BOOLEAN',
        :'sv' => :'Float',
        :'units' => :'Float',
        :'update_needed' => :'BOOLEAN',
        :'vac' => :'Float',
        :'work' => :'String',
        :'work_contour' => :'String',
        :'bcws' => :'Float',
        :'bcwp' => :'Float',
        :'booking_type' => :'String',
        :'actual_work_protected' => :'String',
        :'actual_overtime_work_protected' => :'String',
        :'creation_date' => :'String',
        :'assn_owner' => :'String',
        :'assn_owner_guid' => :'String',
        :'budget_cost' => :'Float',
        :'budget_work' => :'String',
        :'rate_scale' => :'Integer',
        :'baseline_start' => :'String',
        :'baseline_finish' => :'String',
        :'baseline_work' => :'String',
        :'baseline_cost' => :'Float',
        :'baseline_bcws' => :'Float',
        :'baseline_bcwp' => :'Float',
        :'baseline1_start' => :'String',
        :'baseline1_finish' => :'String',
        :'baseline1_work' => :'String',
        :'baseline1_cost' => :'Float',
        :'baseline1_bcws' => :'Float',
        :'baseline1_bcwp' => :'Float',
        :'baseline2_start' => :'String',
        :'baseline2_finish' => :'String',
        :'baseline2_work' => :'String',
        :'baseline2_cost' => :'Float',
        :'baseline2_bcws' => :'Float',
        :'baseline2_bcwp' => :'Float',
        :'baseline3_start' => :'String',
        :'baseline3_finish' => :'String',
        :'baseline3_work' => :'String',
        :'baseline3_cost' => :'Float',
        :'baseline3_bcws' => :'Float',
        :'baseline3_bcwp' => :'Float',
        :'baseline4_start' => :'String',
        :'baseline4_finish' => :'String',
        :'baseline4_work' => :'String',
        :'baseline4_cost' => :'Float',
        :'baseline4_bcws' => :'Float',
        :'baseline4_bcwp' => :'Float',
        :'baseline5_start' => :'String',
        :'baseline5_finish' => :'String',
        :'baseline5_work' => :'String',
        :'baseline5_cost' => :'Float',
        :'baseline5_bcws' => :'Float',
        :'baseline5_bcwp' => :'Float',
        :'baseline6_start' => :'String',
        :'baseline6_finish' => :'String',
        :'baseline6_work' => :'String',
        :'baseline6_cost' => :'Float',
        :'baseline6_bcws' => :'Float',
        :'baseline6_bcwp' => :'Float',
        :'baseline7_start' => :'String',
        :'baseline7_finish' => :'String',
        :'baseline7_work' => :'String',
        :'baseline7_cost' => :'Float',
        :'baseline7_bcws' => :'Float',
        :'baseline7_bcwp' => :'Float',
        :'baseline8_start' => :'String',
        :'baseline8_finish' => :'String',
        :'baseline8_work' => :'String',
        :'baseline8_cost' => :'Float',
        :'baseline8_bcws' => :'Float',
        :'baseline8_bcwp' => :'Float',
        :'baseline9_start' => :'String',
        :'baseline9_finish' => :'String',
        :'baseline9_work' => :'String',
        :'baseline9_cost' => :'Float',
        :'baseline9_bcws' => :'Float',
        :'baseline9_bcwp' => :'Float',
        :'baseline10_start' => :'String',
        :'baseline10_finish' => :'String',
        :'baseline10_work' => :'String',
        :'baseline10_cost' => :'Float',
        :'baseline10_bcws' => :'Float',
        :'baseline10_bcwp' => :'Float',
        :'extended_attributes' => :'Array<ExtendedAttribute>'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'TaskUid']
        self.task_uid = attributes[:'TaskUid']
      end
      
      if attributes[:'ResourceUid']
        self.resource_uid = attributes[:'ResourceUid']
      end
      
      if attributes[:'Uid']
        self.uid = attributes[:'Uid']
      end
      
      if attributes[:'PercentWorkComplete']
        self.percent_work_complete = attributes[:'PercentWorkComplete']
      end
      
      if attributes[:'ActualCost']
        self.actual_cost = attributes[:'ActualCost']
      end
      
      if attributes[:'ActualFinish']
        self.actual_finish = attributes[:'ActualFinish']
      end
      
      if attributes[:'ActualOvertimeCost']
        self.actual_overtime_cost = attributes[:'ActualOvertimeCost']
      end
      
      if attributes[:'ActualOvertimeWork']
        self.actual_overtime_work = attributes[:'ActualOvertimeWork']
      end
      
      if attributes[:'ActualStart']
        self.actual_start = attributes[:'ActualStart']
      end
      
      if attributes[:'ActualWork']
        self.actual_work = attributes[:'ActualWork']
      end
      
      if attributes[:'Acwp']
        self.acwp = attributes[:'Acwp']
      end
      
      if attributes[:'Confirmed']
        self.confirmed = attributes[:'Confirmed']
      end
      
      if attributes[:'Cost']
        self.cost = attributes[:'Cost']
      end
      
      if attributes[:'CostRateTableType']
        self.cost_rate_table_type = attributes[:'CostRateTableType']
      end
      
      if attributes[:'CostVariance']
        self.cost_variance = attributes[:'CostVariance']
      end
      
      if attributes[:'Cv']
        self.cv = attributes[:'Cv']
      end
      
      if attributes[:'Delay']
        self.delay = attributes[:'Delay']
      end
      
      if attributes[:'Finish']
        self.finish = attributes[:'Finish']
      end
      
      if attributes[:'FinishVariance']
        self.finish_variance = attributes[:'FinishVariance']
      end
      
      if attributes[:'Hyperlink']
        self.hyperlink = attributes[:'Hyperlink']
      end
      
      if attributes[:'HyperlinkAddress']
        self.hyperlink_address = attributes[:'HyperlinkAddress']
      end
      
      if attributes[:'HyperlinkSubAddress']
        self.hyperlink_sub_address = attributes[:'HyperlinkSubAddress']
      end
      
      if attributes[:'WorkVariance']
        self.work_variance = attributes[:'WorkVariance']
      end
      
      if attributes[:'HasFixedRateUnits']
        self.has_fixed_rate_units = attributes[:'HasFixedRateUnits']
      end
      
      if attributes[:'FixedMaterial']
        self.fixed_material = attributes[:'FixedMaterial']
      end
      
      if attributes[:'LevelingDelay']
        self.leveling_delay = attributes[:'LevelingDelay']
      end
      
      if attributes[:'LevelingDelayFormat']
        self.leveling_delay_format = attributes[:'LevelingDelayFormat']
      end
      
      if attributes[:'LinkedFields']
        self.linked_fields = attributes[:'LinkedFields']
      end
      
      if attributes[:'Milestone']
        self.milestone = attributes[:'Milestone']
      end
      
      if attributes[:'Notes']
        self.notes = attributes[:'Notes']
      end
      
      if attributes[:'Overallocated']
        self.overallocated = attributes[:'Overallocated']
      end
      
      if attributes[:'OvertimeCost']
        self.overtime_cost = attributes[:'OvertimeCost']
      end
      
      if attributes[:'OvertimeWork']
        self.overtime_work = attributes[:'OvertimeWork']
      end
      
      if attributes[:'PeakUnits']
        self.peak_units = attributes[:'PeakUnits']
      end
      
      if attributes[:'RegularWork']
        self.regular_work = attributes[:'RegularWork']
      end
      
      if attributes[:'RemainingCost']
        self.remaining_cost = attributes[:'RemainingCost']
      end
      
      if attributes[:'RemainingOvertimeCost']
        self.remaining_overtime_cost = attributes[:'RemainingOvertimeCost']
      end
      
      if attributes[:'RemainingOvertimeWork']
        self.remaining_overtime_work = attributes[:'RemainingOvertimeWork']
      end
      
      if attributes[:'RemainingWork']
        self.remaining_work = attributes[:'RemainingWork']
      end
      
      if attributes[:'ResponsePending']
        self.response_pending = attributes[:'ResponsePending']
      end
      
      if attributes[:'Start']
        self.start = attributes[:'Start']
      end
      
      if attributes[:'Stop']
        self.stop = attributes[:'Stop']
      end
      
      if attributes[:'Resume']
        self.resume = attributes[:'Resume']
      end
      
      if attributes[:'StartVariance']
        self.start_variance = attributes[:'StartVariance']
      end
      
      if attributes[:'Summary']
        self.summary = attributes[:'Summary']
      end
      
      if attributes[:'Sv']
        self.sv = attributes[:'Sv']
      end
      
      if attributes[:'Units']
        self.units = attributes[:'Units']
      end
      
      if attributes[:'UpdateNeeded']
        self.update_needed = attributes[:'UpdateNeeded']
      end
      
      if attributes[:'Vac']
        self.vac = attributes[:'Vac']
      end
      
      if attributes[:'Work']
        self.work = attributes[:'Work']
      end
      
      if attributes[:'WorkContour']
        self.work_contour = attributes[:'WorkContour']
      end
      
      if attributes[:'Bcws']
        self.bcws = attributes[:'Bcws']
      end
      
      if attributes[:'Bcwp']
        self.bcwp = attributes[:'Bcwp']
      end
      
      if attributes[:'BookingType']
        self.booking_type = attributes[:'BookingType']
      end
      
      if attributes[:'ActualWorkProtected']
        self.actual_work_protected = attributes[:'ActualWorkProtected']
      end
      
      if attributes[:'ActualOvertimeWorkProtected']
        self.actual_overtime_work_protected = attributes[:'ActualOvertimeWorkProtected']
      end
      
      if attributes[:'CreationDate']
        self.creation_date = attributes[:'CreationDate']
      end
      
      if attributes[:'AssnOwner']
        self.assn_owner = attributes[:'AssnOwner']
      end
      
      if attributes[:'AssnOwnerGuid']
        self.assn_owner_guid = attributes[:'AssnOwnerGuid']
      end
      
      if attributes[:'BudgetCost']
        self.budget_cost = attributes[:'BudgetCost']
      end
      
      if attributes[:'BudgetWork']
        self.budget_work = attributes[:'BudgetWork']
      end
      
      if attributes[:'RateScale']
        self.rate_scale = attributes[:'RateScale']
      end
      
      if attributes[:'BaselineStart']
        self.baseline_start = attributes[:'BaselineStart']
      end
      
      if attributes[:'BaselineFinish']
        self.baseline_finish = attributes[:'BaselineFinish']
      end
      
      if attributes[:'BaselineWork']
        self.baseline_work = attributes[:'BaselineWork']
      end
      
      if attributes[:'BaselineCost']
        self.baseline_cost = attributes[:'BaselineCost']
      end
      
      if attributes[:'BaselineBcws']
        self.baseline_bcws = attributes[:'BaselineBcws']
      end
      
      if attributes[:'BaselineBcwp']
        self.baseline_bcwp = attributes[:'BaselineBcwp']
      end
      
      if attributes[:'Baseline1Start']
        self.baseline1_start = attributes[:'Baseline1Start']
      end
      
      if attributes[:'Baseline1Finish']
        self.baseline1_finish = attributes[:'Baseline1Finish']
      end
      
      if attributes[:'Baseline1Work']
        self.baseline1_work = attributes[:'Baseline1Work']
      end
      
      if attributes[:'Baseline1Cost']
        self.baseline1_cost = attributes[:'Baseline1Cost']
      end
      
      if attributes[:'Baseline1Bcws']
        self.baseline1_bcws = attributes[:'Baseline1Bcws']
      end
      
      if attributes[:'Baseline1Bcwp']
        self.baseline1_bcwp = attributes[:'Baseline1Bcwp']
      end
      
      if attributes[:'Baseline2Start']
        self.baseline2_start = attributes[:'Baseline2Start']
      end
      
      if attributes[:'Baseline2Finish']
        self.baseline2_finish = attributes[:'Baseline2Finish']
      end
      
      if attributes[:'Baseline2Work']
        self.baseline2_work = attributes[:'Baseline2Work']
      end
      
      if attributes[:'Baseline2Cost']
        self.baseline2_cost = attributes[:'Baseline2Cost']
      end
      
      if attributes[:'Baseline2Bcws']
        self.baseline2_bcws = attributes[:'Baseline2Bcws']
      end
      
      if attributes[:'Baseline2Bcwp']
        self.baseline2_bcwp = attributes[:'Baseline2Bcwp']
      end
      
      if attributes[:'Baseline3Start']
        self.baseline3_start = attributes[:'Baseline3Start']
      end
      
      if attributes[:'Baseline3Finish']
        self.baseline3_finish = attributes[:'Baseline3Finish']
      end
      
      if attributes[:'Baseline3Work']
        self.baseline3_work = attributes[:'Baseline3Work']
      end
      
      if attributes[:'Baseline3Cost']
        self.baseline3_cost = attributes[:'Baseline3Cost']
      end
      
      if attributes[:'Baseline3Bcws']
        self.baseline3_bcws = attributes[:'Baseline3Bcws']
      end
      
      if attributes[:'Baseline3Bcwp']
        self.baseline3_bcwp = attributes[:'Baseline3Bcwp']
      end
      
      if attributes[:'Baseline4Start']
        self.baseline4_start = attributes[:'Baseline4Start']
      end
      
      if attributes[:'Baseline4Finish']
        self.baseline4_finish = attributes[:'Baseline4Finish']
      end
      
      if attributes[:'Baseline4Work']
        self.baseline4_work = attributes[:'Baseline4Work']
      end
      
      if attributes[:'Baseline4Cost']
        self.baseline4_cost = attributes[:'Baseline4Cost']
      end
      
      if attributes[:'Baseline4Bcws']
        self.baseline4_bcws = attributes[:'Baseline4Bcws']
      end
      
      if attributes[:'Baseline4Bcwp']
        self.baseline4_bcwp = attributes[:'Baseline4Bcwp']
      end
      
      if attributes[:'Baseline5Start']
        self.baseline5_start = attributes[:'Baseline5Start']
      end
      
      if attributes[:'Baseline5Finish']
        self.baseline5_finish = attributes[:'Baseline5Finish']
      end
      
      if attributes[:'Baseline5Work']
        self.baseline5_work = attributes[:'Baseline5Work']
      end
      
      if attributes[:'Baseline5Cost']
        self.baseline5_cost = attributes[:'Baseline5Cost']
      end
      
      if attributes[:'Baseline5Bcws']
        self.baseline5_bcws = attributes[:'Baseline5Bcws']
      end
      
      if attributes[:'Baseline5Bcwp']
        self.baseline5_bcwp = attributes[:'Baseline5Bcwp']
      end
      
      if attributes[:'Baseline6Start']
        self.baseline6_start = attributes[:'Baseline6Start']
      end
      
      if attributes[:'Baseline6Finish']
        self.baseline6_finish = attributes[:'Baseline6Finish']
      end
      
      if attributes[:'Baseline6Work']
        self.baseline6_work = attributes[:'Baseline6Work']
      end
      
      if attributes[:'Baseline6Cost']
        self.baseline6_cost = attributes[:'Baseline6Cost']
      end
      
      if attributes[:'Baseline6Bcws']
        self.baseline6_bcws = attributes[:'Baseline6Bcws']
      end
      
      if attributes[:'Baseline6Bcwp']
        self.baseline6_bcwp = attributes[:'Baseline6Bcwp']
      end
      
      if attributes[:'Baseline7Start']
        self.baseline7_start = attributes[:'Baseline7Start']
      end
      
      if attributes[:'Baseline7Finish']
        self.baseline7_finish = attributes[:'Baseline7Finish']
      end
      
      if attributes[:'Baseline7Work']
        self.baseline7_work = attributes[:'Baseline7Work']
      end
      
      if attributes[:'Baseline7Cost']
        self.baseline7_cost = attributes[:'Baseline7Cost']
      end
      
      if attributes[:'Baseline7Bcws']
        self.baseline7_bcws = attributes[:'Baseline7Bcws']
      end
      
      if attributes[:'Baseline7Bcwp']
        self.baseline7_bcwp = attributes[:'Baseline7Bcwp']
      end
      
      if attributes[:'Baseline8Start']
        self.baseline8_start = attributes[:'Baseline8Start']
      end
      
      if attributes[:'Baseline8Finish']
        self.baseline8_finish = attributes[:'Baseline8Finish']
      end
      
      if attributes[:'Baseline8Work']
        self.baseline8_work = attributes[:'Baseline8Work']
      end
      
      if attributes[:'Baseline8Cost']
        self.baseline8_cost = attributes[:'Baseline8Cost']
      end
      
      if attributes[:'Baseline8Bcws']
        self.baseline8_bcws = attributes[:'Baseline8Bcws']
      end
      
      if attributes[:'Baseline8Bcwp']
        self.baseline8_bcwp = attributes[:'Baseline8Bcwp']
      end
      
      if attributes[:'Baseline9Start']
        self.baseline9_start = attributes[:'Baseline9Start']
      end
      
      if attributes[:'Baseline9Finish']
        self.baseline9_finish = attributes[:'Baseline9Finish']
      end
      
      if attributes[:'Baseline9Work']
        self.baseline9_work = attributes[:'Baseline9Work']
      end
      
      if attributes[:'Baseline9Cost']
        self.baseline9_cost = attributes[:'Baseline9Cost']
      end
      
      if attributes[:'Baseline9Bcws']
        self.baseline9_bcws = attributes[:'Baseline9Bcws']
      end
      
      if attributes[:'Baseline9Bcwp']
        self.baseline9_bcwp = attributes[:'Baseline9Bcwp']
      end
      
      if attributes[:'Baseline10Start']
        self.baseline10_start = attributes[:'Baseline10Start']
      end
      
      if attributes[:'Baseline10Finish']
        self.baseline10_finish = attributes[:'Baseline10Finish']
      end
      
      if attributes[:'Baseline10Work']
        self.baseline10_work = attributes[:'Baseline10Work']
      end
      
      if attributes[:'Baseline10Cost']
        self.baseline10_cost = attributes[:'Baseline10Cost']
      end
      
      if attributes[:'Baseline10Bcws']
        self.baseline10_bcws = attributes[:'Baseline10Bcws']
      end
      
      if attributes[:'Baseline10Bcwp']
        self.baseline10_bcwp = attributes[:'Baseline10Bcwp']
      end
      
      if attributes[:'ExtendedAttributes']
        if (value = attributes[:'ExtendedAttributes']).is_a?(Array)
          self.extended_attributes = value
        end
      end
      
    end

  end
end
