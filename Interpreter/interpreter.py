def interpreter(text,flag):
    sym=1
    count=0
    left=0
    if flag==1:
        if text[0] == '-':
            sym=-1
        text=text[1:]
    for i in text:
        try:
            left=left*10+float(i)
            count=count+1
        except:
            break
    if count>0:
        right=0
        f=0
        index=count+1
        for i in range(index,len(text)):
            try:
                right=right*10+float(text[i])
                f=f+1
            except:
                break
        left=left*sym
        if f>0:
            if text[count]=='+':
                print'[out]', left+right
            elif text[count]=='-':
                print '[out]',left-right
            elif text[count]=='*':
                print '[out]',left*right
            elif text[count]=='/':
                print '[out]',left/right
            elif text[count]=='%':
                print '[out]',left%right
            elif text[count]=='^':
                print '[out]',left**right
            else:
                print'[out]',"Invalid input see the middle"
        else:
            print '[out]',"Invalid input see the ending"
    else:
        print'[out]',"Invalid input see the starting"
while True:    
    text=raw_input('>')
    text = text.replace(" ", "")
    left=0
    count=0
    flag=0
    sym='+'
    try:
        int(text[0])
    except:
        flag=1
        sym=text[0]
    if sym!='+' and sym!='-':
        print '[out]',"Invalid input see the starting"
    else:
        interpreter(text,flag)



