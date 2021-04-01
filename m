Return-Path: <clang-built-linux+bncBC2ORX645YPRBEVQTGBQMGQESIDXMCQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63d.google.com (mail-pl1-x63d.google.com [IPv6:2607:f8b0:4864:20::63d])
	by mail.lfdr.de (Postfix) with ESMTPS id 919C33523A6
	for <lists+clang-built-linux@lfdr.de>; Fri,  2 Apr 2021 01:32:35 +0200 (CEST)
Received: by mail-pl1-x63d.google.com with SMTP id x7sf3656649plg.18
        for <lists+clang-built-linux@lfdr.de>; Thu, 01 Apr 2021 16:32:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617319954; cv=pass;
        d=google.com; s=arc-20160816;
        b=ycpzU/vFVMVp+EYCRvTZErws4y6NNIIXBHnO3LU7e3EUqp0RdSVReKF/RtOv2fPcSR
         KD2uajvRicRZ4ssyYdTVF24I+JgT1QzZ0kskZKxj1DZznVmLrROop431J8nnvBDtgwGY
         foEyjvYH+ceLxsAKD/gZs90eARltY19KelReyU80E4ZlcN3ySzngWQGEQZQnw41XVY2p
         33mLKdWs2YGZcptnic0mtk+VO/IV7vqGOd9f5BMzdrL9BVKBDpc2B0A3ldPNpCsKMCl/
         7Hk8+X/smafwgs/TnjUdj2tEd63zRv8fk7LpjN5gJ1qiJ+V0CGkAp+vjJUKE8fYdOA7V
         Bq7Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=Gbudq/Kb+6GNCLdige9o8XNr+NlPZKOZ+vrV1QXbqVU=;
        b=E9596jHdUU7yBT5ltTnrIY6QJ3yB1Vy5Z/OjUHZbUcpnAeTw8i4eH3vFZq+ishJx62
         kgd0BfsJ91PD95cGa4aqQMXxpivbhCzs9xTLdkNYW78duTdD17gNPKJazgwWcmxLo6+S
         Yoh846gfLz8Fww7ytDq+2BFdHH/P5LDIbKffCS0u+44Pw/Wg4RikU/VCmiWMd8tSe8d/
         AAWereM7RTsWgwby2saYhjxIysvsXfoBtfEMI8mdBiGtiXsMAni1kkDGioLVY28/wX8W
         XHu+S6CmAK0mKx4ieUZKD/PmgMJ1auVTuWrIOoLtIuCuuv7AXOncvbk5ybnJhE0Qb+2h
         3yJw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=jfBjjOuh;
       spf=pass (google.com: domain of 3efhmyawkagmtbnjupmwbofohpphmf.dpn@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3EFhmYAwKAGMTBNJUPMWBOFOHPPHMF.DPN@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Gbudq/Kb+6GNCLdige9o8XNr+NlPZKOZ+vrV1QXbqVU=;
        b=F3g06QgdWPjgIgc1NAnargt4zGHND/ssy4NGJbsp+7JPRWAPcx6+7LsOMVim46okxf
         5dRxy/j+jJ3DixcFEOKoVlVpxr7ewDKXDdhS8Ne2jd3OydHoeeQqi00JiPbzr/at0JZU
         zVSX2AtS34X76Pe7tmUE72zAJxRbNA8XHrIw/P0RLi7o41kLVQjFDEj+rVg2maxXoA2m
         UYc6s/0vZMthU8Nd3S1zUxMDeccJR1d8lrxFvnbD2eN49UnztplHWR5Ac7ZRGsHX+Ql6
         vBXTQIqOxpKM3fxXAL9ZPkFYir11452Ur73uE8BeBkwpEmnEaLohup1QGqg+NjhipPaC
         hVtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Gbudq/Kb+6GNCLdige9o8XNr+NlPZKOZ+vrV1QXbqVU=;
        b=Ni0HroYYDQBLp+GsUbu0NQinpohEHf/uWJtU1i4YBCvJLv+1VO+gO94CWTdX95XWGl
         xUTeOXHt/WCUexNfm3uzfUTa2OooG68SkOR8AqOnfe+2y2uWODETmlXYT1xtDyElHw4/
         DcKNaSQoPvaEN5ORkniT7oiPZ6kUIWQpSyo/qi+cD4utpH2GQRzqbgkLGFw9ddyTB9kT
         2RxAALwUmDrsDtLNXAsKLUAuX00R1rCjapSuoQoKGjZBW4Py3defTfoYrkAKvOhrQUxP
         iIOB9hRP6DQ/quQsTsRg49QXVhsrJEV2lIv3IwOQ5x6qc/ox1zQIhYAnKHtZjBw7QhHc
         JotA==
X-Gm-Message-State: AOAM532hCMn0gyiCBYUnvb/slWIk66ehEKIa2cKX4ewMOyqIj6PY4M2y
	gFoUfIQAjQf/WFvnhqKVbhY=
X-Google-Smtp-Source: ABdhPJxYJwTuZaDjgnG2W3pAZ8kli1Mi9B/zbsp/+ZgSgTPKhk+P64nOP+Z1QZqQdJZ6v2lnA699Cg==
X-Received: by 2002:a17:902:c104:b029:e7:3268:6eb9 with SMTP id 4-20020a170902c104b02900e732686eb9mr10165821pli.32.1617319954329;
        Thu, 01 Apr 2021 16:32:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:eb43:: with SMTP id i3ls3479688pli.7.gmail; Thu, 01
 Apr 2021 16:32:33 -0700 (PDT)
X-Received: by 2002:a17:902:9886:b029:e6:2bc6:b74 with SMTP id s6-20020a1709029886b02900e62bc60b74mr10137717plp.13.1617319953769;
        Thu, 01 Apr 2021 16:32:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617319953; cv=none;
        d=google.com; s=arc-20160816;
        b=F9aQkynLTMaeNkppQ7dst+ivC/AXfqpee4TMxz2WS2RaqCBeZTeMsvqr4VrCK7iNvA
         78vMkBYkxMlT1WunVOns9AJbMGVVKom+1Yb3AeKSjJ3jqE3Z0eTCOKFFTeTgxBVS14hK
         TwQ0sKB3cT5TgKxs4Ep8lSJIAKi+HNXNcpJY5JME8h7nSCbPX09j3b3pCXeaCi512TLL
         Do5wh14IIyI6T1vC/rCXtVrlgr4VqLG65uTeskwej4GcIcNjJrKjQPq4OzpFT6/qfeDx
         PGze+QK6ECZ3dySdHt+PCZwXabHNNuOO824awjlYgbsU9/EsVz67KqueJAek8Uy5Ba0s
         hFTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=0OJOU674SN3xj3Lqx/JMDarKdo+EQxjvu4sbPIpjGbQ=;
        b=NcKHv3O/0kd1clFN1S2Sxvdq24quqlznM/ATSl9zQiqrOdyCVD7pA1kOCXkC/MMJwe
         EhvDFCP2BadfJoNUwLfbmzIPPEEmz45ONPA+atmgfKto6WeTO++qA6NjERqVsxWaAwp1
         UDAN4pY55BU2ppGibTqC9x0O5yO3u15gvyjU96ZnDOdHwWN/y1QiT3pf4tDlpQjnxUOY
         KXQwz6B9UegVa7DNmiJaHXXfzuup71yyCgcG2tZfA/rgb4836ft6vUca+Z1Tsc+eTzOx
         Ci8cHpUfV6i+/A2TJ8PQEInzGQCDrWa6ULCfPEmh1PxaiZaepxjCdqzEwUKZPZgHmSN3
         UU6Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=jfBjjOuh;
       spf=pass (google.com: domain of 3efhmyawkagmtbnjupmwbofohpphmf.dpn@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3EFhmYAwKAGMTBNJUPMWBOFOHPPHMF.DPN@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x84a.google.com (mail-qt1-x84a.google.com. [2607:f8b0:4864:20::84a])
        by gmr-mx.google.com with ESMTPS id y17si398656plr.4.2021.04.01.16.32.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Apr 2021 16:32:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3efhmyawkagmtbnjupmwbofohpphmf.dpn@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) client-ip=2607:f8b0:4864:20::84a;
Received: by mail-qt1-x84a.google.com with SMTP id t3so4047281qtp.23
        for <clang-built-linux@googlegroups.com>; Thu, 01 Apr 2021 16:32:33 -0700 (PDT)
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:4cd1:da86:e91b:70b4])
 (user=samitolvanen job=sendgmr) by 2002:a0c:bec3:: with SMTP id
 f3mr10582224qvj.49.1617319952913; Thu, 01 Apr 2021 16:32:32 -0700 (PDT)
Date: Thu,  1 Apr 2021 16:32:05 -0700
In-Reply-To: <20210401233216.2540591-1-samitolvanen@google.com>
Message-Id: <20210401233216.2540591-8-samitolvanen@google.com>
Mime-Version: 1.0
References: <20210401233216.2540591-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.31.0.208.g409f899ff0-goog
Subject: [PATCH v5 07/18] kallsyms: strip ThinLTO hashes from static functions
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
 header.i=@google.com header.s=20161025 header.b=jfBjjOuh;       spf=pass
 (google.com: domain of 3efhmyawkagmtbnjupmwbofohpphmf.dpn@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3EFhmYAwKAGMTBNJUPMWBOFOHPPHMF.DPN@flex--samitolvanen.bounces.google.com;
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
2.31.0.208.g409f899ff0-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210401233216.2540591-8-samitolvanen%40google.com.
