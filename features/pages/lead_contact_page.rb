class LeadContactPage < Calabash::Page
  include Helpers
  def trait
    @trait = {marked: "Phone"}

    @role_field = "* marked:'Role' sibling"
    @first_name_field = "* marked:'First Name' sibling"
    @last_name_field = "* marked:'Last Name' sibling"
    @phone_field = "* marked:'Phone' sibling"
    @email_field = "* marked:'Email' sibling"
    @address_field = "* marked:'Address' sibling"
    @postal_code_field = "* marked:'Postal Code' sibling"
    @city_field = "* marked:'City' sibling"
    @state_field = "* marked:'State' sibling"
    @country_field = "* marked:'Country' sibling"
    @done_button = "Done" #{marked: "DONE"}
    @save_button = "Save" #{marked: "Save"}

    if android?
      @details_tab = {id: "action_bar_container", text: "Details"}
      @contac_list = {class: "ListView"}
    elsif ios?
      @details_tab = {class: "UITabBarButtonLabel", text: "Details"}
      @contac_list = {class: "UITableViewWrapperView"}
    end

    return @trait
  end

  def go_to_lead_details
    tap @details_tab
  end

  def enter_lead_contact role, firstName, lastName, phone, email, address, postalCode, city, state, country
    tap @role_field
    enter_text role
    tap_keyboard_action_key

    enter_text_in @first_name_field, firstName
    tap_keyboard_action_key

    enter_text_in @last_name_field, lastName
    tap_keyboard_action_key

    enter_text_in @phone_field, phone
    if android?
      dismiss_keyboard
    end

    enter_text_in @email_field, email
    tap_keyboard_action_key

    scroll_to :down, "Address"
    enter_text_in @address_field, address
    tap_keyboard_action_key

    scroll(@contac_list, :down)

    scroll_to :down, "Postal Code"
    enter_text_in @postal_code_field, postalCode
    if android?
      dismiss_keyboard
    end

    scroll_to :down, "City"
    enter_text_in @city_field, city
    tap_keyboard_action_key

    scroll_to :down, "State"
    enter_text_in @state_field, state
    tap_keyboard_action_key

    scroll_to :down, "Country"
    enter_text_in @country_field, country
    tap_keyboard_action_key

    return this

    def save_lead
      tap @save_button
      tap @save_button
    end
  end
end

class Android::LeadContactPage < LeadContactPage
  include Calabash::Android
end
class IOS::LeadContactPage < LeadContactPage
  include Calabash::IOS
end