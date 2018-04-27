require "caesar_cipher"

describe CaesarCipher do
  describe '.caesar_cipher' do
    context 'encrypting text' do
      it 'returns encrypted text' do
        expect(CaesarCipher.caesar_cipher("What a string!", 5)).to eql("Bmfy f xywnsl!")
      end
    end
  end
end
