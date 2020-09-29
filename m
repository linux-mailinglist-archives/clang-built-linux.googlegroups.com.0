Return-Path: <clang-built-linux+bncBC2ORX645YPRB2GWZ35QKGQESQVGUII@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x537.google.com (mail-pg1-x537.google.com [IPv6:2607:f8b0:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id BCC1C27DA91
	for <lists+clang-built-linux@lfdr.de>; Tue, 29 Sep 2020 23:47:21 +0200 (CEST)
Received: by mail-pg1-x537.google.com with SMTP id j17sf1272286pgj.10
        for <lists+clang-built-linux@lfdr.de>; Tue, 29 Sep 2020 14:47:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601416040; cv=pass;
        d=google.com; s=arc-20160816;
        b=IKROzzbJupBmnmeXL5ApJGHdLcut8YTb7uvlDK/6lGzJP4KpoAQ0V7zEmk2bwzFsdx
         zGTGqr50Re86j07ExGCfxD/PzPMQQImRYtsam6BIUEilfzulY1dkpeMCkROJ/Oac/s47
         U0tKd2j+2fPniYPorZkm7mv5gteF94vzMsCTLdFeZ7nzvAeucBlaqE3HRZr3gW1gd/9b
         o3syAeJ/WbtNJTGDDdJQaDs3XJzADrakhYPI0/4m+HoKCnaDvIN/0fmFF5wrVe2T1BDd
         iAESpLXIvTLr6bfdwpzxEtOi5ct8UBmC3YW8hCFxMqIm0jupyguetvDsyWzZyeWdJXBo
         Crnw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=TO6nT6xva4UPedOrXEAT719+TmbVuuIJPeOwTNufOjQ=;
        b=A05ynou9Ql+EeDeFk1Zi4oXOrRraqezbslvdqiPacIsRhOb0GCxt+cYmXdPCJ9WRaM
         kzwrGtr2hsk+YoGMcpsObqzNqJUt6Z2T3kSmwC3Xe12FBz9lEkjczBnnHrUqmdXEBE7t
         odkJfE5QNnwz2+1LCmb3GKO/jMLQb4AY9Qurwm1eZSQbT6L8z2eBwOD3yuzXA4WMSupm
         UX9mLsMMg4QWMZmynXOITa37LpzmKg9eXieSE6NGyuFIIOEwZFU/0GM9b4S2th8eh4fA
         Y1TpLcqxR2rfFt81LNFJJ+Aq+YFJbnBLZhxA++ZYwUYQDdBQNhWBfpyc14tplvZHkjiB
         CZwA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=kV2nt2jN;
       spf=pass (google.com: domain of 3zqtzxwwkai09r3za52cr4v4x55x2v.t53@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3ZqtzXwwKAI09r3zA52Cr4v4x55x2v.t53@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=TO6nT6xva4UPedOrXEAT719+TmbVuuIJPeOwTNufOjQ=;
        b=pgCWQV94k+7QuvJjs9YDL+dQurI1uoFs6DGb+36Xr4n30IQyQFlupeEsOYyJzW5Rwx
         y1PB4RcWeVmS7SQ1IGtx5PdOxYyqgbubkC1yqs+mBTtIknGG2Mm9tPLgfmNEofm3MotU
         8Zhu12e1yDzarI0W5C9CIoY4WvGEbMpAb5sDs51OGvifcLIEV3sVHyi7Bad0LGExlEYl
         XxLuVCHaHTgwXjazIqVw1R4jlS+mFZtu3L7DDISe4SPoXkSbczENV7TyxP5PlRF3zhTC
         wKxsypKt5jge9voi7PqzxEYaTgedpRL8kPpcjiyQJh2S7QUs6nXrE67h0ONq6JMB1Xb+
         Wvzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TO6nT6xva4UPedOrXEAT719+TmbVuuIJPeOwTNufOjQ=;
        b=c0Yh+kvOuVLR9n2YVZKtf7mEmy1M7dV6j+WGK2m6ZvIlux4mhVGJ6ZVPccenKnauP+
         4YXNYeqzJx3qgCpQojlkLAVrBgGpu5+pR3FqV/sIc4TdZEfH/j1mfcQQzuJi2J+84dFA
         gXQt/QT4yLCF+22AlwqTuSohfy9Nv8M9STTliThPpdhYYs4NhHkZmYPAA1RQgAA7NqPn
         urfruOOUPA8AjEwcbkRm1aNa9AXtWEaoP2FnsjoEdxRXTqo4WSQe28gk8+xtKFy9lfHy
         ESRZ1KYM8+sg+8yhro7t3DQ7NIOUSQinKfcSgwrSNNX/mV6OhiZIUo0u39RbS3Ct+UpG
         qBuA==
X-Gm-Message-State: AOAM530oqJF5dPeSgHtnkY7cswY8FQEaEZC21g9CJgoVtlPHcmygGcTY
	9N7k1LdG1mT8mUBUAHPKE1I=
X-Google-Smtp-Source: ABdhPJycwGcCC/nwImIu4r+DXI/zPvx//Q36HWEcNGPcuoXazXGus3DDtLxUVgW0mVTSgP6zPpsNtQ==
X-Received: by 2002:a63:d841:: with SMTP id k1mr4849898pgj.59.1601416040452;
        Tue, 29 Sep 2020 14:47:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:7591:: with SMTP id q139ls72902pfc.3.gmail; Tue, 29 Sep
 2020 14:47:20 -0700 (PDT)
X-Received: by 2002:a62:1542:0:b029:150:e3f5:d8fc with SMTP id 63-20020a6215420000b0290150e3f5d8fcmr5824116pfv.66.1601416039898;
        Tue, 29 Sep 2020 14:47:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601416039; cv=none;
        d=google.com; s=arc-20160816;
        b=LjyVbdQThe7/2KKJ7bhH+XHjk37BsVn971/TJkOIbDiOdMUU7g33+cqcgC9xhBPJ24
         bL6EA0lmjskCZ2e8sONH5c5laenvzo1OBSAPzHN5Kwxt5x8AgxeGqjAEw4ihG48qGYnm
         oZ7wlBEPI7mV07pWE0Oj79mdd8t8Hk6GG3pb21nmVSanSkTD1kisSIvOEPxu2amF3A1T
         ujZ6EvdCZaaRVfLFp6KKfFwIuSVJ5VZFRvL7i6q12xMkUnh6YQAduLms/tmXJ/nGdk2P
         eHMA9GxmISNeKHT0avAnM3OmlyE3w+FPk02MCf8WI1gKHGQdujjw9mgLSzMOLz/5KdzV
         G/XA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=xzyA8l2K/c66vMnXDNauqm3QGp8JWTgD7BK0hUJgM/s=;
        b=RSZl/grGbRffg/n9srgCHKLpsKhGjT68ttj7E2WXi9N85L3s4n7GBdDYl3d0GcA0jR
         rCLxkZdbkY6IFQtjXBY2CpPYFE5IFLSTsiukm2iSa/Vi191u6zDvD4Vef1cVI7z85JML
         W85SBnphyOHsN6avrCXW5uM9z1JVGToskc48QpqkQM76+oPtC+FrzFJOJmLnM7yifLrX
         KYx2AmPEVu62LKqruXLh5r11yqW2oFgXwPb2ghNgvBdx1RUIy2k/cLCYZcBg3SUreBBP
         2dLLyXVYkX+CJKGYxK6L3dVKJ9M0+zB0hyVSiS53P1aCjWhjeHxcYcSKoLe2wiBOwuF8
         wVEw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=kV2nt2jN;
       spf=pass (google.com: domain of 3zqtzxwwkai09r3za52cr4v4x55x2v.t53@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3ZqtzXwwKAI09r3zA52Cr4v4x55x2v.t53@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qv1-xf49.google.com (mail-qv1-xf49.google.com. [2607:f8b0:4864:20::f49])
        by gmr-mx.google.com with ESMTPS id 18si505093plg.4.2020.09.29.14.47.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Sep 2020 14:47:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3zqtzxwwkai09r3za52cr4v4x55x2v.t53@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) client-ip=2607:f8b0:4864:20::f49;
Received: by mail-qv1-xf49.google.com with SMTP id w32so3345750qvw.8
        for <clang-built-linux@googlegroups.com>; Tue, 29 Sep 2020 14:47:19 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a05:6214:1873:: with SMTP id
 eh19mr6737362qvb.16.1601416038928; Tue, 29 Sep 2020 14:47:18 -0700 (PDT)
Date: Tue, 29 Sep 2020 14:46:22 -0700
In-Reply-To: <20200929214631.3516445-1-samitolvanen@google.com>
Message-Id: <20200929214631.3516445-21-samitolvanen@google.com>
Mime-Version: 1.0
References: <20200929214631.3516445-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.709.gb0816b6eb0-goog
Subject: [PATCH v4 20/29] modpost: lto: strip .lto from module names
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
 header.i=@google.com header.s=20161025 header.b=kV2nt2jN;       spf=pass
 (google.com: domain of 3zqtzxwwkai09r3za52cr4v4x55x2v.t53@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3ZqtzXwwKAI09r3zA52Cr4v4x55x2v.t53@flex--samitolvanen.bounces.google.com;
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
2.28.0.709.gb0816b6eb0-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200929214631.3516445-21-samitolvanen%40google.com.
