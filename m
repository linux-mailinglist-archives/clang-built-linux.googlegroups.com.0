Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBMHL4PYAKGQE5BGF3WA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x938.google.com (mail-ua1-x938.google.com [IPv6:2607:f8b0:4864:20::938])
	by mail.lfdr.de (Postfix) with ESMTPS id 950DD137947
	for <lists+clang-built-linux@lfdr.de>; Fri, 10 Jan 2020 23:07:45 +0100 (CET)
Received: by mail-ua1-x938.google.com with SMTP id x9sf879883uaq.9
        for <lists+clang-built-linux@lfdr.de>; Fri, 10 Jan 2020 14:07:45 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1578694064; cv=pass;
        d=google.com; s=arc-20160816;
        b=e7dTu0Es8PBys8XFMCrglm0tDscTpwlMBla6qAI5ltlaQ4dvpiCJT1B53I9yaoxzg2
         aM9hWYGYZt/JB8OqZ3awxf+7ZbpdbKIXZDBRJ+uV4OGN0qUJ5uH1koPPLLISQWq8Mgo5
         k1L8YPqcRu8yPVl+sHsB28yhILEvZ8D4CMqt1kamIB6782h7wra4jdCRR+QXES5yN1BX
         2B3AYP99YZMZ6wCOSK1jUSFHDWQJdHLnKhDsoxHHuYu2SrzE/DXtFYC5/547DB3uRO/r
         woJjfuA28C0UdThCghLobKJmtxwUcaLMOSnVqVEIiHyoSPt2Dc58RNIiiMN6M41SkcBN
         DSqw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=92zz2VJMvTFAhtkfx4c4wTqv0Kv6mULrt+dOe5k8zNg=;
        b=uFKdDKfqAUMxodIvNMdsjmR8PvFKExZ6f7cgAG83xPgc66ghLvqorebyUJlZ38B0n0
         Mf5SzAgU7NQjsxog2ojlP5OjJWQkqmq1zgbpn/nff/7AxxE7aTi6xLlviziBSJ3WZvsm
         odVqPujdDbH6Nm3S1lZ7S+1LxgKwV0UBIAF51q1MphLu60C7BIGCe8is82TpPVhJ24T2
         LGgI8cA/smutSYVn6SKDgLUB4+kd87rmmMnFiVAeFAGDZEJfRT/YUcnbbLf0wJFmFdT/
         H+qdJe2nrDMiPPlobGM0hwJb00fuy7LrMYAK1YYIYcHu2Ihk6h4Hl/7PdijXmrSFVpSd
         3Dog==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=cOMot84P;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=92zz2VJMvTFAhtkfx4c4wTqv0Kv6mULrt+dOe5k8zNg=;
        b=e54q1tLkyhuUDizD25bevwq033mkfVcyplaUk9/8ydGmI8zx5WwSgMsVkHCjPArcrY
         lmDgh/x65IM0cf5WlDGRF3Qo6SJ0DdcWQGmXJGeaMdW6OETzY1RbKlsxXadq91cB2KQO
         bMkuwfdXCgo3cPU09Tk2OgADVokgYerxq2UqlCHXmcqmB3bw96GfpPY8AlwX32P1eX2D
         v7L9Gtp1sLCbmSl7mJqPWem2jqpiKKbxWTxgzOSoR3KLOoYcFKDdO5gtqnSO4/bi6q7U
         pRxD9s+peTpvZ92wTOCMVx3edUBFnG2rYiXvJuoFcpbMffcMJD5lE3d+tIs+m3Ik5/ZQ
         owEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=92zz2VJMvTFAhtkfx4c4wTqv0Kv6mULrt+dOe5k8zNg=;
        b=ElKfjaDvfuRfVufAc+s6xkaekdf6apzaPl3Q/V/2JzxGs70f4CEjrH+VW5FazlIPlu
         mW2o7gr8HxZBdPo/Uvo9PwNOKgdYji3NfJo7MuuN4C0ry7dMaa+rPbZwbRxwS83AeKHi
         heZnUHXouFH6Zqy8VO5s9/cxmVTuJ4cBt6i0caJCrWwZp26WeUaqlKD9gRtfD7IjG06H
         8hVMw1p85BSLIn2ykxTdwLBZwfiEn7xbKoGWoxdGuOsrkcYwE2ayvnIS3G+XDViL/O+f
         G6ehuQAned5oF4Q1B3Spdg0Uk1u16xUEcDCozSGRve7Pft/3yQ7iPoDECqcnwAJOY5nJ
         pCHQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUfZazHqrAS5Bh8pkDxQM9WHdKVPiYqhGzxZVSCJuvWxqbECEm3
	lkHa346Bp7A/slVDG1/gAeA=
X-Google-Smtp-Source: APXvYqyUKHdhOZ/nVO14CIkXCAIgT7mNvwK0W3srlMe7frYLmZOB6LnzEPbncm6mfzfXOoGDgZuAmQ==
X-Received: by 2002:a05:6102:52e:: with SMTP id m14mr3063260vsa.25.1578694064584;
        Fri, 10 Jan 2020 14:07:44 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:a397:: with SMTP id m145ls287020vke.15.gmail; Fri, 10
 Jan 2020 14:07:44 -0800 (PST)
X-Received: by 2002:a1f:1b07:: with SMTP id b7mr673544vkb.79.1578694064241;
        Fri, 10 Jan 2020 14:07:44 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1578694064; cv=none;
        d=google.com; s=arc-20160816;
        b=njUrKA55zmPHlhH4EfgzuCizhDy2IXBRVWoB25Gg4SCRQyQSR5Jwh1dCi8EdznwvmV
         Sk0FaqRTxsHiKyynqeDpfSRaZRx3yAvQHvJ9yoV104xMiUmgtTOUztmyC0H4T81fmydb
         TRw8p4dconqCCXhhtpMzH1HH8hPwfC8KdBhmHAV2UbVRu3rvnau02QWJOeC/ivg0pcRN
         6SGmuLrfsTOogDXLL0AElhQepad4ZyZjy9zBSFvFp0z4rxwAtnNdLfiEHxzcvYujH+UM
         iACbMsV7sFaFLu1aubBzBIeHGkaYPecYARzPvRe9M4HwJ/hxkA7B/k/cA0eH6nVENbqC
         gncA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=lk1jbEQxqT7kG+zPSA3cWD24Wp/yT+mOK7T3eBfJs5g=;
        b=IWsVMpS08Uco6JcZRJJhJZ4QUfm/9nPXuJP7nc3GYBcKosPNL5pSDpGwXp9H6ZU5HJ
         F0JxUyoI4As59a8iFZ1D7Vgh2HMkU12M4JELhN9Ddlr/a45BY9efc921N1mj20xpzHVt
         nUZYX+FQUOMinh2wX/t/YMSBz1wsNSKARxDLuwB0Jk4b1A2TUQwkHmIzILb/Nl7jdRQ/
         3dtugPFpqsJlQlDeZUs6dNCpqBRnsYMLTq2GejwRrJ/CJBoICF4gBRGYwhz+1LmyiVl0
         WvRlq25ZQUaSiyT1n8p+XydunT6bMmyNZUj8wj+kbCp7zxKjU3zQAfdzqZvedSbpd7hi
         Y06A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=cOMot84P;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id y126si171201vkc.5.2020.01.10.14.07.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Jan 2020 14:07:44 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id D377420721;
	Fri, 10 Jan 2020 22:07:41 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 4.4 2/3] hexagon: work around compiler crash
Date: Fri, 10 Jan 2020 17:07:38 -0500
Message-Id: <20200110220739.28883-2-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200110220739.28883-1-sashal@kernel.org>
References: <20200110220739.28883-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=cOMot84P;       spf=pass
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
index f94918b449a8..03a0e10ecdcc 100644
--- a/arch/hexagon/kernel/stacktrace.c
+++ b/arch/hexagon/kernel/stacktrace.c
@@ -23,8 +23,6 @@
 #include <linux/thread_info.h>
 #include <linux/module.h>
 
-register unsigned long current_frame_pointer asm("r30");
-
 struct stackframe {
 	unsigned long fp;
 	unsigned long rets;
@@ -42,7 +40,7 @@ void save_stack_trace(struct stack_trace *trace)
 
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200110220739.28883-2-sashal%40kernel.org.
