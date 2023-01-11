test: transactions_count_is_accurate {
  explore_source: transaction {
    column: transaction_count {
      field: transaction.transaction_count
    }
    filters: [transaction.date_year: "2020"]
  }
  assert: transaction_count_is_expected_value {
    expression: ${transaction.transaction_count} = 50000 ;;
  }
}
