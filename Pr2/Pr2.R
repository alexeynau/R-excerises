# Часть 1 Задание 1 ---------------------------------------------------------------
m <- matrix(3, 3, 4)

# Изменение элементов
m[1, 3] = 4
m[2, 1] = 1
m[3, 2] = NA
m[3, 4] = 1
m


# Часть 1 Задание 2 -------------------------------------------------------
a <- c(1, 3, 4, 9, NA)
b <- c(5, 6, 7, 0, 2)
c <- c(9, 10, 13, 1, 20)

# матрица из векторов столбцами
m_cols <- cbind(a, b, c)
m_cols

# матрица из векторов строками
m_rows <- rbind(a, b, c)
m_rows


# Часть 1 Задание 3 -------------------------------------------------------
names <- c("Jane", "Michael", "Mary", "George")
ages <- c(8, 6, 28, 45)
gender <- c(0, 1, 0, 1)

# матрица из векторов 
m = cbind(names, ages, gender)
m

# добавление нового столбца
age_aq <- as.double(m[,2])^2
m <- cbind(m, age_aq)
m


# Часть 1 Задание 4 -------------------------------------------------------
info <-  list(names, ages, gender)

# вывести "Michael"
info[[1]][2]

# вывести gender
info[[3]]

# назвать векторы в списке и вывести names
info <- list(names=names, ages=ages, gender=gender)
names

# добавить вектор drinks
drinks <- c('juice', 'tea', 'rum', 'coffee')
info[[4]] <- drinks
info

# добавить ещё одного человека
names <- c("Jane", "Michael", "Mary", "George", 'John')
ages <- c(8, 6, 28, 45, 2)
gender <- c(0, 1, 0, 1, 1)
drinks <- c('juice', 'tea', 'rum', 'coffee', 'milk')

info <- list(names=names, ages=ages, gender=gender)
info


# Часть 1 Задание 5 -------------------------------------------------------
index <- "0,72;0,38;0,99;0,81;0,15;0,22;0,16;0,4;0,24"

# gsub == replaceAll
a <-  unlist(strsplit(gsub('[,]', '.', index), ';'))
as.double(a)


# Часть 2 Задание 1 -------------------------------------------------------
A <-  cbind(c(4, 9), c(9, 4))
A


# Часть 2 Задание 2 -------------------------------------------------------
eigen(A, only.values = TRUE)


# Часть 2 Задание 3 -------------------------------------------------------
B <- diag(x = 1, 2, 2) - A
B


# Часть 2 Задание 4 -------------------------------------------------------
f <-  c(4, 2)
u <-  c(0.2, -0.3)


# Часть 2 Задание 5 -------------------------------------------------------
u_result <- solve(A)
u_result


# Часть 2 Задание 6 -------------------------------------------------------
u1 <- B*u + f
u2 <- B*u1 + f
u3 <- B*u2 + f
u4 <- B*u3 + f
u5 <- B*u4 + f
u6 <- B*u5 + f
u7 <- B*u6 + f


# Часть 2 Задание 7 -------------------------------------------------------------------------
u_diff <- u7 - u_result
u_diff


# Часть 2 Задание 8 ------------------------------------------------------
A1 <- A/max(A)
f1 <- f/max(A)



# Часть 2 Задание 9 -------------------------------------------------------
eigen(A1, only.values = TRUE)

B1 <- diag(x = 1, 2, 2) - A1
B1

u_result1 <- solve(A)
u_result1

u1 <- B1*u + f1
u2 <- B1*u1 + f1
u3 <- B1*u2 + f1
u4 <- B1*u3 + f1
u5 <- B1*u4 + f1
u6 <- B1*u5 + f1
u7 <- B1*u6 + f1

u_diff1 <- u7 - u_result
u_diff1


# Часть 2 Задание 10 ------------------------------------------------------
u_diff1 - u_diff


# Часть 3 Задание 1 -------------------------------------------------------
step <- 1 # Шаг сетки
dekart_begin <- -5 # Начало сетки
dekart_end <- 5 # Конец сетки
# Задание сеточной поверхности
x <- seq(from = dekart_begin, to = dekart_end, by = step)
y <- x
# Задание двумерной функции на координатной сетке
surface_matrix <- outer(X = x,
                        Y = y,
                        FUN = function(x,y) Re(exp(-1i * 0.5 * x * y)))
dimnames(surface_matrix) <- list(x, y)
surface_matrix

path = "RStudio/MireaPractice/Pr2/files/summary.txt"
txt_ouput <- function(matrix, path_to_file) {
  output = c(
    sprintf( "number of matrix elements: %i", length(matrix)), 
    sprintf("number of rows: %i", length(matrix[1,])), 
    sprintf("number of cols: %i", length(matrix[,1])), 
    sprintf("sum of main diag elements: %f", sum(diag(matrix))), 
    sprintf("sum of middle row elements: %f", sum(matrix[6,])), 
    sprintf("sum of middle column elements: %f", sum(matrix[ ,6])), 
    sprintf("row sums: %s", toString(rowSums(matrix))), 
    sprintf("col sums: %s", toString(colSums(matrix)))
  )
  
  write(
    output,
    file = path_to_file, 
    append = TRUE
  )
}

txt_ouput(surface_matrix, path_to_file = path)


# Часть 3 Задание 2 -------------------------------------------------------
step <- as.integer(readline(prompt = 'step: ')) # Шаг сетки
dekart_begin <- as.integer(readline(prompt = 'dekart_begin: ')) # Начало сетки
dekart_end <- as.integer(readline(prompt = 'dekart_end: ')) # Конец сетки
# Задание сеточной поверхности
x <- seq(from = dekart_begin, to = dekart_end, by = step)
y <- x
# Задание двумерной функции на координатной сетке
surface_matrix <- outer(X = x,
                        Y = y,
                        FUN = function(x,y) Re(exp(-1i * 0.5 * x * y)))
dimnames(surface_matrix) <- list(x, y)
surface_matrix
path = "RStudio/MireaPractice/Pr2/files/summary2.txt"
txt_ouput(surface_matrix, path_to_file = path)


# Часть 3 Задание 3 -------------------------------------------------------
table <- read.table('RStudio/MireaPractice/Pr2/files/inputs.txt')
step <- as.integer(table[1, 1])
dekart_begin <- as.integer(table[2, 1])
dekart_end <- as.integer(table[3, 1])

# Задание сеточной поверхности
x <- seq(from = dekart_begin, to = dekart_end, by = step)
y <- x
# Задание двумерной функции на координатной сетке
surface_matrix <- outer(X = x,
                        Y = y,
                        FUN = function(x,y) Re(exp(-1i * 0.5 * x * y)))
dimnames(surface_matrix) <- list(x, y)
surface_matrix
path = "RStudio/MireaPractice/Pr2/files/summary3.txt"
txt_ouput(surface_matrix, path_to_file = path)



