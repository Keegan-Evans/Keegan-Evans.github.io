# check to see if environment already exists
if mamba env list | awk '$1 == "website-dev" { print "yep" }'; then
    echo "environment already exists/nmaking sure it is up-to-date"
    source activate website-dev
    mamba env update -f ./environment.yml #--prune #remove no longer required dependencies
else
    echo "creating environment:/n"
    mamba env create -f ./environment.yml
    source activate website-dev
fi

# manual setup/installation
sudo apt-get install ruby-full build-essential zlib1g-dev

echo '# Install Ruby Gems to ~/gems' >> ~/.bashrc
echo 'export GEM_HOME="$HOME/gems"' >> ~/.bashrc
echo 'export PATH="$HOME/gems/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc

echo $(ruby -v)

# now with the environment activated install ruby things
# gem update
gem install jekyll bundler
bundle exec jekyll serve
