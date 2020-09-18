Return-Path: <clang-built-linux+bncBC2ORX645YPRBX5KST5QKGQEF4T6A2A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23b.google.com (mail-oi1-x23b.google.com [IPv6:2607:f8b0:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id 68EA8270649
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Sep 2020 22:15:28 +0200 (CEST)
Received: by mail-oi1-x23b.google.com with SMTP id u190sf3062932oif.13
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Sep 2020 13:15:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600460127; cv=pass;
        d=google.com; s=arc-20160816;
        b=McLGs5ddpUFvQZCGM83E/cII7sLES0bTJnyiA0CfltAaxfCwToInxczPc0UqsdgTnP
         rSdM1OZx+MFYuBQP5pq9x/qE+UbcJ3x36SX0JH4X2ohHWCQsiX0MqEddntARP0YFCN9M
         mByYunocZJzknPcUOt+CboGH9fD/0+bPC0ZG8I99oBHZ3btBgwW6LkagivDVJr00SA0w
         JtMb1RKrXpDpyPeSv165d5KllQxBk5YhDJLNxjocFp1zHSoYCC6EHjJpnScPXqWFw649
         LlcVb8j+VHFgTqDSbYaIcjxajJQdZiWqIbAvqqfrM6rqzuOwScls2uZuEgTyRi5Mm8fc
         EJ7Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=8NAb2VmkZDcMQgKrp1SbMNzy/nmwT7UdLu+0Q+xfyEE=;
        b=oDyCjYENT9JhFoJGsbsk22UIWq1MKsTTFgWFokD89BKeQn6cJBmt+Cgf5ljB2xgh5d
         NWzOaiA6TXwJ64XTSw7Zr/msoxpB4XKmARVb1Heve3+WS0b2DsR3u/XBGnU24FUV3f6k
         bwv0Ph/O8cI0hNTCze2ccjy97k+Jt0Oi4Mw0lMfAFocXmSIOb5J6lfDVUpKAv7AtX6so
         4BSzGopqt119BoTyzOm5xLVegL644PnkGIVgCM8aM6zZR5c2jE34fO3KrZwJwcf35Kab
         k7D+qyXJ5/+ioXi/uxnJYidfdlJRYfxQkVt7ENuT+xh5gbMisubwxAoO86tY8GEL/tpm
         bg/Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=bUS9jAgi;
       spf=pass (google.com: domain of 3xhvlxwwkab8n5hdojgq5i9ibjjbg9.7jh@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3XhVlXwwKAB8N5HDOJGQ5I9IBJJBG9.7JH@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=8NAb2VmkZDcMQgKrp1SbMNzy/nmwT7UdLu+0Q+xfyEE=;
        b=sqkWhlVAriUv6RhRyHhMNNSqq/i5BF3sWZ2Py4hau54SO/ak7gv6usd5imAQQoPSXO
         uH/p573e5/k4/Jjr7F3/yRp9HG3UopfHjjGKDSvpjBlo/+Befvrxw/uzhUHTX0QZPtLH
         j6eeGTRfLzX07hmA4RCmZj9PVioFzpnKFmlgxbLMNYtu6DtIBmh9wjmhXHFEoteJg4IV
         ACFXQDJ0lWIJVKjC6mj+2/MdOuuMaNZcroalWeO1fR2rZLIk7X6FIWo+LrW+jArvqPtq
         kjLw0PwCgQ9GZ8riq6SxnehJra5VFjC27A+M6Vdx2ECVhtXBnHEbuFaueTPf3/oT7Mqy
         YY0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8NAb2VmkZDcMQgKrp1SbMNzy/nmwT7UdLu+0Q+xfyEE=;
        b=kd6jefzjaUI56TVfaTM03xP3HGRvyWpUNf0vdMFNtdP9Mu9e0JyINaB+gKI8+nc6sr
         O1o1Id2MMpnknxiNoby52RUHLqK1gegWSqKtc14bTIGuetk8YXxrXFDg34JtOOlgAalq
         6KTuPk8Fr2OI2gHvl0SnDnswkgGvjCBQZTraCdXUF1pA7OejEwsXyTzbY5UaeNG4kWMv
         nRcTAleUpceJBnFvnJwauuXNG81/eQkTqmToKWQ4XMRyMiXSf7E6u4p8n4B3S+2AfQFx
         bVCK47sD04G7uHDC9XHUkF0mBjKkytRnWxaE68OolFOU9IGOVUoYfr+wnqbklnE+mStH
         05CQ==
X-Gm-Message-State: AOAM533YttfDqVFpB3DV7hBO1JSvAjsTVEVe9l9RoF+Zdn+3QbTpajmt
	69y1+t2bUMAqL/bpb5SrKOc=
X-Google-Smtp-Source: ABdhPJwV6k/zwo/KgdeqPjBlucCC78WlZgTLC8+pX05kl9lutUQ3MvDo4Gim7Py6v/CsNESzZEzBFw==
X-Received: by 2002:a05:6830:1bc2:: with SMTP id v2mr2496599ota.67.1600460127374;
        Fri, 18 Sep 2020 13:15:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:210a:: with SMTP id i10ls1540136otc.4.gmail; Fri,
 18 Sep 2020 13:15:27 -0700 (PDT)
X-Received: by 2002:a05:6830:1312:: with SMTP id p18mr25058633otq.316.1600460127037;
        Fri, 18 Sep 2020 13:15:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600460127; cv=none;
        d=google.com; s=arc-20160816;
        b=ENNmHC985APr0w5HkxwqFDClq5hvwJqLo/GCAMk7/q23Y02Vb+ZykrYRwxwHGHCYHf
         GVirAer28Ok1wmiSRHom1FRwy+lxnNA32gRgyUcGQLJ/RQr9sRT1uWJ9VARs7wZdJUdH
         /wCV3GaIINt9EqZ1RjcCUCbAloqGuux//xm8wMlRzNhFGQzgq09AKKyLBnQQKbZjb/Au
         IvFko4zBR/Symm2pZiX+PyEA7mUEGkHffGsA4t+JpdxOjoRL74uhVQvp9wWzCH67eHtZ
         cLyxMHgWJRMis0Rsa//dWwyW2C6dEWrbCH59vmMciZ/m/85vY/x4bHHgpUk21uRmHAG5
         dDHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=8lEX8dhcXccIUepNU1SEoCt6plyxV6wLvpdFoemo79Y=;
        b=Ir1QtwvQUTRQQpKOmkff2zn9sluZgFuDFrEX/uQPBgun7gp7pXHO8A3DqdolcXblFn
         2C/p9x8sbPEbhIl2yv1zFhp8Vjx/M/7ueaDrftvlEsI0U8O8tdrV2Xm7p0bS0VWBWjR3
         cXeN1oU2hVuq8+zlZDTIaQE4dq40x3XXKpsCmCwkrSpy2oBcJ3Lyr9N/xfMqfRJYxqB/
         dMsWPp85LEurpeiRtUeSKhYCf28HscJhK9DJVbHHulB+AaahlEAZQL8ACeQUXFRR73bh
         ad3ug6bbrj9iFZr+4R77b+76JVxpKmWdN26P9tzerOKX1T05mBQ9c0Qy6wcGOfWzpsf3
         5tZw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=bUS9jAgi;
       spf=pass (google.com: domain of 3xhvlxwwkab8n5hdojgq5i9ibjjbg9.7jh@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3XhVlXwwKAB8N5HDOJGQ5I9IBJJBG9.7JH@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id d22si426354ooj.1.2020.09.18.13.15.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Sep 2020 13:15:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3xhvlxwwkab8n5hdojgq5i9ibjjbg9.7jh@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id v3so6685586yba.12
        for <clang-built-linux@googlegroups.com>; Fri, 18 Sep 2020 13:15:27 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a25:cf13:: with SMTP id
 f19mr8568269ybg.386.1600460126530; Fri, 18 Sep 2020 13:15:26 -0700 (PDT)
Date: Fri, 18 Sep 2020 13:14:26 -0700
In-Reply-To: <20200918201436.2932360-1-samitolvanen@google.com>
Message-Id: <20200918201436.2932360-21-samitolvanen@google.com>
Mime-Version: 1.0
References: <20200918201436.2932360-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.681.g6f77f65b4e-goog
Subject: [PATCH v3 20/30] modpost: lto: strip .lto from module names
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
 header.i=@google.com header.s=20161025 header.b=bUS9jAgi;       spf=pass
 (google.com: domain of 3xhvlxwwkab8n5hdojgq5i9ibjjbg9.7jh@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3XhVlXwwKAB8N5HDOJGQ5I9IBJJBG9.7JH@flex--samitolvanen.bounces.google.com;
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
2.28.0.681.g6f77f65b4e-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200918201436.2932360-21-samitolvanen%40google.com.
