//defines that give qdel hints. these can be given as a return in destory() or by calling

#define QDEL_HINT_QUEUE 		0 //qdel should queue the object for deletion.
#define QDEL_HINT_LETMELIVE		1 //qdel should let the object live after calling destory.
#define QDEL_HINT_IWILLGC		2 //functionally the same as the above. qdel should assume the object will gc on its own, and not check it.
#define QDEL_HINT_HARDDEL_NOW	4 //qdel should assume this object won't gc, and hard del it post haste.
#define QDEL_HINT_FINDREFERENCE	5 //functionally identical to QDEL_HINT_QUEUE if TESTING is not enabled in _compiler_options.dm.
								  //if TESTING is enabled, qdel will call this object's find_references() verb.

// A convenient wrapper around checking for qdeletion/non-existence
#define exists(A)	(A && !qdeleted(A))
