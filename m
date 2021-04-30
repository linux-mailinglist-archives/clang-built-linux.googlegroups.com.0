Return-Path: <clang-built-linux+bncBCV4DH5YZYMBBI6OV6CAMGQEGPWSNVY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3b.google.com (mail-qv1-xf3b.google.com [IPv6:2607:f8b0:4864:20::f3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 8331636F903
	for <lists+clang-built-linux@lfdr.de>; Fri, 30 Apr 2021 13:16:52 +0200 (CEST)
Received: by mail-qv1-xf3b.google.com with SMTP id l61-20020a0c84430000b02901a9a7e363edsf24361091qva.16
        for <lists+clang-built-linux@lfdr.de>; Fri, 30 Apr 2021 04:16:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619781411; cv=pass;
        d=google.com; s=arc-20160816;
        b=WnhB5yCsw84MO6xqGJp2Fieg+6Ocr2I71++xYJKOyt38vE564PrXMF1q5wVjxus9fN
         ltAMz8JOvjtFMbIJlKVWAgwXvtuvGY2FBLL/tCVs1yQXszJkBSQbZofWYbweQ7MzVxbz
         vq1g7UPsN/WqDwJgsvfCylD8DkAzgoSp2ACgdUZDxqXPD24uhcaBVhedujJk6cim9dnB
         NULzowhQ7vwvigKgRb0IZ2EPHWKARILRQzELQZRdJ2S8kFNxReNB9ZfsF3mvFHewxiYC
         MIEVZxwTJ/b+lMesX63tRtR3n5X7IYPkyyZ3yi9zeeqUE6/iK0LwQtvcfnp2i0dr+jP7
         dFow==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=PgzmDD6lDU1Fcr2+JrroLERZ2YEJE6f08C41k2bnCik=;
        b=K3uPyN2Zc61AX1vxjlwNA2rpPFUcT7x2ofP9xJ499JA0AknXDGUwPLiZNXaSHzNELc
         JG0XXienJ1ewH8upxOpZHWbeTRzYJF3VollMeWSTVyI/9BDk8fjuoIC4sEwa1dT7HQra
         iQPMSGnUd54YXAaSXB0sJLRPJa1vllcyYAjbOnlUJG7dUavEhPl0SNvC4ei53Crq2hW5
         CAvTIcfsG89EjyXEdVLqJ8k1QG4KYJSGhDedmTmf8RBOF2gQiZA9JFekjkQvh6qz7TsS
         TJWV/J0l3BrHNMOquP5o2ryRfHfobWGmVAzwIB+2v+cckGOBMGFIGREIgJj61w1KLqDk
         qoFQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b="GD/rNQK2";
       spf=pass (google.com: domain of schnelle@linux.ibm.com designates 148.163.158.5 as permitted sender) smtp.mailfrom=schnelle@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PgzmDD6lDU1Fcr2+JrroLERZ2YEJE6f08C41k2bnCik=;
        b=ESiA0kNr4NMHbAJoTMrMzDRpIyOOo70J5sj1hEFJkBHcYQmQYRfjwJOWIeHi+Qa48h
         GGBiLYwMhuhXtk4/oeh/aJuFgMA4mh9xBeucOj/uaa4um6hv/mJI2GZuk4/0CUA59xwB
         XsOgYcMqcH5Ys3j2cmjSAUobI/rszWrqc68xWfxC9e835uHzudXNFrYB0GOuIAXDH29E
         gO7JrR9HjPV9m2tRARl8TBZFnuIO5/WW+PVF0iUfPQwV6FRxBgOZNPUHumbJumgecuvU
         k69+3lzPyt7nofa+513vYJLNYjbZgnHnJHmLc+U/MKJma3Tj62EH7o7XefpWMz0+p7Vk
         3T5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PgzmDD6lDU1Fcr2+JrroLERZ2YEJE6f08C41k2bnCik=;
        b=AJbr9/i5zNV8UU3XbS8vwQadBq0s828tdZm56S28SMd4htexK+utFQlI7U3Kk2Snr5
         BSuZy2ojCeVNh5EvRjKkSxnxJX8mXYbMfXxBp4KkBQ/hDoiLLGbYp2Dyek4ypKtSaSF+
         r7uGzPG/djqmReqExi21GPSP/IRomqcpRaEeXKEcZQj99S7ah7h+1WjKHEWnBXVfhA62
         6pTAQQICIjXzy+G+AUTvoIx4Kfau1QoEJ2UDEx4BwIfmySbr4MKpL/7/AxiiExSr3aBL
         o2AksiO5cOCYFAmQys3f2eS2k5W9RKnO1rSlS9IhmBr6ZomOQhnujoVgeIOp4PA28TOY
         sbQA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5301UItSZQb+lnuYgLOeFW3qy43PkPYYq2Uap/wPDDC9R9cuizjC
	6ambNrjBGEtw9aY/nZIQxwo=
X-Google-Smtp-Source: ABdhPJyPsQlrae4j/JpbmMd+D3cFqNC2ZbcGyJUCbD2e9bDSy4NHY/y0tAz0SP1RNTh5ojOty7jdJA==
X-Received: by 2002:a05:620a:12b8:: with SMTP id x24mr4626580qki.452.1619781411298;
        Fri, 30 Apr 2021 04:16:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:21ca:: with SMTP id h10ls3554305qka.10.gmail; Fri,
 30 Apr 2021 04:16:50 -0700 (PDT)
X-Received: by 2002:a37:ae85:: with SMTP id x127mr4678305qke.436.1619781410880;
        Fri, 30 Apr 2021 04:16:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619781410; cv=none;
        d=google.com; s=arc-20160816;
        b=QDGToueGF/nvlB6pwnPB1nbSAVdG+iACQfC6sxpcggoKeYij6o9nMkm6Hx+NH9byk2
         oa5zXn/19B1fYEYKk2tfk4qQeNri6Z5daPEdf1t4DMQrIxRyZrUDXslr6RXy2BnGx+0t
         +A3wG2U/PqrzxQ0kmanig8SI2GDYkVXR1NYF4p1/WrpOdC3AtY/Aq19rWodB/HVOhFKq
         a/ImcG0m4RbsX399PifrWU/4Nmr0A0zJq4aqZvNhNdFio8HXuncvZQPsbd6YQneob1Z3
         ILL3TfxAzcZpkzRu8vPlh0eCoJm3JP6KZyreBa7N7J/t9qIoBsswsnJem2s+Ne0YN5Ve
         rmPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=ebZFECJxGjtLcF1rluTOfeZFyPV564vNRUrltdwSGtg=;
        b=tD3AZph9bZvAZoAdrKqhPFj7A6HzXTowmLKUsZ8+a/cfs4Bx5HSb5P4EFqG0mPfSav
         etD8G4mreuTxTTLEe7yfBfYC5D2ZWNSyZJqYuKyCphAyh04kECvXDoyaTgr4/rcX5Eh/
         l9I3rQZOQU86N0KCxtVa1o26nKaXf+E/KFtsvZBiQ+vsG2kXGyypJ2x4dxYNwgEggQ75
         RJuM19p2CF4MyzGyIsZ/jo/P4Gz/UV7+Yb7LYxQz+4EwIQ4oBmYfFh/khVbS9rH3AVmo
         588kprvNqmYC57jwNWoln4tf+np4ppCmP+A5Ws0TqnyUZnyW/RkyTJbrFTboVJHZVUCJ
         RtAA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b="GD/rNQK2";
       spf=pass (google.com: domain of schnelle@linux.ibm.com designates 148.163.158.5 as permitted sender) smtp.mailfrom=schnelle@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
Received: from mx0a-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com. [148.163.158.5])
        by gmr-mx.google.com with ESMTPS id s65si527752qkc.2.2021.04.30.04.16.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Apr 2021 04:16:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of schnelle@linux.ibm.com designates 148.163.158.5 as permitted sender) client-ip=148.163.158.5;
Received: from pps.filterd (m0098419.ppops.net [127.0.0.1])
	by mx0b-001b2d01.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 13UB2kl0071093;
	Fri, 30 Apr 2021 07:16:48 -0400
Received: from pps.reinject (localhost [127.0.0.1])
	by mx0b-001b2d01.pphosted.com with ESMTP id 388g4dhdft-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 30 Apr 2021 07:16:47 -0400
Received: from m0098419.ppops.net (m0098419.ppops.net [127.0.0.1])
	by pps.reinject (8.16.0.43/8.16.0.43) with SMTP id 13UB3eR2080684;
	Fri, 30 Apr 2021 07:16:47 -0400
Received: from ppma02fra.de.ibm.com (47.49.7a9f.ip4.static.sl-reverse.com [159.122.73.71])
	by mx0b-001b2d01.pphosted.com with ESMTP id 388g4dhdfe-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 30 Apr 2021 07:16:47 -0400
Received: from pps.filterd (ppma02fra.de.ibm.com [127.0.0.1])
	by ppma02fra.de.ibm.com (8.16.0.43/8.16.0.43) with SMTP id 13UBF6NA028083;
	Fri, 30 Apr 2021 11:16:45 GMT
Received: from b06cxnps4076.portsmouth.uk.ibm.com (d06relay13.portsmouth.uk.ibm.com [9.149.109.198])
	by ppma02fra.de.ibm.com with ESMTP id 384ay89pp3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 30 Apr 2021 11:16:45 +0000
Received: from d06av23.portsmouth.uk.ibm.com (d06av23.portsmouth.uk.ibm.com [9.149.105.59])
	by b06cxnps4076.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 13UBGhVU23003526
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 30 Apr 2021 11:16:43 GMT
Received: from d06av23.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 1168FA4053;
	Fri, 30 Apr 2021 11:16:43 +0000 (GMT)
Received: from d06av23.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id B0221A4051;
	Fri, 30 Apr 2021 11:16:42 +0000 (GMT)
Received: from tuxmaker.boeblingen.de.ibm.com (unknown [9.152.85.9])
	by d06av23.portsmouth.uk.ibm.com (Postfix) with ESMTP;
	Fri, 30 Apr 2021 11:16:42 +0000 (GMT)
From: Niklas Schnelle <schnelle@linux.ibm.com>
To: Arnd Bergmann <arnd@arndb.de>, Vineet Gupta <vgupta@synopsys.com>,
        "David S. Miller" <davem@davemloft.net>
Cc: Nathan Chancellor <nathan@kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        clang-built-linux@googlegroups.com, linux-arch@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-s390@vger.kernel.org,
        linux-snps-arc@lists.infradead.org, sparclinux@vger.kernel.org
Subject: [PATCH v4 3/3] asm-generic/io.h: warn in inb() and friends with undefined PCI_IOBASE
Date: Fri, 30 Apr 2021 13:16:41 +0200
Message-Id: <20210430111641.1911207-4-schnelle@linux.ibm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210430111641.1911207-1-schnelle@linux.ibm.com>
References: <20210430111641.1911207-1-schnelle@linux.ibm.com>
MIME-Version: 1.0
X-TM-AS-GCONF: 00
X-Proofpoint-ORIG-GUID: QDqUu04eH9wD3YyH5SJDgqyDb1iAv4i9
X-Proofpoint-GUID: LumMAV0Xbff0VDAIIdZHB3vHbhOBHXpS
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391,18.0.761
 definitions=2021-04-30_06:2021-04-30,2021-04-30 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 mlxscore=0
 lowpriorityscore=0 priorityscore=1501 spamscore=0 clxscore=1015
 phishscore=0 suspectscore=0 bulkscore=0 mlxlogscore=999 impostorscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2104060000 definitions=main-2104300080
X-Original-Sender: schnelle@linux.ibm.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ibm.com header.s=pp1 header.b="GD/rNQK2";       spf=pass
 (google.com: domain of schnelle@linux.ibm.com designates 148.163.158.5 as
 permitted sender) smtp.mailfrom=schnelle@linux.ibm.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=ibm.com
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

When PCI_IOBASE is not defined, it is set to 0 such that it is ignored
in calls to the readX/writeX primitives. This triggers clang's
-Wnull-pointer-arithmetic warning and will result in illegal accesses on
platforms that do not support I/O ports.

Make things explicit and silence the warning by letting inb() and
friends fail with WARN_ONCE() and a 0xff... return in case PCI_IOBASE is
not defined.

Signed-off-by: Niklas Schnelle <schnelle@linux.ibm.com>
---
 include/asm-generic/io.h | 65 +++++++++++++++++++++++++++++++++++++---
 1 file changed, 61 insertions(+), 4 deletions(-)

diff --git a/include/asm-generic/io.h b/include/asm-generic/io.h
index c6af40ce03be..6207fb4b9a7d 100644
--- a/include/asm-generic/io.h
+++ b/include/asm-generic/io.h
@@ -8,6 +8,7 @@
 #define __ASM_GENERIC_IO_H
 
 #include <asm/page.h> /* I/O is all done through memory accesses */
+#include <linux/bug.h>
 #include <linux/string.h> /* for memset() and memcpy() */
 #include <linux/types.h>
 
@@ -440,10 +441,6 @@ static inline void writesq(volatile void __iomem *addr, const void *buffer,
 #endif
 #endif /* CONFIG_64BIT */
 
-#ifndef PCI_IOBASE
-#define PCI_IOBASE ((void __iomem *)0)
-#endif
-
 #ifndef IO_SPACE_LIMIT
 #define IO_SPACE_LIMIT 0xffff
 #endif
@@ -458,12 +455,17 @@ static inline void writesq(volatile void __iomem *addr, const void *buffer,
 #define _inb _inb
 static inline u8 _inb(unsigned long addr)
 {
+#ifdef PCI_IOBASE
 	u8 val;
 
 	__io_pbr();
 	val = __raw_readb(PCI_IOBASE + addr);
 	__io_par(val);
 	return val;
+#else
+	WARN_ONCE(1, "No I/O port support\n");
+	return ~0;
+#endif
 }
 #endif
 
@@ -471,12 +473,17 @@ static inline u8 _inb(unsigned long addr)
 #define _inw _inw
 static inline u16 _inw(unsigned long addr)
 {
+#ifdef PCI_IOBASE
 	u16 val;
 
 	__io_pbr();
 	val = __le16_to_cpu((__le16 __force)__raw_readw(PCI_IOBASE + addr));
 	__io_par(val);
 	return val;
+#else
+	WARN_ONCE(1, "No I/O port support\n");
+	return ~0;
+#endif
 }
 #endif
 
@@ -484,12 +491,17 @@ static inline u16 _inw(unsigned long addr)
 #define _inl _inl
 static inline u32 _inl(unsigned long addr)
 {
+#ifdef PCI_IOBASE
 	u32 val;
 
 	__io_pbr();
 	val = __le32_to_cpu((__le32 __force)__raw_readl(PCI_IOBASE + addr));
 	__io_par(val);
 	return val;
+#else
+	WARN_ONCE(1, "No I/O port support\n");
+	return ~0;
+#endif
 }
 #endif
 
@@ -497,9 +509,13 @@ static inline u32 _inl(unsigned long addr)
 #define _outb _outb
 static inline void _outb(u8 value, unsigned long addr)
 {
+#ifdef PCI_IOBASE
 	__io_pbw();
 	__raw_writeb(value, PCI_IOBASE + addr);
 	__io_paw();
+#else
+	WARN_ONCE(1, "No I/O port support\n");
+#endif
 }
 #endif
 
@@ -507,9 +523,13 @@ static inline void _outb(u8 value, unsigned long addr)
 #define _outw _outw
 static inline void _outw(u16 value, unsigned long addr)
 {
+#ifdef PCI_IOBASE
 	__io_pbw();
 	__raw_writew((u16 __force)cpu_to_le16(value), PCI_IOBASE + addr);
 	__io_paw();
+#else
+	WARN_ONCE(1, "No I/O port support\n");
+#endif
 }
 #endif
 
@@ -517,9 +537,13 @@ static inline void _outw(u16 value, unsigned long addr)
 #define _outl _outl
 static inline void _outl(u32 value, unsigned long addr)
 {
+#ifdef PCI_IOBASE
 	__io_pbw();
 	__raw_writel((u32 __force)cpu_to_le32(value), PCI_IOBASE + addr);
 	__io_paw();
+#else
+	WARN_ONCE(1, "No I/O port support\n");
+#endif
 }
 #endif
 
@@ -606,7 +630,11 @@ static inline void outl_p(u32 value, unsigned long addr)
 #define insb insb
 static inline void insb(unsigned long addr, void *buffer, unsigned int count)
 {
+#ifdef PCI_IOBASE
 	readsb(PCI_IOBASE + addr, buffer, count);
+#else
+	WARN_ONCE(1, "No I/O port support\n");
+#endif
 }
 #endif
 
@@ -614,7 +642,11 @@ static inline void insb(unsigned long addr, void *buffer, unsigned int count)
 #define insw insw
 static inline void insw(unsigned long addr, void *buffer, unsigned int count)
 {
+#ifdef PCI_IOBASE
 	readsw(PCI_IOBASE + addr, buffer, count);
+#else
+	WARN_ONCE(1, "No I/O port support\n");
+#endif
 }
 #endif
 
@@ -622,7 +654,11 @@ static inline void insw(unsigned long addr, void *buffer, unsigned int count)
 #define insl insl
 static inline void insl(unsigned long addr, void *buffer, unsigned int count)
 {
+#ifdef PCI_IOBASE
 	readsl(PCI_IOBASE + addr, buffer, count);
+#else
+	WARN_ONCE(1, "No I/O port support\n");
+#endif
 }
 #endif
 
@@ -631,7 +667,11 @@ static inline void insl(unsigned long addr, void *buffer, unsigned int count)
 static inline void outsb(unsigned long addr, const void *buffer,
 			 unsigned int count)
 {
+#ifdef PCI_IOBASE
 	writesb(PCI_IOBASE + addr, buffer, count);
+#else
+	WARN_ONCE(1, "No I/O port support\n");
+#endif
 }
 #endif
 
@@ -640,7 +680,11 @@ static inline void outsb(unsigned long addr, const void *buffer,
 static inline void outsw(unsigned long addr, const void *buffer,
 			 unsigned int count)
 {
+#ifdef PCI_IOBASE
 	writesw(PCI_IOBASE + addr, buffer, count);
+#else
+	WARN_ONCE(1, "No I/O port support\n");
+#endif
 }
 #endif
 
@@ -649,7 +693,11 @@ static inline void outsw(unsigned long addr, const void *buffer,
 static inline void outsl(unsigned long addr, const void *buffer,
 			 unsigned int count)
 {
+#ifdef PCI_IOBASE
 	writesl(PCI_IOBASE + addr, buffer, count);
+#else
+	WARN_ONCE(1, "No I/O port support\n");
+#endif
 }
 #endif
 
@@ -1001,18 +1049,27 @@ static inline void __iomem *ioremap_uc(phys_addr_t offset, size_t size)
 #define ioport_map ioport_map
 static inline void __iomem *ioport_map(unsigned long port, unsigned int nr)
 {
+#ifdef PCI_IOBASE
 	port &= IO_SPACE_LIMIT;
 	return (port > MMIO_UPPER_LIMIT) ? NULL : PCI_IOBASE + port;
+#else
+	WARN_ONCE(1, "No I/O port support\n");
+	return NULL;
+#endif
 }
 #define __pci_ioport_unmap __pci_ioport_unmap
 static inline void __pci_ioport_unmap(void __iomem *p)
 {
+#ifdef PCI_IOBASE
 	uintptr_t start = (uintptr_t) PCI_IOBASE;
 	uintptr_t addr = (uintptr_t) p;
 
 	if (addr >= start && addr < start + IO_SPACE_LIMIT)
 		return;
 	iounmap(p);
+#else
+	WARN_ONCE(1, "No I/O port support\n");
+#endif
 }
 #endif
 
-- 
2.31.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210430111641.1911207-4-schnelle%40linux.ibm.com.
