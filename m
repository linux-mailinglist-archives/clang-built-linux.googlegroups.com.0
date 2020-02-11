Return-Path: <clang-built-linux+bncBAABBNOLRLZAKGQEW2AJAKA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3e.google.com (mail-qv1-xf3e.google.com [IPv6:2607:f8b0:4864:20::f3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 5462C158F63
	for <lists+clang-built-linux@lfdr.de>; Tue, 11 Feb 2020 14:01:42 +0100 (CET)
Received: by mail-qv1-xf3e.google.com with SMTP id b8sf7103591qvw.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 11 Feb 2020 05:01:42 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581426101; cv=pass;
        d=google.com; s=arc-20160816;
        b=g87P6q95M9xcOhiDlGtRMRh98U2hX/1co1lK1Py4SnLB5GvRhUwiO3HEOpJ9Ukv/sT
         BG3pIw36PQo5752OkVjzQv/ArOOwRO3lMB7cqKSvl8GKYFlef3p6aKV8F688+0yvDwC8
         GXKVLA+1ZMD6SUg2iMngxRI3n1UoBKqmzrb71UdKYehI9/LZ9CnvHopqJqKDrlPQKvFq
         e+nifnkC4YIGM4faE2C4oQE52mUKvDGWFlHQYu/jURGY8n5wTZHUldDhsU/f9MVRMX5M
         /0WGt4G1/Tfb/XfM6Z3g3aWN8JIhZMbCIZ5ifjOM20H+7Zyt4GEJwxRV7r4NBQj2GKVc
         /Rww==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:in-reply-to
         :content-disposition:mime-version:references:subject:cc:to:from:date
         :sender:dkim-signature;
        bh=8nUfAzPAC7xNrtQYRtfULu0KaKjF8wsUofG3aumO150=;
        b=NeiT05ybgW7uHsomyyq+UOhfFh9YvPTEeJsQhS3nPbqrinLdMW6WwNqYBsbYl7hH5G
         /hgUxfOcOSHMUrcT79OhzlxdOYA5U/XqMWzmKrPEhXP0rMg3aA70eMrcjFkLjaqAMwTA
         +hWRIi9JLTxj6K4mySv+g2HyYADknMS23160AwY6Oqzm80CfCQAq1Tjfb/wu/zauvf6s
         GPLBdizszQhJ8CO6MlzqsPFMwLWaknbjtZOakonr58GKpJGJB21KNSnQVSs8J/QMfS/G
         XuKbVsblRlJz2nE4wzpgL5Pw/xlK6ss7vbvqQCofhLdI9KfZ9xzy97OBOJqWBlD19lnT
         yP7Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of gor@linux.ibm.com designates 148.163.156.1 as permitted sender) smtp.mailfrom=gor@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:references:mime-version
         :content-disposition:in-reply-to:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8nUfAzPAC7xNrtQYRtfULu0KaKjF8wsUofG3aumO150=;
        b=FNGC2lW8aWpEHuwbnwmytYsmo8psZcIXo6UmAWTIchfABUfO8dNXeo236rVM4uPLF+
         3MH2UtoBnP8zUxwrh562con5UOCAJUBdTX/e/Pen2KJ+PZBOdMxrIUgur+eK2wz6WnBS
         55qQi1oy7L8E52UR00KzHSsaIHV3+y8aEWo4JY0KRfYdEYfWfmqhAJX8KrlAu9GylGs2
         P25PRi5FhlcwaPq864vfFAtK9ywALUVTQLk0EnCcwqG2i7Blfszs/CqLit/YZ5sjumDA
         J2t1J9774+eCg0aYT+aTg0MEaAJXdbFhy27JW8xbXdHVR4tdUs68nVHO9ZpefEkkz07a
         JxgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:references
         :mime-version:content-disposition:in-reply-to:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=8nUfAzPAC7xNrtQYRtfULu0KaKjF8wsUofG3aumO150=;
        b=dUbBZ2BMp3dMr307KJfgSe2RPpsrDDsStk4ru8Fj4xu4knKbvgjEnf4rZgyd/vucJ/
         UY7k3AAEcbLX27xzxlu1vIlc8b4dzDHugQwLLdAfuBJZf2dycnAoqfubjovun+pa2c79
         uRwoKlMDKYuVFDJtlUqU3R2xYDrxEaW68mKCo/vEYKrJnduCJaXvbBpH0X+Uswk7Hrak
         WjF19l6+VakPZu7umWHHnMwjDwBJXJI2SJbgMtpUBjBlRk83UKsJRSXXNWp8rfzZDrCK
         sSkYlLBNqrSK8XGom4h4HJLtcB0tviO1U5Vb+gpcVcEOWgQqEl58xpNePRggeXnddXkN
         /Yjg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAV0h6/lHUeiF/DaPybFzx1/UrdA8Q50NTCeq4tZYr7OfAf+tdRE
	VgYqEc69MB1xQiSgLPnQZ0s=
X-Google-Smtp-Source: APXvYqyEzVGQqP5QDSJ9aMkARyU5lYoTbFYEk7ZkHHGMxeqVx34mkE7cHd9wQ3hoaRs+y13FDeeHZQ==
X-Received: by 2002:ad4:514d:: with SMTP id g13mr14500020qvq.190.1581426101334;
        Tue, 11 Feb 2020 05:01:41 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:6116:: with SMTP id v22ls1693913qkb.8.gmail; Tue, 11 Feb
 2020 05:01:41 -0800 (PST)
X-Received: by 2002:a37:e507:: with SMTP id e7mr6048871qkg.358.1581426101026;
        Tue, 11 Feb 2020 05:01:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581426101; cv=none;
        d=google.com; s=arc-20160816;
        b=TGrEkHQtZu+pBP0tKXb49NPayp9jmZnMOoN8IucgklxswBJ/wd0p5TX2Z9Pl/oaZxb
         tpi6a5MzJ7fi79LJySXHcbEKocRgBAcGBEJCdjqmniLNiphuPdUblBIojs4SBb3ljvqL
         YESH2RVRWQrdOxF9ZntaGvRq+Yo71p1gHEGSvp4xD/3HGAloUM8VzTDFIePuOI93z8CG
         LUllln+SivaUVua6igQHyoGXFqheplROS0w/FP5FLoAe6IcU/pEekgOz8TvMruhEkmv3
         tuPpEUAx9tkLm91xZg8AgJcsHuQX+CbdOh5iSOjEmD9wgE8MorzRDJnEP83yx2iP+fsb
         AG7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:in-reply-to:content-disposition:mime-version:references
         :subject:cc:to:from:date;
        bh=TcQnLjd0hiM9xY7dpbqwnEXQBnXTxLMVbY9V6yfCVYs=;
        b=PsX+iEWzPkaanJuejH6dA4iKEGAxvrTbJCZvznsn/b8nGZKptk7xLvjeVsI1V1CXyl
         oWrkAPxQxDQ3Wfsz0SHjepkwmDSyaQJRpgKVvcpE7AaoeSf8ODbYghaJsvc9AcR5u4Z3
         XUhIO8PUs6Eo/DXOapQlKdSpqOZhzkdGDA/mfqzuZ4N96YoPQ2bi0umKUIrYgNRNKWE/
         lqAcyb3+qFdHGEk5/9+jp+eq0mL/7Ui0yp8w6DS1//kYMjkfKD+OTQNxZT2TGTkGurys
         zaE95fviWZo93nX+OOuwJiylUyzA3t8/ivCI4ZpewznPmwepw71X4pMqo03dkWPxRQrv
         gaqA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of gor@linux.ibm.com designates 148.163.156.1 as permitted sender) smtp.mailfrom=gor@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com. [148.163.156.1])
        by gmr-mx.google.com with ESMTPS id l9si144087qkg.5.2020.02.11.05.01.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 11 Feb 2020 05:01:40 -0800 (PST)
Received-SPF: pass (google.com: domain of gor@linux.ibm.com designates 148.163.156.1 as permitted sender) client-ip=148.163.156.1;
Received: from pps.filterd (m0098396.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id 01BCx0iJ146503
	for <clang-built-linux@googlegroups.com>; Tue, 11 Feb 2020 08:01:39 -0500
Received: from e06smtp05.uk.ibm.com (e06smtp05.uk.ibm.com [195.75.94.101])
	by mx0a-001b2d01.pphosted.com with ESMTP id 2y1tnvwybg-1
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
	for <clang-built-linux@googlegroups.com>; Tue, 11 Feb 2020 08:01:39 -0500
Received: from localhost
	by e06smtp05.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only! Violators will be prosecuted
	for <clang-built-linux@googlegroups.com> from <gor@linux.ibm.com>;
	Tue, 11 Feb 2020 13:01:36 -0000
Received: from b06cxnps3075.portsmouth.uk.ibm.com (9.149.109.195)
	by e06smtp05.uk.ibm.com (192.168.101.135) with IBM ESMTP SMTP Gateway: Authorized Use Only! Violators will be prosecuted;
	(version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
	Tue, 11 Feb 2020 13:01:33 -0000
Received: from d06av21.portsmouth.uk.ibm.com (d06av21.portsmouth.uk.ibm.com [9.149.105.232])
	by b06cxnps3075.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 01BD1VPJ53805174
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 11 Feb 2020 13:01:31 GMT
Received: from d06av21.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 7735D52054;
	Tue, 11 Feb 2020 13:01:31 +0000 (GMT)
Received: from localhost (unknown [9.145.77.145])
	by d06av21.portsmouth.uk.ibm.com (Postfix) with ESMTPS id 108C952051;
	Tue, 11 Feb 2020 13:01:31 +0000 (GMT)
Date: Tue, 11 Feb 2020 14:01:29 +0100
From: Vasily Gorbik <gor@linux.ibm.com>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Christian Borntraeger <borntraeger@de.ibm.com>,
        Heiko Carstens <heiko.carstens@de.ibm.com>, linux-s390@vger.kernel.org,
        linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: -Wtautological-constant-compare in arch/s390/include/asm/page.h
References: <20200208125714.GA9164@ubuntu-x2-xlarge-x86>
 <1f54ae4c-8748-496b-0833-80749d8d4f6c@de.ibm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <1f54ae4c-8748-496b-0833-80749d8d4f6c@de.ibm.com>
X-TM-AS-GCONF: 00
x-cbid: 20021113-0020-0000-0000-000003A925FE
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 20021113-0021-0000-0000-0000220105E5
Message-Id: <your-ad-here.call-01581426089-ext-6170@work.hours>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138,18.0.572
 definitions=2020-02-11_03:2020-02-10,2020-02-11 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 mlxlogscore=999 adultscore=0 phishscore=0 clxscore=1031 spamscore=0
 impostorscore=0 priorityscore=1501 malwarescore=0 suspectscore=1
 bulkscore=0 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2001150001 definitions=main-2002110100
X-Original-Sender: gor@linux.ibm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of gor@linux.ibm.com designates 148.163.156.1 as
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

On Mon, Feb 10, 2020 at 08:55:46AM +0100, Christian Borntraeger wrote:
> 
> 
> On 08.02.20 13:57, Nathan Chancellor wrote:
> > Hi all,
> > 
> > We noticed that you all added support for building s390 with clang,
> > which is great! I have noticed a few warnings for which I will send
> > patches but this one has me stumped.
> > 
> > In file included from ../lib/crypto/sha256.c:16:
> > In file included from ../include/linux/module.h:13:
> > In file included from ../include/linux/stat.h:19:
> > In file included from ../include/linux/time.h:6:
> > In file included from ../include/linux/seqlock.h:36:
> > In file included from ../include/linux/spinlock.h:51:
> > In file included from ../include/linux/preempt.h:78:
> > In file included from ../arch/s390/include/asm/preempt.h:6:
> > In file included from ../include/linux/thread_info.h:38:
> > In file included from ../arch/s390/include/asm/thread_info.h:26:
> > ../arch/s390/include/asm/page.h:45:6: warning: converting the result of '<<' to a boolean always evaluates to false [-Wtautological-constant-compare]
> >         if (PAGE_DEFAULT_KEY)
> >             ^
> > ../arch/s390/include/asm/page.h:23:44: note: expanded from macro 'PAGE_DEFAULT_KEY'
> > #define PAGE_DEFAULT_KEY        (PAGE_DEFAULT_ACC << 4)
> >                                                   ^
> > 1 warning generated.

This warning only shows up for the decompressor code and purgatory which
have separate set of build flags not derived from top level KBUILD_CFLAGS.
For the rest of the code this warning is suppressed by:
Makefile:
 740 ifdef CONFIG_CC_IS_CLANG
...
 744 # Quiet clang warning: comparison of unsigned expression < 0 is always false
 745 KBUILD_CFLAGS += -Wno-tautological-compare

At the same time both decompressor and purgatory Makefiles include
CLANG_FLAGS into their CFLAGS. And this -Wno-tautological-compare is
clang specific. So I believe this option belongs to CLANG_FLAGS
rather than being included into KBUILD_CFLAGS under ifdef
CONFIG_CC_IS_CLANG. But this raises question about other clang
specific options inside that ifdef CONFIG_CC_IS_CLANG. Should they all
be made part of CLANG_FLAGS?

> > 
> > PAGE_DEFAULT_PAGE is always 0, meaning this function never does what it
> > is supposed to. Is this intentional? It seems that commit 0b642ede4796
> > ("[PATCH] s390: default storage key") added this and it mentions that it
> > can be overwritten at build time but I do not see any infrastructure for
> > doing that. Any clarification that you can give so we can solve this
> > warning would be much appreciated!
> 
> Yes, it is a debugging tool that we use from time to time. The user would then
> change PAGE_DEFAULT_ACC in the header file when needed. It was not worth a config
> option as normal users should not use it. 
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/your-ad-here.call-01581426089-ext-6170%40work.hours.
