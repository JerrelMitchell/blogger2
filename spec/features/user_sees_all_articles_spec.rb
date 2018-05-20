require 'rails_helper'

describe 'user sees all articles' do
  describe 'they visit /articles' do
    it 'displays all articles' do

      article1 = Article.create!(title: 'T1', body: 'B1')
      article2 = Article.create!(title: 'T2', body: 'B2')

      visit articles_path

      expect(page).to have_content(article1.title)
      expect(page).to have_content(article1.body)
      expect(page).to have_content(article2.title)
      expect(page).to have_content(article1.body)
    end
  end
end
