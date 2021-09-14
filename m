Return-Path: <clang-built-linux+bncBC2ORX645YPRBQHHQOFAMGQE4BPGWGQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x437.google.com (mail-pf1-x437.google.com [IPv6:2607:f8b0:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 7432740B786
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Sep 2021 21:10:58 +0200 (CEST)
Received: by mail-pf1-x437.google.com with SMTP id l124-20020a622582000000b00415b9d86203sf74837pfl.23
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Sep 2021 12:10:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631646657; cv=pass;
        d=google.com; s=arc-20160816;
        b=UVSJcQGkM8yJXqwJaDGiHkIQtqm8jtetD2p0XH3KcQs9KOE0PaQ2K2UhtBnYPyg9+4
         R7CWKy6YTv13+qb/Grvq91MnJ5ly5JKA3e7BZfsGHArETIIwxEynULitKY/tBMVNkzHg
         Gf3m7WtyMES4g6qdIiyxw7Z+56IQOO/FzuZjujfvOzwUNtE+y4rbVkS2mPqFrGrUqUjU
         tlU490q61OntqeXVKClfqwjxRVHfh9Vo7G+0OKuW4AD5PRZFN1tbJcj3w3ZwtJvvuf8J
         4tLG2kKQW3lMMJVi7b/x/Bgeo40KvVnv1Gco2aAOrcYLa30v449MYFa9DTIsERGA0eiu
         c/5Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=oqljdJm7XOEc9e/HFCJpNgtc/yNv6Vv60/oVILjoV/A=;
        b=zxjtv/imnU0sZ/wXwEh48AHQc2e9dOs/zCedEpxHQ+QbbtUWaFEHICYqd7C7OpNSUe
         WcEX6rDFboqg09K0G0E/gAn6EmqGC+0azRNxpNkhgRWrj5Iajc+86YFfRvD+jKj7/iGH
         l4S/OtBH/zG44kbLcp8UzCilJM85qHT+uT5B/rxoUf46+ozITmYkdYAy4uhgQkgKctoz
         XT09UsMoqoAJZ5tQB7gFHw4rabg+2eyrCwFLpteuf72IY+O+3G8aybh+wCY2tViLj0+L
         1ulpih7a41hO4eHbJzq5iTCQK1fJalUxynOFSjNhknyIOfuhYe6jaMvAVTBSH7z8OP5k
         6awA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=Mpm5cQyx;
       spf=pass (google.com: domain of 3v_nayqwkaloxfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3v_NAYQwKALoxfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oqljdJm7XOEc9e/HFCJpNgtc/yNv6Vv60/oVILjoV/A=;
        b=fxMB40o2hVLnxNEdMqj28xGvF42SYan3qvaTSAsmwWkvLHUoFFnJmMUyW3V1Z7V9nq
         FQUYkVs5hyitK22g0K0XyJ0CayjkTYkwoWaOGM+KL8PP2A40JNJd+MWm0r8mUI30uA4d
         KtDiO8UhojCzucjWD4IizNEJDAuHyaTPluWCONikSyE1akfD+5YMpflJZrgQY3DF6V5T
         ibCuKiu3raEn8hUl6CSK/UGF941VH6VbCSGAvgtxRmNwQgaoJ4f+FRxnki5p+BPIp60h
         bwtqXpcngQ/99owfBI1EJDkq96ba0HJGSJK5l5XiD/8OGmRJSKiDtBfJEQBmTTeXiAC+
         Jkxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oqljdJm7XOEc9e/HFCJpNgtc/yNv6Vv60/oVILjoV/A=;
        b=HUmGkqL93zw6SH8UwEIRUhS+taxUPJJ3UR5sOEy0P7GVPLNEmx9tCtvpJO8faVGtWN
         8tjs/uPWX9wxRppvOOM4kf5ySWtyi4q7CqpuacX9nZYgu7a6UU3kNFUEEMeSdY3JCsNc
         bi2h+tm3qlU8PL4n+JnyvrEtT0EChndbPABr/fMGj132qFeezEqLbyM0jHZHfLNjuBql
         blKJVZ2SXmv+yEfvmjeg2KLJD8ekd+oi5ggnlqJSJptI/ajkMKvIBaXKHEcXsrIUidHK
         Zl4XEj2DuUjVhUsKKEcaCSL9h5ld2vzwffIw0TyOoJFxc/fFO/VUxhA6pkh87mNMdUY2
         od8g==
X-Gm-Message-State: AOAM530PZvDOhnKmKBKslzIZ7W37Z06Kk7/xVUUtpb2tJlUPJsvC3XOv
	uv6i/sWsDml9HPQDwFYfiho=
X-Google-Smtp-Source: ABdhPJxPUfKoAz47kAKxAQO+rvYCdJenkTG1hVv32uVvjEDgvTOghbeVzHcrovGgRUGbfypGC7Hj8w==
X-Received: by 2002:a63:1a64:: with SMTP id a36mr16763611pgm.225.1631646656877;
        Tue, 14 Sep 2021 12:10:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:690b:: with SMTP id j11ls14250plk.6.gmail; Tue, 14
 Sep 2021 12:10:56 -0700 (PDT)
X-Received: by 2002:a17:90a:a585:: with SMTP id b5mr3819326pjq.201.1631646656263;
        Tue, 14 Sep 2021 12:10:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631646656; cv=none;
        d=google.com; s=arc-20160816;
        b=f6cUK5EA+pUzOX8wNFOA4onbhR82NM0NXZeNJixv1Dzwh3xT95kAE+PH05N0XpNU/t
         UPx7pC23Ul+01rcqzt9pzUtFRjdMnwk+OAQS3NOjpk+rDaHTbbL3tnR9aSYlizMFjHTY
         8tq+UQG7vHKp8h/iegyzCY1Y3ZMOfxjxmH41nPlXuXMOEcWUKvJhWAq7Gicwcda0sqKr
         apEvqCMrxVEFRmhhRBfkmRCRLg1y2O3oHbXz5tv6+vFSusXIXEWavEop7g3oiloSyKIb
         lWUTEB/pkFDhnSm2oyb9b4l2EucgIBiqcBqORz8jofqthfRjbMDMy7u8z8JyAZmhYGSP
         XQ5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=1oOz6kaFdaWVr/jQmAaRDSorIwh4Z5I78YdyCUUNK9s=;
        b=tWFH2PC2lulOQJaRjKkPwy+Q3u5v5smUcFs3QMIKrN8Wp7w/bcejMnl7WYYnpM6g/H
         SpIg2LlBtAE9pTZNeN4LugYIdHqtP++59XKvs43jpve00iLNr98KA9pFifT8dRep7yol
         nB02rK2yaCr6OJMyhXEG9dImuiYC/KqiXoa7tA3rdXlWtx/s3vkP/yMQGaK6XDyUZEGX
         KflQC2iOqQHYW20dKtozsUCeSVslSpQT7gbeKsDFsnoxaB00GVZozBGl6eEe/d+z+zs1
         AiUE0LM2imNbOoCPrbcMaaNgD3SifPvdJ7Pd1hDT+veH/ADdGMakZ5FWt9fv6Wm+OQkB
         KuVw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=Mpm5cQyx;
       spf=pass (google.com: domain of 3v_nayqwkaloxfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3v_NAYQwKALoxfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id p18si885419plr.1.2021.09.14.12.10.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Sep 2021 12:10:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3v_nayqwkaloxfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id i189-20020a256dc6000000b005a04d42ebf2so114007ybc.22
        for <clang-built-linux@googlegroups.com>; Tue, 14 Sep 2021 12:10:56 -0700 (PDT)
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:d19c:5902:49bb:c41])
 (user=samitolvanen job=sendgmr) by 2002:a25:3046:: with SMTP id
 w67mr1001922ybw.134.1631646655540; Tue, 14 Sep 2021 12:10:55 -0700 (PDT)
Date: Tue, 14 Sep 2021 12:10:32 -0700
In-Reply-To: <20210914191045.2234020-1-samitolvanen@google.com>
Message-Id: <20210914191045.2234020-4-samitolvanen@google.com>
Mime-Version: 1.0
References: <20210914191045.2234020-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.33.0.309.g3052b89438-goog
Subject: [PATCH v3 03/16] linkage: Add DECLARE_ASM_FUNC_SYMBOL
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: x86@kernel.org
Cc: Kees Cook <keescook@chromium.org>, Josh Poimboeuf <jpoimboe@redhat.com>, 
	Peter Zijlstra <peterz@infradead.org>, Nathan Chancellor <nathan@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Sedat Dilek <sedat.dilek@gmail.com>, 
	linux-hardening@vger.kernel.org, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20210112 header.b=Mpm5cQyx;       spf=pass
 (google.com: domain of 3v_nayqwkaloxfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3v_NAYQwKALoxfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com;
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

The kernel has several assembly functions, which are not directly
callable from C but need to be referred to from C code. This change adds
the DECLARE_ASM_FUNC_SYMBOL macro, which allows us to declare these
symbols using an opaque type, which makes misuse harder, and avoids the
need to annotate references to the functions for Clang's Control-Flow
Integrity (CFI).

Suggested-by: Andy Lutomirski <luto@amacapital.net>
Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 include/linux/linkage.h | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/include/linux/linkage.h b/include/linux/linkage.h
index dbf8506decca..f1eac26b2dd6 100644
--- a/include/linux/linkage.h
+++ b/include/linux/linkage.h
@@ -48,6 +48,19 @@
 #define __PAGE_ALIGNED_DATA	.section ".data..page_aligned", "aw"
 #define __PAGE_ALIGNED_BSS	.section ".bss..page_aligned", "aw"
 
+/*
+ * Declares a function not callable from C using an opaque type. Defined as
+ * an array to allow the address of the symbol to be taken without '&'.
+ */
+#ifndef DECLARE_ASM_FUNC_SYMBOL
+#define DECLARE_ASM_FUNC_SYMBOL(sym) \
+	extern const u8 sym[]
+#endif
+
+#ifndef __ASSEMBLY__
+typedef const u8 *asm_func_ptr;
+#endif
+
 /*
  * This is used by architectures to keep arguments on the stack
  * untouched by the compiler by keeping them live until the end.
-- 
2.33.0.309.g3052b89438-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210914191045.2234020-4-samitolvanen%40google.com.
