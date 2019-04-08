Transpose sets of variables using Art Tabachneck et all very fast macro                                                    
                                                                                                                           
* This is a very fast flexible macro and should be in everyones tool chest;                                                
AUTHORS: Arthur Tabachneck, Xia Ke Shan, Robert Virgile and Joe Whitehurst                                                 
                                                                                                                           
github                                                                                                                     
http://tinyurl.com/yxmoffra                                                                                                
https://github.com/rogerjdeangelis/utl-transpose-sets-of-variables-using-Art-Tabachneck-et-all-very-fast-macro             
                                                                                                                           
macros (utl_transpose                                                                                                      
https://tinyurl.com/y9nfugth                                                                                               
https://github.com/rogerjdeangelis/utl-macros-used-in-many-of-rogerjdeangelis-repositories                                 
                                                                                                                           
SAS Forum                                                                                                                  
http://tinyurl.com/yxkrfhld                                                                                                
https://communities.sas.com/t5/SAS-Programming/Combine-Rows-without-replacing-exisiting-records/m-p/548963                 
                                                                                                                           
*_                   _                                                                                                     
(_)_ __  _ __  _   _| |_                                                                                                   
| | '_ \| '_ \| | | | __|                                                                                                  
| | | | | |_) | |_| | |_                                                                                                   
|_|_| |_| .__/ \__,_|\__|                                                                                                  
        |_|                                                                                                                
;                                                                                                                          
                                                                                                                           
data have;                                                                                                                 
input locations $ year type $ MM1-MM4;                                                                                     
cards4;                                                                                                                    
NY 2017 aa 560 560 687 560                                                                                                 
NY 2017 bb 785 432 450 222                                                                                                 
NY 2017 cc 160 160 765 160                                                                                                 
NY 2018 aa 360 360 360 360                                                                                                 
NY 2018 bb 570 570 493 570                                                                                                 
NY 2018 cc 160 245 542 160                                                                                                 
NY 2019 bb 432 340 360 532                                                                                                 
NY 2019 cc 555 457 675 988                                                                                                 
PA 2017 aa 560 560 687 560                                                                                                 
PA 2017 bb 785 432 450 222                                                                                                 
PA 2018 aa 360 360 360 360                                                                                                 
PA 2018 bb 570 570 493 570                                                                                                 
PA 2018 cc 160 245 542 160                                                                                                 
PA 2019 bb 432 340 360 532                                                                                                 
;;;;                                                                                                                       
run;quit;                                                                                                                  
                                                                                                                           
 WORK.HAVE total obs=14                                                                                                    
                                                                                                                           
 LOCATIONS    YEAR    TYPE    MM1    MM2    MM3    MM4                                                                     
                                                                                                                           
    NY        2017     aa     560    560    687    560                                                                     
    NY        2017     bb     785    432    450    222                                                                     
    NY        2017     cc     160    160    765    160                                                                     
    NY        2018     aa     360    360    360    360                                                                     
    NY        2018     bb     570    570    493    570                                                                     
  ...                                                                                                                      
                                                                                                                           
*                                                                                                                          
 _ __  _ __ ___   ___ ___  ___ ___                                                                                         
| '_ \| '__/ _ \ / __/ _ \/ __/ __|                                                                                        
| |_) | | | (_) | (_|  __/\__ \__ \                                                                                        
| .__/|_|  \___/ \___\___||___/___/                                                                                        
|_|                                                                                                                        
;                                                                                                                          
                                                                                                                           
                                                                                                                           
%utl_transpose(data=have, out=want, by=locations year, id=type, guessingrows=1000,                                         
 delimiter=_, var=mm1-mm4);                                                                                                
                                                                                                                           
*            _               _                                                                                             
  ___  _   _| |_ _ __  _   _| |_                                                                                           
 / _ \| | | | __| '_ \| | | | __|                                                                                          
| (_) | |_| | |_| |_) | |_| | |_                                                                                           
 \___/ \__,_|\__| .__/ \__,_|\__|                                                                                          
                |_|                                                                                                        
;                                                                                                                          
                                                                                                                           
                                                                                                                           
 WORK.WANT total obs=6                                                                                                     
                                                                                                                           
 LOCATIONS    YEAR    MM1_AA    MM2_AA    MM3_AA    MM4_AA    MM1_BB    MM2_BB    MM3_BB    MM4_BB ....                    
                                                                                                                           
    NY        2017      560       560       687       560       785       432       450       222  ....                    
    NY        2018      360       360       360       360       570       570       493       570  ....                    
    NY        2019        .         .         .         .       432       340       360       532                          
    PA        2017      560       560       687       560       785       432       450       222                          
    PA        2018      360       360       360       360       570       570       493       570                          
    PA        2019        .         .         .         .       432       340       360       532                          
                                                                                                                           
                                                                                                                           
                                                                                                                           
                                                                                                                           
