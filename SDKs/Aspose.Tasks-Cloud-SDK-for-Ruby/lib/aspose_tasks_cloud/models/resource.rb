module AsposeTasksCloud
  # 
  class Resource < BaseObject
    attr_accessor :name, :uid, :id, :type, :is_null, :initials, :phonetics, :nt_account, :material_label, :code, :group, :email_address, :hyperlink, :hyperlink_address, :hyperlink_sub_address, :max_units, :peak_units, :over_allocated, :available_from, :available_to, :start, :finish, :can_level, :accrue_at, :work, :regular_work, :overtime_work, :actual_work, :remaining_work, :actual_overtime_work, :remaining_overtime_work, :percent_work_complete, :standard_rate, :standard_rate_format, :cost, :overtime_rate_format, :overtime_cost, :cost_per_use, :actual_cost, :actual_overtime_cost, :remaining_cost, :remaining_overtime_cost, :work_variance, :cost_variance, :sv, :cv, :acwp, :calendar_uid, :notes_text, :bcws, :bcwp, :is_generic, :is_inactive, :is_enterprise, :booking_type, :actual_work_protected, :actual_overtime_work_protected, :active_directory_guid, :creation_date, :cost_center, :is_cost_resource, :team_assignment_pool, :assignment_owner, :assignment_owner_guid, :is_budget, :budget_work, :budget_cost, :overtime_rate, :baseline_work, :baseline_cost, :baseline_bcws, :baseline_bcwp, :baseline1_work, :baseline1_cost, :baseline1_bcws, :baseline1_bcwp, :baseline2_work, :baseline2_cost, :baseline2_bcws, :baseline2_bcwp, :baseline3_work, :baseline3_cost, :baseline3_bcws, :baseline3_bcwp, :baseline4_work, :baseline4_cost, :baseline4_bcws, :baseline4_bcwp, :baseline5_work, :baseline5_cost, :baseline5_bcws, :baseline5_bcwp, :baseline6_work, :baseline6_cost, :baseline6_bcws, :baseline6_bcwp, :baseline7_work, :baseline7_cost, :baseline7_bcws, :baseline7_bcwp, :baseline8_work, :baseline8_cost, :baseline8_bcws, :baseline8_bcwp, :baseline9_work, :baseline9_cost, :baseline9_bcws, :baseline9_bcwp, :baseline10_work, :baseline10_cost, :baseline10_bcws, :baseline10_bcwp, :extended_attributes, :outline_codes
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'name' => :'Name',
        
        # 
        :'uid' => :'Uid',
        
        # 
        :'id' => :'Id',
        
        # 
        :'type' => :'Type',
        
        # 
        :'is_null' => :'IsNull',
        
        # 
        :'initials' => :'Initials',
        
        # 
        :'phonetics' => :'Phonetics',
        
        # 
        :'nt_account' => :'NtAccount',
        
        # 
        :'material_label' => :'MaterialLabel',
        
        # 
        :'code' => :'Code',
        
        # 
        :'group' => :'Group',
        
        # 
        :'email_address' => :'EmailAddress',
        
        # 
        :'hyperlink' => :'Hyperlink',
        
        # 
        :'hyperlink_address' => :'HyperlinkAddress',
        
        # 
        :'hyperlink_sub_address' => :'HyperlinkSubAddress',
        
        # 
        :'max_units' => :'MaxUnits',
        
        # 
        :'peak_units' => :'PeakUnits',
        
        # 
        :'over_allocated' => :'OverAllocated',
        
        # 
        :'available_from' => :'AvailableFrom',
        
        # 
        :'available_to' => :'AvailableTo',
        
        # 
        :'start' => :'Start',
        
        # 
        :'finish' => :'Finish',
        
        # 
        :'can_level' => :'CanLevel',
        
        # 
        :'accrue_at' => :'AccrueAt',
        
        # 
        :'work' => :'Work',
        
        # 
        :'regular_work' => :'RegularWork',
        
        # 
        :'overtime_work' => :'OvertimeWork',
        
        # 
        :'actual_work' => :'ActualWork',
        
        # 
        :'remaining_work' => :'RemainingWork',
        
        # 
        :'actual_overtime_work' => :'ActualOvertimeWork',
        
        # 
        :'remaining_overtime_work' => :'RemainingOvertimeWork',
        
        # 
        :'percent_work_complete' => :'PercentWorkComplete',
        
        # 
        :'standard_rate' => :'StandardRate',
        
        # 
        :'standard_rate_format' => :'StandardRateFormat',
        
        # 
        :'cost' => :'Cost',
        
        # 
        :'overtime_rate_format' => :'OvertimeRateFormat',
        
        # 
        :'overtime_cost' => :'OvertimeCost',
        
        # 
        :'cost_per_use' => :'CostPerUse',
        
        # 
        :'actual_cost' => :'ActualCost',
        
        # 
        :'actual_overtime_cost' => :'ActualOvertimeCost',
        
        # 
        :'remaining_cost' => :'RemainingCost',
        
        # 
        :'remaining_overtime_cost' => :'RemainingOvertimeCost',
        
        # 
        :'work_variance' => :'WorkVariance',
        
        # 
        :'cost_variance' => :'CostVariance',
        
        # 
        :'sv' => :'Sv',
        
        # 
        :'cv' => :'Cv',
        
        # 
        :'acwp' => :'Acwp',
        
        # 
        :'calendar_uid' => :'CalendarUid',
        
        # 
        :'notes_text' => :'NotesText',
        
        # 
        :'bcws' => :'Bcws',
        
        # 
        :'bcwp' => :'Bcwp',
        
        # 
        :'is_generic' => :'IsGeneric',
        
        # 
        :'is_inactive' => :'IsInactive',
        
        # 
        :'is_enterprise' => :'IsEnterprise',
        
        # 
        :'booking_type' => :'BookingType',
        
        # 
        :'actual_work_protected' => :'ActualWorkProtected',
        
        # 
        :'actual_overtime_work_protected' => :'ActualOvertimeWorkProtected',
        
        # 
        :'active_directory_guid' => :'ActiveDirectoryGuid',
        
        # 
        :'creation_date' => :'CreationDate',
        
        # 
        :'cost_center' => :'CostCenter',
        
        # 
        :'is_cost_resource' => :'IsCostResource',
        
        # 
        :'team_assignment_pool' => :'TeamAssignmentPool',
        
        # 
        :'assignment_owner' => :'AssignmentOwner',
        
        # 
        :'assignment_owner_guid' => :'AssignmentOwnerGuid',
        
        # 
        :'is_budget' => :'IsBudget',
        
        # 
        :'budget_work' => :'BudgetWork',
        
        # 
        :'budget_cost' => :'BudgetCost',
        
        # 
        :'overtime_rate' => :'OvertimeRate',
        
        # 
        :'baseline_work' => :'BaselineWork',
        
        # 
        :'baseline_cost' => :'BaselineCost',
        
        # 
        :'baseline_bcws' => :'BaselineBcws',
        
        # 
        :'baseline_bcwp' => :'BaselineBcwp',
        
        # 
        :'baseline1_work' => :'Baseline1Work',
        
        # 
        :'baseline1_cost' => :'Baseline1Cost',
        
        # 
        :'baseline1_bcws' => :'Baseline1Bcws',
        
        # 
        :'baseline1_bcwp' => :'Baseline1Bcwp',
        
        # 
        :'baseline2_work' => :'Baseline2Work',
        
        # 
        :'baseline2_cost' => :'Baseline2Cost',
        
        # 
        :'baseline2_bcws' => :'Baseline2Bcws',
        
        # 
        :'baseline2_bcwp' => :'Baseline2Bcwp',
        
        # 
        :'baseline3_work' => :'Baseline3Work',
        
        # 
        :'baseline3_cost' => :'Baseline3Cost',
        
        # 
        :'baseline3_bcws' => :'Baseline3Bcws',
        
        # 
        :'baseline3_bcwp' => :'Baseline3Bcwp',
        
        # 
        :'baseline4_work' => :'Baseline4Work',
        
        # 
        :'baseline4_cost' => :'Baseline4Cost',
        
        # 
        :'baseline4_bcws' => :'Baseline4Bcws',
        
        # 
        :'baseline4_bcwp' => :'Baseline4Bcwp',
        
        # 
        :'baseline5_work' => :'Baseline5Work',
        
        # 
        :'baseline5_cost' => :'Baseline5Cost',
        
        # 
        :'baseline5_bcws' => :'Baseline5Bcws',
        
        # 
        :'baseline5_bcwp' => :'Baseline5Bcwp',
        
        # 
        :'baseline6_work' => :'Baseline6Work',
        
        # 
        :'baseline6_cost' => :'Baseline6Cost',
        
        # 
        :'baseline6_bcws' => :'Baseline6Bcws',
        
        # 
        :'baseline6_bcwp' => :'Baseline6Bcwp',
        
        # 
        :'baseline7_work' => :'Baseline7Work',
        
        # 
        :'baseline7_cost' => :'Baseline7Cost',
        
        # 
        :'baseline7_bcws' => :'Baseline7Bcws',
        
        # 
        :'baseline7_bcwp' => :'Baseline7Bcwp',
        
        # 
        :'baseline8_work' => :'Baseline8Work',
        
        # 
        :'baseline8_cost' => :'Baseline8Cost',
        
        # 
        :'baseline8_bcws' => :'Baseline8Bcws',
        
        # 
        :'baseline8_bcwp' => :'Baseline8Bcwp',
        
        # 
        :'baseline9_work' => :'Baseline9Work',
        
        # 
        :'baseline9_cost' => :'Baseline9Cost',
        
        # 
        :'baseline9_bcws' => :'Baseline9Bcws',
        
        # 
        :'baseline9_bcwp' => :'Baseline9Bcwp',
        
        # 
        :'baseline10_work' => :'Baseline10Work',
        
        # 
        :'baseline10_cost' => :'Baseline10Cost',
        
        # 
        :'baseline10_bcws' => :'Baseline10Bcws',
        
        # 
        :'baseline10_bcwp' => :'Baseline10Bcwp',
        
        # 
        :'extended_attributes' => :'ExtendedAttributes',
        
        # 
        :'outline_codes' => :'OutlineCodes'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'name' => :'String',
        :'uid' => :'Integer',
        :'id' => :'Integer',
        :'type' => :'String',
        :'is_null' => :'BOOLEAN',
        :'initials' => :'String',
        :'phonetics' => :'String',
        :'nt_account' => :'String',
        :'material_label' => :'String',
        :'code' => :'String',
        :'group' => :'String',
        :'email_address' => :'String',
        :'hyperlink' => :'String',
        :'hyperlink_address' => :'String',
        :'hyperlink_sub_address' => :'String',
        :'max_units' => :'Float',
        :'peak_units' => :'Float',
        :'over_allocated' => :'BOOLEAN',
        :'available_from' => :'String',
        :'available_to' => :'String',
        :'start' => :'String',
        :'finish' => :'String',
        :'can_level' => :'BOOLEAN',
        :'accrue_at' => :'String',
        :'work' => :'String',
        :'regular_work' => :'String',
        :'overtime_work' => :'String',
        :'actual_work' => :'String',
        :'remaining_work' => :'String',
        :'actual_overtime_work' => :'String',
        :'remaining_overtime_work' => :'String',
        :'percent_work_complete' => :'Integer',
        :'standard_rate' => :'Float',
        :'standard_rate_format' => :'String',
        :'cost' => :'Float',
        :'overtime_rate_format' => :'String',
        :'overtime_cost' => :'Float',
        :'cost_per_use' => :'Float',
        :'actual_cost' => :'Float',
        :'actual_overtime_cost' => :'Float',
        :'remaining_cost' => :'Float',
        :'remaining_overtime_cost' => :'Float',
        :'work_variance' => :'Float',
        :'cost_variance' => :'Float',
        :'sv' => :'Float',
        :'cv' => :'Float',
        :'acwp' => :'Float',
        :'calendar_uid' => :'Integer',
        :'notes_text' => :'String',
        :'bcws' => :'Float',
        :'bcwp' => :'Float',
        :'is_generic' => :'BOOLEAN',
        :'is_inactive' => :'BOOLEAN',
        :'is_enterprise' => :'BOOLEAN',
        :'booking_type' => :'String',
        :'actual_work_protected' => :'String',
        :'actual_overtime_work_protected' => :'String',
        :'active_directory_guid' => :'String',
        :'creation_date' => :'String',
        :'cost_center' => :'String',
        :'is_cost_resource' => :'BOOLEAN',
        :'team_assignment_pool' => :'BOOLEAN',
        :'assignment_owner' => :'String',
        :'assignment_owner_guid' => :'String',
        :'is_budget' => :'BOOLEAN',
        :'budget_work' => :'String',
        :'budget_cost' => :'Float',
        :'overtime_rate' => :'Float',
        :'baseline_work' => :'String',
        :'baseline_cost' => :'Float',
        :'baseline_bcws' => :'Float',
        :'baseline_bcwp' => :'Float',
        :'baseline1_work' => :'String',
        :'baseline1_cost' => :'Float',
        :'baseline1_bcws' => :'Float',
        :'baseline1_bcwp' => :'Float',
        :'baseline2_work' => :'String',
        :'baseline2_cost' => :'Float',
        :'baseline2_bcws' => :'Float',
        :'baseline2_bcwp' => :'Float',
        :'baseline3_work' => :'String',
        :'baseline3_cost' => :'Float',
        :'baseline3_bcws' => :'Float',
        :'baseline3_bcwp' => :'Float',
        :'baseline4_work' => :'String',
        :'baseline4_cost' => :'Float',
        :'baseline4_bcws' => :'Float',
        :'baseline4_bcwp' => :'Float',
        :'baseline5_work' => :'String',
        :'baseline5_cost' => :'Float',
        :'baseline5_bcws' => :'Float',
        :'baseline5_bcwp' => :'Float',
        :'baseline6_work' => :'String',
        :'baseline6_cost' => :'Float',
        :'baseline6_bcws' => :'Float',
        :'baseline6_bcwp' => :'Float',
        :'baseline7_work' => :'String',
        :'baseline7_cost' => :'Float',
        :'baseline7_bcws' => :'Float',
        :'baseline7_bcwp' => :'Float',
        :'baseline8_work' => :'String',
        :'baseline8_cost' => :'Float',
        :'baseline8_bcws' => :'Float',
        :'baseline8_bcwp' => :'Float',
        :'baseline9_work' => :'String',
        :'baseline9_cost' => :'Float',
        :'baseline9_bcws' => :'Float',
        :'baseline9_bcwp' => :'Float',
        :'baseline10_work' => :'String',
        :'baseline10_cost' => :'Float',
        :'baseline10_bcws' => :'Float',
        :'baseline10_bcwp' => :'Float',
        :'extended_attributes' => :'Array<ExtendedAttribute>',
        :'outline_codes' => :'Array<OutlineCode>'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'Name']
        self.name = attributes[:'Name']
      end
      
      if attributes[:'Uid']
        self.uid = attributes[:'Uid']
      end
      
      if attributes[:'Id']
        self.id = attributes[:'Id']
      end
      
      if attributes[:'Type']
        self.type = attributes[:'Type']
      end
      
      if attributes[:'IsNull']
        self.is_null = attributes[:'IsNull']
      end
      
      if attributes[:'Initials']
        self.initials = attributes[:'Initials']
      end
      
      if attributes[:'Phonetics']
        self.phonetics = attributes[:'Phonetics']
      end
      
      if attributes[:'NtAccount']
        self.nt_account = attributes[:'NtAccount']
      end
      
      if attributes[:'MaterialLabel']
        self.material_label = attributes[:'MaterialLabel']
      end
      
      if attributes[:'Code']
        self.code = attributes[:'Code']
      end
      
      if attributes[:'Group']
        self.group = attributes[:'Group']
      end
      
      if attributes[:'EmailAddress']
        self.email_address = attributes[:'EmailAddress']
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
      
      if attributes[:'MaxUnits']
        self.max_units = attributes[:'MaxUnits']
      end
      
      if attributes[:'PeakUnits']
        self.peak_units = attributes[:'PeakUnits']
      end
      
      if attributes[:'OverAllocated']
        self.over_allocated = attributes[:'OverAllocated']
      end
      
      if attributes[:'AvailableFrom']
        self.available_from = attributes[:'AvailableFrom']
      end
      
      if attributes[:'AvailableTo']
        self.available_to = attributes[:'AvailableTo']
      end
      
      if attributes[:'Start']
        self.start = attributes[:'Start']
      end
      
      if attributes[:'Finish']
        self.finish = attributes[:'Finish']
      end
      
      if attributes[:'CanLevel']
        self.can_level = attributes[:'CanLevel']
      end
      
      if attributes[:'AccrueAt']
        self.accrue_at = attributes[:'AccrueAt']
      end
      
      if attributes[:'Work']
        self.work = attributes[:'Work']
      end
      
      if attributes[:'RegularWork']
        self.regular_work = attributes[:'RegularWork']
      end
      
      if attributes[:'OvertimeWork']
        self.overtime_work = attributes[:'OvertimeWork']
      end
      
      if attributes[:'ActualWork']
        self.actual_work = attributes[:'ActualWork']
      end
      
      if attributes[:'RemainingWork']
        self.remaining_work = attributes[:'RemainingWork']
      end
      
      if attributes[:'ActualOvertimeWork']
        self.actual_overtime_work = attributes[:'ActualOvertimeWork']
      end
      
      if attributes[:'RemainingOvertimeWork']
        self.remaining_overtime_work = attributes[:'RemainingOvertimeWork']
      end
      
      if attributes[:'PercentWorkComplete']
        self.percent_work_complete = attributes[:'PercentWorkComplete']
      end
      
      if attributes[:'StandardRate']
        self.standard_rate = attributes[:'StandardRate']
      end
      
      if attributes[:'StandardRateFormat']
        self.standard_rate_format = attributes[:'StandardRateFormat']
      end
      
      if attributes[:'Cost']
        self.cost = attributes[:'Cost']
      end
      
      if attributes[:'OvertimeRateFormat']
        self.overtime_rate_format = attributes[:'OvertimeRateFormat']
      end
      
      if attributes[:'OvertimeCost']
        self.overtime_cost = attributes[:'OvertimeCost']
      end
      
      if attributes[:'CostPerUse']
        self.cost_per_use = attributes[:'CostPerUse']
      end
      
      if attributes[:'ActualCost']
        self.actual_cost = attributes[:'ActualCost']
      end
      
      if attributes[:'ActualOvertimeCost']
        self.actual_overtime_cost = attributes[:'ActualOvertimeCost']
      end
      
      if attributes[:'RemainingCost']
        self.remaining_cost = attributes[:'RemainingCost']
      end
      
      if attributes[:'RemainingOvertimeCost']
        self.remaining_overtime_cost = attributes[:'RemainingOvertimeCost']
      end
      
      if attributes[:'WorkVariance']
        self.work_variance = attributes[:'WorkVariance']
      end
      
      if attributes[:'CostVariance']
        self.cost_variance = attributes[:'CostVariance']
      end
      
      if attributes[:'Sv']
        self.sv = attributes[:'Sv']
      end
      
      if attributes[:'Cv']
        self.cv = attributes[:'Cv']
      end
      
      if attributes[:'Acwp']
        self.acwp = attributes[:'Acwp']
      end
      
      if attributes[:'CalendarUid']
        self.calendar_uid = attributes[:'CalendarUid']
      end
      
      if attributes[:'NotesText']
        self.notes_text = attributes[:'NotesText']
      end
      
      if attributes[:'Bcws']
        self.bcws = attributes[:'Bcws']
      end
      
      if attributes[:'Bcwp']
        self.bcwp = attributes[:'Bcwp']
      end
      
      if attributes[:'IsGeneric']
        self.is_generic = attributes[:'IsGeneric']
      end
      
      if attributes[:'IsInactive']
        self.is_inactive = attributes[:'IsInactive']
      end
      
      if attributes[:'IsEnterprise']
        self.is_enterprise = attributes[:'IsEnterprise']
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
      
      if attributes[:'ActiveDirectoryGuid']
        self.active_directory_guid = attributes[:'ActiveDirectoryGuid']
      end
      
      if attributes[:'CreationDate']
        self.creation_date = attributes[:'CreationDate']
      end
      
      if attributes[:'CostCenter']
        self.cost_center = attributes[:'CostCenter']
      end
      
      if attributes[:'IsCostResource']
        self.is_cost_resource = attributes[:'IsCostResource']
      end
      
      if attributes[:'TeamAssignmentPool']
        self.team_assignment_pool = attributes[:'TeamAssignmentPool']
      end
      
      if attributes[:'AssignmentOwner']
        self.assignment_owner = attributes[:'AssignmentOwner']
      end
      
      if attributes[:'AssignmentOwnerGuid']
        self.assignment_owner_guid = attributes[:'AssignmentOwnerGuid']
      end
      
      if attributes[:'IsBudget']
        self.is_budget = attributes[:'IsBudget']
      end
      
      if attributes[:'BudgetWork']
        self.budget_work = attributes[:'BudgetWork']
      end
      
      if attributes[:'BudgetCost']
        self.budget_cost = attributes[:'BudgetCost']
      end
      
      if attributes[:'OvertimeRate']
        self.overtime_rate = attributes[:'OvertimeRate']
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
      
      if attributes[:'OutlineCodes']
        if (value = attributes[:'OutlineCodes']).is_a?(Array)
          self.outline_codes = value
        end
      end
      
    end

  end
end
