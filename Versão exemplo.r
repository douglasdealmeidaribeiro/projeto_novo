#versão 01
invest = 1000000
preco = 10
cv = 7
cf = 100000
deprec = 0.1*invest
residual = c(0,0,0,0,0.5*invest)
demanda = c(300000,350000,400000,450000,500000)
icm = 0.18
ir = 0.34
wacc = 0.1
receita_bruta = preco*demanda
deducoes = icm*receita_bruta
receita_liquida = receita_bruta-deducoes
custos =cv*demanda+cf
ebitda = receita_liquida-custos
lair = ebitda-deprec
irpj = ir*lair
resultado = lair-irpj
fc = resultado+deprec+residual
install.packages('FinancialMath')
library(FinancialMath)
vpl = NPV(-invest,fc,c(1,2,3,4,5),wacc)
vpl
