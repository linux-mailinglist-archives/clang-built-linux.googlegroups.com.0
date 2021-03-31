Return-Path: <clang-built-linux+bncBC2ORX645YPRBSWSSOBQMGQEY4RSVZI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf39.google.com (mail-qv1-xf39.google.com [IPv6:2607:f8b0:4864:20::f39])
	by mail.lfdr.de (Postfix) with ESMTPS id 91DC435091A
	for <lists+clang-built-linux@lfdr.de>; Wed, 31 Mar 2021 23:27:39 +0200 (CEST)
Received: by mail-qv1-xf39.google.com with SMTP id dz17sf2092245qvb.14
        for <lists+clang-built-linux@lfdr.de>; Wed, 31 Mar 2021 14:27:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617226058; cv=pass;
        d=google.com; s=arc-20160816;
        b=iZR+c9tK4jeUysKvbaFXsN0UvbzLELFxmyJWkSBQBUVW/twqqOqmEWH/YQOl99BFoi
         H9XinP4LqEmynqvj+ql4paOCwMy1oCdgdELPek9AzAvxvOo2rmWLog25ft5F+hKA4d/a
         slqwz8K7iCbNghGnufWXeeejM6nA94D0e9lxbM0iK8iHRPfK/3HuKVXFVLuvJyOQBfF7
         haQRwAXW+S7ZATTOONSbRh9ODYu8eJASBzZVMoKDB46v1FVI4h2UqzucXQgXPi5NxP/6
         spbNeJWh/lZRKkHHwo4UCf1rE4lT+S3mZLcvXxMqUz7u9KFXrvu1xZYBqDWy+cPpCCBw
         +gFA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=mqI3lHx7c7+ynq3n6SC5uHdx/BMlVT2eOY9jSdQJYOo=;
        b=ujo8fqkw1y39At4Gr6B8DJOcmcYSsZFaDNlt7Y3lNv4/Us5iMZSzcbSSaB2+CPG0+e
         iHGNliUzW2hu2PA4DN34ctNBytYBWivqrQr9S5CpTxaTkM/lRW0vU1vrp6suiIOwH1Np
         RVifUHl/hNfLGqTEU5G5+a6MpJ0LpY/o/XhZu9tgLLFMZODLkK1XtqgAkiCreGA2uQjj
         HL05NnMCppdWs5Orsi95dq32N9vG8ZDGExPPlAL4SEZ4XdXxveN+PkEs01fXOjQfXMe3
         B9ovoHLp6FGzlbGf8HFTjv0oOtEPXAkeg6j9UlP+o8brkn54WXuco9LuqwMSrXI9RoAP
         qnWg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=CgrLOqIh;
       spf=pass (google.com: domain of 3selkyawkalgqykgrmjtylclemmejc.amk@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3SelkYAwKALgqYkgrmjtYlclemmejc.amk@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mqI3lHx7c7+ynq3n6SC5uHdx/BMlVT2eOY9jSdQJYOo=;
        b=f1o5LUCxgi4BTenSv/D49DclcdHStfRRfwjTul2PcZ/1GQpJ7D/gohkXyfBDW2861q
         Kd8bdjpQCwdhwvrunySKqHey9yJSzCnH9JoTcCqPTblUlsORrAbSVVVFsP2VSpaEoLJe
         JSKvEG/kY2cIUBDSxZU3y1+pUliSQctQc9r5Q+G0zFTlFJE6o1TEH2m/+6I3iDCiTYJ8
         C4Y1HhE4WVRjzpeQaQ1bmbOpT641TVbw6A+mzLlMp7izssz0XPuip3jSh3lYCdiDJhqr
         LucVVKSzDfQgMV6lOO8+PqmXnIN5LunOzfiBPqMhL/psZQimSbFvqzhT61MukD0zPOTn
         mtag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mqI3lHx7c7+ynq3n6SC5uHdx/BMlVT2eOY9jSdQJYOo=;
        b=FJM37EBPY+P2wO/VOf/hhmjcycvqLdqheFWT55nL3y7RrHNcffjHeq8UNuKegAx2Ae
         AnwjcT3jSVvfG3KXp7ZGmdJq1Zj7IqMxBbgLQS2PvYPyyKdzPIZf+B76sdVufkBYdTgv
         EC5Lf5rDr4Ud7u36UfSFlzoPaB2eLHmYZKhvcInnVmxYS5NW+uL4PSIPB3T32Er1G58r
         cLZejckHe1K3pVm+WlbWq0IIC9RCEFE4LL2PPYFNgcCYZuSSVxvcs5w0rBrnWmXJoK02
         dlMZ2+DbcMejWHVqI6I3kL3MSqr60fw/TjVvgkT6Xkc4vtBRsi+uoPukkhIe72kxYRw5
         2blA==
X-Gm-Message-State: AOAM533iLchC1kDeSePHX38f+HtpgaK9aruxbZBIE+1m8HdXH3x+1U4Z
	dwIj4GQgAlz4nJuZy3xsWbo=
X-Google-Smtp-Source: ABdhPJwEMIJF/3k5+xpZgJcUO2WwYynDD92eQLlMOagnzTC9RnH98+K5ocNAYp0bDGZ26h58T7Lb+w==
X-Received: by 2002:a05:622a:34b:: with SMTP id r11mr4251020qtw.121.1617226058332;
        Wed, 31 Mar 2021 14:27:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:a050:: with SMTP id j77ls2081181qke.10.gmail; Wed, 31
 Mar 2021 14:27:37 -0700 (PDT)
X-Received: by 2002:ae9:e502:: with SMTP id w2mr5385279qkf.75.1617226057848;
        Wed, 31 Mar 2021 14:27:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617226057; cv=none;
        d=google.com; s=arc-20160816;
        b=Cx/ha2NOHI5ge8C3ayi4QTiD0Y+4oiQ0c0p5MjmPZALGvuacqa4bcNAmeeIjqbGPKj
         JWMkvF5JLFkE2hfegjo3Cm8LQUYC3DNuPbi5Ee3jcqIXuWWQIsipepT3ZafwfluDpBzN
         abqtN23b+fzMdSuIq2QEpLovZGy3n42gpWLgxLvhB4ih9eLCwr5F5hmfQ+VThlsrQ/+y
         /j+x4sLZkmRv9qpsj7XXOODTO+QJW0M2d3guLeJdRG7vaxL/IXmxKtIyOYTFI3iDVNgE
         reSuwIFNOReeB2UkRw8hSzR6cLGEUB8vCmrKU8qCS/FkQO0DrTkMl2ytdSs9ucoeqKDh
         Tonw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=i1PxfqvHNAZaUSY0Wt2J9hLbKLkB/NragVXsh/CJXkk=;
        b=Xh/OLwpjJ7b5p7XumYEp29UxvsJMbtbes1arHqvsXbBSL5ZexWsje4bkFIoipUd1xN
         0d6hiUWcUllmxFxKeevzT9IuTwKJ5jAt5Oqd2OlNCysACGa6dSiSDaUJ+3Cs7sL3J7fJ
         HJMIKYFpuGaL9jZ7uVyKvpZl3jg6rTb4lKmU8xT94jVlp04cZONQ0VrNg1d1v88oC/EN
         3skGXGSOVw6wjCOXaiVwpaWZDt3P/hCEeaYQ9fCY1sGs165arrtJYdkmKFR6aEg+zKvi
         SqKuYQmcZ3UcD5hE3W9fwCNhnazXR+xgWLpggi7k7rbgqNniZKXaAKIiW74sLnwTr5v8
         KUzw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=CgrLOqIh;
       spf=pass (google.com: domain of 3selkyawkalgqykgrmjtylclemmejc.amk@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3SelkYAwKALgqYkgrmjtYlclemmejc.amk@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id h28si251022qkl.1.2021.03.31.14.27.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 31 Mar 2021 14:27:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3selkyawkalgqykgrmjtylclemmejc.amk@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id n13so3644153ybp.14
        for <clang-built-linux@googlegroups.com>; Wed, 31 Mar 2021 14:27:37 -0700 (PDT)
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:7933:7015:a5d5:3835])
 (user=samitolvanen job=sendgmr) by 2002:a5b:5c7:: with SMTP id
 w7mr7418520ybp.164.1617226057459; Wed, 31 Mar 2021 14:27:37 -0700 (PDT)
Date: Wed, 31 Mar 2021 14:27:11 -0700
In-Reply-To: <20210331212722.2746212-1-samitolvanen@google.com>
Message-Id: <20210331212722.2746212-8-samitolvanen@google.com>
Mime-Version: 1.0
References: <20210331212722.2746212-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.31.0.291.g576ba9dcdaf-goog
Subject: [PATCH v4 07/17] kallsyms: strip ThinLTO hashes from static functions
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Kees Cook <keescook@chromium.org>
Cc: Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>, Jessica Yu <jeyu@kernel.org>, 
	Arnd Bergmann <arnd@arndb.de>, Tejun Heo <tj@kernel.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Christoph Hellwig <hch@infradead.org>, Peter Zijlstra <peterz@infradead.org>, 
	Sedat Dilek <sedat.dilek@gmail.com>, bpf@vger.kernel.org, 
	linux-hardening@vger.kernel.org, linux-arch@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org, 
	linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=CgrLOqIh;       spf=pass
 (google.com: domain of 3selkyawkalgqykgrmjtylclemmejc.amk@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3SelkYAwKALgqYkgrmjtYlclemmejc.amk@flex--samitolvanen.bounces.google.com;
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

With CONFIG_CFI_CLANG and ThinLTO, Clang appends a hash to the names
of all static functions not marked __used. This can break userspace
tools that don't expect the function name to change, so strip out the
hash from the output.

Suggested-by: Jack Pham <jackp@codeaurora.org>
Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
---
 kernel/kallsyms.c | 55 ++++++++++++++++++++++++++++++++++++++++++-----
 1 file changed, 50 insertions(+), 5 deletions(-)

diff --git a/kernel/kallsyms.c b/kernel/kallsyms.c
index 8043a90aa50e..c851ca0ed357 100644
--- a/kernel/kallsyms.c
+++ b/kernel/kallsyms.c
@@ -161,6 +161,27 @@ static unsigned long kallsyms_sym_address(int idx)
 	return kallsyms_relative_base - 1 - kallsyms_offsets[idx];
 }
 
+#if defined(CONFIG_CFI_CLANG) && defined(CONFIG_LTO_CLANG_THIN)
+/*
+ * LLVM appends a hash to static function names when ThinLTO and CFI are
+ * both enabled, i.e. foo() becomes foo$707af9a22804d33c81801f27dcfe489b.
+ * This causes confusion and potentially breaks user space tools, so we
+ * strip the suffix from expanded symbol names.
+ */
+static inline bool cleanup_symbol_name(char *s)
+{
+	char *res;
+
+	res = strrchr(s, '$');
+	if (res)
+		*res = '\0';
+
+	return res != NULL;
+}
+#else
+static inline bool cleanup_symbol_name(char *s) { return false; }
+#endif
+
 /* Lookup the address for this symbol. Returns 0 if not found. */
 unsigned long kallsyms_lookup_name(const char *name)
 {
@@ -173,6 +194,9 @@ unsigned long kallsyms_lookup_name(const char *name)
 
 		if (strcmp(namebuf, name) == 0)
 			return kallsyms_sym_address(i);
+
+		if (cleanup_symbol_name(namebuf) && strcmp(namebuf, name) == 0)
+			return kallsyms_sym_address(i);
 	}
 	return module_kallsyms_lookup_name(name);
 }
@@ -303,7 +327,9 @@ const char *kallsyms_lookup(unsigned long addr,
 				       namebuf, KSYM_NAME_LEN);
 		if (modname)
 			*modname = NULL;
-		return namebuf;
+
+		ret = namebuf;
+		goto found;
 	}
 
 	/* See if it's in a module or a BPF JITed image. */
@@ -316,11 +342,16 @@ const char *kallsyms_lookup(unsigned long addr,
 	if (!ret)
 		ret = ftrace_mod_address_lookup(addr, symbolsize,
 						offset, modname, namebuf);
+
+found:
+	cleanup_symbol_name(namebuf);
 	return ret;
 }
 
 int lookup_symbol_name(unsigned long addr, char *symname)
 {
+	int res;
+
 	symname[0] = '\0';
 	symname[KSYM_NAME_LEN - 1] = '\0';
 
@@ -331,15 +362,23 @@ int lookup_symbol_name(unsigned long addr, char *symname)
 		/* Grab name */
 		kallsyms_expand_symbol(get_symbol_offset(pos),
 				       symname, KSYM_NAME_LEN);
-		return 0;
+		goto found;
 	}
 	/* See if it's in a module. */
-	return lookup_module_symbol_name(addr, symname);
+	res = lookup_module_symbol_name(addr, symname);
+	if (res)
+		return res;
+
+found:
+	cleanup_symbol_name(symname);
+	return 0;
 }
 
 int lookup_symbol_attrs(unsigned long addr, unsigned long *size,
 			unsigned long *offset, char *modname, char *name)
 {
+	int res;
+
 	name[0] = '\0';
 	name[KSYM_NAME_LEN - 1] = '\0';
 
@@ -351,10 +390,16 @@ int lookup_symbol_attrs(unsigned long addr, unsigned long *size,
 		kallsyms_expand_symbol(get_symbol_offset(pos),
 				       name, KSYM_NAME_LEN);
 		modname[0] = '\0';
-		return 0;
+		goto found;
 	}
 	/* See if it's in a module. */
-	return lookup_module_symbol_attrs(addr, size, offset, modname, name);
+	res = lookup_module_symbol_attrs(addr, size, offset, modname, name);
+	if (res)
+		return res;
+
+found:
+	cleanup_symbol_name(name);
+	return 0;
 }
 
 /* Look up a kernel symbol and return it in a text buffer. */
-- 
2.31.0.291.g576ba9dcdaf-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210331212722.2746212-8-samitolvanen%40google.com.
