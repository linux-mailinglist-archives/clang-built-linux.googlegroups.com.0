Return-Path: <clang-built-linux+bncBDYJPJO25UGBBZFM7XUQKGQE733R6XQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3f.google.com (mail-io1-xd3f.google.com [IPv6:2607:f8b0:4864:20::d3f])
	by mail.lfdr.de (Postfix) with ESMTPS id B02EB799E4
	for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jul 2019 22:26:13 +0200 (CEST)
Received: by mail-io1-xd3f.google.com with SMTP id r27sf68764693iob.14
        for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jul 2019 13:26:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564431972; cv=pass;
        d=google.com; s=arc-20160816;
        b=Dx4QqgpuU6HJplJ6gjdoHH9P0O4k+HV/sFlEdInxnrRymbqUKSGhT+vb/7zo51NlLQ
         Yav6I4Y+khe21S9DGL15UaRRKao/qg/6c03UUWJNdF1dRB8iEfo+XndCCiYkAIJROLGJ
         cdzDgNPcHiDIrQ3k0SBVmyDMggvyRjtXpXW2zQ2Sr69Vh2BDhJM/UyzjzI49pUak8S5c
         XFPMKAa4ASA0uXpK3OU+bC8t/2d3xzI4qjssvyOSleRiipMZIURUVf0P/To9iX/qkx9l
         PUwBCRwUlIsdhhkUOyFPohsDf+TrhGEaz/GJmTeLEyByvb2FEGH/zubI6YDETpQjvI0S
         neoA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=WyMn6x6WMEJbuDrnIQ9gR7MSJw/OEMRWv/UBqO5jcFg=;
        b=LAKNA62qrfCW+mC+ZteYW1UQ6CgvL+pT5RPOsH6GYtCxp6ayIdi4m+JZh4NlAb9iML
         7oL78jpWmeCU6/fZAO5g24Zu66DxWVpBzD/jpqYCIMuey2MxueLX3U4a7FfpfBcYiMVG
         ZFs+IJAYKYeTC6Z8KN7/ydI4TNrLn1p99XP3NQyvpGZJAAaXsyGO22B0NmlfebeY8v3c
         3RufZ/1FrMqUJlib9NNkvlm0vfIjY/D/U3+CDGAPVCdwUWwJ1DuapMeI4A1Yk2UrF1Au
         PZqzJyT9jWoQOWyh6yhMSYnZXFEKxWfZ0XRe2JwEGllgv3wh/8P17wh5IWGzlyeTdrP2
         qv6g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=NrH9CP3j;
       spf=pass (google.com: domain of 3y1y_xqwkapwrhiweyprmivwksskpi.gsq@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3Y1Y_XQwKAPwrhiweyprmivwksskpi.gsq@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=WyMn6x6WMEJbuDrnIQ9gR7MSJw/OEMRWv/UBqO5jcFg=;
        b=Zk60YVjfp/wlzDwMrYLBzcoye/uLlLZNVcI540KqIOUtu0Yw2gpPlMR61WCulQhP4q
         2H6+ngG76LDCKfxgfsXp6rTkkkGgL7LBmUmzW4otqanbbzT8D04ql0lCEw8BkxdNAoex
         4HLtR5xpVZMZ1YRHMj5200DstnHKFCK0T4xRY3lKFH2Zb5ecZnwZymekUYLhkduyMKFG
         2D8YJXJS5s45uWekNq73c0byBRImU7vaoBjThc3l5n7CKq3XFJcTkv2Q3nlTpFnSkgzI
         +B+yV+MX7pOTcxnyq12orwLmzi8HI7geHxUvt2FYqSfDvB5fuKc0JTIuTzoOAD0+I2/Z
         0bBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=WyMn6x6WMEJbuDrnIQ9gR7MSJw/OEMRWv/UBqO5jcFg=;
        b=h83ZgT0LR3L1TGnQF0u37v1AM5CxxN1Fg7LjDCxpB0/eCEo8JWYl8SEIraIjNFWH+l
         3ElsbHBSHdEsjP4Nkjt+QgMFhkbWKu7pIH1rBOrHW9f2jYmMvpiX/I8Laj1yQAl8ur2P
         lp2YlRg4OA0gelOTidEjWjIvHXv2H04+LyEBxelFI7e8pU7eMRWpNcg5jnhO17+AKt/K
         RC6TdUKUr88NiQ7NmrN3YDsY+7CTfd5qpcHyD0IVDi3vqHu5nn8yjLy6Tk+PVDVEw2qu
         vIZLY/RDDdKoIzvgkiZXDg8RXHG1raalxHmUPcWdaKKaGA1+YW6R3rqi6RqU9JgjJaXC
         8oPg==
X-Gm-Message-State: APjAAAWZVPNCptJWrM5JV1hJsRQzIcLbybPYEdkgy+ww16y75bXtBtzM
	SM/j3p9E2A1M88tiMvK6TEk=
X-Google-Smtp-Source: APXvYqxBpzD3+IZttm3kwmDcMQq7GqLFAWIfl5AO1hu95tQUE+EHw8ilTfB85dWCB1BaIw7R5Bs6Bw==
X-Received: by 2002:a5d:8252:: with SMTP id n18mr35660970ioo.230.1564431972438;
        Mon, 29 Jul 2019 13:26:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:81:: with SMTP id v1ls8411579jao.14.gmail; Mon, 29
 Jul 2019 13:26:12 -0700 (PDT)
X-Received: by 2002:a02:7303:: with SMTP id y3mr6170706jab.97.1564431972127;
        Mon, 29 Jul 2019 13:26:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564431972; cv=none;
        d=google.com; s=arc-20160816;
        b=BjYVeOKAEn+Qq/G/35Ozz4VZyB2lKfbodDuHAq+KcoNo2jdX07ooav+dqYjXirMYjk
         vmRibUB1xZzgnjNYvTzdzR/lmt8a8atPLAHSoKI+hFgEpX5Qz17orDEzeFJfj5ZGHRjR
         MkceZK8yhpAZ3/8RGuvuO25thQ8Dvkl0PH6lpq2/Tm/n9CsgNIHkZ0aAn6urwGq8bbL1
         px5XIC329dQtQ9AUW4rLUHXELw26yP1w3n/XR0A07MVnTf+LOYsztkuc/ZaMgKgFRjmR
         8Qk06OMqNtNSNVU/FVJTBaqavml9U2UpQKscAaM8N396zKmVUjbxnFPTX8xxxNAdIWR6
         M1Xg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=InkWYbyakoin4kW7joWmSnOT6nnJvOIEoZKfiSX6FXM=;
        b=S6Heu6f3wtzqQOIcNUO02LPNKsjbk5n4IlBC+I+xbN42UH3E0n9VeAux3KquwtCj0c
         DIHNO3Fq66Y5BrMxDuRo4zbgocvj/cyuhpfQ9Df+a4wM6gpobDk/nbQFiarpARqMGyTZ
         eJqV3ksw136f7rLKFz08nGrCAi7sZx5UaiHMmvxAYyEVrj3wDZLv7dVJxXJO1bjSUacJ
         Zy96t3cwLwBMZAqxSO+wSWv2sbhyiNBnotHVrOIKLSUf2A51QKUTnEGPNYIkQzY+aLT1
         D+BudGoeBRJu8jNsPeyrbOVE6hp6QoPjxNmjhMMzI4TYOWhk4ogKWXWB3vaADxzR9Cr2
         fYYg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=NrH9CP3j;
       spf=pass (google.com: domain of 3y1y_xqwkapwrhiweyprmivwksskpi.gsq@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3Y1Y_XQwKAPwrhiweyprmivwksskpi.gsq@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x44a.google.com (mail-pf1-x44a.google.com. [2607:f8b0:4864:20::44a])
        by gmr-mx.google.com with ESMTPS id h25si2263899iol.2.2019.07.29.13.26.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Mon, 29 Jul 2019 13:26:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3y1y_xqwkapwrhiweyprmivwksskpi.gsq@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) client-ip=2607:f8b0:4864:20::44a;
Received: by mail-pf1-x44a.google.com with SMTP id q14so39230153pff.8
        for <clang-built-linux@googlegroups.com>; Mon, 29 Jul 2019 13:26:12 -0700 (PDT)
X-Received: by 2002:a63:5b52:: with SMTP id l18mr106138942pgm.21.1564431971070;
 Mon, 29 Jul 2019 13:26:11 -0700 (PDT)
Date: Mon, 29 Jul 2019 13:25:41 -0700
Message-Id: <20190729202542.205309-1-ndesaulniers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.22.0.709.g102302147b-goog
Subject: [PATCH] powerpc: workaround clang codegen bug in dcbz
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: mpe@ellerman.id.au
Cc: christophe.leroy@c-s.fr, segher@kernel.crashing.org, arnd@arndb.de, 
	Nick Desaulniers <ndesaulniers@google.com>, Nathan Chancellor <natechancellor@gmail.com>, 
	kbuild test robot <lkp@intel.com>, Benjamin Herrenschmidt <benh@kernel.crashing.org>, 
	Paul Mackerras <paulus@samba.org>, linuxppc-dev@lists.ozlabs.org, 
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=NrH9CP3j;       spf=pass
 (google.com: domain of 3y1y_xqwkapwrhiweyprmivwksskpi.gsq@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3Y1Y_XQwKAPwrhiweyprmivwksskpi.gsq@flex--ndesaulniers.bounces.google.com;
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

Commit 6c5875843b87 ("powerpc: slightly improve cache helpers") exposed
what looks like a codegen bug in Clang's handling of `%y` output
template with `Z` constraint. This is resulting in panics during boot
for 32b powerpc builds w/ Clang, as reported by our CI.

Add back the original code that worked behind a preprocessor check for
__clang__ until we can fix LLVM.

Further, it seems that clang allnoconfig builds are unhappy with `Z`, as
reported by 0day bot. This is likely because Clang warns about inline
asm constraints when the constraint requires inlining to be semantically
valid.

Link: https://bugs.llvm.org/show_bug.cgi?id=42762
Link: https://github.com/ClangBuiltLinux/linux/issues/593
Link: https://lore.kernel.org/lkml/20190721075846.GA97701@archlinux-threadripper/
Debugged-by: Nathan Chancellor <natechancellor@gmail.com>
Reported-by: Nathan Chancellor <natechancellor@gmail.com>
Reported-by: kbuild test robot <lkp@intel.com>
Suggested-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
Alternatively, we could just revert 6c5875843b87. It seems that GCC
generates the same code for these functions for out of line versions.
But I'm not sure how the inlined code generated would be affected.

 arch/powerpc/include/asm/cache.h | 25 +++++++++++++++++++++++++
 1 file changed, 25 insertions(+)

diff --git a/arch/powerpc/include/asm/cache.h b/arch/powerpc/include/asm/cache.h
index b3388d95f451..72983da94dce 100644
--- a/arch/powerpc/include/asm/cache.h
+++ b/arch/powerpc/include/asm/cache.h
@@ -105,6 +105,30 @@ extern void _set_L3CR(unsigned long);
 #define _set_L3CR(val)	do { } while(0)
 #endif
 
+/*
+ * Workaround for https://bugs.llvm.org/show_bug.cgi?id=42762.
+ */
+#ifdef __clang__
+static inline void dcbz(void *addr)
+{
+	__asm__ __volatile__ ("dcbz 0, %0" : : "r"(addr) : "memory");
+}
+
+static inline void dcbi(void *addr)
+{
+	__asm__ __volatile__ ("dcbi 0, %0" : : "r"(addr) : "memory");
+}
+
+static inline void dcbf(void *addr)
+{
+	__asm__ __volatile__ ("dcbf 0, %0" : : "r"(addr) : "memory");
+}
+
+static inline void dcbst(void *addr)
+{
+	__asm__ __volatile__ ("dcbst 0, %0" : : "r"(addr) : "memory");
+}
+#else
 static inline void dcbz(void *addr)
 {
 	__asm__ __volatile__ ("dcbz %y0" : : "Z"(*(u8 *)addr) : "memory");
@@ -124,6 +148,7 @@ static inline void dcbst(void *addr)
 {
 	__asm__ __volatile__ ("dcbst %y0" : : "Z"(*(u8 *)addr) : "memory");
 }
+#endif /* __clang__ */
 #endif /* !__ASSEMBLY__ */
 #endif /* __KERNEL__ */
 #endif /* _ASM_POWERPC_CACHE_H */
-- 
2.22.0.709.g102302147b-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190729202542.205309-1-ndesaulniers%40google.com.
