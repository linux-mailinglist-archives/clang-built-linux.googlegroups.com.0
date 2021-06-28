Return-Path: <clang-built-linux+bncBDYJPJO25UGBB3N25CDAMGQEHGZRT3I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33b.google.com (mail-ot1-x33b.google.com [IPv6:2607:f8b0:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 247393B68CD
	for <lists+clang-built-linux@lfdr.de>; Mon, 28 Jun 2021 21:05:19 +0200 (CEST)
Received: by mail-ot1-x33b.google.com with SMTP id v5-20020a05683011c5b02903cb28b38d0asf13779376otq.19
        for <lists+clang-built-linux@lfdr.de>; Mon, 28 Jun 2021 12:05:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624907118; cv=pass;
        d=google.com; s=arc-20160816;
        b=nVJIFIIx+OL6Y0u4Pe51xn01K8JFXBt/wMjpu+NKJCkrcF3lel0OE1/eDa7/Er3idp
         kptF0d6SFeE0/BTIgM6IoPK2MS0jpEZ4CdFapsTeK/QyC8u6Dt5/5zP37nLQg78sy3bw
         RYJyoo/3pZqtqKmO5x3NvLXfDkAWI48by7TKzMPblKNi3ybk/+animQr0SEZYiRkejps
         RRLhUB4Kj1V25kg286azpk09VxY0UnAI2LovKNaWJW8ebKq5hj9JDuL00LccQ3Ax3dYu
         KdrQ1k6xCB+HqxDrMNUU/+MiKCFmm3AqdO0xVSQwWHhwuwv0k/WOnDbwbCXRzcjFgYIz
         cz7A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=tGn6g1ioGv+CVZ1coUtmmiP8vsz1+jSWudtjdjrWTec=;
        b=h5xM4IVYTC5KOB7BGSqGPUr7InDlAJmMGW2ydJ8rMmwnM8QJ1tLtYWfbhfOe+pTBVw
         B98pU8OofNLjABhlx/rYO7FaNnPhGkBVTvFENzs9xh3u9vOikWH6kt6EHRbaIvHEH0gU
         n/aSAiN9h53V1zevwVOmhhGNWX6oja8K6z3f5N3L13l1eJ3v50DXdoSvDwTg02gM4Y4+
         v29Bpmlj3Gw+l9DStyWhqkIHmQeZeXU8LIpSCCxXmEmAVj9v42bzQUBWPCbl17Pmu+uY
         IFhXslN2KbVJ6YkU8yNuNhqUrPTdLuvy77QTaOZQhuS3pN9tkrUu04ojomEkybBiSk2Z
         DkVw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=PL0eaGkG;
       spf=pass (google.com: domain of 3bb3ayawkab0g67l3negb7kl9hh9e7.5hf@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3bB3aYAwKAB0G67L3NEGB7KL9HH9E7.5HF@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tGn6g1ioGv+CVZ1coUtmmiP8vsz1+jSWudtjdjrWTec=;
        b=lWSfEGNLYmIhk/ql86hoMdtbCgTGHJHRyl61KvWdYKoZ+dqA7Mel90z+fbjTBNhoVE
         HvfOqR+QpxNPsUlkpcejhCtDchGOgt2m78bDBugm+y9zD8/pNPbIVqVINWvG2lYsLamn
         sKR9mXFQSRBs3Vku+N/EOSmWhX5jIVHVFOLXPsmLMPU2y674HvSYer0WFyLCuz2EsQwv
         km6f3vnnPFGoZWkLCXboGiJUlEp5BpMVUsQUxzzZF2ruBVpGfcwIdfyz0BkZyrfEMVCo
         VCpXPnwkdok/0toS6sjA64O0i9WSDoOkaqO0KJNJxjZ2AJoBqFqt1uLpfqX4ajZp3Eqk
         X91Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tGn6g1ioGv+CVZ1coUtmmiP8vsz1+jSWudtjdjrWTec=;
        b=XfsyHkBqpepCr6i3MV3Y9cm7GEDajJT2ESJg8oRD10O9KZqgCTbZoMD/ONZfI3tBgN
         eMd+j0MPfaw8BhAdWkf+A10UVYnj0XebXdQRy32TETyqZ3XHV1/4m2jNQJIZlPMmoap2
         OjUC4z8v13RTA2dDGlhbzQJ6WHkHiaksl0B6huYGt/bcb1kBm7XF1wRAqnl3Da13y9Ee
         HeXcf3pqWLqWma5zjQnrG+KjfJt5u0v/CVGbRcrBgBBU+Yl7gOpqqchETIIhG0nwS6de
         Zmeg0c2uYfH8K4CDh2scmh6Kwxzldld6LPduOcKk5Uw2hBSre+gzvS1v1tGONneizAA9
         v39A==
X-Gm-Message-State: AOAM5310lUZyEe9WqSFYsklZtosKEektTfe99IAkqs9I9ZDMyIt6FHwc
	ECYeWW29ZdqgupcEdi9IIGY=
X-Google-Smtp-Source: ABdhPJy3nhUY172D687KZYKegaW1w8Q8aswQ7vdhh/5IMd7dssA+CcoNJItAS+Lmz+bE9SXMsBPpqw==
X-Received: by 2002:a9d:6d8c:: with SMTP id x12mr918440otp.121.1624907117829;
        Mon, 28 Jun 2021 12:05:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:5903:: with SMTP id n3ls6947578oib.6.gmail; Mon, 28 Jun
 2021 12:05:17 -0700 (PDT)
X-Received: by 2002:a05:6808:6d1:: with SMTP id m17mr21110288oih.34.1624907117480;
        Mon, 28 Jun 2021 12:05:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624907117; cv=none;
        d=google.com; s=arc-20160816;
        b=kWNpDB5lnxGex82/KrBD8+DGIghqi108Pw2F0R9eCxXtY0TRb0rquyTBJLh8Bjnc+2
         wMuHTMYi8I+Bpm9n6E3tl8jmoKcmgDik9ArHdQc+VrqlyFZ9b3pv+3O8Zzjxq2hfeRhw
         AYva9els7dLf3RMY3sBSh/DLFM/E0o1pzFXhKSQejrBVQggSxnbHX8NDi3W+h0CbUuzL
         LgJJYbTKdhFqgm9t8ovNQabXvblVqI2s+RldfSEoaNr0sQqMc/4hcETGkWoNwnIk75Jc
         oOQQKRXhTePERGkKDh59UZTl7jTJ5V1XMQmJfqPP1AHH006u/wMagaKQWVscB245apdO
         9I8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=mrnpINK5iyhqWzOKn2U+Wb/F3LThfuiu21IBE0XytmI=;
        b=G1D6Qe7bZnzcceawaDeodcoN/VH0CpD2jNGUpJkMHicaXD+LPg2nFgKMQ2DW5kLuxL
         32XGPBz2htGRxj6+J+7a5DK60gnZtHZ4faTHGqeMWLFLzZfM+3qAcTvmGzfi6HGuW5zQ
         af41D4jjU2ntj2NeJUvVRMWKkIdMDSi8j2wtqNouC6gnONEd6QbyEZC0b+xRlsfNJBdO
         vsSBEwlNzpwmMpRIh85gLMpMkfhtHXcnGlr6/A4uYwGamZxPuTLIkLG3ubu4jic5w/f5
         cPwzqNwr3al/AdnFIkMCniLSUXxa+9VQfdV0xrE6diif9BiQmqP4JhIsJF2P3uXP4kBR
         n/bg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=PL0eaGkG;
       spf=pass (google.com: domain of 3bb3ayawkab0g67l3negb7kl9hh9e7.5hf@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3bB3aYAwKAB0G67L3NEGB7KL9HH9E7.5HF@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qv1-xf4a.google.com (mail-qv1-xf4a.google.com. [2607:f8b0:4864:20::f4a])
        by gmr-mx.google.com with ESMTPS id b9si1822059ooq.1.2021.06.28.12.05.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Jun 2021 12:05:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3bb3ayawkab0g67l3negb7kl9hh9e7.5hf@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) client-ip=2607:f8b0:4864:20::f4a;
Received: by mail-qv1-xf4a.google.com with SMTP id d11-20020a0cf6cb0000b029028486d617faso9577421qvo.19
        for <clang-built-linux@googlegroups.com>; Mon, 28 Jun 2021 12:05:17 -0700 (PDT)
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:6f7:d09:f550:3380])
 (user=ndesaulniers job=sendgmr) by 2002:a05:6214:1cb:: with SMTP id
 c11mr26921739qvt.47.1624907116853; Mon, 28 Jun 2021 12:05:16 -0700 (PDT)
Date: Mon, 28 Jun 2021 12:05:06 -0700
In-Reply-To: <20210622201822.ayavok3d2fw3u2pl@google.com>
Message-Id: <20210628190509.2486992-1-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20210622201822.ayavok3d2fw3u2pl@google.com>
X-Mailer: git-send-email 2.32.0.93.g670b81a890-goog
Subject: [PATCH v2] kallsyms: strip LTO suffixes from static functions
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Kees Cook <keescook@chromium.org>
Cc: Fangrui Song <maskray@google.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	"KE . LI" <like1@oppo.com>, Nathan Chancellor <nathan@kernel.org>, 
	Andrew Morton <akpm@linux-foundation.org>, Stephen Rothwell <sfr@canb.auug.org.au>, 
	Miroslav Benes <mbenes@suse.cz>, Jessica Yu <jeyu@kernel.org>, Joe Perches <joe@perches.com>, 
	"Gustavo A. R. Silva" <gustavoars@kernel.org>, Sami Tolvanen <samitolvanen@google.com>, 
	Randy Dunlap <rdunlap@infradead.org>, Stephen Boyd <swboyd@chromium.org>, 
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=PL0eaGkG;       spf=pass
 (google.com: domain of 3bb3ayawkab0g67l3negb7kl9hh9e7.5hf@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3bB3aYAwKAB0G67L3NEGB7KL9HH9E7.5HF@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

Similar to:
commit 8b8e6b5d3b01 ("kallsyms: strip ThinLTO hashes from static
functions")

It's very common for compilers to modify the symbol name for static
functions as part of optimizing transformations. That makes hooking
static functions (that weren't inlined or DCE'd) with kprobes difficult.

LLVM has yet another name mangling scheme used by thin LTO.  Strip off
these suffixes so that we can continue to hook such static functions.

Reported-by: KE.LI(Lieke) <like1@oppo.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
Changes v1 -> v2:
* Both mangling schemes can occur for thinLTO + CFI, this new scheme can
  also occur for thinLTO without CFI. Split cleanup_symbol_name() into
  two function calls.
* Drop KE.LI's tested by tag.
* Do not carry Fangrui's Reviewed by tag.
* Drop the inline keyword; it is meaningless.

 kernel/kallsyms.c | 33 +++++++++++++++++++++++++++++----
 1 file changed, 29 insertions(+), 4 deletions(-)

diff --git a/kernel/kallsyms.c b/kernel/kallsyms.c
index 4067564ec59f..fbce4a1ec700 100644
--- a/kernel/kallsyms.c
+++ b/kernel/kallsyms.c
@@ -171,14 +171,30 @@ static unsigned long kallsyms_sym_address(int idx)
 	return kallsyms_relative_base - 1 - kallsyms_offsets[idx];
 }
 
-#if defined(CONFIG_CFI_CLANG) && defined(CONFIG_LTO_CLANG_THIN)
+#ifdef CONFIG_LTO_CLANG_THIN
+/*
+ * LLVM appends a suffix for local variables that must be promoted to global
+ * scope as part of thin LTO. foo() becomes foo.llvm.974640843467629774. This
+ * can break hooking of static functions with kprobes.
+ */
+static bool cleanup_symbol_name_thinlto(char *s)
+{
+	char *res;
+
+	res = strstr(s, ".llvm.");
+	if (res)
+		*res = '\0';
+
+	return res != NULL;
+}
+#ifdef CONFIG_CFI_CLANG
 /*
  * LLVM appends a hash to static function names when ThinLTO and CFI are
  * both enabled, i.e. foo() becomes foo$707af9a22804d33c81801f27dcfe489b.
  * This causes confusion and potentially breaks user space tools, so we
  * strip the suffix from expanded symbol names.
  */
-static inline bool cleanup_symbol_name(char *s)
+static bool cleanup_symbol_name_thinlto_cfi(char *s)
 {
 	char *res;
 
@@ -189,8 +205,17 @@ static inline bool cleanup_symbol_name(char *s)
 	return res != NULL;
 }
 #else
-static inline bool cleanup_symbol_name(char *s) { return false; }
-#endif
+static bool cleanup_symbol_name_thinlto_cfi(char *s) { return false; }
+#endif /* CONFIG_CFI_CLANG */
+#else
+static bool cleanup_symbol_name_thinlto(char *s) { return false; }
+#endif /* CONFIG_LTO_CLANG_THIN */
+
+static bool cleanup_symbol_name(char *s)
+{
+	return cleanup_symbol_name_thinlto(s) &&
+		cleanup_symbol_name_thinlto_cfi(s);
+}
 
 /* Lookup the address for this symbol. Returns 0 if not found. */
 unsigned long kallsyms_lookup_name(const char *name)
-- 
2.32.0.93.g670b81a890-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210628190509.2486992-1-ndesaulniers%40google.com.
