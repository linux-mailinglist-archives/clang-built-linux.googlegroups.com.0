Return-Path: <clang-built-linux+bncBC4L7KOTUQARBNUP47ZQKGQEA4DXLLQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23d.google.com (mail-oi1-x23d.google.com [IPv6:2607:f8b0:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id 4254F1907E3
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Mar 2020 09:41:27 +0100 (CET)
Received: by mail-oi1-x23d.google.com with SMTP id e15sf12534892oib.14
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Mar 2020 01:41:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585039286; cv=pass;
        d=google.com; s=arc-20160816;
        b=oZU4YLueHLI2HjUHMX9ujjAmlo1izwe4kmk2zDHVqcBFY6Eo+VxILXIiULSmzR+TAg
         q8sbl9TMcuOJ/mg4CEfe+SxGS0hC80IWigJxrTc5ShNK3FDxV5IBk4zYqjpeNDetZ3cy
         tpvPZkXyFuefepi1rEtyNKNcOhNAY/dmd5CFmaTBa3o1dbC7mRjJ7a5Ip59cck59B0CS
         UFJcl9Tb8IW16weZMN1xLdxj86fi2jJmg05YC2+0PzgK0PvTboRJ9SFaGAfTjwA/87vF
         wnRhVj/juN9ZhNkDUhfmlfaFwNzyLaqgLmUyNfyq97qrx9NbSnCM8RlywKGMLnSZXuwo
         GgpQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:content-language
         :in-reply-to:mime-version:user-agent:date:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=PW/p5rAgea6gPwYZXFlNbN/uKtzRJJ5fWM6Oxqdh6Rk=;
        b=Nciwc1Ljt+k2OzJ9B8eu1j4ep7NgrzTrKv6GlARJVEJ3jqXL8+uIj7gB2Ad+xGbziF
         hZ9Zz4R2Ybf0RjOQMlZ0vbQzx2dbPVWn0W8VfRLZ++I1Dk6JlCVN/iFMJ0tQjeMioIqQ
         Yvlxuwsp6XCGZUQpKOnizqq7w933ANwxflErbV/wg3Pg3xoVb9J7tYC3it+VfG9HK4Qk
         +XnfZTYZ8AES/XZkNXdukTbTBJcTMY8rT3+E+b352LOdiR1+0WytavHhAeld8SMiZPQw
         5gFdZaIZgwdpjwGG0MEiKCi9SnUztXrz6bpKRxEzqIDbIPOG5y62NO+7SurOpn8dw+s5
         FuGg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 148.163.158.5 is neither permitted nor denied by best guess record for domain of kamalesh@linux.vnet.ibm.com) smtp.mailfrom=kamalesh@linux.vnet.ibm.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=ibm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:date:user-agent:mime-version
         :in-reply-to:content-language:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=PW/p5rAgea6gPwYZXFlNbN/uKtzRJJ5fWM6Oxqdh6Rk=;
        b=NVJvwo6466t6clPKR0N5qJnf3j/5ILM5E57NJE0A/aQ3dU/DU8PNiwZpJBaP9UYZNb
         Dbk2R3KR40oOOPbR1X7r8ususM1u4N+1o9iPu2qFIpFe+MOki35LR1v3Ym+yGsYhbKm1
         tfMUg8ExJ/m+RTvcDBwFqva5xYoS3Q/txB2FPM9O6jYovhy7BLctWRTMMEaOhovBWOMW
         8yW52kKzaidqzGNEBiv2u1E/92Ojr5sBfUV1LU5sX/IE8q0UYR2tLFuOYTJNUyvzic9L
         IfEmSIxScrkND2dU7dr+VNFq2Mrsx8gWQbvuRHHMKVVaEfw3OSR/2t0Ak5ZGF16NwQxP
         tJxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:date
         :user-agent:mime-version:in-reply-to:content-language:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=PW/p5rAgea6gPwYZXFlNbN/uKtzRJJ5fWM6Oxqdh6Rk=;
        b=V64iuKdl8EqotSiHQlvXsgqMWDu7q0d5zLhq7KYoTZS22ZR6nCgVLiXXZfnPyGNjEE
         BlPLcmM6PfdIsLVJzV2iGxBLhie3e9IU29k3NpmugUDqMZlrvWdWrRS/M5fwZc9iPaAz
         Gsb/NaMLiV2f0VXHHzRkg862SPlsgSiBs946F/3mZz7gW4Y0XtTu4evN7dhZAFN13TVG
         42uj0UmSWPxoDtVODrjnh3KYA4WFaNv5+hCieDBfo6eAp2hq6XPJ3v24S4+SDiftujPa
         6h6lumQGxRWCXk3IMYIr+xYzhWVOCVCtDC2GXzYOLCIwndYh5+UejSd6ZvK7pWrBK6Go
         qgwQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ1pCuhtMJ2UZNfiFUUkEbk2hMrlg0h8vDXtdLEnXi4lBu0Q1kda
	aWKlQoCE//jA4fWbEOZPQ+Q=
X-Google-Smtp-Source: ADFU+vtLHGhm/xL0YJaiWQ6Am0xJ7BGVz70cKGeexXMnpiYXfxE/f23U856z78hQ3PibMDNVbZA6Aw==
X-Received: by 2002:aca:3b85:: with SMTP id i127mr293511oia.123.1585039286133;
        Tue, 24 Mar 2020 01:41:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:ec0a:: with SMTP id k10ls1457337oih.8.gmail; Tue, 24 Mar
 2020 01:41:25 -0700 (PDT)
X-Received: by 2002:aca:5712:: with SMTP id l18mr2616969oib.178.1585039285783;
        Tue, 24 Mar 2020 01:41:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585039285; cv=none;
        d=google.com; s=arc-20160816;
        b=DExrWIQhKJw1laEmfVo6KR9lVxpxY9GDUe4gUCCwDGBzHqwRuzkA+1mxuYOnbiNwA0
         aW6G6X5kHa4fRmN5VuJkUao6r+Bi8UvZB/axQzRBZbDaTFJJL31jHoZoSRdHJG02HjEn
         u/NjI8xawqpqkYdo5qly7/kqJ+RB01Tu8ZfZnyPKoOOt/mRNm2nltx8Ym4OyV8Z6pLTz
         sXlztLbVrbxl6hdskFDfQapj2/CmTNM4wVf/T25nUd/6aQk6nRbPMc4E5neReArdlh8s
         gNsE9SUPuGwQdm3lde3jyn2XFQvxy1sFbVGASQMLaOXK5aZP6dzAW4b3xyiVsXtJq6r1
         hzkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:content-transfer-encoding:content-language:in-reply-to
         :mime-version:user-agent:date:from:references:cc:to:subject;
        bh=WRsAKQwIfhDNQuTxtezpuYxCdwGVbQkDXI8salPhbiA=;
        b=z29JBEywQ4OEMwOf3NBpuQez4TZ/slkmx/KHvEXueMXWxwYwLRgT0Tk+tGnUstx2PC
         6qxwknxAOse9q2EgCvb9eEgCZJkfob4ZZC1Q2vqeM9HZQUwqAXp5pzDIJVk93vpvfO/x
         5w/3mPRu9QGv17KGvPQOJFvWtTNu/46tZGk5p9Bbyf56Ag+ob6LmMa6eWDYEMxt3sWUO
         WTKg5QAk6RmDdlpRmDpnnl5m1fgK/kavEkRyb+pcNjVFdjMCMJfrsVG+mBGpJsyLaEbX
         NWnNq520FSdKKe9arobmKPwuhHKCNlk4WLJBk9Co+eB+PqLaoaBtEC9WU8uTgHhrug4b
         hzAg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 148.163.158.5 is neither permitted nor denied by best guess record for domain of kamalesh@linux.vnet.ibm.com) smtp.mailfrom=kamalesh@linux.vnet.ibm.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=ibm.com
Received: from mx0a-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com. [148.163.158.5])
        by gmr-mx.google.com with ESMTPS id d11si930474otk.5.2020.03.24.01.41.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Mar 2020 01:41:25 -0700 (PDT)
Received-SPF: neutral (google.com: 148.163.158.5 is neither permitted nor denied by best guess record for domain of kamalesh@linux.vnet.ibm.com) client-ip=148.163.158.5;
Received: from pps.filterd (m0098414.ppops.net [127.0.0.1])
	by mx0b-001b2d01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id 02O8WtfA063661
	for <clang-built-linux@googlegroups.com>; Tue, 24 Mar 2020 04:41:25 -0400
Received: from e06smtp02.uk.ibm.com (e06smtp02.uk.ibm.com [195.75.94.98])
	by mx0b-001b2d01.pphosted.com with ESMTP id 2ywf2gq1tv-1
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
	for <clang-built-linux@googlegroups.com>; Tue, 24 Mar 2020 04:41:25 -0400
Received: from localhost
	by e06smtp02.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only! Violators will be prosecuted
	for <clang-built-linux@googlegroups.com> from <kamalesh@linux.vnet.ibm.com>;
	Tue, 24 Mar 2020 08:41:22 -0000
Received: from b06cxnps3075.portsmouth.uk.ibm.com (9.149.109.195)
	by e06smtp02.uk.ibm.com (192.168.101.132) with IBM ESMTP SMTP Gateway: Authorized Use Only! Violators will be prosecuted;
	(version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
	Tue, 24 Mar 2020 08:41:17 -0000
Received: from d06av23.portsmouth.uk.ibm.com (d06av23.portsmouth.uk.ibm.com [9.149.105.59])
	by b06cxnps3075.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 02O8fHBa58327132
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 24 Mar 2020 08:41:17 GMT
Received: from d06av23.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 87A22A4051;
	Tue, 24 Mar 2020 08:41:17 +0000 (GMT)
Received: from d06av23.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 62EAAA4069;
	Tue, 24 Mar 2020 08:41:15 +0000 (GMT)
Received: from JAVRIS.in.ibm.com (unknown [9.199.56.74])
	by d06av23.portsmouth.uk.ibm.com (Postfix) with ESMTPS;
	Tue, 24 Mar 2020 08:41:15 +0000 (GMT)
Subject: Re: [PATCH] objtool: Documentation: document UACCESS warnings
To: Nick Desaulniers <ndesaulniers@google.com>, jpoimboe@redhat.com,
        peterz@infradead.org
Cc: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
        Jonathan Corbet <corbet@lwn.net>, Wolfram Sang <wsa@the-dreams.de>,
        Raphael Gault <raphael.gault@arm.com>, linux-kernel@vger.kernel.org,
        clang-built-linux@googlegroups.com
References: <20200323212538.GN2452@worktop.programming.kicks-ass.net>
 <20200324001321.39562-1-ndesaulniers@google.com>
From: Kamalesh Babulal <kamalesh@linux.vnet.ibm.com>
Date: Tue, 24 Mar 2020 14:11:13 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200324001321.39562-1-ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-TM-AS-GCONF: 00
x-cbid: 20032408-0008-0000-0000-00000362E1E3
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 20032408-0009-0000-0000-00004A844D4C
Message-Id: <90c16f02-9364-651e-6dea-8758a698d2ce@linux.vnet.ibm.com>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138,18.0.645
 definitions=2020-03-24_02:2020-03-23,2020-03-24 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 impostorscore=0
 suspectscore=0 adultscore=0 priorityscore=1501 spamscore=0 phishscore=0
 malwarescore=0 mlxlogscore=999 clxscore=1011 mlxscore=0 lowpriorityscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2003240042
X-Original-Sender: kamalesh@linux.vnet.ibm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 148.163.158.5 is neither permitted nor denied by best guess
 record for domain of kamalesh@linux.vnet.ibm.com) smtp.mailfrom=kamalesh@linux.vnet.ibm.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=ibm.com
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

On 3/24/20 5:43 AM, Nick Desaulniers wrote:
> Compiling with Clang and CONFIG_KASAN=y was exposing a few warnings:
>   call to memset() with UACCESS enabled
> 
> Document how to fix these for future travelers.
> 
> Link: https://github.com/ClangBuiltLinux/linux/issues/876
> Suggested-by: Peter Zijlstra <peterz@infradead.org>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>

Looks good, a minor nitpick below.

> ---
>  .../Documentation/stack-validation.txt        | 20 +++++++++++++++++++
>  1 file changed, 20 insertions(+)
> 
> diff --git a/tools/objtool/Documentation/stack-validation.txt b/tools/objtool/Documentation/stack-validation.txt
> index de094670050b..156fee13ba02 100644
> --- a/tools/objtool/Documentation/stack-validation.txt
> +++ b/tools/objtool/Documentation/stack-validation.txt
> @@ -289,6 +289,26 @@ they mean, and suggestions for how to fix them.
>        might be corrupt due to a gcc bug.  For more details, see:
>        https://gcc.gnu.org/bugzilla/show_bug.cgi?id=70646
> 
> +9. file.o: warning: objtool: funcA() call to funcB() with UACCESS enabled
> +
> +   This means that an unexpected call to a non-whitelisted function exists
> +   outside of arch-specific guards.
> +   X86: SMAP (stac/clac): __uaccess_begin()/__uaccess_end()
> +   ARM: PAN: uaccess_enable()/uaccess_enable()
                                 ^^^^^^ 
                                uaccess_disable() 

> +
> +   These functions should called to denote a minimal critical section around
> +   access to __user variables. See also: https://lwn.net/Articles/517475/

-- 
Kamalesh

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/90c16f02-9364-651e-6dea-8758a698d2ce%40linux.vnet.ibm.com.
