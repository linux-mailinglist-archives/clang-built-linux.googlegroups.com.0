Return-Path: <clang-built-linux+bncBCV4DH5YZYMBBPUR4WCAMGQEOUK7X5Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x739.google.com (mail-qk1-x739.google.com [IPv6:2607:f8b0:4864:20::739])
	by mail.lfdr.de (Postfix) with ESMTPS id 839BE379169
	for <lists+clang-built-linux@lfdr.de>; Mon, 10 May 2021 16:52:47 +0200 (CEST)
Received: by mail-qk1-x739.google.com with SMTP id d18-20020a05620a2052b02902eabc6fa35esf6102214qka.17
        for <lists+clang-built-linux@lfdr.de>; Mon, 10 May 2021 07:52:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620658366; cv=pass;
        d=google.com; s=arc-20160816;
        b=PY0/Q8lhvxB5BCJjq2ImnznX1+xepWIDYzHq/+29bPjjiU2vxsSlymHlo6pFfC1yOM
         X3CWdorx0S5BJPeJLgh/iOBkE6MazAEHKSRpGAedCvg3hSsWg925p0/lQGuv2EsWPhkW
         m6drDs4WCv7zp4v+BRS4lz4zPcmC6xAYk22dfEmwuh+9EOq87DhsKKeNv8wAdQRHJszl
         XaJGrv4/G/zA7oBg5wVBG+XVFAhZdCkWCOTwM9s4AJd/II/3luCix0SwGTqkyXrGH6er
         G1gpbgJ+jRCOA1pmjFMVbkDgKfvpOAsAYUHVVJaBQE42NXRH4iQ4jhvL9jHL0UvTvcJ6
         S6Nw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=Lq7u4YGeNCNyRhsG0x8/Q3+42V8s1JNTkuApiF4bYZ0=;
        b=r07tuRAbg7TvgPEsLetQc+sykwIpmckMXDuWJrrLKiSJgzqX/sQ2ReMspPg5qXQH85
         uEW2uJreiJAEtM0b+4pHQ6p4pWa2K6RLKyaNZ73ZpUkppYi3ucORWLv2JTnkVyDUFnau
         o3/A7d1dULXSOUQ0SXJVd/ReN8lFM3hmZv5bN8zJKJ/i5K1TggEElZUBZxx0Pw1nwvVk
         yytwk/4cOLNmTPQrxpL/tUBACmqPJNrDqux/1cLePzrLKO97h9FGq/GU8pJzC5TwH/rF
         CpnOVpuIiCUjPz5gHq1fwlbIyVsFQNkX4+hORDok7aTUYi+6tfmIsSUjm/6pT4ZRTOpc
         Nm/w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=DxIsyRst;
       spf=pass (google.com: domain of schnelle@linux.ibm.com designates 148.163.156.1 as permitted sender) smtp.mailfrom=schnelle@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Lq7u4YGeNCNyRhsG0x8/Q3+42V8s1JNTkuApiF4bYZ0=;
        b=mQ/wszBcEc+qPlO6TABqZz3r2t88cDFKyiL/ALM5s105ulj+syTGGqLwXGJ32mDmDo
         vx3pkfSuownoMYMfGt79dkyVd+30AM5K3YQHM20H5vbSsslMl3rlPhCfGy+hEoDzVjaL
         CSTjZZDMpp1XAKa1HHr+up/OIFW52orMpUz08zhSfXMSdLgHZuZ1jl36pPCuQvgK1sGu
         JaRN96YQiOxcuPKtTvyjde6TanNUVnjKNU7/vPhP8YFySrXG5Y6fCeU6QOwtYv1SpZN4
         KcecJloWOxsdzlhqcFEotm4YF2AxLjzpncHPbO+AtKr0xXeGES5dG3r/ETizLHiODuUq
         /KNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Lq7u4YGeNCNyRhsG0x8/Q3+42V8s1JNTkuApiF4bYZ0=;
        b=Vpy8q6S1thkPZIurQI+5qFtmryuOSGZVe/MchbIkt+4RthoaWe8SpL829haOYJPDuO
         CG/piWV7TzeKahT0V9yN8u+1EBAbzZ9sBJ48Wya5rkjJ4MYOGpqEQ+YrrZlCB0qrOLLm
         AWxux0IYw2N32lIzNHwo8wH+tWxssF26yN/P+O7gnnVK7mdiaAjiQ+VoJe4+lkjtC0L3
         4dQacKZLxuE+N3X2/9VSXYsY0ndZHvylIt533wli2VSy6Ic2WP6U6oCqHXXcSobpTSGx
         F1fcFSE7Dvv09FUz5QPcqdwBOYBX3qau9jaw0gT0gC4rn/ugZJ7tkM86PAA1vGntADvh
         M8Vw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5308TSKgPkrvXa2OCMeGs1PgpolWlv52Y/C82+NTkvqN63VYf8s2
	56/uuZJgGVsfAFhKFfyganc=
X-Google-Smtp-Source: ABdhPJxGRSmQ4dn/SnqLK+wG3qtqblzebirdcmJeHL5gXRA12UGH9vh/YmJA6bha281gJhbc/PIi/A==
X-Received: by 2002:a05:620a:2456:: with SMTP id h22mr22345355qkn.292.1620658366443;
        Mon, 10 May 2021 07:52:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:7147:: with SMTP id m68ls8282218qkc.7.gmail; Mon, 10 May
 2021 07:52:46 -0700 (PDT)
X-Received: by 2002:a05:620a:248c:: with SMTP id i12mr1592220qkn.56.1620658365994;
        Mon, 10 May 2021 07:52:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620658365; cv=none;
        d=google.com; s=arc-20160816;
        b=gu55KYU/LPjFIusdY+4ssSKseIoLSa1YGPKYwQIRALFDqWxSsn84f5YJaDUZn/CoU5
         qLjlZIcJwmkfS0qvgvyvrsYGKTXk5hN9EgPz0Bf3PHo8cq59FApRpqF6Fo9J5Y2NA3hP
         41rOL6EnIwTr+UAMeyjPyISnag78a+dgrkDOa8Eoc0puFQklXYdI34xYjTGFEy/nsXdp
         yTqPKJAr4jQmHe1GeIwdX0DzKIJiYBrzHyDrRyAe/i+m3yglAaelD2CClDnN+fIbUlTB
         ywzb+DdkiHS4R1kclvdiluHMbgLgCdBiZs3xSD+TipwYrWPwLcm70SwnmO30Gidiv/Ny
         T3VQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=xfAJW//Dl1Oju2JYgUd7WKsXyLH4GdnoxZmx46UAjE0=;
        b=NWfY7FnutmNWz5OAwdiuMHGsodfi0eZVg9YXR58Uh1UmMrydfkLukjH9emtM7DssQA
         AKK4hOzZ6LKohAYsH7WKsh/WCshcRvbtJWgYsTyzDhGS0Bgm43uycoOQjRBM+9sEcu2I
         /Bm48pizPtLFgLcxF3RNFlH0oeNisFkYeoh8yg8QByQNe7yO2N1mUnGQ1B6qvCiqfjp7
         lM1oUSgemH/16Id++ujRC5mgf097lwCy+yDyVABhj8IAHDUdXZMv8PL8/z1K58AewCmZ
         0sTdUPed4eyVL+5J89eyIMS5tunyvE4WTR6nVuFJmVhcsjdevDW9oFEhJYM5U1p3v80D
         QD3w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=DxIsyRst;
       spf=pass (google.com: domain of schnelle@linux.ibm.com designates 148.163.156.1 as permitted sender) smtp.mailfrom=schnelle@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com. [148.163.156.1])
        by gmr-mx.google.com with ESMTPS id e26si772818qtr.1.2021.05.10.07.52.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 10 May 2021 07:52:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of schnelle@linux.ibm.com designates 148.163.156.1 as permitted sender) client-ip=148.163.156.1;
Received: from pps.filterd (m0098409.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 14AEX7LH154641;
	Mon, 10 May 2021 10:52:41 -0400
Received: from pps.reinject (localhost [127.0.0.1])
	by mx0a-001b2d01.pphosted.com with ESMTP id 38f3sbq7km-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 10 May 2021 10:52:41 -0400
Received: from m0098409.ppops.net (m0098409.ppops.net [127.0.0.1])
	by pps.reinject (8.16.0.43/8.16.0.43) with SMTP id 14AEXDrv155165;
	Mon, 10 May 2021 10:52:40 -0400
Received: from ppma04fra.de.ibm.com (6a.4a.5195.ip4.static.sl-reverse.com [149.81.74.106])
	by mx0a-001b2d01.pphosted.com with ESMTP id 38f3sbq7jh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 10 May 2021 10:52:40 -0400
Received: from pps.filterd (ppma04fra.de.ibm.com [127.0.0.1])
	by ppma04fra.de.ibm.com (8.16.0.43/8.16.0.43) with SMTP id 14AEn12B001071;
	Mon, 10 May 2021 14:52:38 GMT
Received: from b06cxnps4076.portsmouth.uk.ibm.com (d06relay13.portsmouth.uk.ibm.com [9.149.109.198])
	by ppma04fra.de.ibm.com with ESMTP id 38ef37gby1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 10 May 2021 14:52:38 +0000
Received: from d06av21.portsmouth.uk.ibm.com (d06av21.portsmouth.uk.ibm.com [9.149.105.232])
	by b06cxnps4076.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 14AEqZxw41222484
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 10 May 2021 14:52:36 GMT
Received: from d06av21.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id CDA7952050;
	Mon, 10 May 2021 14:52:35 +0000 (GMT)
Received: from tuxmaker.boeblingen.de.ibm.com (unknown [9.152.85.9])
	by d06av21.portsmouth.uk.ibm.com (Postfix) with ESMTP id 753CD52054;
	Mon, 10 May 2021 14:52:35 +0000 (GMT)
From: Niklas Schnelle <schnelle@linux.ibm.com>
To: Arnd Bergmann <arnd@arndb.de>, Vineet Gupta <vgupta@synopsys.com>,
        "David S. Miller" <davem@davemloft.net>
Cc: Nathan Chancellor <nathan@kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        clang-built-linux@googlegroups.com, linux-arch@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-s390@vger.kernel.org,
        linux-snps-arc@lists.infradead.org, sparclinux@vger.kernel.org
Subject: [PATCH v6 3/3] asm-generic/io.h: warn in inb() and friends with undefined PCI_IOBASE
Date: Mon, 10 May 2021 16:52:34 +0200
Message-Id: <20210510145234.594814-4-schnelle@linux.ibm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210510145234.594814-1-schnelle@linux.ibm.com>
References: <20210510145234.594814-1-schnelle@linux.ibm.com>
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: ohF2aFYMYs5x-cREJs0zq7-z6TXfunYg
X-Proofpoint-ORIG-GUID: s4pzsnK6hmJVeSWHkC25SsCwTAK7uSMF
X-Proofpoint-UnRewURL: 0 URL was un-rewritten
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391,18.0.761
 definitions=2021-05-10_09:2021-05-10,2021-05-10 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 phishscore=0
 clxscore=1015 impostorscore=0 priorityscore=1501 malwarescore=0
 adultscore=0 bulkscore=0 mlxscore=0 mlxlogscore=999 spamscore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2104190000 definitions=main-2105100105
X-Original-Sender: schnelle@linux.ibm.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ibm.com header.s=pp1 header.b=DxIsyRst;       spf=pass (google.com:
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
platforms that do not support I/O ports.

Make things explicit and silence the warning by letting inb() and
friends fail with WARN_ONCE() and a 0xff... return in case PCI_IOBASE is
not defined.

Link: https://lore.kernel.org/lkml/20210421111759.2059976-1-schnelle@linux.ibm.com/
Signed-off-by: Niklas Schnelle <schnelle@linux.ibm.com>
---
v5 -> v6:
- Added memset to insb()/insw()/insl() in WARN_ONCE() case to prevent access
  to uninitalized memory
v4 -> v5:
- Added Link to commit message (Arnd)
v3 -> v4:
- Changed the subject to better reflect the actual change
- Added asm/bug.h so WARN_ONCE() is always available
v2 -> v3:
- Added ifdefs to ioport_map() and __pci_ioport_map() since apparently at least
  test configs enable CONFIG_HAS_IOPORT_MAP even on architectures which leave
  PCI_IOBASE unset (kernel test robot for nds32 and ARC).
v1 -> v2:
- Instead of working around the warning with a uintptr_t PCI_IOBASE make inb()
  and friends explicitly WARN_ONCE() and return 0xff... (Arnd)

 include/asm-generic/io.h | 68 +++++++++++++++++++++++++++++++++++++---
 1 file changed, 64 insertions(+), 4 deletions(-)

diff --git a/include/asm-generic/io.h b/include/asm-generic/io.h
index e93375c710b9..4a3af97a832d 100644
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
 
@@ -606,7 +630,12 @@ static inline void outl_p(u32 value, unsigned long addr)
 #define insb insb
 static inline void insb(unsigned long addr, void *buffer, unsigned int count)
 {
+#ifdef PCI_IOBASE
 	readsb(PCI_IOBASE + addr, buffer, count);
+#else
+	memset(buffer, 0xff, count);
+	WARN_ONCE(1, "No I/O port support\n");
+#endif
 }
 #endif
 
@@ -614,7 +643,12 @@ static inline void insb(unsigned long addr, void *buffer, unsigned int count)
 #define insw insw
 static inline void insw(unsigned long addr, void *buffer, unsigned int count)
 {
+#ifdef PCI_IOBASE
 	readsw(PCI_IOBASE + addr, buffer, count);
+#else
+	memset(buffer, 0xff, count);
+	WARN_ONCE(1, "No I/O port support\n");
+#endif
 }
 #endif
 
@@ -622,7 +656,12 @@ static inline void insw(unsigned long addr, void *buffer, unsigned int count)
 #define insl insl
 static inline void insl(unsigned long addr, void *buffer, unsigned int count)
 {
+#ifdef PCI_IOBASE
 	readsl(PCI_IOBASE + addr, buffer, count);
+#else
+	memset(buffer, 0xff, count);
+	WARN_ONCE(1, "No I/O port support\n");
+#endif
 }
 #endif
 
@@ -631,7 +670,11 @@ static inline void insl(unsigned long addr, void *buffer, unsigned int count)
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
 
@@ -640,7 +683,11 @@ static inline void outsb(unsigned long addr, const void *buffer,
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
 
@@ -649,7 +696,11 @@ static inline void outsw(unsigned long addr, const void *buffer,
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
 
@@ -1020,18 +1071,27 @@ static inline void __iomem *ioremap_np(phys_addr_t offset, size_t size)
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210510145234.594814-4-schnelle%40linux.ibm.com.
