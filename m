Return-Path: <clang-built-linux+bncBC53FPW2UIOBBAUH56CQMGQEGWYA73I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43b.google.com (mail-wr1-x43b.google.com [IPv6:2a00:1450:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id F05D439CA83
	for <lists+clang-built-linux@lfdr.de>; Sat,  5 Jun 2021 20:33:38 +0200 (CEST)
Received: by mail-wr1-x43b.google.com with SMTP id e11-20020a056000178bb0290119c11bd29esf982071wrg.2
        for <lists+clang-built-linux@lfdr.de>; Sat, 05 Jun 2021 11:33:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622918018; cv=pass;
        d=google.com; s=arc-20160816;
        b=mghFo3acjSxrQWT9J/HNBJ6X7QY1rVfApEjdCwY68rByQYmMcStl4jTBEK+51qE5Mu
         KqvHNIr/9e9Qd4h8V2SaRcm+qu1Nu/rx1w1EIX5sSMjpm5iH0VAJRRi/WukE6QyuQoGm
         SrwWZCYSTVQJUP6SieUbl9mT5x2tleK1m0io++sFV+YI74uS3oblyRMO59ZlRvU92GYI
         V+BxU1PWzl3Q7yDlJ6ync0rT3XuQZ4fF/vJyQBI7nqq9Q+cWVpdHn4bL33mKeDcchh51
         J7wXxevhXrHrDbB7rdP+wtwikfaxJ2n4WsMh6BcnSeXSBbdlO0KlvlgepYGfVtTi+o1V
         vNRg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=z0THb7pUp1SxR/oXRjNHNoKHYakM6FSccVtaXdPKflI=;
        b=P7iHeIHOvpNiye0AouNDtKK822t0I03fhUw6qYiiWkuzG7U0hltc8KuoI5CVdjTEsl
         RZsmkRpm8GksnJN9cUUbK+Y/rR7/ZlASq7DFHUJsjPBRDn7464KUARtRae76D284OBDO
         BQUgKBCy4mOePS1tOFcMWTAl2BTyv8MxUw7585bVI+1YXI6EDMhQXtFQKax5NEQeOe+4
         MSyjnvbZLOfXW2nT9dftmN/Jzz+gGue1DVaykNQBUc3nw2VNQn3ZqnmjtSOcxryDolaK
         nU6qsNpzYbtKLpBMKZQcddxRKVT9/nGgkAoa84+Nw3wE4nTnmNdktgxvGciYiCYFprwd
         Wp8w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SHZMwxLg;
       spf=pass (google.com: domain of jarmo.tiitto@gmail.com designates 2a00:1450:4864:20::22b as permitted sender) smtp.mailfrom=jarmo.tiitto@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=z0THb7pUp1SxR/oXRjNHNoKHYakM6FSccVtaXdPKflI=;
        b=W2dDAQhnQxvznlxCopWb8AalX83Xai5/5I6Zlheg/7eoo8/dIq3u6v+ZG+IJXoQXLZ
         NUhK4o6EI6hBpr0yR818qWy5mqcpc9XyNRhcIy4jsye8b+otKv1+2Q7Lx7BhlLUcKjXr
         W5pi1V8Fvpp1IW9KNSApgqDLQgwMsFbog3kIE1bQS59qIhew/HhpbsLdhIuAwLwMS1zg
         KTVIt4wK0kitHDJZCG7owjKg93VnKMZ3nD2kXQJg7RPqN3Y3dMvBqzllFEvPrEKq6v6G
         IAqSD87qeiaM4McfLCz+JRSSd/RAiGkGQJmZTX3k7Lf0p6vWvfUIjN6YsQXOLs14TR3x
         BODw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=z0THb7pUp1SxR/oXRjNHNoKHYakM6FSccVtaXdPKflI=;
        b=osqfBdvafVkBwI4gj1Ye9DTGwKAOXmZvdxBu935+WkNDs3B6ANcib1/QOSLqT4G/Lg
         S+h6GsymXOp19e86Y6ZmBF1knUNOaNmVeOOIKEvbvPOGN7CFTLd+LW2+I9Gc649OzXoe
         hgEENEcJLFu1pt+JH4xWv6aLpX6JFf4ONE8icDw7dOt2AEGcoXUjExNTKIsiR0VBPqjd
         1G6rLd6lzR9XVtY50nEmZfJZuEHNN1Yym0FMfkk3aa2RWY60EUfhdfbOMGXouYrwgqdO
         ydzeBf3X2eLNtQYRc0Ye9nG6ZuNB/SE1oDT9dO8w/5QMuDJoC1WCE1cPkGSpMNm9O5/b
         U3Fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=z0THb7pUp1SxR/oXRjNHNoKHYakM6FSccVtaXdPKflI=;
        b=hQeHX/9RHzsxSdxZOKXeITyAnMPGMQpBiLKNyvV9J8UoeuOI6InPdxXLkXlydJAyFh
         SohCjcL1NsyZJYkVMLOMyA7s5al/3h6/98e0n7+kqDhbqEy7DJxV0I1qhyiL/mXrhVbW
         n6ShlEUYWEmizgZM7cv2FDRnohWSNtU6hzFOsPTagEpk8JvrVRVWqSKsoGIGh5mk+B7W
         c2fH7p188W1I2oRcyuZJixmZsvhOlpRO8jDsGKRT5mRnx1SNRzn2y0Os0wr0fpsiDfcS
         3iazl8Y9ElnDxn/S7SkQAZze+lUlz7k5dEBK59p4I8pOw/5rZ4XRGRicXj5dcuxQfabg
         a7Mg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533+CDju9UazMEBqEryDAz7GaB5Fz1TcfiVgT/760tuO9ItGJbWh
	X9i9VDvwIaEp8hIK/uhIkAM=
X-Google-Smtp-Source: ABdhPJyCSXKxtyyNcoGZZLxh7QHn2W+xbqd1FCPQqzVc3lzXb73UmslRXexGumrqN1mB2j7wS2c1MQ==
X-Received: by 2002:adf:fed0:: with SMTP id q16mr9357919wrs.426.1622918018351;
        Sat, 05 Jun 2021 11:33:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:eac1:: with SMTP id o1ls1689436wrn.2.gmail; Sat, 05 Jun
 2021 11:33:37 -0700 (PDT)
X-Received: by 2002:adf:9dd1:: with SMTP id q17mr9380882wre.402.1622918017462;
        Sat, 05 Jun 2021 11:33:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622918017; cv=none;
        d=google.com; s=arc-20160816;
        b=V6BI+fZlBxgP67xLYr3N4TYxkmd11ZM0IMSjaBr3UajXqvdpgF0Pl5OIyY4RiH7Iz2
         gqTqXuwxGKRXzBlcxgdds1NZQZQpncVR84AaO1FaZ8oz7+2lZPF8pRsdALuYXDVAQKn9
         CfRL3VhZoetGFEqI3kGPStLdOYL8F2+KwSHPJ7Eigr/VrMnW70enNqLjeFHv0pJ99Nt2
         Ic0sKiPYuDxkIBpJUZq1Va7upHZxRbuD2ZAncYxoxb8Qnrvsxv/GWZxd+Uw6SsuJ9/7B
         n19At5ss6wxRXQCd03CUNz4IrvGAFzHhOwgJXplbkpjI+W/lPYhEOVaV7ozoiNkngg0h
         i/IQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=Pd7tf3i2pnO2Ok9Tv/vp503TcTB5cBTB11RLxlS7Uv8=;
        b=Katw7C88su2lam1UpczHkeX4Z4y34HtwXu5YHEX0xoM9AkbnrR8ZdaSBZUiH6KD9MN
         G5Biy1HiY7yYpxhUwQkZ6Q++1ij348jE/Vdciqvd5jA/Y6HbHZszXXp8un5DdWKmnt3m
         ZhBWzqldcd2uiw/qdz6drZFn7R1TBrfw1bcsXTmnisKyYzlbnoi0D328zvw3CZRXGRbN
         XtrQ9vaNlLLdFEMrDyUZF4cgWfXzGbG2F8MH2cjjCpeR0rFkLbMoM+UwKJWAXhJB91XK
         ZnaDgFU15FYGR0Lpb7VAnhxLqkYMqMpi7QT1cYT34eFaHFfiMC2NcjiGa1wa1SrVD1td
         Q7wA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SHZMwxLg;
       spf=pass (google.com: domain of jarmo.tiitto@gmail.com designates 2a00:1450:4864:20::22b as permitted sender) smtp.mailfrom=jarmo.tiitto@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com. [2a00:1450:4864:20::22b])
        by gmr-mx.google.com with ESMTPS id h7si672936wml.3.2021.06.05.11.33.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 05 Jun 2021 11:33:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of jarmo.tiitto@gmail.com designates 2a00:1450:4864:20::22b as permitted sender) client-ip=2a00:1450:4864:20::22b;
Received: by mail-lj1-x22b.google.com with SMTP id e2so16069946ljk.4
        for <clang-built-linux@googlegroups.com>; Sat, 05 Jun 2021 11:33:37 -0700 (PDT)
X-Received: by 2002:a2e:2c0a:: with SMTP id s10mr8116155ljs.171.1622918017098;
        Sat, 05 Jun 2021 11:33:37 -0700 (PDT)
Received: from HyperiorArchMachine.bb.dnainternet.fi (dcx7x4ybp09ts--z5-7ry-3.rev.dnainternet.fi. [2001:14ba:14f7:3c00:2cf7:60ff:fe99:fedc])
        by smtp.gmail.com with ESMTPSA id r28sm1142441ljn.96.2021.06.05.11.33.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 05 Jun 2021 11:33:36 -0700 (PDT)
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
Subject: [PATCH v3 1/1] pgo: Fix sleep in atomic section in prf_open() v3
Date: Sat,  5 Jun 2021 21:31:29 +0300
Message-Id: <20210605183128.129614-1-jarmo.tiitto@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Original-Sender: Jarmo.Tiitto@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=SHZMwxLg;       spf=pass
 (google.com: domain of jarmo.tiitto@gmail.com designates 2a00:1450:4864:20::22b
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
* First get initial buffer size via prf_buffer_size()
  and release the lock.

* Round up to the page size and allocate the buffer.

* Finally re-acquire the pgo_lock and call prf_serialize().
  prf_serialize() will now check if the buffer is large enough
  and returns -EAGAIN if it is not.

Note that prf_buffer_size() walks linked lists that
are modified by __llvm_profile_instrument_target(),
so we have to "guess" the buffer size ahead of time.
prf_serialize() will then return the actual data length.

Signed-off-by: Jarmo Tiitto <jarmo.tiitto@gmail.com>
---
v3: Go back the loop solution.
    Explained why prf_buffer_size() need pgo_lock.
    Cleanup the code a bit.
v2: Loopless attempt.
---
 kernel/pgo/fs.c | 62 +++++++++++++++++++++++++++++++++++++------------
 1 file changed, 47 insertions(+), 15 deletions(-)

diff --git a/kernel/pgo/fs.c b/kernel/pgo/fs.c
index ef985159dad3..0ce0dc9caf7a 100644
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
@@ -225,18 +227,22 @@ static unsigned long prf_buffer_size(void)
 
 /*
  * Serialize the profiling data into a format LLVM's tools can understand.
+ * Returns actual buffer size in p->size.
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
 
@@ -259,27 +265,53 @@ static int prf_open(struct inode *inode, struct file *file)
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
 
+	/* get initial buffer size */
 	flags = prf_lock();
+	data->size = prf_buffer_size();
+	prf_unlock(flags);
 
-	err = prf_serialize(data);
-	if (unlikely(err)) {
-		kfree(data);
-		goto out_unlock;
-	}
+	do {
+		if (data->buffer)
+			vfree(data->buffer);
+
+		/* allocate, round up to page size. */
+		buf_size = PAGE_ALIGN(data->size);
+		data->buffer = vzalloc(buf_size);
+
+		if (!data->buffer) {
+			err = -ENOMEM;
+			goto out_free;
+		}
+
+		/*
+		 * try serialize and get actual
+		 * data length in data->size
+		 */
+		flags = prf_lock();
+		err = prf_serialize(data, buf_size);
+		prf_unlock(flags);
+		/* in unlikely case, try again. */
+	} while (err == -EAGAIN);
+
+	if (err)
+		goto out_free;
 
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
 

base-commit: 46773f32ddf1d49a84eca5f19126d6dfaf08e8d9
-- 
2.31.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210605183128.129614-1-jarmo.tiitto%40gmail.com.
