Return-Path: <clang-built-linux+bncBDZKHAFW3AGBBG5IRCDAMGQEQHX6ESA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23c.google.com (mail-lj1-x23c.google.com [IPv6:2a00:1450:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id 776903A2D17
	for <lists+clang-built-linux@lfdr.de>; Thu, 10 Jun 2021 15:31:08 +0200 (CEST)
Received: by mail-lj1-x23c.google.com with SMTP id b44-20020a05651c0b2cb02900ec3242ba00sf1092087ljr.17
        for <lists+clang-built-linux@lfdr.de>; Thu, 10 Jun 2021 06:31:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623331868; cv=pass;
        d=google.com; s=arc-20160816;
        b=Dr6kVOJng8dSJtRtoQHJm/iYShqiRCPS1J8utmGBtk1aLM99FhIRNed4VikpJg6SXE
         GCny/ZHVv7mRSjoVQu+1TFHCKSfwVT96NtIVT6I/F0kqxCVztclJmzms3heodAmsU8Ys
         tqI0ZqANLyGr9Uz+A5c0QbBWNAxhWFtQ9MfTkjpPFAx4Od9t8VvHbE+4xGicQviL3WNo
         QMh2Ri8HrVmK0iWXufD5gAekQLpOlgeIai9RgH9Dq79TofHcNVvuv3aj3N1rliyjQPdN
         GbEvuIE87wOGqHtI6QkaOu8Ug/UfawtXFVYrJ4NyNIJGfahHR7h6BB49MJUTTFihN7Rh
         hnqQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=4s0vOfq7poEutBlO/nJ8FD4yVku3I7b+yzoDjfIt2sM=;
        b=z2uBEWr2XURv2C7suwIWT0GASwAyZJueGn18jGAXT6e+MZy6loNIKfjNlkW0Av9v6C
         cTRwDSzXTPo2eVdXZ/jvd5Yqmdu8bPduwNjD25xPd0vpRYOAL5J3STymbC/1nRVOig86
         dH1Togxcjv84LkgA80Q1dqhvKaVjS1QfHM0+XLa3wespRht95L03bUXd7qmha6OjBFLb
         afkXsAd09zVFuKGfz+G8BWz9+WQcWkY6uvt1R5mTmOclapnYuWz8UwAUrpINdD7Oq53k
         hMKC35t2wQVj4jnqqhy2QBbGbG0U8mnN+bpRg0IakuFrHGkiuUm+wgdRGtxFVPSk0Las
         XbTQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@suse.com header.s=susede1 header.b=KlDFzc8q;
       spf=pass (google.com: domain of pmladek@suse.com designates 195.135.220.29 as permitted sender) smtp.mailfrom=pmladek@suse.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=suse.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=4s0vOfq7poEutBlO/nJ8FD4yVku3I7b+yzoDjfIt2sM=;
        b=sjSw/obyyqXhIB9PB0OT1XhWSf5p1EPFh2Q0M4AOosWbDhst4RX1ii/Uw/xieYBPgI
         2rYTJpNuzGSccQeqY5ctLzM7d+hmWbYJUrir9gdiR78OYxPDHZpiL3sojcJXjocZpxPY
         MyN1TJRXkQSh7ZZ33/DYglL0dp8Yk9whps1ROYSUHzzH0hsqh5zQdl/WOQBlG1JcjBiA
         viLts7TelLejDoYjyy12UqFsnQiGxLUtTYtmcGS6+81z2QDyQ5gpAWjpdvmotPcY/yon
         OzN3PQFta8TbzYFmrtsG1OZq30jtMmxVOFR8w9HfC+0EHJQIGB3EqcOtlnrQIj+3b9zW
         MRFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4s0vOfq7poEutBlO/nJ8FD4yVku3I7b+yzoDjfIt2sM=;
        b=Ghpn3jntiih/kUpbcE6YwI9QDMMH6u39n1Q6kqINb/YKLrLXwBWSBrXbJ+9SMLn2e/
         Y62WEKN7bqQ5Ew/aDXiErcs2FcVHNgKcICtP0hZPBkvn7EGWgoAvtZM/LSQtHAlBhpGU
         THz02j6bi6HBwJEZnOpNX+XAFMqXOAxHTlxDlnczu1SRQgmicYA2SoYospy0S9kmebw5
         r1KAflf6W3nZWtV2Of7s+51alXhWRnV/BG4PUaSDsz03d+REdf0z3tjL7qd0I076b75m
         YzD2Cux/XSuDrR113+u7TfXyd1h4cititPtKFf0jjL5JPpNgkw+7X8xnq3VVcXMZz2h2
         v9+Q==
X-Gm-Message-State: AOAM530Y37v6qtLqxin7cBZufz3vWcuRKD9tppFp18BpXBf8tK/tloeQ
	KZbyWy9iOCDvXKUpHtk2ozg=
X-Google-Smtp-Source: ABdhPJwM/SAsZG/xJyXd/73IhNhT4lzIg0ob2DKk9CcDBbDTbdL2nATCp30DrBSUwpUxRJ4Aa6k38Q==
X-Received: by 2002:a2e:9e1a:: with SMTP id e26mr2268212ljk.265.1623331867944;
        Thu, 10 Jun 2021 06:31:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9617:: with SMTP id v23ls1123487ljh.7.gmail; Thu, 10 Jun
 2021 06:31:06 -0700 (PDT)
X-Received: by 2002:a05:651c:8d:: with SMTP id 13mr2194565ljq.174.1623331866871;
        Thu, 10 Jun 2021 06:31:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623331866; cv=none;
        d=google.com; s=arc-20160816;
        b=mZGZJM3aF0Gn6eQngvI2Fm93Ol29wnE/BRKAcRznN8wMMIj/wrIvDMDFgQh3IKnjMQ
         gsslDCYg12ISepzLolsoizrFUM+H2OazvPGIZSLA1JqXgyuk0yksFKQTdgk2x9BSjR1T
         unq9qLUr3k1N5FxhwDmQZynq5rc0aV+6sGf9p1OXrf/UBDtjkDcSzH1WItxIVFYrUQcR
         sUO/ZxeEyoH7f04O0HBWsdhBcF6eCd+LQL7/BOP9h9NLwfSChFDpoUvIWYqIzdp7WFAJ
         dNd6Bhfq5Mn59dynTVTlvqEPKJeT0LlNEX/wwfwdA3Iih1h1bShpXJFuFGSakQqrnBxu
         E5tg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=UGKyYQMrbAeahE3xhD9fI3AH7oTEeG1ybITAWUSu00U=;
        b=KqUo7Rk/lwUzl4Gy+N3oTAdgHCDf/eKzKcE3ObyFSrD0/KzBH4fX8Y6rm0NFRIg4MP
         HTXMwzKNh3cf5I6dZ980iiIdQWAsKX0TobA+2MQGpY1DKU6oCV5cJjV8Lq5ww6CZLGlX
         b8Ag4/7qoKuejuEdzkkqv4i1PXwuXlzSI8FpLR3Zv/SDSpdMjYUPrO0XwcYf2E3Y6tKk
         OTqrsM2hfWzqW5gJYXljaeD45/FUJNN8m8utRxCWTzS8Aqmvh8jgtS4zMkH8VwC37d2s
         LrFxIcXokYwgfqXs6J5byyaUyzDMkt3V8M+jQYiADQsqe9yuz3v0PA4c5FYnAGchVZYF
         bRfg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@suse.com header.s=susede1 header.b=KlDFzc8q;
       spf=pass (google.com: domain of pmladek@suse.com designates 195.135.220.29 as permitted sender) smtp.mailfrom=pmladek@suse.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=suse.com
Received: from smtp-out2.suse.de (smtp-out2.suse.de. [195.135.220.29])
        by gmr-mx.google.com with ESMTPS id q8si159270ljg.4.2021.06.10.06.31.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Jun 2021 06:31:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of pmladek@suse.com designates 195.135.220.29 as permitted sender) client-ip=195.135.220.29;
Received: from relay2.suse.de (relay2.suse.de [149.44.160.134])
	by smtp-out2.suse.de (Postfix) with ESMTP id 578671FD47;
	Thu, 10 Jun 2021 13:31:06 +0000 (UTC)
Received: from alley.suse.cz (unknown [10.100.224.162])
	by relay2.suse.de (Postfix) with ESMTP id 1C3F1A3B92;
	Thu, 10 Jun 2021 13:31:06 +0000 (UTC)
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
Subject: [PATCH 3/3] kthread_worker: Fix return value when kthread_mod_delayed_work() races with kthread_cancel_delayed_work_sync()
Date: Thu, 10 Jun 2021 15:30:51 +0200
Message-Id: <20210610133051.15337-4-pmladek@suse.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210610133051.15337-1-pmladek@suse.com>
References: <20210610133051.15337-1-pmladek@suse.com>
MIME-Version: 1.0
X-Original-Sender: pmladek@suse.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@suse.com header.s=susede1 header.b=KlDFzc8q;       spf=pass
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

kthread_mod_delayed_work() might race with
kthread_cancel_delayed_work_sync() or another kthread_mod_delayed_work()
call. The function lets the other operation win when it sees
work->canceling counter set. And it returns @false.

But it should return @true as it is done by the related workqueue API,
see mod_delayed_work_on().

The reason is that the return value might be used for reference counting.
It has to distinguish the case when the number of queued works has changed
or stayed the same.

The change is safe. kthread_mod_delayed_work() return value is not checked
anywhere at the moment.

Link: https://lore.kernel.org/r/20210521163526.GA17916@redhat.com
Reported-by: Oleg Nesterov <oleg@redhat.com>
Signed-off-by: Petr Mladek <pmladek@suse.com>
---
 kernel/kthread.c | 19 ++++++++++++-------
 1 file changed, 12 insertions(+), 7 deletions(-)

diff --git a/kernel/kthread.c b/kernel/kthread.c
index 0fccf7d0c6a1..86ae5f2e6db8 100644
--- a/kernel/kthread.c
+++ b/kernel/kthread.c
@@ -1156,14 +1156,14 @@ static bool __kthread_cancel_work(struct kthread_work *work)
  * modify @dwork's timer so that it expires after @delay. If @delay is zero,
  * @work is guaranteed to be queued immediately.
  *
- * Return: %true if @dwork was pending and its timer was modified,
- * %false otherwise.
+ * Return: %false if @dwork was idle and queued, %true otherwise.
  *
  * A special case is when the work is being canceled in parallel.
  * It might be caused either by the real kthread_cancel_delayed_work_sync()
  * or yet another kthread_mod_delayed_work() call. We let the other command
- * win and return %false here. The caller is supposed to synchronize these
- * operations a reasonable way.
+ * win and return %true here. The return value can be used for reference
+ * counting and the number of queued works stays the same. Anyway, the caller
+ * is supposed to synchronize these operations a reasonable way.
  *
  * This function is safe to call from any context including IRQ handler.
  * See __kthread_cancel_work() and kthread_delayed_work_timer_fn()
@@ -1175,13 +1175,15 @@ bool kthread_mod_delayed_work(struct kthread_worker *worker,
 {
 	struct kthread_work *work = &dwork->work;
 	unsigned long flags;
-	int ret = false;
+	int ret;
 
 	raw_spin_lock_irqsave(&worker->lock, flags);
 
 	/* Do not bother with canceling when never queued. */
-	if (!work->worker)
+	if (!work->worker) {
+		ret = false;
 		goto fast_queue;
+	}
 
 	/* Work must not be used with >1 worker, see kthread_queue_work() */
 	WARN_ON_ONCE(work->worker != worker);
@@ -1199,8 +1201,11 @@ bool kthread_mod_delayed_work(struct kthread_worker *worker,
 	 * be used for reference counting.
 	 */
 	kthread_cancel_delayed_work_timer(work, &flags);
-	if (work->canceling)
+	if (work->canceling) {
+		/* The number of works in the queue does not change. */
+		ret = true;
 		goto out;
+	}
 	ret = __kthread_cancel_work(work);
 
 fast_queue:
-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210610133051.15337-4-pmladek%40suse.com.
