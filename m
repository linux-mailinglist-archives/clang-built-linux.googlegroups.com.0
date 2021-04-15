Return-Path: <clang-built-linux+bncBCV4DH5YZYMBB5HG4CBQMGQEXVGU3AA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3d.google.com (mail-yb1-xb3d.google.com [IPv6:2607:f8b0:4864:20::b3d])
	by mail.lfdr.de (Postfix) with ESMTPS id B190E36098C
	for <lists+clang-built-linux@lfdr.de>; Thu, 15 Apr 2021 14:37:09 +0200 (CEST)
Received: by mail-yb1-xb3d.google.com with SMTP id w9sf2478559ybw.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 15 Apr 2021 05:37:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618490228; cv=pass;
        d=google.com; s=arc-20160816;
        b=V+f4qITsrQlaMTW01Eq80JpXPDzqZUGoWhExYbH90DbgoQBTu83wuzA5q+Q8/lEC5p
         17ISsv9Tx6EP70nUv1MMWaPRnBBT8FMQWl+uFJchgPvsE9oZ0gVkNFZonLsdrRcABR3O
         lrlqwYF8OIXxaJ+uxOkomd5DRHrqPl5SL/8yaq142k74YanlcwLv3TRb0RnaOJhkyJzY
         sSWZA+dZ34iZQkQfVhg40JNhfUqZPFIqyFTUT+6CMa2cojUeOqQUPcR/midDC3M1rLmD
         zREEAXzBeAUcWSqkORx/5NR1+c6QcKX72GsI+A6N6aRrNxkug2upFbhr5CW0TM9CI+cV
         m4aA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=u153XrqDS4CgBuC1nakcMOzzHwK4SrB4YlKIEdqizoM=;
        b=iQH4HVSO+p4Ps6n6i9bydtnocskU9K6DrQXugMGVEEuBMySYvzaHyasNagj4KVISCN
         6ulna1MjyDIXJrnbKOnbZx/ZMkgUCit6E5hdv39kns4yDxsxHaGrKF+BBoBHsVNIHYcn
         SGJtylQKKnvX3O2CJbotMBDKJWMRA88n8KTXgIT2RuX/a3MhQ+Ux3sq0aVxkvaaBtt70
         VnI12fmWGSdt0OQjX4xc7DQQf/mZROM3dep+AQbVA8tgmoqwqEx79+J53s0S2qgJJX5Q
         y0zKIuvgTIQMMyUBTHNyiYjwxmFGs/RsdaPJIlBCv6YtwE4gHEcacgTBWRo582PzDyGn
         Aigw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=a3p1i+G2;
       spf=pass (google.com: domain of schnelle@linux.ibm.com designates 148.163.158.5 as permitted sender) smtp.mailfrom=schnelle@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=u153XrqDS4CgBuC1nakcMOzzHwK4SrB4YlKIEdqizoM=;
        b=fZM8144NYRv3iBDDyGIerikX2DKmkP+NZsBaprubOZnhTdkmUWPnKpYujIOAm6vs1V
         bQtVA4BNieZXWde/fFqYnwFAqS4n21hJZIfpXowaP6srM5emMbRMg8ZpEsb0mqRIeeRt
         MgnYelRPeDPVGScYp9BSViSN6REFjZUWJ3ZXySyx2b9mUhZ7YK36x09Tu7po3r/+4HIy
         k2mB2m7MxCX3acJDkyuFVfEpXh7EgNt3qqmNZWeCSbJTIRqgxTEQV+S5HNuHGdLtIYn7
         5UmTkGRHH0HGgKoz+O+zqx3QHG3PRn6W9NOuGf95zCsC0Ur6eaPYWydx/zkO5ryuxn/Y
         nVrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=u153XrqDS4CgBuC1nakcMOzzHwK4SrB4YlKIEdqizoM=;
        b=f3Zq2hIKAC5NHESxVOfjSB7j2Qa+M28qKsklJMIJP+jf5aUli3TZH9M4SAni5LsLZ2
         MQ2+IngbLcK3Oz5oLV3FXAAPgEKq1ytYTkfRCWGJ/lzzlzqYuP9QlYF+UjObMlgvucnY
         h9CiA/8zL8HzTmbR5J1YGQ5poRG/YBKkQ5noozNb8ZDjGLc47xV7KQWgch3WnwZS+3D+
         WjdCRkTBGntH3JLFsGHXpm+1UyOTKO+6YWQPNkvxEq/ed4T1URcLSPTdYErEjJPJdwQb
         M756k0AIsCSaMIM9tjvqNVH3PY/QajNgyhFqYlnn8IGQ95bGSDAw+PWIi1qTPMkH+dMK
         JMMg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533dWx65bR0lepAhY0gxigpH5DDboizM5Bim7HOU0mzqnakzNB9w
	lkf7dCnipLAXAc277Q5YXKo=
X-Google-Smtp-Source: ABdhPJw/4z6kcJwMoR92MUxRL0AsjzvQvt48YSPfD6uQ3pTm0AJ5jHdFU7LAQNbidv5EYNl1x4h0ew==
X-Received: by 2002:a25:7d84:: with SMTP id y126mr4158633ybc.179.1618490228574;
        Thu, 15 Apr 2021 05:37:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:da84:: with SMTP id n126ls2535908ybf.3.gmail; Thu, 15
 Apr 2021 05:37:08 -0700 (PDT)
X-Received: by 2002:a25:4044:: with SMTP id n65mr4349388yba.163.1618490228105;
        Thu, 15 Apr 2021 05:37:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618490228; cv=none;
        d=google.com; s=arc-20160816;
        b=RySTVd4k9NXMkONLlGiJV6EKYLSrE8J0dY/n4V0dqG3oYp00V+lXK+UgKtuVK05r6i
         hs8Xn983RKezPuyUIWvzJRKcghh6WF4guoPisV/HmeCc5MP3hg0ypDUXIi4FIgBML9k3
         14cdO0jM18weKjm9VANCoDAsPi9yXVhWQUI0lvxaWnP2xc4YPQ7BRMLQUhRrSN3HYwe+
         J0JhR8PvDp+e841TgJ/7H2N+mKNsaFX1svSXY5r9sgfGY7YTCCs6cqSx7N0Y5cAP9YWV
         8aEX5u76YaumDq6bsKlF8nHNNZNHE36qCf1kRD55zH6F2NaFkzdqzm12stcoZ30UNj1b
         OnaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=d0itctMzBLcnqy3hAoT3WZvvdMlPZf4OOgZVRv6QQ0w=;
        b=azJP7OyhgmO2oA5zdpYeaSXmfM0oQscJZhvGxhHoGlLobeE+lgPkHZTOm3rTTYTxF1
         6SRaH4s3pXQKeKHL+GgTaiLg0y+ALaMYxfinFpyoKHTgb7pxdn8kLh2kWLPwYloKuC4o
         IGM6ZaQXgK5WkoXRkdwZ0HHUKdccPLDa7Jpr6eu+liGPhz4efY8ertI812EgyJmqEO5R
         YjtIjaGTJ19R8n/vMHB1xy6AMIwrPgMSXFa++6bIoSr2DNGJ3ytMuX3VWJhz9MZudNgR
         ++yR0dzNjO6T3V6uo96UwimbcQCBsMiYPYV7uaMl2j6v9y0rcxdI1B7K3OpGBjyHx4W5
         8hrg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=a3p1i+G2;
       spf=pass (google.com: domain of schnelle@linux.ibm.com designates 148.163.158.5 as permitted sender) smtp.mailfrom=schnelle@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
Received: from mx0a-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com. [148.163.158.5])
        by gmr-mx.google.com with ESMTPS id h188si214618ybh.5.2021.04.15.05.37.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Apr 2021 05:37:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of schnelle@linux.ibm.com designates 148.163.158.5 as permitted sender) client-ip=148.163.158.5;
Received: from pps.filterd (m0098419.ppops.net [127.0.0.1])
	by mx0b-001b2d01.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 13FCXxUV152646;
	Thu, 15 Apr 2021 08:37:06 -0400
Received: from pps.reinject (localhost [127.0.0.1])
	by mx0b-001b2d01.pphosted.com with ESMTP id 37xbqk6xsa-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 15 Apr 2021 08:37:06 -0400
Received: from m0098419.ppops.net (m0098419.ppops.net [127.0.0.1])
	by pps.reinject (8.16.0.43/8.16.0.43) with SMTP id 13FCY29R153869;
	Thu, 15 Apr 2021 08:37:05 -0400
Received: from ppma04ams.nl.ibm.com (63.31.33a9.ip4.static.sl-reverse.com [169.51.49.99])
	by mx0b-001b2d01.pphosted.com with ESMTP id 37xbqk6xrh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 15 Apr 2021 08:37:05 -0400
Received: from pps.filterd (ppma04ams.nl.ibm.com [127.0.0.1])
	by ppma04ams.nl.ibm.com (8.16.0.43/8.16.0.43) with SMTP id 13FCWBQY002976;
	Thu, 15 Apr 2021 12:37:04 GMT
Received: from b06avi18626390.portsmouth.uk.ibm.com (b06avi18626390.portsmouth.uk.ibm.com [9.149.26.192])
	by ppma04ams.nl.ibm.com with ESMTP id 37u3n8uvmn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 15 Apr 2021 12:37:03 +0000
Received: from b06wcsmtp001.portsmouth.uk.ibm.com (b06wcsmtp001.portsmouth.uk.ibm.com [9.149.105.160])
	by b06avi18626390.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 13FCaddN30671210
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 15 Apr 2021 12:36:39 GMT
Received: from b06wcsmtp001.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 63188A405F;
	Thu, 15 Apr 2021 12:37:01 +0000 (GMT)
Received: from b06wcsmtp001.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 1BB71A4066;
	Thu, 15 Apr 2021 12:37:01 +0000 (GMT)
Received: from tuxmaker.boeblingen.de.ibm.com (unknown [9.152.85.9])
	by b06wcsmtp001.portsmouth.uk.ibm.com (Postfix) with ESMTP;
	Thu, 15 Apr 2021 12:37:01 +0000 (GMT)
From: Niklas Schnelle <schnelle@linux.ibm.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: Nathan Chancellor <nathan@kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        clang-built-linux@googlegroups.com, linux-arch@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-s390@vger.kernel.org
Subject: [PATCH v2 2/2] asm-generic/io.h: Silence -Wnull-pointer-arithmetic warning on PCI_IOBASE
Date: Thu, 15 Apr 2021 14:37:00 +0200
Message-Id: <20210415123700.3030728-3-schnelle@linux.ibm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210415123700.3030728-1-schnelle@linux.ibm.com>
References: <20210415123700.3030728-1-schnelle@linux.ibm.com>
MIME-Version: 1.0
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: UmDuanvdYNuPbojAaZkaWYTGbbjMHT-1
X-Proofpoint-ORIG-GUID: quZWJ8VenqYngs18DpT62iEWgxkdwKdT
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391,18.0.761
 definitions=2021-04-15_04:2021-04-15,2021-04-15 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015
 priorityscore=1501 spamscore=0 suspectscore=0 phishscore=0
 lowpriorityscore=0 adultscore=0 mlxlogscore=999 bulkscore=0 malwarescore=0
 impostorscore=0 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2104060000 definitions=main-2104150084
X-Original-Sender: schnelle@linux.ibm.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ibm.com header.s=pp1 header.b=a3p1i+G2;       spf=pass (google.com:
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
platforms that do not support I/O ports if drivers do still attempt to
access them.

Make things explicit and silence the warning by letting inb() and
friends fail with WARN_ONCE() and a 0xff... return in case PCI_IOBASE is
not defined.

Signed-off-by: Niklas Schnelle <schnelle@linux.ibm.com>
---
v1 -> v2:
- Instead of working around the warning with a uintptr_t PCI_IOBASE make inb()
  and friends explicitly WARN_ONCE() and return 0xff... (Arnd)

 include/asm-generic/io.h | 55 +++++++++++++++++++++++++++++++++++++---
 1 file changed, 51 insertions(+), 4 deletions(-)

diff --git a/include/asm-generic/io.h b/include/asm-generic/io.h
index c6af40ce03be..e6c549b678c4 100644
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
 
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210415123700.3030728-3-schnelle%40linux.ibm.com.
