# 将公元纪年数转换为太乙积年数
TaiYiJiNianShu <- function(x){
  
  # 如果输入公元前纪年为负，则输出加1后加上10153977的结果
  if (x < 0) {
    x <- x + 1 + 10153977
  } else {
    # 输入公元后纪年数值为正，则直接加上10153977的结果
    x <- x + 10153977
  }
  
  # 返回结果
  return(x)
}
TaiYiJiNianShu(-1)
TaiYiJiNianShu(0)
TaiYiJiNianShu(2023)

TaiYiGongShu <- function(x){
  result <- x %% 24
  return(list(DeShu=floor(result/3), YuShu=result%%3))
}

TaiYiGongShu(TaiYiJiNianShu(2023))

