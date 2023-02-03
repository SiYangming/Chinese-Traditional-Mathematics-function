# 定义函数
def TaiYiJiNianShu(num):
    # 如果输入数字为负数，则加1后加上10153977
    if num < 0:
        result = num + 1 + 10153977
    else:
        result = num + 10153977
    return result

def TaiYiGongShu(num):
    result = num % 24
    return [int(result/3), result%3]

# 获取用户输入
input_num = int(input("请输入一个数字："))
# 调用函数并输出结果
print("输出结果：", TaiYiJiNianShu(input_num))
print("输出结果：", TaiYiGongShu(TaiYiJiNianShu(input_num)))
