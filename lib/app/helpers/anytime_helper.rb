module AnytimeHelper
  def anytime_tag(time_option=false)
    if active_environments.include?(Rails.env)
      form_content = date_selector.safe_concat(form_submitter)
      form_content.safe_concat(unfreeze_button) if Anytime.is_frozen?
      content_tag_string(:form, form_content, :action => freeze_path, :method => :post)
    end
  end

  private
  def date_selector
    select_date(Date.today, :order => [:year, :month, :day], :use_month_numbers => true)
  end

  def form_submitter
    submit_tag Anytime.is_frozen? ? :freeze_again : :freeze
  end

  def unfreeze_button
    "<a href=#{unfreeze_path}><input type='button' value='unfreeze'></a>"
  end

  def freeze_path
    url_for :controller => 'anytime', :action => 'freeze', :only_path => true
  end

  def unfreeze_path
    url_for :controller => 'anytime', :action => 'unfreeze', :only_path => true
  end

  def active_environments
    Anytime.environments.map(&:to_s)
  end
end