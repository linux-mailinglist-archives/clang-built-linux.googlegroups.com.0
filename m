Return-Path: <clang-built-linux+bncBC5JXFXXVEGRBDPEVCDQMGQEGYYKYGY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3a.google.com (mail-io1-xd3a.google.com [IPv6:2607:f8b0:4864:20::d3a])
	by mail.lfdr.de (Postfix) with ESMTPS id BB3FD3C376F
	for <lists+clang-built-linux@lfdr.de>; Sun, 11 Jul 2021 01:49:34 +0200 (CEST)
Received: by mail-io1-xd3a.google.com with SMTP id 18-20020a5d9c520000b029043af67da217sf3405412iof.3
        for <lists+clang-built-linux@lfdr.de>; Sat, 10 Jul 2021 16:49:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625960973; cv=pass;
        d=google.com; s=arc-20160816;
        b=prZn+t1RWs3KVJyFzpd+HDK2PsZ7n44t7CSh1/CTub+hP7g5ACZB/kbXrCaRcsN16X
         vUMhZa5TQwI5DGjaJxbjkrQORq+HGHWxOviSJcE3HQI8qu5wF2kviWpK7Lnmzh97pfcA
         4FIPkCwgB3xrgVx6/wCX0UemyKCpBTo0VgfjfXw4TQNQWNOq4h885rRt+jy4wbDKcbEL
         Y2UsaTECpLHaAc7S2RiQ6QHN5MQvxHMT+ziIjJSLBBeJaCY3pghHYDmMCH5q7x6+fhBd
         4RFiOEzLxxdpV/lUxtc6efp9XTcebjDgdNmXUfyj3LYuIPxzHCF3r0ZEuVQp1x+5UupG
         Ifgw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=9fwTn44p6+jsR5s3x6LObAX8uGYt1VgrYcYpaQ2MqsM=;
        b=rEPqRQHd4lY5YHx+k0DrsDA4VKKRlqWkPT2VDHm/dBlLHsxJs7b5vPxxBPXriDEyFz
         D5Tc04q2ZhVDj1kc1VT/tdyVrfoJMJ0F9EzmvehEtBV4ByffQSzfZdB3VVlZSbtl3CBN
         /895cfoGJ4I0V2BVqic4QTHWnhFfNBk97UHNZzBNFt2bNqoHmdHoOPzbaqZp7blI8XwG
         lgO/XI3D72goGkIYZKINjX7cAV0X/aczwTmfvpTXHWhUECJplfnAFnZF3lN2KGA2+dJk
         2TGVfZaj7dFKFNCxnzsb5i/EgvRnTf5J15jeTAFMvjvfza6SBxh0V8yBRc3w/BG96FH2
         M3cA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=TZxNB26v;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9fwTn44p6+jsR5s3x6LObAX8uGYt1VgrYcYpaQ2MqsM=;
        b=TAa2lb84UgAoSgmi6w+IpbWL7RZmbBvoKAhxE5vKU/Ue9ZXOFIGhVyh011xlTy+5ZM
         GA/Irs09Q4xfetGxL6hcYXLeZYHg/ZzZ+LQkGNfRE7Ri6TfA0hYVY0kikk6GT4rcN/0z
         oc683w6vQYWd/DppxsE4pq8P5m/Jzn6XiRscpPyt2LiD/pVEWx4dXvx+q64yYxU+lVMq
         qwDrBPlp3lIphKJ3Mmv5m+kvHviLanzX21NAm+2TF4s5UQ6Ja+zjLDByEx7TO1Lew06n
         b+V5NIYyAVL3WxCcFCgpkUhSJQwGlfnHS6Bo4QRD5VReiBddALuVMbYmWb+8fMVg3hPb
         DIJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9fwTn44p6+jsR5s3x6LObAX8uGYt1VgrYcYpaQ2MqsM=;
        b=eKmPUf5NZfOmwwrfjCryJN0cOftifo3v9spmg0QAAcB1WiljEgx7Zpwpk488IjprxP
         PHfE9Pp1JgsrBS//8wXYYrq1NeCj7seqW98MS3R8sdiWJN2bbdmpQkhFkdt2O3Ps1rbx
         qt4V7KHJCr9/GRgxD4PNs+yEp9YPhvzg170715cdGn6T55hJul5TixqaaAJCyJxmMfyD
         Bd2sbOZqo24iiSPw7qxwwFZu5MdeUXwG5n3VuR52tvyoYrTDpjfL4BuGir4VY3/hfy8G
         NxD3MyCv0ytc5Qgg3BuOtVSLhadeeuYVQbaOhmGGgjLcZdqIy8Y0D3hIg7AfVhSzmQxd
         QpNg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532ai49IW+vlaLiWca7SrU4tqEMCiwpynEPNs/Szpyjcqkn92ebk
	z+/PziVw4AacJdvckNHlyHA=
X-Google-Smtp-Source: ABdhPJwaUyqozdvdrefMeE+tAg+y4MEitq0vxfHA0ecFoUQKpOySu3E88mwh+E2ph0y1PMy+tt1rxA==
X-Received: by 2002:a92:6e07:: with SMTP id j7mr17228844ilc.71.1625960973504;
        Sat, 10 Jul 2021 16:49:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:d4c6:: with SMTP id o6ls2465817ilm.11.gmail; Sat, 10 Jul
 2021 16:49:33 -0700 (PDT)
X-Received: by 2002:a92:d346:: with SMTP id a6mr5100655ilh.249.1625960973204;
        Sat, 10 Jul 2021 16:49:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625960973; cv=none;
        d=google.com; s=arc-20160816;
        b=c9gz9thmSuVjPQgz3ujKhKsDfLy/sybG100uzq7+gCVxBJtihgRgYXaRTEDBuC3tWB
         14+1IfHSKqRDADhimBGkZcm3FJ9kLQl/4Ub7eM6cHO9UkHdUSxHw3Zq/eFdkLXcS8J2l
         2VVkE7FDgfqXk+YDJ9Ew5cYKh68JyVFZ9L5jS5YIpakIT17BkkZmU/njFAzz2/Fb2VW3
         +VELP9LE/bW30rQE+G0v/p+klIjjQEWOoRbUWHRE5EpHtwKYuYu8VaTqmZr5R1pFkXjm
         em1gzKO+rU6t7nYwlg080E2OsFfKiKeGOxWh1Ak3m7JHYts9nI+d+afISGQc55Q7OyR4
         QPnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=083mBPceFLvczIxsrREP/5a7b+JLoEulMr/FMvDN5HM=;
        b=0kMMmw/WQokKbJK/HZVcw7jPgEw198P9ZQT5N+wNSZOxOS36lL+FngAK+o3JM7cGGF
         /A7eVrH6U8OV/2Y0aX7bFPC1lwNOvPcFw5TXTvTEc/l2+pEGhVwGHu0D4Im3Z10IgSmk
         W1BfN79tZEogcipF7WSOgLTCN1FidWjmwlYRn/xCKU1vrI5W4LhLlEimpOj5+JPPyOYq
         u1oaUMM9yEHJougMh8TUlJGax4ehqUhnbk1b18xe5nzFZQS5a7x/vCqRZ9/Y00MQMc0g
         vpl5J8ekxFlLWcaeoF72rvhFjEDRf1MYPFdE4Ze31d5NAhCwg0W6FvARJeqfBgyshtvW
         X/nA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=TZxNB26v;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id g14si818380ilf.4.2021.07.10.16.49.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 10 Jul 2021 16:49:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 9A53F610A2;
	Sat, 10 Jul 2021 23:49:31 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Jian Cai <jiancai@google.com>,
	Russell King <rmk+kernel@armlinux.org.uk>,
	Sasha Levin <sashal@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.12 10/43] ARM: 9087/1: kprobes: test-thumb: fix for LLVM_IAS=1
Date: Sat, 10 Jul 2021 19:48:42 -0400
Message-Id: <20210710234915.3220342-10-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210710234915.3220342-1-sashal@kernel.org>
References: <20210710234915.3220342-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=TZxNB26v;       spf=pass
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

From: Nick Desaulniers <ndesaulniers@google.com>

[ Upstream commit 8b95a7d90ce8160ac5cffd5bace6e2eba01a871e ]

There's a few instructions that GAS infers operands but Clang doesn't;
from what I can tell the Arm ARM doesn't say these are optional.

F5.1.257 TBB, TBH T1 Halfword variant
F5.1.238 STREXD T1 variant
F5.1.84 LDREXD T1 variant

Link: https://github.com/ClangBuiltLinux/linux/issues/1309

Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
Reviewed-by: Jian Cai <jiancai@google.com>
Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm/probes/kprobes/test-thumb.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm/probes/kprobes/test-thumb.c b/arch/arm/probes/kprobes/test-thumb.c
index 456c181a7bfe..4e11f0b760f8 100644
--- a/arch/arm/probes/kprobes/test-thumb.c
+++ b/arch/arm/probes/kprobes/test-thumb.c
@@ -441,21 +441,21 @@ void kprobe_thumb32_test_cases(void)
 		"3:	mvn	r0, r0	\n\t"
 		"2:	nop		\n\t")
 
-	TEST_RX("tbh	[pc, r",7, (9f-(1f+4))>>1,"]",
+	TEST_RX("tbh	[pc, r",7, (9f-(1f+4))>>1,", lsl #1]",
 		"9:			\n\t"
 		".short	(2f-1b-4)>>1	\n\t"
 		".short	(3f-1b-4)>>1	\n\t"
 		"3:	mvn	r0, r0	\n\t"
 		"2:	nop		\n\t")
 
-	TEST_RX("tbh	[pc, r",12, ((9f-(1f+4))>>1)+1,"]",
+	TEST_RX("tbh	[pc, r",12, ((9f-(1f+4))>>1)+1,", lsl #1]",
 		"9:			\n\t"
 		".short	(2f-1b-4)>>1	\n\t"
 		".short	(3f-1b-4)>>1	\n\t"
 		"3:	mvn	r0, r0	\n\t"
 		"2:	nop		\n\t")
 
-	TEST_RRX("tbh	[r",1,9f, ", r",14,1,"]",
+	TEST_RRX("tbh	[r",1,9f, ", r",14,1,", lsl #1]",
 		"9:			\n\t"
 		".short	(2f-1b-4)>>1	\n\t"
 		".short	(3f-1b-4)>>1	\n\t"
@@ -468,10 +468,10 @@ void kprobe_thumb32_test_cases(void)
 
 	TEST_UNSUPPORTED("strexb	r0, r1, [r2]")
 	TEST_UNSUPPORTED("strexh	r0, r1, [r2]")
-	TEST_UNSUPPORTED("strexd	r0, r1, [r2]")
+	TEST_UNSUPPORTED("strexd	r0, r1, r2, [r2]")
 	TEST_UNSUPPORTED("ldrexb	r0, [r1]")
 	TEST_UNSUPPORTED("ldrexh	r0, [r1]")
-	TEST_UNSUPPORTED("ldrexd	r0, [r1]")
+	TEST_UNSUPPORTED("ldrexd	r0, r1, [r1]")
 
 	TEST_GROUP("Data-processing (shifted register) and (modified immediate)")
 
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210710234915.3220342-10-sashal%40kernel.org.
