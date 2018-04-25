# @param {String} ransom_note
# @param {String} magazine
# @return {Boolean}
def can_construct(ransom_note, magazine)
    return true if ransom_note.empty?
    return false if magazine.empty?

    ransom_note.each_char do |ch|
        index = magazine.index(ch)
        if index
            magazine[index] = ""
        else
            return false
        end
    end

    true
end