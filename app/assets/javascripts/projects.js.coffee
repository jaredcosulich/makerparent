# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$( ->
  ready = ->
    if location.hash.replace(/#/, '').length > 0
      setTimeout(( -> $(window).scrollTop($(window).scrollTop() - 90)), 100)
    
    $("#add-#{info[1]}").modal() if (info = location.href.match(/dialog=(\w+)/))

    $('.form-group .btn-checkbox').bind 'click', ->
      formGroup = $(this).closest('.form-group')
      formGroup.find('.btn-checkbox').removeClass('btn-primary')
      $(this).addClass('btn-primary')
      formGroup.find('input').val((if $(this).html().toLowerCase() == 'no' then 0 else 1))
    
    setSearchLink = ->
      getValue = (name) -> $(".#{name}-selection").html().replace(/\s/g, '').toLowerCase()
      
      link = $('.search')
      queryParams = []
      queryParams.push("age=#{parseInt(getValue('age'))}") if $('.age-selection').length
      queryParams.push("sort=#{getValue('sort')}") if $('.sort-selection').length
      queryParams.push("sort2=#{getValue('sort2')}") if $('.sort2-selection').length
      link.attr(href: "#{link.data('path')}?#{queryParams.join('&')}" )

    bindFilter = (name) ->
      $(".#{name}-dropdown a").bind 'click', (e) ->
        $(".#{name}-dropdown li").removeClass('active')
        $(".#{name}-selection").html($(this).html())
        $(this).closest('li').addClass('active')
        setSearchLink()

    bindFilter(name) for name in ['age', 'sort', 'sort2']
    setSearchLink()
    
    
    saveFile = (file, data, callback) ->
      form = $('.cloudinary-fileupload').closest('form')
      $.ajax
        method: 'POST',
        url: form.attr('action'),
        data: {
          experience_photo: {
            experience_id: form.data('id')
            date_taken: (data.result.exif?.DateTime or '').replace(/:/, '/').replace(/:/, '/'),
            href_large: data.result.url,
            href_small: data.result.eager[0].url,
            cloudinary_id: data.result.public_id    
          }
        },
        dataType: 'json'#,
        success: callback,
        #error: (-> console.log('error', file)),
        #complete: (-> console.log('complete', file))
    
    failPhoto = ->
      console.log('fail')
    
    $('.cloudinary-fileupload').bind 'fileuploadprogress', (e, data) ->
      $('#add-experience_photos').modal('hide')
      experienceId = $('#add-experience_photos').data('id')
      location.hash = "experience#{experienceId}"

      status = $("#photo#{data.total}")
      unless status.length
        container = $(document.createElement('DIV'))
        container.addClass('progress-container')
        status = $(document.createElement('DIV'))
        status.attr('id', "photo#{data.total}")
        status.addClass('progress')
        container.append(status)
        $("#experience_photos_#{experienceId}").append(container)        
      
      status.css('width', Math.round((data.loaded * 100.0) / data.total) + '%'); 

    $('.cloudinary-fileupload').bind 'fileuploadfail', (e, data) ->
      failPhoto(originalFile(data))

    savedFiles = {}
    $('.cloudinary-fileupload').bind 'cloudinarydone', (e, data) ->
      
      if data.result.resource_type == 'raw'
        failPhoto(originalFile(data), true)
        return true

      # preview.html(
      #   $.cloudinary.image(data.result.public_id, { 
      #     format: data.result.format, version: data.result.version, 
      #     crop: 'fill', width: 240, height: 180, quality: 50
      #   })
      # )

      for file, index in data.originalFiles
        if file.size == data.total
          do (file, data) ->
            callback = ->
              savedFiles[file.size] = true
              for f in data.originalFiles
                return unless savedFiles[f.size]
              href = location.href 
              location.href = href.replace(/\?.*/, '').replace(/#.*/, '') + "#experience#{$('#add-experience_photos').data('id')}"
              location.reload() if href.indexOf('?') == -1
              
            saveFile(file, data, callback)
          
      return true
    
    

    
  $(document).ready(ready)
  $(document).on('page:load', ready)
    
)