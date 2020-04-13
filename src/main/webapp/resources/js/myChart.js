function renderChart(data, labels) {
    var ctx = document.getElementById("myChart").getContext('2d');
    var inputOptions = {
        legend: {
            display: false,
            position: 'bottom'
        },
        title: {
            display: true,
            text: 'Whisky Details'
        },
        scale: {
            ticks: {
                beginAtZero: true
            }
        }
    };

    var myChart = new Chart(ctx, {
        type: 'radar',
        data: {
            labels: labels,
            datasets: [{
                data: data,
            }]
        },
        options: inputOptions
    });
}




