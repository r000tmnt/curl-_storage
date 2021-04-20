$(document).ready(function(){
    
    function getFiles(){

        var list =  $('.file');

        if(list.length === 0){
            $.ajax({
                type: 'get',
                url: './php/getFiles.php',
                success: function(data){
                    var sorted = JSON.parse(data)

                    for(let i=0; i < sorted.length; i++){
                        let newFile = '<a class="file col-12 col-md-3 col-sm-5" href="./api/v1/files/'+ sorted[i]['name'] +'" download><img src="./api/v1/files/'+ sorted[i]['name'] +'"><span class="file_info">'+ sorted[i]['name'] + '<br>' + convert_size(sorted[i]['size'])  +'<span></a>'                    
                        $('.files').append(newFile)
                    }
                }
            })             
        }else{
            $('.files').empty()
            $.ajax({
                type: 'get',
                url: './php/getFiles.php',
                success: function(data){
                    console.log(data);
                    var sorted = JSON.parse(data)
                    console.log(sorted)

                    for(let i=0; i < sorted.length; i++){
                        let newFile = '<a class="file col-12 col-md-3 col-sm-5" href="./api/v1/files/'+ sorted[i]['name'] +'" download><img src="./api/v1/files/'+ sorted[i]['name'] +'"></a>'                    
                        $('.files').append(newFile)
                    }
                }
            })             
        }
       
    }

    function convert_size(size){
        let sizes = ['KB', 'MB', 'GB', 'TB']
        if(size === 0){
            return size = '0 Byte'
        }

        
        for(let i=0; parseInt(size) > 1024; i++){
            size = parseInt(size) / 1024;

            if(parseInt(size) < 1024){
                return size.toFixed(2) + sizes[i];
            }
        }   
    }

    getFiles();

    $('#upload').click(function(){
        console.log('hi')
        $('aside').show()
    })

    $('#upload_file').change(function(){
        var fileName = $('#upload_file')
        for(let i=0; i < fileName[0].files.length; i++){
            $('.prepare_list').append('<li>'+fileName[0].files[i].name+'</li>')
        }
    })

    $('.close').click(function(){
        $('aside').hide()
        var fileName = $('#upload_file')
        fileName[0].files.length = 0
        $('.prepare_list').empty()
    })

    $('.upload_window').submit(function(event){
        event.preventDefault()

        $.ajax({
            type: 'post',
            url: './php/upload.php',
            data: new FormData(this),
            contentType: false,
            cache: false,
            processData: false,
            success: function(data){
                console.log(data);

                getFiles();
            }
        })
    })
})