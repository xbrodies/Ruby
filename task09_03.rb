# Наши игральные кости теперь почти безупречны. Может быть, единственное, чего не
# хватает, так это способа задать, какой стороной выпала кость... Почему бы вам не
# написать метод cheat, который как раз это и делает! Вернётесь к чтению, когда
# закончите его (и, конечно, когда проверите, что он работает). Убедитесь, что
# невозможно задать, чтобы на кости выпало 7!

class Die  #  игральная кость  
  def initialize
    #  я просто брошу эту кость, хотя мы
    #  могли бы сделать что-нибудь ещё, если бы хотели,
    #  например, задать, что выпало число 6.
    roll
  end
  
  def roll
    @numberShowing = 1 + rand(6)
  end
  
  def cheat number
      if(number<7 and number >0)
        @numberShowing = number    
      end
  end
     
  def showing
    @numberShowing
  end
end

d = Die.new
puts 'Хотите считерить? Я вам помогу :) Введите число которое вам нужно'
d.cheat(gets.chomp.to_i)
puts 'Выпало ' + (d.showing).to_s