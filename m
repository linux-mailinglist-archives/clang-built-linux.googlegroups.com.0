Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBO7RTXXAKGQEUJPDP2Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x437.google.com (mail-pf1-x437.google.com [IPv6:2607:f8b0:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id C1E2EF6235
	for <lists+clang-built-linux@lfdr.de>; Sun, 10 Nov 2019 03:41:00 +0100 (CET)
Received: by mail-pf1-x437.google.com with SMTP id r187sf9111818pfc.16
        for <lists+clang-built-linux@lfdr.de>; Sat, 09 Nov 2019 18:41:00 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573353659; cv=pass;
        d=google.com; s=arc-20160816;
        b=biBWX+AvpassEPcFMn9ICjJJ6F+JGVlhThYQkQTOGt//BcimMHESVdC3/utlwsSBQm
         Ztvkdhyi0F+gC5DgPDnlRBLUvL8sK9SYNaZwZ3SjNvO1BWWmvfDP0tiiIEQDicbdyOG0
         c2SpSGKLKF1NCLM6fcX1jsa42uHEACL15cW4Ru/Ddaqqlhb2NzCFdmKlBCcnvjwrMmLK
         IaI2xTV9GZr8LMkAeK3pyozG0cgb9T5v/Fc9MHTmFWoimHWZKmGddEqpVpkp41VNCX//
         ISszBQHRm184wJwBx35UJ9owrm/br5QAlkdR8lpaSRLNxopbmL16NgiisHzp2aBVDrcB
         ZiJQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=LP5KuJjPIyw3+VmUIIrw/IWMOElKlMXJPhjk7yxHeVg=;
        b=TossGMXw8csOrvUYaheen9EmTCDXiTisZwrSHZSAJdUrh1HrUA1W3Qo14xIZErG3H3
         BXFFOu5H1uGOhIGjQEt7xHuil+9B9cBvDnTYZ7SNsylZsG6KWKKLFh9sbItdqi1YMFn4
         o15uV5Y6xum2x20++UDZdOZGeGHBr018B1CpeUtX+sy9tlNp8gOwhk6SI5d06PPP9BFd
         fyMiUgXHUWnqCz1jbNzY1t1RSP4u2PxUer42VAjqWHep3XBO0aoHW302zZZnyrZvnQ7A
         1LJrmhsEpmKJCnRJkDYDrDvb0DiNCsu+sA9M/N3lsMpNKFmY3AMq8UVF1RKwuQKIOdqH
         ouFg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=SmrSCTRw;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LP5KuJjPIyw3+VmUIIrw/IWMOElKlMXJPhjk7yxHeVg=;
        b=FcFc3e/FIsx7Rl7FqD80oUX2PAmBGPU8bjD5T/47q8M5k9U8m59MPxxcPuyT25sb8A
         pwpEfpt5qhTn8aMcDtQB/7nyojiO+qbI5yFzhv/7PoMXdrL1wUYmxrjEEQ4zRAdF4klH
         YKGgpgcWJp2s0zfYrIAwJ2BgM4ITXhoGuwIT4dTUFSNYYjosF0lf02ChpOg3DeUqTGi2
         CmIJrm1CCQUbAipnvJz7niVdXtI5umkOA//0YEtbF1EKNN7AcQLCsM8pfyyQNGNxEVqS
         KNSNALKgIbo0osCQGXf+FOao80GEKPlODuKKvo4lqLVYK06BtAV0cKtJnqol6x4QeGwo
         HbUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LP5KuJjPIyw3+VmUIIrw/IWMOElKlMXJPhjk7yxHeVg=;
        b=KsRz+vsPAPklzyoIso30AqQBplYGEvUmXTcfMqa7GuagHPoRGOa1D89g6hxaeZR5e2
         CQXhCvhZfYBXKjfsXi7eECJtMLgNA0BCbS/9brxYUhbR4cV0cw9x+cbT4P2jccCxLuD6
         H7BifNrhDPyoZHLbx26LmNVWzI1Oayx30GUqUdSvr2NUOa5r4qwklVrEnSdYH70NvtYQ
         Ez4qSGt+Dnrdf9cy2HW9K5H0SAdYZJbA6/sRLcYPhfqMYZ/uGu882iL601SY3raZTgVN
         qap3xLwRg3KYQLNPR++wloKiJWS4CH7DRVplhnOboUhu3ZoxPvQDzebmOyEpDHDmlCqa
         RyMQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAV2q2i8jlAmFT6GqCQiRsnUnEeCF/TR7Ue4BOfZfhe3nmVcg+IA
	c3b/TTzgQVgJPTLKjlTlma8=
X-Google-Smtp-Source: APXvYqybDiYtYY6KpnfbndfefrA/HOcre0w690dPJRfD7DQbtf7snwLwfkCMC5d6a997Gdf02scfQw==
X-Received: by 2002:a17:902:6b47:: with SMTP id g7mr18625615plt.160.1573353659330;
        Sat, 09 Nov 2019 18:40:59 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:514f:: with SMTP id r15ls3262223pgl.13.gmail; Sat, 09
 Nov 2019 18:40:58 -0800 (PST)
X-Received: by 2002:a62:1595:: with SMTP id 143mr17835034pfv.67.1573353658942;
        Sat, 09 Nov 2019 18:40:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573353658; cv=none;
        d=google.com; s=arc-20160816;
        b=NtW7iR9SgPXgDdTf5gshAzMTBDrCH/H/pbLxBTHmNtcm01XH4EurNM1mHccIczHm+h
         MUdvYG7+L1WkVYAkxigCJiaLwG+qSalxXZUiA+8pOPAkL2kdho8oFfaHv4TZ6FclgR+/
         0EB2sJDs5YuqwtMZB/a79XPUL8ui5Dc3tLVHeb9V97KkbDRMgv8DqZyWDG2VW0TKHcHd
         WMqdIK8Mh9rhqQv4YdsLEdpcA4aM0bU/9T5s3uSeS/pje/5SnBkkSspdIQkDeKnbRaic
         PRAz6Wp42YaCcV+FS1l3TRY+PQIYyYEI3DpaZp3dE5k56PDP+XpNVRgnrQ4w0aANOwt1
         77Uw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=abpBP08g6GyZnyQmVmjmYd6D+MGUVNGVs52ay6fUkxk=;
        b=HyrCg8BsJk96oQS24HJVukzPI3W9Dpt/sNuz+dNzYsRdf9/fM66dF+2OyhD7kG90e9
         xs6fg+9Du1zRN7pwhPbPMSyUCianOPR8OE170IdbLez1s1SLY4adaE6+FJAzGEufu20r
         xDxM+6lEI7ynpcnaGhvgdk6qiNSAcI0yxG0/uVA8p0ZaYVXbj56LBI9uuKULRxN48Wfq
         LCX7PCLJAStlcHS+PZ0uzWjRxbdGMxCYBmcP3mN2Fguvy24drRuQ0UvAGGQLDvzTWQiW
         veuMA+a2tvbG639Hzu772H8z1e55Jq5fjlQESLGukfFGLeqNX+o23nwmhGiEulLQ4hqY
         6chg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=SmrSCTRw;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id u10si380805pge.4.2019.11.09.18.40.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 09 Nov 2019 18:40:58 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id C16832196F;
	Sun, 10 Nov 2019 02:40:57 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Anton Blanchard <anton@samba.org>,
	Joel Stanley <joel@jms.id.au>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Michael Ellerman <mpe@ellerman.id.au>,
	Sasha Levin <sashal@kernel.org>,
	linuxppc-dev@lists.ozlabs.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.19 031/191] powerpc: Fix duplicate const clang warning in user access code
Date: Sat,  9 Nov 2019 21:37:33 -0500
Message-Id: <20191110024013.29782-31-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191110024013.29782-1-sashal@kernel.org>
References: <20191110024013.29782-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=SmrSCTRw;       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

From: Anton Blanchard <anton@samba.org>

[ Upstream commit e00d93ac9a189673028ac125a74b9bc8ae73eebc ]

This re-applies commit b91c1e3e7a6f ("powerpc: Fix duplicate const
clang warning in user access code") (Jun 2015) which was undone in
commits:
  f2ca80905929 ("powerpc/sparse: Constify the address pointer in __get_user_nosleep()") (Feb 2017)
  d466f6c5cac1 ("powerpc/sparse: Constify the address pointer in __get_user_nocheck()") (Feb 2017)
  f84ed59a612d ("powerpc/sparse: Constify the address pointer in __get_user_check()") (Feb 2017)

We see a large number of duplicate const errors in the user access
code when building with llvm/clang:

  include/linux/pagemap.h:576:8: warning: duplicate 'const' declaration specifier [-Wduplicate-decl-specifier]
        ret = __get_user(c, uaddr);

The problem is we are doing const __typeof__(*(ptr)), which will hit
the warning if ptr is marked const.

Removing const does not seem to have any effect on GCC code
generation.

Signed-off-by: Anton Blanchard <anton@samba.org>
Signed-off-by: Joel Stanley <joel@jms.id.au>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Michael Ellerman <mpe@ellerman.id.au>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/powerpc/include/asm/uaccess.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/powerpc/include/asm/uaccess.h b/arch/powerpc/include/asm/uaccess.h
index 1ca9e37f7cc99..38a25ff8afb76 100644
--- a/arch/powerpc/include/asm/uaccess.h
+++ b/arch/powerpc/include/asm/uaccess.h
@@ -260,7 +260,7 @@ do {								\
 ({								\
 	long __gu_err;						\
 	__long_type(*(ptr)) __gu_val;				\
-	const __typeof__(*(ptr)) __user *__gu_addr = (ptr);	\
+	__typeof__(*(ptr)) __user *__gu_addr = (ptr);	\
 	__chk_user_ptr(ptr);					\
 	if (!is_kernel_addr((unsigned long)__gu_addr))		\
 		might_fault();					\
@@ -274,7 +274,7 @@ do {								\
 ({									\
 	long __gu_err = -EFAULT;					\
 	__long_type(*(ptr)) __gu_val = 0;				\
-	const __typeof__(*(ptr)) __user *__gu_addr = (ptr);		\
+	__typeof__(*(ptr)) __user *__gu_addr = (ptr);		\
 	might_fault();							\
 	if (access_ok(VERIFY_READ, __gu_addr, (size))) {		\
 		barrier_nospec();					\
@@ -288,7 +288,7 @@ do {								\
 ({								\
 	long __gu_err;						\
 	__long_type(*(ptr)) __gu_val;				\
-	const __typeof__(*(ptr)) __user *__gu_addr = (ptr);	\
+	__typeof__(*(ptr)) __user *__gu_addr = (ptr);	\
 	__chk_user_ptr(ptr);					\
 	barrier_nospec();					\
 	__get_user_size(__gu_val, __gu_addr, (size), __gu_err);	\
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191110024013.29782-31-sashal%40kernel.org.
