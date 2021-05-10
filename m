Return-Path: <clang-built-linux+bncBCV4DH5YZYMBBO4R4WCAMGQEWRJD4OI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd38.google.com (mail-io1-xd38.google.com [IPv6:2607:f8b0:4864:20::d38])
	by mail.lfdr.de (Postfix) with ESMTPS id 31C54379165
	for <lists+clang-built-linux@lfdr.de>; Mon, 10 May 2021 16:52:45 +0200 (CEST)
Received: by mail-io1-xd38.google.com with SMTP id y191-20020a6bc8c80000b02904313407018fsf10689112iof.15
        for <lists+clang-built-linux@lfdr.de>; Mon, 10 May 2021 07:52:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620658364; cv=pass;
        d=google.com; s=arc-20160816;
        b=tdK7xNvobs+qt86VrGkWMMroH6loN4klXMqA05N7NiJPqggk7IZQBQ5ZceQNXlfEWW
         jYi5J/CqrUs1csTzipTEuUA08SCFQ3x6jJHWg2gD6+SnrWaMNBH+jOGTK3VyLRDDlrPf
         9PqTr1nLCgLDY/Rrjrv6t+xf4z8apFU+Yb/Lf1iwJhugITA7fLmkfr2xWwEhdL0bQpKN
         Ou1VAOzSWoPS1iZomDSGpjM64os36KrP4JTBltVLwIa5AmFojQ+tsRlntfitxEhulL4F
         q9gCyTi15e7E62J02p0b7W9uXZYSkP5575ulaszxmxQsuhdtJFd/+cvmH0lIJF7J5t7c
         pkXA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=R9W0OJ+1MA2FF3T4tjJ+cwjPCI3sqLIyiVEq5nAQfj0=;
        b=ExTY5NwRoXmHIjd/CHHWOUnuBPJEMJZYsqxMdTcW1sAiRfRJw/Cxgqa1bBEgzoiIeT
         Nx9Pi1hi7D/ptR5CuLLf0esm7Laf9HNtgkbq4yRbF4cBQtFYRHBbY7nONmoML62b4QrE
         dWR7lkNhw8vPsgng0o4f7B2yO96ThYvGH2oBD/EHWO7MG+gknTQfatpg9hUHqQKrxOMT
         GEolU04pwM5QZV4Gsf8O3zoxtTyFAmv4L5+A8yLDqKRKu9S5xZZZvgVFSgHZIjVBIlHl
         u5laoizw50fC50wSWk1OOuJVPpuW6H7JWOQlhTxmU/DDpG+kw3TKdGpvzBiwFEp2xNL0
         olGA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=oq69rh0Y;
       spf=pass (google.com: domain of schnelle@linux.ibm.com designates 148.163.158.5 as permitted sender) smtp.mailfrom=schnelle@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=R9W0OJ+1MA2FF3T4tjJ+cwjPCI3sqLIyiVEq5nAQfj0=;
        b=nLIlv6lRSFMDaQ5FGfoLSJIAKqmOhQuIoyZrHHBfq29WmFTa04JHa5TLNKTkwEX+Fo
         awwwlkFugdASM/xLC6SpCO5LZY9EG/5t2k2oDEb2ZI25MA9S0tSX8oKJ4/zpAQpEQXpz
         6r95Hd3wlabjV3VBml/kCSEr/7jy6/pUNBetIRLtzPICOAU9AOmon+wtQYX7g1uMkSnE
         K8gIxoz1/T+s1uOxUKjKmEZX/32AtnjvPAe43YxfJL6CsikW5RN+c3XY7yO68ha6ujTZ
         3g2b1T2M0MGl66zDctPtX4e8hDesEvAaR/cs0zPHgyqHF0vJZJh61aqLOHVxNi5ZTeYZ
         NQtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=R9W0OJ+1MA2FF3T4tjJ+cwjPCI3sqLIyiVEq5nAQfj0=;
        b=ZzoUkyxNijhRz+Giqs2ufcYXi+gKVUSXolXUQ0CFJnuJzn5Z1M11ekhZo52UrpxkAU
         r0xbyyxWNGlgkpaPtbiamtpV+vGPzE3s/jQC6oqdLPbFR477PTXbv+OUAu+sRroVG6uH
         c+QJvmSC/ZI3ZiATbGmeNTT/SLPQ7fGf8iZfD6ZfFNQcWJCzD2KtUoy2FfuePXTXH3Q1
         G0ylLtkbkQ4/3kXxjGZD9awCj0ZDNeyKHrvr/YRQxcVwvnYf3kHgHBbqOueYm4gY/mL9
         7dJlZ6+cEqdsogL1YHlmHm/t9s8TCqsxnAeMrDGA/njznQxB7OsR7Gaxv4ZJG3JskiWS
         7mmg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533k3gVtrejfGmDQqcW1bQk+j5vAPqyyDnJajPFi1dbwq8iwEUfW
	+JHcuY2eDa3UPh6X03qTY7c=
X-Google-Smtp-Source: ABdhPJyRi3qmeGsQQrWJV8YM9A0/nrB7yp/vwntBeZdwdLlry7O7yTSmcfZAoSLeNEYp179hKSg8NQ==
X-Received: by 2002:a92:d80f:: with SMTP id y15mr21532160ilm.305.1620658364010;
        Mon, 10 May 2021 07:52:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:d909:: with SMTP id s9ls3081602iln.3.gmail; Mon, 10 May
 2021 07:52:43 -0700 (PDT)
X-Received: by 2002:a92:c749:: with SMTP id y9mr22527373ilp.141.1620658363673;
        Mon, 10 May 2021 07:52:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620658363; cv=none;
        d=google.com; s=arc-20160816;
        b=E6COPfic3lvTBgErN8Nk5ZxGNmPRyuS8xuVGqw1yUQm6+s4QDHPigLn5qG99muN2jJ
         X1+ioJ3qz99bgVXZcIaPKyT1zn5AwVM/ISetyvmANDiSKVToO9HzA3HwYNxdjQXV4n6D
         ZRF66UcTyP4recS90fd/R7hdaKdkxwIaMGoNSxXxYAFZaEn3OJ/U0L9APMW2KHon8kqR
         Pep1Zt33nB53ZijSA8V9lJF1xEzve2Lu242LvJAQoRVCotfNolXL5na/Bs0yFn99+RVi
         VKhMCwd5S9j1l6G+hk0w4W3m5nWi1y9dEjNnYg/n2PEF+BJ3oK7S2ypNOGcNVRix0edO
         ybzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=mp/51zQTwU0ypyrfGm7d48XnTdWhVBfdFjEkqW1sSTI=;
        b=Ya+vPNdAFOaDZfVxB69pBHZB5MMpw3MR7o2r+l4g+iW2UXPpaRq6M5tAGBONE1ff/c
         kr5R4f21lth2RX3h63nUkdLr+9ieIu1l5cbr85HoKLuTR1WbEGftngSyZnn/n956T9/a
         moB8nPd7sifS0f/Ux3nZz2z1smPV7bW0Wr1OLbsk/MCNdQoVbDCPJ/X7cwxpbIxKJzpU
         kmA5GBLcvlITxS0DVmVZu4lBnSy6ggK2CKNqAgrPKg5crTCRMvBfF8ZhJp6AsLUSyi9+
         Lq7PFLxDeClYeFn9KalQi+lE1h3OYPwSxPKYC+l1rkpl99SBzcGZ3t7OklVXbIvFliMD
         Kq5A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=oq69rh0Y;
       spf=pass (google.com: domain of schnelle@linux.ibm.com designates 148.163.158.5 as permitted sender) smtp.mailfrom=schnelle@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
Received: from mx0a-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com. [148.163.158.5])
        by gmr-mx.google.com with ESMTPS id o3si1652477ilt.5.2021.05.10.07.52.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 10 May 2021 07:52:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of schnelle@linux.ibm.com designates 148.163.158.5 as permitted sender) client-ip=148.163.158.5;
Received: from pps.filterd (m0098416.ppops.net [127.0.0.1])
	by mx0b-001b2d01.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 14AEoIdq184371;
	Mon, 10 May 2021 10:52:39 -0400
Received: from pps.reinject (localhost [127.0.0.1])
	by mx0b-001b2d01.pphosted.com with ESMTP id 38f6xt01ak-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 10 May 2021 10:52:39 -0400
Received: from m0098416.ppops.net (m0098416.ppops.net [127.0.0.1])
	by pps.reinject (8.16.0.43/8.16.0.43) with SMTP id 14AEpp51190897;
	Mon, 10 May 2021 10:52:39 -0400
Received: from ppma06ams.nl.ibm.com (66.31.33a9.ip4.static.sl-reverse.com [169.51.49.102])
	by mx0b-001b2d01.pphosted.com with ESMTP id 38f6xt01a8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 10 May 2021 10:52:39 -0400
Received: from pps.filterd (ppma06ams.nl.ibm.com [127.0.0.1])
	by ppma06ams.nl.ibm.com (8.16.0.43/8.16.0.43) with SMTP id 14AEmBHM025927;
	Mon, 10 May 2021 14:52:37 GMT
Received: from b06cxnps4076.portsmouth.uk.ibm.com (d06relay13.portsmouth.uk.ibm.com [9.149.109.198])
	by ppma06ams.nl.ibm.com with ESMTP id 38dhwh91vr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 10 May 2021 14:52:37 +0000
Received: from d06av21.portsmouth.uk.ibm.com (d06av21.portsmouth.uk.ibm.com [9.149.105.232])
	by b06cxnps4076.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 14AEqZIE37814710
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 10 May 2021 14:52:35 GMT
Received: from d06av21.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 18BFB52050;
	Mon, 10 May 2021 14:52:35 +0000 (GMT)
Received: from tuxmaker.boeblingen.de.ibm.com (unknown [9.152.85.9])
	by d06av21.portsmouth.uk.ibm.com (Postfix) with ESMTP id AA76452051;
	Mon, 10 May 2021 14:52:34 +0000 (GMT)
From: Niklas Schnelle <schnelle@linux.ibm.com>
To: Arnd Bergmann <arnd@arndb.de>, Vineet Gupta <vgupta@synopsys.com>,
        "David S. Miller" <davem@davemloft.net>
Cc: Nathan Chancellor <nathan@kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        clang-built-linux@googlegroups.com, linux-arch@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-s390@vger.kernel.org,
        linux-snps-arc@lists.infradead.org, sparclinux@vger.kernel.org
Subject: [PATCH v6 1/3] sparc: explicitly set PCI_IOBASE to 0
Date: Mon, 10 May 2021 16:52:32 +0200
Message-Id: <20210510145234.594814-2-schnelle@linux.ibm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210510145234.594814-1-schnelle@linux.ibm.com>
References: <20210510145234.594814-1-schnelle@linux.ibm.com>
X-TM-AS-GCONF: 00
X-Proofpoint-ORIG-GUID: gY60jVdT9BfNYmq5tr-k84tUJE5i3gZe
X-Proofpoint-GUID: khRcgKtN16v846p8gRFfwt4YMf7XtDTg
X-Proofpoint-UnRewURL: 0 URL was un-rewritten
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391,18.0.761
 definitions=2021-05-10_07:2021-05-10,2021-05-10 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 spamscore=0
 mlxscore=0 suspectscore=0 adultscore=0 bulkscore=0 lowpriorityscore=0
 priorityscore=1501 impostorscore=0 mlxlogscore=999 clxscore=1015
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2104190000 definitions=main-2105100105
X-Original-Sender: schnelle@linux.ibm.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ibm.com header.s=pp1 header.b=oq69rh0Y;       spf=pass (google.com:
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210510145234.594814-2-schnelle%40linux.ibm.com.
