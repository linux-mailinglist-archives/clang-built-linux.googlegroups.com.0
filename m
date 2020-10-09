Return-Path: <clang-built-linux+bncBC2ORX645YPRBWMYQL6AKGQEN22E6EQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3a.google.com (mail-vs1-xe3a.google.com [IPv6:2607:f8b0:4864:20::e3a])
	by mail.lfdr.de (Postfix) with ESMTPS id C1567288E03
	for <lists+clang-built-linux@lfdr.de>; Fri,  9 Oct 2020 18:14:18 +0200 (CEST)
Received: by mail-vs1-xe3a.google.com with SMTP id z190sf1387284vsz.22
        for <lists+clang-built-linux@lfdr.de>; Fri, 09 Oct 2020 09:14:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602260057; cv=pass;
        d=google.com; s=arc-20160816;
        b=Nnap9u1ooakOkaQjxoQovm8erbdmRfVBZLRdy4GiFB5xuaxgFIo/eqMi735Q2rEsmB
         vE2XmWAsEeD+1ProGSknFwyoMr1r8a9YhbchhaROR0XRTox0Hg93Z67vYPHJMgtrsRFo
         Bw/MQdEStkjdq9Gwa0wPscHnxA357z3HJ5YOXa+d2Cc3yXqO6ICEWk0zvUlx8gK6OR7m
         IpnQqeuhRihn59txfbnFYfGBJfhMUdwUavLR8yd3gDoPqvyA5dYqwk1rjwT6j04fcXhD
         AZiY9OT7qEk0OQrRbHUkghuU8LAKr04nyHdB/A+MstUJfdMh2jvcbahKM6g2uDZ2BNjj
         NIcg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=peNefCtmRYCGEhKsKsSdlB6LHAs2p2cELD5xtuWCo4o=;
        b=YyfikscZFkubsZExnZz+iSC76HEJW0DjskdGv00omPuDduGJh55QrZVGIUfQDRKufY
         88VSs5Q0opgtEweASmA5LpkYrThTl5ASyPntTOIvXeX6ICmqqT7n/2787bMA96IFFbzN
         pK6CW+s6cW+EkVn2xvYt4VGnkG7uePrv/lhIiRiwGPGga3TwozDJPv6wYNkJJs6aGJQo
         +TQxZbkpoIFyLh5D02qPjCD6Z8yeXC6DVhSQZdTfYQRHluwbMWHS2ua5khvlC3rK8eTp
         vwlNOUvc4t4jQtMENPJ42lv8ClMQ1AObF5X7V9YeEMumpvE0htPEEHbBMtV5BTm5fm4b
         WynQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=iCTjiWuF;
       spf=pass (google.com: domain of 3wiyaxwwkahultfbmheotgxgzhhzex.vhf@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3WIyAXwwKAHUlTfbmheoTgXgZhhZeX.Vhf@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=peNefCtmRYCGEhKsKsSdlB6LHAs2p2cELD5xtuWCo4o=;
        b=pmJvMev2wzV1VAywJqzWcVhazsL4PxZbkx/dT8Ms3Nq86tX74tBniQBOrXkzPc7CMO
         c5TZnSJNZMi+yi2FCB30pIPPJwqAP6NFvtJmvNEt7y/t+Kg53LGzscs5j+wZkGx5IsEF
         gWBqd4MifbydTUKf8JpnLdnjkHXKtL8XUDpU6gAts3z3G9uy1lX9CHdAt2LdF0EDKfC0
         UZnjNn814xTO5B9btS8YuwscvP1IFoeIe6FRxJegLDBK2DPx6a5pEOVD6OvE+WcK2uxj
         tsrELhp6kIAVuO/JvU5KgH/SR/M+q/7MR+bloNGeGGp3efw+I6JtS9/sMyron1qPJS7X
         vchg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=peNefCtmRYCGEhKsKsSdlB6LHAs2p2cELD5xtuWCo4o=;
        b=EfkgMcR1IV2PaVML6KN6x3XgUUqI9G/Z+ZFONdhmKFLaRo2u0ue3Kw+xFdLvOq2mOR
         0u4mjYZ8VSQXZlT/GlvEuLwPy3gOjs/MAJlxaHm/8ILOnRPl5ISDMrFuH6VM+Fa2hSke
         JQJV1m20UR08hfsIDklCMBD5dAFCDfH9LMvqBoQAvNr+CZ3/C3L31tI0ZZqLolp87J7F
         LrSJsfMt6Ptx3ZPas7J7yspq/cAc3UtbRULcPyn/6/27uei6AfSr0e0X6MnPr+hjGFOp
         JWQXlliZzGknCrdNYFACUCSJOjy1/gaLAkJgfbB1uO0DxoNHs5pcLKxrKG1AW6DXg/h+
         8BGA==
X-Gm-Message-State: AOAM533F2OA0ZedNOzIJoCYBlPdbxCMDDdLWdDpUwnS4KkSnRi5HOrPj
	lsbcR3zV6eMJAx3CY/Xfry8=
X-Google-Smtp-Source: ABdhPJwPgrHbHIFPKnlYkrCPvYSstu2X2utfUtC4lX4SYAnO05VtnsBXB2NBexgdc1Lznulyz841Hg==
X-Received: by 2002:a67:79d4:: with SMTP id u203mr8358399vsc.39.1602260057852;
        Fri, 09 Oct 2020 09:14:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:edda:: with SMTP id e26ls1176354vsp.5.gmail; Fri, 09 Oct
 2020 09:14:17 -0700 (PDT)
X-Received: by 2002:a67:f512:: with SMTP id u18mr7638292vsn.50.1602260057317;
        Fri, 09 Oct 2020 09:14:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602260057; cv=none;
        d=google.com; s=arc-20160816;
        b=FfKt0Uc4wyI3AUcPp/BWw4vGGQfFQqQug6npCiXgOizlEjei5hP3d1ZVxZS3xo5nUU
         BnNV184IeQb9uM2MAYDW8JJVQCsf9G+Js3/v22ftJKGvs4PTYJXV7SC77A1hNbq49CQB
         Uz3xtyS7yIBMfxKSKyMoiSqSPjCs2fepPox8H8wAr7D/IF/NJmYFgdAoryxHOh8bHykI
         yYrAnUHU3df4E7ba4vgSqIN6qsWJzrUJKUoO4ZHuQjCxvL3ibUF5KavY3XCrflGRoUvz
         rq4F/m/J4lkcUrSKztXIqBF69Bw7s9Gwdk3FZz0OvaGnkziselNMkxvx6fIfyylMYGJ3
         nXCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=q9NeEgeJtjuDXz46HWaR2aTcr7U+m+G2Xtw7ZYj0i80=;
        b=HTXcRRxHIH02xsdnh20DiETsa5UAVEjSyvbo/TzgKQux0YslVdww0Zh2inLslkkTX1
         axtnkWpQ5y1BX/ccHIrNkPYH3V2i/LAbi8cjNkAHVnwzcHRx7W+f8qZfgzG6yssfeeMW
         WKzbONzkV9MlnL19FQkggotKsmj7Hcy9U3F+L7Z1ov56+VX1UJvFPT66bP/h1lvT5xWN
         aT28x+NwE6RRmF2GDZ6/WDe5hdSF8+wFG4+cqDncFwX5thkmFFqN8XwqOKYvOTksovyD
         RiiDukZcuJBFtd7oYS/L8rr1HyNHJErDBMW2qWF2BfoxA+Iz/S1T9uuZ8xnhMjLV4XVA
         MKig==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=iCTjiWuF;
       spf=pass (google.com: domain of 3wiyaxwwkahultfbmheotgxgzhhzex.vhf@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3WIyAXwwKAHUlTfbmheoTgXgZhhZeX.Vhf@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id u25si635143vkl.5.2020.10.09.09.14.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Oct 2020 09:14:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3wiyaxwwkahultfbmheotgxgzhhzex.vhf@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id j10so9281475ybl.19
        for <clang-built-linux@googlegroups.com>; Fri, 09 Oct 2020 09:14:17 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a25:c709:: with SMTP id
 w9mr18142859ybe.327.1602260056890; Fri, 09 Oct 2020 09:14:16 -0700 (PDT)
Date: Fri,  9 Oct 2020 09:13:27 -0700
In-Reply-To: <20201009161338.657380-1-samitolvanen@google.com>
Message-Id: <20201009161338.657380-19-samitolvanen@google.com>
Mime-Version: 1.0
References: <20201009161338.657380-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.1011.ga647a8990f-goog
Subject: [PATCH v5 18/29] modpost: lto: strip .lto from module names
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
 header.i=@google.com header.s=20161025 header.b=iCTjiWuF;       spf=pass
 (google.com: domain of 3wiyaxwwkahultfbmheotgxgzhhzex.vhf@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3WIyAXwwKAHUlTfbmheoTgXgZhhZeX.Vhf@flex--samitolvanen.bounces.google.com;
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201009161338.657380-19-samitolvanen%40google.com.
