Return-Path: <clang-built-linux+bncBCV4DH5YZYMBBI6OV6CAMGQEGPWSNVY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103f.google.com (mail-pj1-x103f.google.com [IPv6:2607:f8b0:4864:20::103f])
	by mail.lfdr.de (Postfix) with ESMTPS id 41E4E36F906
	for <lists+clang-built-linux@lfdr.de>; Fri, 30 Apr 2021 13:16:53 +0200 (CEST)
Received: by mail-pj1-x103f.google.com with SMTP id a18-20020a17090a4812b02900fc63fabd38sf1494733pjh.0
        for <lists+clang-built-linux@lfdr.de>; Fri, 30 Apr 2021 04:16:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619781412; cv=pass;
        d=google.com; s=arc-20160816;
        b=u8GM6kMz6UQtUhLpqvIiSmQ8BItzpLizx8RdyJRGr3Trn6PcOFohGn+e1MB6ACe0Bz
         iQ875ryiEtMdNEaIeD4fXfaVj5X/k+MLnF+wqbOOau7iS3Owdj+80EfoHPonvqxw2cOz
         ECYuA3OBDB0kV1m0E/eEr36YNDg0fzUqyvrMZ3rxrE/IPnIhOzweIiYZGO1rCDWwjmGO
         nuPTv2KJRG1eNnC5o09epjsKMDwyXaXkKYW9A5lO6rEN3onJAWc663X0W1NADzdVMNPM
         oTbiTQ+fExX8C3eOt8T3AGjskxQooDp+CQeiM3JL96igkV9rqjMX2pP/Ma8T16N5HVPG
         kjcQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=Qd9TxdnMhZ/+IVboh4AF1V31J7hQkuqiKT/Oih/WDxc=;
        b=AME2gogmC814655pZTDnMJ0Lu3BkTMzm6gYpVreX5GcsgdxUKmWFaq22MOXmONU5Pb
         sHcy6y8LO7V5d7h7EQziTkrXp2MxFoaXfG5tfriC/H3xHsAunSHDwpfYN3uReTRmlrMD
         9rcT7FjzJvl2c9oWPRN0V+pO31wzKaUwREswAb5NW9HPjCIsJM9T8I9LsgvLqCQ0l34r
         /l8xaTbxEWlYgJvjNLBKX4Aauaiau4+coY3u6J0w30kodNZCu90OGOw1WEkPM/G+e/OJ
         vdJwL38TUHwp/s+BJcRYcRehVaACpsf9db3kPCDB7hL8QtPqJQfpW5MI4Z2jv8PzN4ZT
         f/gQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=XMk73+vj;
       spf=pass (google.com: domain of schnelle@linux.ibm.com designates 148.163.158.5 as permitted sender) smtp.mailfrom=schnelle@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Qd9TxdnMhZ/+IVboh4AF1V31J7hQkuqiKT/Oih/WDxc=;
        b=Qkw44EiLfnLIfMHFe8hwfb3GXfVjdTfIvHPlWq95/lALHJy9+uQTgft6gC3/DgOZo1
         RGgP0MxuYzdI2dzNjIfZY4icOOifD6xRPNxrW0t9GjkoVkLI7aF+OlkpHKDTNjql+Zcp
         ZgzT+tfiBCd865dO8N37DK+bdn83o2NofoK1LN6ktHMipTs5FEcpqUg6CLO+01x424KS
         cg+gZ1uhGjWUf2IVPLKtEk9iizq5k7KMChwA5OBS7D0GpIMywrU+U4kU7rzzL4MGV1/l
         I707hULtVdinGLT4v7gP2d0Okkm9Io9IRVdJaLFW1s/gXQnR6BCFAGBJK6LKujFQE4GX
         HP8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Qd9TxdnMhZ/+IVboh4AF1V31J7hQkuqiKT/Oih/WDxc=;
        b=mrOSLv98ltazSK5tQvxL8D6BBLhZKKGMrtm/zvj0R6v4+BWlWsYrZ90PLUdj5B9Cxm
         WpCwPVq/XGdqoWTF/dOfEETs+QD1g+WPvQXSD/LqZUwrRYBx9hrRITQbhzVJzkHaUZI9
         5ka6oMBwOaarjPLBeWzdDkAxeE4EzmNL4M3bPxYsfaQCeURRTiddlfmFk3z8fZCWZxyX
         1CnHRGz4cB2jwbjV4bxyWL8xzaCCFssQzjn6b+bqC9U3z0xqt7mwbAGQApc5roQqSwT+
         ZVLyJVlTKz7MH8h/h03GcMV6EFKew+Sg69ohZQS+tqSugwsYHEiMtDnfrtkw//Xa3I2V
         lK3g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532gfmkYZMqtXj4oWt6ICCi9ZIgdIy2qNYqY78aitQkqt6uKk0Az
	HALw3gWxZRRpgOy1WlUJckw=
X-Google-Smtp-Source: ABdhPJzv7dgAGyt68C3Ac9JGUvHiynn/wsdtuRn3FFXgcNPMTPb7a1+9yFSmyPmwsuDfgGARLvh0fA==
X-Received: by 2002:a17:90a:4a0e:: with SMTP id e14mr14901029pjh.209.1619781411859;
        Fri, 30 Apr 2021 04:16:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:547:: with SMTP id 65ls3214225plf.8.gmail; Fri, 30
 Apr 2021 04:16:51 -0700 (PDT)
X-Received: by 2002:a17:90a:8548:: with SMTP id a8mr4955710pjw.48.1619781411342;
        Fri, 30 Apr 2021 04:16:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619781411; cv=none;
        d=google.com; s=arc-20160816;
        b=Frqnj48j21hj7Sldq25lVm81q0DPXz80VlnqA2/ou2oi4aHh5DaLMAKYwoyAwl7Ued
         OYDvGs6MkzayUhiobnoqev0726Pox6mW1GJ2iQGeNPAEkyQrguxI6zcbFuKJrKGOH/WU
         qSQbH0FIH+kXyk/Y4mCRuSfLj6I91BLzpaf2HN6XV5bIXFp/Om9rgfAIJcRbGkK+0T6d
         uxJelWwipOqN208ZgFYxHw7XaSaTUAN2/6ELARiBQbLfY5MDik4XpB5Fz98iZL0s1Wwu
         D/8PaFDHBzJCzh5iLtVCwsPs5N+iJ+YnF1OsURwy2e4YOTLheAaek1r0AjbtWMqlUs49
         cdRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=5SsglWhGmMPmJXCcuqG+7DJk2fX9LwEDn2iiu26ZJ7o=;
        b=UQm33inS1Se/1J69kwlQlnjG646URtVhuhUewPDX6uamAkF7NUFdCB0e9v9ogmKbMi
         0ufclVmiglHBktLj+Mgp/AJ9Z5MKAwAC815dPa8QoQk8CWZ6tWXMwW/nQJgH36Ms8+A+
         XW9gyXxP9Jx7/q16RVELetw9NZjZLk62tNZ2UW2D9zuVzusZ22neHW4aUHiIQiUzbUH+
         b60tn2WZGq32ptC5J3/0csmeYlnSF7RY6KREAqIGgXyaESaO51qDQG61g2r9Lm4LaCEn
         mM/73Emiab3fxOrDxjMfGTwCpnF9rl2AEAdcF/Al1Y39Oc4VufVxU+rLO3V9D0MRr0lp
         jxDA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=XMk73+vj;
       spf=pass (google.com: domain of schnelle@linux.ibm.com designates 148.163.158.5 as permitted sender) smtp.mailfrom=schnelle@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
Received: from mx0b-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com. [148.163.158.5])
        by gmr-mx.google.com with ESMTPS id md7si1036783pjb.3.2021.04.30.04.16.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Apr 2021 04:16:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of schnelle@linux.ibm.com designates 148.163.158.5 as permitted sender) client-ip=148.163.158.5;
Received: from pps.filterd (m0098421.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 13UB6Jvj157413;
	Fri, 30 Apr 2021 07:16:47 -0400
Received: from pps.reinject (localhost [127.0.0.1])
	by mx0a-001b2d01.pphosted.com with ESMTP id 388fyhsma6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 30 Apr 2021 07:16:47 -0400
Received: from m0098421.ppops.net (m0098421.ppops.net [127.0.0.1])
	by pps.reinject (8.16.0.43/8.16.0.43) with SMTP id 13UB6Ygb158289;
	Fri, 30 Apr 2021 07:16:47 -0400
Received: from ppma03fra.de.ibm.com (6b.4a.5195.ip4.static.sl-reverse.com [149.81.74.107])
	by mx0a-001b2d01.pphosted.com with ESMTP id 388fyhsm9m-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 30 Apr 2021 07:16:47 -0400
Received: from pps.filterd (ppma03fra.de.ibm.com [127.0.0.1])
	by ppma03fra.de.ibm.com (8.16.0.43/8.16.0.43) with SMTP id 13UBETis016792;
	Fri, 30 Apr 2021 11:16:45 GMT
Received: from b06cxnps4075.portsmouth.uk.ibm.com (d06relay12.portsmouth.uk.ibm.com [9.149.109.197])
	by ppma03fra.de.ibm.com with ESMTP id 384ay8sq3m-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 30 Apr 2021 11:16:45 +0000
Received: from d06av23.portsmouth.uk.ibm.com (d06av23.portsmouth.uk.ibm.com [9.149.105.59])
	by b06cxnps4075.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 13UBGg6444040536
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 30 Apr 2021 11:16:42 GMT
Received: from d06av23.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id A5267A4040;
	Fri, 30 Apr 2021 11:16:42 +0000 (GMT)
Received: from d06av23.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 522C9A404D;
	Fri, 30 Apr 2021 11:16:42 +0000 (GMT)
Received: from tuxmaker.boeblingen.de.ibm.com (unknown [9.152.85.9])
	by d06av23.portsmouth.uk.ibm.com (Postfix) with ESMTP;
	Fri, 30 Apr 2021 11:16:42 +0000 (GMT)
From: Niklas Schnelle <schnelle@linux.ibm.com>
To: Arnd Bergmann <arnd@arndb.de>, Vineet Gupta <vgupta@synopsys.com>,
        "David S. Miller" <davem@davemloft.net>
Cc: Nathan Chancellor <nathan@kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        clang-built-linux@googlegroups.com, linux-arch@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-s390@vger.kernel.org,
        linux-snps-arc@lists.infradead.org, sparclinux@vger.kernel.org
Subject: [PATCH v4 2/3] risc-v: Use generic io.h helpers for nommu
Date: Fri, 30 Apr 2021 13:16:40 +0200
Message-Id: <20210430111641.1911207-3-schnelle@linux.ibm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210430111641.1911207-1-schnelle@linux.ibm.com>
References: <20210430111641.1911207-1-schnelle@linux.ibm.com>
MIME-Version: 1.0
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: t5jSEkAyzQg9YbKLNibhxJHyuOSn6PuM
X-Proofpoint-ORIG-GUID: pMjuzfh22pq1b2J_gzy8Gn17zt6yrdo1
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391,18.0.761
 definitions=2021-04-30_06:2021-04-30,2021-04-30 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 bulkscore=0
 suspectscore=0 clxscore=1015 lowpriorityscore=0 impostorscore=0
 phishscore=0 mlxlogscore=795 malwarescore=0 priorityscore=1501
 adultscore=0 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2104060000 definitions=main-2104300080
X-Original-Sender: schnelle@linux.ibm.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ibm.com header.s=pp1 header.b=XMk73+vj;       spf=pass (google.com:
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
defined with uses of PCI_IOBASE. At the moment this only compiles
because asm-generic/io.h defines PCI_IOBASE as 0 if it is undefined and
so at macro expansion the macro is defined. This is suprising at the
least and leads to compilation errors when asm-generic/io.h is changed
to leave PCI_IOBASE undefined. Instead only define the in*()/out*()
helper macros with MMU support and fall back to the asm-generic/io.h
helper stubs otherwise.

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
2.31.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210430111641.1911207-3-schnelle%40linux.ibm.com.
