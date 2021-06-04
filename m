Return-Path: <clang-built-linux+bncBC53FPW2UIOBBW5Z5GCQMGQE6ZKVVXA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13f.google.com (mail-lf1-x13f.google.com [IPv6:2a00:1450:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id CFED739BDF2
	for <lists+clang-built-linux@lfdr.de>; Fri,  4 Jun 2021 19:03:25 +0200 (CEST)
Received: by mail-lf1-x13f.google.com with SMTP id l19-20020a0565123333b02902ecf6fa0dd3sf4032217lfe.1
        for <lists+clang-built-linux@lfdr.de>; Fri, 04 Jun 2021 10:03:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622826205; cv=pass;
        d=google.com; s=arc-20160816;
        b=WysgFPJdAL7I49blcUy7HQAmwroqQ4WLYLp2R1EN0dYIFNmj/TTaMr7LJyOBs4ypm9
         Pv+SnQveXvmSHD1NiCH+RYwNgKp6cojDmSjgHLi1wtSVwwp2CbZPNXsSqLZgeLeJG46h
         ypDFoXu5uX2EzAPILZe4wF05WJOXktQw4cgIV7U5J0xD2haHWKYgZWELlbzDck86VxKu
         Eua+0KFDCKUpJs8pk/enpj+FPRXNVyooF19D6BqkSYcf0oaV9GSp4aesemOiRsrUKwvw
         OpeVWltaqLpNEyHc2SijcrRrLC4tWbu+4aEYDgJkaKsyAqcGQMUpUA2rFR037R7HTKy7
         l81g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=MSf9ghQxZF+8m2XG/Y+FdGDlsHy23U2dDFCRui10jO8=;
        b=gZGbNDP95Dc1Ina6spXza8Mx3XhiGyi5YzsL0SzURPzrYUpDOFhmyWNzyL+fMZBN4f
         7nTkDU4goyClhvS1px3vEwFawGI294TIwlNVOjIyOdfdGMmkxRhYK6J1a7xe653tbAtR
         Ul6nHpF49KJcMA99V3n8fJJkPgE/+zXS4gv3TyDWnqP81EfVjeR/GaAdQFOt8WXkbN7e
         hgGzeYw/saNe/xSIt1KjJ1PJ/Pa/KYem2+stQ7JUJeDMw8OwQ/qQJy/rZINHBug7jx1n
         aj6URx9oUyBgQUilTbB6xtt5TX7wRxLXSDWFnPpBHhLzzVBK4i6fuTH7cnMPr4r0Z8sc
         wUBA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nuzaLCUW;
       spf=pass (google.com: domain of jarmo.tiitto@gmail.com designates 2a00:1450:4864:20::12e as permitted sender) smtp.mailfrom=jarmo.tiitto@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MSf9ghQxZF+8m2XG/Y+FdGDlsHy23U2dDFCRui10jO8=;
        b=EGh6kA/QImGQNVxOWfmUjGv7TzsLtyLS2zN+U0UekR1c5q43b+J0oIT7/wCw6u+b8n
         9a160j8Dk1vFS3Ywe0p3UUrzAj8MStODcub43E+DWNrKSA0FuHrON13gFPVCrBpXYyBe
         kFf3vXaciMp1CoDtOgbPw508VaYDa0A83whrLHuub+PkFKFyjsLnn5Degw0twycn+ND4
         og5jbzrCSrwkwsJwEx3shRIeSnas+iOk/JTeVMCrDfL2v/O7mNYj9d47AbLbrM7rCUuP
         JgxFB9HaZNV6ojPj0ZlSbfdLiW+OQLSpv8l4MoCVSWkl7TdZTnnpK1sLUL31wSJSs0x7
         z93g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=MSf9ghQxZF+8m2XG/Y+FdGDlsHy23U2dDFCRui10jO8=;
        b=OjCj/par/xeMiuy9rgxbmmRk3ZLnsvfFr0HDhC2sprbg/mMaoVTfdIQImKI6yU0sTC
         8qywYWYYtVXaZmFAUU0FEtt71+OfdNvL1NnbaA/7KlOMUmPQX8kEx1tuyBgwvdyaMHYv
         4oj/K/AJH6A4MqQsqakzW7bFFe85AA/40d5GKHlk7fLGhcAIJUzH65OtwaTKSBB9eo6F
         Ij8RTrm9KxwklEMtJXV9Phw7ZKW82fnZYwYaTVqojkEonyf+rXICJa9c8lfldGsO8BJS
         nF7DXPiCJnN+i18/zw71W3dOcdyeZJgYpajYtKWpqAX3jey6L3GMh6fAbFo0wAwY1kIw
         dDeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=MSf9ghQxZF+8m2XG/Y+FdGDlsHy23U2dDFCRui10jO8=;
        b=OGzVccidU2nWULnuBoKACk5QW93NYA6So8+4TRxjA8kEf0IGk7aXRgO11uR+/RcyoU
         XiihBxJaZ6ne33Bu/WvXNZA3s5Had8aIDbRyPTjqOUUyNJV/OVSwKDMrfkHDZwaVVG+2
         FanjKg9WLxWKsaS2xu+mqEDDaENQC/HoNoRSeJFw+wgi0+mYK/BpqkUBfbBihLnvFUER
         uV1niUIRtskcbh9bIoEIuRQHzdhwwMuJYxK76u8Iu3LeBiME3rnO+x4DxdVmJbBwSP/B
         QZCy4tkg8V7/flVaVwz92QWp88FCwDj8VjQQlVFa1B117OHyiPo3PgcqiO7Fov1XWveV
         I5rw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5331RLy7DMHSXRZBOTZ8SDb9CKGsQDa2xuqIEULUb88j6fK+irZv
	lip+cL/ylwzqj5mqFMnusW0=
X-Google-Smtp-Source: ABdhPJy9RrtouCsuJrm948fbe42DoV94GeZxKFz8vnVp8n8d50XInKm8zU9EBe/PwJxKkGuhd9KGsA==
X-Received: by 2002:a2e:b528:: with SMTP id z8mr4100574ljm.350.1622826203808;
        Fri, 04 Jun 2021 10:03:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:591:: with SMTP id 139ls1818535ljf.5.gmail; Fri, 04 Jun
 2021 10:03:22 -0700 (PDT)
X-Received: by 2002:a05:651c:550:: with SMTP id q16mr4082263ljp.433.1622826202653;
        Fri, 04 Jun 2021 10:03:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622826202; cv=none;
        d=google.com; s=arc-20160816;
        b=aEufv4bMMPTqhv5HgKZvoVjKhFi1J1Ymha+IARzZteYB75pvOb4e7bBXHdPhGBx9Ew
         Xk8FiHmq2V5GMg3nBYIht01gF4uZklilow8eEMeftF2MRKbloM391QmwCN1bV/MEW8L9
         Gq5sdn2xFg1clHKTOHKuydPgnATONQBDEIu6/jkoZeKMGOSULDs2KvfXvO5kDDpK7TUF
         Yuw6nmvDRfAP+sjHd/qmMrVUH6nzckIT5y5LMtji8NUsIt7R5VBZ7cA6tTPBcG1kXZgN
         OgZYqHPnq4iz64lnr2qJ1V0wpyzyyKWw86gKdGUNZW0veD2EKlh78wp2NiH9svWvBY3B
         qamw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=zOR/sU+r9oeeOAL1RpTyfw06sLPCoIho67jVt49xNeE=;
        b=xniaCjZmzcqocR0ZervMQ9MBKf/PXclzXz3J9zJrDSV+9+WWsThwhpZs52JZHa7Euv
         B9CpTvDsUfC8hBN59YzF0xigx8EtCBeRVrJTEw/TSI4KkPMo+G8GwVXvFtFrTnmN8qmo
         Y4Y5EGEs7NIUE/YagIPx7WdntO8H+HqYbxE+LRiD5oLMkJf3jZeCu15FY0/Nt7jzGPRE
         R1qVX6BIB0QvAxJJMuwUZWj+KzSOY9Kpl5LwMhKoKjPBA4L5WKtZAvZ1Q8js8/oqPyig
         4rjSNhz5jOcqfzdvXe4wt2DTtX5d3E8jvJMuPL9CYuVYieqMimbH5JJH+qEehkLpHxBG
         canA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nuzaLCUW;
       spf=pass (google.com: domain of jarmo.tiitto@gmail.com designates 2a00:1450:4864:20::12e as permitted sender) smtp.mailfrom=jarmo.tiitto@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com. [2a00:1450:4864:20::12e])
        by gmr-mx.google.com with ESMTPS id d11si325138lfs.2.2021.06.04.10.03.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Jun 2021 10:03:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of jarmo.tiitto@gmail.com designates 2a00:1450:4864:20::12e as permitted sender) client-ip=2a00:1450:4864:20::12e;
Received: by mail-lf1-x12e.google.com with SMTP id w33so15113070lfu.7
        for <clang-built-linux@googlegroups.com>; Fri, 04 Jun 2021 10:03:22 -0700 (PDT)
X-Received: by 2002:a19:58f:: with SMTP id 137mr3305399lff.188.1622826202418;
        Fri, 04 Jun 2021 10:03:22 -0700 (PDT)
Received: from HyperiorArchMachine.bb.dnainternet.fi (dcx7x4ycc2b7s--vdqzfy-3.rev.dnainternet.fi. [2001:14ba:14f7:3c00:42b0:76ff:fe23:6d08])
        by smtp.gmail.com with ESMTPSA id q184sm817310ljb.54.2021.06.04.10.03.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Jun 2021 10:03:21 -0700 (PDT)
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
Subject: [PATCH v3 1/1] pgo: Fix allocate_node() v2
Date: Fri,  4 Jun 2021 19:58:20 +0300
Message-Id: <20210604165819.7947-1-jarmo.tiitto@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Original-Sender: Jarmo.Tiitto@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=nuzaLCUW;       spf=pass
 (google.com: domain of jarmo.tiitto@gmail.com designates 2a00:1450:4864:20::12e
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

When clang instrumentation eventually calls allocate_node()
the struct llvm_prf_data *p argument tells us from what section
we should reserve the vnode: It either points into vmlinux's
core __llvm_prf_data section or some loaded module's
__llvm_prf_data section.

But since we don't have access to corresponding
__llvm_prf_vnds section(s) for any module, the function
should return just NULL and ignore any profiling attempts
from modules for now.

Signed-off-by: Jarmo Tiitto <jarmo.tiitto@gmail.com>
---
Based on Kees and others feedback here is v3 patch
that clarifies why the current checks in allocate_node()
are flawed. I did fair amount of KGDB time on it.

The commit is based on kees/for-next/clang/features tree,
hopefully this is ok. Should I have based it on linux-next
instead?

I grep -R'd where the memory_contains() can be found and it is only
found in #include <asm-generic/sections.h>

I cross my fingers and await if this is my first accepted patch. :-)
---
 kernel/pgo/instrument.c | 23 ++++++++++++++---------
 1 file changed, 14 insertions(+), 9 deletions(-)

diff --git a/kernel/pgo/instrument.c b/kernel/pgo/instrument.c
index 0e07ee1b17d9..c69b4f7ebaad 100644
--- a/kernel/pgo/instrument.c
+++ b/kernel/pgo/instrument.c
@@ -18,6 +18,7 @@
 
 #define pr_fmt(fmt)	"pgo: " fmt
 
+#include <asm-generic/sections.h>
 #include <linux/bitops.h>
 #include <linux/kernel.h>
 #include <linux/export.h>
@@ -55,17 +56,21 @@ void prf_unlock(unsigned long flags)
 static struct llvm_prf_value_node *allocate_node(struct llvm_prf_data *p,
 						 u32 index, u64 value)
 {
-	if (&__llvm_prf_vnds_start[current_node + 1] >= __llvm_prf_vnds_end)
-		return NULL; /* Out of nodes */
-
-	current_node++;
-
-	/* Make sure the node is entirely within the section */
-	if (&__llvm_prf_vnds_start[current_node] >= __llvm_prf_vnds_end ||
-	    &__llvm_prf_vnds_start[current_node + 1] > __llvm_prf_vnds_end)
+	const int max_vnds = prf_vnds_count();
+
+	/*
+	 * Check that p is within vmlinux __llvm_prf_data section.
+	 * If not, don't allocate since we can't handle modules yet.
+	 */
+	if (!memory_contains(__llvm_prf_data_start,
+		__llvm_prf_data_end, p, sizeof(*p)))
 		return NULL;
 
-	return &__llvm_prf_vnds_start[current_node];
+	if (WARN_ON_ONCE(current_node >= max_vnds))
+		return NULL; /* Out of nodes */
+
+	/* reserve vnode for vmlinux */
+	return &__llvm_prf_vnds_start[current_node++];
 }
 
 /*

base-commit: 5d0cda65918279ada060417c5fecb7e86ccb3def
-- 
2.31.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210604165819.7947-1-jarmo.tiitto%40gmail.com.
