module PostsHelper
    def format_date(date)
        date.in_time_zone("Taipei").strftime("%Y/%m/%d %H:%M")
    end
end
