Return-Path: <clang-built-linux+bncBAABBXMQVPZAKGQEPFEF37A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf40.google.com (mail-qv1-xf40.google.com [IPv6:2607:f8b0:4864:20::f40])
	by mail.lfdr.de (Postfix) with ESMTPS id D142816187D
	for <lists+clang-built-linux@lfdr.de>; Mon, 17 Feb 2020 18:07:42 +0100 (CET)
Received: by mail-qv1-xf40.google.com with SMTP id n11sf10648427qvp.15
        for <lists+clang-built-linux@lfdr.de>; Mon, 17 Feb 2020 09:07:42 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581959261; cv=pass;
        d=google.com; s=arc-20160816;
        b=juNZLcoGvE9a3iS0GL+YLJlQp9clLhpQi32+HxSz3u4AowY12QV/fPuM513CsSCIUW
         eH9k7c+2Q5dBRl2d+h+xFS/J+f4SQqRlKGvPJbnB8wJJVG9iQRFbYEqyeFEJ4jdiGSau
         jEOPFm/lYJ7tIf7UuLr4xxiV8SgcCJZy6CNDtAaeaJGD3deTg+Qa9ygEzZjb9WmmfzQK
         wvI53QTKieGwiIytNzIH6mnejvmtuBRlP9BwBBxHetL+DB9SfcTqlDTlxDLmgPMP8vs9
         n0u8z7JD2xYTzSnEmIZ1HtgCnGelnAYTflc88WqqnotP7GUczzE69Sdakxy54gt6dTvf
         c6Kg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:in-reply-to
         :content-disposition:mime-version:references:subject:cc:to:from:date
         :sender:dkim-signature;
        bh=ruHY8cL9F5glhDa7eeCbqJSdBsYsrkFACd6axpVKO1A=;
        b=uEjGdxVPYT4P+hFTEz7MeaWGhj2gt5YzNtMT8uhWThZYdqWt6gRdbxd+2gzrDoSiId
         cXZd+y2RBhKuUy1aaeFD1nHpLApxasgmHCAJ2gNpTmTjUyvk3sqCQGy1/jHknJ57XO4A
         94CpSjBVHtaZzddPYEtHPesA5P8+VMwTtoFh8AgiA0lcwk/CWMrQD7IVPzNDglKqt804
         puR86AGi8AiwItdv6lePtnZOWRFrN5TxQvmmIVnehNLccnI2ZB2/OLhiS7UzDP3ZzKnk
         DkbaiFPtosR9tw7wiITBrxEugriE6ErRcdQDEca7RKcA1YABZCBs/votPoq+wcaI9sdh
         89pQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of gor@linux.ibm.com designates 148.163.158.5 as permitted sender) smtp.mailfrom=gor@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:references:mime-version
         :content-disposition:in-reply-to:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ruHY8cL9F5glhDa7eeCbqJSdBsYsrkFACd6axpVKO1A=;
        b=ZkyiAhEqOdEcoI5GPAnxdUy2Qm2dz92h/OCH/ysvJ1ZWkrJt/18RU2/kxKMl+zbQbO
         CFDZ8ct60sPZOfG7Y9CJ396RIrQC+Hq8XK3fUPvi4+/Oyoaiol2rpgAkDTSFg8X2cKAa
         wZDstzdQ5QQyVd/j3lTH9RvEa2Pt+MJZN668kuaHFw/ik78RJ4ukuuN94aZ617crgXd/
         CoLFaKyqdzMHE74ORP9U6923+71FJDtWzd0lY9PMNB6og+T95AL+j2N2spmP5rb5ZCW4
         3RxASUhuCSDA7ijuf+rW2l2HOUwJN6b0ZcBOD1g9kK+N7jUa9Yh3PxrFphgNve7EiuaA
         rMXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:references
         :mime-version:content-disposition:in-reply-to:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ruHY8cL9F5glhDa7eeCbqJSdBsYsrkFACd6axpVKO1A=;
        b=mv/DX/DEXvVCZQJNbRKjWEb4ocn7AcXUFGBaf4ZJLiK2m/l5aV8bYvSmKIswzvcjyV
         MD/sZdMria2CxqMyLMeOBbKh+27BZvUJrTigT8fj0SrjRr9c34WKUh3gVpRn9PFz1KCe
         yakg2TIYiaLAaBCxEMErqW0p52Ha4e8AGwtV3igCoSGvfhtTXDH8nWHJhj9u1zMXiOjc
         fHX+5lBhxxpi+/A8wMARYgKc4ajR29vcGEKq1SvU2TOExrFAmphYOEgWvVmclkC0OkWl
         zAOKuna15e9xzX3atSoTE5QUIVYeAkdYA043cAtH7DAiJP55EJvQonUtK549NVPnZZCo
         rceQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAX0oBBSE0IUhbNMln2GIXnj69G9FTepFHfSB54Fa1vahA7DI94/
	b1pfxmphcxAGbLgcHftiY3U=
X-Google-Smtp-Source: APXvYqz2W2nffgIhU56AHUNMikdSS7kone2QdPH0BM4fc/41XJS9uAA7iBsvgLJM1vdPK2VYWqKaWg==
X-Received: by 2002:ae9:eb4b:: with SMTP id b72mr14610213qkg.316.1581959261689;
        Mon, 17 Feb 2020 09:07:41 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ae9:eb0c:: with SMTP id b12ls5212837qkg.11.gmail; Mon, 17
 Feb 2020 09:07:41 -0800 (PST)
X-Received: by 2002:a05:620a:247:: with SMTP id q7mr14871231qkn.199.1581959261401;
        Mon, 17 Feb 2020 09:07:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581959261; cv=none;
        d=google.com; s=arc-20160816;
        b=m1AAMMgT6hfMhL7tKGzKaI2QKOkFOvqAjzw2i4ZaZDTcdE4d6merDDDKHItH9MHTD+
         N64/URm8/hEUE+cP26Uvx8f3miWJWL0Vvd/j9zgFoxzctKrZ61vdf14aqUkRuyo0Bj5E
         kAJF3IWGe2ftVAcKF+TykbG2dA9kAPDJiB5hGv9+BQFHj3yrDxr8wThz1/oLv1457rrd
         Oe68c/OoxPiryF38EA7f2UOKPqACwbbuJUgWfbGqD6MHApvZ5YNSfod5v5oVXgc6FqYX
         u7S9ykvO9UXCn2/e1c98hyftdwnjMtGO9sk/L/JxT9BajkMOTR7CCYQYw3n6jChwA5L6
         ZsMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:in-reply-to:content-disposition:mime-version:references
         :subject:cc:to:from:date;
        bh=axJxrCQrgSCw0ypzmp/r4DKjnBEUoosAYdEdvFxKUyM=;
        b=xsnwgSX4k5HPEEbTVAbJRlmC2zTMkRN707+hMXJdM+PBwbM8+8sIB6AcH+AAtpw+Zs
         PzBPnhIQbSMxCmqVZNVDcIt0y1W3PNntVlGUHPEhDEDg87lR33YhtNDM+/lY1hKHJlxp
         ahbkjsCHLrCJTitSZ9b1TOiMdnWTlza8G7g5v3ZKATyhe2llfmqZ4KEXfMNlEX3JHpXR
         rQbw2WujpeS69+I/NvTC0MhWbwSsPhKSdEXO2qHIdfvjxgJS9rewMHiakWgxC+YzkRsv
         FVpEEajEHRIHmKu4CxJOe53xWIB7TE4VLTF+zEs8qKoTK/dNvnPwXURr2/E+jEATe8dF
         UgPA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of gor@linux.ibm.com designates 148.163.158.5 as permitted sender) smtp.mailfrom=gor@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
Received: from mx0a-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com. [148.163.158.5])
        by gmr-mx.google.com with ESMTPS id r62si55677qkc.6.2020.02.17.09.07.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 17 Feb 2020 09:07:41 -0800 (PST)
Received-SPF: pass (google.com: domain of gor@linux.ibm.com designates 148.163.158.5 as permitted sender) client-ip=148.163.158.5;
Received: from pps.filterd (m0098417.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id 01HH4FNH089654
	for <clang-built-linux@googlegroups.com>; Mon, 17 Feb 2020 12:07:41 -0500
Received: from e06smtp05.uk.ibm.com (e06smtp05.uk.ibm.com [195.75.94.101])
	by mx0a-001b2d01.pphosted.com with ESMTP id 2y7uafrwj8-1
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
	for <clang-built-linux@googlegroups.com>; Mon, 17 Feb 2020 12:07:40 -0500
Received: from localhost
	by e06smtp05.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only! Violators will be prosecuted
	for <clang-built-linux@googlegroups.com> from <gor@linux.ibm.com>;
	Mon, 17 Feb 2020 17:07:39 -0000
Received: from b06avi18878370.portsmouth.uk.ibm.com (9.149.26.194)
	by e06smtp05.uk.ibm.com (192.168.101.135) with IBM ESMTP SMTP Gateway: Authorized Use Only! Violators will be prosecuted;
	(version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
	Mon, 17 Feb 2020 17:07:37 -0000
Received: from b06wcsmtp001.portsmouth.uk.ibm.com (b06wcsmtp001.portsmouth.uk.ibm.com [9.149.105.160])
	by b06avi18878370.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 01HH7ZNv46727478
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 17 Feb 2020 17:07:35 GMT
Received: from b06wcsmtp001.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 7F33CA405B;
	Mon, 17 Feb 2020 17:07:35 +0000 (GMT)
Received: from b06wcsmtp001.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 420EBA405F;
	Mon, 17 Feb 2020 17:07:35 +0000 (GMT)
Received: from localhost (unknown [9.152.212.204])
	by b06wcsmtp001.portsmouth.uk.ibm.com (Postfix) with ESMTPS;
	Mon, 17 Feb 2020 17:07:35 +0000 (GMT)
Date: Mon, 17 Feb 2020 18:07:33 +0100
From: Vasily Gorbik <gor@linux.ibm.com>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Heiko Carstens <heiko.carstens@de.ibm.com>,
        Christian Borntraeger <borntraeger@de.ibm.com>,
        linux-s390@vger.kernel.org, linux-kernel@vger.kernel.org,
        clang-built-linux@googlegroups.com
Subject: Re: [PATCH] s390/mm: Explicitly compare PAGE_DEFAULT_KEY against
 zero in storage_key_init_range
References: <20200214064207.10381-1-natechancellor@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200214064207.10381-1-natechancellor@gmail.com>
X-TM-AS-GCONF: 00
x-cbid: 20021717-0020-0000-0000-000003AB0014
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 20021717-0021-0000-0000-00002202F820
Message-Id: <your-ad-here.call-01581959253-ext-9953@work.hours>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138,18.0.572
 definitions=2020-02-17_11:2020-02-17,2020-02-17 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0
 lowpriorityscore=0 malwarescore=0 clxscore=1015 bulkscore=0 suspectscore=0
 adultscore=0 impostorscore=0 mlxscore=0 mlxlogscore=999 phishscore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2001150001 definitions=main-2002170139
X-Original-Sender: gor@linux.ibm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of gor@linux.ibm.com designates 148.163.158.5 as
 permitted sender) smtp.mailfrom=gor@linux.ibm.com;       dmarc=pass (p=NONE
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

On Thu, Feb 13, 2020 at 11:42:07PM -0700, Nathan Chancellor wrote:
> Clang warns:
> 
>  In file included from ../arch/s390/purgatory/purgatory.c:10:
>  In file included from ../include/linux/kexec.h:18:
>  In file included from ../include/linux/crash_core.h:6:
>  In file included from ../include/linux/elfcore.h:5:
>  In file included from ../include/linux/user.h:1:
>  In file included from ../arch/s390/include/asm/user.h:11:
>  ../arch/s390/include/asm/page.h:45:6: warning: converting the result of
>  '<<' to a boolean always evaluates to false
>  [-Wtautological-constant-compare]
>          if (PAGE_DEFAULT_KEY)
>             ^
>  ../arch/s390/include/asm/page.h:23:44: note: expanded from macro
>  'PAGE_DEFAULT_KEY'
>  #define PAGE_DEFAULT_KEY        (PAGE_DEFAULT_ACC << 4)
>                                                   ^
>  1 warning generated.
> 
> Explicitly compare this against zero to silence the warning as it is
> intended to be used in a boolean context.
> 
> Fixes: de3fa841e429 ("s390/mm: fix compile for PAGE_DEFAULT_KEY != 0")
> Link: https://github.com/ClangBuiltLinux/linux/issues/860
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---
Applied to fixes, thanks

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/your-ad-here.call-01581959253-ext-9953%40work.hours.
