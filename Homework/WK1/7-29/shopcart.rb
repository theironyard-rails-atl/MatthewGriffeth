class Shopping_cart
  def initialize
    @cont ={}
  end

def add(item,cost)
  @cont[item] = cost
end
 def remove(item)
   @cont.delete(item)
 end

def sub_total
  sub_total = 0
  @cont.each do |item,cost|
   sub_total += cost
  end
  return sub_total
end

 def total
   s = sub_total
   if s >= 100.00
     s -= (s*0.1)
   end
   s
 end

 def empty #wtf doesn't this work?
   @cont.clear
 end
end
