baseline
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ spec
				baseline: 'Seaside3'
					with: [ spec
						loads: #('Tests' 'Zinc-Seaside');
						repository: 'github://SeasideSt/Seaside:v3.3.0/repository' ];
				baseline: 'Ston'
					with: [ spec repository: 'github://svenvc/ston:049da2f/repository' ].
			spec
				package: 'Parasol-Core';
				package: 'Parasol-Seaside'
					with: [ spec requires: #('Seaside3' 'Parasol-Core') ];
				package: 'Parasol-Tests'
					with: [ spec requires: #('Parasol-Seaside') ];
				package: 'Parasol-Convenience'
					with: [ spec requires: #('Parasol-Core') ].
			spec
				group: 'default' with: #('Parasol-Seaside' 'Parasol-Convenience');
				group: 'core' with: #('Parasol-Core' 'Parasol-Convenience');
				group: 'tests' with: #('Parasol-Tests' 'default') ].
	spec
		for: #pharo
		do: [ "Sets the Zinc prerequisite for Pharo"
			spec
				baseline: 'ZincHTTPComponents'
				with: [ spec repository: 'github://svenvc/zinc:b029f96/repository' ].
			spec
				package: 'Parasol-Pharo'
					with: [ spec requires: #('Parasol-Core' 'Ston') ];
				package: 'Parasol-Core'
					with: [ spec
						requires: #('ZincHTTPComponents');
						includes: #('Parasol-Pharo') ] ]