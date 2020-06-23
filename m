Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBYX2ZD3QKGQEL74UJWQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73e.google.com (mail-qk1-x73e.google.com [IPv6:2607:f8b0:4864:20::73e])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FD432058BB
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jun 2020 19:35:31 +0200 (CEST)
Received: by mail-qk1-x73e.google.com with SMTP id s75sf10114145qka.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jun 2020 10:35:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592933730; cv=pass;
        d=google.com; s=arc-20160816;
        b=khjqlhYhuHGLjp6tqQHf5RpPFT5Q9XmM5oRAAyxnRAv+ztnNs+Rd6Xx4Nu9QW0goBc
         rAidEAX4nFhyPafqCjZV6fiqJOvo/IpSI7kLQrlL8CvqBjnRSpvRtVK6jwAIG0hSlQFn
         cTNp7/wlR20O0BbZ4+PNmlD/OznlSTV9LLftx1SRa0YX3Ch3T5cITi1cocc3aWrL63tO
         M0obayNEXBfvsPahhs1MIbF6fWSvSCT4zv3hUJyA505ywLPzyF+kDv1vSsMESSy5LS4N
         6iwzwo6ejkrpCtuya0BDQFDdu/ImaJOvqWuhOBiXvmFb2DQOnz/Na1tOqh2VnsV7v8b9
         oi3w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=kpDOl1e2/roZNdSqykWYkGE/2GF4QaLmajmIlrxoFHQ=;
        b=vS7q3j+N62l1zAsP60fHScx8N4RQ03FqGFDbqsw7QFI6+CMqpwtMfKwpdy2/9RWxCz
         of9q6CONUPDpaNVkXm5pi4RJbn6W7KW6GYgBmfmF4lrgArEQNTfAhoLxg3IOHXZCJQAL
         pRaCIfdZruz7W1d68czU3htqm5xdQ33Z2mn2PjxY2MCuALIMBCm1ihAAcwwCAbI+lEV7
         nH/TKyILkEKcmxncOwJZT12thAAwfABT1o8ow6pLCOJn07DczpHIHMBeZzSbdoVcM1R0
         2BFST+7QKnZBsKuN9xRRTSAIVrljYfNsWj+LB/JpxDdD46yLHgFhLXaE85PiQdV/fNsB
         MzgA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=e1bbPmF9;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kpDOl1e2/roZNdSqykWYkGE/2GF4QaLmajmIlrxoFHQ=;
        b=g8v98cVs9FHzdjU1TExGcI5KuMWIY0Pu9Ou5GeNTgk/SN8uN8qSGgAMdQ5wwkGovPy
         cEAxtWeOTX/rDD8lgl0B/E4A3kDTlFKyzmMbyaH71z8CMtbgM1MDqFrKbavRB4Co7IX3
         R14NXq5dbWJaFN3lvTK8CZ+FXqw6JHPxU1YXRfnOAv/LEmjGlQQbJCVF6DyUQmAj0zMe
         F1DykYWdB9jQ/s7fZ4xCbfgece4ksUFBLD06rYEpCHH9aZMAPz5IEZA369n/z4BevvB0
         DMvcPZDB8OleFuiumLtKHc8ANexP2OJYSewvik8RVqMt9IM+wI02xPrIg+1hkng/NhhX
         JMAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kpDOl1e2/roZNdSqykWYkGE/2GF4QaLmajmIlrxoFHQ=;
        b=Aadhc77v2FvD69oszqwQbyO6fGv108y56NusENm+TQX0QbgMfXdyQP3l5kAWPkY32L
         ojPgIo2XMZSMtjYN4dR8s9DkNPCjYqckH3aA+xoBq7RcpETQ1YfwGb/Jk/anv2bQAsoD
         pYEVMRCzxLyb8rNlSHNOOR1n1qvVPUdlj9vc9adCa+gGw5UQuMcms/fvhfVtvMQGFd+z
         rPjs2nAMIvp0TM4yPmRnV1PnBxR1zTFTuo5rMjhd4Hu7wymp2wswdZtKHAk7vhtg1gzR
         Df2r3FbcaYPwjtZovJNKFMyIyGzUHUh4xD6TU+CYHkhGiiofkdet3qRrdu23t/hchEAK
         dzZw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533FyJX6pS3UxSA4NPIzFrkz+/dq+TqjIbc8bHKtr9QnNj3SBoz4
	m4ykQyjelUjIc4XRHOvt4Ko=
X-Google-Smtp-Source: ABdhPJzSwC8pVGGXwSGAR4AlELHxwvMFa7PRdiTMik8g08IyZjtdOVGT09Gbu4usitmwtc8CJxX4mA==
X-Received: by 2002:a37:887:: with SMTP id 129mr21339554qki.52.1592933730309;
        Tue, 23 Jun 2020 10:35:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:f21:: with SMTP id e30ls5992714qtk.6.gmail; Tue, 23 Jun
 2020 10:35:29 -0700 (PDT)
X-Received: by 2002:ac8:3637:: with SMTP id m52mr10217690qtb.53.1592933729900;
        Tue, 23 Jun 2020 10:35:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592933729; cv=none;
        d=google.com; s=arc-20160816;
        b=RvFTaEuAS6z2k3ab4TgSZFZuGqkctHG87LnwlM2pTNQQ6nsy1RTrVAtPEBpbSsnDaK
         MOXyTVRezoP4eW0PEjrhXgV0TlLBLUI8J0Kd1600DyQg4CXfawuORp9yvcMBDvLKLwzz
         3nrGlWMi+vverJ3KMW2WUjRiwMBr69y9or+UKJkbb82XfShmtdTarcv4Pmn8hWTjAdSg
         LO4YJq9tBINm4WFmz+CGIUuiFHAHGAmTfWozO9PV/BdIdtt+DqmbxitUAVKAWidh+/U/
         tS/E3zGsGSAY0bmwn94GQl7TvfDZaoIVL6Ur04nu/yNNP0QVjH2hSJgwLwc+7LdH9mFm
         pGhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=ODmStry6MFDFFEr+h/5zOUkuTzYxq3Wj5qEX2ZapqpY=;
        b=BT3x8qGEw++9tqrNZJeATwfte4kV+hjWA9SxiLdCg3RVQ73K8sj270ykkyO1TiCbaF
         e07aLPMCjH0f2Y9zdXLdloQ45Gn7kzu/s6HjS8k+ndUfAc6moNk/EO+C7DQjiLPhv90j
         zHqdlhWo739zZtCq0Iz3xU5UTEigmb7AoRF/4GD2sBiC1LWjKLBmSYLF7vTV1SqHjEnB
         vtHB4+LbL2SFSj4U6lWHpZH7UXxFOirexAULCP/uIRWoRkP3EdDpqkv7kYa7vZqYnOCp
         bDxaEBADEGQ2cAV3xyRJT68D8l+kvlsOWiUY0qCQdkxznrMhE0uB/6lUTW9tlS9JQgHy
         BfhQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=e1bbPmF9;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id q14si110751qtn.4.2020.06.23.10.35.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Jun 2020 10:35:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 10F7C20774;
	Tue, 23 Jun 2020 17:35:27 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Huckleberry <nhuck@google.com>,
	Palmer Dabbelt <palmerdabbelt@google.com>,
	Sasha Levin <sashal@kernel.org>,
	linux-riscv@lists.infradead.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.7 04/28] riscv/atomic: Fix sign extension for RV64I
Date: Tue, 23 Jun 2020 13:34:59 -0400
Message-Id: <20200623173523.1355411-4-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200623173523.1355411-1-sashal@kernel.org>
References: <20200623173523.1355411-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=e1bbPmF9;       spf=pass
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

From: Nathan Huckleberry <nhuck@google.com>

[ Upstream commit 6c58f25e6938c073198af8b1e1832f83f8f0df33 ]

The argument passed to cmpxchg is not guaranteed to be sign
extended, but lr.w sign extends on RV64I. This makes cmpxchg
fail on clang built kernels when __old is negative.

To fix this, we just cast __old to long which sign extends on
RV64I. With this fix, clang built RISC-V kernels now boot.

Link: https://github.com/ClangBuiltLinux/linux/issues/867
Signed-off-by: Nathan Huckleberry <nhuck@google.com>
Signed-off-by: Palmer Dabbelt <palmerdabbelt@google.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/riscv/include/asm/cmpxchg.h | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/riscv/include/asm/cmpxchg.h b/arch/riscv/include/asm/cmpxchg.h
index d969bab4a26b5..262e5bbb27760 100644
--- a/arch/riscv/include/asm/cmpxchg.h
+++ b/arch/riscv/include/asm/cmpxchg.h
@@ -179,7 +179,7 @@
 			"	bnez %1, 0b\n"				\
 			"1:\n"						\
 			: "=&r" (__ret), "=&r" (__rc), "+A" (*__ptr)	\
-			: "rJ" (__old), "rJ" (__new)			\
+			: "rJ" ((long)__old), "rJ" (__new)		\
 			: "memory");					\
 		break;							\
 	case 8:								\
@@ -224,7 +224,7 @@
 			RISCV_ACQUIRE_BARRIER				\
 			"1:\n"						\
 			: "=&r" (__ret), "=&r" (__rc), "+A" (*__ptr)	\
-			: "rJ" (__old), "rJ" (__new)			\
+			: "rJ" ((long)__old), "rJ" (__new)		\
 			: "memory");					\
 		break;							\
 	case 8:								\
@@ -270,7 +270,7 @@
 			"	bnez %1, 0b\n"				\
 			"1:\n"						\
 			: "=&r" (__ret), "=&r" (__rc), "+A" (*__ptr)	\
-			: "rJ" (__old), "rJ" (__new)			\
+			: "rJ" ((long)__old), "rJ" (__new)		\
 			: "memory");					\
 		break;							\
 	case 8:								\
@@ -316,7 +316,7 @@
 			"	fence rw, rw\n"				\
 			"1:\n"						\
 			: "=&r" (__ret), "=&r" (__rc), "+A" (*__ptr)	\
-			: "rJ" (__old), "rJ" (__new)			\
+			: "rJ" ((long)__old), "rJ" (__new)		\
 			: "memory");					\
 		break;							\
 	case 8:								\
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200623173523.1355411-4-sashal%40kernel.org.
