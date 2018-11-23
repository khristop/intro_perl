#!/usr/bin/perl

use Spreadsheet::WriteExcel;

my $workbook = Spreadsheet::WriteExcel->new('init.xls');

my $worksheet = $workbook->add_worksheet();

$worksheet->write( 'A1', 'Hello World!');

my $red_background = $workbook->add_format(
    color => 'white',
    bg_color => 'red',
    bold => 1,
);

my $bold = $workbook->add_format(
    bold => 1,
);

$worksheet->write(0, 1, 'Colored Red', $red_background);
$worksheet->write(0, 2, 'Bold cell', $bold);

my $numstring = '01234';


$worksheet->write_string(0, 3, $numstring);
$worksheet->write( 'D2', 37 );
$worksheet->write( 'D3', 42 );
$worksheet->write( 'D4', '= D2 + D3');



