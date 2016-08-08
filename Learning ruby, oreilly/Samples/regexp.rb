#!/usr/bin/env ruby

sonnet = <<129
I all alone beweep my outcast state,
And trouble deaf heaven with my bootless cries,
And look upon myself, and curse my fate,
Wishing me like to one more rich in hope,
Featured like him, like him with friends possessed,
Desiring this man's art, and that man's scope,
With what I most enjoy contented least;
Yet in these thoughts my self almost despising,
Haply I think on thee, and then my state,
Like to the lark at break of day arising
From sullen earth, sings hymns at heaven's gate;
For thy sweet love remembered such wealth brings
That then I scorn to change my state with kings.
129

result = sonnet.scan(/^Haply/)
result << sonnet.scan(/gate;$/)

puts result
