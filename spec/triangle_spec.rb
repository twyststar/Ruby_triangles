require('rspec')
require('triangle')

describe(Triangle) do
  describe('#is_triangle') do
    it('Returns "equilateral" for 3 equal side inputs') do
      test_triangle = Triangle.new(10,10,10)
      expect(test_triangle.is_triangle()).to(eq('Equilateral'))
    end
    it('Returns "isosceles" for 2 equal side inputs') do
      test_triangle = Triangle.new(10,10,15)
      expect(test_triangle.is_triangle()).to(eq('Isosceles'))
    end
    it('Returns "Not a triangle" if 2 sides added are less than or equal to the 3rd side') do
      test_triangle = Triangle.new(10,10,25)
      expect(test_triangle.is_triangle()).to(eq('Not a triangle'))
    end
    it('Returns "Scalene" for 3 unequal side inputs') do
      test_triangle = Triangle.new(10,7,9)
      expect(test_triangle.is_triangle()).to(eq('Scalene'))
    end
  end
end
