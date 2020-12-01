Return-Path: <clang-built-linux+bncBC2ORX645YPRBH7PTL7AKGQEFOJTFFY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3b.google.com (mail-qv1-xf3b.google.com [IPv6:2607:f8b0:4864:20::f3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FE612CAE92
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Dec 2020 22:37:37 +0100 (CET)
Received: by mail-qv1-xf3b.google.com with SMTP id e11sf2186003qvu.18
        for <lists+clang-built-linux@lfdr.de>; Tue, 01 Dec 2020 13:37:37 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606858656; cv=pass;
        d=google.com; s=arc-20160816;
        b=WMopfem01nS7aV9hAqdu8JAoWVARKbqIHwUooRJQcBYc4hK7WIy8QQ3ygdev2pUBSE
         g8dypScpUSFAV/NsFjaWqbXtXLg6lolqpvMffBM2LaI6efjUtj004vYolubj7qYpIrIl
         /usd0qu5HYXDNDDB/MdzYgr8K/0rZj9ttYnD6vNFen9WISaupCP683cSq0IsZjnWOkda
         CIK00bjy/uugElABvXtx+ULjZYnInzLTDZsw4Bhr+zApNvQOFEQQg1hwgLNTISa1qVjS
         httk2YLCiBDTrVDP+i2w7u3xQT9YgeVswVGo9y4e9PA5S8qlfzJpSolvR+3EkUSZawoa
         OdOA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=tNkOuoceGIxt6oCl/yaaofg0j9Zw90y6/f61o9sPmlo=;
        b=C9mmnHuGOqRh5yAW5+A/Iqd27VVVV9cgQXg0edb5BTlxyu5BwXhMR3dPIA9Zb2vxAf
         y11vAMWIpzVZC2gKW7niNaOKrL1fL6e7TZRf3eQ3mgNgNPHagd4XIkoKy9I6xGqVOfq2
         PxWbBg7myfvg8+a0vDLt+2JNdjoM1bkq3H8rrFMh8txU6COPgcfD6/EUIuvGMbjsbQxA
         zPRPpo9BoywUPToYcWq/yGSraZotBAlONIGI3sqgOgvFyeK2n17RC1exaiEEh9tLtwWJ
         CcjpOCMVsa0cIQfcF8Ume9iJuhiPlOir6MOBLIGA6diJuBSOTCAmnbLtejEWYc4PYYqP
         2d2Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=uSKl5Hyg;
       spf=pass (google.com: domain of 3n7fgxwwkac4ckwsdyvfkxoxqyyqvo.myw@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3n7fGXwwKAC4cKWSdYVfKXOXQYYQVO.MYW@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=tNkOuoceGIxt6oCl/yaaofg0j9Zw90y6/f61o9sPmlo=;
        b=B89FvIsQmyZZ0LWi7Gfat/M9Ati039sDE8cdWTzSy4/xLkvTaY3JNHUoZKs8Joz7Qx
         JLCQsmDg3Eou2rEwwKcMRReq0ZzwVFY98OUD8j3c6/rn2x7Bs2E656kjUh/k4Yc1hNxA
         yVpXv2eZ8SM7LCcEJVa0ygGRUgp1pNC70J0aigXdQrvOroMkUwlYpl9QbLE4dVYR7QQ7
         O6r11ckTQKr2QLCkWLwB6mr8GJ9wCC+M3FHiX/G2sc0iwdag3fmtPIQlzzD60/xIc1D4
         caACGBj2NfOFPO+iD4XviAbwVbFLuP5owCpoAlF4G/tMXaDaX5d27t98JdQGqMv2Gb0+
         e9SA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tNkOuoceGIxt6oCl/yaaofg0j9Zw90y6/f61o9sPmlo=;
        b=V2prU2yagOAl1NtxBB9DqTZQX8pvxDyqUKpHlAItrb/IA+IkP7ihSwBPhTHfSn9HfG
         e4nYvkXKMRrsBSPUboB5EwP1qQpTu+gRft22hegjZdhv+qi4BZuDj2F5wz2GRiwHKwfI
         DkXXznnuwX6KDoaGbcWgXSXrYtAzKtczTZx8jeWtqT4lG29LggxVxp7UlPB2yePP/sP1
         3NQcp8GshFiMVBXbWenVbmH8AARt5Fpe9WHRlsWDvf4/OB7a4n0KRNvc50/5Qlx9v5aF
         HMpeClpzlKMGSTqEwHQkLc1Qc3rXe9Aes3g8Q9PypYUcA6CZCPHnuJy0Wn70so68mBFG
         rgxA==
X-Gm-Message-State: AOAM530HxhEoKb0W+vZ1uGLMd8DC4zpAWBdPQlmiG+sbrCBm5m/gdnYh
	ahrS0wXurUno3rjzxVH1h/o=
X-Google-Smtp-Source: ABdhPJzj1C7710PkrByoaFcHlBoZLKdud4wQFDV4W496ROxeRy1cixcvwngj+vJ/oGn72XjYXF7v/Q==
X-Received: by 2002:a37:8e47:: with SMTP id q68mr4920752qkd.240.1606858655974;
        Tue, 01 Dec 2020 13:37:35 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:6790:: with SMTP id b16ls2084qtp.7.gmail; Tue, 01 Dec
 2020 13:37:35 -0800 (PST)
X-Received: by 2002:aed:29e6:: with SMTP id o93mr4903329qtd.95.1606858655577;
        Tue, 01 Dec 2020 13:37:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606858655; cv=none;
        d=google.com; s=arc-20160816;
        b=W6oUJkPL/8YctoDe7HiG4pApcQDH0JS5eaUw7UyjHYEsb6IemT5R+xWx2fo0s2QMnM
         qnTFi43K2h0Lxd0q+I4/J+SL8B5plh56Ojh0cgnw+kc86ElMz3QbXKzesQexKR+sV/Ny
         crxKXMd9e1J5oDLb9lclSjZboVX0spJD7KTTotobrxZqRGBe0tK/vrwPXfYQFCuq7MxI
         bWDu1ozzLKi8LGj9B3dIjJ5YILzREjCo5yQSjv65aoI4AiEcpVg7rhU6T6h7+o8jMKId
         +TSFVRlqWaesgi687noVrUBnvqLhBZ58E2mLAvI7PjBClYPdh8Xh9+/Zk9KjmEMRGMnL
         np4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=baTa63xSC0ZZvL8LmEJ0rysXSGBclqJkA0eq2XdQYu4=;
        b=F87tHN2kzqxkZJuHFN7fO5r4rogcz+qlkOZ+Y+VO1IlX4ritSSicuuE8BBCXoqFF/M
         pH/YJp8Ck15nXvN4+LJ6CIN4xDHq6Ih1Fy7vhcSrDzqYsWr62Dv/31FqyQYCve0PtlP9
         DxFUedgg3p8qn7RTj656hnxI5qSed1ok9nbww9X+xDyEsXIak6fFh1eoWfZqV2WObRi4
         A/7hBhAdod2shSjI5AbeA/SYamZL1JZFGWZ6/6IHdUpGDIPHPszKW71NfsBeGNadyUQe
         4JXggzoUMDmLr3QaYXyZRp7BQ+teAurvHbMsM19x1EQ4xfFimfvgFi6Eh8ns6MV2ou0V
         1cpg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=uSKl5Hyg;
       spf=pass (google.com: domain of 3n7fgxwwkac4ckwsdyvfkxoxqyyqvo.myw@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3n7fGXwwKAC4cKWSdYVfKXOXQYYQVO.MYW@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id a8si68394qto.0.2020.12.01.13.37.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Dec 2020 13:37:35 -0800 (PST)
Received-SPF: pass (google.com: domain of 3n7fgxwwkac4ckwsdyvfkxoxqyyqvo.myw@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id c9so4009722ybs.8
        for <clang-built-linux@googlegroups.com>; Tue, 01 Dec 2020 13:37:35 -0800 (PST)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a25:8401:: with SMTP id
 u1mr9324352ybk.96.1606858655207; Tue, 01 Dec 2020 13:37:35 -0800 (PST)
Date: Tue,  1 Dec 2020 13:37:01 -0800
In-Reply-To: <20201201213707.541432-1-samitolvanen@google.com>
Message-Id: <20201201213707.541432-11-samitolvanen@google.com>
Mime-Version: 1.0
References: <20201201213707.541432-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.29.2.576.ga3fc446d84-goog
Subject: [PATCH v8 10/16] modpost: lto: strip .lto from module names
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
 header.i=@google.com header.s=20161025 header.b=uSKl5Hyg;       spf=pass
 (google.com: domain of 3n7fgxwwkac4ckwsdyvfkxoxqyyqvo.myw@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3n7fGXwwKAC4cKWSdYVfKXOXQYYQVO.MYW@flex--samitolvanen.bounces.google.com;
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
2.29.2.576.ga3fc446d84-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201201213707.541432-11-samitolvanen%40google.com.
