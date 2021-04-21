Return-Path: <clang-built-linux+bncBCV4DH5YZYMBB4MTQCCAMGQEM6HYXMA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43f.google.com (mail-pf1-x43f.google.com [IPv6:2607:f8b0:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 8527A3669C9
	for <lists+clang-built-linux@lfdr.de>; Wed, 21 Apr 2021 13:18:11 +0200 (CEST)
Received: by mail-pf1-x43f.google.com with SMTP id b19-20020a056a000cd3b029024d8d7a88c1sf10601176pfv.19
        for <lists+clang-built-linux@lfdr.de>; Wed, 21 Apr 2021 04:18:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619003890; cv=pass;
        d=google.com; s=arc-20160816;
        b=P+nN48eUdg/s1QkcQfZdTpKGKawk4SqYf1q5/S4+oeA6jk2TEYALay2WKU7UADeC3H
         dlPibv0xrO53buKm0S+sG/N0cph4sXM82VzUgtE2Nldbj57RQ7/obH/dX+xMs6d0s7AP
         u9BwgdnlborVbL4j2fagSgJVn8++guiVbkevsTgUITbfI/8Vt+Rn73UQGwJLv2AZLpCI
         y3J2YEP4WYklqdRJ62hbwEyljeEI6eYXvk78KmuEskPH5KsSZKREbSsW2ThoJilHydlB
         JE9CMfQ6wmeQKoMsr6WgyugfoJQ572oJcKs+34DoNQ0cbK2hEtH7bBpzslBB3Rxgs0cf
         26hw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=+LSrXuG0DtW6ZAeuv569aVF/zejD0ko8Qrs0oq1ve0A=;
        b=RAsFoRxoQAY/5Mrj5Ezk+7APf7gh0Fg8JddC1bKaX2HZV+QUe5wn0oBgBMFWF3k6tu
         lnNVBYWTu2Ze9SQ5vbYlW7gmYpFaxmXAi9qkmxgATUL5j/YfQ84UF8qjP1Vn+kmE9aHP
         0TL+UW0tJMVuW99QhEYWK2uu/r3xHhRYj+LhCnWG5neyIkmnlUXpLM0AjdZD1eRWBKQ1
         DWgbSAeyyjfLihBGpYNiNjowPRVKUcFWT/YmHUytbEjBQ7TO+c2b0+ICss++/HXy/Ocr
         jV1j/r0jyGh0RShXduLkJrvrK3FdeiI4I9Yv8WYlQeODU9DnmEaVZBJIMwZqeKa3Uc+x
         GBsw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=PnxuJU0b;
       spf=pass (google.com: domain of schnelle@linux.ibm.com designates 148.163.158.5 as permitted sender) smtp.mailfrom=schnelle@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+LSrXuG0DtW6ZAeuv569aVF/zejD0ko8Qrs0oq1ve0A=;
        b=HgYQ1m2Q2+9Yuut7wFn0mY0afKt08h3Hl4kJNciLjE1BooKoav14oGd5WQSWhM71Zl
         ZBWnIjoqTPOjBmf/ZJ4Oir943PFH7FqI0VQC1APmFFWNbJ5Kd8gIHqwiftnmg+OPL4Ex
         c5YpvqVPl5KzG2aKKu+2gKI08jDK7LRrxs+RhV7CAIYhFvH1ZkkkPfD6vF42ErrXfI+/
         eYq3oAXgb+T9pJucFSAFRZkbyREXLnMecMnzCwdE4Z/UIop5XR/PbYpEtufn8mXoOMWl
         eoyEzyDQ/NuV0xiyWBKGonFoxlOq8xSgdLfUjKxZjz8gX/vhWWcCh8dpkkcW4neIPrlp
         St4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+LSrXuG0DtW6ZAeuv569aVF/zejD0ko8Qrs0oq1ve0A=;
        b=eoHPkXkFjZwUMCeeKRClB5TxI9zmKIarAtfpKN54nm8v83LfKqGIypfSClGkMIAHiw
         V88U5ILio1EBlX7kCiXw1vvA+tU0LfANF+MmhsF+hQyJ/H9bHxihO8sfKNf+W0zlY25G
         qWN5Okmwmg9wVmDatA3j/JxBYS24II2AgEuDUqajIG2QCDIt/qtBA33j5SPa2O0p3ClO
         iJo84OwYTISojgxtc3sefvQ4u76xvmePWxfYVSXhamdwB/huixqc7qsHzuPuQaefpo1i
         bQ50AqXU20PQ9EFg2c/8eQSfk3tI5lxOHmllAkodlTmEhIt1su4NtJCnuAKZcNLePtQN
         yEWA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532eseFrhbnN/Wa3CHUKrPtEWHxqdJ0GRCc0RlpSy8EmhzqQFAjI
	jIMyE+wsb5pnf8DX78HhxcI=
X-Google-Smtp-Source: ABdhPJylXxsbFUv1P0LGUzSDwm4FIKDgSsDR83ADRR36yZE2P1o0g97pGgE6lM98aPluhpjHIPXnZg==
X-Received: by 2002:a63:1a07:: with SMTP id a7mr6542775pga.139.1619003890011;
        Wed, 21 Apr 2021 04:18:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:b48:: with SMTP id a8ls822651pgl.10.gmail; Wed, 21 Apr
 2021 04:18:09 -0700 (PDT)
X-Received: by 2002:a62:dd16:0:b029:257:51ff:5a83 with SMTP id w22-20020a62dd160000b029025751ff5a83mr29534222pff.14.1619003889489;
        Wed, 21 Apr 2021 04:18:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619003889; cv=none;
        d=google.com; s=arc-20160816;
        b=EXuM7rk+Hg2Dr+j0UDRTBpYe8s/ng7ntusGHOm/z8clKkzOtgkHEnV0jQ6j2pZrkSc
         jsQCWEGpNyYYiwv0p82zCbVkvRZs2GIcNghzCcQKwI3mB35Zu9bSL+VsbaesfUPtKrcN
         Gsp8yYwN96WXuUKI8olrVmU89OH2C3JuZIeWArsFWPjJ8njHBp7Dybipc5VaJoNY07hp
         NTK2nSjwXZWPhHbiFZvI8DR+35HKSeaiQm7Wx2SaWtaGdMHPfCWMk3Uw92+oKQZrPqPf
         xDhsBa9X5N3ru2P0SOPJG6+M3ienHCGdA9vDU2sPj694ipY2FBVYwfs0lmIFpZGrH1sA
         Iagg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Tp1FtUZZr39xjtdvE2sqEkfGGAfoLFHMbZfXqjKpsfY=;
        b=hhqoLgJ6QMo9lq8ci6c5IgQJ4CjEMwtDhE2LIgSqEkgPlnkvABVZ+c2Su1Lj6H5f19
         XylWDpGvPFCJSOU/6YBKj5+mS85i3+eZpXwo6adJuUxb8EVQXWq0Izw8UiTAK1yfr+hr
         eZuf8eRtYaw9ngSsqu/XGMlEYg0bKIgubhUZq3S3ud85BGrXqR9RcRWD7W7nWtc6nGbu
         FoKVysJ8dKYAja7wVNqsGLvT63PENq5G4WVS2Ic9YJAHfJ9jLsU8vjN4IKg/8jYXHvRG
         3F5KZapBlAJ7BKr/a9BmwgWsK8d6C//eZjVqfBgXY3+Ae/7FmsNmPKWn0Sp/g6g8voOE
         dFtA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=PnxuJU0b;
       spf=pass (google.com: domain of schnelle@linux.ibm.com designates 148.163.158.5 as permitted sender) smtp.mailfrom=schnelle@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
Received: from mx0b-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com. [148.163.158.5])
        by gmr-mx.google.com with ESMTPS id g1si168417pjj.0.2021.04.21.04.18.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Apr 2021 04:18:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of schnelle@linux.ibm.com designates 148.163.158.5 as permitted sender) client-ip=148.163.158.5;
Received: from pps.filterd (m0098417.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 13LBFMbg061926;
	Wed, 21 Apr 2021 07:18:05 -0400
Received: from pps.reinject (localhost [127.0.0.1])
	by mx0a-001b2d01.pphosted.com with ESMTP id 382k0s82ct-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 21 Apr 2021 07:18:05 -0400
Received: from m0098417.ppops.net (m0098417.ppops.net [127.0.0.1])
	by pps.reinject (8.16.0.43/8.16.0.43) with SMTP id 13LBFd0P062500;
	Wed, 21 Apr 2021 07:18:05 -0400
Received: from ppma06ams.nl.ibm.com (66.31.33a9.ip4.static.sl-reverse.com [169.51.49.102])
	by mx0a-001b2d01.pphosted.com with ESMTP id 382k0s82bu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 21 Apr 2021 07:18:05 -0400
Received: from pps.filterd (ppma06ams.nl.ibm.com [127.0.0.1])
	by ppma06ams.nl.ibm.com (8.16.0.43/8.16.0.43) with SMTP id 13LBHxkH013130;
	Wed, 21 Apr 2021 11:18:03 GMT
Received: from b06cxnps3074.portsmouth.uk.ibm.com (d06relay09.portsmouth.uk.ibm.com [9.149.109.194])
	by ppma06ams.nl.ibm.com with ESMTP id 37yt2rt725-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 21 Apr 2021 11:18:03 +0000
Received: from d06av24.portsmouth.uk.ibm.com (d06av24.portsmouth.uk.ibm.com [9.149.105.60])
	by b06cxnps3074.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 13LBI0XY31523174
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 21 Apr 2021 11:18:01 GMT
Received: from d06av24.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id DAE8D42042;
	Wed, 21 Apr 2021 11:18:00 +0000 (GMT)
Received: from d06av24.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 7438042047;
	Wed, 21 Apr 2021 11:18:00 +0000 (GMT)
Received: from tuxmaker.boeblingen.de.ibm.com (unknown [9.152.85.9])
	by d06av24.portsmouth.uk.ibm.com (Postfix) with ESMTP;
	Wed, 21 Apr 2021 11:18:00 +0000 (GMT)
From: Niklas Schnelle <schnelle@linux.ibm.com>
To: Arnd Bergmann <arnd@arndb.de>, Vineet Gupta <vgupta@synopsys.com>,
        "David S. Miller" <davem@davemloft.net>
Cc: Nathan Chancellor <nathan@kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        clang-built-linux@googlegroups.com, linux-arch@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-s390@vger.kernel.org,
        linux-snps-arc@lists.infradead.org, sparclinux@vger.kernel.org
Subject: [PATCH v3 1/3] sparc: explicitly set PCI_IOBASE to 0
Date: Wed, 21 Apr 2021 13:17:57 +0200
Message-Id: <20210421111759.2059976-2-schnelle@linux.ibm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210421111759.2059976-1-schnelle@linux.ibm.com>
References: <20210421111759.2059976-1-schnelle@linux.ibm.com>
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: 9jxCaZ-LyFk5alBDISqHY3QbcmR30aW_
X-Proofpoint-ORIG-GUID: m5Lxw54g26Cw_54NW40jaGMQX1BTHxRh
X-Proofpoint-UnRewURL: 0 URL was un-rewritten
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391,18.0.761
 definitions=2021-04-21_04:2021-04-21,2021-04-21 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 mlxscore=0
 priorityscore=1501 lowpriorityscore=0 clxscore=1015 adultscore=0
 bulkscore=0 phishscore=0 mlxlogscore=999 spamscore=0 impostorscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2104060000 definitions=main-2104210085
X-Original-Sender: schnelle@linux.ibm.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ibm.com header.s=pp1 header.b=PnxuJU0b;       spf=pass (google.com:
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
v1 -> v2:
- Improved comment (David Laight)

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210421111759.2059976-2-schnelle%40linux.ibm.com.
