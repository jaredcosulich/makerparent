# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$( ->
  ready = ->
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
    
    createPreviews = (originalFiles) ->
      console.log(originalFiles)
      
    failPhoto = ->
      console.log('fail')
    
    $('.cloudinary-fileupload').bind 'fileuploadprogress', (e, data) ->
      hideMobileMenus()
      newPhotoId = "photo-#{data.total}"
      createPreviews(data.originalFiles)
      progress = $(".#{newPhotoId} .progress")
      progress.css('width', Math.round((data.loaded * 100.0) / data.total) + '%'); 

    $('.cloudinary-fileupload').bind 'fileuploadfail', (e, data) ->
      failPhoto(originalFile(data))

    $('.cloudinary-fileupload').bind 'cloudinarydone', (e, data) ->
      photo = $(".photo-#{data.total}")

      if data.result.resource_type == 'raw'
        failPhoto(originalFile(data), true)
        return true

      photo.removeClass('loading')
      preview = photo.find('.preview')
      preview.html(
        $.cloudinary.image(data.result.public_id, { 
          format: data.result.format, version: data.result.version, 
          crop: 'fill', width: 240, height: 180, quality: 50
        })
      )

      for file, index in data.originalFiles
        if file.size == data.total
          saveFile(file, data)
          
      return true
    
    

    
  $(document).ready(ready)
  $(document).on('page:load', ready)
    
)