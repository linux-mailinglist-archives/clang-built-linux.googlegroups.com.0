Return-Path: <clang-built-linux+bncBCCI53UIZQKBBCGSWCDAMGQE4EC5REY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x340.google.com (mail-ot1-x340.google.com [IPv6:2607:f8b0:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D65D3AC2B9
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Jun 2021 07:03:05 +0200 (CEST)
Received: by mail-ot1-x340.google.com with SMTP id l13-20020a9d734d0000b02903db3d2b53fasf5230759otk.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 17 Jun 2021 22:03:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623992584; cv=pass;
        d=google.com; s=arc-20160816;
        b=FsCSZ52ow3bgQZJDeli2xTFKRZGwzdKgH98IkamwZEnrs/BlgWWmqRiOGCLNq0+kQr
         HZ1jE3jh2/2IYAq6Vi4aU5AOSgmZSZzffmFxEkQfuPggBYYAKsvj1Q1LDX4ZwndYxutj
         IvjDbjM3z5qVJ/SE1KZLyot29ES2HXh1bpOCxhs3NqYQqu7Q3mAfbIDfsiAp5LNDBat9
         HTT183oJQURSldSjT/VX+Cv6+2SwM2iDSW1ZnnYDm0tbUJsYUGrnxLFscRbdvma7pgFh
         n5gwiqIgFWHYvnue4BCwdpOSZm2dCMrgAVQdYn0upIgf2jBs1V350+vyOZrU2cLUNBdx
         zpcQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=25qe2cDw15M/+ahGnN9h7vN5Dmwm2n+CPx8WPqJ4ung=;
        b=qQaRvjoZYRR75JIzxgcG0cjxJeLijH/LDEVV91+LaWqRWBNGYSm8lu0L6xo/FfG08V
         6aois9n1I0CTHnvk+9GvyFqqpTjg4Tj06TWD6bDalu72J3/Cww74JS+0R3OyPbegw0Za
         VbnKnIbgqHDIULQBtjjyQzGMcrTqrEx7dnQ3gAfwWXawAue2hSs/YEUhy07/+ooRogUR
         nhYvwW0/pMCsrAtD659UF/QqhnG960bsBln63QdjowgB90dZo6Ff6wxLTTRktF4VA9Qr
         +BrK+m6kQq2OjZxobCCZbQ73osfWlng1L/YeAY36ZGnLLlFfhmAx3CafsmvB02KhHFx4
         Bo0g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=iLCmwTH6;
       spf=pass (google.com: domain of aneesh.kumar@linux.ibm.com designates 148.163.158.5 as permitted sender) smtp.mailfrom=aneesh.kumar@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=25qe2cDw15M/+ahGnN9h7vN5Dmwm2n+CPx8WPqJ4ung=;
        b=fFQdi5WdDEtuWJA7/C8gxeL9fm8xc2MfcxUA3cRNyfEx39nM8mfNZnmeGOtlDlb6T0
         rf/s6ZQoW3B/NzUAzTj8Z3z7IKqxfm5BWufzrHEKqrVGnmoFcSZqyl5QGqFojqm4qFli
         j29smpKaIfqygSvBdyBd+AckE8s1xYCBou2pxWMB3SivLBdhBmO1geU45gAo+CRlNs1g
         GXWJjTxEd7fdjyOds6oIlI51r7wwqLoJs+UTRaHGTzamY5CE1+KpFWel/AHuOsiv66ey
         oVYmy2RMYCLZnsnuhRF9BM+pAN6/8BpVjVaFyng4MiEX5iFE2y6xBegxXuIW8YSTakau
         YMGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=25qe2cDw15M/+ahGnN9h7vN5Dmwm2n+CPx8WPqJ4ung=;
        b=l8qV0KP1SxkOpSzT1ZSnr1jFv8Z0EAGVXOPBWMhCQQHPTsXLl0jvY4NLj0DxBoNDKS
         +VtyfsI4ifLvFHFZjVIsh3z/mx/YM4j+hrBYpCeih5+Dyrma/kKK6yDwVwmicCef6usZ
         1FsE6VGQsnNY+3AO9yPvqCo2UqGsncd06qM2At3NMDDI7kytIOZekxRFoLhEuRSmnTu9
         VbNt6wNx+QP6svGuq517rDX4ggtGKTF8Y4EKf1ue/BNxKdcDXKhV3THvz0wmHE9t7m0R
         rdU7Ztdc5QGw/APCXfWizCeN+4TM8UcI6B3fLeR7HOSigUVbi9Tscl0I4M29YzAxFq7U
         bJVQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532H8htz3KfX7ryc8LGN9LwYgnQkYkMaGjKtVWh9rroeEd9DSq2F
	FcqJHahl+RHacTlVYzQ2gdU=
X-Google-Smtp-Source: ABdhPJxuYiSlaVJRk7Ke0i9qwD30wjfpmZ/qPfrEO51+VzCymNYQ6nxkFJtEWud2cVS4A+t7u6OIEg==
X-Received: by 2002:a9d:6c6:: with SMTP id 64mr8063601otx.199.1623992584429;
        Thu, 17 Jun 2021 22:03:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:6242:: with SMTP id i2ls3717106otk.2.gmail; Thu, 17 Jun
 2021 22:03:04 -0700 (PDT)
X-Received: by 2002:a05:6830:2649:: with SMTP id f9mr7508951otu.179.1623992584009;
        Thu, 17 Jun 2021 22:03:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623992584; cv=none;
        d=google.com; s=arc-20160816;
        b=ORhd4zqt4v2DcU5BG7oaqXbSebgFjU54WqAaxB/cr51Sy8Z6jk1/1fAKkGkmJzdleu
         xGlRWwMbPcjpxL5DMCYJxWWJQAdhDRxkJh/sjf2g4BKkYRwIBzGPdDRMomGb0G6tMF52
         hyQviUNuBpuQz+6S5qOjqXPiiONPrEuRuWo9WuCNMd6o44/35MqDOUsUtd3kL8ODv0Gv
         oOjieWzAdc0vmovob/hupC9tPdxzOzd+P3srRZbuEHLor0sgcSwEsbI/8wYtmWHKdl67
         iWt/cxA4J59n+yXHIMfL/00J07P4nbwwrWffL3smVBiOUbrIcOYhOeN+puMaxmvFxUj4
         J9ag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=2ydnrkHBg6fnhjgCtI9cMXcSBTbhCcux5VKPTMhEzPM=;
        b=dL7F08+plHPSgJweVaGMdKO9+vcW3s87WP57RjsRLsfJFp4C19msOnWFXu5EuCpLC6
         ex/OvH6+05Yso0q2PGMp2etroZ3yznu4lVWSBOnQf1fYu2dZm7NtQG9UPrGEVZu/V64o
         pRXWMu0TiopkauM7I2y3b7DZizPCFX6oVt4lNAoKdtDYC8dqCQttQ+Gsjstjs/45+Pxy
         IWVMbw0TEpdAlHpPKRhFDpVXBavhqD+TS1IKNePdM6lAYJiFVT9T8TIFd+Y2qcdkTItS
         0CB9gv6cnte+UU3Wv4pXgElq1hOECbCm2OWalD0dHG5n/ZHZzzgCRB11SPrP3oR9D6Fn
         j7Vg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=iLCmwTH6;
       spf=pass (google.com: domain of aneesh.kumar@linux.ibm.com designates 148.163.158.5 as permitted sender) smtp.mailfrom=aneesh.kumar@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
Received: from mx0b-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com. [148.163.158.5])
        by gmr-mx.google.com with ESMTPS id 88si555591otx.3.2021.06.17.22.03.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 17 Jun 2021 22:03:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of aneesh.kumar@linux.ibm.com designates 148.163.158.5 as permitted sender) client-ip=148.163.158.5;
Received: from pps.filterd (m0098417.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 15I4ekJV050542;
	Fri, 18 Jun 2021 01:02:50 -0400
Received: from pps.reinject (localhost [127.0.0.1])
	by mx0a-001b2d01.pphosted.com with ESMTP id 398kdqt7he-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 18 Jun 2021 01:02:50 -0400
Received: from m0098417.ppops.net (m0098417.ppops.net [127.0.0.1])
	by pps.reinject (8.16.0.43/8.16.0.43) with SMTP id 15I4iMLe060784;
	Fri, 18 Jun 2021 01:02:49 -0400
Received: from ppma03ams.nl.ibm.com (62.31.33a9.ip4.static.sl-reverse.com [169.51.49.98])
	by mx0a-001b2d01.pphosted.com with ESMTP id 398kdqt7gt-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 18 Jun 2021 01:02:49 -0400
Received: from pps.filterd (ppma03ams.nl.ibm.com [127.0.0.1])
	by ppma03ams.nl.ibm.com (8.16.1.2/8.16.1.2) with SMTP id 15I4vWvX022039;
	Fri, 18 Jun 2021 05:02:47 GMT
Received: from b06cxnps4074.portsmouth.uk.ibm.com (d06relay11.portsmouth.uk.ibm.com [9.149.109.196])
	by ppma03ams.nl.ibm.com with ESMTP id 394mj8u371-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 18 Jun 2021 05:02:47 +0000
Received: from d06av24.portsmouth.uk.ibm.com (mk.ibm.com [9.149.105.60])
	by b06cxnps4074.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 15I52j1R31195526
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 18 Jun 2021 05:02:45 GMT
Received: from d06av24.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 8CBE74203F;
	Fri, 18 Jun 2021 05:02:45 +0000 (GMT)
Received: from d06av24.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 7E5ED42045;
	Fri, 18 Jun 2021 05:02:43 +0000 (GMT)
Received: from [9.77.205.195] (unknown [9.77.205.195])
	by d06av24.portsmouth.uk.ibm.com (Postfix) with ESMTP;
	Fri, 18 Jun 2021 05:02:43 +0000 (GMT)
Subject: Re: [next] [clang] x86_64-linux-gnu-ld: mm/mremap.o: in function
 `move_pgt_entry': mremap.c:(.text+0x763): undefined reference to
 `__compiletime_assert_342'
To: Nathan Chancellor <nathan@kernel.org>,
        Andrew Morton <akpm@linux-foundation.org>
Cc: Matthew Wilcox <willy@infradead.org>,
        Naresh Kamboju <naresh.kamboju@linaro.org>, linux-next@vger.kernel.org,
        clang-built-linux@googlegroups.com, lkft-triage@lists.linaro.org,
        linux-kernel@vger.kernel.org,
        Nick Desaulniers <ndesaulniers@google.com>,
        Arnd Bergmann <arnd@arndb.de>, Stephen Rothwell <sfr@canb.auug.org.au>
References: <CA+G9fYsWHE5Vu9T3FV-vtHHbVFJWEF=bmjQxwaZs3uVYef028g@mail.gmail.com>
 <CA+G9fYvvf+XTvZg1sTq4_f9OrVFsCazGo0ozaEbjVYgSeKCkWA@mail.gmail.com>
 <YMtTdU2b9fI3dnFD@casper.infradead.org> <YMuOSnJsL9qkxweY@archlinux-ax161>
From: "Aneesh Kumar K.V" <aneesh.kumar@linux.ibm.com>
Message-ID: <6f3c5317-2877-9a57-0126-e9305f000269@linux.ibm.com>
Date: Fri, 18 Jun 2021 10:32:42 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <YMuOSnJsL9qkxweY@archlinux-ax161>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-TM-AS-GCONF: 00
X-Proofpoint-ORIG-GUID: KhHjSAm-d0ZelsT_a4H8fgIMkznLNc1z
X-Proofpoint-GUID: 6tc93sbjgoVTXTqU4G_PjrCr1DOBa4zE
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391,18.0.790
 definitions=2021-06-17_17:2021-06-15,2021-06-17 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 malwarescore=0 lowpriorityscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 clxscore=1011 adultscore=0 phishscore=0 impostorscore=0 bulkscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2104190000 definitions=main-2106180024
X-Original-Sender: aneesh.kumar@linux.ibm.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ibm.com header.s=pp1 header.b=iLCmwTH6;       spf=pass (google.com:
 domain of aneesh.kumar@linux.ibm.com designates 148.163.158.5 as permitted
 sender) smtp.mailfrom=aneesh.kumar@linux.ibm.com;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=ibm.com
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

On 6/17/21 11:32 PM, Nathan Chancellor wrote:
> Rebuilt the CC list because most people were added based on the
> incorrect bisect result.
> 
> On Thu, Jun 17, 2021 at 02:51:49PM +0100, Matthew Wilcox wrote:
>> On Thu, Jun 17, 2021 at 06:15:45PM +0530, Naresh Kamboju wrote:
>>> On Thu, 17 Jun 2021 at 17:41, Naresh Kamboju <naresh.kamboju@linaro.org> wrote:
>>>> x86_64-linux-gnu-ld: mm/mremap.o: in function `move_pgt_entry':
>>>> mremap.c:(.text+0x763): undefined reference to `__compiletime_assert_342'
>>>
>>> The git bisect pointed out the first bad commit.
>>>
>>> The first bad commit:
>>> commit 928cf6adc7d60c96eca760c05c1000cda061604e
>>> Author: Stephen Boyd <swboyd@chromium.org>
>>> Date:   Thu Jun 17 15:21:35 2021 +1000
>>>      module: add printk formats to add module build ID to stacktraces
>>
>> Your git bisect probably went astray.  There's no way that commit
>> caused that regression.
> 
> My bisect landed on commit 83f85ac75855 ("mm/mremap: convert huge PUD
> move to separate helper"). flush_pud_tlb_range() evaluates to
> BUILD_BUG() when CONFIG_TRANSPARENT_HUGEPAGE is unset but this function
> is present just based on the value of
> CONFIG_HAVE_ARCH_TRANSPARENT_HUGEPAGE_PUD.
> 
> $ make -skj(nproc) ARCH=x86_64 CC=clang O=build/x86_64 distclean allnoconfig mm/mremap.o
> 
> $ llvm-readelf -s build/x86_64/mm/mremap.o &| rg __compiletime_assert
>      21: 0000000000000000     0 NOTYPE  GLOBAL DEFAULT   UND __compiletime_assert_337
> 
> $ rg TRANSPARENT_ build/x86_64/.config
> 450:CONFIG_HAVE_ARCH_TRANSPARENT_HUGEPAGE=y
> 451:CONFIG_HAVE_ARCH_TRANSPARENT_HUGEPAGE_PUD=y
> 562:# CONFIG_TRANSPARENT_HUGEPAGE is not set
> 
> Not sure why this does not happen on newer clang versions, presumably
> something with inlining decisions? Still seems like a legitimate issue
> to me.
> 

gcc 10 also doesn't give a build error. I guess that is because we evaluate

      if (pud_trans_huge(*old_pud) || pud_devmap(*old_pud)) {

  to if (0) with CONFIG_TRANSPARENT_HUGEPAGE disabled.

switching that to if (1) do results in BUILD_BUG triggering.

Should we fix this ?

modified   mm/mremap.c
@@ -336,7 +336,7 @@ static inline bool move_normal_pud(struct 
vm_area_struct *vma,
  }
  #endif

-#ifdef CONFIG_HAVE_ARCH_TRANSPARENT_HUGEPAGE_PUD
+#if defined(CONFIG_HAVE_ARCH_TRANSPARENT_HUGEPAGE_PUD) && 
defined(CONFIG_TRANSPARENT_HUGEPAGE)
  static bool move_huge_pud(struct vm_area_struct *vma, unsigned long 
old_addr,
  			  unsigned long new_addr, pud_t *old_pud, pud_t *new_pud)
  {

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/6f3c5317-2877-9a57-0126-e9305f000269%40linux.ibm.com.
