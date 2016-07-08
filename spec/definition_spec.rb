require('rspec')
require('definition')

describe('Definition') do
  before() do
    Definition.clear()
  end
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

  describe('.remove') do
    it('removes specific term from stored array') do
      test_definition = Definition.new(:part => 'noun', :def => 'a low-melting alloy, especially one based on lead and tin or (for higher temperatures) on brass or silver, used for joining less fusible metals.')
      test_definition.save()
      test_definition2 = Definition.new(:part => 'verb', :def => 'join with solder.')
      test_definition2.save()
      Definition.remove(test_definition.id())
      expect(Definition.all()).to(eq([test_definition2]))
    end
  end

  describe('.find') do
    it('finds and returns the definition based on its id number') do
      test_definition = Definition.new(:part => 'noun', :def => 'a low-melting alloy, especially one based on lead and tin or (for higher temperatures) on brass or silver, used for joining less fusible metals.')
      test_definition.save()
      test_definition2 = Definition.new(:part => 'verb', :def => 'join with solder.')
      test_definition2.save()
      test_definition3 = Definition.new(:part => 'verb', :def => 'to join closely and intimately')
      test_definition3.save()
      expect(Definition.find(test_definition3.id())).to(eq(test_definition3))
    end
  end
end
