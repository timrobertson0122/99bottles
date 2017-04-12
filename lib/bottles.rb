class Bottles

  def song
    verses(99,0)
  end

  def verse(number)
    if number == 0
    <<-VERSE
No more bottles of beer on the wall, no more bottles of beer.
Go to the store and buy some more, 99 bottles of beer on the wall.
    VERSE
    elsif number == 1
    <<-VERSE
#{number} bottle of beer on the wall, #{number} bottle of beer.
Take it down and pass it around, no more bottles of beer on the wall.
VERSE
    elsif number == 2
    <<-VERSE
#{number} bottles of beer on the wall, #{number} bottles of beer.
Take one down and pass it around, #{number - 1} bottle of beer on the wall.
VERSE
    else
    <<-VERSE
#{number} bottles of beer on the wall, #{number} bottles of beer.
Take one down and pass it around, #{number - 1} bottles of beer on the wall.
VERSE
    end
  end

  def verses(hi, low)
    hi.downto(low).map {|n| verse(n) }.join("\n")
  end

end
