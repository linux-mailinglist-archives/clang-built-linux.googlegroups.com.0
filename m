Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBT7XZWJQMGQESYZHWWI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103b.google.com (mail-pj1-x103b.google.com [IPv6:2607:f8b0:4864:20::103b])
	by mail.lfdr.de (Postfix) with ESMTPS id 03CF551B8BB
	for <lists+clang-built-linux@lfdr.de>; Thu,  5 May 2022 09:25:05 +0200 (CEST)
Received: by mail-pj1-x103b.google.com with SMTP id o7-20020a17090a0a0700b001d93c491131sf4104795pjo.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 05 May 2022 00:25:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1651735503; cv=pass;
        d=google.com; s=arc-20160816;
        b=YCedlAwwhHE2A3JG9hHuKgdSjzF8XqxC+ztyk/5STnxsG4n8zcFImAgyxHZQhg5g7A
         JMQDUEc4rNZ4vSruB5TuzmotVSTr7eS47sJ2CdiaHDgMD86+PvYmbGECSFcrRWhNjSOd
         SxhQK+pfPW39c50EFJLROAEVx1bRL/wsP/sVqkJDP9YRvF6ePOJ3j4n1alf53ael4Pgy
         rzvc4HMtqh78S65CGVADx6IUVuZxcwdycBegtbHe+PklS6BCXyEuN8Mpf2yh4KT/P7yH
         Nyf5PMNOImcxQbdl5+JtPIXH8bNnKSYzXIgp6z05YqbGNi+FTdGj2/xWyUcirjHSkYA8
         z5Gg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-filter:sender
         :dkim-signature;
        bh=7qd8K8Cw+Gb5BFTteoYHGb3yAhELqOo62sv7HMkMetA=;
        b=hsJT19wHFKOxtnG/3Pt2DMWFYWokbMfm3Yezm0ddmAYXGHfUgyF6dCGZW9nRTMy38O
         /Pef+nyX+km7NNvQoLMPvwtfcqJrEW2v3ucO+1Gos5TuyEdmS08E4nuNi+pBxZkXby6A
         8dDhdhfd1cpHCVqVPn0EsEVhTxNpgCcfc0C0L7Tew7SJUgFV5scukwLKAphdnIF1mUW5
         wjfZUDyROUPBtHfUnSt4xItrDVJRHCRo+/aifFMeqSQjZNnXWUzxSxCTeoTg7TI3/jWR
         E9tcLo46bfe4YS/lU8gZypsmCMsXilHd4rNiiXJBJ9gLRoSOYqN3CFyUQJ6I812XNjMu
         CJiA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b="F9C+/j6I";
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.79 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:dkim-filter:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=7qd8K8Cw+Gb5BFTteoYHGb3yAhELqOo62sv7HMkMetA=;
        b=p7SyXKIz8KMY1CwDxf21qFrkiOrDVSRP2wbW+4m+ClHQeeDhOGgcXQC9wh8loYGDIK
         bVazsndAhZJy6gr4qiRJ3mhiwSIv389Wu+Wv1XAPLKpQWqzh0SRR4mDmB+luXCfpS0hK
         k2TAbSAC4Ll2+IqmDRsKRZxadyYHyWmCjqhCVG8erc9vvGqP4y95HJdPh76zORejfX8g
         6HyDwyTpB9kPucmDpmIQG235Qx06/fd+db54zLKEaxaW/dCxqWzOdugo9s8sRBomRp1K
         MzIFekvB0a9ibpabLQ5as/GcbpLDgwxr5HB7nNOb13mNErOGW7qY2cotWgCQI70KbxIP
         MRTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:dkim-filter:from:to:cc:subject:date
         :message-id:in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7qd8K8Cw+Gb5BFTteoYHGb3yAhELqOo62sv7HMkMetA=;
        b=FJONNtl2Iqqq2yN4InnrYUnkD3OHbEzMI8BKm9Sfh9/p3pfnoqJg6FuN9JL1wRCcCw
         dpDXw6EAdE6NaT9p1hA6DeGqe7W3GO+ISkpmPsn8eZ4s4TgpvKtSkK+xQ49oGPy9UeRz
         xpbqq9584JU7bM7Aj58hyUhn21GfHs9nQ3gy8+MOaM0wk5+Fj2nNnjKBQF76BwMZY2Ta
         KjTyL7fo4RfpLgS2WfGaRhyokCfrlP0ECifLf/LRy5dK6lJALlr2zN90PdbOn4Ro8zo0
         L4w5nRZjEyRxwSJeHPBhm0GcPS7DBZG2F9uusdxmXirrvWaDnds0PN9eUKxuZo+4ydHx
         TMHw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531HEgtAmqxa/kRwLd0WOY9oQmF+hsesUdCnuyUFrjJVHagueEOi
	SE1oMuywBUeSNRiR6TH0wy8=
X-Google-Smtp-Source: ABdhPJz9sWOfCL7lmFXQh3BY9McgYLzX6+0bHVNMHi6BMkjNj3kYuf5T/sLRINv+iIkwCZHgfe009w==
X-Received: by 2002:a63:ff0b:0:b0:3c6:b0b:dfee with SMTP id k11-20020a63ff0b000000b003c60b0bdfeemr2890224pgi.346.1651735503709;
        Thu, 05 May 2022 00:25:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:6e8c:0:b0:381:309f:14a0 with SMTP id bm12-20020a656e8c000000b00381309f14a0ls1532596pgb.2.gmail;
 Thu, 05 May 2022 00:25:03 -0700 (PDT)
X-Received: by 2002:a05:6a00:244a:b0:4fa:ebf9:75de with SMTP id d10-20020a056a00244a00b004faebf975demr24637657pfj.73.1651735503038;
        Thu, 05 May 2022 00:25:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1651735503; cv=none;
        d=google.com; s=arc-20160816;
        b=g6nz12E6tj4bMwSs5kgwzbHTINSGNBuCHrV5D+3MFTkJZR8gkQ6LLf2WKOnpDTe8XU
         I6DnE54Pfew6hw7XH8vPy+c5bSVR8LJtXebvWlev+SEMFKDzkydgN3CYWif4AzKawxHo
         kat6rAC/YGdfNMywD2YzEkdGb/jaIBxAhG+E0kH6ZCtGCgnB//YS/XVNY86cyLm5jIv9
         3F69asxOTTxLJW+ZMjCKJMxTNNE055FQ8i7CMETthMgG1+EZ1f3IaA8W6GUA+2WYiAXO
         GuC8bmqJdHC4HCa5r6C1a1W524XFJGl5kBqotxrTcsEd/Cb0qj8vpBsgvYg7t/uBLt1M
         5Oug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature:dkim-filter;
        bh=CPqCziLLqCMP64InbbHc5QNHoo31bt69oR1U5YA1pwU=;
        b=zEG4Tmlhyql6euf6g8m0STpx2MkuX4+IQBW23G4ML2zda8RZ/vwQKdA7OEaryuHVYs
         l+lLF/sRbxC7AG3Vj8w2LKrNN5u2hU+mIDXZII3UeKAMTH6/sHGmq52jmWsh1GYTuRog
         LVOPxdrsSmc1EtMwQPVl23oe9x9d2NXSJiV6/fmoMnALe/GZ0D7OMua6glcxKXF/YbTy
         fAcjr1pSuUU6bY/YvFbryEvs2vywcQR+F20frGBZp59D0iAq+dhNeX3Tz3YkW2btt8dj
         aGAfhyIm9yMKy8PS5Hwi2WE2rEW7QU9OqLZM0wyPGdPZp/NQ2/9jW/IxTgGW4NnYY616
         pajw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b="F9C+/j6I";
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.79 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-12.nifty.com (conuserg-12.nifty.com. [210.131.2.79])
        by gmr-mx.google.com with ESMTPS id m1-20020a17090aab0100b001cb5c591f9asi492882pjq.1.2022.05.05.00.25.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 May 2022 00:25:03 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.79 as permitted sender) client-ip=210.131.2.79;
Received: from grover.sesame (133-32-177-133.west.xps.vectant.ne.jp [133.32.177.133]) (authenticated)
	by conuserg-12.nifty.com with ESMTP id 2457Nenv019426;
	Thu, 5 May 2022 16:23:55 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-12.nifty.com 2457Nenv019426
X-Nifty-SrcIP: [133.32.177.133]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-kbuild@vger.kernel.org
Cc: clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org,
        Nicolas Schier a <nicolas@fjasle.eu>, Ard Biesheuvel <ardb@kernel.org>,
        Luis Chamberlain <mcgrof@kernel.org>,
        Peter Zijlstra <peterz@infradead.org>, linuxppc-dev@lists.ozlabs.org,
        linux-um@lists.infradead.org, linux-s390@vger.kernel.org,
        Nick Desaulniers <ndesaulniers@google.com>,
        Sami Tolvanen <samitolvanen@google.com>,
        Kees Cook <keescook@chromium.org>,
        Masahiro Yamada <masahiroy@kernel.org>
Subject: [PATCH v3 13/15] modpost: use hlist for hash table implementation
Date: Thu,  5 May 2022 16:22:42 +0900
Message-Id: <20220505072244.1155033-14-masahiroy@kernel.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220505072244.1155033-1-masahiroy@kernel.org>
References: <20220505072244.1155033-1-masahiroy@kernel.org>
MIME-Version: 1.0
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b="F9C+/j6I";
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org
 does not designate 210.131.2.79 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: list
Mailing-list: list clang-built-linux@googlegroups.com; contact clang-built-linux+owners@googlegroups.com
List-ID: <clang-built-linux.googlegroups.com>
X-Spam-Checked-In-Group: clang-built-linux@googlegroups.com
X-Google-Group-Id: 357212215037
List-Post: <https://groups.google.com/group/clang-built-linux/post>, <mailto:clang-built-linux@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:clang-built-linux+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/clang-built-linux
List-Subscribe: <https://groups.google.com/group/clang-built-linux/subscribe>, <mailto:clang-built-linux+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+357212215037+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/clang-built-linux/subscribe>

Import hlist macros from include/linux/list.h to implement the hash
table in a more generic way.

While I was here, I increased the hash table size from 1024 to 8192
to decrease the hash collision.

I moved ARRAY_SIZE() from file2alias.c to modpost.h because it is needed
in modpost.c as well.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

(no changes since v2)

Changes in v2:
  - Move to the end of the series because this is now optional

 scripts/mod/file2alias.c |  2 --
 scripts/mod/list.h       | 52 ++++++++++++++++++++++++++++++++++++++++
 scripts/mod/modpost.c    | 39 +++++++++++++++---------------
 scripts/mod/modpost.h    |  2 ++
 4 files changed, 73 insertions(+), 22 deletions(-)

diff --git a/scripts/mod/file2alias.c b/scripts/mod/file2alias.c
index 5258247d78ac..e8a9c6816fec 100644
--- a/scripts/mod/file2alias.c
+++ b/scripts/mod/file2alias.c
@@ -734,8 +734,6 @@ static int do_vio_entry(const char *filename, void *symval,
 	return 1;
 }
 
-#define ARRAY_SIZE(x) (sizeof(x) / sizeof((x)[0]))
-
 static void do_input(char *alias,
 		     kernel_ulong_t *arr, unsigned int min, unsigned int max)
 {
diff --git a/scripts/mod/list.h b/scripts/mod/list.h
index a924a6c4aa4d..c60dbaa70d6b 100644
--- a/scripts/mod/list.h
+++ b/scripts/mod/list.h
@@ -210,4 +210,56 @@ static inline int list_empty(const struct list_head *head)
 	     !list_entry_is_head(pos, head, member);			\
 	     pos = n, n = list_next_entry(n, member))
 
+/*
+ * Double linked lists with a single pointer list head.
+ * Mostly useful for hash tables where the two pointer list head is
+ * too wasteful.
+ * You lose the ability to access the tail in O(1).
+ */
+
+struct hlist_head {
+	struct hlist_node *first;
+};
+
+struct hlist_node {
+	struct hlist_node *next, **pprev;
+};
+
+/**
+ * hlist_add_head - add a new entry at the beginning of the hlist
+ * @n: new entry to be added
+ * @h: hlist head to add it after
+ *
+ * Insert a new entry after the specified head.
+ * This is good for implementing stacks.
+ */
+static inline void hlist_add_head(struct hlist_node *n, struct hlist_head *h)
+{
+	struct hlist_node *first = h->first;
+
+	n->next = first;
+	if (first)
+		first->pprev = &n->next;
+	h->first = n;
+	n->pprev = &h->first;
+}
+
+#define hlist_entry(ptr, type, member) container_of(ptr, type, member)
+
+#define hlist_entry_safe(ptr, type, member) \
+	({ typeof(ptr) ____ptr = (ptr); \
+	   ____ptr ? hlist_entry(____ptr, type, member) : NULL; \
+	})
+
+/**
+ * hlist_for_each_entry	- iterate over list of given type
+ * @pos:	the type * to use as a loop cursor.
+ * @head:	the head for your list.
+ * @member:	the name of the hlist_node within the struct.
+ */
+#define hlist_for_each_entry(pos, head, member)				\
+	for (pos = hlist_entry_safe((head)->first, typeof(*(pos)), member);\
+	     pos;							\
+	     pos = hlist_entry_safe((pos)->member.next, typeof(*(pos)), member))
+
 #endif /* LIST_H */
diff --git a/scripts/mod/modpost.c b/scripts/mod/modpost.c
index 4edd5b223f49..7f7e0818940f 100644
--- a/scripts/mod/modpost.c
+++ b/scripts/mod/modpost.c
@@ -199,13 +199,8 @@ static struct module *new_module(const char *modname)
 	return mod;
 }
 
-/* A hash of all exported symbols,
- * struct symbol is also used for lists of unresolved symbols */
-
-#define SYMBOL_HASH_SIZE 1024
-
 struct symbol {
-	struct symbol *next;
+	struct hlist_node hash_node;	/* link to the hash table */
 	struct list_head list;	/* link to module::exported_symbols or module::unresolved_symbols */
 	struct module *module;
 	char *namespace;
@@ -217,8 +212,6 @@ struct symbol {
 	char name[];
 };
 
-static struct symbol *symbolhash[SYMBOL_HASH_SIZE];
-
 /* This is based on the hash algorithm from gdbm, via tdb */
 static inline unsigned int tdb_hash(const char *name)
 {
@@ -232,6 +225,21 @@ static inline unsigned int tdb_hash(const char *name)
 	return (1103515243 * value + 12345);
 }
 
+/* useful hash macros */
+#define hash_head(table, key)		(&(table)[tdb_hash(key) % ARRAY_SIZE(table)])
+
+#define hash_add_symbol(sym, table)	hlist_add_head(&(sym)->hash_node, \
+						       hash_head(table, (sym)->name))
+
+#define hash_for_matched_symbol(sym, table, key) \
+	hlist_for_each_entry(sym, hash_head(table, key), hash_node) \
+		if (!strcmp(sym->name, key))
+
+#define HASHTABLE_DECLARE(name, size)	struct hlist_head name[size]
+
+/* hash table of all exported symbols */
+HASHTABLE_DECLARE(exported_symbols, 8192);
+
 /**
  * Allocate a new symbols for use in the hash of exported symbols or
  * the list of unresolved symbols per module
@@ -246,15 +254,6 @@ static struct symbol *alloc_symbol(const char *name)
 	return s;
 }
 
-/* For the hash of exported symbols */
-static void hash_add_symbol(struct symbol *sym)
-{
-	unsigned int hash;
-
-	hash = tdb_hash(sym->name) % SYMBOL_HASH_SIZE;
-	sym->next = symbolhash[hash];
-	symbolhash[hash] = sym;
-}
 
 static void sym_add_unresolved(const char *name, struct module *mod, bool weak)
 {
@@ -274,8 +273,8 @@ static struct symbol *sym_find_with_module(const char *name, struct module *mod)
 	if (name[0] == '.')
 		name++;
 
-	for (s = symbolhash[tdb_hash(name) % SYMBOL_HASH_SIZE]; s; s = s->next) {
-		if (strcmp(s->name, name) == 0 && (!mod || s->module == mod))
+	hash_for_matched_symbol(s, exported_symbols, name) {
+		if (!mod || s->module == mod)
 			return s;
 	}
 	return NULL;
@@ -379,7 +378,7 @@ static struct symbol *sym_add_exported(const char *name, struct module *mod,
 	s->is_static = !mod->from_dump;
 	s->is_gpl_only = gpl_only;
 	list_add_tail(&s->list, &mod->exported_symbols);
-	hash_add_symbol(s);
+	hash_add_symbol(s, exported_symbols);
 
 	return s;
 }
diff --git a/scripts/mod/modpost.h b/scripts/mod/modpost.h
index 2e8c897e0953..0cd8eec6f59b 100644
--- a/scripts/mod/modpost.h
+++ b/scripts/mod/modpost.h
@@ -14,6 +14,8 @@
 #include "list.h"
 #include "elfconfig.h"
 
+#define ARRAY_SIZE(arr) (sizeof(arr) / sizeof((arr)[0]))
+
 /* On BSD-alike OSes elf.h defines these according to host's word size */
 #undef ELF_ST_BIND
 #undef ELF_ST_TYPE
-- 
2.32.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20220505072244.1155033-14-masahiroy%40kernel.org.
