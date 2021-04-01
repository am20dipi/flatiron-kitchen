require 'spec_helper'

describe "editing recipes" do
  context "on the edit recipe page" do
    before do
      @recipe = Recipe.create(name: "Rice Pudding")
      visit edit_recipe_path(@recipe)
    end

    # Is there a form with the given HTML id?
    it "should have a form to edit the recipe" do
      expect(page).to have_css("form#edit_recipe_#{@recipe.id}")
    end

    # Does the form correctly update the recipe name?
    it "should update a recipe when the form is submitted" do
      fill_in 'recipe_name', with: "Rice Pudding with Farmer Darryl's Frog Sauce"
      click_button('Update Recipe')

      expect(Recipe.first.name).to eq("Rice Pudding with Farmer Darryl's Frog Sauce")
      expect(page).to have_content("Rice Pudding with Farmer Darryl's Frog Sauce")
    end

    # Are there all ingredients listed in the form with
    # the ingredient name as a label and an associated checkbox?
    

    # Are all the ingredients added to the recipe?
    # HINT: You need to use checkboxes. Each checkbox should have a CORRECTLY
    #       implemented HTML label
    #       (i.e. clicking on the <label> checks/unchecks the box).
    
  end
end
