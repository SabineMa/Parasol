versions
version015: spec
	<version: '0.15' imports: #('1.1-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'development'.
		spec project: 'Seaside3' with: #stable.
		spec 
			package: 'Parasol-Core' with: 'Parasol-Core-KrisGybels.30';
			package: 'Parasol-Tests' with: 'Parasol-Tests-JohanBrichau.12';
			package: 'Parasol-Convenience' with: 'Parasol-Convenience-ThomasCleenewerck.5'. ].

	spec for: #'squeak' do: [
		spec 
			project: 'Seaside3' with: #stable;
			project: 'WebClient' with: #stable.
		spec package: 'Parasol-Squeak' with: 'Parasol-Squeak-topa.1'. ].

	spec for: #'pharo' do: [
		spec project: 'ZincHTTP' with: #'stable'. ].

	spec for: #'pharo1.x' do: [
		spec package: 'Parasol-Pharo' with: 'Parasol-Pharo-KrisGybels.3'. ].

	spec for: #'gemstone' do: [
		spec 
			baseline: 'ZincHTTP' ;
			project: 'Seaside30' with: '3.0.8'.
		spec package: 'Parasol-Core'. ].

	spec for: #'gs2.4.x' do: [
		spec baseline: 'ZincHTTP' . ].

	spec for: #'gs3.1.x' do: [
		spec baseline: 'ZincHTTP' . ].