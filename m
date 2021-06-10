Return-Path: <clang-built-linux+bncBDZKHAFW3AGBBGNIRCDAMGQEEAHIMFQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x63e.google.com (mail-ej1-x63e.google.com [IPv6:2a00:1450:4864:20::63e])
	by mail.lfdr.de (Postfix) with ESMTPS id 45FF53A2D13
	for <lists+clang-built-linux@lfdr.de>; Thu, 10 Jun 2021 15:31:06 +0200 (CEST)
Received: by mail-ej1-x63e.google.com with SMTP id am5-20020a1709065685b02903eef334e563sf9024501ejc.2
        for <lists+clang-built-linux@lfdr.de>; Thu, 10 Jun 2021 06:31:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623331866; cv=pass;
        d=google.com; s=arc-20160816;
        b=tvayutk33dwnTuIHfJ+fwH/NSOZumXt+1eO9HDbiN8d5ZgNdwOs3L/fRi5cptFAnAE
         bleo//npQ4cetHXpAQTwqVNXAn3GLGXv/ip/nJrfkIkSsb2D9QavSXxRy6omavBBFwr4
         2qbIAyHZr99VI7NlXtjx5qPmWfrs0diLo2M9ErJZUMfQsXoD8H0M+j86hJaY/sIdmByl
         k2BTqxYqeFsZAQbafvnrEtKVm1V6UIQ1pm56QVQMY2BLiziPNbUUkFKv308Qb3njPUUD
         dBc8OvIvSbqPpN+gXOcBOMtRxsIJA41rTGqm52c5b0FDhofhaX/Ol05AENMCher9iHBr
         SFKA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=4xKUVBPdoc8H6lJJZW/HWVgVXyZV5TG+z0jlpy9oIm4=;
        b=w8+rsMUl0SKmg6lJfTJkF5bARrYcKeOojGa4d2Eqs0QIUdBTFedur6FuaSxSS2rjGw
         W1Nl40ttg5TJB46dAOVTA1uSWXr9/cTkf0xgcd3g5a83PVinM+NXFPXBlF/o8XrwVVYr
         qv4/pXxxn2M1Le4u3dNMncgaOS1pUv3pD+JVAfCsSHdVI8RYLzAT8sgiuweHkByqycZx
         kwtJ7jEuPMn8HJB4DT4Vn9ZulT4MKiXN2Y935pWTdpska2R3J36Z8yXfYv/ry4mZG/GP
         8w9+zi0JG2NpX8FsJmmZUXaBzSsDGy6a4gbi5F/y5zjtZbxz34hlozJrRaslmuW3LdFE
         kAoQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@suse.com header.s=susede1 header.b=dXZlWeOG;
       spf=pass (google.com: domain of pmladek@suse.com designates 195.135.220.29 as permitted sender) smtp.mailfrom=pmladek@suse.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=suse.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=4xKUVBPdoc8H6lJJZW/HWVgVXyZV5TG+z0jlpy9oIm4=;
        b=gOX29njO7VWoLJqUUycgW7CE7fxISHaIIwt1vU0vgQ16nikLRg9hYRvxfjImm0qhCt
         UVM0kt5LtxD+XArHSul0Qa0T8cOxO7Aj/WzllFMDXw/C2C7Fl18WRNygLaupxe44dJve
         GezrHQAszwdfjHmBPP6rpxh37cmic76utHsbRyD84c/0ddDzj9OfLn7CJ3cYToAivaY9
         keDFG1Cf7dXDGE4IbDYHp3GshL1IfSe79MDec1FPl4f8W8Sf6oQu9ucK6yvV4yYsa5SH
         fMSnCIPN4DpCFy10GDlrkZuUM78LnX6FuA0+9cLlPEBPf8Zalxjc+lL8zsIBdICVSgH6
         8aYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4xKUVBPdoc8H6lJJZW/HWVgVXyZV5TG+z0jlpy9oIm4=;
        b=lelnm1sQ+TtUcmgJZ3vbGwkX3dnHt41wY2gU/q/x9+uFgZdLOj0zX2bY4eCPhEtWtX
         A3Iwz+bKfmyy1Ycpj84Vn2unD2uJ7twfSnWaU/npjSJZNonuNfXVeV0UtALTh3sFOQJZ
         b8nQUYtEZAk7IzrEPrrFCJNx/ngfq0Mw1gZedIKy++jI33Sfg20Jt3ohl41ZWNa9q8bo
         nsnSHYtfh5PE4eKm8XxgvKxdvGJnK7dG+oES1okRVfGFS/1AkjQp5lMo/Z4gy2Ln7eyn
         klKLRdWu1ysi1CfvCx6U3wv/WfveqrnxCAc4ALUYELsJ0IFeupKvB9P616Id8pM+3Pw5
         Zo2Q==
X-Gm-Message-State: AOAM532OVEbK0Vd2qXIbxEezS6Y9TblmLIvjsuMxb7ldPDi6VoxAswPo
	lDvtipj2WU9B6InXlK0n91M=
X-Google-Smtp-Source: ABdhPJwLLhQL9sSMdH3Oc6aAxoJPWgN9+jVwBDEck/wgNSAjXg2hXI29fDemfT9b0kQD9R/WM85Vlg==
X-Received: by 2002:a17:906:8810:: with SMTP id zh16mr4417471ejb.268.1623331866078;
        Thu, 10 Jun 2021 06:31:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:1f09:: with SMTP id w9ls2213134ejj.11.gmail; Thu, 10
 Jun 2021 06:31:05 -0700 (PDT)
X-Received: by 2002:a17:907:9618:: with SMTP id gb24mr4590188ejc.111.1623331862440;
        Thu, 10 Jun 2021 06:31:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623331862; cv=none;
        d=google.com; s=arc-20160816;
        b=lGMFqhuStCktPgkfoUgz8LUPaENWjLLCN4m0vI8AXXQIpZEV2+flG6fwVSr/PgmE7q
         HyyKTomItYfWBALJFZ56ipdtXUTUGedv3rT7EVsb1p6musOMH8Z9NGAAK58gDLhmj+s0
         Q2buF0ECtv0sbdHLjVrNnqG/oTKvRmUqZvYjk/QzV6K8T4Jry6xYKa3fJCaM5Pool9Ba
         TWIJ2veYL7++tx/7j/9jG/snfPWpL0vf9qw7mA13jM9FvYOMogTgVHaQlzkEzW7vMwEK
         JHE8zKsi91wsGWCbzk914MdBVuqErBGUZKdD6cQ9K2AjIpdGMAU+desn24wD1/WhGcR/
         /UEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=7s7gQDEbbPDq7VDl9eHrMUvbWRpohvMX+0UnONTmQ4s=;
        b=Wo+1Paf5aay785FYjByTOrynfOeZHPe4ZlhIu+xYoknZtlF79oi1qu/RBJdjJh1BC7
         0h8FLQykyXMUvcoG4VVOt+R53C7w9QF8LmJZzliGI5+FdEjsNPF+JNXwyO4bNHVwA8Mj
         9vTV30IHyp0gsXvs6j2pnjkcnmhFf1Gdku8yW90tbZxGRngMdueGZEou7EMysgEv4IrN
         yeIYsbWibGTSPKvzU8VGGu+fElJc03TRmW6N53stzKjIVoDMaPH47KbEjI8baiIo7Rec
         SZy0LvZ4AIP8ETn/OglVxwX1DNEc8XyApiBUjBIJmZ10J8MnHhS0K/IasT9kq4RhHeti
         ACnw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@suse.com header.s=susede1 header.b=dXZlWeOG;
       spf=pass (google.com: domain of pmladek@suse.com designates 195.135.220.29 as permitted sender) smtp.mailfrom=pmladek@suse.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=suse.com
Received: from smtp-out2.suse.de (smtp-out2.suse.de. [195.135.220.29])
        by gmr-mx.google.com with ESMTPS id w2si176685edi.2.2021.06.10.06.31.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Jun 2021 06:31:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of pmladek@suse.com designates 195.135.220.29 as permitted sender) client-ip=195.135.220.29;
Received: from relay2.suse.de (relay2.suse.de [149.44.160.134])
	by smtp-out2.suse.de (Postfix) with ESMTP id D495A1FD37;
	Thu, 10 Jun 2021 13:31:01 +0000 (UTC)
Received: from alley.suse.cz (unknown [10.100.224.162])
	by relay2.suse.de (Postfix) with ESMTP id 9B4C9A3B9D;
	Thu, 10 Jun 2021 13:31:01 +0000 (UTC)
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
Subject: [PATCH 1/3] kthread_worker: Split code for canceling the delayed work timer.
Date: Thu, 10 Jun 2021 15:30:49 +0200
Message-Id: <20210610133051.15337-2-pmladek@suse.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210610133051.15337-1-pmladek@suse.com>
References: <20210610133051.15337-1-pmladek@suse.com>
MIME-Version: 1.0
X-Original-Sender: pmladek@suse.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@suse.com header.s=susede1 header.b=dXZlWeOG;       spf=pass
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

Simple code refactoring as a preparation step for fixing a race
between  kthread_mod_delayed_work() and
kthread_cancel_delayed_work_sync().

It does not modify the existing behavior.

Signed-off-by: Petr Mladek <pmladek@suse.com>
---
 kernel/kthread.c | 46 +++++++++++++++++++++++++++++-----------------
 1 file changed, 29 insertions(+), 17 deletions(-)

diff --git a/kernel/kthread.c b/kernel/kthread.c
index fe3f2a40d61e..121a0e1fc659 100644
--- a/kernel/kthread.c
+++ b/kernel/kthread.c
@@ -1092,6 +1092,33 @@ void kthread_flush_work(struct kthread_work *work)
 }
 EXPORT_SYMBOL_GPL(kthread_flush_work);
 
+/*
+ * Make sure that the timer is neither set nor running and could
+ * not manipulate the work list_head any longer.
+ *
+ * The function is called under worker->lock. The lock is temporary
+ * released but the timer can't be set again in the meantime.
+ */
+static void kthread_cancel_delayed_work_timer(struct kthread_work *work,
+					      unsigned long *flags)
+{
+	struct kthread_delayed_work *dwork =
+		container_of(work, struct kthread_delayed_work, work);
+	struct kthread_worker *worker = work->worker;
+
+	/*
+	 * del_timer_sync() must be called to make sure that the timer
+	 * callback is not running. The lock must be temporary released
+	 * to avoid a deadlock with the callback. In the meantime,
+	 * any queuing is blocked by setting the canceling counter.
+	 */
+	work->canceling++;
+	raw_spin_unlock_irqrestore(&worker->lock, *flags);
+	del_timer_sync(&dwork->timer);
+	raw_spin_lock_irqsave(&worker->lock, *flags);
+	work->canceling--;
+}
+
 /*
  * This function removes the work from the worker queue. Also it makes sure
  * that it won't get queued later via the delayed work's timer.
@@ -1106,23 +1133,8 @@ static bool __kthread_cancel_work(struct kthread_work *work, bool is_dwork,
 				  unsigned long *flags)
 {
 	/* Try to cancel the timer if exists. */
-	if (is_dwork) {
-		struct kthread_delayed_work *dwork =
-			container_of(work, struct kthread_delayed_work, work);
-		struct kthread_worker *worker = work->worker;
-
-		/*
-		 * del_timer_sync() must be called to make sure that the timer
-		 * callback is not running. The lock must be temporary released
-		 * to avoid a deadlock with the callback. In the meantime,
-		 * any queuing is blocked by setting the canceling counter.
-		 */
-		work->canceling++;
-		raw_spin_unlock_irqrestore(&worker->lock, *flags);
-		del_timer_sync(&dwork->timer);
-		raw_spin_lock_irqsave(&worker->lock, *flags);
-		work->canceling--;
-	}
+	if (is_dwork)
+		kthread_cancel_delayed_work_timer(work, flags);
 
 	/*
 	 * Try to remove the work from a worker list. It might either
-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210610133051.15337-2-pmladek%40suse.com.
