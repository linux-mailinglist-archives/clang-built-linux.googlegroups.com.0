Return-Path: <clang-built-linux+bncBDO4P7WH2UJRBQ4IR2DAMGQEOPCRHJQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x940.google.com (mail-ua1-x940.google.com [IPv6:2607:f8b0:4864:20::940])
	by mail.lfdr.de (Postfix) with ESMTPS id A13993A459F
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Jun 2021 17:41:56 +0200 (CEST)
Received: by mail-ua1-x940.google.com with SMTP id g17-20020ab072d10000b029024b77c1dbb6sf2721320uap.1
        for <lists+clang-built-linux@lfdr.de>; Fri, 11 Jun 2021 08:41:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623426115; cv=pass;
        d=google.com; s=arc-20160816;
        b=NTc4B8WPRYFM3ApFiy1Voqy/J0fvRwHWzOUPCAJN0ob/wiczRr19fdqHud34SbAfC4
         fdZdBviYEJuHRfXXucBnxVDF3YR5aT+72AMN3+g5gO5B69QPT7obQEJIz/ou/eqcRPFj
         +I2U4QDTmBvhzWud3RP1ZHvdZ2XaQH76dJ0t6SZxalzxHG2BHU6mL9uk+5PktFgoZObs
         OuieB1iZ30eEQO/+IkNGyUbgcZpOo28ljcCDO2jjeC0xN1Mrv6EuY8ZA63lLKeRTodAl
         5g1gfEpQ/d5tnRorUDtwY3i4omn0PByxS9P3frdMaT7DAm/3aYFTukU2GmzKSNBrJ/B3
         lZsQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :date:cc:to:from:subject:message-id:sender:dkim-signature;
        bh=PC2TO9jMT/mh5Au/vO+7XFaJAOgeUp54veIsA2rtL+8=;
        b=JKbqKsnCfkZnlzPv+vdtAwLW4bdFvCpuBLBLM86yCr4lK+RVlJv+Fks+WHJShYNjPb
         NBUKse9RNTnzsAAsjp/Uur9bRERHT4XGfokhtfGDmFbmOFDfPxKBdXfbniWvMyhBCwdW
         jEsuaNgJTDckTOe7eii4yoEZ0K8lc9kTQrJwuszvBZqmlTt8z86UsQCKSXMbMkgqcQnL
         B2nprcWZICUDuZOitN1kfbMyoitluMjJElvIwJYDUf0rMq4NMMJGGoPJiFmhAn/JdV1o
         9Vr3wpA77HxUtwsLiF2bnEQN+CGcL2IDE3dOm+TapdI0/sMZORNHgyxEITlCHqNYHziv
         6oqg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=b7fIZQ06;
       spf=pass (google.com: domain of zohar@linux.ibm.com designates 148.163.156.1 as permitted sender) smtp.mailfrom=zohar@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PC2TO9jMT/mh5Au/vO+7XFaJAOgeUp54veIsA2rtL+8=;
        b=BWykpKFSR84K1zH2/2G8NVnqtK2ChHdQJcKU59TVbAWx/gslHRKxC31Zc5/710y0nL
         uchlp9lYjRoU2jK86RoTnF66tVmxjoM0RvlyJpJakaflh7DmI2vQQ9XR4TZvCh3ZIP+S
         BR9H56x4ke06Q48q6kKuEYydZK082Ea2AeJhO4yGnbxpCgrnmeey2CVZ7SaDwXWurTRx
         hCajSYBvkdA0GrEBdtRIX9/ye1D1Q/axl3lsoKodTGvvm7L48ASV2NApIYC/G1QHmepI
         6GOJTsjFhzZ2Hue6OB3cHizg9dsut+6VRlCXOeyeC7s6s5gVr0/Be03xhd0Rp+YJp0Cw
         afBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PC2TO9jMT/mh5Au/vO+7XFaJAOgeUp54veIsA2rtL+8=;
        b=OekgnpAdEKzhfzv0Sj8lwVa5E7BOnYAsvCkeYveiYfTiqavMCt641LexcSH+GUrgUD
         8hRylJoX9ZlkzHJ2cJLlLnnaV82jV0UD0hTWto/9f1yrrLFRfcBNEOM3RMQi06fbZ5fg
         ZXCZGr+5TfsrfmXw53NdHJ8YM4W5r3P4EN/2oQLS4QIdDWwdVsRvyljtZIyGiNJt52MH
         +8ndJFjTRlIF1tkOe3C9eYXtcTXOvMW/EbtxFtvywIlgfkueTSHH4jdispY8KdUkfWzn
         GYpAuNXg0BtfOeuzw8i2h1T40yuy8fUev+0EAuXQicPGE2RTiU2MWQ3EVoC2LTA2cMcG
         5k7w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532qWcYdPUEx2c8OsdQI4i7MeScGODB2mblHRuSyLFm2nXNsWIVP
	yPSxwMq+k1n2QTeK/+Y7wdM=
X-Google-Smtp-Source: ABdhPJzSRpHWoGXc/o40hlLjRkVfEUqwTzqAsUdY5CrCQ4TDgUgLy2XdNOHWIf/A8m15RrHOUNvEKw==
X-Received: by 2002:ab0:6848:: with SMTP id a8mr4101532uas.110.1623426115492;
        Fri, 11 Jun 2021 08:41:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:e017:: with SMTP id c23ls2494922vsl.7.gmail; Fri, 11 Jun
 2021 08:41:55 -0700 (PDT)
X-Received: by 2002:a67:cb09:: with SMTP id b9mr10688960vsl.25.1623426114942;
        Fri, 11 Jun 2021 08:41:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623426114; cv=none;
        d=google.com; s=arc-20160816;
        b=v8jW86xZWPS63VSfBeQWNhrDcpyjFQRIMx1rjQcdw2wLRix6XCju5TwjcXfLd5EdBX
         5Xed3zqZR+yCHZQ62F6BTJYW68lHg4+FN0OevStMP7IUsObbKCfOTAwJposjew6EU6SL
         E3afIxU3eFB2QBbjdqtmcJVnlRDRqLvws8e+M7JZwsGFoAe+BiwhjIILFMdJX82o4CKB
         IguaPAMYIAEELqkfO/w4xUy20BojhYN15gr1uU3t8SZJmZdnQg+PYmIw8hZK5brQoNf1
         0ksQV88HtQK88OGe5B4+rO+ugRxOxf1/zdq46/zPzlUHqhoRykbB5iTwsrXMPhpCuMB3
         hjXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:references:in-reply-to:date
         :cc:to:from:subject:message-id:dkim-signature;
        bh=sIHlhEnNqZ4ONfMuHAGdc+iPb+qm+WDjDLJwBrclDdE=;
        b=0WmJMLYEfYrUEZE8GenOpLeaUswfrL57vSz7dC9g6x+go60zsTLDGARkmuZ6gE5seO
         q2rW7CiNdytYnzvT73AoB/vrJkux/ZPUMaZeqvEBLJLinVVrwbJhd7+lPMN6t1V7Af03
         6fO7rvAPPLUwvEbPryOU8r6GFH3fH5O4GwGCFoR89nyddVja9bH+7mgblmAsMtM/FZD+
         U9abp7ybbhYANEi1iNiDN4Y0U44Xk2lxKL3B3Qmzu0/OOjtFSDoPssU5Yee1J1swd65Q
         SrDhaZu1cV8UTwDWDzZdDWyhs8HyGFqm36A86KP2UJb1kwL36QwHWEJOXnPOgc2LgSjk
         Xx8Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=b7fIZQ06;
       spf=pass (google.com: domain of zohar@linux.ibm.com designates 148.163.156.1 as permitted sender) smtp.mailfrom=zohar@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com. [148.163.156.1])
        by gmr-mx.google.com with ESMTPS id 8si630932vko.4.2021.06.11.08.41.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Jun 2021 08:41:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of zohar@linux.ibm.com designates 148.163.156.1 as permitted sender) client-ip=148.163.156.1;
Received: from pps.filterd (m0187473.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 15BFXo09101096;
	Fri, 11 Jun 2021 11:41:54 -0400
Received: from ppma03fra.de.ibm.com (6b.4a.5195.ip4.static.sl-reverse.com [149.81.74.107])
	by mx0a-001b2d01.pphosted.com with ESMTP id 394aahrsuh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 11 Jun 2021 11:41:53 -0400
Received: from pps.filterd (ppma03fra.de.ibm.com [127.0.0.1])
	by ppma03fra.de.ibm.com (8.16.1.2/8.16.1.2) with SMTP id 15BFfoKN017488;
	Fri, 11 Jun 2021 15:41:50 GMT
Received: from b06cxnps4076.portsmouth.uk.ibm.com (d06relay13.portsmouth.uk.ibm.com [9.149.109.198])
	by ppma03fra.de.ibm.com with ESMTP id 3900w8syhq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 11 Jun 2021 15:41:50 +0000
Received: from d06av25.portsmouth.uk.ibm.com (d06av25.portsmouth.uk.ibm.com [9.149.105.61])
	by b06cxnps4076.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 15BFfmG419792216
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 11 Jun 2021 15:41:48 GMT
Received: from d06av25.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 6278311C04C;
	Fri, 11 Jun 2021 15:41:48 +0000 (GMT)
Received: from d06av25.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 9E44211C04A;
	Fri, 11 Jun 2021 15:41:46 +0000 (GMT)
Received: from sig-9-65-207-168.ibm.com (unknown [9.65.207.168])
	by d06av25.portsmouth.uk.ibm.com (Postfix) with ESMTP;
	Fri, 11 Jun 2021 15:41:46 +0000 (GMT)
Message-ID: <0dc1d1305333a38f87029c3444fdb12c966c0906.camel@linux.ibm.com>
Subject: Re: [PATCH 1/2] ima: Fix warning: no previous prototype for
 function 'ima_add_kexec_buffer'
From: Mimi Zohar <zohar@linux.ibm.com>
To: Lakshmi Ramasubramanian <nramas@linux.microsoft.com>, robh@kernel.org,
        bauerman@linux.ibm.com
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
        linux-integrity@vger.kernel.org, linux-kernel@vger.kernel.org,
        tusharsu@linux.microsoft.com
Date: Fri, 11 Jun 2021 11:41:45 -0400
In-Reply-To: <20210610171553.3806-1-nramas@linux.microsoft.com>
References: <20210610171553.3806-1-nramas@linux.microsoft.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.28.5 (3.28.5-14.el8)
X-TM-AS-GCONF: 00
X-Proofpoint-ORIG-GUID: nIZyly8vkyCkeqHMNY48iVKRMbHB_39K
X-Proofpoint-GUID: nIZyly8vkyCkeqHMNY48iVKRMbHB_39K
X-Proofpoint-UnRewURL: 0 URL was un-rewritten
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391,18.0.761
 definitions=2021-06-11_05:2021-06-11,2021-06-11 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=812 adultscore=0
 malwarescore=0 suspectscore=0 mlxscore=0 phishscore=0 priorityscore=1501
 spamscore=0 bulkscore=0 lowpriorityscore=0 impostorscore=0 clxscore=1015
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2104190000
 definitions=main-2106110097
X-Original-Sender: zohar@linux.ibm.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ibm.com header.s=pp1 header.b=b7fIZQ06;       spf=pass (google.com:
 domain of zohar@linux.ibm.com designates 148.163.156.1 as permitted sender)
 smtp.mailfrom=zohar@linux.ibm.com;       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
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

On Thu, 2021-06-10 at 10:15 -0700, Lakshmi Ramasubramanian wrote:
> The function prototype for ima_add_kexec_buffer() is present
> in 'linux/ima.h'.  But this header file is not included in
> ima_kexec.c where the function is implemented.  This results
> in the following compiler warning when "-Wmissing-prototypes" flag
> is turned on:
> 
>   security/integrity/ima/ima_kexec.c:81:6: warning: no previous prototype
>   for function 'ima_add_kexec_buffer' [-Wmissing-prototypes]
> 
> Include the header file 'linux/ima.h' in ima_kexec.c to fix
> the compiler warning.
> 
> Fixes: dce92f6b11c3 (arm64: Enable passing IMA log to next kernel on kexec)
> Reported-by: kernel test robot <lkp@intel.com>
> Signed-off-by: Lakshmi Ramasubramanian <nramas@linux.microsoft.com>

Thanks!

Applied to: git://git.kernel.org/pub/scm/linux/kernel/git/zohar/linux-
integrity.git next-integrity-testing and next-integrity branches.

Mimi

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/0dc1d1305333a38f87029c3444fdb12c966c0906.camel%40linux.ibm.com.
