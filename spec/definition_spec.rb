require('rspec')
require('definition')

describe('Definition') do
  describe('#def') do
    it('will return the definition when entered') do
      test_definition = Definition.new(:part => 'verb', :def => 'heat (metal or glass) and allow it to cool slowly, in order to remove internal stresses and toughen it.')
      expect(test_definition.def()).to(eq('heat (metal or glass) and allow it to cool slowly, in order to remove internal stresses and toughen it.'))
    end
  end
  describe('#id') do
    it('will return the id when definition entered') do
      test_definition = Definition.new(:part => 'verb', :def => 'heat (metal or glass) and allow it to cool slowly, in order to remove internal stresses and toughen it.')
      expect(test_definition.id()).to(eq(1))
    end
  end
end
