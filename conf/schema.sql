CREATE TABLE if not exists attack_uids (uid integer, description text, tid text, name text);
CREATE TABLE if not exists true_positives (uid integer, sentence_id integer, true_positive text);
CREATE TABLE if not exists false_positives (uid integer, sentence_id integer, false_positive text);
CREATE TABLE if not exists false_negatives (uid integer, sentence_id integer, false_negative text);
CREATE TABLE if not exists regex_patterns (uid integer, attack_uid text, regex_pattern text);
CREATE TABLE if not exists similar_words (uid integer, attack_uid text, similar_word text);
CREATE TABLE if not exists reports (uid integer primary key AUTOINCREMENT, title text, url text, attack_key text, current_status text);
CREATE TABLE if not exists report_sentences (uid integer primary key AUTOINCREMENT, report_uid integer, text text, html text, found_status text);
CREATE TABLE if not exists report_sentence_hits (uid integer, attack_uid text, attack_technique_name text, report_uid integer);
CREATE TABLE if not exists true_negatives (sentence text)