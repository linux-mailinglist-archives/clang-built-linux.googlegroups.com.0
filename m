Return-Path: <clang-built-linux+bncBC53FPW2UIOBBQNW66CQMGQEC3V2M5Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13c.google.com (mail-lf1-x13c.google.com [IPv6:2a00:1450:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id 1414239D78A
	for <lists+clang-built-linux@lfdr.de>; Mon,  7 Jun 2021 10:39:30 +0200 (CEST)
Received: by mail-lf1-x13c.google.com with SMTP id f15-20020a0565123b0fb02902fa2f95ec06sf2485983lfv.22
        for <lists+clang-built-linux@lfdr.de>; Mon, 07 Jun 2021 01:39:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623055169; cv=pass;
        d=google.com; s=arc-20160816;
        b=az6CArsJPYbT5sUmUkM2TQ6Gcxe93JyMeIrnM1nyQ1wl5MJWSHocQbOMR2XQtAPTp3
         MMzf/3Z4ioWqZivKYIUDxdDahFUK2aTGjAUPd6rsrDTStqvduDU+8YH7k+nsTO1yBchE
         iEDXHpm9qdJUQBPqselNg8NIaHIZjD2DrVd29rYbfuA5Wq6+ZhD5jG4blvyV8e75meuL
         x+HX6LCeqUea3UZqWBA50X+fQLtSOmcHTXE/jG+ZtkgBA8d0ycI7bBrWHTmDWQ/BTU3M
         9VxusS31S5jPKDKc06QQYHF1d80h4hgfm9kYgiazgw5SU6iauVtC2n+5ZPMskwPhqOdo
         npaw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=0dz1J0es62ApfsbFp0KvTY/PBieVOPgLquFOglbAaBE=;
        b=In/0MTwMChQFPAqyqnMqFXLluj+/81JmQrBPijoP76lqP9omsG4TlS5B7zdOI0H1tz
         xKEXu9N8Ru/MQQY9oGPESeoDzYBiNFbHDPSgp4QSBlcbfjSNN1O4F+q6cs7nJM0GGy/j
         RM9Hp0Wq485p16Ho+oPYF7a6kgvWb/b4W869A2ReycizRmYvJe+BVBA9l42AUpBuA4Nr
         lKEcpM8n9OgMr+JMzCUM9Rhc7ZYwvmbIdxBpOl07WQQH+RhyH1S6id5opxzKPO+avtJQ
         x7qg2jI5CPOgWHg7tKt5k0fwF6zuqaflFNPOK8svqaRbMkagXU46t8CNoxVf/T+EgeJg
         Ry7Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BUYy7+bP;
       spf=pass (google.com: domain of jarmo.tiitto@gmail.com designates 2a00:1450:4864:20::129 as permitted sender) smtp.mailfrom=jarmo.tiitto@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0dz1J0es62ApfsbFp0KvTY/PBieVOPgLquFOglbAaBE=;
        b=OuTjZnQ9zo4WKf4a9xccD+9g4xD9reGhPvZwJ7DO/yyy2/F6p49d/4Z2SV06A8XMnr
         RvOnkvSHE8LID2usxeOt+0Gmfr3VEBs9XgtBhr33NrOc1aQVb+amB+DGrcBhF3l6GV00
         cBAaEcBLLRAFu+m1zJsg8a3zeUZ4fN2xopN01OGKgfmun+TeKyH4EPAmqNxexmNaLkYp
         hazb8+RL32U1+q5FV2v5EML3uo6tfG1k1+9+kYeNikYYuju7xNUeh0eIKUrB39lv8VZu
         Mrknno0v7DDiNL9mjC2LnQoaliW76z2HzEFVyJcaZJogG27RAEoMPPfbnattAw8x6wxp
         sX+Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0dz1J0es62ApfsbFp0KvTY/PBieVOPgLquFOglbAaBE=;
        b=rrDUZlfndK/4LY9wIro3LiGEr/lOpPqReIdrcnHeVD08k/cEG9BhgIJMw6io8I0cv4
         8jYCDJHVZ5i3ONEqYYKkMAPou3e1ghqBBNmqfZQLGlHxxCpZXpzOuk/3Rzp5tpzmduQ2
         ye0AQd7v2x/wR7zPnCLXjbANobdFMsPstE4qdxOf8X7oHMmQJUbzQqEy4Vh3xc0AfgLX
         B1Itcz3D7QhG0WnwFI0Mm2XhnhpLNubFFc6Py4qi0FalcPQSZE45vb3z49GTpO6YQbKx
         C/aSwnzbBg/ZYE5IqdupgWM4BZxegUoiVJOwgbM+Cg96PVIS1Xl/J+acj3tmyoID1r8m
         owvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0dz1J0es62ApfsbFp0KvTY/PBieVOPgLquFOglbAaBE=;
        b=AbLOUXj1a/S/rRg18uRYLH8JQS1NzyGFAmObSoR+bu0Y1mrc6GLbWLi9Zsc6aL1zHf
         rnqJebHaargLD3RGwjsLhu5C6ieVTjNYbMOdhKqUG4i3hG/AwURnvFsRYAF7geT+zVfX
         4Wxu59twSUwz1W2DH0gVIxaAVvU6p8Kbzl1n/+9GYzSMxvah7+rQTHO4R8PmVrVNKo5r
         COffbAhEOEKGwnWTytJt7ImbrfPum4f18Y+UXpGtyQ37yufTyacv8cZZDTp9uPHW9Sro
         VST8JtvzVtb7gcvO9Le7QuxE9jaXPp9CVlNlFuIYwbptvUS+HvzudqVjCSrkLX8j7nnq
         TQfA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532FQVL7Ahtu0ew0bUbho8539jpGpSMkCjAfSRJ3Px40CIfdHH2C
	pFEL6gikLRXhtS78/kVEYNs=
X-Google-Smtp-Source: ABdhPJwX+Xg1zQojNg/m9vjcc487PzzFESJr09colXVvq2AN3f6VPkc6h9o1DxF7IUI/5O0T43XlIQ==
X-Received: by 2002:a2e:b4b0:: with SMTP id q16mr13853726ljm.434.1623055169497;
        Mon, 07 Jun 2021 01:39:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:3f94:: with SMTP id x20ls3914796lfa.0.gmail; Mon,
 07 Jun 2021 01:39:28 -0700 (PDT)
X-Received: by 2002:ac2:4219:: with SMTP id y25mr11230786lfh.400.1623055168473;
        Mon, 07 Jun 2021 01:39:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623055168; cv=none;
        d=google.com; s=arc-20160816;
        b=jlQDTHzNE8kQtTLB/m6EZAJAhcdaoM6xT9+zSHc/L4qI1CrKPNgeVFRqRJE52eftns
         0lTidWhJZSIYn3tOlOHdr3AuXdy8xeX0dQHRItqy6HmiEdjOLzjpEWEthL0S42+oBqnm
         GXvfzvyXnXFhe9TWewx5uvC/Dgc4ln1Gk3ZpkmyID/ySAUJz4JiHpjjv+hTCLC1B11BW
         OfmzWu5eSEeUjZ7s/b58Ioxd30iJI2IwFg7YVD7vX6yN0hk3QwiEZBcwjQKgHisNxAZ5
         /qoeb7ifgoo6BjiSUmUBoWd+a8LZBIDevB3QR6RpjsASA7LkX1mrpHN+3GKzIFNvyZ/8
         w5/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=23fli3JLo9FlGzs0nLGuTkx8ubyTMyqY3LmXa7zU2Yg=;
        b=khm6iAmHNKcxfz2jqe/clFxowzpI3+Pzi2KliEjNVGi96rqGYDRiltVl+4QMmhp3dE
         pt8HY5FBT8jPvzyq6kY637xdBMRk7znu+LSqLRi/Rn8ep/VEwuZgETC96ruAc8QYbC6G
         KcuuCdhcHo75Q0+R4U/2iPocq5wmBm6A7wxAYSzt8tBRlYUcFmKOVPsbt6rBURUbEfAH
         0uTvLa2rp5vK8ckO+ny04VdziUtC+B66KYxWMHpPOmMz3asNLzYl4LoAMIJeph5Zpi5R
         9L0Pf0kLe2P9L3YBiGO/Won9p+b/c86W12OE/QihbSAf+wSDBDAopRMhZVRomMb0jvze
         4OqA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BUYy7+bP;
       spf=pass (google.com: domain of jarmo.tiitto@gmail.com designates 2a00:1450:4864:20::129 as permitted sender) smtp.mailfrom=jarmo.tiitto@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com. [2a00:1450:4864:20::129])
        by gmr-mx.google.com with ESMTPS id b12si591568lfb.9.2021.06.07.01.39.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Jun 2021 01:39:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of jarmo.tiitto@gmail.com designates 2a00:1450:4864:20::129 as permitted sender) client-ip=2a00:1450:4864:20::129;
Received: by mail-lf1-x129.google.com with SMTP id a1so15236899lfr.12
        for <clang-built-linux@googlegroups.com>; Mon, 07 Jun 2021 01:39:28 -0700 (PDT)
X-Received: by 2002:a05:6512:374b:: with SMTP id a11mr10947922lfs.377.1623055168235;
        Mon, 07 Jun 2021 01:39:28 -0700 (PDT)
Received: from hyperiorarchmachine.localnet (dcx7x4ycc2b7s--vdqzfy-3.rev.dnainternet.fi. [2001:14ba:14f7:3c00:42b0:76ff:fe23:6d08])
        by smtp.gmail.com with ESMTPSA id a24sm1409271lfi.272.2021.06.07.01.39.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Jun 2021 01:39:27 -0700 (PDT)
From: jarmo.tiitto@gmail.com
To: Sami Tolvanen <samitolvanen@google.com>, Bill Wendling <wcw@google.com>, Kees Cook <keescook@chromium.org>, Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org
Cc: Jarmo Tiitto <jarmo.tiitto@gmail.com>, morbo@google.com
Subject: [PATCH v3 1/1] pgo: Fix sleep in atomic section in prf_open() v3
Date: Mon, 07 Jun 2021 11:39:26 +0300
Message-ID: <7663387.FLTpLEsnjC@hyperiorarchmachine>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: Jarmo.Tiitto@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=BUYy7+bP;       spf=pass
 (google.com: domain of jarmo.tiitto@gmail.com designates 2a00:1450:4864:20::129
 as permitted sender) smtp.mailfrom=jarmo.tiitto@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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
 BUG: sleeping function called from invalid context at include/linux/sched/
mm.h:201
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
Note: I re-sended this email since it looked like it was lost.
v3: Go back to the loop solution.
    Explained why prf_buffer_size() needs pgo_lock.
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
@@ -213,6 +214,7 @@ static inline unsigned long prf_get_padding(unsigned long 
size)
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
 
@@ -259,27 +265,53 @@ static int prf_open(struct inode *inode, struct file 
*file)
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/7663387.FLTpLEsnjC%40hyperiorarchmachine.
