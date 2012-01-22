class MealController < ApplicationController
  def login
  end

  def submit
    if request.post?
      session[:test_huid] = params[:test_huid]
      session[:test_password] = params[:test_password]

      destination = 'https://cloud.cs50.net/~ruthfong/pin.php'
      c = Curl::Easy.new(destination)
      c.http_post('huid=' + session[:test_huid] + '&password=' + session[:test_password] + '&url=')
      @x = (c.body_str)
      if @x == '{"didWork":"yes"}'
        session[:huid] = session[:test_huid]
        session[:password] = session[:test_password]
        redirect_to breakfast_path
      else
        @y = "nope, didn't work"
      end
    else
      redirect_to breakfast_path
    end
  end

    def breakfast
        @huid = session[:huid]
      
      t = Time.now
      
      if t.hour >= 0 and t.hour < 4
        @date = Date.today
      else
        @date = Date.today + 1.days
      end
      
      @my_date = [
              [@date.strftime("%A, %B %d"), @date],
              [(@date + 1.days).strftime("%A, %B %d"), @date + 1.days],
              [(@date + 2.days).strftime("%A, %B %d"), @date + 2.days],
              [(@date + 3.days).strftime("%A, %B %d"), @date + 3.days],
              [(@date + 4.days).strftime("%A, %B %d"), @date + 4.days],
              [(@date + 5.days).strftime("%A, %B %d"), @date + 5.days],
              [(@date + 6.days).strftime("%A, %B %d"), @date + 6.days],
            ]
      
      @locations = [
              ['Choose a location', 0],
              ['Annenberg', 'FD'], 
              ['Adams', 'AD'],
              ['Cabot', 'CB'],
              ['Currier', 'CU'],
              ['Dunster', 'DN'],
              ['Eliot', 'EL'],
              ['Kirkland', 'KI'],
              ['Leverett', 'LE'],
              ['Lowell', 'LO'],
              ['Mather', 'MA'],
              ['Pforzheimer', 'PF'],
              ['Quincy', 'QU'],
              ['Winthrop', 'WI']
            ]
            
      @pickuptimes = [
              ['Select a pick up time', 0],
              ['7:00 AM', '07%3A00'],
              ['7:30 AM', '07%3A30'],
              ['8:00 AM', '08%3A00'],
              ['8:30 AM', '08%3A30'],
              ['9:00 AM', '09%3A00'],
              ['9:30 AM', '09%3A00'],
              ['10:00 AM', '10%3A00'],
            ]
            
      @breakfasts = [
              ['Harvard Granola', 0],
              ['Yogurt', 1],
              ['8 oz Cottage Cheese', 2],
              ['Plain Bagel', 3],
              ['Wheat Bagel', 4],
              ['Cream Cheese', 5],
              ['Whole Milk', 6],
              ['Skim Milk', 7],
              ['Chocolate Milk', 8],
              ['8 oz Orange Juice', 9],
              ['Individual Oatmeal (or oatmeal cup)', 10],
              ['Individual Cereal', 11],
              ['Daily Muffin', 12]
            ]
            
                        
end

  def lunch
        @huid = session[:huid]
      
      t = Time.now
      
      if t.hour >= 0 and t.hour < 4
        @date = Date.today
      else
        @date = Date.today + 1.days
      end
      
      @my_date = [
              [@date.strftime("%A, %B %d"), @date],
              [(@date + 1.days).strftime("%A, %B %d"), @date + 1.days],
              [(@date + 2.days).strftime("%A, %B %d"), @date + 2.days],
              [(@date + 3.days).strftime("%A, %B %d"), @date + 3.days],
              [(@date + 4.days).strftime("%A, %B %d"), @date + 4.days],
              [(@date + 5.days).strftime("%A, %B %d"), @date + 5.days],
              [(@date + 6.days).strftime("%A, %B %d"), @date + 6.days],
            ]
      
      @locations = [
              ['Choose a location', 0],
              ['Annenberg', 'FD'], 
              ['Adams', 'AD'],
              ['Cabot', 'CB'],
              ['Currier', 'CU'],
              ['Dunster', 'DN'],
              ['Eliot', 'EL'],
              ['Kirkland', 'KI'],
              ['Leverett', 'LE'],
              ['Lowell', 'LO'],
              ['Mather', 'MA'],
              ['Pforzheimer', 'PF'],
              ['Quincy', 'QU'],
              ['Winthrop', 'WI']
            ]
            
      @pickuptimes = [
              ['Select a pick up time', 0],
              ['7:00 AM', '07%3A00'],
              ['7:30 AM', '07%3A30'],
              ['8:00 AM', '08%3A00'],
              ['8:30 AM', '08%3A30'],
              ['9:00 AM', '09%3A00'],
              ['9:30 AM', '09%3A00'],
              ['10:00 AM', '10%3A00'],
              ['10:30 AM', '10%3A30'],
              ['11:00 AM', '11%3A00'],
              ['11:30 AM', '11%3A30'],
              ['12:00 PM', '12%3A00'],
              ['12:30 PM', '12%3A30'],
              ['1:00 PM', '13%3A00'],
              ['1:30 PM', '13%3A30'],
              ['2:00 PM', '14%3A00'],
              ['2:30 PM', '14%3A30'],
              ['3:00 PM', '15%3A00'],
              ['3:30 PM', '15%3A30'],
              ['4:00 PM', '16%3A00'],
              ['4:30 PM', '16%3A30'],
              ['5:00 PM', '17%3A00'],
              ['5:30 PM', '17%3A30'],
              ['6:00 PM', '18%3A00'],
              ['6:30 PM', '18%3A30'],
              ['7:00 PM', '19%3A00'],
            ]

  end

  def dinner
      @huid = session[:huid]
      
      t = Time.now
      
      if t.hour >= 0 and t.hour < 4
        @date = Date.today
      else
        @date = Date.today + 1.days
      end
      
      @my_date = [
              [@date.strftime("%A, %B %d"), @date],
              [(@date + 1.days).strftime("%A, %B %d"), @date + 1.days],
              [(@date + 2.days).strftime("%A, %B %d"), @date + 2.days],
              [(@date + 3.days).strftime("%A, %B %d"), @date + 3.days],
              [(@date + 4.days).strftime("%A, %B %d"), @date + 4.days],
              [(@date + 5.days).strftime("%A, %B %d"), @date + 5.days],
              [(@date + 6.days).strftime("%A, %B %d"), @date + 6.days],
            ]
      
      @locations = [
              ['Choose a location', 0],
              ['Annenberg', 'FD'], 
              ['Adams', 'AD'],
              ['Cabot', 'CB'],
              ['Currier', 'CU'],
              ['Dunster', 'DN'],
              ['Eliot', 'EL'],
              ['Kirkland', 'KI'],
              ['Leverett', 'LE'],
              ['Lowell', 'LO'],
              ['Mather', 'MA'],
              ['Pforzheimer', 'PF'],
              ['Quincy', 'QU'],
              ['Winthrop', 'WI']
            ]
            
      @pickuptimes = [
              ['Select a pick up time', 0],
              ['7:00 AM', '07%3A00'],
              ['7:30 AM', '07%3A30'],
              ['8:00 AM', '08%3A00'],
              ['8:30 AM', '08%3A30'],
              ['9:00 AM', '09%3A00'],
              ['9:30 AM', '09%3A00'],
              ['10:00 AM', '10%3A00'],
              ['10:30 AM', '10%3A30'],
              ['11:00 AM', '11%3A00'],
              ['11:30 AM', '11%3A30'],
              ['12:00 PM', '12%3A00'],
              ['12:30 PM', '12%3A30'],
              ['1:00 PM', '13%3A00'],
              ['1:30 PM', '13%3A30'],
              ['2:00 PM', '14%3A00'],
              ['2:30 PM', '14%3A30'],
              ['3:00 PM', '15%3A00'],
              ['3:30 PM', '15%3A30'],
              ['4:00 PM', '16%3A00'],
              ['4:30 PM', '16%3A30'],
              ['5:00 PM', '17%3A00'],
              ['5:30 PM', '17%3A30'],
              ['6:00 PM', '18%3A00'],
              ['6:30 PM', '18%3A30'],
              ['7:00 PM', '19%3A00'],
            ]
   
  end

  def confirmdinner

     @username = session[:huid]
      @password = session[:password]
      pickupdate = params[:date]
      pickuplocation = params[:location]
      pickuptime = params[:time]

      entree1 = params[:entree1]
      dressing1 = params[:dressing1]
      bread1 = params[:bread1]
      cheese1 = params[:cheese1]

      entree2 = params[:entree2]
      dressing2 = params[:dressing2]
      bread2 = params[:bread2]
      cheese2 = params[:cheese2]

      drink = params[:drink]
      fruit = params[:fruit]
      snack1 = params[:snack1]
      snack2 = params[:snack2]

      snackcounter = 0
      sandwichcounter = 0
  @str = "http://www.dining.harvard.edu/myhuds/students/dinner/?"
      unless drink.eql?("none")
        @str += "drink=" + drink
      end
      unless fruit.eql?("none")
        @str += "%26fruit=" + fruit
      end
      unless snack1.eql?("none")
        @str += "%26snacks[" + snackcounter.to_s() + "]=" + snack1
        snackcounter += 1
      end
      unless snack2.eql?("none")
        @str += "%26snacks[" + snackcounter.to_s() + "]=" + snack2
      end
      unless entree1.eql?("none")
        @str += "%26sandwiches[" + sandwichcounter.to_s() + "][type]=" + entree1
        unless dressing1.eql?("none")
          @str += "%26sandwiches[" + sandwichcounter.to_s() + "][dressing]=" + dressing1
        end
        unless bread1.eql?("none")
          @str += "%26sandwiches[" + sandwichcounter.to_s() + "][bread]=" + bread1
        end
        unless cheese1.eql?("none")
          @str += "%26sandwiches[" + sandwichcounter.to_s() + "][cheese]=" + cheese1
        end
        sandwichcounter += 1
      end
        unless entree2.eql?("none")
          @str += "%26sandwiches[" + sandwichcounter.to_s() + "][type]=" + entree2
        unless dressing2.eql?("none")
          @str += "%26sandwiches[" + sandwichcounter.to_s() + "][dressing]=" + dressing2
        end
        unless bread2.eql?("none")
          @str += "%26sandwiches[" + sandwichcounter.to_s() + "][bread]=" + bread2
        end
        unless cheese2.eql?("none")
          @str += "%26sandwiches[" + sandwichcounter.to_s() + "][cheese]=" + cheese2
        end
      end
          @str += "%26pickup=" + pickupdate + "%26order[delivery_time]=" + pickuptime + "%26order[location_id]=" + pickuplocation + "%26action=submit"


 destination = 'https://cloud.cs50.net/~ruthfong/pin.php'
    c = Curl::Easy.new(destination)
    c.http_post('huid=' + @username + '&password=' + @password + '&url=' + @str)
      @x = (c.body_str)
      
      if @x == '{"didWork":"no"}'
        @y = "didn't work"
      else
        @y = 'yep! it worked'
      end


  end

   def confirmlunch
     @username = session[:huid]
      @password = session[:password]
      pickupdate = params[:date]
      pickuplocation = params[:location]
      pickuptime = params[:time]

      entree1 = params[:entree1]
      dressing1 = params[:dressing1]
      bread1 = params[:bread1]
      cheese1 = params[:cheese1]

      entree2 = params[:entree2]
      dressing2 = params[:dressing2]
      bread2 = params[:bread2]
      cheese2 = params[:cheese2]

      drink = params[:drink]
      fruit = params[:fruit]
      snack1 = params[:snack1]
      snack2 = params[:snack2]

      snackcounter = 0
      sandwichcounter = 0
  @str = "http://www.dining.harvard.edu/myhuds/students/lunch/?"
      unless drink.eql?("none")
        @str += "drink=" + drink
      end
      unless fruit.eql?("none")
        @str += "%26fruit=" + fruit
      end
      unless snack1.eql?("none")
        @str += "%26snacks[" + snackcounter.to_s() + "]=" + snack1
        snackcounter += 1
      end
      unless snack2.eql?("none")
        @str += "%26snacks[" + snackcounter.to_s() + "]=" + snack2
      end
      unless entree1.eql?("none")
        @str += "%26sandwiches[" + sandwichcounter.to_s() + "][type]=" + entree1
        unless dressing1.eql?("none")
          @str += "%26sandwiches[" + sandwichcounter.to_s() + "][dressing]=" + dressing1
        end
        unless bread1.eql?("none")
          @str += "%26sandwiches[" + sandwichcounter.to_s() + "][bread]=" + bread1
        end
        unless cheese1.eql?("none")
          @str += "%26sandwiches[" + sandwichcounter.to_s() + "][cheese]=" + cheese1
        end
        sandwichcounter += 1
      end
        unless entree2.eql?("none")
          @str += "%26sandwiches[" + sandwichcounter.to_s() + "][type]=" + entree2
        unless dressing2.eql?("none")
          @str += "%26sandwiches[" + sandwichcounter.to_s() + "][dressing]=" + dressing2
        end
        unless bread2.eql?("none")
          @str += "%26sandwiches[" + sandwichcounter.to_s() + "][bread]=" + bread2
        end
        unless cheese2.eql?("none")
          @str += "%26sandwiches[" + sandwichcounter.to_s() + "][cheese]=" + cheese2
        end
      end
          @str += "%26pickup=" + pickupdate + "%26order[delivery_time]=" + pickuptime + "%26order[location_id]=" + pickuplocation + "%26action=submit"


 destination = 'https://cloud.cs50.net/~ruthfong/pin.php'
    c = Curl::Easy.new(destination)
    c.http_post('huid=' + @username + '&password=' + @password + '&url=' + @str)
      @x = (c.body_str)
      
      if @x == '{"didWork":"no"}'
        @y = "didn't work"
      else
        @y = 'yep! it worked'
      end



   end


 def confirm
     @username = session[:huid]
      @password = session[:password]
      @pickupdate = params[:date]
      @pickuplocation = params[:location]
      @pickuptime = params[:time]

          
      breakfast = ['%26items%5BHarvard%2BGranola%5D%3Don',
              '%26items%5B8%2Boz%2BYogurt%5D%3Don',
              '%26items%5B8%2Boz%2BCottage%2BCheese%5D%3Don',
              '%26items%5BPlain%2BBagel%5D%3Don',
              '%26items%5BWheat%2BBagel%5D%3Don',
              '%26items%5BCream%2BCheese%5D%3Don',
              '%26items%5BWhole%2BMilk%5D%3Don',
              '%26items%5BSkim%2BMilk%5D%3Don',
              '%26items%5BChocolate%2BMilk%5D%3Don',
              '%26items%5B8%2Boz%2BOrange%2BJuice%5D%3Don',
              '%26items%5BIndividual%2BOatmeal%5D%3Don',
              '%26items%5BIndividual%2BCereal%5D%3Don',
              '%26items%5BDaily%2BMuffin%5D%3Don']

      name = [
                'Harvard Granola',
                'Yogurt',
                'Cottage Cheese',
                'Plain Bagel',
                'Wheat Bagel',
                'Cream Cheese',
                'Whole Milk',
                'Skim Milk',
                'Chocolate Milk',
                'Orange Juice',
                'Individual Oatmeal',
                'Individual Cereal',
                'Daily Muffin']

        numbers = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]

      @items = Array.new
      x = 0
      for i in 0 ... numbers.length
        unless params[numbers[i].to_s()].nil?
          @items[x] = breakfast[i]
          x+=1
        end
      end

      @item_str = ""
      for i in 0 ... @items.length
        @item_str += @items[i]
      end

    @names = Array.new
    y = 0
    for i in 0 ... numbers.length
        unless params[numbers[i].to_s()].nil?
          @names[y] = name[i]
          y+=1
        end
    end

  #  @names_str = ""
   # for i in 0 ... @names.length
    #    @names_str += @names[i]
     #   @names_str += '<br />'
    #end


    @url = "http://www.dining.harvard.edu/myhuds/students/breakfast/?action%3Dsubmit%26pickup%3D" + @pickupdate + "%26pickup_list%3D0%26order%5Blocation_id%5D%3D" + @pickuplocation + "%26order%5Bdelivery_time%5D%3D" + @pickuptime + @item_str
    destination = 'https://cloud.cs50.net/~ruthfong/pin.php'
    c = Curl::Easy.new(destination)
    c.http_post('huid=' + @username + '&password=' + @password + '&url=' + @url)
      @x = (c.body_str)
      
      if @x == '{"didWork":"no"}'
        @y = "didn't work"
      else
        @y = 'yep! it worked'
      end


   end

  end

