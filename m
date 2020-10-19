Return-Path: <clang-built-linux+bncBCHJVF74S4BRBCPBWX6AKGQEHZPPRQI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33c.google.com (mail-ot1-x33c.google.com [IPv6:2607:f8b0:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E16F29261A
	for <lists+clang-built-linux@lfdr.de>; Mon, 19 Oct 2020 12:55:07 +0200 (CEST)
Received: by mail-ot1-x33c.google.com with SMTP id t19sf6025710otc.17
        for <lists+clang-built-linux@lfdr.de>; Mon, 19 Oct 2020 03:55:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603104906; cv=pass;
        d=google.com; s=arc-20160816;
        b=YUKVsb613Mxx71QD8d7t3USfVSooWTX85jQ95lYISqlmOJTWVlI6fSE5QIhbQQSoBO
         SrNO+brgjpXWii0uk+htYG4HvfIRvNa7raiar8kOadb+sF+/qGm1sLPgV7t45JwJyK/V
         2nfcu11w+GkSYl20MmVQ0Oo2TRbSWAWg7Y79/kZFTMUYVAnWElkq8I1srOAo+rQYW0AH
         NqxzyPGidelx/RO/ePr6zhmtRcI4r1LbNK1vk8NKF1gVx+flC34WGK12RhNG0xzMicNN
         LwS6xx6JtPbgdNCFWgrGjwvaF5CBlIZtMg72C9rZB2Kb0wVypMIeYq+zrPd1zTFIDS4N
         JfLA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-language
         :in-reply-to:user-agent:date:message-id:autocrypt:from:references:cc
         :to:subject:sender:dkim-signature;
        bh=Cpf/sgaEgVpJOGQ4WbSGBS4Lm0SBZUHcEW71OUsoF1c=;
        b=IAaP3YjTfVT7IAMYGnZ8reCuzG2Zu1PchkeyQATQqDrQpgV9vk2G1KybD2M9vam8X7
         TbQcCBV4e+qCfTrz8c1JQ8fedTZy9Lkgg3I9IkReu9/rsOJvoiR44U8+qo3Hadgj5DVp
         RAJRa4PWP46MV7uTIFonSX256KJ1lu9VNZ2kwp+rKJzISDkh7sE64E+eZff+1H3MYes2
         nkUdEdgfeBVhAj+pIqGBUyJUelPgRup8nQymUeo/nhxdjpOjOoslLvL7Uj3p1VwdyY1M
         dSSpXDhbyeyQsBgtG5YHfrVoxw/rknB6S9BbbK0+ZytZiBmPoxbfvCGowYbe13/A8j3H
         FrAQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=OOOK2VSG;
       spf=pass (google.com: domain of borntraeger@de.ibm.com designates 148.163.156.1 as permitted sender) smtp.mailfrom=borntraeger@de.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:autocrypt:message-id:date
         :user-agent:in-reply-to:content-language:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Cpf/sgaEgVpJOGQ4WbSGBS4Lm0SBZUHcEW71OUsoF1c=;
        b=rTtkjp1m6w+Rjy/SJLIgOD/pJdESnUxQxtx6gYjIHts8BED30y+ECcdnZ5uwKCrax+
         2XnUHxnweTy0T3HOThkhNLEMHAM1no3mRb7zZkrIeKS/3yjtluhbtFIy6uBoRQ0W2qKd
         RUTLfKbLVLfmvoD2Pbe57k/ApX0OOdzT3poQIvo0FYg9+vGm8ukkL6ofWtfdKjALx7Fr
         rjbARko8ffqUfwOK4Jl5eyyTNNq4wlbh9Kvh/3aJ7OzSPW2hLT3Af4Iy/c6hWvCiTgf6
         FVEH9V+/eMqlfKn95VpQ62DM7Y1lHJ+HkbPEX8fNG8WeM3q+WHe6dyUNcDhlYe62BefK
         PvDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:autocrypt
         :message-id:date:user-agent:in-reply-to:content-language
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Cpf/sgaEgVpJOGQ4WbSGBS4Lm0SBZUHcEW71OUsoF1c=;
        b=hFbIb6pR5kGRu570/N/NiQB+CAM8dTGoHK3c8eX3LjT3djYQ52WeFxdca3rfGMHagW
         bOtzfQx36uN0qvfPK5I3Jj0cbP7MGj2urfwMUCV9lpWozr3oKfEtLHzhk7OdjPfrYMsH
         B0D8hI1L0fkCGVbXKp+jcL1+KnDe+fKGSonMN74A4CyjDMsdZbuz1iqI1vdvixyu7el8
         x0n1DZZ8y6kLJadrS+dril+fIFdeVPH1zh4m7VBCkktJBKUlE9RAOjW4/0qPjzM4FFzL
         fegZEklOF4l+d3BqN8DbSGwD8jmuAxLLWpLe/YvW3gzW+2JLOSK1L+ROazpkoKFqoPUG
         lpmQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533MuF4WJYumWleRdjb5DpZ4DKJGe+vGfjV73YOz8j68sMFcTD0D
	3nhKCO42+iZaP1+KJH0kUTk=
X-Google-Smtp-Source: ABdhPJyRyTtHdknrALRlv/b/W3r/9eui6riANeGmZ/piN2xDF1LZiiLIwrDDk6aFgmh2xPj09cPgcw==
X-Received: by 2002:a05:6830:400d:: with SMTP id h13mr11745744ots.371.1603104905999;
        Mon, 19 Oct 2020 03:55:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:390b:: with SMTP id g11ls2224568oia.1.gmail; Mon, 19 Oct
 2020 03:55:05 -0700 (PDT)
X-Received: by 2002:a05:6808:b14:: with SMTP id s20mr5676063oij.103.1603104905617;
        Mon, 19 Oct 2020 03:55:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603104905; cv=none;
        d=google.com; s=arc-20160816;
        b=UWKloUbfy9KbwW7TA4E7FuEjK+ziRkv7eT/1nnKdYer7LA6m6oihHUVaJcG+9Vzawo
         lR6jWVGcoYUERIWu1/AHtgtvFD0Hd0u1mi/g6bIzZZ4kStsr7a9Hmpeb7/NfKQZpcEpN
         OyD7aXrOeU20VSFo8FmW68A0XmBwOXWgzNg3Vr8CR5tWBjPZvs9J1PWWkl7FtmmoHE6w
         iPGFbVgkrK3FNhjNHmUT90zR3NF7gdENr0holPsbqI2fJqHA5M4ryP3A0tK7zGhxAV6G
         Cxou6oOb8w6bt4S384yJcuUcHZleJHQlCwXNdYTBJM5n3Hyi0CI5ua5bf/TnyLFx9cwj
         3NYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language:in-reply-to
         :user-agent:date:message-id:autocrypt:from:references:cc:to:subject
         :dkim-signature;
        bh=lKifGUETJ0VWGsDAxE4A9KEXvF0LXF59Ddf6lIFZTj8=;
        b=vbSqKetIzkQ9R+uVRbZ6PKs2DtYSPAZUDWhxYYx0u2X4HVOVMm6vFS1rNp5D2b/h6o
         J4UraepeNpzSXwwvr5E6Ho2749gRHgxMCtkgRhXHK6bSJLDm4iRueo+N5hYbjzC3lmRP
         kaEOI8/vPMuG2Yy09wNi4K+DgkeNmbGDVmh5ia8i+82YVyq5cC0Aoiq39BoEIwBfXlL2
         o+jSRfr5YmvoZLkcQTr8d7bbuTFjbXWEx5iTUJXcWIUKpdpkKN937DgBlrb/11igSP9E
         xEZuQFfRxSwTGLhuyh7G+298ldifTeTfW087QoWOV30FBHCCjVMBbdRuNKdvZAqNzM8f
         D2Vg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=OOOK2VSG;
       spf=pass (google.com: domain of borntraeger@de.ibm.com designates 148.163.156.1 as permitted sender) smtp.mailfrom=borntraeger@de.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com. [148.163.156.1])
        by gmr-mx.google.com with ESMTPS id f16si783439otc.0.2020.10.19.03.55.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Oct 2020 03:55:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of borntraeger@de.ibm.com designates 148.163.156.1 as permitted sender) client-ip=148.163.156.1;
Received: from pps.filterd (m0098394.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id 09JAWns3166586;
	Mon, 19 Oct 2020 06:55:03 -0400
Received: from pps.reinject (localhost [127.0.0.1])
	by mx0a-001b2d01.pphosted.com with ESMTP id 349947rkw5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 19 Oct 2020 06:55:03 -0400
Received: from m0098394.ppops.net (m0098394.ppops.net [127.0.0.1])
	by pps.reinject (8.16.0.36/8.16.0.36) with SMTP id 09JAZWHB182496;
	Mon, 19 Oct 2020 06:55:02 -0400
Received: from ppma06ams.nl.ibm.com (66.31.33a9.ip4.static.sl-reverse.com [169.51.49.102])
	by mx0a-001b2d01.pphosted.com with ESMTP id 349947rkug-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 19 Oct 2020 06:55:02 -0400
Received: from pps.filterd (ppma06ams.nl.ibm.com [127.0.0.1])
	by ppma06ams.nl.ibm.com (8.16.0.42/8.16.0.42) with SMTP id 09JAlk9n019660;
	Mon, 19 Oct 2020 10:55:00 GMT
Received: from b06avi18878370.portsmouth.uk.ibm.com (b06avi18878370.portsmouth.uk.ibm.com [9.149.26.194])
	by ppma06ams.nl.ibm.com with ESMTP id 347qvha0n2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 19 Oct 2020 10:55:00 +0000
Received: from b06wcsmtp001.portsmouth.uk.ibm.com (b06wcsmtp001.portsmouth.uk.ibm.com [9.149.105.160])
	by b06avi18878370.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 09JAsvvF19005902
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 19 Oct 2020 10:54:57 GMT
Received: from b06wcsmtp001.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 3A159A4060;
	Mon, 19 Oct 2020 10:54:57 +0000 (GMT)
Received: from b06wcsmtp001.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id CA3C3A405F;
	Mon, 19 Oct 2020 10:54:56 +0000 (GMT)
Received: from oc7455500831.ibm.com (unknown [9.145.17.191])
	by b06wcsmtp001.portsmouth.uk.ibm.com (Postfix) with ESMTP;
	Mon, 19 Oct 2020 10:54:56 +0000 (GMT)
Subject: Re: s390 - buildroot + qemu
To: Nick Desaulniers <ndesaulniers@google.com>,
        Guenter Roeck <linux@roeck-us.net>
Cc: egorenar@linux.ibm.com, Vasily Gorbik <gor@linux.ibm.com>,
        Joel Stanley <joel@jms.id.au>,
        Ulrich Weigand <Ulrich.Weigand@de.ibm.com>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Nathan Chancellor <natechancellor@gmail.com>,
        linux-s390 <linux-s390@vger.kernel.org>
References: <CAKwvOd=0nOhK4KoLb1_Jni5u3ENDx10QeAxfYcSbtFQs77FxAw@mail.gmail.com>
 <30b7bea6-1135-609b-f1e5-a4f243e1dcc1@roeck-us.net>
 <CAKwvOdmnr0qqJTg+cU5KJ2-nJQgTY-8AraZQHXZUw0KNZKE4fg@mail.gmail.com>
From: Christian Borntraeger <borntraeger@de.ibm.com>
Autocrypt: addr=borntraeger@de.ibm.com; prefer-encrypt=mutual; keydata=
 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
 nS4h0HDFPrrp1C2EMVYIQrMokWvlFZbCpsdYbBI=
Message-ID: <c461496a-1ea4-4d44-4913-950cabcd3e31@de.ibm.com>
Date: Mon, 19 Oct 2020 12:54:56 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
In-Reply-To: <CAKwvOdmnr0qqJTg+cU5KJ2-nJQgTY-8AraZQHXZUw0KNZKE4fg@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-TM-AS-GCONF: 00
X-Proofpoint-UnRewURL: 0 URL was un-rewritten
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.235,18.0.687
 definitions=2020-10-19_02:2020-10-16,2020-10-19 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 spamscore=0
 lowpriorityscore=0 malwarescore=0 mlxlogscore=924 clxscore=1011
 suspectscore=0 adultscore=0 bulkscore=0 impostorscore=0 mlxscore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2010190074
X-Original-Sender: borntraeger@de.ibm.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ibm.com header.s=pp1 header.b=OOOK2VSG;       spf=pass (google.com:
 domain of borntraeger@de.ibm.com designates 148.163.156.1 as permitted
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



On 17.10.20 01:40, Nick Desaulniers wrote:
> On Fri, Oct 16, 2020 at 4:18 PM Guenter Roeck <linux@roeck-us.net> wrote:
>>
>> On 10/16/20 4:11 PM, Nick Desaulniers wrote:
>>> Hello all,
>>> I'm working on integrating the latest release of buildroot (2020.08.1)
>>> into our CI for ClangBuiltLinux.
>>>
>>> https://github.com/ClangBuiltLinux/boot-utils/pull/25
>>> https://github.com/ClangBuiltLinux/boot-utils/pull/26
>>> https://github.com/ClangBuiltLinux/continuous-integration/pull/327
>>>
>>> I'm seeing the following error from QEMU:
>>> KASLR disabled: CPU has no PRNG
>>> Linux version 5.9.0-00732-g04ed4527465f (ndesaulniers@<myhost>) #30
>>> SMP Fri Oct 16 15:49:05 PDT 2020Kernel fault: interruption code 0005
>>> ilc:2
>>> PSW : 0000200180000000 000000000001779e
>>>       R:0 T:0 IO:0 EX:0 Key:0 M:0 W:0 P:0 AS:0 CC:2 PM:0 RI:0 EA:3
>>> GPRS: 0000000000000001 0000000c00000000 00000003fffffff4 00000000fffffff0
>>>       0000000000000000 00000000fffffff4 000000000000000c 00000000fffffff0
>>>       00000000fffffffc 0000000000000000 00000000fffffff8 00000000008a75a8
>>>       0000000000000009 0000000000000002 0000000000000008 000000000000bce0

Do you have more information? If not, any chance to run objdump on the kernel
and check what instructions do you have aroung address 0x1779e
[...]

> Hopefully qemu supports something newer than Z900?  Or can we change
> arch/s390/Kconfig:255 to use a different arch? Is arch9 == z900???:

Newer QEMUs do support up to z13, so I think this is not an issue as long
as you have an uptodate qemu.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/c461496a-1ea4-4d44-4913-950cabcd3e31%40de.ibm.com.
