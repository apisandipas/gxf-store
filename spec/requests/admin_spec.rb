require 'spec_helper'

describe 'site administrator' do


  it "accesses the dashboard" do
    
    visit root_path
    click_link 'Log In'
    fill_in 'Email', with: 'user@example.com'
    fill_in 'Password', with: 'secret'
    click_button 'Log In'

    current_path.should eq admin_url
    within 'h1' do
      page.should have_content 'Administration'
    end
    page.should have_content 'Manage Users'
    page.should have_content 'Manage Posts'
  end


  it "is denied access when not logged in" do
    visit admin_path

    current_path.should eq login_path
    within 'h1' do
      page.should have_content 'Please Log In'
    end
end

end  


