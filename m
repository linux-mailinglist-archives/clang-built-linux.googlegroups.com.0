Return-Path: <clang-built-linux+bncBCV4DH5YZYMBBI6OV6CAMGQEGPWSNVY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63a.google.com (mail-pl1-x63a.google.com [IPv6:2607:f8b0:4864:20::63a])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DC0336F904
	for <lists+clang-built-linux@lfdr.de>; Fri, 30 Apr 2021 13:16:53 +0200 (CEST)
Received: by mail-pl1-x63a.google.com with SMTP id m8-20020a170902db08b02900ecafbf66bbsf16880306plx.11
        for <lists+clang-built-linux@lfdr.de>; Fri, 30 Apr 2021 04:16:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619781411; cv=pass;
        d=google.com; s=arc-20160816;
        b=Zy2gjUQpg/wfyhDLnpXSx161dV290bcaAw+Zi8FAI2X5r3dAbSWcRsirtAxz0scbol
         KWUr0se0RLfTqX25ru/Tw/tWtwLtz1SBrcI/2htZ4X3i+UIdwO24b9bQBwW/ifYoZfCV
         qfzknkJJ9K5QCsViJ+IsRt9Uv7bUW4cWG8f6czRFaUmPUPcvCYV14si4qXl9GxB8Mmi5
         D+9w0vWtdr/vnuw1HYgYWRV7deB5VU7M9BEcnS9IwdOvravAm9q54UNnBw/DJW7tO9HQ
         vzm1nLcF2vaTSzbhS2YUs8WNxR1vXjxu25o1VFMK/GMCXbJzPPRlrBmmWct3XAtqvdBw
         wdtg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=t4Lp0UkD+U/jl3EbCl7mxDVb8xa3ZNL9Af37j9Lg60k=;
        b=YMPIn7pcyX8FSRpspW1KjzS1vFV2lyccZXLrn7a56yeKcPHsElYRHYaEyJFRJ/D8Re
         c73HqgP/IGVijhcjTziTaAOFQ9nZ6j0WJ2Wr7WXELY+9cx54WD6I/EGl5L65B7++YoMi
         L2YHNQ+jxGGrib7DYbmHAyKYy800PGNMDYIgxs5QNJWjt3dNIZO3/ZQReucbYgwSJT6X
         U6wrNKnNmykxV/f9vrqnCtTeYkWrnd6wDydd8V6Fw7XP6b8ULGKxRSXoNGHwMckhBalA
         YYAKJZKfd6AQVtPEq88iwSz7A6UTQDZSM7b/f9rX86zswtW11Fxyr/dl5+iNd8mv8gy3
         VuEw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=WuGCOcL0;
       spf=pass (google.com: domain of schnelle@linux.ibm.com designates 148.163.156.1 as permitted sender) smtp.mailfrom=schnelle@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=t4Lp0UkD+U/jl3EbCl7mxDVb8xa3ZNL9Af37j9Lg60k=;
        b=FLdCHtunMXu+eNMNS9ky1qDtkXPxVPX5a5h68DwO67orUe/Wx2ar12MfdJ7rdIjDqB
         d0kJ5vpxrbrYsYntSoODS+SVecgOziKAPqLkkykhkbhbVdwfn09TOAxYYBGSSyLXP07k
         nySArt6ilWqRiOlPOzWCGC/peqyUMa0er3f4X1IjtXAlFp8HiPC1C3cgZ8l4hS5mt/uR
         +gosnpOAqJjMx6n+Tk/i3RLXiJJpk51vw0pdQtbg2I4H5bX2ljeM5hghf6MDLJ42NsAQ
         RckWgsJMrp09EL14pli3RwVAvjo3AMI5WD5FxV2tCizScHWFIAAthPzO5IBVzlbBT329
         lA3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=t4Lp0UkD+U/jl3EbCl7mxDVb8xa3ZNL9Af37j9Lg60k=;
        b=sT+zRSRHx2wG8pMqzv8IAMwKMJFxPJt3ECInnqoJPvSv5VZSTJDxOtS2wohg/h0KQE
         apDtTpvYHPseOrp3C9e4JGOQJLUMa+d+Z4aaJdQntu7jUsKNv6adjvawY4wR/5YhU0Ig
         UyAwceZzeOh8vC8+UfNnN1Vpgy6FCHJLxqVGW4MxA490ubrm4KxEWn4uTlnKfMC1hIRB
         rCdp7aOMJ5WWWoilMtWulC854A1VOceSDYFB0peGRHIFe23WKLtuqH9C1qQq1wEdkZo1
         v/dMiQtkJiDHjW6V1QU8DGO7pRSCZpl6SKkmtjfS1tLWGKW3fRdyzFg9a+AGrVJPzbB3
         dz7Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530kjbruaKfsq/00IP0kGTJUZVuPWdlqmwP7ER52iQoK4jQakqB0
	wdbvisl5skhp7nxBmCKp73Y=
X-Google-Smtp-Source: ABdhPJziq4NXraE3GzAVDrqFOZyekKzNeasfOEujBoWgVqtPpIhnB42334uqLSmMWmdP+HNUpDFNbw==
X-Received: by 2002:a17:90a:b292:: with SMTP id c18mr15278671pjr.179.1619781411397;
        Fri, 30 Apr 2021 04:16:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:1b52:: with SMTP id nv18ls2986737pjb.0.gmail; Fri,
 30 Apr 2021 04:16:50 -0700 (PDT)
X-Received: by 2002:a17:90a:e384:: with SMTP id b4mr15268658pjz.157.1619781410897;
        Fri, 30 Apr 2021 04:16:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619781410; cv=none;
        d=google.com; s=arc-20160816;
        b=ZS6wt0odY1agU9YLkAcGwz45vNa5SiUiiAr31TH3Vcftx/1G9/WrJwjTmEcKCHXWyf
         XBj9jI/x0ZaZHzs13wVscZbHZnIEpCOyphZLJ0GWJrYr0mORaB7la6y5US178w/XNa+Q
         OYzWMGJhW+8MMlICnSG8XllygMEjbFoAWhGvAv+B8YVwqY01HOdUaTuCB7SSYbbadr2i
         41dnCXr2P1aFsrw2SzV+q8zmOMx0l0qPvsYiLoyulHwH156YdD3vppe8uI5UVlJRYDCH
         aUx8ir/KvlNl+CuUSE7k1b7yr5MyRClKp+lXOsOiIedyEgwgLYz1LfCULf2uNLjOhh5L
         zUzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=XvBJtBdp5qCpVVR5UOW7+oNegjIfVg+bHWvvNQMpCVU=;
        b=dhtWiTokWoDXYipWROlIMs5j4k4iOxg4XS4oU5XdXCcdgb7P5O1Ef3ATL1u8/WF2ty
         486RExZ577EuiSEF58QSPGvKPRVqQ8JH0nP/K2c2WeHdfW5VSxAJCve65JJVBIcKCRQF
         BM7Onb9zUt5/Oqj9bzuYq8p1UcAdKzgCf6LEKKPTixZtVaddRDrfX7fAVSKZHUt4IJXy
         5Fimq1nDs5cKH7lNSObW8tubEV8ExF3ttZTQEHOiomignRj9LKejDvSXT1EId3gdNM8g
         UiIzrS+Lm8RleCRsyVONqCmhMoSxVt2qEUmXmnSwaJ+539YFTAMyWFkigjV+y3CeqZot
         UICg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=WuGCOcL0;
       spf=pass (google.com: domain of schnelle@linux.ibm.com designates 148.163.156.1 as permitted sender) smtp.mailfrom=schnelle@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com. [148.163.156.1])
        by gmr-mx.google.com with ESMTPS id b9si431833pfd.3.2021.04.30.04.16.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Apr 2021 04:16:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of schnelle@linux.ibm.com designates 148.163.156.1 as permitted sender) client-ip=148.163.156.1;
Received: from pps.filterd (m0098396.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 13UB2oDJ123712;
	Fri, 30 Apr 2021 07:16:47 -0400
Received: from pps.reinject (localhost [127.0.0.1])
	by mx0a-001b2d01.pphosted.com with ESMTP id 388fxy1m7v-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 30 Apr 2021 07:16:47 -0400
Received: from m0098396.ppops.net (m0098396.ppops.net [127.0.0.1])
	by pps.reinject (8.16.0.43/8.16.0.43) with SMTP id 13UB2tHh124132;
	Fri, 30 Apr 2021 07:16:46 -0400
Received: from ppma04ams.nl.ibm.com (63.31.33a9.ip4.static.sl-reverse.com [169.51.49.99])
	by mx0a-001b2d01.pphosted.com with ESMTP id 388fxy1m70-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 30 Apr 2021 07:16:46 -0400
Received: from pps.filterd (ppma04ams.nl.ibm.com [127.0.0.1])
	by ppma04ams.nl.ibm.com (8.16.0.43/8.16.0.43) with SMTP id 13UBCWiq019691;
	Fri, 30 Apr 2021 11:16:44 GMT
Received: from b06cxnps4075.portsmouth.uk.ibm.com (d06relay12.portsmouth.uk.ibm.com [9.149.109.197])
	by ppma04ams.nl.ibm.com with ESMTP id 384ay8k1kb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 30 Apr 2021 11:16:44 +0000
Received: from d06av23.portsmouth.uk.ibm.com (d06av23.portsmouth.uk.ibm.com [9.149.105.59])
	by b06cxnps4075.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 13UBGgW252429120
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 30 Apr 2021 11:16:42 GMT
Received: from d06av23.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 47187A4055;
	Fri, 30 Apr 2021 11:16:42 +0000 (GMT)
Received: from d06av23.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id DDCC0A4051;
	Fri, 30 Apr 2021 11:16:41 +0000 (GMT)
Received: from tuxmaker.boeblingen.de.ibm.com (unknown [9.152.85.9])
	by d06av23.portsmouth.uk.ibm.com (Postfix) with ESMTP;
	Fri, 30 Apr 2021 11:16:41 +0000 (GMT)
From: Niklas Schnelle <schnelle@linux.ibm.com>
To: Arnd Bergmann <arnd@arndb.de>, Vineet Gupta <vgupta@synopsys.com>,
        "David S. Miller" <davem@davemloft.net>
Cc: Nathan Chancellor <nathan@kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        clang-built-linux@googlegroups.com, linux-arch@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-s390@vger.kernel.org,
        linux-snps-arc@lists.infradead.org, sparclinux@vger.kernel.org
Subject: [PATCH v4 1/3] sparc: explicitly set PCI_IOBASE to 0
Date: Fri, 30 Apr 2021 13:16:39 +0200
Message-Id: <20210430111641.1911207-2-schnelle@linux.ibm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210430111641.1911207-1-schnelle@linux.ibm.com>
References: <20210430111641.1911207-1-schnelle@linux.ibm.com>
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: aOBsCEszn3Lco3QOlLLQP5kxxAK5xZjL
X-Proofpoint-ORIG-GUID: lmhjLN6Yhs8bT2MpBmfgUuFqDq22n_s4
X-Proofpoint-UnRewURL: 0 URL was un-rewritten
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391,18.0.761
 definitions=2021-04-30_06:2021-04-30,2021-04-30 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 bulkscore=0
 mlxscore=0 malwarescore=0 phishscore=0 clxscore=1015 priorityscore=1501
 impostorscore=0 adultscore=0 suspectscore=0 lowpriorityscore=0
 mlxlogscore=999 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2104060000 definitions=main-2104300080
X-Original-Sender: schnelle@linux.ibm.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ibm.com header.s=pp1 header.b=WuGCOcL0;       spf=pass (google.com:
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

Instead of relying on the fallback in asm-generic/io.h which sets
PCI_IOBASE 0 if it is not defined set it explicitly.

Link: https://lore.kernel.org/lkml/CAK8P3a3PK9zyeP4ymELtc2ZYnymECoACiigw9Za+pvSJpCk5=g@mail.gmail.com/
Signed-off-by: Niklas Schnelle <schnelle@linux.ibm.com>
---
 arch/sparc/include/asm/io.h | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/sparc/include/asm/io.h b/arch/sparc/include/asm/io.h
index 2eefa526b38f..c019e50702c1 100644
--- a/arch/sparc/include/asm/io.h
+++ b/arch/sparc/include/asm/io.h
@@ -1,6 +1,14 @@
 /* SPDX-License-Identifier: GPL-2.0 */
 #ifndef ___ASM_SPARC_IO_H
 #define ___ASM_SPARC_IO_H
+
+/*
+ * On LEON PCI addresses below 64k are converted to IO accesses.
+ * io_remap_xxx() returns a kernel virtual address in the PCI window so
+ * inb() doesn't need to add an offset.
+ */
+#define PCI_IOBASE ((void __iomem *)0)
+
 #if defined(__sparc__) && defined(__arch64__)
 #include <asm/io_64.h>
 #else
-- 
2.31.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210430111641.1911207-2-schnelle%40linux.ibm.com.
