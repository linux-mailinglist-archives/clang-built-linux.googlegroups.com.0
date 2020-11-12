Return-Path: <clang-built-linux+bncBAABB3M5WX6QKGQEDS2GPEA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53c.google.com (mail-pg1-x53c.google.com [IPv6:2607:f8b0:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FFD52B0810
	for <lists+clang-built-linux@lfdr.de>; Thu, 12 Nov 2020 16:04:15 +0100 (CET)
Received: by mail-pg1-x53c.google.com with SMTP id t12sf3912533pga.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 12 Nov 2020 07:04:14 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605193453; cv=pass;
        d=google.com; s=arc-20160816;
        b=Htap9ewHgGMZ8sWu9RMYOMIY4ToaOdsE36MJDKQOmrlj0YQ50FhAMRFxn6tzEirpZd
         BeyYCvixMkv2hm/Y3i+7nx05isk3cXpHubcuWh2f1XRMezEbw1JAz/s8A5MCt7RpmCSo
         fbVpZvQkIWVNN0JIPQSbnK6nizMOccXsdU3l3jIxMrf/r4gkPFuDNs5l0d2v34tw3Yxk
         UWBB1JPUD16bmRixGAQ1DFelZyfL6jsDhM72HoMHFmcrz7tN5K9NCDSpkfP2Xy15qqLH
         wiu3srtPPLiBFLmu4d7UfULTJlzeT1MRbXnSciX6jVDhhrn51qFE516jkEbpqKEZ3whE
         obNg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:date:message-id:from:references:cc:to:subject:sender
         :dkim-signature;
        bh=iEsxjjUJjOVDMxM1r4ZfMKJaUvGjH4cMLzjY1Rif09o=;
        b=MWqNMCXoxKYjoTJmidfHAvLO4dNbbXLVaQPG45bVY5vv9coa/pd0YTYmw5UBrvvmg9
         eR/dKaxtAIkesz7YmbsWaCL65qLXUxvjSZm2JkMuyipgn5gYgIgOt3b8Oaw0NPqwlN8B
         45emvvzxsSdgvKmChZaFfxJN8/RmLpCgjQVOQrlyTWvQPAmFzVSKp/4S9CrjB6467MfS
         ROHl4n8o03AXJjOJF+y0s2ENpCAAprMdaaH/0FJQ8vRuzw1AKblfw1snlV17MsOhN8m5
         nLP1g6K4qFpyOrPWKVDLDALh65ApTnZzYVblD4SXQL0agvUGjXxjV20hnc7zuyx/+GwS
         lrbg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=cdoEDJJc;
       spf=pass (google.com: domain of oberpar@linux.ibm.com designates 148.163.158.5 as permitted sender) smtp.mailfrom=oberpar@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:mime-version
         :in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=iEsxjjUJjOVDMxM1r4ZfMKJaUvGjH4cMLzjY1Rif09o=;
        b=DYk+bipDj4/PTkpwwy62FO865DmUWz+5qs9fvR/rCM6bO+AJulrZzjV75LFcUHFcn3
         96h86HEQnMloMn0MngSWtyAJW0uAlItMdMUNurn8q88p4kndKXxhU5MYFijI62quckh6
         n3ga3iAM0i/sBSWIHiNpTVV4T0kVYjUExm9xhsiO82EMYJRV7t+vjOs0KKYP8ZFqcGOm
         RPwhFSL9TKH0ZKRygwqiUz/tPk4baM9EyCEdbKMqUy5Z58gljW7bLWaSnp406eqe0TDa
         Hrp3v788Zq9cjU1A6vlPpnHyIm4nmauCaXVnPuWy1vuqmzXZDupBw2sH3IHvYhipWdT/
         aTvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iEsxjjUJjOVDMxM1r4ZfMKJaUvGjH4cMLzjY1Rif09o=;
        b=MvAX55dTSW4G5RM5zIFH/mbjWmF/SW6S5B5WGHJgYNKv8GMI/ZvAOGF0AWthVfxG0v
         /CXIPUQEygCpnUINbQSsa45iQ75yQ/GNOV97N3ZqhSPzdKEdqTg6z1qGGJpm5SZR+vtj
         i7K0JRTEJOZCub9gULCOQuxHYLUqdBUsj3ygGjLiazeafF8nPz/cIQVpiuuP6Yvlxfmh
         23Qk2pLi4ch3rbqBnT0t16iRLtwWu9aFZoFgs3Nw30YkKTnyh+a+nNECjHgQlbYouqSr
         4C36JI+YYbJKMKfGjggPRrzoEvsFCWZRH2jy+VvTvHp1VKnkohxSR1bnnRzwzWbOk+RC
         hquA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5302u0JixAmTNSi0Gid6/i/BnWenI5B7NvM7f4EO5aRaoVhxsJOr
	ToEArXFQYZqqS2Vttd+KgWk=
X-Google-Smtp-Source: ABdhPJyqW02UsHbSLGo3LWpqpzZg+HyYv4MwxwSha6F1RZG4wwLMbzTAb1nFhiaLWsCS3k7bKx3d2g==
X-Received: by 2002:a17:90a:d796:: with SMTP id z22mr10542399pju.2.1605193453651;
        Thu, 12 Nov 2020 07:04:13 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:8055:: with SMTP id j82ls1119612pfd.5.gmail; Thu, 12 Nov
 2020 07:04:13 -0800 (PST)
X-Received: by 2002:a63:de10:: with SMTP id f16mr17337594pgg.423.1605193453155;
        Thu, 12 Nov 2020 07:04:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605193453; cv=none;
        d=google.com; s=arc-20160816;
        b=xUa6GHFqR0ZWOKCGHP7jaaPHdw/c9u2QIs1fvuqHqhUCuPv1x1l+YMQGpLnbWtjEOM
         +KFb+AdgjG1P5Jwdi9SJXDTrG9BPxQKZdf7U0X9iKclww0bDfCtq8JiVtKOqsKVQ7tgr
         KTYUXm1VsM1iLlaytegXmz52dX5IWLRYs/7vGPBMYbhLZPyZD6gr61+MPQmgDdqSsCAQ
         2C4LoUPBbstozKhEoH4sosnnMEQPAjs4usicg9GULWFLtI7yQ5lukfCsYhqRmQvmt9y8
         wCL323zQHDHQ0kaIENsy1B4O6MQmIKCrAWKIsFBhRuLqZEND/ZgBQEz74rymHr8UQb0g
         ccuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :date:message-id:from:references:cc:to:subject:dkim-signature;
        bh=IPujSi3x6A4jX1jC3ND/CHuY8u9bHDgcVwgmoZ6SlV8=;
        b=B7Wi+C8J5eZd+owxB5/xms6jRrpdrLeX1feVxMF/sR9h/LrmVtS3baWMeLgLUgj9F4
         R5nScQer16Mz1ICk0yr3rmitWvczkyrZAdCA02wI1p42eRTbwrCfHqfjy0TLrflbWPzT
         K+jf09q3axzjdDYbyVypuFo2MSpD1HO2dq4J8ckWYcCjclSrkH2lzmkJLk5a1DwikbKE
         Qxs9X4MrLVhoR8S5GmtI/aEanU5w70gvT6SCJAyxd5LFLcU1jimpuLc667Kz8ukeOxHA
         2qsNyz9Eq5R4CcUxmePSrEUOSHkAwmeDt2KO+n5W3t64HpOlxln8mceVZAIw1wAXRGRZ
         9B1g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=cdoEDJJc;
       spf=pass (google.com: domain of oberpar@linux.ibm.com designates 148.163.158.5 as permitted sender) smtp.mailfrom=oberpar@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
Received: from mx0a-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com. [148.163.158.5])
        by gmr-mx.google.com with ESMTPS id 80si373003pga.5.2020.11.12.07.04.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Nov 2020 07:04:13 -0800 (PST)
Received-SPF: pass (google.com: domain of oberpar@linux.ibm.com designates 148.163.158.5 as permitted sender) client-ip=148.163.158.5;
Received: from pps.filterd (m0098414.ppops.net [127.0.0.1])
	by mx0b-001b2d01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id 0ACEVmCw014412;
	Thu, 12 Nov 2020 10:04:12 -0500
Received: from pps.reinject (localhost [127.0.0.1])
	by mx0b-001b2d01.pphosted.com with ESMTP id 34s2wq8eya-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 12 Nov 2020 10:04:12 -0500
Received: from m0098414.ppops.net (m0098414.ppops.net [127.0.0.1])
	by pps.reinject (8.16.0.36/8.16.0.36) with SMTP id 0ACEW3rA015775;
	Thu, 12 Nov 2020 10:04:11 -0500
Received: from ppma06ams.nl.ibm.com (66.31.33a9.ip4.static.sl-reverse.com [169.51.49.102])
	by mx0b-001b2d01.pphosted.com with ESMTP id 34s2wq8exa-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 12 Nov 2020 10:04:11 -0500
Received: from pps.filterd (ppma06ams.nl.ibm.com [127.0.0.1])
	by ppma06ams.nl.ibm.com (8.16.0.42/8.16.0.42) with SMTP id 0ACF2k1U017528;
	Thu, 12 Nov 2020 15:04:09 GMT
Received: from b06avi18878370.portsmouth.uk.ibm.com (b06avi18878370.portsmouth.uk.ibm.com [9.149.26.194])
	by ppma06ams.nl.ibm.com with ESMTP id 34njuh5sxq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 12 Nov 2020 15:04:09 +0000
Received: from d06av24.portsmouth.uk.ibm.com (mk.ibm.com [9.149.105.60])
	by b06avi18878370.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 0ACF47v047055244
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 12 Nov 2020 15:04:07 GMT
Received: from d06av24.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 5ED6042042;
	Thu, 12 Nov 2020 15:04:07 +0000 (GMT)
Received: from d06av24.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 346E242041;
	Thu, 12 Nov 2020 15:04:07 +0000 (GMT)
Received: from [9.145.71.125] (unknown [9.145.71.125])
	by d06av24.portsmouth.uk.ibm.com (Postfix) with ESMTP;
	Thu, 12 Nov 2020 15:04:07 +0000 (GMT)
Subject: Re: [PATCH] gcov: remove support for GCC < 4.9
To: Nick Desaulniers <ndesaulniers@google.com>,
        Andrew Morton <akpm@linux-foundation.org>
Cc: clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org
References: <20201111030557.2015680-1-ndesaulniers@google.com>
From: Peter Oberparleiter <oberpar@linux.ibm.com>
Message-ID: <122d1259-19d5-008d-d290-62e22f279ffe@linux.ibm.com>
Date: Thu, 12 Nov 2020 16:04:07 +0100
MIME-Version: 1.0
In-Reply-To: <20201111030557.2015680-1-ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-TM-AS-GCONF: 00
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.312,18.0.737
 definitions=2020-11-12_05:2020-11-12,2020-11-12 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0
 priorityscore=1501 lowpriorityscore=0 spamscore=0 suspectscore=0
 mlxlogscore=999 clxscore=1011 phishscore=0 mlxscore=0 bulkscore=0
 malwarescore=0 impostorscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2009150000 definitions=main-2011120084
X-Original-Sender: oberpar@linux.ibm.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ibm.com header.s=pp1 header.b=cdoEDJJc;       spf=pass (google.com:
 domain of oberpar@linux.ibm.com designates 148.163.158.5 as permitted sender)
 smtp.mailfrom=oberpar@linux.ibm.com;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=ibm.com
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

On 11.11.2020 04:05, Nick Desaulniers wrote:
> Since
> commit 0bddd227f3dc ("Documentation: update for gcc 4.9 requirement")
> the minimum supported version of GCC is gcc-4.9. It's now safe to remove
> this code.
> 
> Similar to
> commit 10415533a906 ("gcov: Remove old GCC 3.4 support")
> but that was for GCC 4.8 and this is for GCC 4.9.
> 
> Link: https://github.com/ClangBuiltLinux/linux/issues/427
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>

Looks good, thanks!

Reviewed-by: Peter Oberparleiter <oberpar@linux.ibm.com>

Andrew, could you pick this up via your tree?

> ---
>  kernel/gcov/gcc_4_7.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/kernel/gcov/gcc_4_7.c b/kernel/gcov/gcc_4_7.c
> index 53c67c87f141..0da0aacc1f26 100644
> --- a/kernel/gcov/gcc_4_7.c
> +++ b/kernel/gcov/gcc_4_7.c
> @@ -25,10 +25,8 @@
>  #define GCOV_COUNTERS			9
>  #elif (__GNUC__ > 5) || (__GNUC__ == 5 && __GNUC_MINOR__ >= 1)
>  #define GCOV_COUNTERS			10
> -#elif __GNUC__ == 4 && __GNUC_MINOR__ >= 9
> -#define GCOV_COUNTERS			9
>  #else
> -#define GCOV_COUNTERS			8
> +#define GCOV_COUNTERS			9
>  #endif
>  
>  #define GCOV_TAG_FUNCTION_LENGTH	3
> 


-- 
Peter Oberparleiter
Linux on Z Development - IBM Germany

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/122d1259-19d5-008d-d290-62e22f279ffe%40linux.ibm.com.
