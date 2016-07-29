module LeonardTestDemo
  class PageScraper

  attr_accessor :all_entries

    def initialize(url)
      @parser = Parser.new(url)
      @all_entries = fetch_all_entries
    end

    def self.to_json
      @all_entries.map { |entry| Hash[entry.each_pair.to_a] }.to_json
    end

  private
    def fetch_all_entries
      @all_entries = []
      (0..@parser.num_list_entries-1).each do |index|
        @all_entries.push({'area_code':@parser.parse_area_code(index),'phone_number':@parser.parse_phone_number(index),
                           'comments':@parser.parse_comments(index), 'number_of_comments':@parser.parse_num_comments(index)})
      end
      @all_entries
    end


  end
end