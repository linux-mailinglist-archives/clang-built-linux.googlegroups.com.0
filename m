Return-Path: <clang-built-linux+bncBCV4DH5YZYMBBHHJ4OCAMGQE7IDDRRQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103e.google.com (mail-pj1-x103e.google.com [IPv6:2607:f8b0:4864:20::103e])
	by mail.lfdr.de (Postfix) with ESMTPS id D35EB377EA6
	for <lists+clang-built-linux@lfdr.de>; Mon, 10 May 2021 10:53:49 +0200 (CEST)
Received: by mail-pj1-x103e.google.com with SMTP id c13-20020a17090aa60db029015c73ea2ce5sf2545242pjq.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 10 May 2021 01:53:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620636828; cv=pass;
        d=google.com; s=arc-20160816;
        b=gud3Ga9K0oaPLZco8+/XnDlIz1W5Wtv+AiuSH5OvDIJllAU58Yw0il6ssv/VGlNqVz
         CMYANMvv1XdE6gI0dKBKPENShjcuWTT0eNMsLX6oZmhbHm0Ldc/ZlsAlcdIl8Hx+Hf5A
         0BOpr0eMrb0T85gjKRgmE4VgNs/UakZ6QtnQyFPirxDnbL63kuIxpCDTFyt5QITz5rFn
         AeCyC1+Dp8KPnmHz/Jd5oRiGQZkqkm05H4RgC84ejXnu/B2QimVJGSO3QVRBtKLURBJG
         v3Ps05TqBsQzmUDNf9RKD/n8Ris1fj6bwwt+2FJGMWdyIJHrjnqCgz1SENx+eQIj7XDM
         7L/g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=XTGnDfkaCN45BGB796PeilEwvqChtIphTPnSNlNhbCs=;
        b=EwoV2SErQpUn6xy3a38eiJT9sf5cjPzNLKxjcWs5ImtXRDnchpmXX/VR9KKXiojkkg
         HeOlD6vUAVFc8U2zBLofhwHYewbQaiqLX3VUrcksMpy8zhFR2po2uhXswDNygOyv5FxN
         1wSY2sGdRXWrbYIO6oW20Y3PEnzOgxcX4qtpfLXW4SG8UsOAbRpj29ch+8hiW18uGauE
         YcQEp+bEjdPG7ixB7mpJWYilPoyH99Zwb/M0Q05HFbGNPCxctZwMZsFbmUEwoj+7XAIg
         8LhHKqYTXyTnkKzYWCi5garX1vI27y16E41yUTtgYT2MEJwtRWob/xAUjpEOW/dJ5c9v
         fbjA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=hFa9lnnz;
       spf=pass (google.com: domain of schnelle@linux.ibm.com designates 148.163.158.5 as permitted sender) smtp.mailfrom=schnelle@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XTGnDfkaCN45BGB796PeilEwvqChtIphTPnSNlNhbCs=;
        b=HKfwXo0Vag2+/Yvzng+siaKvPPTakTy+xoSTQb9oNot191BlBtYxr3beYbat9YxC2P
         LdGAAquXtmq9ZjlIgGa/dedK8uXh2md2Zw7L/jcNy52QasT7+quHdc9M8sn6a3Qs19sc
         VQd2WAZZPTLMjinIkSc8vtF0tQTEENbYQD09qdODSPZe+dw9NJD9I9dBjJK0tKecPDBG
         X2G1Jz1w103wW8IICIoJyB8Jz3q+zyvuswUdlaDp0C8HX4ZlS6JCxsTTIVkjOWzr3wur
         pqGjdqxVfaGyuTZyGQxyN4La7H0BMFarGweEeYRDLBJ6xXFj+stoDau00yBegEhNVRIJ
         4n3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XTGnDfkaCN45BGB796PeilEwvqChtIphTPnSNlNhbCs=;
        b=rSTMyoorr2HKUgrwQ+cW3vvklJfuOMXTI3nr9QatsdbUEOtO/F4rGHFfUD68StOXJ9
         JoJe3wPsdHxx6NZ9S9+uinNFZRmE7N140j5pLeikcDAEdDO6Oa/X/nRRYf7tHtkAvhYz
         b97YZhsBMBGR08pE3E351r2MraMCqHxr7G8RnojeQwQSpYFD3ncebSVEP8TLmu4DYIuV
         nDCTlSMGJJl0wDpdjWl13tTpKFVpKklzjRsy5plU0yXNU3dZPnbIEMEQ924uwoKuyc9S
         KrNu4NOjMC1NK/rKxs5hR1h3e0b3TyjPDs4o5/Pg7A6Eh8XMFMG7IYjEbE08d2oYdlEr
         OI3w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531J6qdrZWENWTYqkhLAj1mW+5hLWz7v46zEZy+MeChawlgdCmxh
	c4ui0a2oZMHOWFz71AmOHsg=
X-Google-Smtp-Source: ABdhPJyxS/J50+/SIyu5FcPW5QoGBRYTYj0J30hkurrioIzRFtqBiePqD/QEADlGjEWV/ycvbU+wPg==
X-Received: by 2002:a17:902:7589:b029:ed:492a:6ac6 with SMTP id j9-20020a1709027589b02900ed492a6ac6mr24064871pll.62.1620636828600;
        Mon, 10 May 2021 01:53:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:ba08:: with SMTP id s8ls8301303pjr.1.gmail; Mon, 10
 May 2021 01:53:48 -0700 (PDT)
X-Received: by 2002:a17:90a:4404:: with SMTP id s4mr39230629pjg.218.1620636828064;
        Mon, 10 May 2021 01:53:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620636828; cv=none;
        d=google.com; s=arc-20160816;
        b=Jw3CJd07ORdHI88eU1Xf+iRgNSs1spdBRbZ+Tv69bzmMCgazA3Mx4RHSictJWMEqdt
         o/FpBTgAnbkwurcEYEM0Eqt8e2rky2CP9eIVeCBPbBVsXskVfILKttVnGA0MSyyiHOK+
         PQ+PH3TMw6y7BFaVqoO26uVTY2JGCbwU7wR9J7/AD1L5O/XaUhLooMT7OM0leLFdTeSE
         ZskiQ6efsVt8WEHVfffbpV8BuiJYPrB61fLlCZhxKsdlEWawHjodw3XBSdJ7vKYEL/40
         f/N8NKVnLtZrkhZ0APO1gys8yCTiYh5wvVmxPQUiIEw9mDYMN88jT1EOP/bzOYkQl3bT
         sEWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=mp/51zQTwU0ypyrfGm7d48XnTdWhVBfdFjEkqW1sSTI=;
        b=cSA06UkGRIXqm4nTqoYkThT595UnhuQ5CUs/TKj6u88kXGtMmKh2HyI9g6kyPJmNgg
         pBtOmEtesgZnewdYjXxOWnd8qMRP3oaFjFJMH1+n9qMGtVGKYTLQ32EJ8+Fte+7S8dA8
         gjX4RSXx1jVwo3JH3JiraQUQ/A7XyDLaaNaiesE4g3aLMosr9fNVKjmtuh271I3rlbSE
         a/+zmy9GHWX1TzdEZIwwPOBr3XtTLt7i+WRuZyiRuefQVQzYfnwLPnwoB033MPp6JcAA
         WGM1dHFEH3LRX2iA+Osmjlnu9l1QPljQFky/xgsVChfNk+nq9hxQlnNmPWu0g7nBe9La
         B3Sg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=hFa9lnnz;
       spf=pass (google.com: domain of schnelle@linux.ibm.com designates 148.163.158.5 as permitted sender) smtp.mailfrom=schnelle@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
Received: from mx0a-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com. [148.163.158.5])
        by gmr-mx.google.com with ESMTPS id w3si946948plz.2.2021.05.10.01.53.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 10 May 2021 01:53:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of schnelle@linux.ibm.com designates 148.163.158.5 as permitted sender) client-ip=148.163.158.5;
Received: from pps.filterd (m0098413.ppops.net [127.0.0.1])
	by mx0b-001b2d01.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 14A8YiMG022973;
	Mon, 10 May 2021 04:53:45 -0400
Received: from pps.reinject (localhost [127.0.0.1])
	by mx0b-001b2d01.pphosted.com with ESMTP id 38f0qh9rw4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 10 May 2021 04:53:44 -0400
Received: from m0098413.ppops.net (m0098413.ppops.net [127.0.0.1])
	by pps.reinject (8.16.0.43/8.16.0.43) with SMTP id 14A8ZSVu025565;
	Mon, 10 May 2021 04:53:44 -0400
Received: from ppma04ams.nl.ibm.com (63.31.33a9.ip4.static.sl-reverse.com [169.51.49.99])
	by mx0b-001b2d01.pphosted.com with ESMTP id 38f0qh9rvk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 10 May 2021 04:53:44 -0400
Received: from pps.filterd (ppma04ams.nl.ibm.com [127.0.0.1])
	by ppma04ams.nl.ibm.com (8.16.0.43/8.16.0.43) with SMTP id 14A8phmb032561;
	Mon, 10 May 2021 08:53:42 GMT
Received: from b06cxnps4074.portsmouth.uk.ibm.com (d06relay11.portsmouth.uk.ibm.com [9.149.109.196])
	by ppma04ams.nl.ibm.com with ESMTP id 38dj988sm9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 10 May 2021 08:53:42 +0000
Received: from d06av21.portsmouth.uk.ibm.com (d06av21.portsmouth.uk.ibm.com [9.149.105.232])
	by b06cxnps4074.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 14A8reMh37749088
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 10 May 2021 08:53:40 GMT
Received: from d06av21.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 374CF5204F;
	Mon, 10 May 2021 08:53:40 +0000 (GMT)
Received: from tuxmaker.boeblingen.de.ibm.com (unknown [9.152.85.9])
	by d06av21.portsmouth.uk.ibm.com (Postfix) with ESMTP id D278D52054;
	Mon, 10 May 2021 08:53:39 +0000 (GMT)
From: Niklas Schnelle <schnelle@linux.ibm.com>
To: Arnd Bergmann <arnd@arndb.de>, Vineet Gupta <vgupta@synopsys.com>,
        "David S. Miller" <davem@davemloft.net>
Cc: Nathan Chancellor <nathan@kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        clang-built-linux@googlegroups.com, linux-arch@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-s390@vger.kernel.org,
        linux-snps-arc@lists.infradead.org, sparclinux@vger.kernel.org
Subject: [PATCH v5 1/3] sparc: explicitly set PCI_IOBASE to 0
Date: Mon, 10 May 2021 10:53:37 +0200
Message-Id: <20210510085339.1857696-2-schnelle@linux.ibm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210510085339.1857696-1-schnelle@linux.ibm.com>
References: <20210510085339.1857696-1-schnelle@linux.ibm.com>
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: P8gbHC4QcXnCxhfH8z3paOdfhtIG_k5T
X-Proofpoint-ORIG-GUID: 2QfnhUpHBA0LNW97Di4oKa8vDYlVCFJ1
X-Proofpoint-UnRewURL: 0 URL was un-rewritten
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391,18.0.761
 definitions=2021-05-10_02:2021-05-10,2021-05-10 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 mlxlogscore=999
 priorityscore=1501 malwarescore=0 lowpriorityscore=0 adultscore=0
 clxscore=1015 phishscore=0 suspectscore=0 impostorscore=0 mlxscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2104190000 definitions=main-2105100061
X-Original-Sender: schnelle@linux.ibm.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ibm.com header.s=pp1 header.b=hFa9lnnz;       spf=pass (google.com:
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210510085339.1857696-2-schnelle%40linux.ibm.com.
