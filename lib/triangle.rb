class Triangle
  define_method(:initialize) do |s1,s2,s3|
    @s1 = s1
    @s2 = s2
    @s3 = s3
  end

  define_method(:is_triangle) do
    if @s1===@s2 && @s2===@s3
      "Equilateral"
    elsif @s1+@s2<=@s3||@s2+@s3<=@s1||@s3+@s1<=@s2
      "Not a triangle"
    elsif @s1===@s2||@s2===@s3||@s3===@s1
      "Isosceles"
    else
      "Scalene"
    end
  end
end
