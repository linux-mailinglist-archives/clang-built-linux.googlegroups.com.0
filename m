Return-Path: <clang-built-linux+bncBDIIZZ7A64LRBAP5WH6QKGQEGVD5M3Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53f.google.com (mail-pg1-x53f.google.com [IPv6:2607:f8b0:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id C94582AFBC0
	for <lists+clang-built-linux@lfdr.de>; Thu, 12 Nov 2020 01:14:58 +0100 (CET)
Received: by mail-pg1-x53f.google.com with SMTP id o11sf2295361pgj.21
        for <lists+clang-built-linux@lfdr.de>; Wed, 11 Nov 2020 16:14:58 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605140097; cv=pass;
        d=google.com; s=arc-20160816;
        b=PJq/MDyIjxdM1BvDsd/QR254itEYoigeDFTZHD4dnOuRu/0lxCx49Wk8MZH+XIH0c9
         MzHQGhERBJFTG1d8cL1tVI4h0bQDPTEhBNI7CtE2FGTts5E2mvWdyYcYXn5TY5kbxGyn
         eK2yZ9TPNg4KBlOlkiDIde+IYu/x4OEHhngrAZM5g8gcpKEwgdM66qXCHItu9wlBT0HN
         lW2C701+7drvqNHAN+YalXEkN196wlM57lhhT9hR7mS5oJXR1RNM2w4ibB1QDXM5LWra
         fJ6vn9nZ8xiEjUh9R5WaysEiriXImnLSoBT+lTGPqBcXpDDyYWfftmrqLu9EIkgRokKn
         aA8A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:sender:dkim-signature;
        bh=kcyC5EjGaw96RyY6Xkl647rQkMXGRUBPDcf99zJfK4I=;
        b=jHpYxeMV+wWhmzZXs+TbvVXa6uKyW7CFb0oqlCmPG4hRipJ58PpXQAZbk3w42+T12G
         OeZ/PIbu4yoqJuvqcfJi+hbgRJy8bkDF/edMB+4UoWgpXqA3tbNixGjUhk9wt+IF5NSH
         MHBZSEtpiXlBi2IqvdgI9tNCff0MdMlXJZAFPm+r5t64JXpbMEeN8EJQXXHbLOaC7DwR
         FmdHhbVxNgkpfjQ8HZsJ6XQxepqhKIdiq1WcMUvitagdUbz5IFvTwmpRiL+HmBk+Hqj5
         3XDNOH3FsfviDi3vaD5C11R1as3ZmfGje5mwJUQ747Cdo5q4GE9GpH8smV1kuxjNunqA
         dEZg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=edtKqlHv;
       spf=pass (google.com: domain of 3gh6sxwwkadmlxaabrkxrztgvddvat.rdb@flex--willmcvicker.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3gH6sXwwKADMlXaabRkXRZTgVddVaT.Rdb@flex--willmcvicker.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kcyC5EjGaw96RyY6Xkl647rQkMXGRUBPDcf99zJfK4I=;
        b=Dpr2c5UCjUocxRWhOOszL3KuMXcL0iC3LTF4lhAEvQOwFlE4IHH2L/vKWfJSPL1DpC
         37no+QyrT96uryTiGtDu/XyQsM0OiLQ3TM1VSZkA7Q3euB2vyIQdMQhX911p/2cGR/Ai
         LKEutGiUIScv6DV+SBuiSvJorpCD9gwlshtEM7TZ9G6Qzd6kWM3X67nivEtfr0P706i2
         i2GebjvXoB45BbL4VzpZeS+EbzytoOG2ym3pkF1rMaziFCeiTxYbc2kg/uj7ZrFz1bnq
         3c3Uwq0+w0hP0CteU5r19Yjlwxwt3kppPLpTuheEiGKBXAcHuAtkevQbZ0qB65TxFBrx
         z6VQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:message-id:mime-version:subject:from
         :to:cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=kcyC5EjGaw96RyY6Xkl647rQkMXGRUBPDcf99zJfK4I=;
        b=tEim9hHaqKIivOlWQpJBwaps6kmd4pHPL+zAj8qJk4w/n2xM0OnI0xsFckiWI9V8lF
         z+vtBH6usfVcqZw1vsjZKtpxGh7rBHJElj1LT8j6T/RB/JqmCpRmbkYjOEQZuMSvMWH5
         ebGpNNWcTpSwZB3SC+Fl8p92MEA5M0aWv4oE8IrkL9YfWF7k84ouYDkm4ityhZwfdhzK
         sRaAcOU/ZDhAdfmrjcUn6j9mCxUfZQpBRhreaPU7FaKt9yQk7k9pIEafm+zFFIJeck7L
         SAHahLR7s1oYXNnahdXJEBy8+ws9GZf0HvDu66kWyH4wy1XTKVuDH5WYn80HAKWzpfV5
         ekUA==
X-Gm-Message-State: AOAM533Ad5w6bVTm0DX/e13kOBihbUw38C+FXs1BLABM23qhljCCa/4S
	8/nYHA9UDbLGCir+CIy88pI=
X-Google-Smtp-Source: ABdhPJy59ISlQTiYPmiq5O+vmbd4LEb9IJcUn2TOC6ejPI1oQjCUWNmAlpX7IAYVA9Xcy03q9raj1A==
X-Received: by 2002:aa7:91d8:0:b029:18b:449c:d7dc with SMTP id z24-20020aa791d80000b029018b449cd7dcmr26031312pfa.52.1605140097436;
        Wed, 11 Nov 2020 16:14:57 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:7745:: with SMTP id s66ls363428pfc.0.gmail; Wed, 11 Nov
 2020 16:14:56 -0800 (PST)
X-Received: by 2002:aa7:870e:0:b029:18b:f46:9ca9 with SMTP id b14-20020aa7870e0000b029018b0f469ca9mr95153pfo.3.1605140096847;
        Wed, 11 Nov 2020 16:14:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605140096; cv=none;
        d=google.com; s=arc-20160816;
        b=h7O4uE43WeaYsw8kf2+gjBY5SaElu+NFVof8EMdagICq6j4qMcVWDIkw9t1P1qaun9
         WWO9pg7jG8+ACGMxBK/Fl19A+YBsfZT9v8Pzop0GceymFGdqYGXMOTHTr55qXAsGAqHj
         7WVmx0kzHdCR+P8/6HWV0emFEWRBmU9G8onI4K4WfCl5xUxbXI5Enl5Pw65VUpOwNZdM
         UuHnnAjLU68po+eQE1gy0bM6WyMigeQxdu+eruQfz3R8+nx7nTvENzFs+PNs7PLm8/6d
         lBoaX8bG+WI6AtvquEBXtm3UEZ35rnsw4dn0xz2pNx2SL3m+G421GLKFsWpMKreBDUVy
         hpzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:sender
         :dkim-signature;
        bh=Zc4FtrffhJ40dHokDMmzk3M0beSaAvptI8ZzV5EZfTw=;
        b=PDZDFWgxfJWQepB0BFKpOtD3wHih5RFPdivXkwAScXb1ZJwdeCqufe6PX+WXYi+90r
         c9q/4CzwJ6CajBZSEKY37dpq5Jysj+z238HPeC3scuqhd1+PkS7/Iaj8fepDedl9nyy7
         v8nSW7kMR2RxiUuytJRydeltZ3EAJO8QaUIdqU//y7wj4eAuNvxI21OZPfgE+gaX0yYB
         QrSZszBETJU+6jM0zk6/Zyu+o1uJUKZJgWZcXB/1NtfoR4MvpPzyv9y691mXjN/LdYuN
         zsb8qVN0Gc/qfgxat8wX1BM8EE8RWcRe3878bHO+lBnbJQQ7kv597vvNK+B9PM4Muzuq
         hO7w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=edtKqlHv;
       spf=pass (google.com: domain of 3gh6sxwwkadmlxaabrkxrztgvddvat.rdb@flex--willmcvicker.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3gH6sXwwKADMlXaabRkXRZTgVddVaT.Rdb@flex--willmcvicker.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x449.google.com (mail-pf1-x449.google.com. [2607:f8b0:4864:20::449])
        by gmr-mx.google.com with ESMTPS id x6si173448plv.3.2020.11.11.16.14.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Nov 2020 16:14:56 -0800 (PST)
Received-SPF: pass (google.com: domain of 3gh6sxwwkadmlxaabrkxrztgvddvat.rdb@flex--willmcvicker.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) client-ip=2607:f8b0:4864:20::449;
Received: by mail-pf1-x449.google.com with SMTP id l188so2443139pfl.23
        for <clang-built-linux@googlegroups.com>; Wed, 11 Nov 2020 16:14:56 -0800 (PST)
Sender: "willmcvicker via sendgmr" <willmcvicker@willmcvicker.c.googlers.com>
X-Received: from willmcvicker.c.googlers.com ([fda3:e722:ac3:10:24:72f4:c0a8:2dd0])
 (user=willmcvicker job=sendgmr) by 2002:aa7:8055:0:b029:15f:cbe9:1aad with
 SMTP id y21-20020aa780550000b029015fcbe91aadmr25173195pfm.71.1605140096514;
 Wed, 11 Nov 2020 16:14:56 -0800 (PST)
Date: Thu, 12 Nov 2020 00:14:22 +0000
Message-Id: <20201112001422.340449-1-willmcvicker@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.29.2.299.gdc1121823c-goog
Subject: [PATCH] arm64: Fix off-by-one vdso trampoline return value
From: "'Will McVicker' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Cc: Nathan Chancellor <natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	Vincenzo Frascino <vincenzo.frascino@arm.com>, Andrei Vagin <avagin@gmail.com>, 
	Dmitry Safonov <0x7f454c46@gmail.com>, Thomas Gleixner <tglx@linutronix.de>, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com, kernel-team@android.com, 
	Will McVicker <willmcvicker@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: willmcvicker@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=edtKqlHv;       spf=pass
 (google.com: domain of 3gh6sxwwkadmlxaabrkxrztgvddvat.rdb@flex--willmcvicker.bounces.google.com
 designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3gH6sXwwKADMlXaabRkXRZTgVddVaT.Rdb@flex--willmcvicker.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Will McVicker <willmcvicker@google.com>
Reply-To: Will McVicker <willmcvicker@google.com>
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

Depending on your host nm version, the generated header
`include/generated/vdso32-offsets.h` may have the bottom bit set for the
thumb vdso offset addresses (as observed when using llvm-nm). This
results in an additional +1 for thumb vdso trampoline return values
since compat_setup_return() already includes `vdso_trampoline + thumb`.
As a result, I see a SIGBUS error when running the LTP test
syscalls.rt_sigaction01. To fix this, let's clear the bottom bit of the
vdso_offset in the VDSO_SYMBOL macro.

Test: LTP test syscalls.rt_sigaction01
Fixes: f01703b3d2e6 ("arm64: compat: Get sigreturn trampolines from vDSO")
Signed-off-by: Will McVicker <willmcvicker@google.com>
---
 arch/arm64/include/asm/vdso.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/include/asm/vdso.h b/arch/arm64/include/asm/vdso.h
index f99dcb94b438..a7384379e8e1 100644
--- a/arch/arm64/include/asm/vdso.h
+++ b/arch/arm64/include/asm/vdso.h
@@ -23,7 +23,7 @@
 
 #define VDSO_SYMBOL(base, name)						   \
 ({									   \
-	(void *)(vdso_offset_##name - VDSO_LBASE + (unsigned long)(base)); \
+	(void *)((vdso_offset_##name & ~1UL) - VDSO_LBASE + (unsigned long)(base)); \
 })
 
 #endif /* !__ASSEMBLY__ */
-- 
2.29.2.299.gdc1121823c-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201112001422.340449-1-willmcvicker%40google.com.
