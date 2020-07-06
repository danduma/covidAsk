#!/bin/bash
# Run this file after phrase dumping is done.
DUMP_DIR="dumps_new/denspi_06_06_20"

# Build document tfidf
#python build_doc_tfidf.py "BMJ_data/06_06_20" "$DUMP_DIR"

# Build paragraph tfidf
#python build_par_tfidf.py "$DUMP_DIR/phrase" "$DUMP_DIR/tfidf" --ranker_path "$DUMP_DIR/06_06_20-tfidf-ngram=2-hash=16777216-tokenizer=simple.npz" --start "0" --end "1"


# Create index
python run_index.py "$DUMP_DIR" all --hnsw --num_clusters "100" --cuda
