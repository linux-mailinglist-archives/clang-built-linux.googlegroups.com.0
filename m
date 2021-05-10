Return-Path: <clang-built-linux+bncBCV4DH5YZYMBBOPG4OCAMGQENQGVPWI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43d.google.com (mail-pf1-x43d.google.com [IPv6:2607:f8b0:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id 531BA377E80
	for <lists+clang-built-linux@lfdr.de>; Mon, 10 May 2021 10:47:55 +0200 (CEST)
Received: by mail-pf1-x43d.google.com with SMTP id n46-20020a056a000d6eb029028e9efbc4a7sf10432094pfv.3
        for <lists+clang-built-linux@lfdr.de>; Mon, 10 May 2021 01:47:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620636474; cv=pass;
        d=google.com; s=arc-20160816;
        b=xcKQ+AR1+W56VG1n2A+UkH9Fyn3XF1FtIzrGnJphRFA6CIPRqEkncLyRUJ05Ttp+LQ
         /TUtsos1Auq7PR5PchVm2tvI49A60XS1XI4+C0AQxm9XQ4TgpxyL1Vieo7Q4n4e3drEJ
         AicsbngGcRVHDhu8ZSj8U8IsRCsfe6yIFJ2Piman6QqdMBHYR77kVFhRbw67/Apxm0LY
         WnUtcBXmgAi5YFmSr2TVmEPDW5BJrTF4i4CpnEYMxJQv6NmBHeyJkl98RJFENKS1eTRc
         yXK8W+6sZIpTiswENBPB2+wSdH98GtfbCF3OlX9zmrhLcIs7PM4Uqjo/xN+5Rb7ST8Kt
         NcIw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=hrp5Wpth5B54ObZ+WLUHP4W8zRZsQsC0ozyBadEfzUM=;
        b=OBfIJpyba+rn6oCLbNJfZJ0A/JnGICPFm9H99Dpmpg0WfwtSXdJ55M3E47XS78dAtP
         wHP2OULiWFmGTX/Pb6yMWatllu8oLip4F7Bxetkz+7azU4qBx8zBFC5GZ0MNtVpoIiUe
         wm3Ar9jijHsZBoRUhB7Ox7I9ho2G19Z93ihmMc4s2Q1DP8i/cyV8/jfFye2SlQHkCzmM
         zTcPAZXsD2L01W1+OHRr43rJeRfyF8nWmvPwle+ZA0c2zT4ttqrUHO9g0tWyn3dCrEbS
         sOeXU7ZG+cten8A0qZpf+M+61syx4hE1MOoK0XmEk2gOwdy2lM5Q/YwWoZbIt8S1F1pM
         LIDQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b="RosswqG/";
       spf=pass (google.com: domain of schnelle@linux.ibm.com designates 148.163.158.5 as permitted sender) smtp.mailfrom=schnelle@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hrp5Wpth5B54ObZ+WLUHP4W8zRZsQsC0ozyBadEfzUM=;
        b=iohyj7fYc3arY5wt+D+o9zjEKbFc0ga7ZqSAFKNqwA+H0HMkwtsnME4dFSnnz6aKXp
         rWHe1kRDpIsSZLO7PtVwo7SapmG9IEiUK/1syn8Fw+2CFh307vqkCWdEtbShgznVLcdR
         UVbraqJZZVWWvZw4NLmRBv65a8xeO6Ljj+4dblnvHEyg2pQfkKKi8RTQ673j2ukgO8yJ
         kVdJ5DBOc6ANtBPfonFkf2JdfQhNHb8R4/dLgAZWIFJlzFEEawSuJKOIk9mXGc7ogIbG
         ADF34M2jZPMPHm8KKGYJtSVWlXmyt+2TwqYVs3f5lPJg5fN8f4KhLOoFhCOYinMfrrm6
         IQHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hrp5Wpth5B54ObZ+WLUHP4W8zRZsQsC0ozyBadEfzUM=;
        b=mJ5SpitDf8yvIQ8fd7TeIoP+7SRi4EC4KWkpeSYas7cXpjMtkkHYHgw5jwX0ZU1eTw
         E/IfQfbsOog0uq9gVgWq9k+1F64BNTYUl+PzyfmFtN4UIRu4F8aGKECRcK0X58Q62lPk
         X4MWR6EN60TL8P0c6TvHkowEq9IYm+iZA1nJvSK8ZBIMrqJIWHF9yxIpOTXTnBLI+sg/
         5n82Lnd0V27bzQ3L9tBZ2MyW0AI41dCYWukGbA1zlDyvhBPheZENEnrvILUoRh9s4pVy
         unOC56NlNUQkvb86cK4lbEA3li3X6rY5JAoSk/v7Kim7QbHh33ouXF5cLLh8lOmNh+es
         6v9g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532l1ArxHZbdIXryr98CU5OCRjcQVfINcb0lQyKu5Ef9JT1pcSgC
	BvSCZHfJ4D3Lx4NCZFGdazM=
X-Google-Smtp-Source: ABdhPJxkCghK4cxnQQauIZzWLo8sT8a4kALBuDSxQjdpb6s/iroAZCUv9gYyjn05RgiYRnj1rqnB9g==
X-Received: by 2002:a05:6a00:1c56:b029:28e:af66:d720 with SMTP id s22-20020a056a001c56b029028eaf66d720mr23776803pfw.11.1620636474049;
        Mon, 10 May 2021 01:47:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:903:89:: with SMTP id o9ls7117181pld.8.gmail; Mon, 10
 May 2021 01:47:53 -0700 (PDT)
X-Received: by 2002:a17:902:b68c:b029:e6:bb9f:7577 with SMTP id c12-20020a170902b68cb02900e6bb9f7577mr23292028pls.0.1620636473537;
        Mon, 10 May 2021 01:47:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620636473; cv=none;
        d=google.com; s=arc-20160816;
        b=A3doE3G+JfWp2bEZvRu4TgJlDTPLDMqb/LgpXl2kZRJryeeGeNoJ/kf6zx7VvDQ638
         R6omn7zPWCwTL6Gof8tC1j/mbnhWd3CQQK5BzKgq+I0im7YsYOKayDEpruGCjVpQtT78
         H3EQvI1+wD51kiixRUNK/UotDogbWl0SObbvcMSbR6ShJw1LDttYZTg22a+iHl2Jz5DG
         dlSlKsIgiW74S1s3dRZHy0Y5UAXcggvAxotuto+f0hPmhwXrS8p9VP+S65l9c/bN8vIt
         qWJ704QdIxhDR9dq1RD6HgLQTkPK6lDQNOSYcpPjkZoow1Cyxad8xDwga0wqH7lKP7MP
         lIEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=mp/51zQTwU0ypyrfGm7d48XnTdWhVBfdFjEkqW1sSTI=;
        b=rVkxcgZjz5mg/OwpTF4LM0QARzaOczKwCbv9xsYm8Bs/2GM98wBcOwa8HCBvx/ZbPX
         uH8D3PIQqmKy1zVwT3hT33zEny6JbnvuKjf8jlkIbyiBj7nqQVymEiDY7CpopEeFTpQR
         dSTQzBODpPdr1l91+ns+FDabVByuDbXKS/3kWpOqyy9CN/v+WLuC/sX+56N6J0S51Pb1
         pWmlqpHhlkwOSzcRXCgv1+8D5g/vvjRLaKhdFJBscwNwAGNM8/w/YRFXxxiytDNKpl/l
         j1JI4RbWuhNjsbY/KO5PjOSZjJO8S+UInmPkHwEkVyFrchhX7/PGOpR9PyzfzbsZFqQp
         7+VQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b="RosswqG/";
       spf=pass (google.com: domain of schnelle@linux.ibm.com designates 148.163.158.5 as permitted sender) smtp.mailfrom=schnelle@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
Received: from mx0a-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com. [148.163.158.5])
        by gmr-mx.google.com with ESMTPS id ep1si849025pjb.2.2021.05.10.01.47.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 10 May 2021 01:47:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of schnelle@linux.ibm.com designates 148.163.158.5 as permitted sender) client-ip=148.163.158.5;
Received: from pps.filterd (m0098416.ppops.net [127.0.0.1])
	by mx0b-001b2d01.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 14A8Y1mP142410;
	Mon, 10 May 2021 04:47:49 -0400
Received: from pps.reinject (localhost [127.0.0.1])
	by mx0b-001b2d01.pphosted.com with ESMTP id 38f14tgt5h-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 10 May 2021 04:47:49 -0400
Received: from m0098416.ppops.net (m0098416.ppops.net [127.0.0.1])
	by pps.reinject (8.16.0.43/8.16.0.43) with SMTP id 14A8Y0X6142349;
	Mon, 10 May 2021 04:47:48 -0400
Received: from ppma03ams.nl.ibm.com (62.31.33a9.ip4.static.sl-reverse.com [169.51.49.98])
	by mx0b-001b2d01.pphosted.com with ESMTP id 38f14tgt55-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 10 May 2021 04:47:48 -0400
Received: from pps.filterd (ppma03ams.nl.ibm.com [127.0.0.1])
	by ppma03ams.nl.ibm.com (8.16.0.43/8.16.0.43) with SMTP id 14A8hEVG023702;
	Mon, 10 May 2021 08:47:47 GMT
Received: from b06cxnps3074.portsmouth.uk.ibm.com (d06relay09.portsmouth.uk.ibm.com [9.149.109.194])
	by ppma03ams.nl.ibm.com with ESMTP id 38dj988sg0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 10 May 2021 08:47:47 +0000
Received: from d06av22.portsmouth.uk.ibm.com (d06av22.portsmouth.uk.ibm.com [9.149.105.58])
	by b06cxnps3074.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 14A8liFF22086034
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 10 May 2021 08:47:44 GMT
Received: from d06av22.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id B403F4C044;
	Mon, 10 May 2021 08:47:44 +0000 (GMT)
Received: from d06av22.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 514AB4C05A;
	Mon, 10 May 2021 08:47:44 +0000 (GMT)
Received: from tuxmaker.boeblingen.de.ibm.com (unknown [9.152.85.9])
	by d06av22.portsmouth.uk.ibm.com (Postfix) with ESMTP;
	Mon, 10 May 2021 08:47:44 +0000 (GMT)
From: Niklas Schnelle <schnelle@linux.ibm.com>
To: Arnd Bergmann <arnd@arndb.de>, Vineet Gupta <vgupta@synopsys.com>,
        "David S. Miller" <davem@davemloft.net>
Cc: Nathan Chancellor <nathan@kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        clang-built-linux@googlegroups.com, linux-arch@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-s390@vger.kernel.org,
        linux-snps-arc@lists.infradead.org, sparclinux@vger.kernel.org
Subject: [PATCH v5--cover-letter 1/3] sparc: explicitly set PCI_IOBASE to 0
Date: Mon, 10 May 2021 10:47:41 +0200
Message-Id: <20210510084743.1850777-2-schnelle@linux.ibm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210510084743.1850777-1-schnelle@linux.ibm.com>
References: <20210510084743.1850777-1-schnelle@linux.ibm.com>
X-TM-AS-GCONF: 00
X-Proofpoint-ORIG-GUID: JtxoUCGur3jImDIEPlEJ7bs4M8HeIT5X
X-Proofpoint-GUID: _EH7UP4vpJXtbqUPifcmdxty6KZawUbs
X-Proofpoint-UnRewURL: 0 URL was un-rewritten
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391,18.0.761
 definitions=2021-05-10_04:2021-05-10,2021-05-10 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 mlxlogscore=999 spamscore=0 mlxscore=0 suspectscore=0 impostorscore=0
 phishscore=0 malwarescore=0 lowpriorityscore=0 clxscore=1015 adultscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2104190000 definitions=main-2105100061
X-Original-Sender: schnelle@linux.ibm.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ibm.com header.s=pp1 header.b="RosswqG/";       spf=pass
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
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210510084743.1850777-2-schnelle%40linux.ibm.com.
