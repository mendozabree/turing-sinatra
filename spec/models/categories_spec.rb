RSpec.describe Category, type: :model do
  describe 'model' do
    context 'validations' do
      it { should validate_presence_of(:name) }
    end

    context 'associations' do
      it { should belong_to(:department) }
      it { should have_and_belong_to_many(:products) }
    end
  end
end
