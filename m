Return-Path: <clang-built-linux+bncBDYJPJO25UGBBAGMY32QKGQE33SLI3Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3c.google.com (mail-vs1-xe3c.google.com [IPv6:2607:f8b0:4864:20::e3c])
	by mail.lfdr.de (Postfix) with ESMTPS id CBCB71C5F21
	for <lists+clang-built-linux@lfdr.de>; Tue,  5 May 2020 19:44:33 +0200 (CEST)
Received: by mail-vs1-xe3c.google.com with SMTP id a4sf754361vsp.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 May 2020 10:44:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588700673; cv=pass;
        d=google.com; s=arc-20160816;
        b=jQ9lHIFdaIAh2iUICRQRg2dYJpYaoj9LBlOj97Kv9QucehTkr0Dy+rta04WLYN5l1h
         TWbKat3qAR6XimMmQVWRfPPpv5knWu3kkPySi+Jlq2wC+RNQ4baYFf1NHQwyU0xoSNEk
         hoVWeM7jk76TnQbGKJOtYEXMjXfJYorC7dlynyt/HsZdS9LYY0rc4XmmhvOPlelar0Nl
         dhy4WxEVPd4RN+Fw4spZhNPOfQT0ZKAcIKWsfEylIIGrHRI+XVtqiHCtSa6S/OUpOhrF
         0a5YKNvrfNBjXg773ewfhuZMl/Fpf8TiuXjPWTdqp339lOWyq4HCitFHP4gYAUX1upu5
         5JeA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=Kh0SR5bpHxuQZx13NuL3wKDifedLpmCssi/PkdsHC3s=;
        b=QKdLfoNj/Av88RHZ8lPS9W9PPaJrl99pmuE8Ws6lkbeh/iQpaJZPxAmaKiUMTKSjbi
         1JeYvm7pZjK7RARRPPczBFmtQ+dP0LnkCJ40grYj7xJqkz7nv0Whq34lDQjvtYagUSL3
         4HojRMOucwc8B/Fo2R4oBq7DmKnPt58Nqng9sM+1HviTtliAfXQWiBo8CLJECVTeYJd2
         8+K0WMCQeQLu3XDCiZIwJvya5cZEjaKGo1hGjORcfYnP9I5jDM6CgROvGxmPvnaqR2uL
         xLkORkwkvGosBHw/RP+bRwjFsW5iPAwQj+mNYWn2+tWB3Sb1LPEjNNJ4RXKbl9ihy6tw
         mHpw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=lneA14fz;
       spf=pass (google.com: domain of 3akaxxgwkaa82st7p902xt67v33v0t.r31@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3AKaxXgwKAA82st7p902xt67v33v0t.r31@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=Kh0SR5bpHxuQZx13NuL3wKDifedLpmCssi/PkdsHC3s=;
        b=dmqfBlRbihnDrnJpAxeD/nLF0/RY7umoA9jVLivjkqm4OrwXN1wxU2sI/c71jnwE7b
         f2/gRoNpaQ86+3usJs6kKp/Vwmc2Xn0dtkWys1Oc1344xE9pF+LHPqi1MzMDJPHdPF4j
         2CSiMshtI9SR4f9BG9WQcITzy3GxqxITZZRAFPG6I+XuoaU8EcT10Ngq3egrbwiGqCXf
         pcSeuXIW3b20Hm0uJsOmQ4SKjT4Ip4iyr/62eayiK6f1WtCioROIEDTp1LVJkdbEDXLV
         EqsKFNzoyyn2JW0P39MJnoLE5bwZGlAs2GHlNFu3kbtRxcepgEwcn/6AoizbQpgdQVVe
         YzZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Kh0SR5bpHxuQZx13NuL3wKDifedLpmCssi/PkdsHC3s=;
        b=o8KWKs2SN5XBTXloBfV7c3SFGITtIs9ApsbyNlV2IZvS36ZjuUQRA2Ch3ybAlTGiCt
         T+F1r+mObVhvZKCQ8I3OlPYkSWaAvzigFuyCcptT9UBJYJA17g3yDMpIzb6+4UR91nOe
         JLc2o69FPWYnpJnx8Qq2uZ3ASkY1PKXjwdIBiRiSOMMsiEOYLlDH+ss3XGMYFZUoNQ8X
         UoWQRQ3iuqzPx54FSAYSOWOHaTHsvpM/DmycqD4gniX6TvjxD5dMPDdC78+8GQzaJUwH
         P31Foy4HAB+t24ST7od7bSta+CXjmjxEFy5gvu/iWiQEo/ej4QhW3otku+BMm1a6kX8D
         9WiQ==
X-Gm-Message-State: AGi0PubHvpcErKtoOPN82OUTxy9wXv3edv1DhWOc39qdOxRWi2f+0B4z
	kMb5bLi5X0p9OxAL4hcKWJA=
X-Google-Smtp-Source: APiQypLPzQog2VZOAJ3RvUdW6xZVRMSY1j78mvaeDFaiOyDTIJpuB7wiLx3QVSbWnijDa5b+7RQlwA==
X-Received: by 2002:ab0:725:: with SMTP id h34mr3735985uah.52.1588700672823;
        Tue, 05 May 2020 10:44:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:2091:: with SMTP id h17ls503931vsr.10.gmail; Tue,
 05 May 2020 10:44:32 -0700 (PDT)
X-Received: by 2002:a05:6102:3d2:: with SMTP id n18mr4169472vsq.157.1588700672499;
        Tue, 05 May 2020 10:44:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588700672; cv=none;
        d=google.com; s=arc-20160816;
        b=BWpfVLMsEl2FeD0kN0oNLyfxQ2P1g/QnMNrTpc/C75S4rXeIGapxbYQNtX6+0jPr9H
         jmI+m+kdhIOpJ2GbWT6ItDv04f85dMTxGqPdl2FBCDSxO8qFOee+qEOcoP3SJBamnFv1
         +C4VoxVnBlsk/rT/fwH1p87rxHDSg3Wx1ba5Ac9qPcFO9KEaYcQ4u2fIHULiMnl6huvs
         yp+84+OuhEZygYVQvTMTuOZDf/+dN95eqFW2ib1Gf0OjMpfSficDHujp0UVmFfGjMMhw
         k8PSmelwpp+SijQ07eF7UCax0t8cH+Rriw0MIPTbwcpVAJJtQizh6V3qHFaz6MN7FTDn
         fntg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=Xw/XeQONehgAZgmp50DsvTIx8rMMLD3xww9tGSOkTsA=;
        b=y66FQGhTnZ/8wqcaJhnDJwarVUi9wYgppq72/l6ODApNKC4WF7ZKfVnOKR6T+01fWQ
         rEuBLks9wdMNXKQBC5MwiuzWf+vOYF8ojAZG+iKblvRHhk4Kjtq/TpA5sbmRUow1PtTU
         G/ZiFHazQo9TxontWD1XoS351qHg+3f1I1TJWPF658jXbGRFxVMadz/gn1gWAMMElrUD
         iyodK7LMlC0OrCa2Ykvta0I2oms85rRxV+MYQaj7SHc0xWnV4lj6w5pr9hlqAq6MnvOz
         aYv1joie7r/S3Jmh8WwWByUboAurcxjVyW+EDfQd31G1AV745PdPuQL5q0IRQ3LXrFDp
         q4VQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=lneA14fz;
       spf=pass (google.com: domain of 3akaxxgwkaa82st7p902xt67v33v0t.r31@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3AKaxXgwKAA82st7p902xt67v33v0t.r31@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id y77si236962vky.0.2020.05.05.10.44.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 May 2020 10:44:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3akaxxgwkaa82st7p902xt67v33v0t.r31@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id 186so3322440ybq.1
        for <clang-built-linux@googlegroups.com>; Tue, 05 May 2020 10:44:32 -0700 (PDT)
X-Received: by 2002:a25:9a47:: with SMTP id r7mr6630305ybo.7.1588700672013;
 Tue, 05 May 2020 10:44:32 -0700 (PDT)
Date: Tue,  5 May 2020 10:44:22 -0700
Message-Id: <20200505174423.199985-1-ndesaulniers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.26.2.526.g744177e7f7-goog
Subject: [PATCH] x86: bitops: fix build regression
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>
Cc: Sedat Dilek <sedat.dilek@gmail.com>, stable@vger.kernel.org, 
	Jesse Brandeburg <jesse.brandeburg@intel.com>, "kernelci . org bot" <bot@kernelci.org>, 
	Andy Shevchenko <andriy.shevchenko@intel.com>, Ilie Halip <ilie.halip@gmail.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, x86@kernel.org, "H. Peter Anvin" <hpa@zytor.com>, 
	Marco Elver <elver@google.com>, "Paul E. McKenney" <paulmck@kernel.org>, 
	"Peter Zijlstra (Intel)" <peterz@infradead.org>, Daniel Axtens <dja@axtens.net>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, 
	Luc Van Oostenryck <luc.vanoostenryck@gmail.com>, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=lneA14fz;       spf=pass
 (google.com: domain of 3akaxxgwkaa82st7p902xt67v33v0t.r31@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3AKaxXgwKAA82st7p902xt67v33v0t.r31@flex--ndesaulniers.bounces.google.com;
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

From: Sedat Dilek <sedat.dilek@gmail.com>

It turns out that if your config tickles __builtin_constant_p via
differences in choices to inline or not, this now produces invalid
assembly:

$ cat foo.c
long a(long b, long c) {
  asm("orb\t%1, %0" : "+q"(c): "r"(b));
  return c;
}
$ gcc foo.c
foo.c: Assembler messages:
foo.c:2: Error: `%rax' not allowed with `orb'

The "q" constraint only has meanting on -m32 otherwise is treated as
"r".

This is easily reproducible via Clang+CONFIG_STAGING=y+CONFIG_VT6656=m,
or Clang+allyesconfig.

Keep the masking operation to appease sparse (`make C=1`), add back the
cast in order to properly select the proper 8b register alias.

 [Nick: reworded]

Cc: stable@vger.kernel.org
Cc: Jesse Brandeburg <jesse.brandeburg@intel.com>
Link: https://github.com/ClangBuiltLinux/linux/issues/961
Link: https://lore.kernel.org/lkml/20200504193524.GA221287@google.com/
Fixes: 1651e700664b4 ("x86: Fix bitops.h warning with a moved cast")
Reported-by: Sedat Dilek <sedat.dilek@gmail.com>
Reported-by: kernelci.org bot <bot@kernelci.org>
Suggested-by: Andy Shevchenko <andriy.shevchenko@intel.com>
Suggested-by: Ilie Halip <ilie.halip@gmail.com>
Tested-by: Sedat Dilek <sedat.dilek@gmail.com>
Signed-off-by: Sedat Dilek <sedat.dilek@gmail.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 arch/x86/include/asm/bitops.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/x86/include/asm/bitops.h b/arch/x86/include/asm/bitops.h
index b392571c1f1d..139122e5b25b 100644
--- a/arch/x86/include/asm/bitops.h
+++ b/arch/x86/include/asm/bitops.h
@@ -54,7 +54,7 @@ arch_set_bit(long nr, volatile unsigned long *addr)
 	if (__builtin_constant_p(nr)) {
 		asm volatile(LOCK_PREFIX "orb %1,%0"
 			: CONST_MASK_ADDR(nr, addr)
-			: "iq" (CONST_MASK(nr) & 0xff)
+			: "iq" ((u8)(CONST_MASK(nr) & 0xff))
 			: "memory");
 	} else {
 		asm volatile(LOCK_PREFIX __ASM_SIZE(bts) " %1,%0"
@@ -74,7 +74,7 @@ arch_clear_bit(long nr, volatile unsigned long *addr)
 	if (__builtin_constant_p(nr)) {
 		asm volatile(LOCK_PREFIX "andb %1,%0"
 			: CONST_MASK_ADDR(nr, addr)
-			: "iq" (CONST_MASK(nr) ^ 0xff));
+			: "iq" ((u8)(CONST_MASK(nr) ^ 0xff)));
 	} else {
 		asm volatile(LOCK_PREFIX __ASM_SIZE(btr) " %1,%0"
 			: : RLONG_ADDR(addr), "Ir" (nr) : "memory");
-- 
2.26.2.526.g744177e7f7-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200505174423.199985-1-ndesaulniers%40google.com.
