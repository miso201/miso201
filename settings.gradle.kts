include(":core")

// all the directories under /lib instead of manually adding each to a list
File(rootDir, "lib").eachDir {
    val libName = it.name
    include(":lib-$libName")
    project(":lib-$libName").projectDir = File("lib/$libName")
}

// Load all modules under /lib-multisrc
File(rootDir, "lib-multisrc").eachDir { include("lib-multisrc:${it.name}") }

if (System.getenv("CI") == null || System.getenv("CI_MODULE_GEN") == "true") {
    // Local development (full project build)

    // Loads all extensions
    File(rootDir, "src").eachDir { dir ->
        dir.eachDir { subdir ->
            val name = ":extensions:${dir.name}:${subdir.name}"
            include(name)
            project(name).projectDir = File("src/${dir.name}/${subdir.name}")
        }
    }

    /**
     * If you're developing locally and only want to work with a single module,
     * comment out the parts above and uncomment below.
     */
//    val lang = "all"
//    val name = "mangadex"
//    val projectName = ":extensions:$lang:$name"
//    include(projectName)
//    project(projectName).projectDir = File("src/${lang}/${name}")
//    project(projectName).projectDir = File("generated-src/${lang}/${name}")
} else {
    // Running in CI (GitHub Actions)

    val chunkSize = System.getenv("CI_CHUNK_SIZE").toInt()
    val chunk = System.getenv("CI_CHUNK_NUM").toInt()

    File(rootDir, "src").getChunk(chunk, chunkSize)?.forEach {
        val name = ":extensions:${it.parentFile.name}:${it.name}"
        println(name)
        include(name)
        project(name).projectDir = File("src/${it.parentFile.name}/${it.name}")
    }
}

fun File.getChunk(chunk: Int, chunkSize: Int): List<File>? {
    return listFiles()
        // Lang folder
        ?.filter { it.isDirectory }
        // Extension subfolders
        ?.mapNotNull { dir -> dir.listFiles()?.filter { it.isDirectory } }
        ?.flatten()
        ?.sortedBy { it.name }
        ?.chunked(chunkSize)
        ?.get(chunk)
}

fun File.eachDir(block: (File) -> Unit) {
    listFiles()?.filter { it.isDirectory }?.forEach { block(it) }
}
