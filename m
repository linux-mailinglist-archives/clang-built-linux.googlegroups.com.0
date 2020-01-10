Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBO7K4PYAKGQECHV2MKI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1040.google.com (mail-pj1-x1040.google.com [IPv6:2607:f8b0:4864:20::1040])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B8B61378F8
	for <lists+clang-built-linux@lfdr.de>; Fri, 10 Jan 2020 23:05:49 +0100 (CET)
Received: by mail-pj1-x1040.google.com with SMTP id l8sf2124795pje.0
        for <lists+clang-built-linux@lfdr.de>; Fri, 10 Jan 2020 14:05:48 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1578693947; cv=pass;
        d=google.com; s=arc-20160816;
        b=mw4Y6MC47vDBjYubcBcMIa97hu1n78NuS4yVN9i+B5YthL4InK9vkK0t/1SEkzzJPT
         SgcJYmxIgFAuLtLN62c4chOBbVKeUhHP6B8albFi8auj7GlnT6Wm5AaUQeQDijboKu4E
         BvcwUUe+yyL8kLl2mknXNakreTOJri8vk04BNieVi37LWJjvdjJ+fW5Mnr/1qo11P1DJ
         LJKx6T+9Mvn3qwkaDzA4gnmQereJrpwap6jP10SF+p3jGZLEESNCR7WvnVYgYbKJyo9C
         NtOORswq8peiwOFBqEbztsKIwbgc6/DBEvYqN9dXns2oA4XfL+sjzvWzQBFFqVbM6Wbi
         ZVfA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=5ntSjhX3m8mBB+OQ4N8sjS0IyiKn1bvBKDrr8rz0nVY=;
        b=lLFZf0EwHdEaZkaUiFZzH2EGkxbinFYQjPxXJHPHgkCpuwM1Cx0qU714FHRdcDBdah
         obbYve0mVlZjdcylaBKKczhMccmLbtRGQjtoq56Ldn6e8+YRbLDBBgBl3PireFPFiVQW
         lBtq3tC728gabEYX/PR7yY3EJtXJFkJKiQ8iX4R0P7LwhQ/EHm2+qeWbwCVmyk6M/y9J
         Cbqe8ia6peKAxiAj8IoleR4cMMi5fk37mUBvp7gfcuZkhGP9mzWhtbV/udsqr6r7tzoQ
         bSYa1/fxKCrfl8UwUmUK8+DKbYwhRuQ0FEMKD6Qt1Qa1r6O/5U9fOhxndJNmu9rrSYD+
         jNZw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=yjxabfZi;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5ntSjhX3m8mBB+OQ4N8sjS0IyiKn1bvBKDrr8rz0nVY=;
        b=iKLUmuhtozT0u9e9k72TleJb4T5sv+gUI9qYhItbXyQkpOf02oCwQSiG1THKNXMWXU
         bRYuNtwb+NfzhMJ1dZkplB8iy5PJUK2CrrXh6/2kZTG1cMg1Y3XMttnCUBmPjIYu3GjD
         NIRAn/4Opb3b30gV2UNmvEmNErP7yqNaJS547CdA2aRwHsEHSGf+YFBHzP1Z95Ey47Wz
         l7c9IP98uuxI8Yc43R5VRFNNH6IUNOIuzTSNtyHzQ1UPQ5y4DM5LLkLFuZtWQhknBclq
         fXjDBz2M9tNqoKEDGVOHq1B4UGsIEiLKawhiZncasL1PHbOXvd7u66gmry6gXcoWy8tT
         3ITA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5ntSjhX3m8mBB+OQ4N8sjS0IyiKn1bvBKDrr8rz0nVY=;
        b=QrdpHS7rwKyLb+b8K8HXkg7BXwvEh30SOsdH7dJIcuJxuprbH/vquqtPRmNMWFq17D
         /DZNyq9r/aA6SjPGSdanXOVQPHxRyO6z5WvNSShZ/SkkiAabTycL9uZWtaar8lirovkY
         Z0h9Vzo6Qp3dryy/a8HDZYvbIIRVBnUl1TDx0g/rqIqPq3Tvcho37uk40VT31AhMIEwr
         SFkoVT/VAhxmzgxoTaMw2yhdn5Y7IIC+Z+LGxRfNb+FB1Uwxolm7EsEb9m3iRmbLVAEs
         HBzWzalncSLlZP2JuLqMKnPhQDvk7HzPUXDZgvhZHxa07lSi9fJplbpWQrdpeDF3fWIQ
         BKJw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAU5z6vT3/m/L1fZyPBQdQVsZsIGgLzXqiqlqS9vmvMBv3RxOYzI
	rmxryK7wesMs1yGD2hlr3+k=
X-Google-Smtp-Source: APXvYqxExhsg/4AfRamOI6nne0itl6oqtTGuTUto/PtDCLqnM+ReZYsVxSjPRkpEcJRp8bsJLVtx8g==
X-Received: by 2002:a63:946:: with SMTP id 67mr6861560pgj.277.1578693947238;
        Fri, 10 Jan 2020 14:05:47 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:8004:: with SMTP id j4ls1826065pfi.14.gmail; Fri, 10 Jan
 2020 14:05:46 -0800 (PST)
X-Received: by 2002:a63:197:: with SMTP id 145mr7087855pgb.11.1578693946791;
        Fri, 10 Jan 2020 14:05:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1578693946; cv=none;
        d=google.com; s=arc-20160816;
        b=gFIP1meeVfLdXBEGdPfwVjxu4qokxE6518q2qc/Pwsf6PtbG3IRYDxOz/t609fmmO2
         hZTN330J9ImVkbsKMKiHaiIp/i5fwGiPrsDBPWI4h5c/86rn46QFoOUXU7iL6dqrPAHp
         zw8G6RXlLf0nlCGpfeCgC1ytz584904Q/Nw7/21bGWj4F86kivZ5TGdfozxyaGGHLZjr
         qYp6EG0E9yZsLfzVwMeTVXFoX+s0cEXruPvM3DSXHjZdUb4fAMVoeIzqG0bfR0W4vblM
         6Dz0oYyvveHA9xISqUFLQcUPfmOLoLOPiIewvA1VZ+wd1gTcgT5mPlm2UNPO16ongSq1
         djMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=UVnVN0VYZusNPOc8iJdQ1odphExaPaUhGkneHDd+OoU=;
        b=hefqi1ukb5upcpeY8kE2Eiyr7jEucXjyZTF4OBRvMz6K4pFC+1wr995pFToP4a4j9l
         kOosyl7VRPvH/DKF1r10BJRbmT7MHIiQPbuEx5aZJWVbtYIO77QdXI6JsSm9bFHeCnQp
         27yGsHUWHgNrV09OsOOCvZ04PgMeNZlgZCKQMsjLRE8HEvazADtdyoD8I5LQj3yZKALY
         WuHNd8FsbCR4tvQ6ztQ2UykEYP28/xU+1YpGiJ/4fy6KJWUovW4ete42sGXjfR1zHBuZ
         au0f9l+8HDdDPMNh77F2YDIkI7fPGviAr7twLD2grHKxuz3Wixpc7rQYT35334LwaXWY
         25pA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=yjxabfZi;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 65si140952pfx.5.2020.01.10.14.05.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Jan 2020 14:05:46 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 3E7BB20882;
	Fri, 10 Jan 2020 22:05:45 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Sid Manning <sidneym@quicinc.com>,
	Brian Cain <bcain@codeaurora.org>,
	Allison Randal <allison@lohutok.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Richard Fontana <rfontana@redhat.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Andrew Morton <akpm@linux-foundation.org>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Sasha Levin <sashal@kernel.org>,
	linux-hexagon@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.4 25/26] hexagon: work around compiler crash
Date: Fri, 10 Jan 2020 17:05:18 -0500
Message-Id: <20200110220519.28250-20-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200110220519.28250-1-sashal@kernel.org>
References: <20200110220519.28250-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=yjxabfZi;       spf=pass
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

[ Upstream commit 63e80314ab7cf4783526d2e44ee57a90514911c9 ]

Clang cannot translate the string "r30" into a valid register yet.

Link: https://github.com/ClangBuiltLinux/linux/issues/755
Link: http://lkml.kernel.org/r/20191028155722.23419-1-ndesaulniers@google.com
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
Suggested-by: Sid Manning <sidneym@quicinc.com>
Reviewed-by: Brian Cain <bcain@codeaurora.org>
Cc: Allison Randal <allison@lohutok.net>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Richard Fontana <rfontana@redhat.com>
Cc: Thomas Gleixner <tglx@linutronix.de>
Signed-off-by: Andrew Morton <akpm@linux-foundation.org>
Signed-off-by: Linus Torvalds <torvalds@linux-foundation.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/hexagon/kernel/stacktrace.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/arch/hexagon/kernel/stacktrace.c b/arch/hexagon/kernel/stacktrace.c
index 35f29423fda8..5ed02f699479 100644
--- a/arch/hexagon/kernel/stacktrace.c
+++ b/arch/hexagon/kernel/stacktrace.c
@@ -11,8 +11,6 @@
 #include <linux/thread_info.h>
 #include <linux/module.h>
 
-register unsigned long current_frame_pointer asm("r30");
-
 struct stackframe {
 	unsigned long fp;
 	unsigned long rets;
@@ -30,7 +28,7 @@ void save_stack_trace(struct stack_trace *trace)
 
 	low = (unsigned long)task_stack_page(current);
 	high = low + THREAD_SIZE;
-	fp = current_frame_pointer;
+	fp = (unsigned long)__builtin_frame_address(0);
 
 	while (fp >= low && fp <= (high - sizeof(*frame))) {
 		frame = (struct stackframe *)fp;
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200110220519.28250-20-sashal%40kernel.org.
