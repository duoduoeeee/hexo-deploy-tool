#!/bin/bash                                      
echo "Yousa is on her way."                      
cd source/_posts && wget http://cloud.swufe.edu.cn/remote.php/webdav/blogging/ --user USERNAME --password PASSWORD -r --no-parent --no-directories -nv
rm index.* -v
rm favicon.* -v

echo "Wiping cache..." 
cd ../../ -v && rm public/* -rv                  
echo "Generating static documents..."            
hexo generate                                    
echo "Deploying to $1..."                        
yes | cp public/* -rvf /var/www/$1/public_html

echo "Complete. Enjoy."