Return-Path: <clang-built-linux+bncBC2ORX645YPRBPNKST5QKGQEZG6ZVWA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63b.google.com (mail-pl1-x63b.google.com [IPv6:2607:f8b0:4864:20::63b])
	by mail.lfdr.de (Postfix) with ESMTPS id 133E8270621
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Sep 2020 22:14:55 +0200 (CEST)
Received: by mail-pl1-x63b.google.com with SMTP id 10sf3997551ple.19
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Sep 2020 13:14:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600460093; cv=pass;
        d=google.com; s=arc-20160816;
        b=eNXkrwfZnXS5fk+kYIqSAsan3pDZYh8mL8bloN5MlbeCx3mDYvB1XXsaaCNUGW6GeH
         TcDK+NVTPZCvSK/owDi9rcG/c8sHXF84PgHXkaLBYnYDMjfGBSC+HogXzfFvp+SPGdLD
         nZzQakglWl0/W4979W5VqpyRS/jRi7Een1IKjLmhUBc8YgRc7GHHFsS61w3+Ge/2D988
         +j0OM5KGKB+Db3bRIdSdKLYZvmL0CKuAsbu3OkaDysMU7haJH5Jn42w5FEWsG0BCq/Fw
         RBxNVf6qq5KFWcm58/AIpuD5l0y1LV2uR/rh7TvwgqrMDi5OYXsOocEQew/7B6v8hSSr
         EhvA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=xPZVlyPSz2nv1o/HXYhIEyFJ+ateZIDmNeD1/IK3Zok=;
        b=v4nU7dlBANjL/SzIk7GazILuk8CVq4jjEee6ipucfqwR3+ifjmGcEdLofnTBtZkNJQ
         klx17GN3UY+dPOWRvd3+p7r6i9O9+tPitG0nyoLx2pA2kmknhCrEFwxWOJqEHU9Ahh5X
         RhRATe5HIelq4sDh9dt3HO5VVi+H/5pE8PXews8xzGGJzamw+pQl0wI9cXBtSa1J/S4u
         os/pvLKUtY2s5+kMwIagO62uzhwzT9WFkcpeyi0DUMvxeehrEJSUtk0J+5xiceA91fME
         LbJBg/C9LJLBeae3ZI2q37bnO7/gWuMsqM30wT80fVDu5f/HHg/Jb3CSy8RtnCKc0i/J
         8QLg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=vLxQSiTd;
       spf=pass (google.com: domain of 3pbvlxwwkapsvdplwroydqhqjrrjoh.frp@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3PBVlXwwKAPsvdplwroydqhqjrrjoh.frp@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=xPZVlyPSz2nv1o/HXYhIEyFJ+ateZIDmNeD1/IK3Zok=;
        b=IFdZPghJQOLKK9z7scmbxu0QXnYjzitvoI8sCUI7ZK/aWEp5i6gDNGtiwdEcYkXvYz
         2zLBsVVTCQ9s3uyssXd5Xsa9hV4DDPjWDABUtES0+86M7T7M93fpKFDhLFNspYToR751
         juYJDnKXgXzRRRAN3XYdAOsdr2MNK+9FGhIR4RyEun6SZVcscLitQhNz/PsIOBbzwfeX
         FYviWHGWaWti/BIjKNW5eRP8kQghvjBRmfVa17A7BKduYVbR4/7Kkc7TrBINBdvQvjx9
         3yPJpSyTGxhkteWRADan5or6/I/ptZ7FJCmC7DUWETR8+yxIdHD835XvmhFLYqWT7qb7
         8t1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xPZVlyPSz2nv1o/HXYhIEyFJ+ateZIDmNeD1/IK3Zok=;
        b=HkD12bg3UWgv9pX0/u5sBB+Y0XA5r+Q4zF0cfBpuZ0sbm9pFRCyyeQo9gASiivc3Es
         Qmn5mJ1cHWVFh6xMHI8ShZvGWPXYezdc6ovcHMaV/vcwd1DR5Osg+2a846zGYI6KLthC
         pN09dQPXKe+nVNyuGZ/rqNPi+j9zu/0by6dxcfQvMOqWjsUOXwg+sLcFR7S+38qan6iv
         sBI5NU6DfkCW4wuLOlOm1WFEKIEIEVhWp8VPFUq8WUaPecaGMV4z4aYHf3U2IIcXy81j
         WwkUlK2cyc6g9TkbRXxjwelRSI1IXwTTj13cBmD7/1mi0dxwJlLzgWENwd5Lo+USOb4N
         kbjQ==
X-Gm-Message-State: AOAM530xj9dEMToWNIARDft9FH9H7yv59MwS+fKMUi6ShM2b+w9sL8zd
	cXIQyq/vLtz0b2N3x61VUo4=
X-Google-Smtp-Source: ABdhPJwHxELS5QgkLO9keDidPfZwIg4Y7+AhpjojUQwOf4xqOX5XPg9WaInBkcrfo1SHnkVshp4b8Q==
X-Received: by 2002:a63:524a:: with SMTP id s10mr22341190pgl.40.1600460093789;
        Fri, 18 Sep 2020 13:14:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:8c8b:: with SMTP id t11ls3176388plo.3.gmail; Fri, 18
 Sep 2020 13:14:53 -0700 (PDT)
X-Received: by 2002:a17:90a:e016:: with SMTP id u22mr15365478pjy.178.1600460093169;
        Fri, 18 Sep 2020 13:14:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600460093; cv=none;
        d=google.com; s=arc-20160816;
        b=Ng8cz6SpahtVF2/QwsvYUEQpGSw/Ev0mOYcJGCiBYWRYTgFB2pi1snOXY48PMrJ9Jt
         Zjm5NFr62pdVLgtVPdvd/Fpp12BM9Ry6E2EhD6cHGzSzzb9U6b1EkYzG/3rRVv162H1J
         2ZwX19oUI15sciOOgVA9j6onmUVt1OhQ0kKrtW5neyx0xj+xH3LNBdwEBKLcWe14Ifuw
         X37bVDfuLVsdZydjGrbXGqCZelbzG+L5hDs6DSy8PBG1AcYeSJlMZo2YyAiMFiHGq1X/
         TfP7LyaxNXb1Qzr1m1HcA2EHDjpoMPwXNLNvOaavRrZfa/t15Po0h1K+0QcBxMiMyuQ/
         M4Vw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=SmkRBXA7nybVMgRFHrOcpVUvMfefLOj3bIKZYl6feRQ=;
        b=S4dPXlc4O9D5SpPgHUMyDal9mrq16Da06aFmzNaYR6Ldlknh/kMnGq30WNJTOCCTw6
         6pN6z8ktDXvSg88NUfZpC2ptzf/SkXCnxXRAzm4vbJ3N5e/fHY8Q+AHLRoK1G/WTulcM
         jCKl1xnFFL21Hy/B86APLKBkcWOVmBG2P5mwGX7cSIFR4hgDTgJ/+zhLa5r+sJHcdxDO
         KCG1atkNFD3uflqoc/o9gtIfNorP0Pw1f3dUcCx2x/gSIGYIg+buGcOiZHRNbxQ/z6AM
         58L8MDnkfLX+F695Yflo6zyJATA0fnHp2Bi6lXfTmBpNYAIMWdxKdOMR8lU+N+RNR0A7
         b9Yg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=vLxQSiTd;
       spf=pass (google.com: domain of 3pbvlxwwkapsvdplwroydqhqjrrjoh.frp@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3PBVlXwwKAPsvdplwroydqhqjrrjoh.frp@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id bk9si287421pjb.1.2020.09.18.13.14.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Sep 2020 13:14:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3pbvlxwwkapsvdplwroydqhqjrrjoh.frp@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id 140so5473876ybf.2
        for <clang-built-linux@googlegroups.com>; Fri, 18 Sep 2020 13:14:53 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a25:bfcf:: with SMTP id
 q15mr21002279ybm.133.1600460092312; Fri, 18 Sep 2020 13:14:52 -0700 (PDT)
Date: Fri, 18 Sep 2020 13:14:12 -0700
In-Reply-To: <20200918201436.2932360-1-samitolvanen@google.com>
Message-Id: <20200918201436.2932360-7-samitolvanen@google.com>
Mime-Version: 1.0
References: <20200918201436.2932360-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.681.g6f77f65b4e-goog
Subject: [PATCH v3 06/30] objtool: Add a pass for generating __mcount_loc
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>, Steven Rostedt <rostedt@goodmis.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux@googlegroups.com, kernel-hardening@lists.openwall.com, 
	linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, x86@kernel.org, 
	Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=vLxQSiTd;       spf=pass
 (google.com: domain of 3pbvlxwwkapsvdplwroydqhqjrrjoh.frp@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3PBVlXwwKAPsvdplwroydqhqjrrjoh.frp@flex--samitolvanen.bounces.google.com;
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
index e034a8f24f46..6e0b478dc065 100644
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
2.28.0.681.g6f77f65b4e-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200918201436.2932360-7-samitolvanen%40google.com.
