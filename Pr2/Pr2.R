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
a = unlist(strsplit(gsub('[,]', '.', index), ';'))
as.double(a)


