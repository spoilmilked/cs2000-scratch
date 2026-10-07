use context url-file("https://raw.githubusercontent.com/neu-pdi/cs2000-public-resources/refs/heads/main/static/","cs2000.arr")

import statistics as S
include csv
cafe-data =
  table: day :: String, drinks-sold :: Number
    row: "Mon", 45
    row: "Tue", 30
    row: "Wed", 55
    row: "Thu", 40
    row: "Fri", 60
  end


drinks = get-column(cafe-data, "drinks-sold")


S.mean(drinks)
quiz-scores =
  table: student :: String, quiz1 :: Number, quiz2 :: Number, quiz3 :: Number
    row: "Alice", 85, 92, 78
    row: "Bob", 90, 88, 95
    row: "Charlie", 78, 85, 82
    row: "Diana", 95, 90, 88
  end

quiz11 = get-column(quiz-scores, "quiz1")
quiz22 = get-column(quiz-scores, "quiz2")
quiz33 = get-column(quiz-scores, "quiz3")
uno = S.mean(quiz11)
dos = S.mean(quiz22)
tres = S.mean(quiz33)

salaries-data = load-table:
  name:: String,
  department :: String,
  title :: String,
  regular :: Number,
  retro :: Number,
  other :: Number,
  OVERTIME,
  INJURED,
  DETAIL,
  QUINN_EDUCATION,
  TOTAL_GROSS,
  POSTAL
  source: csv-table-url("https://data.boston.gov/dataset/418983dc-7cae-42bb-88e4-d56f5adcf869/resource/29b3544f-752a-4cb1-a6af-a1de153d20a0/download/employee-earnings-report-2025.csv" , default-options)
end
get-column(