Return-Path: <clang-built-linux+bncBC2ORX645YPRBLXLSP6AKGQEM5Q3TLQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x639.google.com (mail-pl1-x639.google.com [IPv6:2607:f8b0:4864:20::639])
	by mail.lfdr.de (Postfix) with ESMTPS id 13B9528C5E5
	for <lists+clang-built-linux@lfdr.de>; Tue, 13 Oct 2020 02:32:48 +0200 (CEST)
Received: by mail-pl1-x639.google.com with SMTP id bb2sf12971291plb.8
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Oct 2020 17:32:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602549167; cv=pass;
        d=google.com; s=arc-20160816;
        b=hxfJE/vpm94A/vfiqLp1+mb9gAjNjPZwev2osoXj44qDnIeXouoge5tBQ6zw6XcXv7
         HYRs1PKp5aEGG6kZid/w4u97yW4TeyFWYc4G5r4sy4OWCD1mJWBZGWpYQwYhTf1xDo/E
         xRovVEBHbhS4qCPZrTZ9cjUsQIOWXUQCZ7xGxM2J/Wpj8sqPAbRfuFpCbRLL45RIC5mS
         iDlOhLnEckdjR5vtM0B6aUdoDTWJ1AMs4LIBmqFOqVu/XBvbVSOFvRty7LzxesdNCI14
         l6VaS8ryrW1t9GF96uXZDWImdgzV9pU3Q3/WLvW3+7Fjwb7mBpt4bo8wW1STw0zIByxv
         KR8g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=IwdYSs5pg2UwLETrr6YMcLbAmbishuxOauR4bH3wocM=;
        b=r/aONaVv0urNlfFhW2MKoxw08b+v4fFr0BPjccCoNHRlxVAOLBrUFEchxy/BUekreO
         OJnoxU3ARy6zm43115bAydVmjbaaH3AxIeDuUdMHCBSSmdpQi7dgfaCJv4F3supk99AG
         6qVpde3e7JzCUunNB1ZHXMRLxzlwS2/VBOW+E56TtgPYAPSKAoDHYQJ42uryez+6JcdV
         V6OvNiMNc9t3Oj6KFgMP5/yg6gF1/DOVaBopaBDmXe4sNd4wzXH2vAFWJe0al3QUAW8+
         LLyFG6jcYHVm7R39yfotoIytJoLqvfHO/3SXfh7nkMw8XLRcBtfqRXRxGM4R2F9ZiV5Y
         Pd2A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="CRqhP/uY";
       spf=pass (google.com: domain of 3rfwexwwkak4goawhczjobsbuccuzs.qca@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3rfWEXwwKAK4gOaWhcZjObSbUccUZS.Qca@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=IwdYSs5pg2UwLETrr6YMcLbAmbishuxOauR4bH3wocM=;
        b=bRvjsw+WnpRREoN8JVD5S2q8cQb+II9XqfnBDG+Jrm+6a3gd2dHG8uJbjqY1HKQwhz
         f0naumdA8v+NZvSolV/dBTNLISxYo+ZbrdHZtEcXhD2mpiaI9ohmSR8kpAf+bSDzJDy4
         RIFNUI9Ly1CBTOeEer8z1N/mxqvbNAjHvfBkRJnuQl+M7N8F7c9pIRGDeB9SYO5A2qR/
         EPmftNI6tGvvpBPapNDhFcSn89JG3lhHgpHsJxIo10/p4J6oRvueZcrhV28DoMHwvJYO
         C/xlrt6fnXaIqMxMk1H7OFx5o0j7mmIPxFSXuWO9FZENOVH6XkSd1Y7uJibj6h5+OA9P
         hhwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IwdYSs5pg2UwLETrr6YMcLbAmbishuxOauR4bH3wocM=;
        b=f8PODEZV5s+7zhgwcF9O9WsDgrax1FWSSIxnhCJwBy2fvuMyRLH1SM623YBiYR2XX9
         LTzP7n8eqQMRtRq+Aa1mBYKiYXU1ai6rrU5XcQ+vhDxLC8whs5GcrgUDuCgzFn15jLdD
         8Q/5b+/mq4ARUW/f4VU46y5ai5kIcyYk8KueWpHAve9v/LKYI79IiwZdFBYcHFRbBgQW
         CoG+SGwvA+bTTPhoALbggLera+vcbKZjgG2AVMwn8FuU9vOmRjqa/ZKiBVQspb25AZ/R
         E411NOR8FrtcgGnebCZn0NLFj5dTUPTu8BVQSK5tZBqR4Xi2j7/USUjs35qmwiYvRSqH
         6rXA==
X-Gm-Message-State: AOAM530uyayTFlGdTkJXsCRVJCZMzEwgeBvUkdkXXl42CDx2FTBccSoY
	V7Cvx7n0WQn4f4sZXUGCXcs=
X-Google-Smtp-Source: ABdhPJzNaKdpogreqTLsz/SpDat69oHJyBG/hsG3tniFuuVf6kyRLiQybLaVLfkHx3VP1YzJNgk0aw==
X-Received: by 2002:a17:90b:14d4:: with SMTP id jz20mr22317345pjb.106.1602549166803;
        Mon, 12 Oct 2020 17:32:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:9045:: with SMTP id w5ls8301184plz.9.gmail; Mon, 12
 Oct 2020 17:32:46 -0700 (PDT)
X-Received: by 2002:a17:90b:902:: with SMTP id bo2mr22215351pjb.169.1602549166284;
        Mon, 12 Oct 2020 17:32:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602549166; cv=none;
        d=google.com; s=arc-20160816;
        b=HpMr20uUGd+oAGUMgeY9SQTU5Gaghg/Ok0W9eOyd1zsYOfW9GWbviAGZCjWgz9d5jH
         qZdeSTcXGsSM0NGsOii25gwdX4kFC1L7ID9hFCp++84miYI/hgIkUY56Wu9Pqh4R7PMx
         jqHskcSrAbOzSEUNdA79ePCHJ2FNBITgSsNHAYTQBAx+QSzEHNi/3F6bg7crex/0+Q6o
         HS8d/8cKrqlN7J0U7s8cKwc6utVVsX0MPcRh1W9ovQNo4YYy9vho9OHf+gmXBKasK2Kk
         mWWUWHm1iJBdHOxokMVf/AyaKVgN13OhnUsF6sER3/OC4uFgrmgYXtouOsxlURuaLyPt
         7Xmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=q9NeEgeJtjuDXz46HWaR2aTcr7U+m+G2Xtw7ZYj0i80=;
        b=XhGTeVh+bxWmpzXB9Ztm92pdiuN4gz5XGPtoU/LmPAN0wOWaQbiam1M6jcz4xvcOPi
         WFYJ1P5R/57GVty31XkHXb2rcTCB7sEDvWZbwV/W1o0UkWO/IACI83Us66uMGnRKnNeb
         78qQcNr9987eY3dR+++UPAzzgYkVaP/ak/e/ivOLgRMwFQANzGRfbVg6GPgPTvvH2IiG
         axG7U2EFaKMqxP1qRINqdH6i+v3Yq9fpdrCqGBEu7STQzzRjxFxIm1+TmigQx8r+sYWj
         IZWr9ro2gssBmkubIqfi0qNDWccxMjTjHAh1USLUgYgZ6obU426YNYaPEAW7Wf+1eUNw
         mX4w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="CRqhP/uY";
       spf=pass (google.com: domain of 3rfwexwwkak4goawhczjobsbuccuzs.qca@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3rfWEXwwKAK4gOaWhcZjObSbUccUZS.Qca@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qv1-xf4a.google.com (mail-qv1-xf4a.google.com. [2607:f8b0:4864:20::f4a])
        by gmr-mx.google.com with ESMTPS id i4si1643474pjj.2.2020.10.12.17.32.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Oct 2020 17:32:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3rfwexwwkak4goawhczjobsbuccuzs.qca@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) client-ip=2607:f8b0:4864:20::f4a;
Received: by mail-qv1-xf4a.google.com with SMTP id o14so11744315qve.7
        for <clang-built-linux@googlegroups.com>; Mon, 12 Oct 2020 17:32:46 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a0c:c548:: with SMTP id
 y8mr20871526qvi.41.1602549165345; Mon, 12 Oct 2020 17:32:45 -0700 (PDT)
Date: Mon, 12 Oct 2020 17:31:56 -0700
In-Reply-To: <20201013003203.4168817-1-samitolvanen@google.com>
Message-Id: <20201013003203.4168817-19-samitolvanen@google.com>
Mime-Version: 1.0
References: <20201013003203.4168817-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.1011.ga647a8990f-goog
Subject: [PATCH v6 18/25] modpost: lto: strip .lto from module names
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>, Steven Rostedt <rostedt@goodmis.org>
Cc: Will Deacon <will@kernel.org>, Peter Zijlstra <peterz@infradead.org>, 
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
 header.i=@google.com header.s=20161025 header.b="CRqhP/uY";       spf=pass
 (google.com: domain of 3rfwexwwkak4goawhczjobsbuccuzs.qca@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3rfWEXwwKAK4gOaWhcZjObSbUccUZS.Qca@flex--samitolvanen.bounces.google.com;
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
2.28.0.1011.ga647a8990f-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201013003203.4168817-19-samitolvanen%40google.com.
