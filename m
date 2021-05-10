Return-Path: <clang-built-linux+bncBCV4DH5YZYMBBHPJ4OCAMGQE2N2JGYY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x539.google.com (mail-pg1-x539.google.com [IPv6:2607:f8b0:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E905377EA8
	for <lists+clang-built-linux@lfdr.de>; Mon, 10 May 2021 10:53:50 +0200 (CEST)
Received: by mail-pg1-x539.google.com with SMTP id i8-20020a6548480000b02901fb8ebd5714sf9894708pgs.12
        for <lists+clang-built-linux@lfdr.de>; Mon, 10 May 2021 01:53:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620636829; cv=pass;
        d=google.com; s=arc-20160816;
        b=FzYEG67Mhb2SkCzX+4mMrKNVJ0CIOtFjacOY9OxLOnhYCd7FFE4MvR1Ow9KwlfyqGP
         fBnWnhe+tsn/HowEWygZjkCZZkLDp7qXygK5GAtu29VXZXdfY+y8zmwAjuP3mpWjhyCi
         pZp30OvMV17ZR6SWoIQfbNLJndAyTKnUwmgumsVlGbAKPUpIiApFSp0fd3+wrCo4vEwq
         FDppaFcZndSdAL+Pjde5/P/V/bcYYBjvyPWcOpQwiFFVTPSRYKE1hF/gwdTkuonwuR8e
         b5eoCwasV/nf9oeOyaMRfqhlNZpc8dUWq8BNDox3ASmJUv9NkDedhLNKCR/yM20ipaQ5
         Ppgw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=EileVETmiVG6WuosuEh4EyFR67/eBzH+gwbbr63/F3w=;
        b=eL+8tv++6to3w9HBInTc1QO1M0DC+SsZ1fiFD6m5TIjM09i+DHbBAAGr6vaEaOWeyr
         KPAobkrCynuOYWIdpw7W5KiZpTQGwbahgbUOh6BwCwu1N9Aa37OcQyxpmR5Btve9aoig
         8OscsB98lfW+sy9xI5f+ztAZiOcqULiZrsC7PvrHyD7+NUwP8bP8BHWk2fTbSwcyQh/i
         1QlhrFIMfbzpQRZHJ8Tk0Mgq8xXacx9G0K7IDBJfy/xuqizcRWu3hTGb7eOfmSarBKUM
         U0WfDqk8p3/iCy3S/oD9dHksOITCHhIL/J4ssu7q5tH7Kp2UqerQ58l7tRXGRup30s5E
         IMOw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=O33KM7of;
       spf=pass (google.com: domain of schnelle@linux.ibm.com designates 148.163.158.5 as permitted sender) smtp.mailfrom=schnelle@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EileVETmiVG6WuosuEh4EyFR67/eBzH+gwbbr63/F3w=;
        b=Nge77Le+wx3+9QNxPqnsYkXYuzWsG31dN9FXG0eu4hvzJhEdrGiXjEb9/QfnxWe/es
         x05qLQr1eI+VhMn6fukBSXY3ivwKWPHsMlO1hBVxIDIiK+2r7gaV54Up5hPVhHJZiv87
         xjdxkZMJiDedKIBVyPjYQRITXboMLY8bowpHScOdP+WoUKKMe5DGpogPQAyxlcMxpXU9
         CzxfgdMVPMNjV9YFSyIIO3pwDxMRYr0fsp4EOdzclpxpn9xrHfx+QBwdgFVRKBny76Wi
         lsFcpMdB8IE8ZdOIuq8KPi8JV3Kd+JWSNR/66Di69vBe2NM01F+mL/LinQKGeUnmOXp/
         DXCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EileVETmiVG6WuosuEh4EyFR67/eBzH+gwbbr63/F3w=;
        b=sY9Zpn27O9fpcUxwCLaENanLoKiRcxV8tyRHNCoJdPm3ygy+oORks7avIRmLm6Ivt3
         nHOfnLVDmCEwL/05XbG28Avn7xAlsl0yhkWkEMmVrWYzpx7INEiC/BDt3TvtGfMwEw8X
         y9LkxCvLKxZ4MYswoRzFzP65HTw957ASofW2WXrQmIcLBVR8m9vL0gGUSOxfWIAVajch
         bnWpDHRrR1GFR+RjkoJHH6WqL9AQVR28LEUj6m7Oa09mf6hWDJ6pBIH7bVL120qGB3ss
         UUqpcZa7hxRhAf2f2tuK5c4LnM9ziXSwG38ySara8lnBvAbHTE4btJjxv03/reSVlD5K
         uZlg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53360/NqX7n2dlZS/Xf0d7F4HdvBo89O/m0tW1+ot0ANZVWdJnFe
	ZMc3lsdPNJHkB0wIXNiDTHI=
X-Google-Smtp-Source: ABdhPJwBNwZL/gJfDgxTjEwcmoODCjPPC0EcfpG69kTrV89PTWxGHHF/9SS5F+i1PDHZWBfpmnKj2w==
X-Received: by 2002:a17:90a:ba01:: with SMTP id s1mr39340240pjr.74.1620636829323;
        Mon, 10 May 2021 01:53:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:860c:: with SMTP id f12ls7132297plo.5.gmail; Mon, 10
 May 2021 01:53:48 -0700 (PDT)
X-Received: by 2002:a17:902:6b46:b029:ef:bc1:b3e4 with SMTP id g6-20020a1709026b46b02900ef0bc1b3e4mr15581565plt.10.1620636828704;
        Mon, 10 May 2021 01:53:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620636828; cv=none;
        d=google.com; s=arc-20160816;
        b=0HAiBEB0wtUJf5jTxuNYwppmtA14kvJq7BlHha7zywHOHMzjagQMkNtl/i87DEZcJ/
         fH7bUqNB32vG30DDc7RxonAqyN6iz2GBB2DED+7j5YbW2euAw6gww/WzfXMWH5Jb1BAo
         wGLGJAf5pHj5KzYXaf/IaHP8pXhqzmXB1yoE6/bYa099ob+ZuNiSmcBSceYpTtEOrQHy
         Kc+JWaDZbSzv8nWBJ1MFqOUWbwiUKlPyobn9S3T7q4LXBmWewHxzXLkApeJA4sjC3l3u
         REJsESrBnrWwyGexkhAAVH9DqLUFhuyFcnsOFrg7DRSKl2hjwjWqyVn5F3aZQen6v6+U
         nfYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=KTQxO0IWEBnipVyxp6Fd/H0bA828QsZiHmmsIJMhYdA=;
        b=YfUgTevmvH0OQRiOCAdgqZAU3m2CX0pA4CdWUlwGLC+DF31X2iMbOzfaOkBwMvjkfx
         rPzoJk2Mj2yR2JIPQBqcaT1l60cIn9ImPgvKHvpCgEA9hod3CX/uhzw5k8Y6oV1BP44s
         XM4rV65OL+iA5TQaNVrx7oaR84pm1xGTBrMRkod66nYTJlDWXWHb+Ja6NZvkvxO88kJp
         d/5j9L1SMZ018eYKIiiYQc4nxID9ym/oeAjNZorFSleD0wTrCYKCHtsTAlBkOskeFIIn
         wmwn/C1l1BS4Wj2F5ExlmXr4Xvw3piuMuDnxCj49sAXm7nzrvkRH+oAFjXRKLtkJbNM1
         Kl5Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=O33KM7of;
       spf=pass (google.com: domain of schnelle@linux.ibm.com designates 148.163.158.5 as permitted sender) smtp.mailfrom=schnelle@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
Received: from mx0b-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com. [148.163.158.5])
        by gmr-mx.google.com with ESMTPS id k15si181255pjq.3.2021.05.10.01.53.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 10 May 2021 01:53:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of schnelle@linux.ibm.com designates 148.163.158.5 as permitted sender) client-ip=148.163.158.5;
Received: from pps.filterd (m0098421.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 14A8Xs20191813;
	Mon, 10 May 2021 04:53:45 -0400
Received: from pps.reinject (localhost [127.0.0.1])
	by mx0a-001b2d01.pphosted.com with ESMTP id 38f19a0qr3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 10 May 2021 04:53:45 -0400
Received: from m0098421.ppops.net (m0098421.ppops.net [127.0.0.1])
	by pps.reinject (8.16.0.43/8.16.0.43) with SMTP id 14A8YEa9195724;
	Mon, 10 May 2021 04:53:45 -0400
Received: from ppma04ams.nl.ibm.com (63.31.33a9.ip4.static.sl-reverse.com [169.51.49.99])
	by mx0a-001b2d01.pphosted.com with ESMTP id 38f19a0qqj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 10 May 2021 04:53:45 -0400
Received: from pps.filterd (ppma04ams.nl.ibm.com [127.0.0.1])
	by ppma04ams.nl.ibm.com (8.16.0.43/8.16.0.43) with SMTP id 14A8puT1032599;
	Mon, 10 May 2021 08:53:43 GMT
Received: from b06cxnps4074.portsmouth.uk.ibm.com (d06relay11.portsmouth.uk.ibm.com [9.149.109.196])
	by ppma04ams.nl.ibm.com with ESMTP id 38dj988sma-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 10 May 2021 08:53:43 +0000
Received: from d06av21.portsmouth.uk.ibm.com (d06av21.portsmouth.uk.ibm.com [9.149.105.232])
	by b06cxnps4074.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 14A8rel642664428
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 10 May 2021 08:53:41 GMT
Received: from d06av21.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id D5BB352051;
	Mon, 10 May 2021 08:53:40 +0000 (GMT)
Received: from tuxmaker.boeblingen.de.ibm.com (unknown [9.152.85.9])
	by d06av21.portsmouth.uk.ibm.com (Postfix) with ESMTP id 86EC852054;
	Mon, 10 May 2021 08:53:40 +0000 (GMT)
From: Niklas Schnelle <schnelle@linux.ibm.com>
To: Arnd Bergmann <arnd@arndb.de>, Vineet Gupta <vgupta@synopsys.com>,
        "David S. Miller" <davem@davemloft.net>
Cc: Nathan Chancellor <nathan@kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        clang-built-linux@googlegroups.com, linux-arch@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-s390@vger.kernel.org,
        linux-snps-arc@lists.infradead.org, sparclinux@vger.kernel.org
Subject: [PATCH v5 3/3] asm-generic/io.h: warn in inb() and friends with undefined PCI_IOBASE
Date: Mon, 10 May 2021 10:53:39 +0200
Message-Id: <20210510085339.1857696-4-schnelle@linux.ibm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210510085339.1857696-1-schnelle@linux.ibm.com>
References: <20210510085339.1857696-1-schnelle@linux.ibm.com>
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: lt4WvBzPqWcPuaEn9ddQ7T59OQnmIB_w
X-Proofpoint-ORIG-GUID: FfQlznQpHXOlcYIz5WcgABTNATqREt0K
X-Proofpoint-UnRewURL: 0 URL was un-rewritten
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391,18.0.761
 definitions=2021-05-10_04:2021-05-10,2021-05-10 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 suspectscore=0
 priorityscore=1501 mlxscore=0 impostorscore=0 spamscore=0 bulkscore=0
 mlxlogscore=999 adultscore=0 lowpriorityscore=0 clxscore=1015
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2104190000 definitions=main-2105100061
X-Original-Sender: schnelle@linux.ibm.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ibm.com header.s=pp1 header.b=O33KM7of;       spf=pass (google.com:
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210510085339.1857696-4-schnelle%40linux.ibm.com.
