jQuery ->
  $('.table').dataTable
    sPaginationType: "full_numbers"
    aaSorting: [[0,'desc']]
    iDisplayLength: 10
