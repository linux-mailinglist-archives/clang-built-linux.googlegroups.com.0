Return-Path: <clang-built-linux+bncBCV4DH5YZYMBBOPG4OCAMGQENQGVPWI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3c.google.com (mail-vs1-xe3c.google.com [IPv6:2607:f8b0:4864:20::e3c])
	by mail.lfdr.de (Postfix) with ESMTPS id A8D80377E7E
	for <lists+clang-built-linux@lfdr.de>; Mon, 10 May 2021 10:47:54 +0200 (CEST)
Received: by mail-vs1-xe3c.google.com with SMTP id g28-20020a67d49c0000b0290226baf5716bsf7779821vsj.12
        for <lists+clang-built-linux@lfdr.de>; Mon, 10 May 2021 01:47:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620636473; cv=pass;
        d=google.com; s=arc-20160816;
        b=aGU1fAbfj/TV/X32cTaXfNuO7W6kKkED8D8r2OWIdo50lu5u0P5h0Cx07Y872eaA7W
         Iom3iMiR0DbTmMihTueFFc4z0+4hmVsxN2daT8R0a2JZcGRvC3yOERioHtiskIjPsaLO
         cPj2jbEh4h4iBq4XeM9sBpkTb7bdiMUGrR02Do16d+moyh8DqpOocmP2AMIfo3Vhazk7
         LO1XH0eKZ2dSi6f0WTfiLH0u9v5AStLjFkqmyS3sXPh9Pqm62GmYN9wLv82xH8CISU1I
         9VFVel7Zgln3O/w2j5puasejFxZTawjVo3uX/jUolQlp/JCJhxpogEhOQbllSm5chz/S
         MgGQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=D6nq7HEk32Qk7RwFNO/PFlerNF6xjTrOku9dNr8yJLQ=;
        b=obrHOLGszanzJSpuivQw91hVCJ/5VqBM6C298ozKi02zv2mMRowcBfEYIRkLTjuCQ3
         wp5YxtkQ/mRWQ7FVPFTLVBvhZpMrW7hjs0esz6Efq4yQLYJPgx1SeATSFz801NUa7Txx
         8utPz8QHQXWkvSxYP04BtM425wlEV89YZ9uSfoJw+9fUjkypZNRBH1aN87fArx/kQSyf
         9+nTFx8ZDy3QxFQYQnWLE9SySXQ/O09udHkr4/TiYmU56hxs+dXCmMgK8q+SKMxh3rpc
         tkYkfK6lsow41ioC0X/5REMsmD/jwStXLcNMqkfkpE/p92B1V9G5oreVj6+c43ZIgB29
         Ynrw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=jLzG2rGt;
       spf=pass (google.com: domain of schnelle@linux.ibm.com designates 148.163.158.5 as permitted sender) smtp.mailfrom=schnelle@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=D6nq7HEk32Qk7RwFNO/PFlerNF6xjTrOku9dNr8yJLQ=;
        b=FTaqttJnDrm1977tC7k8zJMP+Thop5pkKQ/JBH4R0R2udMg/K+SmCvjh2HvqMtino7
         EgvXtyNPpuNwLrSOGjJkZ8oSD3u+LZQSGEcN9D8JTPZnp6YAxiUs5LHrvRg+tgwVXox+
         dA9BvGEw7NybOhSzYLaRCtcnaed21sB/bd8ozTsADG23Ho1MELEOWyH8gXF4fYQes+di
         9r8FJp2eUOAY7Hb9f1hWILmWzigO0RKyb7KJ10LrYlfUgjnpWfzTtlstmdL5XJndXGJI
         iC3ZuNOPlVKj8Ke3X8wA0+0IOiSJ1u7t6RHnWwE3lXBOvWw8LCtAL7L3CeFlf962Lcmo
         0hSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=D6nq7HEk32Qk7RwFNO/PFlerNF6xjTrOku9dNr8yJLQ=;
        b=KgrrbBeoBX+DfFCjAGMtjtGJwk2mBVYEBIbZaImjqYBKdDRz5cX82K72IspcxuIyOV
         CVvRqEnFECl7Tijn8pk/EZ9dTVk0KnL8XX9F+H8DAUGmCVsSdBEqUX8l7Y1wD9D4kbhL
         eK80v3cssy2/BpdTUcR1/gZIk86OzYU0G/slWp/aciAQUVGUCivIrNSVZ6lb1MVPM7Kq
         k0RMA6h8UUYdZL+ivmisGxdU/rA+84yMDQIVrxnlnxv5+eGUUiwd/L6+g1pUQ6QQym2V
         hqaN9KHct0Il3HlkTaA99K2nKnrnvRcZPlYDjgK5Ce04FjserfrMYDHOS5pgL4ZPRFpu
         ic0A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530PjkLhfETgLdMohdDaI9BMQZrhcwNasC04OWjPhhEMpyPsy9V1
	zDz6gcVuzQ1UHknBm1eZ4EY=
X-Google-Smtp-Source: ABdhPJyAvFxmzg2HCz+Fr4HT7eb0zBoT6t2jJV2lO6nc8+ZKM70CgrbiSpelIXuB7g779xxbc+wLQQ==
X-Received: by 2002:ab0:7696:: with SMTP id v22mr18203841uaq.59.1620636473713;
        Mon, 10 May 2021 01:47:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:31d0:: with SMTP id x199ls2406490vsx.0.gmail; Mon, 10
 May 2021 01:47:53 -0700 (PDT)
X-Received: by 2002:a67:f3c1:: with SMTP id j1mr17770640vsn.25.1620636473139;
        Mon, 10 May 2021 01:47:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620636473; cv=none;
        d=google.com; s=arc-20160816;
        b=fHsQkBfgtC5Orq18z1XqosUsrHJFpuUv8U3pKiY1IvjSN7QL7yUxwHYmng/L5YGV+k
         +NfM8lXk+gJ+74tIKoqPBTcEQ5qEW7YioIheWCdDPXZtgisY8Nil60DpJsQuQ/vu+4qJ
         p6N+1IZ6ByGVka+W49ydpDc6SEJDW10kBWwIJvPYnMMmnv9SDMWzyHA/tKwJRqueNfuF
         4HJSGtDUZMUnIS4ny8JzRkUgqpGHRPcltWQxspRA9cUhf7NFEf4MgQMjFWTBSVwPu6Rt
         kcvNh4Nxv/cA4FqS+ZtAKS+trElG4UMzo0x2tIz0aqwx8wbGl8VfIttDyzh0MVk6DtjN
         2VcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=KTQxO0IWEBnipVyxp6Fd/H0bA828QsZiHmmsIJMhYdA=;
        b=WRyuAytzzTVcN80Z2V4fgXpsKE6uiZp4ZlyaQE7i4o53gldDR5ytSepeANJq5QieL3
         KUfrnB5GXBkX1dDYKHQoTQxDGZYNy3yKOc2HJrMpjEyJvmRDdBelOX9wOd+m8c2NsK6h
         wbE35Z/+q27+AKpxmCc8ErhR1WLS/DS3rJf+8Cc+wjJzJJFmS4vYRCPVI/RGyeqGBJbt
         JcvaaD+GtvM/rOPXtNifIu13LfP55zD2p6cxA3ugLN5AJ4bulR4CfH4eP1JapEov1Hm1
         b98pzjIyQDGBYmiA9Hbiubu0vQvqdAkIshEcmNLxBIgswxBMCO6ZvRGhQIgw6g2N9aSj
         76Lg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=jLzG2rGt;
       spf=pass (google.com: domain of schnelle@linux.ibm.com designates 148.163.158.5 as permitted sender) smtp.mailfrom=schnelle@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
Received: from mx0b-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com. [148.163.158.5])
        by gmr-mx.google.com with ESMTPS id t11si1211972vsm.2.2021.05.10.01.47.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 10 May 2021 01:47:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of schnelle@linux.ibm.com designates 148.163.158.5 as permitted sender) client-ip=148.163.158.5;
Received: from pps.filterd (m0098421.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 14A8Xxl8192072;
	Mon, 10 May 2021 04:47:50 -0400
Received: from pps.reinject (localhost [127.0.0.1])
	by mx0a-001b2d01.pphosted.com with ESMTP id 38f19a0jfg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 10 May 2021 04:47:50 -0400
Received: from m0098421.ppops.net (m0098421.ppops.net [127.0.0.1])
	by pps.reinject (8.16.0.43/8.16.0.43) with SMTP id 14A8ZbP7008512;
	Mon, 10 May 2021 04:47:49 -0400
Received: from ppma03ams.nl.ibm.com (62.31.33a9.ip4.static.sl-reverse.com [169.51.49.98])
	by mx0a-001b2d01.pphosted.com with ESMTP id 38f19a0jev-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 10 May 2021 04:47:49 -0400
Received: from pps.filterd (ppma03ams.nl.ibm.com [127.0.0.1])
	by ppma03ams.nl.ibm.com (8.16.0.43/8.16.0.43) with SMTP id 14A8gohJ023630;
	Mon, 10 May 2021 08:47:48 GMT
Received: from b06cxnps3075.portsmouth.uk.ibm.com (d06relay10.portsmouth.uk.ibm.com [9.149.109.195])
	by ppma03ams.nl.ibm.com with ESMTP id 38dj988sg1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 10 May 2021 08:47:47 +0000
Received: from d06av22.portsmouth.uk.ibm.com (d06av22.portsmouth.uk.ibm.com [9.149.105.58])
	by b06cxnps3075.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 14A8ljpV16581018
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 10 May 2021 08:47:45 GMT
Received: from d06av22.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id A07314C050;
	Mon, 10 May 2021 08:47:45 +0000 (GMT)
Received: from d06av22.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 4729E4C052;
	Mon, 10 May 2021 08:47:45 +0000 (GMT)
Received: from tuxmaker.boeblingen.de.ibm.com (unknown [9.152.85.9])
	by d06av22.portsmouth.uk.ibm.com (Postfix) with ESMTP;
	Mon, 10 May 2021 08:47:45 +0000 (GMT)
From: Niklas Schnelle <schnelle@linux.ibm.com>
To: Arnd Bergmann <arnd@arndb.de>, Vineet Gupta <vgupta@synopsys.com>,
        "David S. Miller" <davem@davemloft.net>
Cc: Nathan Chancellor <nathan@kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        clang-built-linux@googlegroups.com, linux-arch@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-s390@vger.kernel.org,
        linux-snps-arc@lists.infradead.org, sparclinux@vger.kernel.org
Subject: [PATCH v5--cover-letter 3/3] asm-generic/io.h: warn in inb() and friends with undefined PCI_IOBASE
Date: Mon, 10 May 2021 10:47:43 +0200
Message-Id: <20210510084743.1850777-4-schnelle@linux.ibm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210510084743.1850777-1-schnelle@linux.ibm.com>
References: <20210510084743.1850777-1-schnelle@linux.ibm.com>
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: y6A-vOpbDjPS-w1cYvAYxPhaxfXqjWCF
X-Proofpoint-ORIG-GUID: AzhZuuaJFfarROUONmooVLD0mynIak1f
X-Proofpoint-UnRewURL: 0 URL was un-rewritten
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391,18.0.761
 definitions=2021-05-10_04:2021-05-10,2021-05-10 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 suspectscore=0
 priorityscore=1501 mlxscore=0 impostorscore=0 spamscore=0 bulkscore=0
 mlxlogscore=999 adultscore=0 lowpriorityscore=0 clxscore=1011
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2104190000 definitions=main-2105100061
X-Original-Sender: schnelle@linux.ibm.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ibm.com header.s=pp1 header.b=jLzG2rGt;       spf=pass (google.com:
 domain of schnelle@linux.ibm.com designates 148.163.158.5 as permitted
 sender) smtp.mailfrom=schnelle@linux.ibm.com;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=ibm.com
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

Link: https://lore.kernel.org/lkml/20210421111759.2059976-1-schnelle@linux.ibm.com/
Signed-off-by: Niklas Schnelle <schnelle@linux.ibm.com>
---
 include/asm-generic/io.h | 65 +++++++++++++++++++++++++++++++++++++---
 1 file changed, 61 insertions(+), 4 deletions(-)

diff --git a/include/asm-generic/io.h b/include/asm-generic/io.h
index e93375c710b9..7b523683c241 100644
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
 
@@ -1020,18 +1068,27 @@ static inline void __iomem *ioremap_np(phys_addr_t offset, size_t size)
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
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210510084743.1850777-4-schnelle%40linux.ibm.com.
