require 'rails_helper'

describe UsersController, type: :controller do
  # user = User.create!(email: "test@test.com", password: "123456")

  let(:user) { FactoryGirl.create(:user) }

  describe 'GET #show' do
    context 'User is logged in' do
      before do
        sign_in user
      end

      it 'loads correct user details' do
        get :show, id: user.id
        expect(assigns(:user)).to eq user
      end
    end

    context 'No user is logged in' do
      it 'redirects to login' do
        get :show, id: user.id
        expect(response).to redirect_to(new_user_session_path)
      end
    end
  end
end
