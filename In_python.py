a = [['*','*','*'],['*','*','*'],['*','*','*']]
i = 0
used = []
over = 0
w = 2
def print_metrix(a):
    for i in a:
        for j in i:
            print(j,sep='',end='  ')
        print()

def row_col(x):
    r = 0
    c = 0
    r = (x-1) // 3
    #print(r,x)
    if r == 0:
        c = x - 1
    elif r == 1:
        c = x - 4
    elif r == 2:
        c = x - 7
    #print('c=',c)
    if i%2 == 0:
        a[r][c] = 'X'
    else:
        a[r][c] = '0'

def repeater():
    print('value alrady used can\'t repeat')
    print('enter other value')
    u=int(input())
    if u not in used:
        row_col(u)
        print_metrix(a)
        used.append(u)
    else:
        repeater()

def winner():
    w=5
    if a[0][0] == a[1][1] and a[0][0] == a[2][2] and a[2][2] != '*':
        w = a[0][0]
        print(w,'1')
    elif a[0][2] == a[1][1] and a[1][1] == a[2][0] and a[2][0] != '*':
        w = a[2][2]
        print(w,'2')

    elif a[0][0] == a[0][1] and a[0][0] == a[0][2] and a[0][0] != '*':
        w = a[0][0]
        print(w,'3')
    elif a[1][0] == a[1][1] and a[1][0] == a[1][2] and a[1][0] != '*':
        w = a[1][0]
        print(w,'4')
    elif a[2][0] == a[2][1] and a[2][0] == a[2][2] and a[2][2] != '*':
        w = a[2][0]
        print(w,'5')

    elif a[0][0] == a[1][0] and a[0][0] == a[2][0] and a[2][0] != '*':
        w = a[0][0]
        print(w,'6')
    elif a[0][1] == a[1][1] and a[0][1] == a[2][1] and a[2][1] != '*':
        w = a[0][1]
        print(w,'7')
    elif a[0][2] == a[1][2] and a[0][2] == a[2][2] and a[2][1] != '*':
        w = a[0][2]
        print(w,'8')
    if w == 'X' or w == '0':
        print('Winner is : ', w)
        return 1
    return 0



print('start the game:')
print_metrix(a)

while over == 0 and i < 9:
    x=int(input('enter val'))
    #print(x)
    if x not in used:
        row_col(x)
        print_metrix(a)
        used.append(x)
    else:
        repeater()

    if i>=4:
        over = winner()
    i+=1


print('**********END game**********')

