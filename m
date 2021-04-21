Return-Path: <clang-built-linux+bncBCV4DH5YZYMBB44TQCCAMGQEM2ZGNIY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3d.google.com (mail-yb1-xb3d.google.com [IPv6:2607:f8b0:4864:20::b3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AC9C3669CB
	for <lists+clang-built-linux@lfdr.de>; Wed, 21 Apr 2021 13:18:12 +0200 (CEST)
Received: by mail-yb1-xb3d.google.com with SMTP id c1-20020a5b0bc10000b02904e7c6399b20sf15422114ybr.12
        for <lists+clang-built-linux@lfdr.de>; Wed, 21 Apr 2021 04:18:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619003891; cv=pass;
        d=google.com; s=arc-20160816;
        b=TGGRW1RotamYrt26BzCcj0AmRV4QK+riD30bKTiySOszDBxxLy56mV/nuR1rqYt21P
         wCd3rz/nom9vnEksYtOPnI2L9mNuAbbEv+fOivehLrWH0aak+cRZgxH0++g28xfsmdCx
         9ppW2/4KdZXN/4h5o0IgsecjKCaWB/94Qq6xmER2S41OVRPfClJp2uQ0oWoU/5thiHPO
         0f58Tz8TqQeo2rG4SHon92rEIwjP6TSRnxxyaOK9wWgZgxIu+t4PQVMi04zaeE/76nqE
         knoIQxz7K5IZWDcUemrSemWfKqH5f6mQlIdN0DcPbSxbdiCKvxcP/AV8upuCwezcCP72
         QhYA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=1/VflRkiKp41UB249J9USnMTa5TMG47vwkSPHR5bUn0=;
        b=CorgmHh69TETBOfxLDt/U8PyvWn8VFx11RbydAl9f6XGItRuKda+ABET5yBPFSkcB9
         lxN8VQzlGsQ9ABqQyzjDYosXfcYXq3dvo5Zp2sk9VMV9iWHXEqXRwS63dxmoI5624B4S
         eQYXn+gkW3UYpEdxsdaTW2Efxc34ls2grg4wl81llfLwJ02L1Qjps6feYIGpmTPf5h5M
         yGTWHChS8+XAjzdWKZmXIiaK3EksnpNf1CocznnW5TATUV3pxckhGH+Mm6YekULs8gkZ
         MrJ46ZKurkGZQUyJApg8MZZa5v6WL7d84IguvxRA9izp/xuUVK7X5MYfNa41Wc3k8FVH
         lTNA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=fr9I2Gws;
       spf=pass (google.com: domain of schnelle@linux.ibm.com designates 148.163.156.1 as permitted sender) smtp.mailfrom=schnelle@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1/VflRkiKp41UB249J9USnMTa5TMG47vwkSPHR5bUn0=;
        b=AL2V6KxgSyaf8oevSSTiAFu2dTTleNulPpCBDMuXU3EJwBOgKay3vasAoy9npVIiPR
         WY3gL/jM1cMDBiSjuu1mqmver73350E8GTujiSwDN/O6WL8R7bZNm8e77C9aB9XCR9Zl
         iFW0hIi62Rw9rlwTgopH8CzrztkiwpmhifXBETQzK2LMoAehbnz8bZEoTcwRzfYQnhj6
         MLJYKkaipHZak47FY3ij54u2fn6dKsKmjnm7gBj7nQTI4ikjTEXJQCQ+bwji1w/vnWLR
         shJ31yYEEaIaub450kXgqa7KKUJ6QWEdHqLj7q0E7FK9VmsR3HaZKx1+2w/bAIe8/2hi
         DOew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1/VflRkiKp41UB249J9USnMTa5TMG47vwkSPHR5bUn0=;
        b=lky2V+5o87qUPNWhB0L4VBc2FMX/xmlrPUkxHQD8Vgwwj0145lTUCt/Y5/3GB7lfbz
         fagWmxRYFAYkSo0XuAG8kMT2UqQrmr9hcuvZHuZBwMUuocNbAadPTggaHouZmL1A+8wD
         1OenaoJR09ufjP2xLhL/xvjjaEeIZQUdtZn8jLcaxkH7WEzHIzARgzG9WrBPz6G9CbjW
         cGdm9LGBKCCh4FrsmqoGKLv8uxv7MDf08zdPQipyuoPZiuxJCowJ9ekKJOk0XmB9WUOq
         Ikk8BuX6AvYAzEVOWXlRrSv6+P2I/Knl+Ubq0kKd6CKa5jWddVS2qdR1f0s24U+e2e5P
         uhCQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5322wZcX0Hy6Q05F6KBR8N+iO8hTxpkrgOEhxkfr5kNrI4Gj71pm
	LmheYlRAvVha11qDABUBOFQ=
X-Google-Smtp-Source: ABdhPJwskPSrNf0CbvPNzFkQnYs1g7FiEZNc/ofOCdwAzbHe7YqMzpYYwIv5DXvFGtXZF+Duf34DUA==
X-Received: by 2002:a25:da89:: with SMTP id n131mr31062975ybf.307.1619003891506;
        Wed, 21 Apr 2021 04:18:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:bac5:: with SMTP id a5ls860754ybk.11.gmail; Wed, 21 Apr
 2021 04:18:11 -0700 (PDT)
X-Received: by 2002:a25:b993:: with SMTP id r19mr32108833ybg.445.1619003891097;
        Wed, 21 Apr 2021 04:18:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619003891; cv=none;
        d=google.com; s=arc-20160816;
        b=K2UeLhJco/ZlIXtya+XUhkIncfZMScjQDowdmKlOX0/LmTm18ArCP2aH8sPYgwTyUs
         9Y0XXi0TsCIG81e93YI/N9z6KAG80XeMPRXJyM+LzkNOf5Tsmz4ZHhVjmSYpaPYt+aRH
         dikOnfDuIdRcTqj0xfQZ/fsJHeLlLNPPKhBG2pOJkgjoh3sOjdJwrU5XkoA2n9ivUXfP
         oWwGt1WlmhgTpNprnwa9pWhH7pVkWRZUtuRJSmX25CPYKHMGpUChTqS7MUyoLauBiFFT
         +YtCTZzIkFGZFpdWucJSZT1vQ2gj4oyRANhbvJdOsGaT6MmdaZl1Yiy5ZaYTLS8EAttS
         K+EQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=I9ohCaz34HyUEId76LU/ll32TNIO4OVz/ik1TwBuS6U=;
        b=gSz1Y5EWe6yPhwlzaCCj/yHIuaSuUAqHM8rAgnIoe7jNgHIYoBpF8NwaNXlhQyk91b
         angpNtAAhjU8UVehLb4vois31Wi1d1XZA+fAi9KIcjZ41wuRtLz3jnAvweGQW1rU6Kqg
         0X7RYTnDXDUdRA3TTTbekN2lhSisuOr36MGl30Yv71RUBfRyoLbdAQ4XEQqDneQ8BTG6
         kTPQmEwt7XohSA1OthCcNf2uwAaZ6db1UTZdSR6GJpni79XltcyxsnjX3s0eGs4PQThC
         F16hOfXvJTzwRzji5h/IvmPVQ4WBwcW9xadoPB2f1R9lQVMV5OhFDSP/jAX97HPbihXP
         cvoQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=fr9I2Gws;
       spf=pass (google.com: domain of schnelle@linux.ibm.com designates 148.163.156.1 as permitted sender) smtp.mailfrom=schnelle@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com. [148.163.156.1])
        by gmr-mx.google.com with ESMTPS id f13si156135ybp.0.2021.04.21.04.18.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Apr 2021 04:18:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of schnelle@linux.ibm.com designates 148.163.156.1 as permitted sender) client-ip=148.163.156.1;
Received: from pps.filterd (m0098394.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 13LB3ede077332;
	Wed, 21 Apr 2021 07:18:07 -0400
Received: from pps.reinject (localhost [127.0.0.1])
	by mx0a-001b2d01.pphosted.com with ESMTP id 382byejjqx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 21 Apr 2021 07:18:07 -0400
Received: from m0098394.ppops.net (m0098394.ppops.net [127.0.0.1])
	by pps.reinject (8.16.0.43/8.16.0.43) with SMTP id 13LB4hT3083536;
	Wed, 21 Apr 2021 07:18:06 -0400
Received: from ppma04ams.nl.ibm.com (63.31.33a9.ip4.static.sl-reverse.com [169.51.49.99])
	by mx0a-001b2d01.pphosted.com with ESMTP id 382byejjq8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 21 Apr 2021 07:18:06 -0400
Received: from pps.filterd (ppma04ams.nl.ibm.com [127.0.0.1])
	by ppma04ams.nl.ibm.com (8.16.0.43/8.16.0.43) with SMTP id 13LBHk27018923;
	Wed, 21 Apr 2021 11:18:04 GMT
Received: from b06avi18878370.portsmouth.uk.ibm.com (b06avi18878370.portsmouth.uk.ibm.com [9.149.26.194])
	by ppma04ams.nl.ibm.com with ESMTP id 37yqa8j91v-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 21 Apr 2021 11:18:04 +0000
Received: from d06av24.portsmouth.uk.ibm.com (mk.ibm.com [9.149.105.60])
	by b06avi18878370.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 13LBHc0627591094
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 21 Apr 2021 11:17:38 GMT
Received: from d06av24.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id C17FD42047;
	Wed, 21 Apr 2021 11:18:01 +0000 (GMT)
Received: from d06av24.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 65AF842041;
	Wed, 21 Apr 2021 11:18:01 +0000 (GMT)
Received: from tuxmaker.boeblingen.de.ibm.com (unknown [9.152.85.9])
	by d06av24.portsmouth.uk.ibm.com (Postfix) with ESMTP;
	Wed, 21 Apr 2021 11:18:01 +0000 (GMT)
From: Niklas Schnelle <schnelle@linux.ibm.com>
To: Arnd Bergmann <arnd@arndb.de>, Vineet Gupta <vgupta@synopsys.com>,
        "David S. Miller" <davem@davemloft.net>
Cc: Nathan Chancellor <nathan@kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        clang-built-linux@googlegroups.com, linux-arch@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-s390@vger.kernel.org,
        linux-snps-arc@lists.infradead.org, sparclinux@vger.kernel.org
Subject: [PATCH v3 3/3] asm-generic/io.h: Silence -Wnull-pointer-arithmetic warning on PCI_IOBASE
Date: Wed, 21 Apr 2021 13:17:59 +0200
Message-Id: <20210421111759.2059976-4-schnelle@linux.ibm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210421111759.2059976-1-schnelle@linux.ibm.com>
References: <20210421111759.2059976-1-schnelle@linux.ibm.com>
MIME-Version: 1.0
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: ctN-fcjvvSrmhHtVvfD6ASvxIiQetbnC
X-Proofpoint-ORIG-GUID: KfCjR8Cf2eYCUpCn6uAGEcQ0jPF5Rq2P
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391,18.0.761
 definitions=2021-04-21_04:2021-04-21,2021-04-21 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 malwarescore=0 bulkscore=0 phishscore=0
 priorityscore=1501 impostorscore=0 mlxscore=0 adultscore=0 mlxlogscore=968
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2104060000 definitions=main-2104210085
X-Original-Sender: schnelle@linux.ibm.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ibm.com header.s=pp1 header.b=fr9I2Gws;       spf=pass (google.com:
 domain of schnelle@linux.ibm.com designates 148.163.156.1 as permitted
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
platforms that do not support I/O ports if drivers do still attempt to
access them.

Make things explicit and silence the warning by letting inb() and
friends fail with WARN_ONCE() and a 0xff... return in case PCI_IOBASE is
not defined.

Signed-off-by: Niklas Schnelle <schnelle@linux.ibm.com>
---
v2 -> v3:
- Added ifdefs to ioport_map() and __pci_ioport_map() since apparently at least
  test configs enable CONFIG_HAS_IOPORT_MAP even on architectures which leave
  PCI_IOBASE unset (kernel test robot for nds32 and ARC).
v1 -> v2:
- Instead of working around the warning with a uintptr_t PCI_IOBASE make inb()
  and friends explicitly WARN_ONCE() and return 0xff... (Arnd)
 include/asm-generic/io.h | 64 +++++++++++++++++++++++++++++++++++++---
 1 file changed, 60 insertions(+), 4 deletions(-)

diff --git a/include/asm-generic/io.h b/include/asm-generic/io.h
index c6af40ce03be..aabb0a8186ee 100644
--- a/include/asm-generic/io.h
+++ b/include/asm-generic/io.h
@@ -440,10 +440,6 @@ static inline void writesq(volatile void __iomem *addr, const void *buffer,
 #endif
 #endif /* CONFIG_64BIT */
 
-#ifndef PCI_IOBASE
-#define PCI_IOBASE ((void __iomem *)0)
-#endif
-
 #ifndef IO_SPACE_LIMIT
 #define IO_SPACE_LIMIT 0xffff
 #endif
@@ -458,12 +454,17 @@ static inline void writesq(volatile void __iomem *addr, const void *buffer,
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
 
@@ -471,12 +472,17 @@ static inline u8 _inb(unsigned long addr)
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
 
@@ -484,12 +490,17 @@ static inline u16 _inw(unsigned long addr)
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
 
@@ -497,9 +508,13 @@ static inline u32 _inl(unsigned long addr)
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
 
@@ -507,9 +522,13 @@ static inline void _outb(u8 value, unsigned long addr)
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
 
@@ -517,9 +536,13 @@ static inline void _outw(u16 value, unsigned long addr)
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
 
@@ -606,7 +629,11 @@ static inline void outl_p(u32 value, unsigned long addr)
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
 
@@ -614,7 +641,11 @@ static inline void insb(unsigned long addr, void *buffer, unsigned int count)
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
 
@@ -622,7 +653,11 @@ static inline void insw(unsigned long addr, void *buffer, unsigned int count)
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
 
@@ -631,7 +666,11 @@ static inline void insl(unsigned long addr, void *buffer, unsigned int count)
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
 
@@ -640,7 +679,11 @@ static inline void outsb(unsigned long addr, const void *buffer,
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
 
@@ -649,7 +692,11 @@ static inline void outsw(unsigned long addr, const void *buffer,
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
 
@@ -1001,18 +1048,27 @@ static inline void __iomem *ioremap_uc(phys_addr_t offset, size_t size)
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210421111759.2059976-4-schnelle%40linux.ibm.com.
