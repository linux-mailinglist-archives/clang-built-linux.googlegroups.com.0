Return-Path: <clang-built-linux+bncBCYL7PHBVABBBBGFVWDAMGQEXYJ62CY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33e.google.com (mail-ot1-x33e.google.com [IPv6:2607:f8b0:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id 073BE3AB695
	for <lists+clang-built-linux@lfdr.de>; Thu, 17 Jun 2021 16:56:06 +0200 (CEST)
Received: by mail-ot1-x33e.google.com with SMTP id t2-20020a05683014c2b029044c40eb2b58sf556176otq.21
        for <lists+clang-built-linux@lfdr.de>; Thu, 17 Jun 2021 07:56:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623941764; cv=pass;
        d=google.com; s=arc-20160816;
        b=GbnIqp4rGTyflxpub0UyFlFr6z+94tdiIF0hsbY1f7TiI731m7fiQVxVZA566kgwkY
         V5ZhKlGq0b+yxjbZ3YHo0v+xkNecVb9wSUaVyeX6JCsx3ew57s9U4FT2IsUhs6JtHs9W
         j3VCUjH+82rTXu3MBF2Guvvup8oBVqf6nAzXFZLO9wPbJyn4OK5bZunYubr842ybc6jh
         n+XhbhzZwrJ7aqwDGF80cK31Cm1fxlUuwNvBD6DeW5NZiAiS67/9tMsfZnv/v8l6nKeh
         AMm9zN1cvudaOqyZNR+/740C2EnxZgwjb/A8f4G7PDBtmHFNjHiBUtECH+WQNrZYWNKH
         C1TQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=HcEs12Za/BTstQV+QjggTNNonL/K1VWDVMIc2lY9BRc=;
        b=CwfK2900/oWpUmoI7EhdjxqTVzh/1YcITBMBsbsvlx9Rd/E1N96xpQhD3DesvW1jUL
         YYtiyCIhDN4wJEr5iBKgrq46OlVSOtVte3xtG6DRMsl1Im55GMNCIYVhKqIbH1YdtyrU
         N0d2vttDN6jdHumglLfCJ96CJ9qUoknqn/ZviIlwg9rEgE7MhxJQjuwqil0Qqlh1KtJ5
         F6XhcM4FuT6foqoA0RNk/0GpQIFWZQTUZ8yxO4qO6MI9d5/Z6NUTFKFPk2+g+md2TxBc
         v2vDniy37q0C8Wq+gMoM1U4iiNFTECbFwHAf99zGqLEJ42Z/E511JP0K4vP8XI4GMiKS
         6u+w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=QL5yStQe;
       spf=pass (google.com: domain of hca@linux.ibm.com designates 148.163.156.1 as permitted sender) smtp.mailfrom=hca@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=HcEs12Za/BTstQV+QjggTNNonL/K1VWDVMIc2lY9BRc=;
        b=fvYxxzTX3h03OE7tnTT4Vg3xXGGAIzXWpU1B7hEdaeSFcq2A8aKTGB2gaDQKqVPLdr
         jAzXoWy+isWHrKjpwVSBMqA7EO1oTyQCGJdXytMpuhbk1LIQlbbeluy8ZXUJ0/HdlWVe
         fOuyPyj5WKlMyguOPoi7hqA79bA0wbrARboylVHNSufITWpm29OZf9t9FeUEWGEc6TT8
         efOCwnSztMj+S00d73PQPKKZ9m80/gSkNwY8jNW3WQ7zUOYHdC0oya2JVs85zZLJl1WI
         4CfQ23cYJnOojT79x9ODbwtfcMvMNDT71qG01vXOlCs/qHvgaS/ok+uD+7af+jAs3eDV
         +jFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=HcEs12Za/BTstQV+QjggTNNonL/K1VWDVMIc2lY9BRc=;
        b=GBQwF6tsHG1oqH+T+sCMRJFHdl8KmV9cEI/wDLoOcruQUtFAir7iG6fTaHWAG3gT+J
         Gw1Lbh5dVInfDj+aJGMB06130uBmQQxxsEwCsM3sQrPDf/YKZjsedDItgZF2Zm/gc7oZ
         YEfzhbgjboG6478FiDuqtKuKoKOSr57Nw8bVM2eBU9e4OZC5A/ZQlrKuHbDW+6+BO3C5
         0p6ufr0ZLFfn/QA6I+NkkDR/Ebb44BuEMLxhAxN5VI+0U5hPQoZtVgVverwCmku8vaIp
         QtrrnVCmV6Xau/ujOzlU4LuW3b6lhub4gOD30yc6VqKFlTjbkzU8xEjvzdqTwRyILlIY
         Mdcg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531lYzWaeVd6VGMWmcebPpC3s1Nmv/r33r1BK5jWc5TkA6kIbEp+
	UuH42aVheuRU8yiukroi+XY=
X-Google-Smtp-Source: ABdhPJwohb/xpXPpk/byWDnYAjXPGJz9Qhp3+mGFzxInS6+z7xd5CYZQTSZ4K0FETzR5NK1c2/L/QA==
X-Received: by 2002:aca:b343:: with SMTP id c64mr3642934oif.137.1623941764561;
        Thu, 17 Jun 2021 07:56:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:c290:: with SMTP id b16ls750442ooq.10.gmail; Thu, 17 Jun
 2021 07:56:04 -0700 (PDT)
X-Received: by 2002:a4a:d1de:: with SMTP id a30mr1356087oos.41.1623941764186;
        Thu, 17 Jun 2021 07:56:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623941764; cv=none;
        d=google.com; s=arc-20160816;
        b=hVwv3IAr8OZJxN4+QMgZuAaHRFqQ6XnHadEW/nDfwsnCE2lxTFpT3lwL6sWzIe8s1H
         S/dms1NsJ3dyACg6bZeoozCe5sC9+S/cfPmB8juJmu5GlKUgXGCBMg+LzJOVHceJsnqE
         XwXad4/WfW9m/0IuQRFqAnZrdRgC8JVhMUmcN58SmTTgCZNz2Kt2O1RRYhVND3yq9gja
         MxW2BZlHkulEK8YnHyCDMHwTfFwn/YyeBWdz6kA1mQC7jflzfWdTmqJ9BVWCx9HwgBU+
         B84EDJEWjxdDG9RawwIuhCdykiXYowhGgKTEjBm0IxxV6FPkS4Z/VzJIsLQn+y876T15
         /YuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=ZDrMf1r8Kl8gPUV4ySfa2nQ/MPIpUbeuBPOOaQuDwI4=;
        b=ei2suc9sEIedgTCVKAzbYVVLANt1w+vNLYmyCcTDE+RSwUm/bDgnZl/YYs5HEVF0sW
         qgJvua2CyYJRdgskmREdrf0diVtTibPR3G/Ddu/rdUsF+02hfywpwV71IF6S/LgT/sXj
         CNVcW9tvn/PfjEfrXzuyPbjO+bltENu0sI4ei+T8Io4YPmci63M4aTQUTy8VqOuKdNRc
         g9Nru6lU01v3jqresuThievidW9hniI7iRT4weUX1Rqso0R3oCWp76gL1QxUCZGltl3q
         Z9vxyil0fedB9GdqmphowAuJV6Ip6Xe5Vgle/h2SVZWWY4xF5LYytwHBG2gvIED4FKx6
         Hasw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=QL5yStQe;
       spf=pass (google.com: domain of hca@linux.ibm.com designates 148.163.156.1 as permitted sender) smtp.mailfrom=hca@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com. [148.163.156.1])
        by gmr-mx.google.com with ESMTPS id c22si422301oiy.1.2021.06.17.07.56.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 17 Jun 2021 07:56:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of hca@linux.ibm.com designates 148.163.156.1 as permitted sender) client-ip=148.163.156.1;
Received: from pps.filterd (m0098404.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 15HEXsAu120967;
	Thu, 17 Jun 2021 10:55:51 -0400
Received: from pps.reinject (localhost [127.0.0.1])
	by mx0a-001b2d01.pphosted.com with ESMTP id 39886p0xen-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 17 Jun 2021 10:55:51 -0400
Received: from m0098404.ppops.net (m0098404.ppops.net [127.0.0.1])
	by pps.reinject (8.16.0.43/8.16.0.43) with SMTP id 15HEYNQT125265;
	Thu, 17 Jun 2021 10:55:50 -0400
Received: from ppma03ams.nl.ibm.com (62.31.33a9.ip4.static.sl-reverse.com [169.51.49.98])
	by mx0a-001b2d01.pphosted.com with ESMTP id 39886p0xdp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 17 Jun 2021 10:55:50 -0400
Received: from pps.filterd (ppma03ams.nl.ibm.com [127.0.0.1])
	by ppma03ams.nl.ibm.com (8.16.1.2/8.16.1.2) with SMTP id 15HEqWBu029030;
	Thu, 17 Jun 2021 14:55:48 GMT
Received: from b06avi18626390.portsmouth.uk.ibm.com (b06avi18626390.portsmouth.uk.ibm.com [9.149.26.192])
	by ppma03ams.nl.ibm.com with ESMTP id 394mj8tse9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 17 Jun 2021 14:55:48 +0000
Received: from d06av22.portsmouth.uk.ibm.com (d06av22.portsmouth.uk.ibm.com [9.149.105.58])
	by b06avi18626390.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 15HEsdIf17695074
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 17 Jun 2021 14:54:39 GMT
Received: from d06av22.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 7439A4C044;
	Thu, 17 Jun 2021 14:55:45 +0000 (GMT)
Received: from d06av22.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 04E684C052;
	Thu, 17 Jun 2021 14:55:45 +0000 (GMT)
Received: from osiris (unknown [9.145.177.22])
	by d06av22.portsmouth.uk.ibm.com (Postfix) with ESMTPS;
	Thu, 17 Jun 2021 14:55:44 +0000 (GMT)
Date: Thu, 17 Jun 2021 16:55:43 +0200
From: Heiko Carstens <hca@linux.ibm.com>
To: Naresh Kamboju <naresh.kamboju@linaro.org>
Cc: Linux-Next Mailing List <linux-next@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        lkft-triage@lists.linaro.org, open list <linux-kernel@vger.kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Nathan Chancellor <natechancellor@gmail.com>,
        Arnd Bergmann <arnd@arndb.de>, Stephen Rothwell <sfr@canb.auug.org.au>,
        Vasily Gorbik <gor@linux.ibm.com>
Subject: Re: [next] [clang] s390: clang: error: unable to execute command:
 Segmentation fault (core dumped)
Message-ID: <YMtib5hKVyNknZt3@osiris>
References: <CA+G9fYsn-3rZXkHTtH33Oo0y97nfgkQmR_Echbu_-=WAbfo4Ug@mail.gmail.com>
 <CA+G9fYu2SvwA7CDxTAJVdTi1K1267WDcdx9m6Ds6z0D3borthQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CA+G9fYu2SvwA7CDxTAJVdTi1K1267WDcdx9m6Ds6z0D3borthQ@mail.gmail.com>
X-TM-AS-GCONF: 00
X-Proofpoint-ORIG-GUID: WBdfFuvlbg97OnFmhWMVfxvlf1l2TOe7
X-Proofpoint-GUID: xsoFTxNvHHuKnwov2YPuHH_-U_2djiiw
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391,18.0.790
 definitions=2021-06-17_10:2021-06-15,2021-06-17 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 clxscore=1011
 impostorscore=0 mlxscore=0 suspectscore=0 priorityscore=1501 phishscore=0
 lowpriorityscore=0 spamscore=0 adultscore=0 mlxlogscore=999 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2104190000
 definitions=main-2106170092
X-Original-Sender: hca@linux.ibm.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ibm.com header.s=pp1 header.b=QL5yStQe;       spf=pass (google.com:
 domain of hca@linux.ibm.com designates 148.163.156.1 as permitted sender)
 smtp.mailfrom=hca@linux.ibm.com;       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
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

On Thu, Jun 17, 2021 at 06:19:14PM +0530, Naresh Kamboju wrote:
> The git bisect found the first bad commit,
> The first bad commit:
> commit 3abbdfde5a6588a92209cd8b131769b8058e7c21
> Author: Heiko Carstens <hca@linux.ibm.com>
> Date:   Wed Jun 9 22:59:13 2021 +0200
>     s390/bitops: use register pair instead of register asm
> 
>     Get rid of register asm statement and use a register pair.
>     This allows the compiler to allocate registers on its own.
> 
>     Signed-off-by: Heiko Carstens <hca@linux.ibm.com>
>     Signed-off-by: Vasily Gorbik <gor@linux.ibm.com>
>  arch/s390/include/asm/bitops.h | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
> Previous HEAD position was 3abbdfde5a65 s390/bitops: use register pair
> instead of register asm
> HEAD is now at 7d9c6b8147bd Add linux-next specific files for 20210617

You need clang-13 development version which contains commit
d058262b1471 ("[SystemZ] Support i128 inline asm operands.").
Every older clang version won't be able to complile the kernel for
s390 anymore.

This is intended and won't be fixed.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YMtib5hKVyNknZt3%40osiris.
