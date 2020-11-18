Return-Path: <clang-built-linux+bncBC2ORX645YPRBPFW236QKGQEVASSA3Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43d.google.com (mail-pf1-x43d.google.com [IPv6:2607:f8b0:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id 252C32B872E
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Nov 2020 23:07:58 +0100 (CET)
Received: by mail-pf1-x43d.google.com with SMTP id x9sf2101049pff.10
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Nov 2020 14:07:58 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605737277; cv=pass;
        d=google.com; s=arc-20160816;
        b=LPUeLyq6U9XhqzdEC4FD6TgR9YBVXHnALQ3U5405OLJeK7zAIf83neZYcL4Hp6//Hw
         MWLwy9Xwbdip7n21Gf7mpOsogg70dRvn2TwJj2T6mRptG4M/NQge/iT7JlIjA8gR0tfA
         bCjTJnzyerkJcBNHd3oQZeLQNhVDWe0JIkwmO4TP+10d9dc1/WFfBzfxRdKTzJ+Q7VJX
         tc7IrlDL2lP1nNV/6aOniYG9Ku6paoKrQ5ZIRRfxVugZNSnPn07lePJvGkTlew6QR6ez
         6ppFzMR4EYKllcnw+k1JoCLQfunLqyTD9/Dq7yZ7RtElDHHFn0jylwJDgS8j2hYOdw5Y
         2V4A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=khDjYsmssIT3F8A97xVnaT55dZB4m2lcIYQctGyPMr8=;
        b=lXZjsG0eXifDFCZ72adkS8VKOzSBf57E2jZ4xRoX8b1V7JO7HYiB+GxKDmPX0CDvXQ
         PeSpuzJjpRa5yHJUGazcUekNzazw+4isSvF/qThKZ2OANIjDXyQNuH4kKoYvyQU/SJJU
         dfE9FoZa2gHYN4b3Ld1WFINKF8vmjGDlqvzwbwTmIMTE26aAxowhgZQqY+ccMhrKuvy+
         pCXxDTBK3TAvG5UtXz22FiiixHv8IT14f1yWNZXvziSVYSvBUCYLxBr7T4zbWcQ6bxD+
         IwNws7UzZadiXKNsEs5jfJ6n/gdYCJ1vGx8ay7PSKbjZa2mmejncMG5W3RkKJR1KXOAs
         5HLA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=dbW3OmpX;
       spf=pass (google.com: domain of 3o5u1xwwkaew6o0w72z9o1s1u22uzs.q20@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3O5u1XwwKAEw6o0w72z9o1s1u22uzs.q20@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=khDjYsmssIT3F8A97xVnaT55dZB4m2lcIYQctGyPMr8=;
        b=iDU0DG+Lyfy/0ELOZs2nGHsRN9CVvlxuwpr3iIW8o1IVYAEI5sHGVzKGleokLfhU15
         RsTtJcy29DcMdrOiXCvxzsaSeokMSphDfe+2sZ7E9ldLtP7bW87DJOsqpiPqSC1vWDn7
         0i9PnogAkfpmAxrYPXMYjTXDMD2SMDbwDiUNO4xF5VRvt8/WViOEy4j03eMZgPd8J2OK
         UQd34NMTCBeRe8ObSE1Jf7nUEgWANTaSWT0tWwsH2r5jKmnTe9RJtTR1EgVTMmaTvkM8
         s3MnmWsr30ilXj6IOJIeRN9oPd47URs3QXD5VlAP6G62ZF4+TeLlAJtIsfjwHUDTEE++
         Dofw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=khDjYsmssIT3F8A97xVnaT55dZB4m2lcIYQctGyPMr8=;
        b=MIHmn95N/9JZCGtqq+ytMKe+T1e5/kC5VYq+1vTN83MOhI7HY3VoJs0v75kBjDBe50
         PK3Y9U/DT3jowYpuZVkEMrH3tY4m9WeNCd1lFCbSIlI9bMJVPu2c4/FwUO5Ib3A5oZ1h
         pwziCKxFhnego2vj3qAgf6rqKTBKVh0u1YsCT7TauRUjdaJSIxJ4IZx03EZLlnw/WIE3
         78nAoECE8AQUnB/TLP7yF0ofOcCQqlBtjLHPgV0lLDC9GKe9LXw5siq1wfOo37AHSZyN
         f2ztqvI/LD5x6wgMXJkpnV7U0qsbq2Ss5vPwA0K58Iu4H29Q9qhBVbirVY2lR/Km3YOw
         kRjg==
X-Gm-Message-State: AOAM533NcoEZCz1fciNL+SBzmR0uFWedfHSx2jZ/V+hH4k55VaEinZJb
	w3kqfE3IWn0GatkuJkQEItQ=
X-Google-Smtp-Source: ABdhPJwndtYlIisVF1w6E/Ra87zXHj/qx2OqZn8RgM3Joub/pWz2Di9dXAxY7JFF9y2UrSuoizyPbQ==
X-Received: by 2002:a17:90a:4f06:: with SMTP id p6mr1105443pjh.227.1605737276895;
        Wed, 18 Nov 2020 14:07:56 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:be18:: with SMTP id a24ls266135pjs.3.canary-gmail;
 Wed, 18 Nov 2020 14:07:56 -0800 (PST)
X-Received: by 2002:a17:902:b582:b029:d6:6008:264d with SMTP id a2-20020a170902b582b02900d66008264dmr6285986pls.80.1605737276167;
        Wed, 18 Nov 2020 14:07:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605737276; cv=none;
        d=google.com; s=arc-20160816;
        b=mu849JDWOjfjActLPLUQO2wwwYvl6YiSWvqo0mLkwImowggS6CQKi5GaZivCyhXKeL
         ZG4EWbbptL8qc6A+JHIl72j+0XcW0RXTU/X39ynhurgloiFNmLkR4Nkgm5h8FRsaOe3B
         SU6J+2V5x4FlN9JH67NxNgEbUJ6AS76RWpWSjcly5q0UWRrqNtYsmiNNtYHgrLa/uBEG
         HzWyb+l28sTg1X+76ayMz1h2SwcSVMxa9Bnkfjd/JoTh/Me7cC1iSoYzEXLuVhdXuG7B
         Gp+y8cXSdEBMqm4FnAGFuo/AtoOEvLdlC3sZhS/KLF+/JbQN7FfJdkOo+HzOZueT7rWU
         7eYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=viQfWSBnWWQkhdsfshg6wjQjXkrLrUdatQTDtGtOjLo=;
        b=u3zaPHiN021vH6Jqa93ez/zudobW0/jluJnuYdY5AZKp4WOv87cKvGrr9xjOjeXklm
         Ef1BjsZDD0xwBBLsfuqBx/O7d9i0PmO1lLOBB7JKPTLNcJ/4DMYTMu8r8FLWdE9Nib/S
         JOqNIdBoaXt11+ftXhTw32c2jjlnZ9Q+0u+T3InFya+ouN9vhf4XB1gpdk2paphuBmdN
         tulW2OrKvyz38gsD+XZL6KLGt5dR/AwAqQjQgiTVshHL95ykRDmdYTDFaees68Vc8lZr
         RwFzay6QgLn5vb0SnD4/Psz0rLrYvtCV3JWX4u95N8BV4RFzf2vKUFVzzvZ1gETqIBGH
         I05w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=dbW3OmpX;
       spf=pass (google.com: domain of 3o5u1xwwkaew6o0w72z9o1s1u22uzs.q20@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3O5u1XwwKAEw6o0w72z9o1s1u22uzs.q20@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id d12si600967pll.0.2020.11.18.14.07.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Nov 2020 14:07:56 -0800 (PST)
Received-SPF: pass (google.com: domain of 3o5u1xwwkaew6o0w72z9o1s1u22uzs.q20@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id r4so3653135ybs.1
        for <clang-built-linux@googlegroups.com>; Wed, 18 Nov 2020 14:07:56 -0800 (PST)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a25:9248:: with SMTP id
 e8mr12067724ybo.223.1605737275399; Wed, 18 Nov 2020 14:07:55 -0800 (PST)
Date: Wed, 18 Nov 2020 14:07:24 -0800
In-Reply-To: <20201118220731.925424-1-samitolvanen@google.com>
Message-Id: <20201118220731.925424-11-samitolvanen@google.com>
Mime-Version: 1.0
References: <20201118220731.925424-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.29.2.454.gaff20da3a2-goog
Subject: [PATCH v7 10/17] modpost: lto: strip .lto from module names
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>, Steven Rostedt <rostedt@goodmis.org>, 
	Will Deacon <will@kernel.org>
Cc: Josh Poimboeuf <jpoimboe@redhat.com>, Peter Zijlstra <peterz@infradead.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux@googlegroups.com, kernel-hardening@lists.openwall.com, 
	linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=dbW3OmpX;       spf=pass
 (google.com: domain of 3o5u1xwwkaew6o0w72z9o1s1u22uzs.q20@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3O5u1XwwKAEw6o0w72z9o1s1u22uzs.q20@flex--samitolvanen.bounces.google.com;
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

With LTO, everything is compiled into LLVM bitcode, so we have to link
each module into native code before modpost. Kbuild uses the .lto.o
suffix for these files, which also ends up in module information. This
change strips the unnecessary .lto suffix from the module name.

Suggested-by: Bill Wendling <morbo@google.com>
Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
---
 scripts/mod/modpost.c    | 16 +++++++---------
 scripts/mod/modpost.h    |  9 +++++++++
 scripts/mod/sumversion.c |  6 +++++-
 3 files changed, 21 insertions(+), 10 deletions(-)

diff --git a/scripts/mod/modpost.c b/scripts/mod/modpost.c
index f882ce0d9327..ebb15cc3f262 100644
--- a/scripts/mod/modpost.c
+++ b/scripts/mod/modpost.c
@@ -17,7 +17,6 @@
 #include <ctype.h>
 #include <string.h>
 #include <limits.h>
-#include <stdbool.h>
 #include <errno.h>
 #include "modpost.h"
 #include "../../include/linux/license.h"
@@ -80,14 +79,6 @@ modpost_log(enum loglevel loglevel, const char *fmt, ...)
 		exit(1);
 }
 
-static inline bool strends(const char *str, const char *postfix)
-{
-	if (strlen(str) < strlen(postfix))
-		return false;
-
-	return strcmp(str + strlen(str) - strlen(postfix), postfix) == 0;
-}
-
 void *do_nofail(void *ptr, const char *expr)
 {
 	if (!ptr)
@@ -1984,6 +1975,10 @@ static char *remove_dot(char *s)
 		size_t m = strspn(s + n + 1, "0123456789");
 		if (m && (s[n + m] == '.' || s[n + m] == 0))
 			s[n] = 0;
+
+		/* strip trailing .lto */
+		if (strends(s, ".lto"))
+			s[strlen(s) - 4] = '\0';
 	}
 	return s;
 }
@@ -2007,6 +2002,9 @@ static void read_symbols(const char *modname)
 		/* strip trailing .o */
 		tmp = NOFAIL(strdup(modname));
 		tmp[strlen(tmp) - 2] = '\0';
+		/* strip trailing .lto */
+		if (strends(tmp, ".lto"))
+			tmp[strlen(tmp) - 4] = '\0';
 		mod = new_module(tmp);
 		free(tmp);
 	}
diff --git a/scripts/mod/modpost.h b/scripts/mod/modpost.h
index 3aa052722233..fab30d201f9e 100644
--- a/scripts/mod/modpost.h
+++ b/scripts/mod/modpost.h
@@ -2,6 +2,7 @@
 #include <stdio.h>
 #include <stdlib.h>
 #include <stdarg.h>
+#include <stdbool.h>
 #include <string.h>
 #include <sys/types.h>
 #include <sys/stat.h>
@@ -180,6 +181,14 @@ static inline unsigned int get_secindex(const struct elf_info *info,
 	return info->symtab_shndx_start[sym - info->symtab_start];
 }
 
+static inline bool strends(const char *str, const char *postfix)
+{
+	if (strlen(str) < strlen(postfix))
+		return false;
+
+	return strcmp(str + strlen(str) - strlen(postfix), postfix) == 0;
+}
+
 /* file2alias.c */
 extern unsigned int cross_build;
 void handle_moddevtable(struct module *mod, struct elf_info *info,
diff --git a/scripts/mod/sumversion.c b/scripts/mod/sumversion.c
index d587f40f1117..760e6baa7eda 100644
--- a/scripts/mod/sumversion.c
+++ b/scripts/mod/sumversion.c
@@ -391,10 +391,14 @@ void get_src_version(const char *modname, char sum[], unsigned sumlen)
 	struct md4_ctx md;
 	char *fname;
 	char filelist[PATH_MAX + 1];
+	int postfix_len = 1;
+
+	if (strends(modname, ".lto.o"))
+		postfix_len = 5;
 
 	/* objects for a module are listed in the first line of *.mod file. */
 	snprintf(filelist, sizeof(filelist), "%.*smod",
-		 (int)strlen(modname) - 1, modname);
+		 (int)strlen(modname) - postfix_len, modname);
 
 	buf = read_text_file(filelist);
 
-- 
2.29.2.299.gdc1121823c-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201118220731.925424-11-samitolvanen%40google.com.
