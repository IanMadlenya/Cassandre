require 'spec_helper'

feature 'Create a corpus (including one text)' do

  $a_title = a_string()
  $a_corpus = a_string()

  background do
    visit '/'
    click_on 'Analyse qualitative de textes'
    click_on 'Créer...'
    fill_in 'name', :with => $a_title
    fill_in 'corpus', :with => $a_corpus
    click_on 'Enregistrer les attributs'
  end
  
  scenario 'checking if corpus exists' do
    click_on $a_corpus
    page.should have_content $a_corpus
  end

end
