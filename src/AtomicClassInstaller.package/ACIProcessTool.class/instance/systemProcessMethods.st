private
systemProcessMethods
	^ {(#MorphicUIManager -> #spawnNewProcess).
	(#SmalltalkImage -> #lowSpaceWatcher).
	(#InputEventFetcher -> #eventLoop).
	(#'ProcessorScheduler class' -> #idleProcess).
	(#'WeakArray class' -> #finalizationProcess).
	(#OSSVMProcess -> #initializeChildWatcher).
	(#DelayMicrosecondScheduler -> #runTimerEventLoop).
	(#DelayMillisecondScheduler -> #runTimerEventLoop).
	(#TestExecutionEnvironment -> #watchDogLoopFor:)}