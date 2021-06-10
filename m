Return-Path: <clang-built-linux+bncBDZKHAFW3AGBBGFIRCDAMGQEV6NRBKQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x437.google.com (mail-wr1-x437.google.com [IPv6:2a00:1450:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 310803A2D12
	for <lists+clang-built-linux@lfdr.de>; Thu, 10 Jun 2021 15:31:05 +0200 (CEST)
Received: by mail-wr1-x437.google.com with SMTP id l13-20020adfe9cd0000b0290119a0645c8fsf909627wrn.8
        for <lists+clang-built-linux@lfdr.de>; Thu, 10 Jun 2021 06:31:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623331865; cv=pass;
        d=google.com; s=arc-20160816;
        b=kpJjWB5XR6hqZR0Ja7S0saIIDw/WA8TDS+4B3xBfrFi/cW8FQJzF10j0Y4Sseoazkf
         GOYuWoRbJs57PTRxzJzRHXk3MzSF5psCoeVx9MvnDAiN26rQ+yW7OvEoLhWjXTuDZuhu
         JFANBFI2923DsYaf2GOCVlPDsUfNcEcVPOSSQh7lST8d1R5HoaYvSv3AtbCOukJJk2Xr
         QwRK145ynZcT6QYPvUcR0KtFY6IXaS0/qF8U/oX1piEg92ppdq5V2CM194rHVQhLps88
         8VTE1CQMXcgIBo5dGiCw/AVvtvCS2fiClr3aHCxDS7so3uR/U0tURcoaV23wyVYeEvAN
         fs/w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=e1lTPqEqj4Q+EDO1oOq9WrZkL2KK0XMRprikRXslkOs=;
        b=EqVQe7cyIABjiiuLbea1/9jcqcDjiPgxHDRCOgDx3JS6ucN+A5Or8mpftY3Tl1bape
         XAtPdh38A4DzBXL1wejhYngc9mlpVA4y3weIT5RiU2FJlJvt7SDwrMOfTq6Kca2agMkt
         aNifVsTJ3Iyvnpt+94MkbBcZEoz+LJ3TWRN769R3GBLbJLkwK8f8bUh5eM2Dikbkkdld
         TS8TGuzHoWpR5AWTJSAp6r7e0JdeWMKm37J/EsxWctFYwQdU8QeC3tI3NpHNuQM8vaR9
         LMCJdhJpmp6qFpvfyM/Pum94yFuTsPrLtTumZY5eUfobFqvplQ1IWsRBXzCRXlZMuIzO
         mUFA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@suse.com header.s=susede1 header.b=IO8SsPF+;
       spf=pass (google.com: domain of pmladek@suse.com designates 195.135.220.29 as permitted sender) smtp.mailfrom=pmladek@suse.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=suse.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=e1lTPqEqj4Q+EDO1oOq9WrZkL2KK0XMRprikRXslkOs=;
        b=LvbH0yxUYP+3JciKkQ6ax6AQ9cKj/X+y05Iwt3DQ02tbjXoWWpZGAvtPZ8d/6bDhjP
         lRWamoft5xN5aP6MPczftntXMIqtYB3AG85qjJAKS+B4rCN/xLHAbzaH2USzjIjl37L1
         r2EymEN0/q3VVhQIfYW94RqG/ShpZCnAVMGRkbnWB7QC4Dj5zTB8uElVC19dHtEpz1wo
         PWO2W3AHxw/yz3icu1ct3dUSRCiJ9ksZmA0haSaktFpRAWeszAsktlTAOyh1u4NZclr0
         wJlpT4XOhPxgKOAaX6S1Ya1UYzv877OGpj39a+vJ/+Z/82TxWoNf+32skdw87pgsMOcO
         by2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=e1lTPqEqj4Q+EDO1oOq9WrZkL2KK0XMRprikRXslkOs=;
        b=OMS0z7UrrHRPFQMW3pnon0tdq2jbaIoeKNVamZYk03gATBxgQkHRhrV7vFVhJLg/Sj
         ZJ8vlMd1/LOi0u1+ohwQ8mvgCvaGt/hb8D/sm7qKKVtL3AHHsjsQxYojp6/oIcJPfxpF
         Z9jR6ijDNkQOjs+nwm5Qc1p5yjmum+KLxqUX6wU/1eBiO/S1pMkvFrYq1FQjtfE46arl
         FQyG9zJXDdHGFLxxlszWNrGPXcpNfXFY8RsXG2IMswQIK9Hc7rQLtCvtv2CpRJKFCw4Z
         McK0961e7J2ueaV+KxzSBqaEszCl57iXKvxt1zWKU9TRa2u3UJwkeBauuPF4kEJMvRet
         XWgw==
X-Gm-Message-State: AOAM532VMhzwxn9yy7SBsAvmLADYJMKIqputd/lac8ZvsJiFkKchr81h
	5+bo+DyWg3MLSecppTileXE=
X-Google-Smtp-Source: ABdhPJyVhT0egmBWIg1EOlZ/irQtetULkJKDjan7zJaaxuvS4pNMdIw2huRx4/5vLXutEjpu+0TaOQ==
X-Received: by 2002:a05:600c:1546:: with SMTP id f6mr15642309wmg.47.1623331864964;
        Thu, 10 Jun 2021 06:31:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:600c:1d0e:: with SMTP id l14ls1288105wms.1.canary-gmail;
 Thu, 10 Jun 2021 06:31:04 -0700 (PDT)
X-Received: by 2002:a1c:bb45:: with SMTP id l66mr15258694wmf.29.1623331864136;
        Thu, 10 Jun 2021 06:31:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623331864; cv=none;
        d=google.com; s=arc-20160816;
        b=Nas25jnU2TYEF2RWkZV/zSRW/hnF2r+Lt86uPyZj2+yn6GFx8k4IV5yuPTstWbQw3M
         8INUU+nDR3vrvxf0RkK015xlHnLEvyi3hTcudIwrDcqWtkGuZ0S1LOB1wMudNmGBglTD
         m3wPD25sjREfIC6ScSQUdBT5WixGIi6NCGIzAUzn/jNpYU5wFBgWELtu9IG0xPzbiXuk
         cZBE+KxzhxJ28h2vJfsOkb5KoI8jJFpDOFTiKbVlDE2xEqLMU0XEcH8GE0RaRiw0ba/s
         /cdwp6fPmEi1f57gHg58tptCcqrSOahYwfPaLhod7RI49BVaV9jZNyXzfKqRa128FWx6
         VW0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=KYMt8Qp4PyQjQDF+mlNyloXswUOKD3tVnHig1UUXXjQ=;
        b=mGmgliLj7siSqnk8ggaUg9cuQrER6T28k+Oixg8iO8fWUgWkvGC4S96fRjqo5ZNcoU
         iIAeVTjqv3RSZeHtMPnjZcYMsZ6QsUYK7RAS/aHlFlnR8s7moQMhLjMfthQBPBHYNr52
         hJcr51LfT41GKnlrS/g16wnUvvC7maiQVIayNzea7bS12kWDdP2PYLTfMu+FI0s48V52
         LKw8kx714rSyJfu8LQOugIg1ae7bHO4wRa8q20bwKJ0kCpUKOmA4s1oV0oqt3pcfDwu3
         WiMCLEtYT+twKMshwnz7+SlmKap7yEeW8bObp/feXOkL9oWYeCcnI/ouxJiYNmcUrqS9
         oQ4Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@suse.com header.s=susede1 header.b=IO8SsPF+;
       spf=pass (google.com: domain of pmladek@suse.com designates 195.135.220.29 as permitted sender) smtp.mailfrom=pmladek@suse.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=suse.com
Received: from smtp-out2.suse.de (smtp-out2.suse.de. [195.135.220.29])
        by gmr-mx.google.com with ESMTPS id f143si214298wmf.1.2021.06.10.06.31.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Jun 2021 06:31:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of pmladek@suse.com designates 195.135.220.29 as permitted sender) client-ip=195.135.220.29;
Received: from relay2.suse.de (relay2.suse.de [149.44.160.134])
	by smtp-out2.suse.de (Postfix) with ESMTP id E49551FD3F;
	Thu, 10 Jun 2021 13:31:03 +0000 (UTC)
Received: from alley.suse.cz (unknown [10.100.224.162])
	by relay2.suse.de (Postfix) with ESMTP id A750BA3B8F;
	Thu, 10 Jun 2021 13:31:03 +0000 (UTC)
From: "'Petr Mladek' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Andrew Morton <akpm@linux-foundation.org>,
	Martin Liu <liumartin@google.com>
Cc: Oleg Nesterov <oleg@redhat.com>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Tejun Heo <tj@kernel.org>,
	minchan@google.com,
	davidchao@google.com,
	jenhaochen@google.com,
	clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org,
	Petr Mladek <pmladek@suse.com>
Subject: [PATCH 2/3] kthread: Prevent deadlock when kthread_mod_delayed_work() races with kthread_cancel_delayed_work_sync()
Date: Thu, 10 Jun 2021 15:30:50 +0200
Message-Id: <20210610133051.15337-3-pmladek@suse.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210610133051.15337-1-pmladek@suse.com>
References: <20210610133051.15337-1-pmladek@suse.com>
MIME-Version: 1.0
X-Original-Sender: pmladek@suse.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@suse.com header.s=susede1 header.b=IO8SsPF+;       spf=pass
 (google.com: domain of pmladek@suse.com designates 195.135.220.29 as
 permitted sender) smtp.mailfrom=pmladek@suse.com;       dmarc=pass
 (p=QUARANTINE sp=NONE dis=NONE) header.from=suse.com
X-Original-From: Petr Mladek <pmladek@suse.com>
Reply-To: Petr Mladek <pmladek@suse.com>
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

The system might hang with the following backtrace:

	schedule+0x80/0x100
	schedule_timeout+0x48/0x138
	wait_for_common+0xa4/0x134
	wait_for_completion+0x1c/0x2c
	kthread_flush_work+0x114/0x1cc
	kthread_cancel_work_sync.llvm.16514401384283632983+0xe8/0x144
	kthread_cancel_delayed_work_sync+0x18/0x2c
	xxxx_pm_notify+0xb0/0xd8
	blocking_notifier_call_chain_robust+0x80/0x194
	pm_notifier_call_chain_robust+0x28/0x4c
	suspend_prepare+0x40/0x260
	enter_state+0x80/0x3f4
	pm_suspend+0x60/0xdc
	state_store+0x108/0x144
	kobj_attr_store+0x38/0x88
	sysfs_kf_write+0x64/0xc0
	kernfs_fop_write_iter+0x108/0x1d0
	vfs_write+0x2f4/0x368
	ksys_write+0x7c/0xec

It is caused by the following race between kthread_mod_delayed_work() and
kthread_cancel_delayed_work_sync():

CPU0				CPU1

Context: Thread A		Context: Thread B

kthread_mod_delayed_work()
  spin_lock()
  __kthread_cancel_work()
     spin_unlock()
     del_timer_sync()
				kthread_cancel_delayed_work_sync()
				  spin_lock()
				  __kthread_cancel_work()
				    spin_unlock()
				    del_timer_sync()
				    spin_lock()

				  work->canceling++
				  spin_unlock
     spin_lock()
   queue_delayed_work()
     // dwork is put into the worker->delayed_work_list

   spin_unlock()

				  kthread_flush_work()
     // flush_work is put at the tail of the dwork

				    wait_for_completion()

Context: IRQ

  kthread_delayed_work_timer_fn()
    spin_lock()
    list_del_init(&work->node);
    spin_unlock()

BANG: flush_work is not longer linked and will never get proceed.

The problem is that kthread_mod_delayed_work() checks work->canceling
flag before canceling the timer.

A simple solution is to (re)check work->canceling after
__kthread_cancel_work(). But then it is not clear what should be returned
when __kthread_cancel_work() removed the work from the queue (list) and
it can't queue it again with the new @delay.

The return value might be used for reference counting. The caller
has to know whether a new work has been queued or an existing one
was replaced.

The proper solution is that kthread_mod_delayed_work() will remove
the work from the queue (list) _only_ when work->canceling is not set.
The flag must be checked after the timer is stopped and the remaining
operations can be done under worker->lock.

Note that kthread_mod_delayed_work() could remove the timer and then
bail out. It is fine. The other canceling caller needs to cancel
the timer as well. The important thing is that the queue (list)
manipulation is done atomically under worker->lock.

Fixes: 9a6b06c8d9a220860468a ("kthread: allow to modify delayed kthread work")
Reported-by: Martin Liu <liumartin@google.com>
Signed-off-by: Petr Mladek <pmladek@suse.com>
---
 kernel/kthread.c | 35 ++++++++++++++++++++++++-----------
 1 file changed, 24 insertions(+), 11 deletions(-)

diff --git a/kernel/kthread.c b/kernel/kthread.c
index 121a0e1fc659..0fccf7d0c6a1 100644
--- a/kernel/kthread.c
+++ b/kernel/kthread.c
@@ -1120,8 +1120,11 @@ static void kthread_cancel_delayed_work_timer(struct kthread_work *work,
 }
 
 /*
- * This function removes the work from the worker queue. Also it makes sure
- * that it won't get queued later via the delayed work's timer.
+ * This function removes the work from the worker queue.
+ *
+ * It is called under worker->lock. The caller must make sure that
+ * the timer used by delayed work is not running, e.g. by calling
+ * kthread_cancel_delayed_work_timer().
  *
  * The work might still be in use when this function finishes. See the
  * current_work proceed by the worker.
@@ -1129,13 +1132,8 @@ static void kthread_cancel_delayed_work_timer(struct kthread_work *work,
  * Return: %true if @work was pending and successfully canceled,
  *	%false if @work was not pending
  */
-static bool __kthread_cancel_work(struct kthread_work *work, bool is_dwork,
-				  unsigned long *flags)
+static bool __kthread_cancel_work(struct kthread_work *work)
 {
-	/* Try to cancel the timer if exists. */
-	if (is_dwork)
-		kthread_cancel_delayed_work_timer(work, flags);
-
 	/*
 	 * Try to remove the work from a worker list. It might either
 	 * be from worker->work_list or from worker->delayed_work_list.
@@ -1188,11 +1186,23 @@ bool kthread_mod_delayed_work(struct kthread_worker *worker,
 	/* Work must not be used with >1 worker, see kthread_queue_work() */
 	WARN_ON_ONCE(work->worker != worker);
 
-	/* Do not fight with another command that is canceling this work. */
+	/*
+	 * Temporary cancel the work but do not fight with another command
+	 * that is canceling the work as well.
+	 *
+	 * It is a bit tricky because of possible races with another
+	 * mod_delayed_work() and cancel_delayed_work() callers.
+	 *
+	 * The timer must be canceled first because worker->lock is released
+	 * when doing so. But the work can be removed from the queue (list)
+	 * only when it can be queued again so that the return value can
+	 * be used for reference counting.
+	 */
+	kthread_cancel_delayed_work_timer(work, &flags);
 	if (work->canceling)
 		goto out;
+	ret = __kthread_cancel_work(work);
 
-	ret = __kthread_cancel_work(work, true, &flags);
 fast_queue:
 	__kthread_queue_delayed_work(worker, dwork, delay);
 out:
@@ -1214,7 +1224,10 @@ static bool __kthread_cancel_work_sync(struct kthread_work *work, bool is_dwork)
 	/* Work must not be used with >1 worker, see kthread_queue_work(). */
 	WARN_ON_ONCE(work->worker != worker);
 
-	ret = __kthread_cancel_work(work, is_dwork, &flags);
+	if (is_dwork)
+		kthread_cancel_delayed_work_timer(work, &flags);
+
+	ret = __kthread_cancel_work(work);
 
 	if (worker->current_work != work)
 		goto out_fast;
-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210610133051.15337-3-pmladek%40suse.com.
