def FahrenheitToCelsius(temp):
    Celsius = (temp - 32) * 5/9

    return round(Celsius,2)

def CelsiusToFahrenheit(temp):
    Fahrenheit = (9/5)* temp + 32
    return round(Fahrenheit,2)

while True:
    print('Menu:')
    print('1.Convert Farenheit to Celsius')
    print('2.Convert Celsius to Farenheit')
    print('3. exit')

    choice = input("Enter your choice (1,2 or 3)\n")

    if choice == '1':
        f_temp  =  float(input('Enter Temperature in Fahrenheit: '))
        c_temp = FahrenheitToCelsius(f_temp)
        print(c_temp)

    elif choice == '2':
        c_temp =  float(input('Enter Temperature in Celsius: '))
        f_temp  =  CelsiusToFahrenheit(c_temp)
        
        print(f_temp)

    elif choice == '3':
        print('saynoyara!')
        break
       
    else: 
        print('invalid choice DO IT AGAIN!')  
