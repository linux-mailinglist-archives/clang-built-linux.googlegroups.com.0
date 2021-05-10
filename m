Return-Path: <clang-built-linux+bncBCV4DH5YZYMBBHHJ4OCAMGQE7IDDRRQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x237.google.com (mail-oi1-x237.google.com [IPv6:2607:f8b0:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E132377EA7
	for <lists+clang-built-linux@lfdr.de>; Mon, 10 May 2021 10:53:50 +0200 (CEST)
Received: by mail-oi1-x237.google.com with SMTP id b199-20020acafdd00000b02901eb1302ea4asf2907363oii.7
        for <lists+clang-built-linux@lfdr.de>; Mon, 10 May 2021 01:53:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620636829; cv=pass;
        d=google.com; s=arc-20160816;
        b=XcvHrP43SUNlYJ4bzDMzx2Lk7cLgqzLJScbg2sMpgLtNz0YmDkWp7+Ffk1Sqhw7Ppi
         rn2Fk2Whe6OIf0AW2aZqLPfo8J0GknOII+pQdZ1S3fI1XBGjicjRzLOha/k9RDDNNAL9
         G6S5IdTGwMv0aUJicM9gce9Nue/8mMpy17Tr0SQrHIMJkkkXHJKbpEC/kX07yxVIBGVc
         fJWpF9pvnT7ldchIYhe4haKW9U3q4+tx2BW+SJyv37MkLcqXWMhE+fQfJ+KCgDQD7zBp
         YObaVGYcs5jL8+3GBPrt946cMzM7BnYWTJvOZrKevRNA6D8tebkD0Z55BegKen8HHArp
         lH+g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=lw8sDk8esHmlq5NTQQ2GB0Uao7W9D6MWlQc/neUumXM=;
        b=stytIg1jeYKkSdxppLgaxNA1rXlUHKJYLnN+XgJ2lBIWee6GCg+tNbZ1qOdkafuCtM
         9risYGK8QqBE3z19PJ9lQblXEz2lu3Mnw+yac2rUQQDnWWDJjojw5gDt8zS75TQkmr8v
         ld04MMQ1Q7stAZbfTQFTZFekxES4UKEcODOJK6O8ig+dsoydROi8GIxhHX8IlxTXYU0I
         J0necaVeahIhaW6qfJbSQ5G+YHuwBgAVE7/WgXdUizGlBMv1gft0SlmkJZha5DyFYFMb
         KC4a4COPFvrHjAq1PpLbIScptGgN2dSY8Vlni551k9e5fCj8w+4+Q2D640SMKhoTifI3
         ON7w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=dWWbkOfv;
       spf=pass (google.com: domain of schnelle@linux.ibm.com designates 148.163.158.5 as permitted sender) smtp.mailfrom=schnelle@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lw8sDk8esHmlq5NTQQ2GB0Uao7W9D6MWlQc/neUumXM=;
        b=DpJD18o96Y0lskyDmYfhcnSInvx8e1YiTYuBUjMYwpbmJDORl91ubBCbm6y0VvXQxo
         4OV5A7HUVVWWK3OGsM8DcDQDFAI9KFlum7pFYS9Cj7+UYZZ8e78gh/AHowfC31PvlbgC
         8u4BE9dHxnJr3ztedN0lw+ZmlKrahm0BCZllEkua3K75Nt6qsO8O9aBj9D1TEEfklF9B
         9PK6y6s4GDf/B7wIdc9TBELkrlY/U3UOwkfB2HitEtx2G6VKFei9LNxgAMkmoJxrFSeK
         tLhwQP3Sw+AAqKS/mHWHw1vQcvUq1+8eOiXICOT6CLdsDOQsD4mt/ZEfXPNV2VFBV+Mv
         IijQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lw8sDk8esHmlq5NTQQ2GB0Uao7W9D6MWlQc/neUumXM=;
        b=H2VtE3mU2VeEZUwLsAyNQarsVc7rgUzi5tSsaT9WRTFXiR0yxNcH7t41bXX4IlYuqu
         iGYO6pBzVr73G5zr3C7viWMGXAdo+JfZ+oigXzxHzwLYoROlqzAmovV+WPuv5Aua/maB
         DgCMe7b57LM6o30W9WhtdVSRPbWzhbqIMGAwSRtKJVfhtGpJTQePxwrXuvDITBDFOv/1
         CFlRdeL/zZ0hSe4qbymvh39f9Mw1pFbRzPU1d/UpZT9O1btfyzOCpTms3hsO+NiWiJ32
         LeNy3zFEBcMcBDsfijdHvsfGKEfRshkvQq+YzqRXIQyT/eH1Q0E5rJV10f8sRDfHxgC8
         ouGg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533JoacB+DI+7mHckuT5UhHH9knZSmpvjPh1JVie1K6UHep3DBFG
	beHRgCQtZKQc9e6NnxmM55s=
X-Google-Smtp-Source: ABdhPJxcdB+9vzdAg/Ok0wwwB0jZVe6h1JcyHeGmTkdDW3j3/VB8j1o8DYt591ptc7E1Bg3CpaOsFQ==
X-Received: by 2002:a9d:57cd:: with SMTP id q13mr17849944oti.23.1620636828978;
        Mon, 10 May 2021 01:53:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:5c08:: with SMTP id o8ls3913637otk.0.gmail; Mon, 10 May
 2021 01:53:48 -0700 (PDT)
X-Received: by 2002:a05:6830:1686:: with SMTP id k6mr20859619otr.123.1620636828684;
        Mon, 10 May 2021 01:53:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620636828; cv=none;
        d=google.com; s=arc-20160816;
        b=u4rB7AbuaAHK3jzIEbDgc1ENi5orHBDkiKzoaRLmLSot4dydEYrAdj7aU7q8gw+3aU
         8S0TmWQQDYUg2/hZEKLZGetisqjNTKigSKyG3mVTmP/2Ir3+5iJcfS2xtyCy9mU4yzIw
         z7dEF6Tz17yCQY2YVnF8STc4eEdiJ0gFSWW0cgYrXqE0kgo4pamM0q/JShK8puwNqhyt
         JcSrK029HIWqdeHP4kVb+9V0IHu9sPjwqd0FnKVLEhskIg2aPZ7FEHY4NORSfFYXWxeV
         QFe8i+WagMsuMkfGVsFmpylozQc1+lJkKbaZ7Z/RJVr71YNqmG1lxA1aAei3obVl4e/u
         mBTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=evXVASPNHYxBuNpGpwUb76ljx34WoISjJiXB/0dEjGk=;
        b=QOAilpGwzlv/3S7vDkUTswhbfMPLPuTKk2TAEMKYNfV+HShBuoG6xl7whmmbZBwJKK
         A0qcAWrk0hrg2gCrvnn3UwEdrEw8+iuLmF6vZmpUOCKC4Bmz8d19A7krkVHSniYjP1AS
         WHtDpMBrspCR37kBzWE8De/mOby6DWAnJ+fukYWCgF3QfpxLDUC86IGMMLW5ySA+1JMw
         aLEEAozaU41E3PvgN0uQQhsUDZ7uu6SLMeLKx6Jbf1qS5NLo9v9Bu/MkHummg3ZvMedO
         oUg1wxowzJ+edYd8fCemBXUH29mbBkbG9J6kU7T4IumHy28ZiWfOF8bNkWJD73QG8ZEt
         geEg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=dWWbkOfv;
       spf=pass (google.com: domain of schnelle@linux.ibm.com designates 148.163.158.5 as permitted sender) smtp.mailfrom=schnelle@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
Received: from mx0b-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com. [148.163.158.5])
        by gmr-mx.google.com with ESMTPS id k4si1231026oot.1.2021.05.10.01.53.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 10 May 2021 01:53:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of schnelle@linux.ibm.com designates 148.163.158.5 as permitted sender) client-ip=148.163.158.5;
Received: from pps.filterd (m0098417.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 14A8XTqZ004884;
	Mon, 10 May 2021 04:53:45 -0400
Received: from pps.reinject (localhost [127.0.0.1])
	by mx0a-001b2d01.pphosted.com with ESMTP id 38eycr4arm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 10 May 2021 04:53:45 -0400
Received: from m0098417.ppops.net (m0098417.ppops.net [127.0.0.1])
	by pps.reinject (8.16.0.43/8.16.0.43) with SMTP id 14A8XVha005088;
	Mon, 10 May 2021 04:53:45 -0400
Received: from ppma04fra.de.ibm.com (6a.4a.5195.ip4.static.sl-reverse.com [149.81.74.106])
	by mx0a-001b2d01.pphosted.com with ESMTP id 38eycr4aqy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 10 May 2021 04:53:45 -0400
Received: from pps.filterd (ppma04fra.de.ibm.com [127.0.0.1])
	by ppma04fra.de.ibm.com (8.16.0.43/8.16.0.43) with SMTP id 14A8pgRT005816;
	Mon, 10 May 2021 08:53:43 GMT
Received: from b06cxnps4074.portsmouth.uk.ibm.com (d06relay11.portsmouth.uk.ibm.com [9.149.109.196])
	by ppma04fra.de.ibm.com with ESMTP id 38ef37g7ee-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 10 May 2021 08:53:43 +0000
Received: from d06av21.portsmouth.uk.ibm.com (d06av21.portsmouth.uk.ibm.com [9.149.105.232])
	by b06cxnps4074.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 14A8reZL37749094
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 10 May 2021 08:53:40 GMT
Received: from d06av21.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 8668552051;
	Mon, 10 May 2021 08:53:40 +0000 (GMT)
Received: from tuxmaker.boeblingen.de.ibm.com (unknown [9.152.85.9])
	by d06av21.portsmouth.uk.ibm.com (Postfix) with ESMTP id 3787F52050;
	Mon, 10 May 2021 08:53:40 +0000 (GMT)
From: Niklas Schnelle <schnelle@linux.ibm.com>
To: Arnd Bergmann <arnd@arndb.de>, Vineet Gupta <vgupta@synopsys.com>,
        "David S. Miller" <davem@davemloft.net>
Cc: Nathan Chancellor <nathan@kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        clang-built-linux@googlegroups.com, linux-arch@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-s390@vger.kernel.org,
        linux-snps-arc@lists.infradead.org, sparclinux@vger.kernel.org
Subject: [PATCH v5 2/3] risc-v: Use generic io.h helpers for nommu
Date: Mon, 10 May 2021 10:53:38 +0200
Message-Id: <20210510085339.1857696-3-schnelle@linux.ibm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210510085339.1857696-1-schnelle@linux.ibm.com>
References: <20210510085339.1857696-1-schnelle@linux.ibm.com>
MIME-Version: 1.0
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: ZkiAbvuhC_g9f1e7CgcLDmtaOg-OvXfA
X-Proofpoint-ORIG-GUID: bfCl0hBnD87yqQ7_rrkWEnLuNngh6zg6
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391,18.0.761
 definitions=2021-05-10_02:2021-05-10,2021-05-10 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 lowpriorityscore=0 malwarescore=0 spamscore=0 suspectscore=0 adultscore=0
 mlxscore=0 clxscore=1015 priorityscore=1501 mlxlogscore=861 phishscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2104190000 definitions=main-2105100061
X-Original-Sender: schnelle@linux.ibm.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ibm.com header.s=pp1 header.b=dWWbkOfv;       spf=pass (google.com:
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

From: Niklas Schnelle <niklas@komani.de>

Without MMU support PCI_IOBASE is left undefined because PCI_IO_END is
VMEMMAP_START. Nevertheless the in*()/out*() helper macros are left
defined with uses of PCI_IOBASE.

At the moment this only compiles because asm-generic/io.h defines
PCI_IOBASE as 0 if it is undefined and so at macro expansion PCI_IOBASE
is defined. This leads to compilation errors when asm-generic/io.h is
changed to leave PCI_IOBASE undefined.  More importantly it is currently
broken at runtime, as accessing a fixed I/O port number of an ISA device
on NOMMU RISC-V would turn into a NULL pointer dereference.

Instead only define the in*()/out*() helper macros with MMU support and
fall back to the asm-generic/io.h helper stubs otherwise.

Signed-off-by: Niklas Schnelle <niklas@komani.de>
---
 arch/riscv/include/asm/io.h | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/arch/riscv/include/asm/io.h b/arch/riscv/include/asm/io.h
index c025a746a148..31a8b98c0f13 100644
--- a/arch/riscv/include/asm/io.h
+++ b/arch/riscv/include/asm/io.h
@@ -23,12 +23,12 @@
 #include <asm/mmio.h>
 
 /*
- *  I/O port access constants.
+ *  I/O port access constants. Without MMU support leave PCI_IOBASE undefined
+ *  and fall back to generic stubs for I/O access routines.
  */
 #ifdef CONFIG_MMU
 #define IO_SPACE_LIMIT		(PCI_IO_SIZE - 1)
 #define PCI_IOBASE		((void __iomem *)PCI_IO_START)
-#endif /* CONFIG_MMU */
 
 /*
  * Emulation routines for the port-mapped IO space used by some PCI drivers.
@@ -145,6 +145,7 @@ __io_writes_outs(writes, u64, q, __io_bw(), __io_aw())
 __io_writes_outs(outs, u64, q, __io_pbr(), __io_paw())
 #define outsq(addr, buffer, count) __outsq((void __iomem *)addr, buffer, count)
 #endif
+#endif /* CONFIG_MMU */
 
 #include <asm-generic/io.h>
 
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210510085339.1857696-3-schnelle%40linux.ibm.com.
