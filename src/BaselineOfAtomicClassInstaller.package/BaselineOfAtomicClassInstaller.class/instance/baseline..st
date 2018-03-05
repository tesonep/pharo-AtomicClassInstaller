baseline
baseline: spec
	<baseline>
	spec
		for: #pharo
		do:
			[ 
			
			spec package: 'AtomicClassInstaller'.
			spec package: 'AtomicClassInstaller-Tests' with:[ spec requires: #core ].	
			spec package: 'AtomicClassInstaller-UI' with:[spec requires: #core].

			spec
				group: 'core' with: #(AtomicClassInstaller);
				group: 'dev' with: #('core' 'tests' 'ui');
				group: 'ui' with: #('AtomicClassInstaller-UI'); 
				group: 'tests' with: #('AtomicClassInstaller-Tests')
			]