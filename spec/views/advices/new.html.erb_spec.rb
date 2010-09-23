require 'spec_helper'

describe "/advices/new.html.erb" do
  include AdvicesHelper

  before(:each) do
    assigns[:advice] = stub_model(Advice,
      :new_record? => true,
      :email => "value for email"
    )
  end

  it "renders new advice form" do
    render

    response.should have_tag("form[action=?][method=post]", advices_path) do
      with_tag("input#advice_email[name=?]", "advice[email]")
    end
  end
end
