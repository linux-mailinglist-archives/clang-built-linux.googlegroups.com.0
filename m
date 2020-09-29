Return-Path: <clang-built-linux+bncBC2ORX645YPRBQOWZ35QKGQEKKGOB6I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73c.google.com (mail-qk1-x73c.google.com [IPv6:2607:f8b0:4864:20::73c])
	by mail.lfdr.de (Postfix) with ESMTPS id AC72227DA6B
	for <lists+clang-built-linux@lfdr.de>; Tue, 29 Sep 2020 23:46:42 +0200 (CEST)
Received: by mail-qk1-x73c.google.com with SMTP id m203sf3655545qke.16
        for <lists+clang-built-linux@lfdr.de>; Tue, 29 Sep 2020 14:46:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601416001; cv=pass;
        d=google.com; s=arc-20160816;
        b=MaigCYfQDud3yu7ngFl3hVvLew5oYzM5pHxOnRRIBHuaIpiSTIuIwErC6wCIeUMIUd
         IHKsFd93wnykoCJrlsn3jEBvESjh37rXNO/XqZ1BWAWGdvM9E/vea0GvT4iLWneQdp7m
         cN9YN4lIBI1BFhHSWmNVFugIkYtg6p2yk225LJBn4sAdbu7HJLW6J6KMTtdBZMhzOBK2
         MjPyhRh8KaWMv2yRQ/WHNt2c9IOn3dpmG0HtUeaP0o+HubDYY2oReqz3xuZgisW0QDz6
         3hzmUNJnIdVTTf9y1MCPDttVKLT5uVcIYSgmpWY7sO2CNaCILZ53L7veYBMLFHJpcizL
         ZFPw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=iGT1nle+Den5xx9oL4h91u2dHcbPEt1xpMqAjgULoG0=;
        b=tsNHAuvjfIPOo30ZpUFOKqUhZlpGCM0Q0+SgIeq8WMnVyT/1HZDvJSZMhiV20sNjLn
         NqjWtpaPGcHqR3icMOh4J92WLOTVwtWAMjkzeI7q9LHuPjo1jQHlMyqvP/ueDabr1fys
         ktDQ+BBBHd0cPe45GJkH7bbmiOE2G8AWQvpsylp1EDDUZGRjN6OuJwmPaUoB7za85c6P
         egSIHtXfqlz01B3dZ5GUP/sng1zVvNb+hPjFfsAkQVpVua0A8lKN60i90LojBzdpXlk7
         tJ3231hhufvItEOI6YMAW3rOZnMaiBpMpac3hMkPV3/scc+BFZdenH7S+rpRGZNUcbfP
         IJkg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=VoPplgtC;
       spf=pass (google.com: domain of 3qktzxwwkagcxfrnytqafsjslttlqj.htr@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3QKtzXwwKAGcXFRNYTQaFSJSLTTLQJ.HTR@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=iGT1nle+Den5xx9oL4h91u2dHcbPEt1xpMqAjgULoG0=;
        b=KpEi6a6NONXIZiEoRiSIto1QmiPDN3iN6jOYrkZj5jne1i2Z6LpKI9g8j0eWKY97Ot
         HPvfz06qzC/98BqKtMbF9a4mD61VLBE7WKMj26P/yXqOO/zLRAh/CoUXtYcUrwSE8gIa
         DTjMwyL+OxTeZoDL3w+t0zuVlAIu9yrJh/ZiY5woj6wHQxoxiwqj2vkFbWZUSuCfx3WE
         a/v9ZNrMp+WwLBGZp2PlxjCF/ILLiD8S+2wZj27xKAu3MbmVIUIAaM3Dp/FjQqF4703q
         PVTBHj8oloOu84L8J11oDKR+XzC6wve/PSsOt2i4LiDYFl7HNOQOsY/RWA8sBG9nG4hR
         aYaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iGT1nle+Den5xx9oL4h91u2dHcbPEt1xpMqAjgULoG0=;
        b=YJTfW9/GsWYPBm60KmAe/hNYyBjbVIksbdJx493J3LUEHlMENN81wzb8hOchkpYDZT
         OIP/4bfIIqUxjbTlgRhD5L+kNoRnzv7dwjhqLrquOUqkTbDVmEBCCnrgASmWPC0u/nVv
         UjKHyc0eQzpizb2WPkibmd/XWIrnqKqSGxMKf7ZtHojFhUfHLHqyk1rPCatVec//fXbM
         38eB51n3FI19GQdtOU6jOcg33quZs3ofPh0OXY1H6vOjcho+SrpaKNKtaZF8DjqzqBq8
         jCFsCIsVNpPPw9ADIqi8+wLpBltFNltaGt3zjhit5iLqrw5e2eZ2JoNk/FVh3eCLHbvj
         UDmg==
X-Gm-Message-State: AOAM5327gxeJQW6vFjUno+GymlhH5OsLFA8ULw3n2vOnsESCLg5Xad9x
	VqpqBZR8LZl1he/w1w7D6eI=
X-Google-Smtp-Source: ABdhPJze/9IBthqCOSsJeFKLUPve5pKGxv1ERN1uh1fIi7Hc/AUKjDD8px6Dci/dOZjhODQrvZqj4Q==
X-Received: by 2002:ad4:42a5:: with SMTP id e5mr6346710qvr.58.1601416001753;
        Tue, 29 Sep 2020 14:46:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6214:4d4:: with SMTP id ck20ls1446793qvb.7.gmail; Tue,
 29 Sep 2020 14:46:41 -0700 (PDT)
X-Received: by 2002:a0c:b343:: with SMTP id a3mr6346179qvf.41.1601416001244;
        Tue, 29 Sep 2020 14:46:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601416001; cv=none;
        d=google.com; s=arc-20160816;
        b=uX4R8Di1qCcRBwDMNLPfYiNxmsQVWEEDLyC0MjcU0gfB/0Cxeejc0zaH60BN7/D9gK
         bLsjSNjzQLcxJ7KzUZk9sSwffz6eRHdaUuC+AVkMc9xrU+pVNgGWyAxYHd3hyC5reBE2
         gCeuDbw/RtfEXDYuIYM7/aiFb3hk6+tr4DvnMhRPbYp2KnnautJ3/n+e/wCQQUzwms2y
         cFEZMK73Oi/C/jMyH8fkgqER3q6lKbIu/FCQXxCXZcCc4JOs6vVEXLe9CYZ1bEYNanmA
         niKf6ocQ5PMZw3O54D9XdmFhXV09Bl6eLYsLUje3xmxfshAqtebOEDcR5oxPw+2bi/90
         3z4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=f9tPOSX60pD/GFSFuHzH48biha6xq7SwYXZZiJq/qTc=;
        b=tTOIayrWUTa++pGXSw8cA461H0QeX9c/GfEUq/VEia0BUkfFHxCxOTf/2qwLQzfQzl
         CNy9WvcVGCrX4M/OrCzIDFcwYCr0wbMBvuCvsDJmxpEdfiEFRC93UuTgXj7AWG5kwrJ3
         3Sm4keKBOcTLe7YFmLRFA2NUHmJWoavIjlsWZJ8lGPbJWkpyjJytgeEEJiXWH35JVrfk
         7qPJ6i9GPmmCKgbuCrVSYqNcP466DEereNRxeS+C7uUKJ8QrHpy/K7cz4MRRxnMSTNlr
         E+h2AVq2RH9wtyTZ6TXuE31y0dhE6jbogG0r+9W7QEt5gzwHYUk0bY++GhJZ4HY5P19r
         VR8g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=VoPplgtC;
       spf=pass (google.com: domain of 3qktzxwwkagcxfrnytqafsjslttlqj.htr@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3QKtzXwwKAGcXFRNYTQaFSJSLTTLQJ.HTR@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qv1-xf49.google.com (mail-qv1-xf49.google.com. [2607:f8b0:4864:20::f49])
        by gmr-mx.google.com with ESMTPS id a2si334118qkl.4.2020.09.29.14.46.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Sep 2020 14:46:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3qktzxwwkagcxfrnytqafsjslttlqj.htr@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) client-ip=2607:f8b0:4864:20::f49;
Received: by mail-qv1-xf49.google.com with SMTP id t4so3333804qvr.21
        for <clang-built-linux@googlegroups.com>; Tue, 29 Sep 2020 14:46:41 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a0c:f48e:: with SMTP id
 i14mr6568031qvm.9.1601416000842; Tue, 29 Sep 2020 14:46:40 -0700 (PDT)
Date: Tue, 29 Sep 2020 14:46:06 -0700
In-Reply-To: <20200929214631.3516445-1-samitolvanen@google.com>
Message-Id: <20200929214631.3516445-5-samitolvanen@google.com>
Mime-Version: 1.0
References: <20200929214631.3516445-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.709.gb0816b6eb0-goog
Subject: [PATCH v4 04/29] objtool: Add a pass for generating __mcount_loc
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>, 
	Steven Rostedt <rostedt@goodmis.org>
Cc: Peter Zijlstra <peterz@infradead.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	"Paul E. McKenney" <paulmck@kernel.org>, Kees Cook <keescook@chromium.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, clang-built-linux@googlegroups.com, 
	kernel-hardening@lists.openwall.com, linux-arch@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org, x86@kernel.org, 
	Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=VoPplgtC;       spf=pass
 (google.com: domain of 3qktzxwwkagcxfrnytqafsjslttlqj.htr@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3QKtzXwwKAGcXFRNYTQaFSJSLTTLQJ.HTR@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

From: Peter Zijlstra <peterz@infradead.org>

Add the --mcount option for generating __mcount_loc sections
needed for dynamic ftrace. Using this pass requires the kernel to
be compiled with -mfentry and CC_USING_NOP_MCOUNT to be defined
in Makefile.

Link: https://lore.kernel.org/lkml/20200625200235.GQ4781@hirez.programming.kicks-ass.net/
Signed-off-by: Peter Zijlstra <peterz@infradead.org>
[Sami: rebased to mainline, dropped config changes, fixed to actually use
       --mcount, and wrote a commit message.]
Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
---
 tools/objtool/builtin-check.c |  3 +-
 tools/objtool/builtin.h       |  2 +-
 tools/objtool/check.c         | 83 +++++++++++++++++++++++++++++++++++
 tools/objtool/check.h         |  1 +
 tools/objtool/objtool.h       |  1 +
 5 files changed, 88 insertions(+), 2 deletions(-)

diff --git a/tools/objtool/builtin-check.c b/tools/objtool/builtin-check.c
index 7a44174967b5..71595cf4946d 100644
--- a/tools/objtool/builtin-check.c
+++ b/tools/objtool/builtin-check.c
@@ -18,7 +18,7 @@
 #include "builtin.h"
 #include "objtool.h"
 
-bool no_fp, no_unreachable, retpoline, module, backtrace, uaccess, stats, validate_dup, vmlinux;
+bool no_fp, no_unreachable, retpoline, module, backtrace, uaccess, stats, validate_dup, vmlinux, mcount;
 
 static const char * const check_usage[] = {
 	"objtool check [<options>] file.o",
@@ -35,6 +35,7 @@ const struct option check_options[] = {
 	OPT_BOOLEAN('s', "stats", &stats, "print statistics"),
 	OPT_BOOLEAN('d', "duplicate", &validate_dup, "duplicate validation for vmlinux.o"),
 	OPT_BOOLEAN('l', "vmlinux", &vmlinux, "vmlinux.o validation"),
+	OPT_BOOLEAN('M', "mcount", &mcount, "generate __mcount_loc"),
 	OPT_END(),
 };
 
diff --git a/tools/objtool/builtin.h b/tools/objtool/builtin.h
index 85c979caa367..94565a72b701 100644
--- a/tools/objtool/builtin.h
+++ b/tools/objtool/builtin.h
@@ -8,7 +8,7 @@
 #include <subcmd/parse-options.h>
 
 extern const struct option check_options[];
-extern bool no_fp, no_unreachable, retpoline, module, backtrace, uaccess, stats, validate_dup, vmlinux;
+extern bool no_fp, no_unreachable, retpoline, module, backtrace, uaccess, stats, validate_dup, vmlinux, mcount;
 
 extern int cmd_check(int argc, const char **argv);
 extern int cmd_orc(int argc, const char **argv);
diff --git a/tools/objtool/check.c b/tools/objtool/check.c
index 90a66891441a..ff0cd4d27d40 100644
--- a/tools/objtool/check.c
+++ b/tools/objtool/check.c
@@ -433,6 +433,65 @@ static int add_dead_ends(struct objtool_file *file)
 	return 0;
 }
 
+static int create_mcount_loc_sections(struct objtool_file *file)
+{
+	struct section *sec, *reloc_sec;
+	struct reloc *reloc;
+	unsigned long *loc;
+	struct instruction *insn;
+	int idx;
+
+	sec = find_section_by_name(file->elf, "__mcount_loc");
+	if (sec) {
+		INIT_LIST_HEAD(&file->mcount_loc_list);
+		WARN("file already has __mcount_loc section, skipping");
+		return 0;
+	}
+
+	if (list_empty(&file->mcount_loc_list))
+		return 0;
+
+	idx = 0;
+	list_for_each_entry(insn, &file->mcount_loc_list, mcount_loc_node)
+		idx++;
+
+	sec = elf_create_section(file->elf, "__mcount_loc", sizeof(unsigned long), idx);
+	if (!sec)
+		return -1;
+
+	reloc_sec = elf_create_reloc_section(file->elf, sec, SHT_RELA);
+	if (!reloc_sec)
+		return -1;
+
+	idx = 0;
+	list_for_each_entry(insn, &file->mcount_loc_list, mcount_loc_node) {
+
+		loc = (unsigned long *)sec->data->d_buf + idx;
+		memset(loc, 0, sizeof(unsigned long));
+
+		reloc = malloc(sizeof(*reloc));
+		if (!reloc) {
+			perror("malloc");
+			return -1;
+		}
+		memset(reloc, 0, sizeof(*reloc));
+
+		reloc->sym = insn->sec->sym;
+		reloc->addend = insn->offset;
+		reloc->type = R_X86_64_64;
+		reloc->offset = idx * sizeof(unsigned long);
+		reloc->sec = reloc_sec;
+		elf_add_reloc(file->elf, reloc);
+
+		idx++;
+	}
+
+	if (elf_rebuild_reloc_section(file->elf, reloc_sec))
+		return -1;
+
+	return 0;
+}
+
 /*
  * Warnings shouldn't be reported for ignored functions.
  */
@@ -784,6 +843,22 @@ static int add_call_destinations(struct objtool_file *file)
 			insn->type = INSN_NOP;
 		}
 
+		if (mcount && !strcmp(insn->call_dest->name, "__fentry__")) {
+			if (reloc) {
+				reloc->type = R_NONE;
+				elf_write_reloc(file->elf, reloc);
+			}
+
+			elf_write_insn(file->elf, insn->sec,
+				       insn->offset, insn->len,
+				       arch_nop_insn(insn->len));
+
+			insn->type = INSN_NOP;
+
+			list_add_tail(&insn->mcount_loc_node,
+				      &file->mcount_loc_list);
+		}
+
 		/*
 		 * Whatever stack impact regular CALLs have, should be undone
 		 * by the RETURN of the called function.
@@ -2791,6 +2866,7 @@ int check(const char *_objname, bool orc)
 
 	INIT_LIST_HEAD(&file.insn_list);
 	hash_init(file.insn_hash);
+	INIT_LIST_HEAD(&file.mcount_loc_list);
 	file.c_file = !vmlinux && find_section_by_name(file.elf, ".comment");
 	file.ignore_unreachables = no_unreachable;
 	file.hints = false;
@@ -2838,6 +2914,13 @@ int check(const char *_objname, bool orc)
 		warnings += ret;
 	}
 
+	if (mcount) {
+		ret = create_mcount_loc_sections(&file);
+		if (ret < 0)
+			goto out;
+		warnings += ret;
+	}
+
 	if (orc) {
 		ret = create_orc(&file);
 		if (ret < 0)
diff --git a/tools/objtool/check.h b/tools/objtool/check.h
index 061aa96e15d3..b62afd3d970b 100644
--- a/tools/objtool/check.h
+++ b/tools/objtool/check.h
@@ -22,6 +22,7 @@ struct insn_state {
 struct instruction {
 	struct list_head list;
 	struct hlist_node hash;
+	struct list_head mcount_loc_node;
 	struct section *sec;
 	unsigned long offset;
 	unsigned int len;
diff --git a/tools/objtool/objtool.h b/tools/objtool/objtool.h
index 528028a66816..427806079540 100644
--- a/tools/objtool/objtool.h
+++ b/tools/objtool/objtool.h
@@ -16,6 +16,7 @@ struct objtool_file {
 	struct elf *elf;
 	struct list_head insn_list;
 	DECLARE_HASHTABLE(insn_hash, 20);
+	struct list_head mcount_loc_list;
 	bool ignore_unreachables, c_file, hints, rodata;
 };
 
-- 
2.28.0.709.gb0816b6eb0-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200929214631.3516445-5-samitolvanen%40google.com.
