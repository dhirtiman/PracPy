def Rectangle(Len,bred):
    
    return Len*bred

def Square(Len):

    return Len*Len

def Circle(Rad):
    pi = 3.142857142857143

    return pi*Rad*Rad

def Triangle(base,hite):

    return 0.5*base*hite





while True:
    print('Menu:')
    print('Area: ')
    print('     1.Rectangle')
    print('     2. Square')
    print('     3. Circle')
    print('     4. Triangle')
    print('     5. Exit')

    choice = input("Enter your choice (1,2,3,4 or 5)\n")

    if choice == '1':
       LB_str = input("Enter Lenght and Breadth: ")
       LB_list = LB_str.split()
       LB_list = [int(LB) for LB in LB_list]
       Area = Rectangle(LB_list[0],LB_list[1])
       print('Area of the Rectangle: ',Area)

    elif choice == '2':
        side = int(input("Enter Square side: "))
        Area = Square(side)
        print('Area of the Sqaure: ',Area)
    elif choice == '3':
        Rad = float(input('Enter Radius: '))
        Area = Circle(Rad)
        print('Area of the CIrcle: ',Area)
    elif choice == '4':
        BH_str = input('Enter the base and height of the triangle')
        BH_list = BH_str.split()
        BH_list = [int(x) for x in BH_list]
        Area = Triangle(BH_list[0],BH_list[1])
        print('Area of the Triangle: ',Area)

    elif choice == '5':
        print('saynoyara!')
        break
    else: 
        print('invalid choice DO IT AGAIN!')  
