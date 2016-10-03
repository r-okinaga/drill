require 'strscan'

class Othello

    def initialize(pieces)
        @pieces = pieces
    end

    def reverse
        ##連続した同じ色の石を1セットとして、引数が2セット以下になるまで繰り返す。
        pieces = parse @pieces
        while 2 < pieces.size
            pieces = _reverse pieces
        end
        @pieces = pieces.join
    end

    def black_count
        @pieces.count 'b'
    end

    private
    def parse(pieces)
        p = []
        s = StringScanner.new(pieces)
        until s.eos?
            case
                when s.scan(/w+|b+/)
                    p << s[0]
                else
                    raise "Unknown token"
            end
        end
        p
    end

    def _reverse(pieces)
        pieces = parse(pieces.join)

        pieces.map! do |p|
            case pieces.index p
                ##端の石は裏返さない
                when 0, pieces.count - 1
                    p
                else
                    case p
                        when /b+/
                            'w' * p.length
                        else
                            'b' * p.length
                    end
            end
        end
        pieces
    end
end

while str = STDIN.gets
    breake if str.chomp =~ /q+/
    o = Othello.new str.chomp
    o.reverse
    p o.black_count
end
