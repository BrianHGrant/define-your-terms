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
  describe('#part') do
    it('will return the part of speech when definition entered') do
      test_definition = Definition.new(:part => 'verb', :def => 'heat (metal or glass) and allow it to cool slowly, in order to remove internal stresses and toughen it.')
      expect(test_definition.part()).to(eq('verb'))
    end
  end

  describe('.all') do
    it('will return an empty array when no instances of Definition') do
      expect(Definition.all()).to(eq([]))
    end
  end

  describe('#save') do
    it('will add a definition to stored array') do
      test_definition = Definition.new(:part => 'verb', :def => 'heat (metal or glass) and allow it to cool slowly, in order to remove internal stresses and toughen it.')
      test_definition.save()
      expect(Definition.all()).to(eq([test_definition]))
    end
  end

  describe('.clear') do
    it('will clear stored array of definitions') do
      test_definition = Definition.new(:part => 'verb', :def => 'heat (metal or glass) and allow it to cool slowly, in order to remove internal stresses and toughen it.')
      test_definition.save()
      Definition.clear()
      expect(Definition.all()).to(eq([]))
    end
  end
end
