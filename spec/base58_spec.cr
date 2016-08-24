require "./spec_helper"

EXAMPLES =  {
  "6hKMCS" => 3471391110,
  "6hDrmR" => 3470152229,
  "6hHHZB" => 3470988633,
  "6hHKum" => 3470993664,
  "6hLgFW" => 3471485480,
  "6hBRKR" => 3469844075,
  "6hGRTd" => 3470820062,
  "6hCuie" => 3469966999,
  "6hJuXN" => 3471139908,
  "6hJsyS" => 3471131850,
  "6hFWFb" => 3470641072,
  "6hENdZ" => 3470417529
}

describe Base58 do
  it "encodes" do
    EXAMPLES.each do |expected, integer|
      Base58.encode(integer).should eq(expected)
    end
  end

  it "decodes" do
    EXAMPLES.each do |base_58, expected|
      Base58.decode(base_58).should eq(expected)
    end
  end
end
