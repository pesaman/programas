class SuperSay
  def say(text)
    text
  end
end

class HtmlSay < SuperSay #el metodo say es declarado dentro de la classe HtmlSay
  def say(text)
    "<p>" + super + "</p>"
  end
end
#Cuando se sobrescribe un método, el método de la superclase queda oculto y solo se ejecuta el de la subclase.
class CssSay < SuperSay
end

doc = HtmlSay.new
style = CssSay.new#instancia de clase 

#test
p doc.say("You've refactored") == "<p>You've refactored</p>"
p style.say("I like to code") == "I like to code"