Return-Path: <clang-built-linux+bncBC53FPW2UIOBB6XC32CQMGQEZF6OBFA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13a.google.com (mail-lf1-x13a.google.com [IPv6:2a00:1450:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id C4FB8398FEC
	for <lists+clang-built-linux@lfdr.de>; Wed,  2 Jun 2021 18:27:38 +0200 (CEST)
Received: by mail-lf1-x13a.google.com with SMTP id u4-20020a05651206c4b02902e62b2589a8sf1241784lff.10
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Jun 2021 09:27:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622651258; cv=pass;
        d=google.com; s=arc-20160816;
        b=FwNWSy+c0gvNtCyjkmjw6am0hs0o6Vsohcl94hTvkirmwjP9IMHyWppyE/1CWYDw1i
         aDlqgJ6a9uq3gFfBNHxHh4SCgzrKhAu5v6CqzyHuEPeCuLcZL+fzy+5MHGHtbV7E5kWZ
         xbGIT4ruS5ybDfMnZyXu13oMQwm1PgQhjzeLK8m7cuaXbD8N1J4fl3hlSJt4zjXpr1/0
         QQWtkEW5FE2Wt7sKLDDmjETgU8vXdVlz8ySmRa5lw4OTJNDgYuNPo1ZhnfIHak1qGhj3
         h10TDNKCwPwir9WDefFjk/Aq7jDpgiQwbhgohnBXSp2KkB39I/dWgnyGYFNCM5PKajo5
         Wcww==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=sd4GDe4hLU0EyPyz9ReP9PyM1X7zCWNE87HEjybBjaM=;
        b=L5iAz1tLL6J4qYWMsjXHOiuO3pE3FeaiB4erD+SbW3FTy4TJ8DbaUfPW5NcZWmBEnc
         kmmOKHXQDBdGySkL2nqawCWLW7VIthK4MjuOC1+9/kCVeGEW58fi2m6pHuryYxxNL3JF
         JMJJXZj0e84WXsOW2i69Q30FSKETBwuTw1Jdm/fedqJLqwKNUAxQANUqspkq88XGsPLQ
         qD1/Y0tlsZiRzdgMozmKU8lrXPwvu6NSHqwRHA/Hej/Hoo6mSyjMoy/2xmbImce1qA70
         okNSQIo1BxpvITpAq/YxS9Y1BCWPCXCpMR6i5q9cqoU7uR7Ks7Y8/VSL2g3sawbGOuz/
         KMxg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=I0ITGUCw;
       spf=pass (google.com: domain of jarmo.tiitto@gmail.com designates 2a00:1450:4864:20::230 as permitted sender) smtp.mailfrom=jarmo.tiitto@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sd4GDe4hLU0EyPyz9ReP9PyM1X7zCWNE87HEjybBjaM=;
        b=mds/qYwcwvHr5p9X6VVlVlILwhuIv7I/IWsAmvcb4zQ+9HErVBdmLrvEf9DtuqD9iE
         E1thBdOn/Zpre6IMevoaCAxuIkAkjpx///z7G73axo/XWr4GIlclVyD+ZqWiUxEC6n5L
         CZ2tGSmtjek1KiS/gKFnrY+OTK13hrXxlz+6YQqKwi4R4f8p4l23CPy8q4iLxDSXO37s
         n3S8xggr9pBYzVTuW4T1U3NF9cKBOyOReKPPDXv30sdkosNTFUeMv3GcApSo4HAlXICu
         Fm8jnbUagy0nFV2m/cZIvEG+iiN8DgntK6VoZcFb3jb/EBlTLj1e70FDpIubGdTL7r/6
         8HHA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=sd4GDe4hLU0EyPyz9ReP9PyM1X7zCWNE87HEjybBjaM=;
        b=R0lIMC49qCikfLGtvKcdEeicrq6rUQdAO5ampy/zALbP7utC37kWMe1ZZlADPxQ+U5
         AH/UCO+BMg2YziWj5F/8/rPTKFoMcLernJMtZcCD7xS8nVuR4lG/j2qZXtw4Yf2GBjPt
         TB2W/RprsaZF9hG31FLR+qGzNAwiuT44/gymQ2GuCkLxRuWjfATsCBPGq+hOVs/AeQ5/
         Hc53u7pyusjLWVGbMAzwOto3UpmLP0+msPQFfFuP8iUp0crqq1aw1zdoy2XUQ+0z9euG
         AaRk1rGZgcdcTEg4OzKXai0bztqFP2zti1ofx4FdDxifkkqIvGwG28pBVVHqkuOVjehD
         09lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=sd4GDe4hLU0EyPyz9ReP9PyM1X7zCWNE87HEjybBjaM=;
        b=Kkqgg4BY2sEQU/Q8edV2zUCbslmfOkPgHan/4wHT4VFFVOy2ynVCLeFj1lcXQ8GrtO
         FhzoT/wIWu55MEFMnrqIUsyHzw8TZXL6HCX3C9d2rwmX/efqkk+K+VhMXZGvvPD0/06o
         Wkr+yG/WpjBH9K56N017qWCGKRoKwbHY1pPcNF0dUJX5OwSuZ/hApOBoXqglV5zahkTR
         Xp2MF8Q/Ig1vl4sFyojtLMfsHxFxdjxvLirSToY97EqWzQehTHilJLXpU76fxQ6HmCvA
         Np4fEALTtMMYF3n58dioskwnGEtxl//obvcz8iH5snazYUrp3Yufsh/E54VIdWbjYy5s
         89EA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531TtdJc0aIeLUUBKTNZZOVyX0R4UapLRrn3kd2XVfSkCy7B2lcx
	uSay5ANcVKNj2SOmK2RB9W4=
X-Google-Smtp-Source: ABdhPJygEBb+zd+H5Fi07YxaK4klwPIX2jJyCzBQ8r/4cKQq2KMS3csLO87nFpcTw3qC1TNa9aFSOg==
X-Received: by 2002:a2e:894e:: with SMTP id b14mr3088613ljk.112.1622651258308;
        Wed, 02 Jun 2021 09:27:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:7008:: with SMTP id l8ls69874ljc.4.gmail; Wed, 02 Jun
 2021 09:27:37 -0700 (PDT)
X-Received: by 2002:a2e:85c9:: with SMTP id h9mr7071957ljj.355.1622651257169;
        Wed, 02 Jun 2021 09:27:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622651257; cv=none;
        d=google.com; s=arc-20160816;
        b=UMnPMPopFN2aRFucqWFOKi6dSw0MerAyTr/feCaoLHoCX55sPCLZa8wxwRylAHSpII
         L0X8X7DEnHRB5JqHXpyh5mafOw5YUXNZqnfFydc0rHAJRq6OfLWC9QpYdqLHjZn8rIXR
         hv9CyuQcD5eVhdk4Iniuqrk+rgtMRZNajxMYKAeD163t3rvk3JhaPnSBtg1YPkmajhzV
         iI+9ISU3JZCds/EUUSN6HL+QdBTvbiUe1bNInZW5efbGyqjnYOittxNxLuDCTj5019Qd
         sdZCiOs8hry2j0g95B9gnr1rpNIbD/cL5GxDP/aLfysztu+TsicMMV6/Si86G+Y6qZ+h
         EUTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=2zl14KJtnHBMJGbvmOb00o5AylAgishMt24fY3YGZ1U=;
        b=oQyazOFciYmqutKGSWZuI/Y40XjRUOCCDIiXS6NqqENDak7zQ/iZdsB53DEHMoQOj1
         Znry8bhZljcya2i3ZOzqhrKeZXj6+T3oMNrAsMOMg35LXNZ5eJZwgS1Z8UUEsHekuXzV
         Scwpz/FErdKCQkxxyexwrZCrtGigk7JQ78xXBHsOBI9h95yTFnnEeHVUH5tZW4TToKcG
         Az4ym3y7rPXh7aP5at8BI8yJ63aJ67Uq96kRQfZFi7Ao/iR2by/xnmGZ5dnU6fDA1Yx3
         8il7kLyrTL6soqcihkIeMZFo3mtvirMA54BapezWIAHGVNtyXJPcy97ANlyWEWZpqY3D
         3Bsw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=I0ITGUCw;
       spf=pass (google.com: domain of jarmo.tiitto@gmail.com designates 2a00:1450:4864:20::230 as permitted sender) smtp.mailfrom=jarmo.tiitto@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lj1-x230.google.com (mail-lj1-x230.google.com. [2a00:1450:4864:20::230])
        by gmr-mx.google.com with ESMTPS id h23si19812ljj.1.2021.06.02.09.27.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Jun 2021 09:27:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of jarmo.tiitto@gmail.com designates 2a00:1450:4864:20::230 as permitted sender) client-ip=2a00:1450:4864:20::230;
Received: by mail-lj1-x230.google.com with SMTP id e2so3366985ljk.4
        for <clang-built-linux@googlegroups.com>; Wed, 02 Jun 2021 09:27:37 -0700 (PDT)
X-Received: by 2002:a2e:2d11:: with SMTP id t17mr25330956ljt.56.1622651256972;
        Wed, 02 Jun 2021 09:27:36 -0700 (PDT)
Received: from HyperiorArchMachine.bb.dnainternet.fi (dcx7x4ycc2b7s--vdqzfy-3.rev.dnainternet.fi. [2001:14ba:14f7:3c00:42b0:76ff:fe23:6d08])
        by smtp.gmail.com with ESMTPSA id i21sm37274lfc.65.2021.06.02.09.27.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Jun 2021 09:27:36 -0700 (PDT)
From: Jarmo Tiitto <jarmo.tiitto@gmail.com>
To: Sami Tolvanen <samitolvanen@google.com>,
	Bill Wendling <wcw@google.com>,
	Kees Cook <keescook@chromium.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org
Cc: Jarmo Tiitto <jarmo.tiitto@gmail.com>,
	morbo@google.com
Subject: [PATCH 1/1] pgo: Fix sleep in atomic section in prf_open()
Date: Wed,  2 Jun 2021 19:26:40 +0300
Message-Id: <20210602162640.170752-1-jarmo.tiitto@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Original-Sender: Jarmo.Tiitto@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=I0ITGUCw;       spf=pass
 (google.com: domain of jarmo.tiitto@gmail.com designates 2a00:1450:4864:20::230
 as permitted sender) smtp.mailfrom=jarmo.tiitto@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

In prf_open() the required buffer size can be so large that
vzalloc() may sleep thus triggering bug:

======
 BUG: sleeping function called from invalid context at include/linux/sched/mm.h:201
 in_atomic(): 1, irqs_disabled(): 1, non_block: 0, pid: 337, name: cat
 CPU: 1 PID: 337 Comm: cat Not tainted 5.13.0-rc2-24-hack+ #154
 Hardware name: QEMU Standard PC (Q35 + ICH9, 2009), BIOS 0.0.0 02/06/2015
 Call Trace:
  dump_stack+0xc7/0x134
  ___might_sleep+0x177/0x190
  __might_sleep+0x5a/0x90
  kmem_cache_alloc_node_trace+0x6b/0x3a0
  ? __get_vm_area_node+0xcd/0x1b0
  ? dput+0x283/0x300
  __get_vm_area_node+0xcd/0x1b0
  __vmalloc_node_range+0x7b/0x420
  ? prf_open+0x1da/0x580
  ? prf_open+0x32/0x580
  ? __llvm_profile_instrument_memop+0x36/0x50
  vzalloc+0x54/0x60
  ? prf_open+0x1da/0x580
  prf_open+0x1da/0x580
  full_proxy_open+0x211/0x370
  ....
======

This patch avoids holding the prf_lock() while calling
vzalloc(). Problem with that is prf_buffer_size()
*must* be called with prf_lock() held and the buffer
size may change while we call vzalloc()

So first get buffer size, release the lock and allocate.
Then re-lock and call prf_serialize() that now checks if
the buffer is big enough. If not, the code loops.

Signed-off-by: Jarmo Tiitto <jarmo.tiitto@gmail.com>
---
 kernel/pgo/fs.c | 45 +++++++++++++++++++++++++++++++++++----------
 1 file changed, 35 insertions(+), 10 deletions(-)

diff --git a/kernel/pgo/fs.c b/kernel/pgo/fs.c
index ef985159dad3..e8ac07637423 100644
--- a/kernel/pgo/fs.c
+++ b/kernel/pgo/fs.c
@@ -227,16 +227,15 @@ static unsigned long prf_buffer_size(void)
  * Serialize the profiling data into a format LLVM's tools can understand.
  * Note: caller *must* hold pgo_lock.
  */
-static int prf_serialize(struct prf_private_data *p)
+static int prf_serialize(struct prf_private_data *p, unsigned long *buf_size)
 {
 	int err = 0;
 	void *buffer;
 
-	p->size = prf_buffer_size();
-	p->buffer = vzalloc(p->size);
+	*buf_size = prf_buffer_size();
 
-	if (!p->buffer) {
-		err = -ENOMEM;
+	if (p->size < *bufsize) {
+		err = -EAGAIN;
 		goto out;
 	}
 
@@ -259,6 +258,7 @@ static int prf_open(struct inode *inode, struct file *file)
 {
 	struct prf_private_data *data;
 	unsigned long flags;
+	unsigned long buf_size;
 	int err;
 
 	data = kzalloc(sizeof(*data), GFP_KERNEL);
@@ -267,14 +267,39 @@ static int prf_open(struct inode *inode, struct file *file)
 		goto out;
 	}
 
+	/* note: vzalloc() can be used in atomic section.
+	 * However to get the buffer size prf_lock() *must*
+	 * be taken. So take lock, get buffer size, release
+	 * the lock and allocate.
+	 * prf_serialize() then checks if buffer has enough space.
+	 */
 	flags = prf_lock();
+	buf_size = prf_buffer_size();
 
-	err = prf_serialize(data);
-	if (unlikely(err)) {
-		kfree(data);
-		goto out_unlock;
-	}
+	do {
+		prf_unlock(flags);
+
+		/* resize buffer */
+		if (data->size < buf_size && data->buffer) {
+			vfree(data->buffer);
+			data->buffer = NULL;
+		}
+
+		if (!data->buffer) {
+			data->size = buf_size;
+			data->buffer = vzalloc(data->size);
+
+			if (!data->buffer) {
+				err = -ENOMEM;
+				kfree(data);
+				goto out;
+			}
+		}
+		/* try serialize */
+		flags = prf_lock();
+	} while (prf_serialize(data, &buf_size));
 
+	data->size = buf_size;
 	file->private_data = data;
 
 out_unlock:

base-commit: e1af496cbe9b4517428601a4e44fee3602dd3c15
prerequisite-patch-id: fccc1bd89bbd33af13a4ce9bc3c913e6e3cdecee
prerequisite-patch-id: a2e53c0b44ad39c78ed7bc7aad40d133548a13b5
prerequisite-patch-id: 12f0e468a3d0ff12c7f5bc640f213be3b5dd261b
prerequisite-patch-id: 707b836b1969958b5131dfa1b9f044eae5f4a76a
-- 
2.31.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210602162640.170752-1-jarmo.tiitto%40gmail.com.
