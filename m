Return-Path: <clang-built-linux+bncBCD3NZ4T2IKRBS66RHZQKGQE7YYRYKQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3b.google.com (mail-vk1-xa3b.google.com [IPv6:2607:f8b0:4864:20::a3b])
	by mail.lfdr.de (Postfix) with ESMTPS id E416F17C206
	for <lists+clang-built-linux@lfdr.de>; Fri,  6 Mar 2020 16:42:04 +0100 (CET)
Received: by mail-vk1-xa3b.google.com with SMTP id a19sf894783vko.6
        for <lists+clang-built-linux@lfdr.de>; Fri, 06 Mar 2020 07:42:04 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1583509323; cv=pass;
        d=google.com; s=arc-20160816;
        b=Sg5WvzIOg9oXLZLBqqmhWZw5ZVDVzv9S9WpoeRdc+VwZ4UvkvcLe552FH+HR8cqJtG
         RkU0KxL+UkiCj8uBI5yfd+fQoJNtddVkHQOnjL5Zdu3/wp5jUdFKXZY6W3QMy18kerjX
         boGiB97X7Nx2AC3RTIA4fkHC+zGG2rVEZD8pfjuH+ZR11N3C+RwZ+BByfLNHUjE54Xhl
         szCTw7qJPYrQAO1b1OEFc+PvK3iTtXJSdG3OkHldn9oIUOiQEcOpCzPrljivfpWXxfQq
         RqUVNgl5KiCZMEG01bVUxR4ayFNBySp8aXnTIerLzNAg5rRnTgiQkNx3DZRfyWkraBNE
         Q7fQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=vp15mzVd9aSfPTHE6+Xvav4iMotVhVamzjfXFZlnS24=;
        b=s271k8lxWBCD46RHVGnNMFAVthNzAs14OOcqndWsFGlOVWDuxUvEwAyRIZbQhk425v
         bxSqdjkdkqeAoe97oGcdN1Z0/N1o32AyfWGy++WqjZMF7eSC5+AWYDecGAxmhL1CwxU/
         1Ou3em04qFkEzl6SFTRUR5oxqP+OyTMV7nuilQWLxn53ctQlzdfajzceToYRyamXle7D
         moZHbUf2S3HPIXIvM1dpBP7twjqDYMuxvBRi017C1T4umv35gz87aLFweNfXH+760E5Y
         fYgrkZ1DGhEadhe4sfOD/63AcH3QKvI6VnDVS5Yu1kZ8jaM0m+7pbI1Q2s33oWDm5ZbZ
         Lvuw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@lca.pw header.s=google header.b=XfqrDDLT;
       spf=pass (google.com: domain of cai@lca.pw designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=cai@lca.pw
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vp15mzVd9aSfPTHE6+Xvav4iMotVhVamzjfXFZlnS24=;
        b=ev4IrCubd+rQZSaWUIm6eAEzzpYkAX765q9WxhjN1m+L/kWvNDSyeK4sQyZ+bD1TXC
         KCtsdOCYw19qDErNeSe9lypUqA+R1G1r14gSfLMoG7tGNv63cDBdNjYKG6WYxLZ6dG9D
         TjV86smQ57ohAeWOv/w3OODdm38MbEqjbWw8KrWXnVWLgJ+Vmpjoft2U+PmZTjINeRvZ
         Mqg4xIahevtb7E14PdHHRGbpSeU7va2ARZ3LqSZeisXOBcXcEgmMEtKu0XPZ+q8KD6Kj
         19n7/+6x1LMbI50aCNfexy1QwQNrOw8tFCz0pUsczOFt8eXqfa+WnsyGqQ/Z8IXBKXEO
         YYnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=vp15mzVd9aSfPTHE6+Xvav4iMotVhVamzjfXFZlnS24=;
        b=aa0Bomm8JzFu9fUNautHXyP8BXNdQvIHS5JKTxv1/I2CDzEoVvouYlqm3g/mjeGle8
         duZ4fLFpfsCMIiy6DLKpfYF56Jp/T7hpSzvXXtQjnDF1XYsXb7C3213Z5PhqagokL/cb
         j0r46gHKbeFLCviksb8F8drtzjxE7o3lJAjNU2Tuv2AThiuEhFU30+0Ng4L4FZhTkn59
         4eW979Sv1oDX0c+Ud5I4NkBkbddOeu7B7X30S1OfIC5992Yzv5LlGXEflech6dA9INY/
         0h2wRXbJJnmrIFrj6Y5qn8cBi8iDgezIT/cPI38Wi8/zcufSupk77XqYsrYBPRebPhpr
         qNSQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ3lUCMDYWbmoDg5I4aokvvLrSdYRN205+fDSJNRl06oMo50SCVj
	WGVMDjnaiYSVjhHWJyfF394=
X-Google-Smtp-Source: ADFU+vuSHYpO5B0v1WrTx7RZqNKMFIOgM3XoLFa/MXb55gLDN+dEKxE6wFJvQWv0Nv8iaWKFxHS1Jg==
X-Received: by 2002:ab0:1d1:: with SMTP id 75mr1979882ual.108.1583509323659;
        Fri, 06 Mar 2020 07:42:03 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:27c5:: with SMTP id n188ls390338vsn.8.gmail; Fri, 06 Mar
 2020 07:42:02 -0800 (PST)
X-Received: by 2002:a67:ea54:: with SMTP id r20mr2406702vso.217.1583509322702;
        Fri, 06 Mar 2020 07:42:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1583509322; cv=none;
        d=google.com; s=arc-20160816;
        b=GVN+L3GMHh1++OKRQpPwu9SAbqiftncStlBu0ZtY5j7je5ht2gVhioEKslbg6V0Gp3
         KhE7QY48/eb3AnAKt/GqgMDCurPo/DWLVBljKFPGgAZzGRcgAOP/AGvf7rXuCiPL/b4w
         l/OT59XN6xISBC6zWQEn3ETzpxApZ6qkKbXabvnvF4y3l11MMjd6B34N3yQ5nWCJ5B/1
         NpwhWs3XI2LloXW+MrPF42mpxUa1aGIWsYRU7sIeJ8LM9GL9JsMvoLYKxHmu+pFX+pTQ
         fjDT8njIp2GBU/f8fe4vZCxU4+1bNdDsEJb48ucmQiZUIpect/VRYaJUinbPQyfwyPqS
         Zg7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=MXluHjiwZwq++M60EzdikuAJ7SQh4kY9FFj9/2rOI1E=;
        b=zwV97bSjWTl52sNSJ3oKn7/fU+lZy/j9U5S+1k5ShetCR/mv6wflqbvymrh++kF4Nx
         Dj+/KYo68DAy6L3jnWEpoeYZLW5zWRfGrkCictwMi99JjAZY6WNE7lSJ2hna7ir/mamy
         zbO0tXMzE0HeI2pO8+0on2fMHOILqGa+wrLexsqgpfce9LJZv/IceGI3O9xzLA7QuEFE
         916/chzP27qYAV9NkA/PtqChSznCqqe5uEKPb5NqWfTphQAEfD3MPUJFVEe0xRFW8igm
         R4J15fOWiCM/soZ76KieqRnUK0f0SxJ3aY+N1LTfyGp0ovFHzPhWe2InBYxnOjhQ+gmh
         r9ew==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@lca.pw header.s=google header.b=XfqrDDLT;
       spf=pass (google.com: domain of cai@lca.pw designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=cai@lca.pw
Received: from mail-qk1-x743.google.com (mail-qk1-x743.google.com. [2607:f8b0:4864:20::743])
        by gmr-mx.google.com with ESMTPS id s74si200132vkb.5.2020.03.06.07.42.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Mar 2020 07:42:02 -0800 (PST)
Received-SPF: pass (google.com: domain of cai@lca.pw designates 2607:f8b0:4864:20::743 as permitted sender) client-ip=2607:f8b0:4864:20::743;
Received: by mail-qk1-x743.google.com with SMTP id j7so2680522qkd.5
        for <clang-built-linux@googlegroups.com>; Fri, 06 Mar 2020 07:42:02 -0800 (PST)
X-Received: by 2002:a37:ef04:: with SMTP id j4mr3491798qkk.68.1583509322259;
        Fri, 06 Mar 2020 07:42:02 -0800 (PST)
Received: from qcai.nay.com (nat-pool-bos-t.redhat.com. [66.187.233.206])
        by smtp.gmail.com with ESMTPSA id w11sm13942407qti.54.2020.03.06.07.42.00
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 06 Mar 2020 07:42:01 -0800 (PST)
From: Qian Cai <cai@lca.pw>
To: peterz@infradead.org,
	mingo@redhat.com
Cc: juri.lelli@redhat.com,
	vincent.guittot@linaro.org,
	dietmar.eggemann@arm.com,
	rostedt@goodmis.org,
	bsegall@google.com,
	mgorman@suse.de,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Qian Cai <cai@lca.pw>
Subject: [PATCH] sched/cputime: silence a -Wunused-function warning
Date: Fri,  6 Mar 2020 10:41:44 -0500
Message-Id: <1583509304-28508-1-git-send-email-cai@lca.pw>
X-Mailer: git-send-email 1.8.3.1
X-Original-Sender: cai@lca.pw
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@lca.pw header.s=google header.b=XfqrDDLT;       spf=pass
 (google.com: domain of cai@lca.pw designates 2607:f8b0:4864:20::743 as
 permitted sender) smtp.mailfrom=cai@lca.pw
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

account_other_time() is only used when CONFIG_IRQ_TIME_ACCOUNTING=y (in
irqtime_account_process_tick()) or CONFIG_VIRT_CPU_ACCOUNTING_GEN=y (in
get_vtime_delta()). When both are off, it will generate a compilation
warning from Clang,

kernel/sched/cputime.c:255:19: warning: unused function
'account_other_time' [-Wunused-function]
static inline u64 account_other_time(u64 max)

Rather than wrapping around this function with a macro expression,

 if defined(CONFIG_IRQ_TIME_ACCOUNTING) || \
    defined(CONFIG_VIRT_CPU_ACCOUNTING_GEN)

just use __maybe_unused for this small function which seems like a good
trade-off.

Signed-off-by: Qian Cai <cai@lca.pw>
---
 kernel/sched/cputime.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/kernel/sched/cputime.c b/kernel/sched/cputime.c
index cff3e656566d..85da4d6dee24 100644
--- a/kernel/sched/cputime.c
+++ b/kernel/sched/cputime.c
@@ -252,7 +252,7 @@ static __always_inline u64 steal_account_process_time(u64 maxtime)
 /*
  * Account how much elapsed time was spent in steal, irq, or softirq time.
  */
-static inline u64 account_other_time(u64 max)
+static inline __maybe_unused u64 account_other_time(u64 max)
 {
 	u64 accounted;
 
-- 
1.8.3.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1583509304-28508-1-git-send-email-cai%40lca.pw.
