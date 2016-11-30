p = Poly([1.0, 2.2])
s1 = lfd(p,p)

rfd(p,p)

p1 = Poly([1,2,3])
p2 = Poly([1,4,2])
P1 = [p1 p2; p2 p1]
P2 = fill(Poly([1.0,0]),2,2)

Pm1 = PolyMatrix(P1)
Pm2 = PolyMatrix(P2)
Pm3 = PolyMatrix(speye(Float64,2),(2,2))

s = lfd(Pm1,Pm3,1.0)


convert(RationalTF{Siso{true},Continuous{true}}, s1)

sisotype(s)

continuoustype(s)

numstates(s)
