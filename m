Return-Path: <clang-built-linux+bncBCHJVF74S4BRBNXOXH6AKGQEJRNCC6Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x338.google.com (mail-ot1-x338.google.com [IPv6:2607:f8b0:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id 0857D293450
	for <lists+clang-built-linux@lfdr.de>; Tue, 20 Oct 2020 07:35:52 +0200 (CEST)
Received: by mail-ot1-x338.google.com with SMTP id m24sf640216otk.23
        for <lists+clang-built-linux@lfdr.de>; Mon, 19 Oct 2020 22:35:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603172151; cv=pass;
        d=google.com; s=arc-20160816;
        b=KjuNNIYc5LYnE8f6/uNNwfy0bDBfFxv/4huzA1Uk+him3WQT0naCCAzVtslrFlvtcH
         tF4ZoQ9iqokkFDT4knI8ICl8sDK/41wEiXdQ4gXbWAjLxzRbq5QjtTwpkEQZnCfnRlhR
         qMAMp6L9i+nb89ogvRLWz8T5MjhIlRmJ4y99pN7hAeRfOViAE4d5WWPs6CqPfWyHlEsJ
         tDcBjSfQUHV5sfBEfyCdFJ3DBoVlkXloM9r3V9Sg6GMIvlXHCjkAEBfUlgx9LwK/ff5t
         mSNtm9lnKnWGi4+fQq0taH37aHvtIjAh/0irta7RlW7FS4S5MWvdVK5xb+bMSJNh87F4
         OPyw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-language
         :in-reply-to:user-agent:date:message-id:autocrypt:from:references:cc
         :to:subject:sender:dkim-signature;
        bh=9bN+V7tabgGX3c20DsZkNR76B2nCQttZYvSpWciW8FE=;
        b=ohZk4fqdJqvcDMhIprHvPq9LtqQs0APTRCjYO+cn9OyhlXjGRz+5p47Kr1idUJFqsD
         1lQEz+QVvEgecWUhadG2bBrh8grFSW2LLVe+YC3o9VEiZdoeHKSEjcF4scsSXT/yRFEs
         5lqUgvQL+peG8HRMhfgCr/DG/XVDCrma3rTyXEXomPHbgQq9OVkwSqIDWwz1o09j1TXv
         0h3duXhmtCRqAiPopxwRd31Kw2ZE97n45T5ULePTviTkVEy+WgcleWjwXyz+sSxpNTUH
         CMwnBWELT6BBgUCfICB97KlObF0Afgo2tIbn6hRXQnQbmrOIv6gPBcl8sabk/Unso2c0
         ldhQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=QcZe6rpy;
       spf=pass (google.com: domain of borntraeger@de.ibm.com designates 148.163.158.5 as permitted sender) smtp.mailfrom=borntraeger@de.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:autocrypt:message-id:date
         :user-agent:in-reply-to:content-language:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9bN+V7tabgGX3c20DsZkNR76B2nCQttZYvSpWciW8FE=;
        b=X1oDYf50eOHPgbhixG573akGznr8JjQ6tQuga2RrosQb5iHkO6a65r98VvobXP5Um7
         1TRt3WZpoRqXJt+84+7YmIxRm33tMexMTK5Sa0Jig8P55vuNewZ4akk7PmETqDzePKat
         8Oqcs888HSfeCdw3zhBM4EQ/+BmEUOMUQWPlndCmxVetItVg09h9+Zwk70O5C/bvdQdm
         r690Q4YEaSSlYNW0LTbhoeP5rL7Z2zwfO0rArjxN9yapKPbBActK2sAKFEoycVmSArH7
         Sqh39765X+f9XX3wQn4jP4z8nqEUT8gg6hEyNH8qJnpQmFftnuG0a9jdmxs9SWqHmWKe
         diTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:autocrypt
         :message-id:date:user-agent:in-reply-to:content-language
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9bN+V7tabgGX3c20DsZkNR76B2nCQttZYvSpWciW8FE=;
        b=sGc6Bn0+UXHEkyRIf3aGX2RobSGVB/rahRpVprl1nqlnjEiN9SA+SQVcaF0MEJiGxa
         NavH/wKwoozu3/l8CVD3Pk8+nDptiHYq1m3/ab09w/0ureeS/zs4yDnoI6EwotpwBP51
         BBvbTdDc9A9OA4ajQsMDhmYLjqeUFjT8gOitdPit9YExGKIxlXKyq85FNluweCfh0og/
         sIeD4l5lT1Zk6Yn9o8EEY8ll1y2xIRydbRik+i3itPKirwThzV9KYaUVxykP8Bg6rF3/
         4k2aCfYBtbi56ZZoow1bwt0eXpEH+3JlgMKDLv9m03PrjKuIiQSA4k6ISfbmR6gA+cGA
         QXxQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530YbtPDZy+SZ+/4fqFo0BwIdqIlF3x+NgnAo82ibJrPaSm5owpk
	/PisY8uq/omkRNnDk7qlY4I=
X-Google-Smtp-Source: ABdhPJwVqx0FdWSkeFvddZPGalrhTFIukDfxAFZUW+iGxlto3It+axiGSMRwMl8pJBdnz7e+P1dpZA==
X-Received: by 2002:a4a:9e87:: with SMTP id u7mr670851ook.15.1603172150734;
        Mon, 19 Oct 2020 22:35:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:1a84:: with SMTP id 126ls55062oof.11.gmail; Mon, 19 Oct
 2020 22:35:50 -0700 (PDT)
X-Received: by 2002:a4a:e1d7:: with SMTP id n23mr653122oot.85.1603172150357;
        Mon, 19 Oct 2020 22:35:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603172150; cv=none;
        d=google.com; s=arc-20160816;
        b=JsrjRRMjeRyyBBeHzgb8M5qNp5Q5O6gdMU9aPh9N5Q2l0FyvdouNPpLGyoImB+Cx+E
         QPdq7V4z4A+e26LqoCtD8+XbsX/CYd/wbv65HiVvAVccju/t/rWazWNjeIs35nULtg9G
         mWmXO3p7rmtrDgn6jcGjUzfmnTZpfYzg4JUVz2k3jf6zC5WtUHGNBaDrB3xhSIZSIz7U
         JvWgGChOJq2Rbr8rqhgudKMOMXN+ohO900DGq/2TvPE4vqePNAapkEeXTY1JulDkoc07
         rA0Vd5vxd84XFUz4PbDWPce0zUK/7vpMS4OP4BhFpGmArKuz0hT7fQy7uW00gsEWs7Do
         hVew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language:in-reply-to
         :user-agent:date:message-id:autocrypt:from:references:cc:to:subject
         :dkim-signature;
        bh=e7vzejhxZSDNvVRCzNWgCsCPlPVXxj9v5IvmtmjjSgc=;
        b=aWwJn7Ouz8twNvPITTuNDPJVmDEjPf1/yqH2RHd4kQ7ufmeOfXii+G+p8sXS8gYf3U
         fWgT3vcxYzUYCUgbXBERM8p6p+FgcENHt3n0mpIe4kJ8f+KqFU0/Hxz9MTJfbL+ostig
         tNabjmGI2MXNJqASWtVsMeWhgbP3ZV3JhHWtRBPaSgNxTQLLqmUy56ce5+BS6K6f2NGt
         Y6XAzXAP6sdKyoc+GiblBjRXJZeUI4s6QSR1q0CVOf2a4Pp0Rhv2piPlHDwBqeCxIo4+
         Vqc57ztLvxF9FnReEhVC1R/1gdopRbTNjoFzdVdY0RSFe8iNBpcImi9e9NCKZhJ8tlmL
         roTw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=QcZe6rpy;
       spf=pass (google.com: domain of borntraeger@de.ibm.com designates 148.163.158.5 as permitted sender) smtp.mailfrom=borntraeger@de.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
Received: from mx0b-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com. [148.163.158.5])
        by gmr-mx.google.com with ESMTPS id t11si57983oij.2.2020.10.19.22.35.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Oct 2020 22:35:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of borntraeger@de.ibm.com designates 148.163.158.5 as permitted sender) client-ip=148.163.158.5;
Received: from pps.filterd (m0127361.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id 09K5VjwU008922;
	Tue, 20 Oct 2020 01:35:49 -0400
Received: from pps.reinject (localhost [127.0.0.1])
	by mx0a-001b2d01.pphosted.com with ESMTP id 349s3fs3xe-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 20 Oct 2020 01:35:40 -0400
Received: from m0127361.ppops.net (m0127361.ppops.net [127.0.0.1])
	by pps.reinject (8.16.0.36/8.16.0.36) with SMTP id 09K5W9VV009758;
	Tue, 20 Oct 2020 01:35:39 -0400
Received: from ppma03ams.nl.ibm.com (62.31.33a9.ip4.static.sl-reverse.com [169.51.49.98])
	by mx0a-001b2d01.pphosted.com with ESMTP id 349s3fs3w5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 20 Oct 2020 01:35:39 -0400
Received: from pps.filterd (ppma03ams.nl.ibm.com [127.0.0.1])
	by ppma03ams.nl.ibm.com (8.16.0.42/8.16.0.42) with SMTP id 09K5XtKY008879;
	Tue, 20 Oct 2020 05:35:35 GMT
Received: from b06cxnps3074.portsmouth.uk.ibm.com (d06relay09.portsmouth.uk.ibm.com [9.149.109.194])
	by ppma03ams.nl.ibm.com with ESMTP id 348d5qt0qp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 20 Oct 2020 05:35:35 +0000
Received: from d06av26.portsmouth.uk.ibm.com (d06av26.portsmouth.uk.ibm.com [9.149.105.62])
	by b06cxnps3074.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 09K5ZWs824248816
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 20 Oct 2020 05:35:32 GMT
Received: from d06av26.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id A86E4AE04D;
	Tue, 20 Oct 2020 05:35:32 +0000 (GMT)
Received: from d06av26.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 194C7AE053;
	Tue, 20 Oct 2020 05:34:56 +0000 (GMT)
Received: from oc7455500831.ibm.com (unknown [9.145.159.196])
	by d06av26.portsmouth.uk.ibm.com (Postfix) with ESMTP;
	Tue, 20 Oct 2020 05:34:52 +0000 (GMT)
Subject: Re: s390 - buildroot + qemu
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Guenter Roeck <linux@roeck-us.net>, egorenar@linux.ibm.com,
        Vasily Gorbik <gor@linux.ibm.com>, Joel Stanley <joel@jms.id.au>,
        Ulrich Weigand <Ulrich.Weigand@de.ibm.com>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Nathan Chancellor <natechancellor@gmail.com>,
        linux-s390 <linux-s390@vger.kernel.org>
References: <CAKwvOd=0nOhK4KoLb1_Jni5u3ENDx10QeAxfYcSbtFQs77FxAw@mail.gmail.com>
 <30b7bea6-1135-609b-f1e5-a4f243e1dcc1@roeck-us.net>
 <CAKwvOdmnr0qqJTg+cU5KJ2-nJQgTY-8AraZQHXZUw0KNZKE4fg@mail.gmail.com>
 <c461496a-1ea4-4d44-4913-950cabcd3e31@de.ibm.com>
 <CAKwvOdnn=i_Jg4B5o4sh2mRNGY9aH1piXoBYwEB4E3PpWZM5bw@mail.gmail.com>
From: Christian Borntraeger <borntraeger@de.ibm.com>
Autocrypt: addr=borntraeger@de.ibm.com; prefer-encrypt=mutual; keydata=
 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
 nS4h0HDFPrrp1C2EMVYIQrMokWvlFZbCpsdYbBI=
Message-ID: <001202c8-7fe1-1861-bf5f-ed475bde23db@de.ibm.com>
Date: Tue, 20 Oct 2020 07:34:04 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
In-Reply-To: <CAKwvOdnn=i_Jg4B5o4sh2mRNGY9aH1piXoBYwEB4E3PpWZM5bw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-TM-AS-GCONF: 00
X-Proofpoint-UnRewURL: 156 URL's were un-rewritten
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.235,18.0.687
 definitions=2020-10-20_01:2020-10-16,2020-10-20 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0
 priorityscore=1501 malwarescore=0 bulkscore=0 mlxlogscore=802
 suspectscore=0 clxscore=1015 adultscore=0 mlxscore=0 phishscore=0
 lowpriorityscore=0 impostorscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2009150000 definitions=main-2010200034
X-Original-Sender: borntraeger@de.ibm.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ibm.com header.s=pp1 header.b=QcZe6rpy;       spf=pass (google.com:
 domain of borntraeger@de.ibm.com designates 148.163.158.5 as permitted
 sender) smtp.mailfrom=borntraeger@de.ibm.com;       dmarc=pass (p=NONE
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

On 19.10.20 23:36, Nick Desaulniers wrote:
> On Mon, Oct 19, 2020 at 3:55 AM Christian Borntraeger
> <borntraeger@de.ibm.com> wrote:
>>
>>
>>
>> On 17.10.20 01:40, Nick Desaulniers wrote:
>>> On Fri, Oct 16, 2020 at 4:18 PM Guenter Roeck <linux@roeck-us.net> wrote:
>>>>
>>>> On 10/16/20 4:11 PM, Nick Desaulniers wrote:
>>>>> Hello all,
>>>>> I'm working on integrating the latest release of buildroot (2020.08.1)
>>>>> into our CI for ClangBuiltLinux.
>>>>>
>>>>> https://github.com/ClangBuiltLinux/boot-utils/pull/25
>>>>> https://github.com/ClangBuiltLinux/boot-utils/pull/26
>>>>> https://github.com/ClangBuiltLinux/continuous-integration/pull/327
>>>>>
>>>>> I'm seeing the following error from QEMU:
>>>>> KASLR disabled: CPU has no PRNG
>>>>> Linux version 5.9.0-00732-g04ed4527465f (ndesaulniers@<myhost>) #30
>>>>> SMP Fri Oct 16 15:49:05 PDT 2020Kernel fault: interruption code 0005
>>>>> ilc:2
>>>>> PSW : 0000200180000000 000000000001779e
>>>>>       R:0 T:0 IO:0 EX:0 Key:0 M:0 W:0 P:0 AS:0 CC:2 PM:0 RI:0 EA:3
>>>>> GPRS: 0000000000000001 0000000c00000000 00000003fffffff4 00000000fffffff0
>>>>>       0000000000000000 00000000fffffff4 000000000000000c 00000000fffffff0
>>>>>       00000000fffffffc 0000000000000000 00000000fffffff8 00000000008a75a8
>>>>>       0000000000000009 0000000000000002 0000000000000008 000000000000bce0
>>
>> Do you have more information? If not, any chance to run objdump on the kernel
>> and check what instructions do you have aroung address 0x1779e
>> [...]
> 
> Is PSW the program counter?

program counter (the 64bit on the right hand side), flags, interrupt controls
and many other things


> /me skims https://www.kernel.org/doc/Documentation/s390/Debugging390.txt *woah*
> Is there something more specific I should be running than:
> $ s390x-linux-gnu-objdump -Dr vmlinux | grep 179fe
> because I get lots of hits for that, but not 0x179fe.

You probably have to look at the instruction before as many faults on s390 are suppressing
(the instruction effects are suppressed, but the PSW moves forward). 

With ilc=2 (instruction length code)
> 
> In fact, the first symbol starts at 0x100000. Unless this is a failure
> in the image decompressor?

I guess so.
Maybe llvm does something that qemu does not handle in the compressor
can you try with
objdump -d arch/s390/boot/compressed/vmlinux

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/001202c8-7fe1-1861-bf5f-ed475bde23db%40de.ibm.com.
