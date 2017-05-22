for src in 00 01 02 03 04 05 06 07 08 09
do
  for rot in -6 -4 -2 0 2 4 6
  do
    for sx in 4 6 8 10
    do
      for sy in 4 6 8 10
      do
        for dx in -4 -2 0 2 4
        do
          for dy in -4 -2 0 2 4
          do
            convert -gravity southeast -splice ${sx}x${sy} -gravity northwest -splice ${sx}x${sy} -rotate $rot -roll +${dx}+${dy} -threshold 50000 -resize 64x64 data/${src}.jpg augmented_data/${src}_${rot}_${sx}_${sy}_${dx}_${dy}.png
          done
        done
      done
    done
  done
done
