Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBUXK4PYAKGQEWKWW2FA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93d.google.com (mail-ua1-x93d.google.com [IPv6:2607:f8b0:4864:20::93d])
	by mail.lfdr.de (Postfix) with ESMTPS id 253C0137900
	for <lists+clang-built-linux@lfdr.de>; Fri, 10 Jan 2020 23:06:12 +0100 (CET)
Received: by mail-ua1-x93d.google.com with SMTP id j16sf874191uak.16
        for <lists+clang-built-linux@lfdr.de>; Fri, 10 Jan 2020 14:06:12 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1578693971; cv=pass;
        d=google.com; s=arc-20160816;
        b=T2w/0mf3s/vgHwa5iSTSUua/tWcyQdf0tzW9yHyF+TKd+a/KUid3cK+v0ubjJtMMvd
         M/1nn0a7DpS0VqsGJCdkGhfGE15Ztmka8kfLC4oPHQXFhR4TY0bGOvPYh1z9/MbHFita
         1wPvYzFQiCHoMyDE7uSMRhJdWmO/HHrgk/XJzOjMmkBw4Cz1OoiiX89k+fefAnGW3GcW
         YuOL6RPWzwC8un2cTDp3tdvzEWhlYNv+7SVoQuSQdbSoZX0o1pwzN3VKWUNySWbR4vC6
         Ofhf9gZSEvdcprVc82fmQI8jAGzx8CFDQUnuH3guQGaUxFfKx/8kF4sYG7Nyeb+ataot
         0P6g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=m5WyvcLCJsRt+FPovbAqWnvE9iNtFhmeMGqb8slayec=;
        b=yfkNrLPVINjY/grMcCmlw4/OWdBMBGjPXCVzrnuLD3TgGFvInWL83CeSRkUNBeulJ+
         TvX7etO28c5jaOFlM5Z0lm138t9B/mEHa0typrgoJl2mHeWHbMf0lR4ZQj/s2XNTVk1i
         NudfRB2aofhBMxhWb25yHVLJp3DHzGjfsD5TlZCTVOlTS4vQIwY/5AqGQHGlkqy75kPX
         vRAMWzxKshp+UycXWv63sL8e03eTmcsGuarIe0gFtWAXgj6eX0nS/NJ9Hw1B+jjBG17B
         YxQJCgu/Wlkb4GHagYMuOis5bhyQFvrllsCcYZP8AcyT76eU9RaUR86sDYm2KDnhOcr0
         Cfbg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Sjq0swP5;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=m5WyvcLCJsRt+FPovbAqWnvE9iNtFhmeMGqb8slayec=;
        b=e4UUGMGtcHVdsVQqWqCOLuBQi0RL6hFxavT2ABpeOLzwFGOZdpmQnLakIXc+9ZMwhN
         jVA3HUBHM7hO48EmNAraKwRnOWxmXGJsKsUTd50TwOn0VeMggf7NDUztMfDtjhaAl5P8
         nev0phJ5w1u5fDDsMRCA7Wtf3FObkemX0tZqm/+3J2RhnKSC8bOuE2FtEWRb5GHnTSzC
         KCWcKxepHMwWzemASrkIq89SRQVmRbtc7r/L/KFWHLfY5EVYfo8QS6Sxl30eD+BohGwP
         c82RCa+3Pk9+m2OCpzO7oMN+RbwQ5g1k1ZNDkmbYMGakuh+fJHePbZMvZxWm3Jnw70TQ
         dFDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=m5WyvcLCJsRt+FPovbAqWnvE9iNtFhmeMGqb8slayec=;
        b=m14ye4ZhjNI6YBhpzFNxz/Udm7HtI34HAywSkhIwKxYkhWU5RV+ZoAbapEYEbbiTxA
         qOM28LwNEtNGkshhR5AzyenJUTA9uYNzp4YPBXHKSed7wX4ybqxrvzhv5R1P6UqTWKIc
         jr0DuM6K8vJOyuLND4hk3nyzS1A4MrYvQSQaOiRWoeBp7KWG6q0jhIHIt/j0mwDRt52G
         MDCNsPIDjDqOosUqJqKzQT06um0sWGspCp/6dZ1Gn2MRpNGujKmpZakOD/Ac6UGo2UsR
         4j7hRYgXRBLbjVlXQVyJgmG7L3oU31aplYN5TAe0e69/cRmkqsu9SBM25nFcJuatVCiK
         exPg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXcbQGL3czL6rDwt9MQ2UIok4lpeEIhaNU7TGBfCSG99pGKsPox
	ydTuo4785YL0fCw0DH95XCk=
X-Google-Smtp-Source: APXvYqyIUntGu9o2+2saK8O7Vm+6ZOIbUBWzQ3DTEN3rTiG2k2mkx9Z2fcXu3yIpdjMjhTLuvmaTcg==
X-Received: by 2002:ab0:4ea0:: with SMTP id l32mr576518uah.69.1578693970916;
        Fri, 10 Jan 2020 14:06:10 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:f94a:: with SMTP id u10ls598456vsq.1.gmail; Fri, 10 Jan
 2020 14:06:10 -0800 (PST)
X-Received: by 2002:a67:fc1a:: with SMTP id o26mr564060vsq.229.1578693970488;
        Fri, 10 Jan 2020 14:06:10 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1578693970; cv=none;
        d=google.com; s=arc-20160816;
        b=qOrNOajpDh4wROpivkSuMVdj6HT6d8f8pheIUVOpwCA2M7J3yEKcXClf5R/rbeQhjz
         tfjyhvrTkvr67Lc1r1iFJk2DhbwJD1GHpSADzoCqXP2ED0hvp2GSbt37V5WMBwuWbXH8
         oM0mtsHmWk0H/NbdCFDB7ys/S9sq0oUwfuAtfz022DP3xjmUC8xGDuZimkUQBRjlzSLn
         FwZvNP2S5KUePhfyEl08jC1FyCSyOiDOFhf3o/01V1P1Dr5AnD+OM7BrlN5P+rwRQ0pV
         cEZzXIXStp9xTCnb4hALy5jsUnbafS5ZtymiHStOJBUhihjmOAuj/QbLFZDxEo9eLT8A
         iP0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=EuevyoudmkWQ8NUCvpWUJbpzYAAEZWcU96RTaWZJsnA=;
        b=m/39EIl+4KTPwfZJQA+QktOJMHYI0qibAdeD/F16Gv2zzDKEz6XvEdg5vmCfMX/geH
         JeROBSh8qyuDaGi/neDbaZCwd/oms8LWCuxJvqchmjG+l1nosf5dDsLG09WHhUwhyckW
         E5K5H/HiLWTC6lmJh7nPm136EWAheYy/Dfv8C83G7LSxWIelZ1C9Qo/gkkofYJgf3fWI
         sMTWXsx4FmfZcalKBONWu+EVk3zz77VdWnf9t6bolIf3Xj6rYf03raxB7/Pw0ZyFxldL
         6VexT6teHn2GprIwKxofy2xTmpzdjJrke7dXzTf21L9c7sbOo354DNg5OCcGFX8BStCV
         4iXA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Sjq0swP5;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id x127si188925vkc.0.2020.01.10.14.06.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Jan 2020 14:06:10 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 1DDF62082E;
	Fri, 10 Jan 2020 22:06:08 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 4.19 10/11] hexagon: work around compiler crash
Date: Fri, 10 Jan 2020 17:05:54 -0500
Message-Id: <20200110220556.28505-9-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200110220556.28505-1-sashal@kernel.org>
References: <20200110220556.28505-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=Sjq0swP5;       spf=pass
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
index 41866a06adf7..ec4ef682923d 100644
--- a/arch/hexagon/kernel/stacktrace.c
+++ b/arch/hexagon/kernel/stacktrace.c
@@ -24,8 +24,6 @@
 #include <linux/thread_info.h>
 #include <linux/module.h>
 
-register unsigned long current_frame_pointer asm("r30");
-
 struct stackframe {
 	unsigned long fp;
 	unsigned long rets;
@@ -43,7 +41,7 @@ void save_stack_trace(struct stack_trace *trace)
 
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200110220556.28505-9-sashal%40kernel.org.
