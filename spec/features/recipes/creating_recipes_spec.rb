require 'spec_helper'

describe "creating recipes" do
  context "on the new recipe page" do

    # Is there a form with the given HTML ID?
    it "should have a form to create the recipes" do
      visit new_recipe_path

      expect(page).to have_css("form#new_recipe")
    end

    # Does the recipe get created when the form is submitted?
    # Is the user redirected to a page that displays the recipe name?
    it "should create a recipe when the form is submitted" do
      visit new_recipe_path

      fill_in 'recipe_name', with: 'Blueberry Pancakes'
      click_button('Create Recipe')

      expect(Recipe.first.name).to eq("Blueberry Pancakes")
      expect(page).to have_content("Blueberry Pancakes")
    end

    # Are there all ingredients listed in the form with
    # the ingredient name as a label and an associated checkbox?
    

    # Does the recipe get successfully created with 1 ingredient?
    # HINT: You need to use checkboxes. Each checkbox should have a CORRECTLY
    #       implemented HTML label
    #       (i.e. clicking on the <label> checks/unchecks the box).
    
  end
end
