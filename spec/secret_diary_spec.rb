require_relative '../lib/secret_diary'

### WARNING ###
# For the purposes of this exercise, you are testing after
# the code has been written. This means your tests are prone
# to false positives!
#
# Make sure your tests work by deleting the bodies of the
# methods in `secret_diary.rb`, like this:
#
# ```ruby
# def write(new_message)
# end
# ```
#
# If they fail, then you know your tests are working
# as expected.
### WARNING ###

RSpec.describe SecretDiary do
let(:diary) { double :diary }
let(:new_message) { double :new_message}
let(:new_diary) { SecretDiary.new(diary) }
  context "when locked" do
    # pending "refuses to be read"
      it "refuses to be read" do
        expect(new_diary.read).to eq "Go away!"
      end

    #pending "refuses to be written"
    it "refuses to be written" do
      expect(new_diary.write(new_message)).to eq "Go away!"
    end
  end

  context "when unlocked" do
    #pending "gets read"
    it "gets read" do
      new_diary.unlock
      expect(new_diary).to receive(:read)
      new_diary.read
    end

  #  pending "gets written"
  it "gets written" do
    new_diary.unlock
    expect(new_diary).to receive :write
    new_diary.write(new_message)
  end

  end
end
