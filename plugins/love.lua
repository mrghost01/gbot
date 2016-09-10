function run(msg, matches)
    local text = URL.escape(matches[2])

    local url = "http://www.iloveheartstudio.com/-/p.php?t="..text.."%0D%0A&bc=FFFFFF&tc=000000&hc=FF0000&f=c&uc=1&ts=tc&ff=PNG&w=500&ps=sq"
     local  file = download_to_file(url,'keep.webp')
      send_document(get_receiver(msg), file, ok_cb, false)

        
end


return {

  patterns = {
   "^[/!#]([Ll]ove) (.*)$",
  },
  run = run
}
