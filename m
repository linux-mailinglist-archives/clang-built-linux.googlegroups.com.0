Return-Path: <clang-built-linux+bncBCV4DH5YZYMBB5HG4CBQMGQEXVGU3AA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3a.google.com (mail-qv1-xf3a.google.com [IPv6:2607:f8b0:4864:20::f3a])
	by mail.lfdr.de (Postfix) with ESMTPS id BE8CC36098D
	for <lists+clang-built-linux@lfdr.de>; Thu, 15 Apr 2021 14:37:09 +0200 (CEST)
Received: by mail-qv1-xf3a.google.com with SMTP id j8-20020ad453a80000b029017e3d6eb516sf1659214qvv.10
        for <lists+clang-built-linux@lfdr.de>; Thu, 15 Apr 2021 05:37:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618490228; cv=pass;
        d=google.com; s=arc-20160816;
        b=TrdGW8KvfGk12dStDGAO583uXUCGvA26CgpwXHuzEJxTC/evpeKaoHWByIT71SqAlb
         j2m7HikPbyKL/HkQRKoADflZxXLs6v2zaZRk9EiaTZuDK/sk7fIAru+805QEtRO+VaFS
         pBQU0ao4r0e7qXDO3cASljclh2U7iBKH1YN61AgLIXeIADmGZbRKRFaJAf6/Qv2TvUQo
         FTd5KquLdBczBHNIdDRTsncXl+mQ6hEG5W/+JBlG+XaSGaugFA+p1iJ3B3U5WczuDGg+
         H9+WCU+arpFwhvtmTpQ9yyUmPKIEd5sFWLTWe/OhLuZhNmlT7GVBcP1R53SGq48DiOB7
         nSpg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=tUWZtMdDGuxPvN+x4VBw5vgJV6ZCUzWKgJpBqkvmjR4=;
        b=gvneSbsABi3bOdNinnqNBekzPa7tdUiy9DhFfooejn7CMkXy9AJH0jX0ZsDypxGyLj
         nzy+U70VuqQrmLWT5rejbVNDEmr111j/TbP2z12i0W6kNgrbvvdiqHB0ngCj5M7YGdfR
         CEj8kJCc3H96lvUYi7D0Qfb+zdpKJzjDMmGfYMntDU+VI5oBOoQ+CenYVQhdAuqFNAaE
         IRkZaNe3/QcsJ3iGZNJIi2qC4n9uI8MH/b1dUpQ3Z057a/n8Lo/p2z4o6ZxNfflqF00/
         ou1Yb0/QIPjFpItBxGICkytkzNgxAEVgMTd7yA3217tO3v2J2kYaORhds74vnsTSuS9c
         0RZg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=WmrFK5cw;
       spf=pass (google.com: domain of schnelle@linux.ibm.com designates 148.163.158.5 as permitted sender) smtp.mailfrom=schnelle@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tUWZtMdDGuxPvN+x4VBw5vgJV6ZCUzWKgJpBqkvmjR4=;
        b=Q005emSwwIPxeVB/5LWDnIMdcwTJt0sP3KT6a+KtjnjKLPczfC+ZIS+bzIYW8Q96ce
         WkKu4iAAol97cC79KSz8aAUKjzmfq43chtFIoU2ZZiwbPKg4FZkXqvsBlgUqd6eh16M2
         Q+b31sVLBbGzfOr2Eio7Uy8hbGcXduz5d8ZhedMtC89exa2YGpncaAccIzUb8YfCowVN
         KtolIAnggUtdfCBHgrbd9wj0WY8tPUGU281gHddsiJxtlvN6vr3KsljzQjMDNeShr8/8
         tSLJRn7HDrpH26s82/XuYf+oe5pUivMePFCE1LRUrJ25/nLI9lNt8w6NhhptgvgW49yp
         quvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tUWZtMdDGuxPvN+x4VBw5vgJV6ZCUzWKgJpBqkvmjR4=;
        b=auQPU7zVz9ZXuk6F+5PJHTZ8dYXMEcJ5TkYUYRwN5NbHYqEYDXyptceZkI10fIW9jh
         +MRwFCAiHVy5FBjOISwy2wKd+xURaDlqKgAFEgQg8NvrKMfYj1BDyw6X9qmU0dM7wBkA
         iqxGKaboK5UGfRq6q3YbEpLWvE1XycPdnYNXMOXLdEarIMEbMh+URmYUT3nH/RZ1dTRQ
         c9umtlfdS9PIc1Igzd6JzTfwnaDNMObM4v6m7XSdwiqXr9X7RBLSDrsZHL3Qsdpg2XTc
         5Tk+w18nnG8DE2t+dCp7fexzmVJJ+EWecXb2vCgHXdFCohIRlpD3naBm+aXi6YgRtw+U
         ipsg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530qPWqllho3PJKiHvmyEyd5K6IgNoV8Gi/bu/LoVThMHmPEB9da
	hfialQ40lWvIOBHKp7/FPfc=
X-Google-Smtp-Source: ABdhPJwYQWaxYocgdgYtpshYPWB4bWASrzx2y5tZZYQ5l1vdAJh7eZxt8VPcFZmn+56kWfcjqQCJhA==
X-Received: by 2002:ad4:420a:: with SMTP id k10mr3114016qvp.50.1618490228699;
        Thu, 15 Apr 2021 05:37:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:c207:: with SMTP id i7ls3013947qkm.9.gmail; Thu, 15 Apr
 2021 05:37:08 -0700 (PDT)
X-Received: by 2002:a05:620a:1259:: with SMTP id a25mr3026986qkl.497.1618490228210;
        Thu, 15 Apr 2021 05:37:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618490228; cv=none;
        d=google.com; s=arc-20160816;
        b=GNWtiqjMUdqcobnRIGguzEOVn+eJSzvx05v9eBarZ/wW1wDGLJ6zl2LQdgcw5acwuh
         zbiWDxKPNCO+/h0QIgbo05xzb4BTNItEiAR0ljo5Sdwg0RCmiRw4mqcW1H8SmOHMrtMM
         Z735mz/jcgPU1QknvPJuIIYbpOTGIysud0q3UzKjBeMAVpwcjMSmnojrxgBUkEedBd91
         YGkaWlbschsOxIkY9+6GUPIAjWYV0PqvsKmhZ/psYFrEJk46COvJjz//uV97k+endFIC
         XPBRQUxcRJZYQTI+JpX7KsdNbekwrQa1URNrikPu7YbqX2B0gKPP3wmJVpVKjiGrqFGs
         SoDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=HMPYMkryMb2kTZkA18o3q6gtYsEChN9GPADDwYneUJ0=;
        b=YKa5wK9K8IXdmLmPzF0zUD/mFBabuE+W52a6P8oXBmOuUUf7LBBSnfIR4brHv8Ther
         h6OInMTusNuXSpxyR0o2y9bi34W18jlhDVdKuh/Owz14vOoeLIvtWofOY2VnWUjt4G9e
         0C3rz17NTXxrtl0j0L3UIRs2oJvxUzASh9cGzd6F1uJsvvLdB32xS80CN8fa2RJqNUY+
         bO7sX5wokgiP7ibfkCiD3EmoLISjAvc12O+5hrjDUUiA9gQFgGpmR16GysZADeSVMrdQ
         Hb/pqZjZ79z8k5X9drkDcmNbIIBBzDv19o4rmSZPv6UzPejRMKjn2VJoTowA8I5DHwzs
         nyvw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=WmrFK5cw;
       spf=pass (google.com: domain of schnelle@linux.ibm.com designates 148.163.158.5 as permitted sender) smtp.mailfrom=schnelle@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
Received: from mx0a-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com. [148.163.158.5])
        by gmr-mx.google.com with ESMTPS id w1si139378qkp.4.2021.04.15.05.37.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Apr 2021 05:37:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of schnelle@linux.ibm.com designates 148.163.158.5 as permitted sender) client-ip=148.163.158.5;
Received: from pps.filterd (m0098420.ppops.net [127.0.0.1])
	by mx0b-001b2d01.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 13FCXsVF099429;
	Thu, 15 Apr 2021 08:37:06 -0400
Received: from pps.reinject (localhost [127.0.0.1])
	by mx0b-001b2d01.pphosted.com with ESMTP id 37x46xsk10-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 15 Apr 2021 08:37:05 -0400
Received: from m0098420.ppops.net (m0098420.ppops.net [127.0.0.1])
	by pps.reinject (8.16.0.43/8.16.0.43) with SMTP id 13FCZ0hB107550;
	Thu, 15 Apr 2021 08:37:05 -0400
Received: from ppma04fra.de.ibm.com (6a.4a.5195.ip4.static.sl-reverse.com [149.81.74.106])
	by mx0b-001b2d01.pphosted.com with ESMTP id 37x46xsk04-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 15 Apr 2021 08:37:05 -0400
Received: from pps.filterd (ppma04fra.de.ibm.com [127.0.0.1])
	by ppma04fra.de.ibm.com (8.16.0.43/8.16.0.43) with SMTP id 13FCYpUa030008;
	Thu, 15 Apr 2021 12:37:03 GMT
Received: from b06avi18626390.portsmouth.uk.ibm.com (b06avi18626390.portsmouth.uk.ibm.com [9.149.26.192])
	by ppma04fra.de.ibm.com with ESMTP id 37u3n8a2wn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 15 Apr 2021 12:37:03 +0000
Received: from b06wcsmtp001.portsmouth.uk.ibm.com (b06wcsmtp001.portsmouth.uk.ibm.com [9.149.105.160])
	by b06avi18626390.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 13FCacgT34472320
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 15 Apr 2021 12:36:38 GMT
Received: from b06wcsmtp001.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 0F55EA405F;
	Thu, 15 Apr 2021 12:37:01 +0000 (GMT)
Received: from b06wcsmtp001.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id B22B2A4062;
	Thu, 15 Apr 2021 12:37:00 +0000 (GMT)
Received: from tuxmaker.boeblingen.de.ibm.com (unknown [9.152.85.9])
	by b06wcsmtp001.portsmouth.uk.ibm.com (Postfix) with ESMTP;
	Thu, 15 Apr 2021 12:37:00 +0000 (GMT)
From: Niklas Schnelle <schnelle@linux.ibm.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: Nathan Chancellor <nathan@kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        clang-built-linux@googlegroups.com, linux-arch@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-s390@vger.kernel.org
Subject: [PATCH v2 1/2] sparc: explicitly set PCI_IOBASE to 0
Date: Thu, 15 Apr 2021 14:36:59 +0200
Message-Id: <20210415123700.3030728-2-schnelle@linux.ibm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210415123700.3030728-1-schnelle@linux.ibm.com>
References: <20210415123700.3030728-1-schnelle@linux.ibm.com>
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: UH8Oq1wFhxxs2JuaBJUiGztD2skqcCnW
X-Proofpoint-ORIG-GUID: 4WEs6BoKg6j-ubOXxz_x3y0rpGy1Wz8x
X-Proofpoint-UnRewURL: 0 URL was un-rewritten
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391,18.0.761
 definitions=2021-04-15_04:2021-04-15,2021-04-15 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 malwarescore=0 mlxscore=0 impostorscore=0 adultscore=0 clxscore=1015
 lowpriorityscore=0 bulkscore=0 mlxlogscore=899 suspectscore=0 spamscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2104060000 definitions=main-2104150084
X-Original-Sender: schnelle@linux.ibm.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ibm.com header.s=pp1 header.b=WmrFK5cw;       spf=pass (google.com:
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
 arch/sparc/include/asm/io.h | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/sparc/include/asm/io.h b/arch/sparc/include/asm/io.h
index 2eefa526b38f..100992ba1317 100644
--- a/arch/sparc/include/asm/io.h
+++ b/arch/sparc/include/asm/io.h
@@ -1,6 +1,10 @@
 /* SPDX-License-Identifier: GPL-2.0 */
 #ifndef ___ASM_SPARC_IO_H
 #define ___ASM_SPARC_IO_H
+
+/* On LEON I/O Space is accessed through low iomem */
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210415123700.3030728-2-schnelle%40linux.ibm.com.
