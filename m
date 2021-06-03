Return-Path: <clang-built-linux+bncBC53FPW2UIOBBM7W4OCQMGQELEB2HPQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x539.google.com (mail-ed1-x539.google.com [IPv6:2a00:1450:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id C6BA739A50E
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Jun 2021 17:54:27 +0200 (CEST)
Received: by mail-ed1-x539.google.com with SMTP id j26-20020aa7ca5a0000b029038ffacf1cafsf3485676edt.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Jun 2021 08:54:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622735667; cv=pass;
        d=google.com; s=arc-20160816;
        b=WY/0IQkhzC8MMC1TLknYRJ0tZT9ELQrj1/I+NSHDQR3hofuM2F/JtyiVkRWgV11Cv+
         SCpepIKdyNklGam4ChdaaIwfyQS7Up2JGEG/D/eKUSYhEPyAS9fwhTPlmjsc4f179y6L
         bMau7FMGyhsDkmWOttbqFG/ShL7ZQDZ6U7HDUu1YPZr11eMzVCAeiBzRjUTeeV5WOHHN
         c57g9QtdZ7I7TtUVDmRaGf0/Hin0XqI5t6GK0y95XPJfk+qchj6ZKlwsHEOVg3SWpUUl
         Wnl8hgWPYGUar/BojP4K5dmaDoqj2T6h1jyMg5F5hNW2NwnoM/XZZhv+PzdD1jISiud4
         f42w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=QlUvXNx0Yq/MYJZkuypo0TEipMD4tJwsgJemKdOpsAs=;
        b=gcoGE6DiErNaLWfD+1z1Sa58WgNNWyZyVlgdp5IJ1sXkv+o1V/NNT6plP0Wa5xaRlK
         Xdk1GEwk3fIyFfkqH1h/iFUKkbSNAtg4p3mzjUYy0cXjgoVIu91TF1L2y8+IxtmWrwmE
         MYF2UVySl3jefkD3bQJQDZ+cGrTVYD5ERN0b16grannh1inztLtZwrOxO+YlkxJXKMvn
         uGHH5ykV6/Od5+3hB6DytpvRbWzrcjBuGgoYIZ+WiZKkhQ/4EnbcqUtH5kj+RymvojYF
         3WqbUi7OjJIsOkzwADj7S97QwlRAAE5+sdGJnThLQIAlLlBHg5cU06gLyzLC/oqck4Vd
         icxg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QXKKkyGM;
       spf=pass (google.com: domain of jarmo.tiitto@gmail.com designates 2a00:1450:4864:20::231 as permitted sender) smtp.mailfrom=jarmo.tiitto@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QlUvXNx0Yq/MYJZkuypo0TEipMD4tJwsgJemKdOpsAs=;
        b=WN1IkGoL0zncm/B7I3xwVEQuGtFX2SMc0uE5NdHQgCQjA2mEr9CfQv3/Ql6Lkz3Pj+
         1brmUJRo3s9MnJy9KZu4oj8nxTp7aVgi+SytFJblJV6Om9+hHUL0iJ2h9nlCSJbCCf24
         +W5I6ac6xpr6b64TZN6DRSDxBl3qS7sZF+NI9kgUgf+vUfg4I2Smv+Oj01tTAMiFJcpH
         WtbieGFfe3VZtXaFvwja47d/VZUif5DyEcO805b00Jg2NDR7nERNhga0u2VJGFrJeiS6
         gOx3++f+Wz7IF0y8tVF6Kjwph5HIn5ATmwB/pYa27rGVuifgnAhK2+ouN9BW3AkjZtLv
         kw+g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=QlUvXNx0Yq/MYJZkuypo0TEipMD4tJwsgJemKdOpsAs=;
        b=iuMRUUnpgwu80HQFywFWNj45hvIYSarWkKrA/Jyt8/pYd5D416yMfUy84iBra5sPho
         5zklK/WJIEof6W5uGD3yJJq8r+2C71bQcfapnx2yJqqtzUI3awPNxWT9EVNnUyPLXMpF
         5MtKnrI1P6KkYpVDAU2yfM5qNndZ1YfLZ/jTwVwJEJ2LRyIwNhuIvmOFYhDyKSxC7OIM
         fhKh32epNcGs8oS+wpVc3s1O/oYjL9cgh1veKOWb0EnbTufuENad8qZUTA/4DehntZms
         gsSyYM8FXQvOlJDEQgJX+poeDWH+c1cHuZVWdLNXWY7gQR0bKM6+uQOucWCQiZtxJapy
         L6Mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=QlUvXNx0Yq/MYJZkuypo0TEipMD4tJwsgJemKdOpsAs=;
        b=umD+78NAf2HO8vxR5rkmhfjt6DVCPnZUdb517n1JVDR/rUbrnBdsu+3QccUbxya28C
         CwMqw6CzjGLIt7+6Wi0hBuOZsQOzCr5lSs1hFzedhUMpHwZFmvy3Qss5AbDf6MKWgbSU
         ETUTV1zQ8A7psUxMlmrR1HfuUfm1qk1xN/kuBBSgs3HWnb30gk+PtFG2j+S2Wlu9gHXK
         uu3DscITEPwV7ZikNoHNJTDreDWxcQFWLZ4KgnZyODWU8cuw+VgOhuQ9iUY7wjg4jRGQ
         zUdE+fsCRm2EOYy/KUfKP/6wgonzaVJdETNmvwYWs7UsBKPkW3lnTNyl5a2KKs7TDvUm
         mIJQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530DjBnfMPi8FuUpAgTus9auA1W5cA89g7tPfxI3Vi7fwKvXg+lr
	rq2ZnqFF1+wmzxWoNqHWZKM=
X-Google-Smtp-Source: ABdhPJwC6wD5Ea1NQjWMKOPAiZ13jhdEfn/DutOCMZtFQ3aUucQKHL0W61NeRxempZ21+uBJX4WaTg==
X-Received: by 2002:aa7:de10:: with SMTP id h16mr192342edv.154.1622735667233;
        Thu, 03 Jun 2021 08:54:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6402:1c97:: with SMTP id cy23ls3226394edb.0.gmail; Thu,
 03 Jun 2021 08:54:26 -0700 (PDT)
X-Received: by 2002:a05:6402:b6f:: with SMTP id cb15mr159790edb.25.1622735666295;
        Thu, 03 Jun 2021 08:54:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622735666; cv=none;
        d=google.com; s=arc-20160816;
        b=vNPoI+lthNswzLiP9jy9yiyJflX7yvuN1Ajil3MawwERZl4dGofClg+3cicMRNyjdL
         VKLzzaGJPs+zQkUYSmdH6+z1nvjPfAIFkt7SLXiRaQoVIcenJhdiDPDB/SSpCvGqFde8
         N8Tiy8m/zQD3h8ZBf2CZezoo+NsS/7qy6d27oIJo/JoroBoof9X6jLt33OiAu5iY0F1m
         IwTHgLr6xGFlz+Jwm8AqtFPXX7F6gtwgiRMYjaDvIhwrnC0GRzWZqxxTHYVRyDkFxo03
         tGVb/bkXZgvMBuRh6f6Aty3m8H1sywxZlJNEJfEyfsbLGOGLXu2MEMOkEF4veKNpkM55
         DFlw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=KnUxfFc49U1kaTX0xn6lq4EXnbOa1XnWH3SflMbe0J0=;
        b=h0E26+TolcjkxAoJttPxdwud9cXC2XzPODK4uqAlAt8PTj+ajThARAQFISG6jENmk/
         QYeJT19YaLu4sU+IyUlBqi8KQmgltg4iSr/pLfWlCokz+1Ag75UMiKkBHVFtJb5DHWJj
         yvImOr23xWaWq8ghizKwX0fEN8mspCDwhGYFTQadY5jcJ5SSqQVQIaVp7xZ8rJe6yRy9
         oTAOLgPYD65caLc3zLrnr6xAkG/xwJcYItllJpIKUo0SlI0JM8SAosdo8Nwsj4MksRUz
         NS/RZp4NE5svkITuLgbt4d8+LkdR495svw1F5IkaDRCmw77WChDoEoCi59tWbsf6e3ji
         pDOA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QXKKkyGM;
       spf=pass (google.com: domain of jarmo.tiitto@gmail.com designates 2a00:1450:4864:20::231 as permitted sender) smtp.mailfrom=jarmo.tiitto@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com. [2a00:1450:4864:20::231])
        by gmr-mx.google.com with ESMTPS id f16si192467edy.0.2021.06.03.08.54.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Jun 2021 08:54:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of jarmo.tiitto@gmail.com designates 2a00:1450:4864:20::231 as permitted sender) client-ip=2a00:1450:4864:20::231;
Received: by mail-lj1-x231.google.com with SMTP id bn21so7792635ljb.1
        for <clang-built-linux@googlegroups.com>; Thu, 03 Jun 2021 08:54:26 -0700 (PDT)
X-Received: by 2002:a05:651c:50f:: with SMTP id o15mr57865ljp.452.1622735666031;
        Thu, 03 Jun 2021 08:54:26 -0700 (PDT)
Received: from HyperiorArchMachine.bb.dnainternet.fi (dcx7x4yb9bh06yk5jm2qt-3.rev.dnainternet.fi. [2001:14ba:14f7:3c00:3d09:bda0:2327:559b])
        by smtp.gmail.com with ESMTPSA id a20sm401857ljn.94.2021.06.03.08.54.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Jun 2021 08:54:25 -0700 (PDT)
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
Subject: [PATCH v2 1/1] pgo: Fix sleep in atomic section in prf_open()
Date: Thu,  3 Jun 2021 18:53:17 +0300
Message-Id: <20210603155318.46346-1-jarmo.tiitto@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Original-Sender: Jarmo.Tiitto@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=QXKKkyGM;       spf=pass
 (google.com: domain of jarmo.tiitto@gmail.com designates 2a00:1450:4864:20::231
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

Since we can't vzalloc while holding pgo_lock,
split the code into steps:
* First get buffer size via prf_buffer_size()
  and release the lock.
* Round up to the page size and allocate the buffer.
* Finally re-acquire the pgo_lock and call prf_serialize().
  prf_serialize() will now check if the buffer is large enough
  and returns -EAGAIN if it is not.

New in this v2 patch:
The -EAGAIN case was determined to be such rare event that
running following in a loop:

$cat /sys/kernel/debug/pgo/vmlinux.profraw > vmlinux.profdata;

Didn't trigger it, and I don't know if it ever may occur at all.

Signed-off-by: Jarmo Tiitto <jarmo.tiitto@gmail.com>
---
 kernel/pgo/fs.c | 52 ++++++++++++++++++++++++++++++++++++-------------
 1 file changed, 38 insertions(+), 14 deletions(-)

diff --git a/kernel/pgo/fs.c b/kernel/pgo/fs.c
index ef985159dad3..9afd6f001a1b 100644
--- a/kernel/pgo/fs.c
+++ b/kernel/pgo/fs.c
@@ -24,13 +24,14 @@
 #include <linux/module.h>
 #include <linux/slab.h>
 #include <linux/vmalloc.h>
+#include <linux/mm.h>
 #include "pgo.h"
 
 static struct dentry *directory;
 
 struct prf_private_data {
 	void *buffer;
-	unsigned long size;
+	size_t size;
 };
 
 /*
@@ -213,6 +214,7 @@ static inline unsigned long prf_get_padding(unsigned long size)
 	return 7 & (sizeof(u64) - size % sizeof(u64));
 }
 
+/* Note: caller *must* hold pgo_lock */
 static unsigned long prf_buffer_size(void)
 {
 	return sizeof(struct llvm_prf_header) +
@@ -225,18 +227,21 @@ static unsigned long prf_buffer_size(void)
 
 /*
  * Serialize the profiling data into a format LLVM's tools can understand.
+ * Note: p->buffer must point into vzalloc()'d
+ * area of at least prf_buffer_size() in size.
  * Note: caller *must* hold pgo_lock.
  */
-static int prf_serialize(struct prf_private_data *p)
+static int prf_serialize(struct prf_private_data *p, size_t buf_size)
 {
 	int err = 0;
 	void *buffer;
 
+	/* get buffer size, again. */
 	p->size = prf_buffer_size();
-	p->buffer = vzalloc(p->size);
 
-	if (!p->buffer) {
-		err = -ENOMEM;
+	/* check for unlikely overflow. */
+	if (p->size > buf_size) {
+		err = -EAGAIN;
 		goto out;
 	}
 
@@ -259,27 +264,46 @@ static int prf_open(struct inode *inode, struct file *file)
 {
 	struct prf_private_data *data;
 	unsigned long flags;
-	int err;
+	size_t buf_size;
+	int err = 0;
 
 	data = kzalloc(sizeof(*data), GFP_KERNEL);
 	if (!data) {
 		err = -ENOMEM;
-		goto out;
+		goto out_free;
 	}
 
+	/* get buffer size */
 	flags = prf_lock();
+	buf_size = prf_buffer_size();
+	prf_unlock(flags);
 
-	err = prf_serialize(data);
-	if (unlikely(err)) {
-		kfree(data);
-		goto out_unlock;
+	/* allocate, round up to page size. */
+	buf_size = PAGE_ALIGN(buf_size);
+	data->buffer = vzalloc(buf_size);
+
+	if (!data->buffer) {
+		err = -ENOMEM;
+		goto out_free;
 	}
 
+	/* try serialize and get actual
+	 * data length in data->size
+	 */
+	flags = prf_lock();
+	err = prf_serialize(data, buf_size);
+	prf_unlock(flags);
+
+	if (err)
+		goto out_free;
+
 	file->private_data = data;
+	return 0;
 
-out_unlock:
-	prf_unlock(flags);
-out:
+out_free:
+	if (data)
+		vfree(data->buffer);
+	kfree(data);
 	return err;
 }
 

base-commit: 5d0cda65918279ada060417c5fecb7e86ccb3def
-- 
2.31.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210603155318.46346-1-jarmo.tiitto%40gmail.com.
