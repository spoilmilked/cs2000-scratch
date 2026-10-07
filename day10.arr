use context url-file("https://raw.githubusercontent.com/neu-pdi/cs2000-public-resources/refs/heads/main/static/","cs2000.arr")

fun apply-discounts(t :: Table) -> Table:
  doc: "transforms 'price' column by reducing 20%, if value is below 100"
  transform-column(t, "price", lam(price :: Number) -> Number: 
    if price < 100: price * 0.8 else: price end
  end)
where:
  test-table =
    table: price
      row: 50
      row: 120
      row: 80
      row: 40
    end
  apply-discounts(test-table) is
  table: price
    row: 50 * 0.8
    row: 120
    row: 80 * 0.8
    row: 40 * 0.8
  end
end

