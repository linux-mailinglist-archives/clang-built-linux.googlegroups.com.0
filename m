Return-Path: <clang-built-linux+bncBC2ORX645YPRBWVKST5QKGQERZNPPVA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3f.google.com (mail-vs1-xe3f.google.com [IPv6:2607:f8b0:4864:20::e3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 4620E270646
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Sep 2020 22:15:23 +0200 (CEST)
Received: by mail-vs1-xe3f.google.com with SMTP id n128sf2032451vsd.5
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Sep 2020 13:15:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600460122; cv=pass;
        d=google.com; s=arc-20160816;
        b=IcW+B0pvg1Dsp0JYUBvNy3GU3F8WIqn494vGoUYUYVYGe0tqNh/P5Oxn+QQrwTTEoi
         OgPsOfFF3LE3C9zjVDJalddGVQ5tQlmBF/onSWZvjS/cfj28X7Mp2/IIH575NhTjIBTb
         G/BIz3E6YvCXenbMqwcMfFLfNOgMVQU4bhc2gWhWP7dDhaAMLxUYJ52A6qr9sf5SHXM5
         RWkoKC7yr882ss04p/L4LdKRlPyoF5A1evOi8umlXEwIG222N2cYC6KamIL2zaXShGUQ
         0JQkotuiT2BglpJQ8DBcka4OzezO92kgtW7Y9ueVwTnLaD9cfIqiHBQtJgiIwUEjCHt7
         HSAQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=JCDSF9fSirfvEikcwZzhf5JafSsLP+QKr17LaBOJMcM=;
        b=gjPDcy1uUqji4dUkgQZRoXHq8qH7tkF5swbeYjs+w+Ir8zi72q+vlRKkOjxyjW4Upk
         hqO7SVS2sbdl4Li27sKxUsulzxV1suJVzK4o7occhVw8B/DVK/Rtlj70SiTxJd81K+0u
         vt4HhCvJJmgsfVV2k0DMLg45Xa8Uiiw2AiIX8OrtKlCl/45Mdl9nMjtJboVpBdsWks40
         jw5pRudfFiXaGolMUKHiOmebhfuXllqfLT3JgcwYVeSVky5nGVlUvtsczHp2Ltqd+NT/
         o0Z0vqKJnit45meZ7G4AgJrvkdloPochjey77ePcpBFIjQBli2EBXUexQctCGX90j3or
         YxUQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=DmFIi1OV;
       spf=pass (google.com: domain of 3wrvlxwwkaboi0c8jebl0d4d6ee6b4.2ec@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3WRVlXwwKABoI0C8JEBL0D4D6EE6B4.2EC@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=JCDSF9fSirfvEikcwZzhf5JafSsLP+QKr17LaBOJMcM=;
        b=G/OrCDgjlj2/TaVNkyJ5SphEJj5sE04R9IDagr29WsZUJQgSpnKRKNMZ9Tak1OPztu
         OPo8bW6UX0UsaUt9ijLu7CPKEECJU9Q5B7vZrOnwxwkv+m+ksUNxM8kOKajpxawaoipl
         nWUhkbH6Yee4FITu8XHhC/nBY1Ul8V3dVdytMDsJDQJrq2cs+KvXIRFHlLX6kFEpb57P
         j0V0LdaUQIW3Qc65XBrsw33AUNhy60i8Dlds8P17uWCUBiewfdQwqkMx6XhghUW4U6rw
         WQJDMrUU1Lz5HDxF6c6qGIbR4yU2hG322DBW788Hm55+8htBKhk2sLCozJesVycEvWyU
         uH5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JCDSF9fSirfvEikcwZzhf5JafSsLP+QKr17LaBOJMcM=;
        b=TWkpNpVRK9waIza3Kbe4yZ0FBsB+sKkP38wj6kpFalLDrnT69vWoWxjunwstAsenu5
         VuOeJJ/TmbaadXy0D3c8ZkC6wuoUcut9Z7nhM+3P0NvfeWQ6sQ1QiLbdLHIhaL2lBQ8t
         82XuH5cz4HkfYZyCp51rWsZTlisjP60FV4RenyS+lsISSIW/FCgB9aHzPN/dxuq66F4P
         uZLLeKsWYwSHoA9z/AgDz5AsQOgHFwYUAxlG2QZ/6J9OveFUVkWChCp/+uo+AHLZU1Jm
         0+wfj5j39KtKOwUxs1gd5yF0ujRZ1xc5MBsqcIP2vEYZuZAF1QBBIWUfkCy5VmllhDfL
         XQeA==
X-Gm-Message-State: AOAM533HkYBYeFTsOVQQXhn+hBCRMw7V+ZtGB119NytD8PL2JmHLL8rf
	tnel1pPJq19oCQ658ByOdBM=
X-Google-Smtp-Source: ABdhPJx7NiOgGGTzSjubANRpBu9aMoswK7fcNq1dVtQ9LCJ2sEgn7YCqEn13lQz3wIoi+iH60OY1dA==
X-Received: by 2002:ac5:c8a7:: with SMTP id o7mr12692569vkl.24.1600460122348;
        Fri, 18 Sep 2020 13:15:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:a2ca:: with SMTP id l193ls370331vke.6.gmail; Fri, 18 Sep
 2020 13:15:21 -0700 (PDT)
X-Received: by 2002:a1f:a94c:: with SMTP id s73mr13174671vke.19.1600460121823;
        Fri, 18 Sep 2020 13:15:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600460121; cv=none;
        d=google.com; s=arc-20160816;
        b=xIZHnr7vNbnxO8FSh1Gals/dESoCAXHXrZ3HvWCURB7putY91KbFTO9tVtNOdM4f0r
         DdE9SoGOdMM7nHycG2jRdC+4WcOiNII8KkosbeH8JhYUjGCVy+mgw7AlhlHiqftasvAU
         MO7ClPZXkCRm2a5t89xE1t0Qc0sg2i4slSz6UFnwWwdk773Dgl6cXh7KbFrcNloo0l4X
         AMIq6iWFoZyMTLLMjCILUkPM2xdKm9tt6ZRdEUng5gmFcU05nQt+Dfj3xrsWHfRT/CLd
         oXFf/apovEisn2Lc+e+uI0GkL26NqsWL051whrELTZOTyHIycvWq3Q5DJCOj9Al/23XJ
         HGeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=XxAfB/P/jhgYhoVgUFO0krm50APtT+WWyqbk+4ioXTk=;
        b=rSHtJ6lz1ps2vR0o1uKTFK+B+u+p0hzNQHNgpE3a60WbPBoBkO/UAuBFAujOHdPjXG
         e+5VoJstKHynDbodzBgGliKEOkzPRVqAeMSgmNyeUwW2FdAObpC64op0+g5FAVVX42yM
         //18ZxvG0BXyX6urlca3cRZLogfpBfSH8IuWQ+yhnf7p08S85zpo0wTsu63KRNFUv+Du
         QD/ht82FYIoLZhiitjFLw5DOH6yo2IWABPErs7frB+g91InGWn8l2jYeV6WiShVF0uCE
         FY3lupxlAA9IqzOSK5nWbtSC+HmsBNKLaAsSpqEvDE+0tHAEopCQyoHC3f8nhHXmtXPy
         gWJg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=DmFIi1OV;
       spf=pass (google.com: domain of 3wrvlxwwkaboi0c8jebl0d4d6ee6b4.2ec@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3WRVlXwwKABoI0C8JEBL0D4D6EE6B4.2EC@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id x16si57036vko.2.2020.09.18.13.15.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Sep 2020 13:15:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3wrvlxwwkaboi0c8jebl0d4d6ee6b4.2ec@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id d15so6782400ybk.0
        for <clang-built-linux@googlegroups.com>; Fri, 18 Sep 2020 13:15:21 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a25:e009:: with SMTP id
 x9mr6392448ybg.373.1600460121392; Fri, 18 Sep 2020 13:15:21 -0700 (PDT)
Date: Fri, 18 Sep 2020 13:14:24 -0700
In-Reply-To: <20200918201436.2932360-1-samitolvanen@google.com>
Message-Id: <20200918201436.2932360-19-samitolvanen@google.com>
Mime-Version: 1.0
References: <20200918201436.2932360-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.681.g6f77f65b4e-goog
Subject: [PATCH v3 18/30] init: lto: fix PREL32 relocations
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
 header.i=@google.com header.s=20161025 header.b=DmFIi1OV;       spf=pass
 (google.com: domain of 3wrvlxwwkaboi0c8jebl0d4d6ee6b4.2ec@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3WRVlXwwKABoI0C8JEBL0D4D6EE6B4.2EC@flex--samitolvanen.bounces.google.com;
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

With LTO, the compiler can rename static functions to avoid global
naming collisions. As initcall functions are typically static,
renaming can break references to them in inline assembly. This
change adds a global stub with a stable name for each initcall to
fix the issue when PREL32 relocations are used.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
---
 include/linux/init.h | 31 +++++++++++++++++++++++++++----
 1 file changed, 27 insertions(+), 4 deletions(-)

diff --git a/include/linux/init.h b/include/linux/init.h
index af638cd6dd52..cea63f7e7705 100644
--- a/include/linux/init.h
+++ b/include/linux/init.h
@@ -209,26 +209,49 @@ extern bool initcall_debug;
  */
 #define __initcall_section(__sec, __iid)			\
 	#__sec ".init.." #__iid
+
+/*
+ * With LTO, the compiler can rename static functions to avoid
+ * global naming collisions. We use a global stub function for
+ * initcalls to create a stable symbol name whose address can be
+ * taken in inline assembly when PREL32 relocations are used.
+ */
+#define __initcall_stub(fn, __iid, id)				\
+	__initcall_name(initstub, __iid, id)
+
+#define __define_initcall_stub(__stub, fn)			\
+	int __init __stub(void);				\
+	int __init __stub(void)					\
+	{ 							\
+		return fn();					\
+	}							\
+	__ADDRESSABLE(__stub)
 #else
 #define __initcall_section(__sec, __iid)			\
 	#__sec ".init"
+
+#define __initcall_stub(fn, __iid, id)	fn
+
+#define __define_initcall_stub(__stub, fn)			\
+	__ADDRESSABLE(fn)
 #endif
 
 #ifdef CONFIG_HAVE_ARCH_PREL32_RELOCATIONS
-#define ____define_initcall(fn, __name, __sec)			\
-	__ADDRESSABLE(fn)					\
+#define ____define_initcall(fn, __stub, __name, __sec)		\
+	__define_initcall_stub(__stub, fn)			\
 	asm(".section	\"" __sec "\", \"a\"		\n"	\
 	    __stringify(__name) ":			\n"	\
-	    ".long	" #fn " - .			\n"	\
+	    ".long	" __stringify(__stub) " - .	\n"	\
 	    ".previous					\n");
 #else
-#define ____define_initcall(fn, __name, __sec)			\
+#define ____define_initcall(fn, __unused, __name, __sec)	\
 	static initcall_t __name __used 			\
 		__attribute__((__section__(__sec))) = fn;
 #endif
 
 #define __unique_initcall(fn, id, __sec, __iid)			\
 	____define_initcall(fn,					\
+		__initcall_stub(fn, __iid, id),			\
 		__initcall_name(initcall, __iid, id),		\
 		__initcall_section(__sec, __iid))
 
-- 
2.28.0.681.g6f77f65b4e-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200918201436.2932360-19-samitolvanen%40google.com.
