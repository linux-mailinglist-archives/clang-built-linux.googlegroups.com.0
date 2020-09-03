Return-Path: <clang-built-linux+bncBC2ORX645YPRBJNFYX5AKGQEZFFRWPQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1039.google.com (mail-pj1-x1039.google.com [IPv6:2607:f8b0:4864:20::1039])
	by mail.lfdr.de (Postfix) with ESMTPS id 278CA25CA5D
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Sep 2020 22:31:35 +0200 (CEST)
Received: by mail-pj1-x1039.google.com with SMTP id y5sf2257173pjw.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Sep 2020 13:31:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599165094; cv=pass;
        d=google.com; s=arc-20160816;
        b=GKGx/0DT5CntUMfJJnecfRKlXf3TMpw3iv126S8YURjfnFSPNsT5gooFbqqNCd2IXP
         NOO/1OUOJ+9WYPYFK+YbSiUpo2OQrOKRVxVM2rCx8B0Cw6YG+hdc+Vzh1fggx58eBAqB
         0NKOjQz6oghDi5aCGKuB9dVgf8n+H75P2rXm/wYTXKwrHkK2+QTNeMghLms5TrLrCOO0
         UI9OdCp+nH+71t/G0vKVmsGhq3Qnf4+aXT6ly7p57bUyx7Jigttfch4JDvLI2nVV5bSC
         IcsT8sDJbsRjuw4ydxu3SEmLNBCaieW0YxYb7CMey3G/Q3ei6O80US1wgiw29DiEd8ga
         HgTg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=jCa+60wVm0nZ+bCjDAbc0BMEo+3J7frpXdRCdjOAbTk=;
        b=L71vu8HW5mMLaI+xFHOmwF3Abh7lWxwcdKntk/kdeeTOI76E4KdZc2tae8LnE9cIsS
         /5r7ZZtyzACwAXun3jQyMAE6s26kdpRrvZVUQESc+RPAP/s1kdpyrr3HMwRVFsxSNKun
         bPMTGiuC0MuJQomDzqKZt4iCvi8dYpS0jss3Y5ey0B8/rqTfECkNSzFgGg1ErI+XcX0P
         1leCmebxO3OIKZo1FNQaRIN3gtD0QCz32s+8LbVdJCU4utSIsWKJQtz+2Rx6jRoSmTRz
         gp4ezm5spih9t3YY6++AawK5nJTvA5CHdtk2IPpRqRkk3L8Katbhz+T87pmJNUB7TiEd
         sOGg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Wwj4fbPi;
       spf=pass (google.com: domain of 3pfjrxwwkai8bt51c74et6x6z77z4x.v75@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3pFJRXwwKAI8Bt51C74Et6x6z77z4x.v75@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=jCa+60wVm0nZ+bCjDAbc0BMEo+3J7frpXdRCdjOAbTk=;
        b=l8Chdk5GdMttyzifdkiqhMeu1ckIED+XZVhcose257uXd+PbyHC+4Sp6KlCtIbfbXm
         KMUKA0G+oJjTXn9R2L3ZoXard7Wfs+HZ9XJD+FSrBHZ/T3T9Iumz8O7MhfeadZI2cu/B
         t8CNdaUFbN85tjtNimCGp5s2l/19N/TnoYdBGLMBPiEsKL4UAL9IWS+acGSk+f4JsXJG
         oBtYjwyKT8DCiI1bC489w2AZs5J3CFRcdNfbYVYG14LPENihBDb7ghKzmlkRyS1+/jJQ
         GcOTJHk3r4Yz6HVHoicApyVvOm/lu4wtDim9QAmh0ebLDcTjOKygqOtsAioXAbH7vsLK
         59IA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jCa+60wVm0nZ+bCjDAbc0BMEo+3J7frpXdRCdjOAbTk=;
        b=tLxeiu1cu/6Ixtos/paAUIwLFdqbjozdhNiPPt2alGFhxpSx6NYRMjylZM6MIUB3mv
         DKQZXWq5hMShaVmDd6vGmH23KdS2dbHsU2bE1Qu7iSiUdtzdGqiJaBkyLRwS5afnXSIc
         KkA7y0e9y/5Ep3zTIARegcd68hMicl1horVp1fQrPqQMdvNtTsf+R3Ef0em8EozHDiPk
         8I/W7hszUHbP3oJe0LS+MFx13QkYdhkR8lJ5U5bJVh6g0UQCeBjk7PjrXOKoLVFqiNhL
         +8VZrr0grk9ux2mht/tWFk7geMEXPrP3mbV5fmoEh2GCQj6LH/2iCguphqHct057ywKO
         adsQ==
X-Gm-Message-State: AOAM532DzjXzLZti7ZLQyB0hExMPI1u7QDs/NUT4cf1us/sYkcDH0mCs
	IuUkgeLMPA/18UBOiu8K0ZE=
X-Google-Smtp-Source: ABdhPJxyutBXJAurRiDC3FR0V5z2J6EltEdiESbk1YeiCDe/Ql5MvrFktw7rrsiF+hHMuVl1lO3B+g==
X-Received: by 2002:a17:902:7288:: with SMTP id d8mr5462422pll.74.1599165093883;
        Thu, 03 Sep 2020 13:31:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:d745:: with SMTP id w5ls2154544pgi.8.gmail; Thu, 03 Sep
 2020 13:31:33 -0700 (PDT)
X-Received: by 2002:aa7:9685:: with SMTP id f5mr5544854pfk.232.1599165093214;
        Thu, 03 Sep 2020 13:31:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599165093; cv=none;
        d=google.com; s=arc-20160816;
        b=oeoPs2LwcYEF14nUsS5bZNC/qmXDuCyOmeRolNCNBhSxfKFB1DOaXSlnq0Wyi9E9Rl
         hOP8g4fVXlvr2sh03obmQfYeKrcBVX5uZPdMaV8mkjbuq4KZF1xobCXRkjXSKmeMT4g4
         OK8oiCvPmMSlLoHNhcv6NuNHNxiaf5kKP+CdjtSuMcoXICB+UdI0AjGAFzBdvevj8HRA
         65eaNeGYI3iGRwXki84diFqWMwu87TE4G6/mXP1Pw6MJh6pWwQJteDCvVl3cjtRWcV+s
         J7eTvofxWtFCvIlgDi+jcoixb9RHZ96qSNZNELiEBGurs0cvqIE2nDKunylMRAV6NyUD
         misw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=VUJUKDAJ3fJySVYvxhrUakUmsYa/4xrgILfSxrYRNic=;
        b=a27szzgDGyXO97XgvU2Fqw2jHmtOgCuoXZV/AYF/XP+e45cno0/rAX5cQbwu5rb/nN
         d6M5WXiwakLpFnjR+wVxLsMpr9O44d2R0u08kX26OzTG4jmyhBBugWVXy4DB/o2TzAxc
         7CsPx29iZFhBBOJQh8Rlpjq8wnVOMclYUM195pviWDl/d14I37hREnbFbbPeEkDP24TP
         exL3j9w14/yNWllzRAz/CF+TOmLMGTR2nM0eqGRT0e8CdrgrgZI2SnPDS0uKrDm09H8V
         G87FN5R9NnCSfejaJUWuaacVduWI6Nwr1imM8JOsg+x55CSXVKuJdv5k90LEhDTKfI4m
         huEQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Wwj4fbPi;
       spf=pass (google.com: domain of 3pfjrxwwkai8bt51c74et6x6z77z4x.v75@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3pFJRXwwKAI8Bt51C74Et6x6z77z4x.v75@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x849.google.com (mail-qt1-x849.google.com. [2607:f8b0:4864:20::849])
        by gmr-mx.google.com with ESMTPS id o185si284518pfg.4.2020.09.03.13.31.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Sep 2020 13:31:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3pfjrxwwkai8bt51c74et6x6z77z4x.v75@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) client-ip=2607:f8b0:4864:20::849;
Received: by mail-qt1-x849.google.com with SMTP id p43so2893265qtb.23
        for <clang-built-linux@googlegroups.com>; Thu, 03 Sep 2020 13:31:33 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a05:6214:292:: with SMTP id
 l18mr3618298qvv.3.1599165092309; Thu, 03 Sep 2020 13:31:32 -0700 (PDT)
Date: Thu,  3 Sep 2020 13:30:43 -0700
In-Reply-To: <20200903203053.3411268-1-samitolvanen@google.com>
Message-Id: <20200903203053.3411268-19-samitolvanen@google.com>
Mime-Version: 1.0
References: <20200624203200.78870-1-samitolvanen@google.com> <20200903203053.3411268-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.526.ge36021eeef-goog
Subject: [PATCH v2 18/28] modpost: lto: strip .lto from module names
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
 header.i=@google.com header.s=20161025 header.b=Wwj4fbPi;       spf=pass
 (google.com: domain of 3pfjrxwwkai8bt51c74et6x6z77z4x.v75@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3pFJRXwwKAI8Bt51C74Et6x6z77z4x.v75@flex--samitolvanen.bounces.google.com;
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
---
 scripts/mod/modpost.c    | 16 +++++++---------
 scripts/mod/modpost.h    |  9 +++++++++
 scripts/mod/sumversion.c |  6 +++++-
 3 files changed, 21 insertions(+), 10 deletions(-)

diff --git a/scripts/mod/modpost.c b/scripts/mod/modpost.c
index 69341b36f271..5a329df55cc3 100644
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
2.28.0.402.g5ffc5be6b7-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200903203053.3411268-19-samitolvanen%40google.com.
