require 'spec_helper'

describe "/advices/edit.html.erb" do
  include AdvicesHelper

  before(:each) do
    assigns[:advice] = @advice = stub_model(Advice,
      :new_record? => false,
      :email => "value for email"
    )
  end

  it "renders the edit advice form" do
    render

    response.should have_tag("form[action=#{advice_path(@advice)}][method=post]") do
      with_tag('input#advice_email[name=?]', "advice[email]")
    end
  end
end
