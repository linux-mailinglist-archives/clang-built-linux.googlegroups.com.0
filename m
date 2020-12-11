Return-Path: <clang-built-linux+bncBC2ORX645YPRBIH5Z37AKGQEKWZA4HA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13a.google.com (mail-il1-x13a.google.com [IPv6:2607:f8b0:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id 22AE62D7E5A
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Dec 2020 19:46:57 +0100 (CET)
Received: by mail-il1-x13a.google.com with SMTP id s23sf7866162ilk.14
        for <lists+clang-built-linux@lfdr.de>; Fri, 11 Dec 2020 10:46:57 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607712416; cv=pass;
        d=google.com; s=arc-20160816;
        b=SrzfzBk+QOd911WXgHrlQer6DQiL1Hb+3rHMaP7K/DMFhSA+463yvmeEEJpT2Td26w
         BHwt9PNYNFTqNwFfsN5JkTaGxvWWfBOxPaJ8ryxcOXuCqRszM77wWOt3rOXI79+oWcsh
         i/k9JWY4HIBTP5KvuruJGYk+jOXidMhUcIJoS6GkcEVIBAjPJox6pNYDE6ZktDk04qpC
         DyQFH6KlshFWnPQdFRRIyVdnJGpVNmezsd6gYpepwaaQ/cZqgekBvQW1aMUMVmCRwCVX
         KJbL7wD2elyKtlypGZ7/4eGmn6B0NscOGwAX7d77ohtbomwuXfQwoGiDYU3ODU/FKgjG
         fWyw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=bKcRy5Dx1cEc3wQ0W+UDwFsYEHh/wpnGiCSSmUaoNSo=;
        b=BsXz2+EoipZqRPaiWw8d/tC73USQeULL9fhiIXIISFnVsdvImbjzqSLkY6YNrEbJoj
         +tFhrpjqV2v1veXT9EXdAO8w+1IYZbsd7mlv5YKE2yxYPGEsA9Q/Lm+tGgsh9JvWWc3e
         KfO/UuM3eI+aiThhZd8hp+puCv3mU2qH8/9uRRQMlX8mGpdeUZOvJq8WuHCqerMr4C3J
         64jaJ1/NGh+Vd0GIODDGMRXMZVfdl1js7Ue93XmtX/7jKzWHZSyRZAtR3p8pi1T4SZbW
         7TuGR5yTy/KDzIHogAUIEujwYDiPwfqSFjiyHtVy5Ih77q3sMpj9Bsn8OCezb3snwUlr
         /PUQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ASOewzdi;
       spf=pass (google.com: domain of 3n77txwwkahagoawhczjobsbuccuzs.qca@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3n77TXwwKAHAgOaWhcZjObSbUccUZS.Qca@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=bKcRy5Dx1cEc3wQ0W+UDwFsYEHh/wpnGiCSSmUaoNSo=;
        b=HOC9ygWE0UBMqVjHeVcJgmE9TVgFLGIeRXaAH4DJ97OL1Kc56/dhNg60/wSMHxu1TH
         FjKvnELQepX5mr7F3ybxpYTjtaQz7it/+FVnyPQFAVGMmsBQV9vIxUHB7xToyk2Pc+9z
         0v/14ThqHmTLwvRCZj66xqHsDvcqRmcsZ3Z39SSDuQXDN1/aImaea7hs/axpMva4Ff9E
         WEKEmvzSOyyYuxommOqQIuU9jgQS5RdtEPMXB6Kx1330mmEWzkd3F96qFKbCSnvnLKDX
         i5syoXbiz2bK6e48QC2dqnW/3ISLRapR87msXwJeMvL61PGvGz5UEFqKie7RI1SkRPiH
         vb0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bKcRy5Dx1cEc3wQ0W+UDwFsYEHh/wpnGiCSSmUaoNSo=;
        b=LVDqgs7R7T1KC1T3lgUGY/BU6XN5w6kTwQdoZSs0zrn2n9v2Bt2BT1oftrL/d9125P
         XYUGiNzv8e5fWcfe50UCvl+diTkOw2oQ8qPhgbV2lhNWeIZFRsV4Nv2IiZt9QTkWIkoc
         ilVfkOIziqxf7pd7me/Oqa/eO7S9U3TJWpZaqcYw2MtWvyMJfSpo6nM5IB7+HpeQT60F
         6UnZJ9k15oItRTe3jadgRP/tnzuT70gc8RTyq5xDbsV2x/hqUKbUfYZzcdZNHV0+wwFU
         Op0RwUZGKQ0rYaXHI9S3nZJilDe4hVbapxOFhsAAleFFRGv/6UKkjrmCEsQ5Jn+2IA6e
         vwrQ==
X-Gm-Message-State: AOAM530Ao3OFLgV46aXj9SkueJkGIL778JmsxwQ0dLN2VHr20uMfla5m
	g9wznoLLSfl2uNa/2Rg3vxs=
X-Google-Smtp-Source: ABdhPJxLocAL3KPzwKE6IazqRA8gzLt3s+6IIY/juOYpaGc/sWKeg4Bq3tc+1Xxmh2dQZrRy4NlQ3w==
X-Received: by 2002:a6b:6d1a:: with SMTP id a26mr16982855iod.158.1607712416157;
        Fri, 11 Dec 2020 10:46:56 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:9844:: with SMTP id l65ls2543184ili.3.gmail; Fri, 11 Dec
 2020 10:46:55 -0800 (PST)
X-Received: by 2002:a92:d8cc:: with SMTP id l12mr17269793ilo.64.1607712415678;
        Fri, 11 Dec 2020 10:46:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607712415; cv=none;
        d=google.com; s=arc-20160816;
        b=p7gNzjliEE+DJYZIqLLs7+7v7iVK2h9neNHX+2VgERqbGUXiMV3qrj31vbtT2tgawH
         0/3FfCvmyyqwwZlJ0ibeHcCO0TcqyNbZgFgELAFpnihDJsAbiMb5XO01bq4Vmf5LqhsA
         +kjHhf/fXQD7NEZibmuQsa327sQHHmhtDJ6rR5wg50FjpwH2CoQqquCTPB06qOTK7SVz
         PJaD6cLTgN4qqRl+bV6CNmGxiwFTPwlmz6ZRZe5Fu5JFfsKW0+58cvy/s48yomhmjcnO
         zxpMGmiuCGBQDl8akjD+ZfhEICoOBqRgCM1q55zWMK0CrEgemkORDTXhgDo/gDyipqZc
         FFaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=baTa63xSC0ZZvL8LmEJ0rysXSGBclqJkA0eq2XdQYu4=;
        b=j9ZasABowvS4CNogdRY89lLnQVd6wiB+0gfeTiRASiFx1POitvHV4kXqSFnFmiPQkQ
         Rx6yIGSbDOoIRFnDEYVTopPVMZbXCmioacmgJMhoycFQSHru/2OrBf6Ugnn9G/p+3XoN
         73n0wBT88RgGGcmNpv/tkhHq+of60kX/CI3yBX6IlzGEbTnIgRDgaH8IPxP7WXH3b/eA
         gb9ssDZ4Dc+T9Ow1Su96kjUqGQeKtAu75JlFDQIwBOvBt5rACQ2+Xnt96mtIbNsMK4cE
         ab4JYVydKaVOkJFNga1LXvia8P6y9PP5aNHlu7/ahGK9XVti0TEKL7AJrajHO3EjpZaN
         aFVg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ASOewzdi;
       spf=pass (google.com: domain of 3n77txwwkahagoawhczjobsbuccuzs.qca@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3n77TXwwKAHAgOaWhcZjObSbUccUZS.Qca@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id a18si580856iow.4.2020.12.11.10.46.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Dec 2020 10:46:55 -0800 (PST)
Received-SPF: pass (google.com: domain of 3n77txwwkahagoawhczjobsbuccuzs.qca@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id q11so11883739ybm.21
        for <clang-built-linux@googlegroups.com>; Fri, 11 Dec 2020 10:46:55 -0800 (PST)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a5b:409:: with SMTP id
 m9mr21178776ybp.289.1607712415122; Fri, 11 Dec 2020 10:46:55 -0800 (PST)
Date: Fri, 11 Dec 2020 10:46:27 -0800
In-Reply-To: <20201211184633.3213045-1-samitolvanen@google.com>
Message-Id: <20201211184633.3213045-11-samitolvanen@google.com>
Mime-Version: 1.0
References: <20201211184633.3213045-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.29.2.576.ga3fc446d84-goog
Subject: [PATCH v9 10/16] modpost: lto: strip .lto from module names
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
 header.i=@google.com header.s=20161025 header.b=ASOewzdi;       spf=pass
 (google.com: domain of 3n77txwwkahagoawhczjobsbuccuzs.qca@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3n77TXwwKAHAgOaWhcZjObSbUccUZS.Qca@flex--samitolvanen.bounces.google.com;
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201211184633.3213045-11-samitolvanen%40google.com.
