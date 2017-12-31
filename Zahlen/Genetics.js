var tq84 = tq84 || {};

tq84.Genetics={};
tq84.Genetics.AminoAcids={};
tq84.Genetics.Codons    ={};

(function() { // Init Amino Acids

  let aa=tq84.Genetics.AminoAcids;
  
  aa.aspartic_acid  = {   m: 133.10 , ab_1: 'D', ab_3: 'Asp', grm: 'Asparaginsäure'  , wp: 'Asparagins%C3%A4ure'};
  aa.asparagine     = {   m: 132.12 , ab_1: 'N', ab_3: 'Asn', grm: 'Asparagin'       , wp: 'Asparagin'          };
  aa.alanine        = {   m:  89.09 , ab_1: 'A', ab_3: 'Ala', grm: 'Alanin'          , wp: 'Alanin'             }; /* de.wikipedia.org/wiki/Alanin: 89.10 */
  aa.leucine        = {   m: 131.17 , ab_1: 'L', ab_3: 'Leu', grm: 'Leucin'          , wp: 'Leucin'             }; /* de/en.wikipedia.org/wiki/Leucin: 131.18 */
  aa.arginine       = {   m: 174.20 , ab_1: 'R', ab_3: 'Arg', grm: 'Arginin'         , wp: 'Arginin'            };
  aa.phenyl_alanine = {   m: 165.19 , ab_1: 'F', ab_3: 'Phe', grm: 'Phenylalanin'    , wp: 'Phenylalanin'       };
  aa.proline        = {   m: 115.13 , ab_1: 'P', ab_3: 'Pro', grm: 'Prolin'          , wp: 'Prolin'             };
  aa.isoleucine     = {   m: 131.17 , ab_1: 'I', ab_3: 'Ile', grm: 'Isoleucin'       , wp: 'Isoleucin'          };
  aa.lysine         = {   m: 146.19 , ab_1: 'K', ab_3: 'Lys', grm: 'Lysin'           , wp: 'Lysin'              };
  aa.tyrosine       = {   m: 181.19 , ab_1: 'T', ab_3: 'Tyr', grm: 'Tyrosin'         , wp: 'Tyrosin'            };
  aa.threonine      = {   m: 119.12 , ab_1: 'T', ab_3: 'Thr', grm: 'Threonin'        , wp: 'Threonin'           };
  aa.methionine     = {   m: 149.21 , ab_1: 'M', ab_3: 'Met', grm: 'Methionin'       , wp: 'Methionin'          };
  aa.histidine      = {   m: 155.15 , ab_1: 'H', ab_3: 'His', grm: 'Histidin'        , wp: 'Histidin'           }; /* de/en.wikipedia.org/wiki/Histidin: 155.16 */
  aa.tryptophan     = {   m: 204.23 , ab_1: 'W', ab_3: 'Trp', grm: 'Tryptophan'      , wp: 'Tryptophan'         }; /* L- u. D-Tryptophan */
  aa.serine         = {   m: 105.09 , ab_1: 'S', ab_3: 'Ser', grm: 'Serin'           , wp: 'Ser'                };
  aa.cysteine       = {   m: 121.16 , ab_1: 'C', ab_3: 'Cys', grm: 'Cystein'         , wp: 'Cystein'            };
  aa.glutamic_acid  = {   m: 147.13 , ab_1: 'E', ab_3: 'Glu', grm: 'Glutaminsäure'   , wp: 'Glutamins%C3%A4ure' };
  aa.glutamine      = {   m: 146.14 , ab_1: 'Q', ab_3: 'Gln', grm: 'Glutamin'        , wp: 'Glutamin'           }; /* de/en.wikipedia.org/wiki/Glutamin: 146.15 */
  aa.glycine        = {   m:  75.07 , ab_1: 'G', ab_3: 'Gly', grm: 'Glycin'          , wp: 'Glycin'             };
  aa.valine         = {   m: 117.15 , ab_1: 'V', ab_3: 'Val', grm: 'Valin'           , wp: 'Valin'              };
})();
(function() { // Init Codons
  let aa=tq84.Genetics.AminoAcids;
  let cd=tq84.Genetics.Codons;

  cd.ttt = { aa: aa.phenyl_alanine       }; cd.tct = { aa: aa.serine         }; cd.tat = { aa: aa.tyrosine           }; cd.tgt = { aa: aa.cysteine       };
  cd.ttc = { aa: aa.phenyl_alanine       }; cd.tcc = { aa: aa.serine         }; cd.tac = { aa: aa.tyrosine           }; cd.tgc = { aa: aa.cysteine       };
  cd.tta = { aa: aa.leucine              }; cd.tca = { aa: aa.serine         }; cd.taa = { aa:'Stopcodon'            }; cd.tga = { aa:'Stopcodon'        };
  cd.ttg = { aa: aa.leucine              }; cd.tcg = { aa: aa.serine         }; cd.tag = { aa:'Stopp'                }; cd.tgg = { aa: aa.tryptophan     };

  cd.ctt = { aa: aa.leucine              }; cd.cct = { aa: aa.proline        }; cd.cat = { aa: aa.histidine          }; cd.cgt = { aa: aa.arginine       };
  cd.ctc = { aa: aa.leucine              }; cd.ccc = { aa: aa.proline        }; cd.cac = { aa: aa.histidine          }; cd.cgc = { aa: aa.arginine       };
  cd.cta = { aa: aa.leucine              }; cd.cca = { aa: aa.proline        }; cd.caa = { aa: aa.glutamine          }; cd.cga = { aa: aa.arginine       };
  cd.ctg = { aa: aa.leucine              }; cd.ccg = { aa: aa.proline        }; cd.cag = { aa: aa.glutamine          }; cd.cgg = { aa: aa.arginine       };

  cd.att = { aa: aa.isoleucine           }; cd.act = { aa: aa.threonine      }; cd.aat = { aa: aa.asparagine         }; cd.agt = { aa: aa.serine         };
  cd.atc = { aa: aa.isoleucine           }; cd.acc = { aa: aa.threonine      }; cd.aac = { aa: aa.asparagine         }; cd.agc = { aa: aa.serine         };
  cd.ata = { aa: aa.isoleucine           }; cd.aca = { aa: aa.threonine      }; cd.aaa = { aa: aa.lysine             }; cd.aga = { aa: aa.arginine       };
  cd.atg = { aa:'Methionin Startcodon'   }; cd.acg = { aa: aa.threonine      }; cd.aag = { aa: aa.lysine             }; cd.agg = { aa: aa.arginine       };

  cd.gtt = { aa: aa.valine               }; cd.gct = { aa: aa.alanine        }; cd.gat = { aa: aa.aspartic_acid      }; cd.ggt = { aa: aa.glycine        };
  cd.gtc = { aa: aa.valine               }; cd.gcc = { aa: aa.alanine        }; cd.gac = { aa: aa.aspartic_acid      }; cd.ggc = { aa: aa.glycine        };
  cd.gta = { aa: aa.valine               }; cd.gca = { aa: aa.alanine        }; cd.gaa = { aa: aa.glutamic_acid      }; cd.gga = { aa: aa.glycinee       };
  cd.gtg = { aa: aa.valine               }; cd.gcg = { aa: aa.alanine        }; cd.gag = { aa: aa.glutamic_acid      }; cd.ggg = { aa: aa.glycinee       };

})();
