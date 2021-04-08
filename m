Return-Path: <clang-built-linux+bncBC2ORX645YPRB24WXWBQMGQEPKN3NHI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3a.google.com (mail-oo1-xc3a.google.com [IPv6:2607:f8b0:4864:20::c3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 1133B358C32
	for <lists+clang-built-linux@lfdr.de>; Thu,  8 Apr 2021 20:29:01 +0200 (CEST)
Received: by mail-oo1-xc3a.google.com with SMTP id a1sf1278722oop.23
        for <lists+clang-built-linux@lfdr.de>; Thu, 08 Apr 2021 11:29:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617906540; cv=pass;
        d=google.com; s=arc-20160816;
        b=PJ/DFUMdvDaJCaPa+52EhzDRHpbdKZN/u0YB0v3kGICthv75srZMWr/2zivntgiEYM
         Q/S9ZvkfThtC5LFKLlQXar/GLxOHXAxqIzRx1s3ZWVxhxYrVQOU56fraJeudZa7rdk+S
         WnExK8PhUPWQi30cup8jijCfHSPJZthRLDbI59TA3Op5+suDrJfOZv5uB9xRcZ9DH0Lu
         XCcoV75fIilQnzHJHO26lBFqD5e8PHdtamkByh+/bNXwX/sVs/S5wOhh909bakhPbjSh
         c0vwUB6NvMuw9ld2tCNIiCu7Hjw0KWkRVOKcdqLR0Uhjj24uyYcb3V3lu1kbvJ5yCnpC
         qO/g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=yBGI6mRI+RO5UfviMdteaFJ3iW/chjmswG0R32e5D7k=;
        b=Rj9JbueraiYJaNkR7J31RB6owBInthnTNae4R36netpsFF5BT9SSbDhRt7laJ9Rsku
         9vIRD3UBzP9yRNjMsK7IDd3NBhY6dyFxLMHMjp//GUwFrO8lEba2zBET06YFcHIoxr+Q
         19u4pO5kD+f9YQWTTJs2dzudumfoffpCw0YJ6e6WsPW2Bsge39ysIu5Z1qjY94gtE7/U
         v/1V8Q4AwwwuFTXqUmyGpAL2VjDuRkkhZA/7QGTx232xQNReXfHRXY9ppMR6yr7X1F4I
         9T25su0lCeHWuFgq0w1UC5suzh4wOuG/MOQVkNbWTKp8G8ZEg62AD4jf10xi/zj+RmbH
         xiOg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=jj7kg+VO;
       spf=pass (google.com: domain of 3a0tvyawkamg6o0w72z9o1s1u22uzs.q20@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3a0tvYAwKAMg6o0w72z9o1s1u22uzs.q20@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yBGI6mRI+RO5UfviMdteaFJ3iW/chjmswG0R32e5D7k=;
        b=aGOfvfDWJ1ZZg8C0As4S1Av7tbvJdUTa6/fQmNeKOGTj8u7/yE5w4w8jsLKiorsNKL
         mYxNIIXG3rS0YVH8t7XqF/6acak7EDNR7t+nwPQ+D7OZaU/U4YChDjMYMei3K4Kww6IF
         wlkUx5biQ6edOD6Bwa/dH3tNCHddslTXwqsgGJheAYxziK7BIAN0YIGl8uoxeCbTOJyA
         7Kn+epfSYfsmcHZvG4odDMTQRrfvcrrUcjyiNX6dTj3mA+uwpR74jipry8/fQaps+Hi+
         wjYWTwvfrBz4O9px/eedthTz9vYFMGl82L0svEPFt3SwTPrmALW1XKZktB51iIF3tjYY
         7Vnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yBGI6mRI+RO5UfviMdteaFJ3iW/chjmswG0R32e5D7k=;
        b=bv2xg1igSlZeRR7DWYxXq8GoCU+3VStdZfahPrzUPhbyxHl7eMyPqTTya7S916zKob
         bqk7Al0TGVpHp83YyasDzfuFaIQrdfthlfh1fd/i7cLkyqGoZy7R+/UVZKRMjBbeKxXn
         hciPVQ8WV13pEilHo445UP+dZ8VTRgMX1Tm9r/QXw4UclpXrYnlL/1auTUEDrBTeRc2e
         waa7Ri4sjtH92hRv79J8VFHu9f9gHBXHVdRFWTvBcRKia26CoxdP2gVKwopThGWXVk3D
         MPk3g/bgCeqJ4PUVhf+zUjmiwarCVcB9WU1g/l1ONhddRmxQK5egRpmrbSdLzV/5rpDL
         EkOQ==
X-Gm-Message-State: AOAM5337j/JMG03pMwcuisUUmqQm4YngXjPPfzRwsxp4QEtTmYuivjzj
	ZBWnIt7RhbziUNsDokkKZZo=
X-Google-Smtp-Source: ABdhPJwdr9Kt54rV8+JADVjSEnrP+RNyY+5HWgFXi3lSuzhFZKvG24K2OlwZMPJLqrs7MQY6Bxk8qg==
X-Received: by 2002:aca:57c5:: with SMTP id l188mr6985143oib.159.1617906540016;
        Thu, 08 Apr 2021 11:29:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:71cf:: with SMTP id z15ls1591794otj.2.gmail; Thu, 08 Apr
 2021 11:28:59 -0700 (PDT)
X-Received: by 2002:a05:6830:614:: with SMTP id w20mr8954570oti.313.1617906539677;
        Thu, 08 Apr 2021 11:28:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617906539; cv=none;
        d=google.com; s=arc-20160816;
        b=xvNFsmtdAPXww5T7jwdRbGI8InQhSvkLda4ss33onW+r5egKJ1+rburNRAMlJLjo1Y
         K9JSQ/QJyh5+5Ok+1c0WdcdHYmeiJ3y1l6U+5HpEcdR6FVejL+Ok8BvyB/1msaLQQ0fO
         Xr4VyI5qquZfvQOVMuBWlTab5CtIHYnNam4w7rPuoW0w1xn7OtI5s/qpajq45zgWI3fL
         417520KwtBtCks+lpAl1kq/RLtHPTE4/3Ma2me8jPYYZjXMaebS5PPDHc7a3ANZDSTQI
         TV2h74vGZ+GDu0yIbqkUWt2EJ7+VPu32qZnMWN0vmVkjPPunoEPfQAwmNGguua/eMsJl
         rnYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=qNLGON3mLEW9otlCYITUwcgh/bW+ooEbGJnw36Nqnno=;
        b=uIUlhcMTWTSRrdcatndSG+8Utvy1DbQ4nskkZwjHjeqv2McoJOPdMr5N8Gs4lOTo80
         2Hu95Y7aVeekezxcqLfQDMd39p7zkNyeMqJxzk38PcpOwlBW7DXHTchOkJqv9jtvfkO4
         TxRZJde3fxRZe4qjSn4jwaeTKvEFUBBJzWLg9/LYScHb47w3IGomBbR7YLH1OQiM7+f7
         uaHtE3KmVN4MynCu6p2WknFveQ7iTVyQHMqLgx3RIuHQ6ohgx4iwtPKxmcoAE9ruXfpW
         6qPXQiJN1+lYH8vo/cbweVE5esolPLI6EdhVOY0CsQ+8Mqvo+VjTMHEl5mKP3TJdlJhn
         X/sA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=jj7kg+VO;
       spf=pass (google.com: domain of 3a0tvyawkamg6o0w72z9o1s1u22uzs.q20@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3a0tvYAwKAMg6o0w72z9o1s1u22uzs.q20@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id z24si18876oid.3.2021.04.08.11.28.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Apr 2021 11:28:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3a0tvyawkamg6o0w72z9o1s1u22uzs.q20@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id u128so2834085ybf.12
        for <clang-built-linux@googlegroups.com>; Thu, 08 Apr 2021 11:28:59 -0700 (PDT)
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:3560:8505:40a2:e021])
 (user=samitolvanen job=sendgmr) by 2002:a25:360a:: with SMTP id
 d10mr13411630yba.473.1617906539163; Thu, 08 Apr 2021 11:28:59 -0700 (PDT)
Date: Thu,  8 Apr 2021 11:28:32 -0700
In-Reply-To: <20210408182843.1754385-1-samitolvanen@google.com>
Message-Id: <20210408182843.1754385-8-samitolvanen@google.com>
Mime-Version: 1.0
References: <20210408182843.1754385-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.31.1.295.g9ea45b61b8-goog
Subject: [PATCH v6 07/18] kallsyms: strip ThinLTO hashes from static functions
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Kees Cook <keescook@chromium.org>
Cc: Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>, Jessica Yu <jeyu@kernel.org>, 
	Arnd Bergmann <arnd@arndb.de>, Tejun Heo <tj@kernel.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Christoph Hellwig <hch@infradead.org>, Peter Zijlstra <peterz@infradead.org>, 
	Sedat Dilek <sedat.dilek@gmail.com>, Mark Rutland <mark.rutland@arm.com>, 
	Catalin Marinas <catalin.marinas@arm.com>, bpf@vger.kernel.org, 
	linux-hardening@vger.kernel.org, linux-arch@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org, 
	linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=jj7kg+VO;       spf=pass
 (google.com: domain of 3a0tvyawkamg6o0w72z9o1s1u22uzs.q20@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3a0tvYAwKAMg6o0w72z9o1s1u22uzs.q20@flex--samitolvanen.bounces.google.com;
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
Tested-by: Nathan Chancellor <nathan@kernel.org>
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
2.31.1.295.g9ea45b61b8-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210408182843.1754385-8-samitolvanen%40google.com.
