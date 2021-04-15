require 'rails_helper'

RSpec.describe Comment, type: :model do
  before do
    @comment = FactoryBot.build(:comment)
  end

  describe 'comment機能' do
    context '投稿できるとき' do
      it 'textがあれば投稿できる' do
        expect(@comment).to be_valid
      end
    end
    context '投稿できないとき' do
      it 'textがない' do
        @comment.text = ''
        @comment.valid?
        expect(@comment.errors.full_messages).to include "Text can't be blank"
      end
    end
  end
end
