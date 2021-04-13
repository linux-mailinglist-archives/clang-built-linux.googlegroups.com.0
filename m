Return-Path: <clang-built-linux+bncBCV4DH5YZYMBBCEN22BQMGQEO3Y2PKI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103a.google.com (mail-pj1-x103a.google.com [IPv6:2607:f8b0:4864:20::103a])
	by mail.lfdr.de (Postfix) with ESMTPS id EFFF235DE19
	for <lists+clang-built-linux@lfdr.de>; Tue, 13 Apr 2021 13:54:49 +0200 (CEST)
Received: by mail-pj1-x103a.google.com with SMTP id q10-20020a17090a2dcab029014e44f5454asf4502949pjm.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 13 Apr 2021 04:54:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618314888; cv=pass;
        d=google.com; s=arc-20160816;
        b=YYoHNTwbP3hINu8Ujl/ZIJoDCtXVDD7aNNST1bsQlT+6v+/Z9s2kq8F5LuiO0W8rPm
         /qJgtKAX5zTy77INgDkniunmfImpdfzfKDzQAwgjidzBZZQ1eyKnFlnlmoo+YPhDY0hw
         /ABvBErOK780fAcXIZ+KmLqxse4te/yJRc5+hQUv/5zt+mU8L5MzJ7YyWI+37TbhIR++
         7PZRtMqMXpDpW1MVQuCBFry1Yfq8dEtE5Kx+FQcdrmNccYE7ImgRNytrzIRlJkQp2Jmp
         VTBX6lcjh5OfJZratoX71bQYJvgm01VNilu3QbkaW/mldYl2jKlpleJIovlfyUpatuc4
         7JGQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=8vY3blDuXTq90abKg2UJrkoLGeU+m3OIT48IqXXGeRo=;
        b=waOfY144jeqRFcVSP+d2Nbtku5uSsH/7KXa8qNVbyWvs7m+bi+ijP9OqjTNxbtyyGu
         Og2zo/cStvALTbDZk4bMOZZ9hngxFJSNt4rsa5DZPaVMIP/L7wh9f/GoUBXWfOavZ9sb
         uXpz4Z+kqt7WtX6IRhW1fRhZthdc6bPxWsNSasXsNxpQFrAsk8GC9ysg3/ofY4SIKyIr
         ddG7QDgZFMz3YjCHKQDILntMLJPxX9G26Aoj7NjnQblDse3wYVqK/OxQhHeqiUUSTTMc
         b3XNu8YufN8TJbPxy7/Zjn9iOxNk7yuI9B5vF+apXtFtz6J1Nh+hhXuNII+PQz7aFL2w
         MDQA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=LqqG02oI;
       spf=pass (google.com: domain of schnelle@linux.ibm.com designates 148.163.156.1 as permitted sender) smtp.mailfrom=schnelle@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8vY3blDuXTq90abKg2UJrkoLGeU+m3OIT48IqXXGeRo=;
        b=GPSlff4HQfqQMiZ0qhUw+aVkCU0Phq3kJKSMuPAU0dIkGE7AmZuJOeiDOy9E5nhfD2
         zKpV+goJR+0JgeU5Gz51UZJbLeTjSKglSXOIOM6KmVK5J6MgLGmH3Ht7ev6+IGvnOS0G
         YDpYJHRzJFWijAnVnUtk+JZS4LuSOdzHYnKF6LMbMoMUg+eeLJTD13jsHjxNkl+BeXs0
         VV1OWpHPy8zX/MGNinWpRm/IwqU1RQTlDHikW8dtkT22kEvV5WCUU12vCkY1VSArBfL1
         uv3M/1Am4cvoGcRL7snXCIMNSinCzSlpTlB51FDJLhkbQgdCeXDklKQ7CrNxoEO+dyqC
         qEFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8vY3blDuXTq90abKg2UJrkoLGeU+m3OIT48IqXXGeRo=;
        b=rXrIy5BRbl97udlkTse1k1a2F1xGvazBOaniZmE89PAWXf7I1jzMqU9ZXMz2EsjELm
         jzteuABO7iOlwAcSpX8bHVH5LfULGJqXNMAkllErVgu/0g9+0ZweQRR02FvblBLS2WbY
         P2kWX0AEVYLzDGvnSjz81RZoqYDocWrCH8SnLQYQTca9jHHF2UlGYavPBLjULLc5kwKy
         CLK986Qc1oPOzHSyqOLOssR3/ubitJkgdlgN1EGS4LO/3AZT83BTN51uJrT9lCHyL3b8
         e+XwBkcssxdIkYOLsdOhpOZ3LFw6NYMHXfDp2/ND+Wi1ZizuHku/Mfe5GDtp4zbbYfhW
         3v/Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530zISQ5eTMKZf+pc9gFw+dlwjC+dkjeBdenRjFBkg1MHY+eaiij
	BLhIOvDugmDE2kQvCyF4t2I=
X-Google-Smtp-Source: ABdhPJzHrbymvz2GjT7EJ55tgtxs88yic5RiSCH+yq/xO29E26IecQjKRx9nB8GCudW/lVxESC8aoA==
X-Received: by 2002:a17:902:24:b029:e9:3f8f:9af9 with SMTP id 33-20020a1709020024b02900e93f8f9af9mr32327999pla.34.1618314888647;
        Tue, 13 Apr 2021 04:54:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:ab81:: with SMTP id n1ls1569490pjq.3.gmail; Tue, 13
 Apr 2021 04:54:48 -0700 (PDT)
X-Received: by 2002:a17:90b:1a89:: with SMTP id ng9mr4521437pjb.36.1618314888188;
        Tue, 13 Apr 2021 04:54:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618314888; cv=none;
        d=google.com; s=arc-20160816;
        b=us/xtOYbNi85vE8pFoB6X0qgbulz7KP9Bm4C5Qo4MvnzJULj+WzPUaQSiQuq6kZrGV
         cIGoWd0z0mLO/oUsSEksW2YxAldGgqFmbbU6X4305rI+zzUJlhTrPnmMMDRCd9azgk0G
         nn5fmFCzlmeqkjhXdRfAL8iR0F7RdbwmPDDkOnb5oVxWJ7AWMh9DIWIvgfv2Ygv6OEAF
         Av0O/t0+n4+tAOr8uBur7wt9H1riHRX81agPW1VJCWJ335Ss33z+1Y0RpbWmKMOayVKL
         8Ngi+xlTuGvmN53P6oZV2l2VixGbyEJOSyk423xkK3lokim5lB4mLhv4oJlPSFz7O5cs
         fG1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=K1D0TefXvbQcZQJhHF0HWva11X2Hy1Uc9SEtL0kx9ZY=;
        b=coMTyQWu8iaebdTQIbliTAmg4VKNmBk8W2oepGeFzde6yqTHxOWvEWvCEQ+zmjcqFm
         /gbC3tjReXOxZLYROzT5gr4ppq9RQTHVxhMSwdm12HLJFBS2+klf5vGVnuWgjotfJUnE
         v/q+zn50kFgWQIRYRkzzVCyCu9OAzRk2bJh39K7dhzNkANrJuSyt+mu1hgBWYeXq2XGl
         F0Pn0hYLq0ApN5qurSZen8duK0/ZhW5QEGHUQr1H4YuehoP7KfFbuRpymX6Zi77FOxm9
         +RuFYH7SMtne5k2ii0Xiaf47pkmqKnstgXEYXeYCdqcEJ06FPfiosLV+5JiGzXsIsHZX
         ZB1g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=LqqG02oI;
       spf=pass (google.com: domain of schnelle@linux.ibm.com designates 148.163.156.1 as permitted sender) smtp.mailfrom=schnelle@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com. [148.163.156.1])
        by gmr-mx.google.com with ESMTPS id z22si1291147pfc.6.2021.04.13.04.54.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Apr 2021 04:54:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of schnelle@linux.ibm.com designates 148.163.156.1 as permitted sender) client-ip=148.163.156.1;
Received: from pps.filterd (m0098393.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 13DBYGJK093276;
	Tue, 13 Apr 2021 07:54:45 -0400
Received: from pps.reinject (localhost [127.0.0.1])
	by mx0a-001b2d01.pphosted.com with ESMTP id 37vkpjqh1x-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 13 Apr 2021 07:54:45 -0400
Received: from m0098393.ppops.net (m0098393.ppops.net [127.0.0.1])
	by pps.reinject (8.16.0.43/8.16.0.43) with SMTP id 13DBYrMg094933;
	Tue, 13 Apr 2021 07:54:44 -0400
Received: from ppma05fra.de.ibm.com (6c.4a.5195.ip4.static.sl-reverse.com [149.81.74.108])
	by mx0a-001b2d01.pphosted.com with ESMTP id 37vkpjqh1b-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 13 Apr 2021 07:54:44 -0400
Received: from pps.filterd (ppma05fra.de.ibm.com [127.0.0.1])
	by ppma05fra.de.ibm.com (8.16.0.43/8.16.0.43) with SMTP id 13DBr8Rg018615;
	Tue, 13 Apr 2021 11:54:42 GMT
Received: from b06cxnps3074.portsmouth.uk.ibm.com (d06relay09.portsmouth.uk.ibm.com [9.149.109.194])
	by ppma05fra.de.ibm.com with ESMTP id 37u3n89d68-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 13 Apr 2021 11:54:41 +0000
Received: from d06av21.portsmouth.uk.ibm.com (d06av21.portsmouth.uk.ibm.com [9.149.105.232])
	by b06cxnps3074.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 13DBsdrL27001124
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 13 Apr 2021 11:54:39 GMT
Received: from d06av21.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 7520D52052;
	Tue, 13 Apr 2021 11:54:39 +0000 (GMT)
Received: from tuxmaker.boeblingen.de.ibm.com (unknown [9.152.85.9])
	by d06av21.portsmouth.uk.ibm.com (Postfix) with ESMTP id 2DD725204E;
	Tue, 13 Apr 2021 11:54:39 +0000 (GMT)
From: Niklas Schnelle <schnelle@linux.ibm.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: Nathan Chancellor <nathan@kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        clang-built-linux@googlegroups.com, linux-arch@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-s390@vger.kernel.org
Subject: [PATCH] asm-generic/io.h: Silence -Wnull-pointer-arithmetic warning on PCI_IOBASE
Date: Tue, 13 Apr 2021 13:54:39 +0200
Message-Id: <20210413115439.1011560-1-schnelle@linux.ibm.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: Svov5rAQw-nSijM3JuZ1icP9P81uchPp
X-Proofpoint-ORIG-GUID: Yp3UWpatE9sMn0DVXWk63CSU3xVUGLub
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391,18.0.761
 definitions=2021-04-13_04:2021-04-13,2021-04-13 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 spamscore=0
 impostorscore=0 malwarescore=0 mlxlogscore=999 mlxscore=0
 lowpriorityscore=0 clxscore=1011 adultscore=0 phishscore=0
 priorityscore=1501 bulkscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2104060000 definitions=main-2104130081
X-Original-Sender: schnelle@linux.ibm.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ibm.com header.s=pp1 header.b=LqqG02oI;       spf=pass (google.com:
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
in calls to the readX/writeX primitives. While mathematically obvious
this triggers clang's -Wnull-pointer-arithmetic warning.

An additional complication is that PCI_IOBASE is explicitly typed as
"void __iomem *" which causes the type conversion that converts the
"unsigned long" port/addr parameters to the appropriate pointer type.
As non pointer types are used by drivers at the callsite since these are
dealing with I/O port numbers, changing the parameter type would cause
further warnings in drivers. Instead use "uintptr_t" for PCI_IOBASE
0 and explicitly cast to "void __iomem *" when calling readX/writeX.

Signed-off-by: Niklas Schnelle <schnelle@linux.ibm.com>
---
 include/asm-generic/io.h | 26 +++++++++++++-------------
 1 file changed, 13 insertions(+), 13 deletions(-)

diff --git a/include/asm-generic/io.h b/include/asm-generic/io.h
index c6af40ce03be..8eb00bdef7ad 100644
--- a/include/asm-generic/io.h
+++ b/include/asm-generic/io.h
@@ -441,7 +441,7 @@ static inline void writesq(volatile void __iomem *addr, const void *buffer,
 #endif /* CONFIG_64BIT */
 
 #ifndef PCI_IOBASE
-#define PCI_IOBASE ((void __iomem *)0)
+#define PCI_IOBASE ((uintptr_t)0)
 #endif
 
 #ifndef IO_SPACE_LIMIT
@@ -461,7 +461,7 @@ static inline u8 _inb(unsigned long addr)
 	u8 val;
 
 	__io_pbr();
-	val = __raw_readb(PCI_IOBASE + addr);
+	val = __raw_readb((void __iomem *)(PCI_IOBASE + addr));
 	__io_par(val);
 	return val;
 }
@@ -474,7 +474,7 @@ static inline u16 _inw(unsigned long addr)
 	u16 val;
 
 	__io_pbr();
-	val = __le16_to_cpu((__le16 __force)__raw_readw(PCI_IOBASE + addr));
+	val = __le16_to_cpu((__le16 __force)__raw_readw((void __iomem *)(PCI_IOBASE + addr)));
 	__io_par(val);
 	return val;
 }
@@ -487,7 +487,7 @@ static inline u32 _inl(unsigned long addr)
 	u32 val;
 
 	__io_pbr();
-	val = __le32_to_cpu((__le32 __force)__raw_readl(PCI_IOBASE + addr));
+	val = __le32_to_cpu((__le32 __force)__raw_readl((void __iomem *)(PCI_IOBASE + addr)));
 	__io_par(val);
 	return val;
 }
@@ -498,7 +498,7 @@ static inline u32 _inl(unsigned long addr)
 static inline void _outb(u8 value, unsigned long addr)
 {
 	__io_pbw();
-	__raw_writeb(value, PCI_IOBASE + addr);
+	__raw_writeb(value, (void __iomem *)(PCI_IOBASE + addr));
 	__io_paw();
 }
 #endif
@@ -508,7 +508,7 @@ static inline void _outb(u8 value, unsigned long addr)
 static inline void _outw(u16 value, unsigned long addr)
 {
 	__io_pbw();
-	__raw_writew((u16 __force)cpu_to_le16(value), PCI_IOBASE + addr);
+	__raw_writew((u16 __force)cpu_to_le16(value), (void __iomem *)(PCI_IOBASE + addr));
 	__io_paw();
 }
 #endif
@@ -518,7 +518,7 @@ static inline void _outw(u16 value, unsigned long addr)
 static inline void _outl(u32 value, unsigned long addr)
 {
 	__io_pbw();
-	__raw_writel((u32 __force)cpu_to_le32(value), PCI_IOBASE + addr);
+	__raw_writel((u32 __force)cpu_to_le32(value), (void __iomem *)(PCI_IOBASE + addr));
 	__io_paw();
 }
 #endif
@@ -606,7 +606,7 @@ static inline void outl_p(u32 value, unsigned long addr)
 #define insb insb
 static inline void insb(unsigned long addr, void *buffer, unsigned int count)
 {
-	readsb(PCI_IOBASE + addr, buffer, count);
+	readsb((void __iomem *)(PCI_IOBASE + addr), buffer, count);
 }
 #endif
 
@@ -614,7 +614,7 @@ static inline void insb(unsigned long addr, void *buffer, unsigned int count)
 #define insw insw
 static inline void insw(unsigned long addr, void *buffer, unsigned int count)
 {
-	readsw(PCI_IOBASE + addr, buffer, count);
+	readsw((void __iomem *)(PCI_IOBASE + addr), buffer, count);
 }
 #endif
 
@@ -622,7 +622,7 @@ static inline void insw(unsigned long addr, void *buffer, unsigned int count)
 #define insl insl
 static inline void insl(unsigned long addr, void *buffer, unsigned int count)
 {
-	readsl(PCI_IOBASE + addr, buffer, count);
+	readsl((void __iomem *)(PCI_IOBASE + addr), buffer, count);
 }
 #endif
 
@@ -631,7 +631,7 @@ static inline void insl(unsigned long addr, void *buffer, unsigned int count)
 static inline void outsb(unsigned long addr, const void *buffer,
 			 unsigned int count)
 {
-	writesb(PCI_IOBASE + addr, buffer, count);
+	writesb((void __iomem *)(PCI_IOBASE + addr), buffer, count);
 }
 #endif
 
@@ -640,7 +640,7 @@ static inline void outsb(unsigned long addr, const void *buffer,
 static inline void outsw(unsigned long addr, const void *buffer,
 			 unsigned int count)
 {
-	writesw(PCI_IOBASE + addr, buffer, count);
+	writesw((void __iomem *)(PCI_IOBASE + addr), buffer, count);
 }
 #endif
 
@@ -649,7 +649,7 @@ static inline void outsw(unsigned long addr, const void *buffer,
 static inline void outsl(unsigned long addr, const void *buffer,
 			 unsigned int count)
 {
-	writesl(PCI_IOBASE + addr, buffer, count);
+	writesl((void __iomem *)(PCI_IOBASE + addr), buffer, count);
 }
 #endif
 
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210413115439.1011560-1-schnelle%40linux.ibm.com.
