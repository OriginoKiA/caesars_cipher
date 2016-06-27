def cipher(text,shift):
    shift = check_shift(shift)
    new_text = ""
    for word in text:
        if ord(word) == 32: #ignore spaces
            new_text += word
        else:
            new_text += chr(ord(word)+shift)
    print(new_text)

def check_shift(shift):
    if shift >= 26:
        shift -= 26
        return shift
    elif shift <= -26:
        shift += 26
        return shift
    else:
        return shift

def decipher(text,shift):
    shift = check_shift(shfit)
    new_text = ""
    for word in text:
        if ord(word) == 32:
            new_text += word
        else:
            new_text += chr(ord(word)-shift)
    print(new_text)

cipher("Hello",1)
