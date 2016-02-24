require 'rails_helper'

RSpec.feature "UserViewsTheirProfiles", type: :feature do
  # pending "add some scenarios (or delete) #{__FILE__}"
   let!(:user) do User.create(

     name: "Rube Goldber",
     email: "machine@example.com",
     code_school: CodeSchool.create(name: "IronHack")

     )
   end
   before do visit user_path(user)
   end
   it "dispalays their name" do
     expect(page).to have_content user.name

   end
   it "dispalays their email" do
     expect(page).to have_content user.email

   end
   it "dispalays their code school" do
     save_and_open_page
     expect(page).to have_content user.code_school.name

   end


end
