require 'rails_helper'

RSpec.describe Tweet, type: :model do
  before do
    @tweet = FactoryBot.build(:tweet)
  end

  describe 'ツイート投稿機能' do
    context '投稿できるとき' do
      it 'titleが存在していれば投稿できる' do
        expect(@tweet).to be_valid
      end
      
      it 'eat_timeがなくても投稿できる' do
        @tweet.eat_time = ''
        expect(@tweet).to be_valid
      end

      it 'time_takenがなくても投稿できる' do
        @tweet.time_taken = ''
        expect(@tweet).to be_valid
      end

      it 'recipeがなくても投稿できる' do
        @tweet.recipe = ''
        expect(@tweet).to be_valid
      end

      it 'supplementがなくても投稿できる' do
        @tweet.supplement = ''
        expect(@tweet).to be_valid
      end
    end

    context '投稿できないとき' do
      it 'titleが存在していない' do
        @tweet.title = ''
        @tweet.valid?
        expect(@tweet.errors.full_messages).to include "Title can't be blank"
      end
    end
  end
end
