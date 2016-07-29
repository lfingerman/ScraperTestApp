module LeonardTestDemo
  class Parser
    def initialize (url)
      @data =  open(url) { |f| Hpricot(f) }
    end

    def parse_num_comments(index)
      num_reports = @data.search("//div[@class='oos_previewSide']/span[@class='postCount']")[index].innerHTML
    end

    def parse_phone_number(index)
      @data.search("//a[@class='oos_previewTitle']")[index].innerHTML
    end

    def parse_area_code(index)
      @data.search("//span[@class='wideScrOnly']/a[@href='AreaCode.aspx'")[index].innerHTML.split[0]
    end

    def parse_comments(index)
      @data.search("//div[@class='oos_previewBody']")[index].innerHTML
    end

    def num_list_entries
      @data.search("//li[@class='oos_listItem']").count
    end

  end
end


