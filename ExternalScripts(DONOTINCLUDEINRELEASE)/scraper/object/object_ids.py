# https://www.wowhead.com/classic/objects?filter=6;2;11500
# r = []
# document.getElementsByClassName("listview-cleartext").forEach(l => r.push(parseInt(l.href.substr(39, 6)))); r; // run for each page
# [...new Set(r)].sort();
OBJECT_IDS = [
    386675,
    386691,
    386759,
    386777,
    387446,
    387466,
    387477,
    392029,
    397987,
    402215,
    402537,
    402572,
    402573,
    403041,
    403102,
    403105,
    403718,
    404352,
    404433,
    404695,
    404830,
    404846,
    404847,
    404888,
    404911,
    404941,
    405149,
    405201,
    405628,
    405633,
    405827,
    405879,
    405901,
    405902,
    405903,
    405946,
    406006,
    406736,
    407117,
    407120,
    407247,
    407289,
    407291,
    407312,
    407347,
    407352,
    407453,
    407454,
    407457,
    407505,
    407510,
    407566,
    407708,
    407709,
    407710,
    407731,
    407732,
    407734,
    407844,
    407850,
    407918,
    407983,
    408004,
    408014,
    408718,
    408799,
    408802,
    408877,
    409131,
    409144,
    409289,
    409311,
    409315,
    409496,
    409501,
    409562,
    409692,
    409700,
    409711,
    409717,
    409731,
    409735,
    409754,
    409758,
    409942,
    409949,
    410020,
    410034,
    410082,
    410089,
    410168,
    410220,
    410299,
    410369,
    410528,
    410779,
    410847,
    411328,
    411348,
    411620,
    411674,
    411710,
    411715,
    414532,
    414624,
    414646,
    414658,
    414663,
    414713,
    414904
]