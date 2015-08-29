class LeadDetailsPage < Calabash::Page
  def trait
    if android?
      @trait = {marked: 'Opportunity'}
      @contact_tab = {marked: 'Contact'}
      @edit_company = {marked: 'Company', sibling: 0}
      @edit_industry = {class: 'android.widget.EditText', index: 1}
      @edit_size = {marked: 'Size', sibling: 0}
      @edit_stage = {class: 'android.widget.EditText', index: 3}
      @done = {marked: 'Save'}
      @save = {marked: 'Save'}
      @scroll_panel = {marked: 'customPanel'}
      @ok_button = {marked: 'button1'}
    elsif ios?
      @trait = {marked: 'OPPORTUNITY'}
      @contact_tab = {class:'UITabBarButtonLabel', text: 'Contact'}
      @edit_company = {class: 'UITextFieldLabel', index: 0}
      @edit_industry = {class: 'UITextFieldLabel', index: 1}
      @edit_size = {marked: 'Size', sibling: 0}
      @edit_stage = {class: 'UITextFieldLabel', index: 3}
      @done = {marked: 'DONE'}
      @save = {marked: 'Save'}
      @dismiss_selection = {marked: 'Done'}
    end

    return @trait
  end

  def go_to_lead_contact
    touch @contact_tab
  end

  def enter_lead_details company, industry, size, stage
    touch @edit_company
    clear_text
    enter_text company

    select_new_industry industry

    clear_text_in @edit_size
    enter_text_in @edit_size, size

    select_new_stage stage

    return self
  end

  def save_lead
    touch @save
    touch @save
  end

  def select_new_industry industry
    if android?
      touch @edit_industry
      scroll @scroll_panel, :down
      touch @ok_button
    elsif ios?
      touch @edit_industry
      touch industry
      touch @dismiss_selection
    end

    return self
  end

  def select_new_stage stage
    if android?
      touch @edit_stage
      scroll @scroll_panel, :down
      touch @ok_button
    elsif ios?
      touch @edit_stage
      touch stage
      touch @dismiss_selection
    end

    return self
  end
end

class Android::LeadDetailsPage < LeadDetailsPage
  include Calabash::Android
end
class IOS::LeadDetailsPage < LeadDetailsPage
  include Calabash::IOS
end