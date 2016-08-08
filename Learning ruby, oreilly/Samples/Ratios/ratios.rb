#!/usr/bin/env ruby
# This class provides a few methods for calculating financial ratios.
# So far, three ratios are available:
# 1. debt-equity ratio (_der_)
# 2. long-term debt ratio (_ltdr_)
# 3. total debt ratio (_tdr_)
#
# Author:: Mike Fitzgerald (mailto:mike@example.com)
# Copyright:: Wy'east Communications 
#
# :title:Ratios

class Ratios

# The +new+ class method initializes the class.
# === Parameters
# * _debt_ = long-term debt
# * _equity_ = equity
# === Example
#  ratios = Ratios.new( 2456, 9876 )

 def initialize( debt, equity )
   @debt = debt
   @equity = equity 
 end

# The <tt>ltdr</tt> method returns a long-term debt ratio.
# === Formula
#     long-term debt 
#  -------------------- = long-term debt ratio
#  long-term debt/equity 
# === Parameters
# The parameters are:
# * <i>debt</i> = long-term debt
# * <i>equity</i> = equity
# === Example
#  ratios = Ratios.new( 2456, 9876 )
#  ratios.ltdr # => The long-term debt ratio is 0.20.
#  ratios.ltdr 1234, 56789 # => The long-term debt ratio is 0.02.

 def ltdr( debt=@debt, equity=@equity )
   ratio = debt/(debt+equity).to_f
   printf( "The long-term debt ratio is %.2f.\n", ratio )
   ratio
 end

# The <tt>der</tt> method returns a debt-equity ratio.
# === Formula
#     long-term debt 
#  -------------------- = debt-equity ratio
#         equity 
# === Parameters
# The parameters are:
# * <i>debt</i> = long-term debt
# * <i>equity</i> = equity
# === Example
#  ratios = Ratios.new( 2456, 9876 )
#  ratios.der # => The debt-equity ratio is 0.25.
#  ratios.der( 1301, 7690 ) # => The debt-equity ratio is 0.17.

 def der( debt=@debt, equity=@equity )
   ratio = debt/equity.to_f
   printf( "The debt-equity ratio is %.2f.\n", ratio )
   ratio
 end

# The class method +tdr+ returns total debt ratio.
# === Formula
#    total liabilities
#  -------------------- = total debt ratio
#      total assets
# === Parameters
# The parameters are:
# * _liabilities_ = total liabilities
# * _assets_ = total assets
# === Example
#   Ratios.tdr( 14_000, 23_000 ) # => The total debt ratio is 0.61.

 def Ratios.tdr( liabilities, assets )
   ratio = liabilities/assets.to_f
   printf( "The total debt ratio is %.2f.\n", ratio )
   ratio
 end

end
