RSpec.describe Department, type: :model do
  context "Validations" do
    it do
      should validate_presence_of(:name)
    end
  end

  context "Associations" do
    it { should have_many(:categories) }
  end
end
