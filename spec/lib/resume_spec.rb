require './lib/resume'

describe Resume do
    describe 'home(string)' do
      it 'returns strings (text)' do
        expect(Resume.resume).to be_truthy
      end
    end
  end