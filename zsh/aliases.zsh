
# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias cls='clear'

alias plan='code /Users/chenricks/Documents/chaz/planner'
alias vpqa1='ssh vendorproof-qa1.providertrust.com'
alias vpqa2='ssh vendorproof-qa2.providertrust.com'
alias vpqa3='ssh vendorproof-qa3.providertrust.com'
alias vpdraft='ssh vendorproof-draft.providertrust.com'
alias vpprod='ssh vendorproof-production.providertrust.com'

alias hs='http-server'

alias psqlstop="brew services stop postgresql@13"
alias psqlstart="brew services start postgresql@13"

alias tunnelsubqa="ssh -nNT -L 54321:qa1-subscription-api-dbsubnetgroup.c1fwejiaiglx.us-east-1.rds.amazonaws.com:5432 soa-bastion-qa.providertrust.com"
alias tunnelsubqa2="ssh -nNT -L 54324:qa2-subscription-api-dbsubnetgroup.c1fwejiaiglx.us-east-1.rds.amazonaws.com:5432 soa-bastion-qa.providertrust.com"
alias tunnelsubdraft="ssh -nNT -L 54322:draft-subscription-api-dbsubnetgroup.ckepcrcvzbyw.us-east-1.rds.amazonaws.com:5432 soa-bastion-draft.providertrust.com"
alias tunnelsubqa3="ssh -nNT -L 54325:qa3-subscription-api-dbsubnetgroup.c1fwejiaiglx.us-east-1.rds.amazonaws.com:5432 soa-bastion-qa.providertrust.com"
alias tunnelsubprod="ssh -nNT -L 54323:release-subscription-api-dbsubnetgroup.ckepcrcvzbyw.us-east-1.rds.amazonaws.com:5432 soa-bastion-release.providertrust.com"

alias dbsubprod="psql -h localhost -p 54323 -U subscriptiondev -d subscriptiondb"
alias dbsubdraft="psql -h localhost -p 54322 -U subscriptiondev -d subscriptiondb"
alias dbsubqa1="psql -h localhost -p 54321 -U subscriptiondev -d subscriptiondb"
alias dbsubqa2="psql -h localhost -p 54324 -U subscriptiondev -d subscriptiondb"
alias dbsubqa3="psql -h localhost -p 54325 -U subscriptiondev -d subscriptiondb"
