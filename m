Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBAEF6LVAKGQEVTXNQ4Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x240.google.com (mail-lj1-x240.google.com [IPv6:2a00:1450:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id F246B96DCB
	for <lists+clang-built-linux@lfdr.de>; Wed, 21 Aug 2019 01:30:08 +0200 (CEST)
Received: by mail-lj1-x240.google.com with SMTP id y8sf44478ljc.15
        for <lists+clang-built-linux@lfdr.de>; Tue, 20 Aug 2019 16:30:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566343808; cv=pass;
        d=google.com; s=arc-20160816;
        b=HnZKafA/PGCAAeGxt16/0mfk4nGleqp5R7oO2DoyVLNo/QUx91LsFyeDzX2V6ZGHHE
         ZbE/IzqUeag3SSCxi9oSG38C9Zn9EKDGc+sKB3zeBrQkzY7pHUM91bTmMSWj3Ux05N/I
         xmL637QSmg43XOo2LRezcmT9gRwW7NmUaDxpXr2cdSz+ELkhwFmNLql7ZQt6K2HHSS3c
         /nSMHS9J5FE+830prFk4IlzVHZ3zCDsYJRajOFDQGUIPRwg7xq7I0lTEyeNOZnXz364A
         139t0W6Nk90BDBoX5xGswaZTsAQifExn0GLxfAx2FNihVI4s+1mwu1sd8WLXm3DfPHi0
         JBFQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature
         :dkim-signature;
        bh=rKQBztIVKeb7Fwgw3lmfrxRp9/XRRuVN+1N0nF3nYVY=;
        b=WjGQy+UJo6g99lf2NPAwtioVa4kIoO37YMAgfYuH5SI3fQqsdKABZWZphIpg2wQu/m
         XPZwDOao2EKfArcd7TnQBFQ1JFsEEYdtBhjpLe5l6Z5ZUl4auFgAxpcTeM+COm+zRptR
         /ADSQRDWtwPefCmp/mGPtlf0Sw1F5F9N7jyefIhJgy9e0c9y7ndsFZUPWRL3Z0obLiJ9
         fA5G+85KXjxX8g2kYJhoUKPoWNzzafTwdKPkPX7m1LmKRxsthi35V9hcSjJIAO9fE0Jj
         tiVH3PnZbjo82frI/m9mPGaWGl5BiFFQgRZsvWU4SYN5OhTbGwoJD6nYv4OolFAj8LM9
         eQVg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qL9WYEAm;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rKQBztIVKeb7Fwgw3lmfrxRp9/XRRuVN+1N0nF3nYVY=;
        b=AdkzlomhtESyF1rHsGhwcwINHv/MG8Lu0X5PpJ1jJsRV3wZERRzGnEhyTDMiEoHrA+
         v41vPDjTCBfprwyZ3TzH+17UYNF+kroaduI2VmRv1Ygpd1x0zsrRHtbQwJCC075OkPiH
         eqIrUJIJ22VQf1HgLdeuuFoqkhIDZkOwJaaI0gyNPxyFFLEc6keya8ntP/rTmLVEADYQ
         QKWmYqsM1FzLgeqSQMj2WFzwsKehHkxIiAcVkvTMciPvrdblL5j0dFlyMfOrBGMwb56Z
         ivPWkW/zb99wamIuMysK3VSYQedvyplFJswDtKY7WlP2Hm/Hs+9KygkXodmqIEDi4Doz
         PCeA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rKQBztIVKeb7Fwgw3lmfrxRp9/XRRuVN+1N0nF3nYVY=;
        b=U0FkpfzqTvzpA439YMF9erdNx4/PzCe1jC1PNrE9xOZuyOIdcCKZDBOWvSXZjFi3WS
         VZtTqUZMjZD+V/fvTG543CG3cCTUm5KGtC0kuZhyimGiFFUEr3YtKBvFOYM44imx/uwr
         cmRKN34W7a3tFqiJebLQLQTnJQGG/qzfzMmHmlxmWszadikREItnpeMc1gTviNXKgVRo
         DevlFjU1FmY4ekwUfnVqZbB3nJbqrGzdx1mlYWapYsfu0xcQlGelv/FVAhA/Gu9h4Fs7
         wOkyKc1siM7SdLICysdSfYpBqnfxVJSK09RWQfYS//UMKHpTa75Gv8Zy8/+nOuzY0/kg
         AwCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rKQBztIVKeb7Fwgw3lmfrxRp9/XRRuVN+1N0nF3nYVY=;
        b=n1pXT+TZsmMWDrd8kdD7TXnmyHUxBqcz5TM8UgmZHtdymgnwYIJ+qEQcrOL74Ic6U5
         eJ67Z323XY9VsFG/pptlDi+UZii6jIQzxYcllFSpn7Pa5WW2fBtK0oc/whgwtCfusHKs
         Hfq/akvTy7EkjgcXatANvK4CL//xjKQz4FRuhe6i0skqgSKrmdEBht/ZJIQ6nUs6BzyS
         eQ/lztKEU1FxfqnOLYSSNMCGEtooZyjxhdRFeNe8sWO5xJkr8XLjQl61I9c4QlS94dSf
         RyctxKOuabhDd/kaSF0RTyPpbeOKh2aoBn7rUBJwO8N8zRjKXtk2YTKo+1ybFAN0X5U2
         5COg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAU6tCMOiC44KGR+kZqlN8fyukzZWpbn5EI7rrzhA4nlSRg+rner
	P0YkNGn67iLSe9AwT4XoOd0=
X-Google-Smtp-Source: APXvYqzBP83QSUG1cpSOglRF+A0xiQFaNUgUvuCMCmDAVjO6xkEAHIX5t91nitsnYRvbAM7Y3wdD+A==
X-Received: by 2002:a19:5f1c:: with SMTP id t28mr17125444lfb.34.1566343808584;
        Tue, 20 Aug 2019 16:30:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9245:: with SMTP id v5ls52367ljg.3.gmail; Tue, 20 Aug
 2019 16:30:08 -0700 (PDT)
X-Received: by 2002:a2e:b0f6:: with SMTP id h22mr4164876ljl.63.1566343808121;
        Tue, 20 Aug 2019 16:30:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566343808; cv=none;
        d=google.com; s=arc-20160816;
        b=pN7IviLbG9pAdT+igz5+Qs3KLR6/x08I1H4cCnkw1/mhx/I2NluH4cPH1BRULh7EQW
         QALIqbjnwO5pGmBjekeEUTjw3teRj1O8gB5O+JIpfUeIO7qUHlM+3NjuGVxBetUHJgHn
         dhlpUzBIffDdp+bumFWqElpX3kJVKpel1QXfuI4J5qQo/bqP2NTZQijE2zYvnKG9ANXu
         aWWlHZqQOSCyl+o3qzHuckCMAQGJi/iLtyKSDLCCYVlpsP4d6dtqCIV+IS4Kxj0fSsjf
         dU1z0EP9lhhO/jj2/F2iS4vycMDEM5VXpPyqm+WpZ/yhVUMOYtocDs4ySK8gO0ngGMA9
         s/MA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=3E0fEKA3bxpvm4KYV/1/j8Enrv4yxANJ69KlmVGSvq8=;
        b=Ewa4f61Bi6bT/AdtXYP2f6TxniJly+beSK8J/l9aIxYHnrHVseMmjxuGFsew2U7Lit
         /m4n9DFHKrhVq4hI3Xg364I1xXECAonr70WvxapcbVNt+GKFmWmNnds6wxwv1yiw+cu8
         RhvgUBajgil49KtFKezDgQqD5STEygHFjHek+hc6rlX9JlvsaJXcjtSnM7fFkdLxn3YV
         UAI1LsRDWaedusYnjWEgQJsekqPo7xWXM+FqOjYkwTYs248XmYkWY3+Q46sFrCTWi5lk
         ljr+fa289et/io3ZPQ+l4keh2y7DDdisOrLKyiQV8aJgGrv4Sc66YuqpRSXvii8qjcMz
         C0uA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qL9WYEAm;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com. [2a00:1450:4864:20::342])
        by gmr-mx.google.com with ESMTPS id c12si627960lji.0.2019.08.20.16.30.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Aug 2019 16:30:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) client-ip=2a00:1450:4864:20::342;
Received: by mail-wm1-x342.google.com with SMTP id f72so248406wmf.5
        for <clang-built-linux@googlegroups.com>; Tue, 20 Aug 2019 16:30:08 -0700 (PDT)
X-Received: by 2002:a1c:790d:: with SMTP id l13mr2185240wme.49.1566343807239;
        Tue, 20 Aug 2019 16:30:07 -0700 (PDT)
Received: from localhost.localdomain ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id u7sm15703259wrp.96.2019.08.20.16.30.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Aug 2019 16:30:06 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Paul Mackerras <paulus@samba.org>,
	Michael Ellerman <mpe@ellerman.id.au>
Cc: linuxppc-dev@lists.ozlabs.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>,
	Daniel Axtens <dja@axtens.net>
Subject: [PATCH v2] powerpc: Don't add -mabi= flags when building with Clang
Date: Tue, 20 Aug 2019 16:29:22 -0700
Message-Id: <20190820232921.102673-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190818191321.58185-1-natechancellor@gmail.com>
References: <20190818191321.58185-1-natechancellor@gmail.com>
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=qL9WYEAm;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Content-Type: text/plain; charset="UTF-8"
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

When building pseries_defconfig, building vdso32 errors out:

  error: unknown target ABI 'elfv1'

This happens because -m32 in clang changes the target to 32-bit,
which does not allow the ABI to be changed, as the setABI virtual
function is not overridden:

https://github.com/llvm/llvm-project/blob/llvmorg-9.0.0-rc2/clang/include/clang/Basic/TargetInfo.h#L1073-L1078

https://github.com/llvm/llvm-project/blob/llvmorg-9.0.0-rc2/clang/lib/Basic/Targets/PPC.h#L327-L365

Commit 4dc831aa8813 ("powerpc: Fix compiling a BE kernel with a
powerpc64le toolchain") added these flags to fix building big endian
kernels with a little endian GCC.

Clang doesn't need -mabi because the target triple controls the default
value. -mlittle-endian and -mbig-endian manipulate the triple into
either powerpc64-* or powerpc64le-*, which properly sets the default
ABI:

https://github.com/llvm/llvm-project/blob/llvmorg-9.0.0-rc2/clang/lib/Driver/Driver.cpp#L450-L463

https://github.com/llvm/llvm-project/blob/llvmorg-9.0.0-rc2/llvm/lib/Support/Triple.cpp#L1432-L1516

https://github.com/llvm/llvm-project/blob/llvmorg-9.0.0-rc2/clang/lib/Basic/Targets/PPC.h#L377-L383

Adding a debug print out in the PPC64TargetInfo constructor after line
383 above shows this:

$ echo | ./clang -E --target=powerpc64-linux -mbig-endian -o /dev/null -
Default ABI: elfv1

$ echo | ./clang -E --target=powerpc64-linux -mlittle-endian -o /dev/null -
Default ABI: elfv2

$ echo | ./clang -E --target=powerpc64le-linux -mbig-endian -o /dev/null -
Default ABI: elfv1

$ echo | ./clang -E --target=powerpc64le-linux -mlittle-endian -o /dev/null -
Default ABI: elfv2

Don't specify -mabi when building with clang to avoid the build error
with -m32 and not change any code generation.

-mcall-aixdesc is not an implemented flag in clang so it can be
safely excluded as well, see commit 238abecde8ad ("powerpc: Don't
use gcc specific options on clang").

pseries_defconfig successfully builds after this patch and
powernv_defconfig and ppc44x_defconfig don't regress.

Link: https://github.com/ClangBuiltLinux/linux/issues/240
Reviewed-by: Daniel Axtens <dja@axtens.net>
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---

v1 -> v2:

* Improve commit message wording and explanation.
* Add Daniel's reviewed-by.

 arch/powerpc/Makefile | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/powerpc/Makefile b/arch/powerpc/Makefile
index c345b79414a9..971b04bc753d 100644
--- a/arch/powerpc/Makefile
+++ b/arch/powerpc/Makefile
@@ -93,11 +93,13 @@ MULTIPLEWORD	:= -mmultiple
 endif
 
 ifdef CONFIG_PPC64
+ifndef CONFIG_CC_IS_CLANG
 cflags-$(CONFIG_CPU_BIG_ENDIAN)		+= $(call cc-option,-mabi=elfv1)
 cflags-$(CONFIG_CPU_BIG_ENDIAN)		+= $(call cc-option,-mcall-aixdesc)
 aflags-$(CONFIG_CPU_BIG_ENDIAN)		+= $(call cc-option,-mabi=elfv1)
 aflags-$(CONFIG_CPU_LITTLE_ENDIAN)	+= -mabi=elfv2
 endif
+endif
 
 ifndef CONFIG_CC_IS_CLANG
   cflags-$(CONFIG_CPU_LITTLE_ENDIAN)	+= -mno-strict-align
@@ -144,6 +146,7 @@ endif
 endif
 
 CFLAGS-$(CONFIG_PPC64)	:= $(call cc-option,-mtraceback=no)
+ifndef CONFIG_CC_IS_CLANG
 ifdef CONFIG_CPU_LITTLE_ENDIAN
 CFLAGS-$(CONFIG_PPC64)	+= $(call cc-option,-mabi=elfv2,$(call cc-option,-mcall-aixdesc))
 AFLAGS-$(CONFIG_PPC64)	+= $(call cc-option,-mabi=elfv2)
@@ -152,6 +155,7 @@ CFLAGS-$(CONFIG_PPC64)	+= $(call cc-option,-mabi=elfv1)
 CFLAGS-$(CONFIG_PPC64)	+= $(call cc-option,-mcall-aixdesc)
 AFLAGS-$(CONFIG_PPC64)	+= $(call cc-option,-mabi=elfv1)
 endif
+endif
 CFLAGS-$(CONFIG_PPC64)	+= $(call cc-option,-mcmodel=medium,$(call cc-option,-mminimal-toc))
 CFLAGS-$(CONFIG_PPC64)	+= $(call cc-option,-mno-pointers-to-nested-functions)
 
-- 
2.23.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190820232921.102673-1-natechancellor%40gmail.com.
