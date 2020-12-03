Return-Path: <clang-built-linux+bncBAABBCWRUX7AKGQEWPKNR7Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23e.google.com (mail-oi1-x23e.google.com [IPv6:2607:f8b0:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id 367412CE1DC
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Dec 2020 23:37:00 +0100 (CET)
Received: by mail-oi1-x23e.google.com with SMTP id e203sf1645663oib.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Dec 2020 14:37:00 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607035019; cv=pass;
        d=google.com; s=arc-20160816;
        b=POCRg7i8coZUorqimRfVCvcxRnWOkalZJ23n/i/Gf1U06En9KJNcL8JY08aTdx/Gyj
         zOgb+VW25vakKQf8UFvCHjCSFABEvdCVQTDHg49saidGlofHyEXRwwCFBwy2JYn8yEVG
         qZ8H5pH/p4UGAhTxO4lZ3dWrcQMJe2fH5835ovaMPDB8HvhEx1cmuYycS+xnvAeiVc8M
         7kdCVp94BuVJWOhkTQKPpM3IXdvLNpH01ELH1GmtGjGuZNoNhLHjxV4ER4VBadN/hI5F
         IasSyJP3copb3gMdYq2x70gADhsdfa3NRXnr5Yy3ZrRJRqK9/bQm5iCO4LE+apNeBr4K
         jJVg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=V9SC3GdZ7hMNRAQgDhalhi2fGQi5iZ1a400HRo4PmzQ=;
        b=K4I90vXZD58igL+9Aq3ZHNertof7EnNNz161W5dpxFTzMZvWS+DH26QWsn+ySCXh43
         BiK0v7v7oMTshqU3RqdatP26iEIi518QRJPlNf/6QxiAAD0Iabx4F8Od2BE+QTpRCp/e
         jMlEwfh3AlJ+ccAXoxX2LH5aQW1SEG9ySKPcQLjwvCYBb1+AWuqS8xWGK9yN0S6KL/Vw
         32oUAseLa8noV/QWbOiE/zzCQ/kLIfv+LN9JJ6c6Y3pYkueDgHn+RcOCESbch099fLzH
         5RAZ6B6nfP+0zMOO1fGsUtqqhQv0ffJ7qofZyGKX+4BlVOBczcvB78FktMm7E+p+a7It
         MWBA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=V9SC3GdZ7hMNRAQgDhalhi2fGQi5iZ1a400HRo4PmzQ=;
        b=qPqJhDUImxCrHNss/LTcmkDxuEVB9PxqHudN3gnqZcALsARueUdNI7cHlixHGzV5Vl
         f9eqY7/T2XUZCo8LO4VhvojwxWp2Ul6y7t7hgD4WMuB1Tr1adpPhYxNRQh1lll3V6eDy
         Pw8L/0G3j7T6yLOlM0is/WyvULtTHochlZnXdVgYCMEY4ZJYULttZCp66r9RRoifzz30
         pxd9C1sjA7i3xNKcBtwEJAiqpojNbCRsqAfMao77C1JlrGM4GPzpM4doLnuOQXh8F2x2
         AAZaD21VO0MJ7qJbayGIiX0KUDRM4jh7swOLrxqMNhWgcyckO/SzPpbefy9kxvOvm6Aw
         MnqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=V9SC3GdZ7hMNRAQgDhalhi2fGQi5iZ1a400HRo4PmzQ=;
        b=BS8WiUuT5raPghxebQ1V+eos7RHMejcydpNb78jKKlKPVXz+F9PeDHH5u3vzPabQZj
         y2Cag+iBQT6pK/3WTsm7IXubF1NOg7xRGuWj2tNBpxRgqCkfnfBYduFBPbVBDFjZLtqk
         ApWvCrcJFQlOGwhrlFnSPy7eCVcm7YTeq3Csq+zYS8mxavkQfjLZdpdSATZeymvoiiu4
         mQnefCYNURtf91G6jUBBmx6XmCIeYTp5HC5WmFlBrcuzZzC6weMr+MIoEWn8Vu64e9B0
         Z2sLMSPyx8Zs8VUTvWlOGUUY6TTXxGAJ1HdF9+kjTYowPl6zLQIgVFP+W/BDwbXBzQEy
         TxAA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5311/tR1t83F94+j5T8olU7hhFBbknKvWrDw9L2y1BZx/pnW2yYO
	rL4plXVMxMPagUgEJeHQwi4=
X-Google-Smtp-Source: ABdhPJxcCUMu7U+mjVsvvIuphdxB3lj8FpJte+8rtHVN1FeqLVttlKN06MK9FIlRH+pPydB284Kx2A==
X-Received: by 2002:aca:f209:: with SMTP id q9mr1002366oih.103.1607035018911;
        Thu, 03 Dec 2020 14:36:58 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:230d:: with SMTP id e13ls1850872oie.1.gmail; Thu, 03 Dec
 2020 14:36:58 -0800 (PST)
X-Received: by 2002:aca:c492:: with SMTP id u140mr1014412oif.51.1607035018528;
        Thu, 03 Dec 2020 14:36:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607035018; cv=none;
        d=google.com; s=arc-20160816;
        b=GQiwXW64AtWRPLy5T9i+vDIr9rOKy9R8DfzVINov774ckHIgxkcjYaHZARck5wswr6
         a42fq2h1Su3ha5vBkKeg4eyeJcVjEg+rdeTwve1IUgTDDwEFj/xexse7VO6LjNpeeScg
         TlFCijXMytRvShdb//P93eIU65y2d28gLHQPr3vn5SsJCmiblFnDSbMd5d4+aGhGt5qp
         hMD0mcTSdyVTnw5MkbouVi+2ivJzFcQTdWGGju1Cbj8L+SK5qF3/WK/QWZMqWeW+v+pt
         9u9E6yBLCBKWE3TPZH3lydI8qq1ZVgY4zM+hiZ9BFulOfOBHycB66nojWFLl0nPRJzlN
         fkVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=j0qSKm2VlNq2mUuufxJmEDYBas1CAH+/f5qD/LP2xlE=;
        b=tCninxTq2A+0RbdTHnOm7mYO2CohxCr83S6H3EsZXTX3MpsAiDS4cN6YE3PeRYE3Ry
         a6uMOPTwexiL+GrC0v63uvoGi2m03sjDroaXLUI3YeKkPEAyHT0kqoDCr3/UQxitymdY
         rLkRGGJZRNjxWFpi5AvhevekIO28j3tdrCkgM93ng6k0pDzt9AvlKRlf2dunxWiiscnn
         XAUXMtTm24vDAXmWVnJmNwdBmj/B0BSo3EYhyeI6C6TNEzTTJKWJitdNQ+EuLsZCUjkQ
         GgzRwx3TVDOKps0eMo82EnJVGvQmNbFBHFNPN0gZlEG5Ig/nMXEYX0ATdfcXeSjm5JAv
         XpFg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id p17si55629oot.0.2020.12.03.14.36.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 03 Dec 2020 14:36:58 -0800 (PST)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
From: Arnd Bergmann <arnd@kernel.org>
To: Andrew Morton <akpm@linux-foundation.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Petteri Aimonen <jpa@git.mail.kapsi.fi>,
	Borislav Petkov <bp@suse.de>
Cc: Arnd Bergmann <arnd@arndb.de>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH] selftest/fpu: avoid clang warning
Date: Thu,  3 Dec 2020 23:36:30 +0100
Message-Id: <20201203223652.1320700-1-arnd@kernel.org>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=arnd@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

From: Arnd Bergmann <arnd@arndb.de>

With extra warnings enabled, clang complains about the redundant
-mhard-float argument:

clang: error: argument unused during compilation: '-mhard-float' [-Werror,-Wunused-command-line-argument]

Move this into the gcc-only part of the Makefile.

Fixes: 4185b3b92792 ("selftests/fpu: Add an FPU selftest")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 lib/Makefile | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/lib/Makefile b/lib/Makefile
index 985c6a8909e0..dc623561ef9d 100644
--- a/lib/Makefile
+++ b/lib/Makefile
@@ -107,7 +107,7 @@ obj-$(CONFIG_TEST_FREE_PAGES) += test_free_pages.o
 # off the generation of FPU/SSE* instructions for kernel proper but FPU_FLAGS
 # get appended last to CFLAGS and thus override those previous compiler options.
 #
-FPU_CFLAGS := -mhard-float -msse -msse2
+FPU_CFLAGS := -msse -msse2
 ifdef CONFIG_CC_IS_GCC
 # Stack alignment mismatch, proceed with caution.
 # GCC < 7.1 cannot compile code using `double` and -mpreferred-stack-boundary=3
@@ -120,6 +120,7 @@ ifdef CONFIG_CC_IS_GCC
 #  -mpreferred-stack-boundary=3 is not between 4 and 12
 #
 # can be triggered. Otherwise gcc doesn't complain.
+FPU_CFLAGS += -mhard-float
 FPU_CFLAGS += $(call cc-option,-msse -mpreferred-stack-boundary=3,-mpreferred-stack-boundary=4)
 endif
 
-- 
2.27.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201203223652.1320700-1-arnd%40kernel.org.
