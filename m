Return-Path: <clang-built-linux+bncBCHJVF74S4BRBFEZQTZAKGQEUEJZP6A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x540.google.com (mail-pg1-x540.google.com [IPv6:2607:f8b0:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C4BB15701F
	for <lists+clang-built-linux@lfdr.de>; Mon, 10 Feb 2020 08:56:06 +0100 (CET)
Received: by mail-pg1-x540.google.com with SMTP id w5sf4973588pgw.1
        for <lists+clang-built-linux@lfdr.de>; Sun, 09 Feb 2020 23:56:06 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581321364; cv=pass;
        d=google.com; s=arc-20160816;
        b=lpwdV3zHKZcnK9l6EYtNnJrw2ZChP9gI3oY7CzsV1PA51Qe4/E7lH0PrybNobVmLEd
         Iis3bwj27JUuFW2LPpFuzGYtqGmLEN2PKdAP0N/5oKrw8Arf7wa29ySH4ebfN78JqhcV
         2B9H73/dh94mWLMvVYrgdlYU/YCeXWdDSsGcImdqUdHcdqmEIuf0KvILvaRuNvQGvY4o
         eb+mt0gxTrHVizeTV+UkO6vsKDHVtv3o/SxqcxuLqxh2D0FB/HZ5ctKHa0RYGGBHmkv/
         Uups7bduPL36PbV0WQZxWCOGdipklkYdMbZrapV4I0yRxOXNi38NjAcphGSZAxNY3s6r
         aLvg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:content-language
         :in-reply-to:mime-version:user-agent:date:autocrypt:from:references
         :cc:to:subject:sender:dkim-signature;
        bh=nBP8+p9ZtnDdZcrbU8UxgNKNF5i3gwOXiEFvqYLmk+8=;
        b=0NC3nV3XCYzyiqEbf/QRCgoMab0queE1VgmYaFxpnyfgBkMNYSPvAoh6FhbbneJYqq
         DubMxI702K7CPRC3ppLk/oenbAmDkDMCeI7EhmGeaJ0x4DquYsHzxhpl4f2TPXLtU/SD
         rHQ/ukWJd5JOFJF+rr4Jkg4zJ3xb4rN9BkPAAjcShTqg4gBJvrMjcD45YO5FgdGZd6rl
         UEOV7rYj9bFFAnOfqI0mRH6scZZAgb9DKMxwCHqDys1KlhTDoGg0urGbLKpyTg/jK5iB
         N0GGMjM5EUELqQMuxEZaDaYd7V0cc4keJ52u46KNcswb8bG/99YrfyGneWkgPu97OI4F
         GyEg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of borntraeger@de.ibm.com designates 148.163.156.1 as permitted sender) smtp.mailfrom=borntraeger@de.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:autocrypt:date:user-agent
         :mime-version:in-reply-to:content-language:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nBP8+p9ZtnDdZcrbU8UxgNKNF5i3gwOXiEFvqYLmk+8=;
        b=Dzf5nJQfF4NwfpZG5TLmmVeNMKdED1AF5aAY+JZb4Kp7OpZU6lrvIZBZhfpxylyuqz
         xKzm08/GoVqDp+0Y9ukXAs6ejFuMRgzpM7dw09ZF7kQ7tNeUmzt3Qufapi+3Z1CTKnmd
         UDxTxH9+tKkH4q7rfiu/tSTaVXAKVi9AouYCRHqeyoaOOC+y5JxB4KhzxjRZv2hwkKCF
         CREuqIHtxTVNKoIhHzTTY8OBBII3XwgpYD3+fGlmjHjrcp4r0vbgihmUFRGvW2oz4m0d
         VJvjzVF1jL5oU6Po40bnTaGnymRK6PRzaM+TdbRV6mNpbw+n2+rbTdd561aOzYhsLGLa
         33lQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:autocrypt
         :date:user-agent:mime-version:in-reply-to:content-language
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=nBP8+p9ZtnDdZcrbU8UxgNKNF5i3gwOXiEFvqYLmk+8=;
        b=qk/8XbMkfEitU167SQXSQcweFMe0hWwwnnAzLAGEqI3tGbUJb9sUHlITAro8Otig4u
         Mp4IWwEwyJboP2VrPXkAyde65DBenfTtCmTKGAMSFICgyA+NDodF+em/G9XI7MaRy6U2
         TVMXXXCLeUrklnAGqWi9zf2eD2nHP8XmrJRqbrzSO9JYSgjzLTIbpiOZX6E7+LiRucDx
         j0a94sL9nWOC7IPPPYalCy6bazWYZFMrsmAxdC8/+yET1XGNcS0n7I1MhJGIKWhmi7LQ
         32cRXUU3o/V8Fo1dslQT1r3GYTlKbwf2G75dGIrAUmrSl7kbF8OlA7eNLmla7VtXrauF
         0dJw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVt/wCRJwS/JYcRbyiQc8gsq7qc0QL0UZv2lN9ujIJNsIRTNCD2
	ljKPCVkaNspkUXBreBkTCMo=
X-Google-Smtp-Source: APXvYqxeg5/rK84uMAsrWvmdFvmPBt1SX9fLbEvdXOLfEWel3fpCbJjq5kxAzn5z9q+R2qP6RgXX8A==
X-Received: by 2002:a63:9257:: with SMTP id s23mr419731pgn.0.1581321364707;
        Sun, 09 Feb 2020 23:56:04 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:7281:: with SMTP id d1ls3505172pll.1.gmail; Sun, 09
 Feb 2020 23:56:04 -0800 (PST)
X-Received: by 2002:a17:902:d90f:: with SMTP id c15mr11853097plz.248.1581321364133;
        Sun, 09 Feb 2020 23:56:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581321364; cv=none;
        d=google.com; s=arc-20160816;
        b=A2vvL/WgqeIYBTtNQJ0xZA/cm42W5jJTqURKplLAKVmKiJq19Q9oE8Ci9vqN3qtHu7
         JS5YNTgCfCK3w8rGAlBlxnnjcvLGVYo56toSVXjqi6jRuyzbV+krHsnvhz55F0tjiWAy
         9dF/eXeeneQGFZXGqvpZQwMaTUr1gPuX9voazYBzBDMJu0nW6Fw6L+GxO0VCqHuxJgN1
         EiNmZVnL+aM4DKxmW96yQBv+7WsJ+C8XfB+4jh4aYqKkJsiJguYvZwVYDgqvrihZEMHH
         hkQuGb43beq+ew5AO64a+EAyUrIUdO4Vs2E33KKIRb1wOitLeuATsuLAdTGcL5bTUs0M
         wzqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:content-transfer-encoding:content-language:in-reply-to
         :mime-version:user-agent:date:autocrypt:from:references:cc:to
         :subject;
        bh=A6LO9hLSEfj9ND58bRLpbZwzfsMZT983IgnfHjwtLJs=;
        b=fp5e5+jBa/HHlXYsxRAnQGQOLFvCD1i8wy92bwBGxCuKCM6/lhxMnnwfRRU234xoUC
         +gUW4QJkqdiPZIDnNC0+cn+Grk84Rn5WFEKAUVbM739+czOq30xNAlidKHmHcPVO4t1Q
         nNYSkIupZ4e0UEiAs4QWiBtv4pEZ6B1AaGptO47IHCMQn4MiAO0xwvjBTBwYoPSdOK2y
         IhsC3bOH69fYRvm76KQ+NsaWtDH3RvL7Z/9OjCUgTQ8DiOn40Cw2JJCpc9BC/1V70oSB
         vVdfzhIN7/fS/W0K4lBu9NtsU8YhP5Nmbhmb9D8tnQkrUwohxEJw5GPBjDyZIRyK1WxW
         MKZw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of borntraeger@de.ibm.com designates 148.163.156.1 as permitted sender) smtp.mailfrom=borntraeger@de.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com. [148.163.156.1])
        by gmr-mx.google.com with ESMTPS id i16si848446pju.1.2020.02.09.23.56.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 09 Feb 2020 23:56:03 -0800 (PST)
Received-SPF: pass (google.com: domain of borntraeger@de.ibm.com designates 148.163.156.1 as permitted sender) client-ip=148.163.156.1;
Received: from pps.filterd (m0098409.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id 01A7sw5T038311
	for <clang-built-linux@googlegroups.com>; Mon, 10 Feb 2020 02:56:03 -0500
Received: from e06smtp05.uk.ibm.com (e06smtp05.uk.ibm.com [195.75.94.101])
	by mx0a-001b2d01.pphosted.com with ESMTP id 2y1umra9jg-1
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
	for <clang-built-linux@googlegroups.com>; Mon, 10 Feb 2020 02:56:03 -0500
Received: from localhost
	by e06smtp05.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only! Violators will be prosecuted
	for <clang-built-linux@googlegroups.com> from <borntraeger@de.ibm.com>;
	Mon, 10 Feb 2020 07:56:01 -0000
Received: from b06cxnps3075.portsmouth.uk.ibm.com (9.149.109.195)
	by e06smtp05.uk.ibm.com (192.168.101.135) with IBM ESMTP SMTP Gateway: Authorized Use Only! Violators will be prosecuted;
	(version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
	Mon, 10 Feb 2020 07:55:47 -0000
Received: from d06av22.portsmouth.uk.ibm.com (d06av22.portsmouth.uk.ibm.com [9.149.105.58])
	by b06cxnps3075.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 01A7tlFa59899928
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 10 Feb 2020 07:55:47 GMT
Received: from d06av22.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 017AE4C04E;
	Mon, 10 Feb 2020 07:55:47 +0000 (GMT)
Received: from d06av22.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id BE3E74C040;
	Mon, 10 Feb 2020 07:55:46 +0000 (GMT)
Received: from oc7455500831.ibm.com (unknown [9.152.224.61])
	by d06av22.portsmouth.uk.ibm.com (Postfix) with ESMTP;
	Mon, 10 Feb 2020 07:55:46 +0000 (GMT)
Subject: Re: -Wtautological-constant-compare in arch/s390/include/asm/page.h
To: Nathan Chancellor <natechancellor@gmail.com>,
        Heiko Carstens <heiko.carstens@de.ibm.com>,
        Vasily Gorbik <gor@linux.ibm.com>
Cc: linux-s390@vger.kernel.org, linux-kernel@vger.kernel.org,
        clang-built-linux@googlegroups.com
References: <20200208125714.GA9164@ubuntu-x2-xlarge-x86>
From: Christian Borntraeger <borntraeger@de.ibm.com>
Autocrypt: addr=borntraeger@de.ibm.com; prefer-encrypt=mutual; keydata=
 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
 nS4h0HDFPrrp1C2EMVYIQrMokWvlFZbCpsdYbBI=
Date: Mon, 10 Feb 2020 08:55:46 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <20200208125714.GA9164@ubuntu-x2-xlarge-x86>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-TM-AS-GCONF: 00
x-cbid: 20021007-0020-0000-0000-000003A8B3C5
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 20021007-0021-0000-0000-000022008D1F
Message-Id: <1f54ae4c-8748-496b-0833-80749d8d4f6c@de.ibm.com>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138,18.0.572
 definitions=2020-02-10_02:2020-02-07,2020-02-10 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 bulkscore=0
 spamscore=0 priorityscore=1501 clxscore=1031 impostorscore=0
 malwarescore=0 phishscore=0 suspectscore=0 mlxscore=0 mlxlogscore=999
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2001150001 definitions=main-2002100067
X-Original-Sender: borntraeger@de.ibm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of borntraeger@de.ibm.com designates 148.163.156.1 as
 permitted sender) smtp.mailfrom=borntraeger@de.ibm.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=ibm.com
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



On 08.02.20 13:57, Nathan Chancellor wrote:
> Hi all,
> 
> We noticed that you all added support for building s390 with clang,
> which is great! I have noticed a few warnings for which I will send
> patches but this one has me stumped.
> 
> In file included from ../lib/crypto/sha256.c:16:
> In file included from ../include/linux/module.h:13:
> In file included from ../include/linux/stat.h:19:
> In file included from ../include/linux/time.h:6:
> In file included from ../include/linux/seqlock.h:36:
> In file included from ../include/linux/spinlock.h:51:
> In file included from ../include/linux/preempt.h:78:
> In file included from ../arch/s390/include/asm/preempt.h:6:
> In file included from ../include/linux/thread_info.h:38:
> In file included from ../arch/s390/include/asm/thread_info.h:26:
> ../arch/s390/include/asm/page.h:45:6: warning: converting the result of '<<' to a boolean always evaluates to false [-Wtautological-constant-compare]
>         if (PAGE_DEFAULT_KEY)
>             ^
> ../arch/s390/include/asm/page.h:23:44: note: expanded from macro 'PAGE_DEFAULT_KEY'
> #define PAGE_DEFAULT_KEY        (PAGE_DEFAULT_ACC << 4)
>                                                   ^
> 1 warning generated.
> 
> PAGE_DEFAULT_PAGE is always 0, meaning this function never does what it
> is supposed to. Is this intentional? It seems that commit 0b642ede4796
> ("[PATCH] s390: default storage key") added this and it mentions that it
> can be overwritten at build time but I do not see any infrastructure for
> doing that. Any clarification that you can give so we can solve this
> warning would be much appreciated!

Yes, it is a debugging tool that we use from time to time. The user would then
change PAGE_DEFAULT_ACC in the header file when needed. It was not worth a config
option as normal users should not use it. 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1f54ae4c-8748-496b-0833-80749d8d4f6c%40de.ibm.com.
