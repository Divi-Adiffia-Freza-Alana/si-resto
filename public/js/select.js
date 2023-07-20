$(function () {
    $('#selectuser').select2({
        placeholder: 'Select Users',
          ajax: {
              url: '/selectuser',
              dataType: 'json',
              delay: 250,
              processResults: function (data) {
                  return {
                      results: $.map(data, function (item) {
                          return {
                              text: item.name,
                              id: item.id
                          }
                      })
                  };
              },
              cache: true
          }
      });
});


$(function () {
    $('#selectbagdapur').select2({
        placeholder: 'Select Bag Dapur',
          ajax: {
              url: '/selectbagdapur',
              dataType: 'json',
              delay: 250,
              processResults: function (data) {
                  return {
                      results: $.map(data, function (item) {
                          return {
                              text: item.nama,
                              id: item.id
                          }
                      })
                  };
              },
              cache: true
          }
      });
});




$(function () {
    $('#selectmeja').select2({
        placeholder: 'Select Meja',
          ajax: {
              url: '/selectmeja',
              dataType: 'json',
              delay: 250,
              processResults: function (data) {
                  return {
                      results: $.map(data, function (item) {
                          return {
                              text: item.nomor,
                              id: item.id
                          }
                      })
                  };
              },
              cache: true
          }
      });
});
