require 'rails_helper'

RSpec.describe 'categories/new', type: :view do
  before(:each) do
    assign(:category, Category.new(
       name: 'MyString',
       desc: 'MyText'
    ))
  end

  it 'renders new category form' do
    render

    assert_select 'form[action=?][method=?]', categories_path, 'post' do

      assert_select 'input#category_name[name=?]', 'category[name]'

      assert_select 'textarea#category_desc[name=?]', 'category[desc]'
    end
  end
end
