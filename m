Return-Path: <clang-built-linux+bncBDVIJONZ3YDRBIMQYT7AKGQEJHQTPSQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x539.google.com (mail-pg1-x539.google.com [IPv6:2607:f8b0:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id 08AFE2D47C6
	for <lists+clang-built-linux@lfdr.de>; Wed,  9 Dec 2020 18:23:47 +0100 (CET)
Received: by mail-pg1-x539.google.com with SMTP id c6sf1489531pgt.19
        for <lists+clang-built-linux@lfdr.de>; Wed, 09 Dec 2020 09:23:46 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607534625; cv=pass;
        d=google.com; s=arc-20160816;
        b=akPOsiMwuH0wVAHt1DsrY3B0D3SvZMIJ32+rTIuBHmhV3iLTnMHLAEZzQjfLIdC+Dl
         sSZ5dV0Uw4aTO5uUeGyuIWNonKABvT1njoQmFCs4da/zRFSIwCRJx2puoKlAQyIDaytV
         I3tQlyYJLJEaePB0BVpeiHTtuOrMU36h3TW4l5TQDUy/u9mHg3ii6m2U/m0NmmbbAJcM
         0afJz1OkcroghFGRv7YOT7a8wSC+ShXWsA8frOT3tFabrIkHQ8dt48iU6jvc37PJofcf
         EjsC6T3NVnFtwb7ygoRVO2QMaCt96aZhDJzVJ3Q2OZgrLoDFQ+V6L1DXNmvDaXcin7Rb
         xgTw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=L0t4WdT6e/nP9n4t9VkQfKZONLwqh7fFWWr2wJz8Gbo=;
        b=Cq4XUqSS5+tGNGBBWOEiDmWzMBrZVcWI3RYOTTo924VA7zttiHfAcE4x6b4JhJ49Vb
         NBSpeDiY8F7fO22aC1Xa+NsPghxNy7uRS/ELRNdjA79/w3mP0Q53M7RMhQm4qfTbKG4G
         nOYHIZUJP45hjozC3HmfUk6H4Huy5sPhKpl4m+DYaTMBSDB3EGaQMSnKgNWKT3fo5oqd
         DBIaB20v+4YPYmsYclWsdvfqYuNURRlKgeE29w9KnvDCiYg4dlxe3n0swTIeoJQnIrk3
         F44Xpo/bk08w1+BeqWEB6qpF7qrKoKLvpLYFsQvYJTWT7xP9ewlC3nQXyPhWP11dcsTf
         TX/A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b="o/Z8E/8S";
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 156.151.31.86 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=L0t4WdT6e/nP9n4t9VkQfKZONLwqh7fFWWr2wJz8Gbo=;
        b=Nkr8RHq1uqAF7V1OF/hcgFEMgA9yxsvBCJjo8Om9Hrkn7Rq7HpaX0r3+1TsEnOh6SH
         FegFOy+7ux0/S0UsZ8GFv4ODk5gkQwMLUs5/md/dM9T63iXXLJZmmpgbKXbOSFvtyZoM
         NmSBsMOdj6jJ38vdTRD93t3lmuHAvOsuAftNdB01g1b4SPG0d0eFnFe3FcLIVYJkCd5/
         PFnOsHS40Jgpcb2Wov+MVkFd+4hgZFNrfcqJF+AnyNPOh/miCiAiI/A8lKHprqnqmvwh
         PrR0Y/MrIhM5lqWbuZ56HqPj8iUsWGWmV1hBT7TEMQLPejd/AinolccZftOQjPXrbR7A
         T48g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=L0t4WdT6e/nP9n4t9VkQfKZONLwqh7fFWWr2wJz8Gbo=;
        b=QpKXKV4Ku9n44rFi1RN+iT0mEqQpF4MUKoTr6s8PRkwg/WARSOBJVdfpRRHmz7z8Ab
         fT7BgVHf6YPcJ/LJ/R4u8YoXNiaK3Ggb4ul0kAnu+8AndA3XmxN2MOaFUo+epTZFsWnp
         ILp5ZPMVBYgCzoJkNQc5H6wSCq6CFN8sU6pHoQmYzeqvS28gamYjfO1d0H4LLk6GSPpj
         SkZpzny8PLon5vKcWW312PqvYnZ/onFnZwrt3nQXopA86RVDkQ3wuZElLPbOrjEQ9Ni9
         Vl5TyNQi9oxITMfj9vX1CK8lMM0nTyEetvpTcCfzcxEmWEqiRRat19ntkyRpNlpodFxZ
         8qiA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533tDZa8iw8LY/7IxqnMdQWiMU+/bmSuUeAWi28rxme+8BY83FK/
	uAkdJkiHeZPuSdQAgqUIZO0=
X-Google-Smtp-Source: ABdhPJwQ+JmogsCL9x9uohUYVSDkIGZSsN6nn2/zqzlBtDl5zky/Xazrm581IEgNx4TumCBGFziOzg==
X-Received: by 2002:a17:90a:3cc6:: with SMTP id k6mr3138812pjd.204.1607534625812;
        Wed, 09 Dec 2020 09:23:45 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:8bc4:: with SMTP id r4ls1146500plo.4.gmail; Wed, 09
 Dec 2020 09:23:45 -0800 (PST)
X-Received: by 2002:a17:90a:a786:: with SMTP id f6mr3199141pjq.104.1607534624945;
        Wed, 09 Dec 2020 09:23:44 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607534624; cv=none;
        d=google.com; s=arc-20160816;
        b=hsf0ELliRUsCR7TQMv8/CMLgd4jUYr8dy5sut5x4hGTb2KgeqNrZTQvKQsn8XHb1zb
         MYtSZjbfEOXkGV8+OjD4bl7VOiZZycqgU7wMqYgLprYg8VKEt/rt/BrGHH8y9biI0FW9
         427lirQi8EHZ8+5KbYV/t2TKglpJW2z7/6avv5ktfoYb7q0E8UXfU9J8/IiE2o0vdaSg
         zzmnEjOO9yi/7v179ILGcy2cvQYUbhoRDgk8Ph3FgluaeW1+YPsck4svVhyabjyiNX1Y
         oQcvUoceE4ujhvjpx+t1cHhWSdL+q+t0PAsZMEUhseJiqCFIqTl+b2iT6z053r+gQbfS
         KN0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=5Zx6gGYBv1twjEiZEeKE229v8R8lxWyd3YNzIzSTGe8=;
        b=vtbrykt6aFUCrYdj+p6xDSPJNHImILhx3w8gNLKmi3+kgDev0qHVLl5OvQZriigyrA
         B27EFj4IovuMNkbXgRZE3gjrka6Y0QQiu3+qR/BnHy8IoJ8wV81Cwwf5IiNqQzgIBLFm
         /gsN0/y1AkNnEIYpj/m3Cfmu2EJFljR7w9qjiUBM8KwmHdlGGKfif6wN2+Kb9Rs0E05u
         mLnEtdhVAcaApwLru8QMfU1VeY1OXmwlVtJMEyBvRstjb+4l2q5MmFUySR5UWYtqSu0u
         N5qAbLy71nNdnjVA+HZX8bi4Yp2cvwf3YejjGgJJm7UVpLneKtgTbk82Z07F6VM6IUMH
         vMnQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b="o/Z8E/8S";
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 156.151.31.86 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from userp2130.oracle.com (userp2130.oracle.com. [156.151.31.86])
        by gmr-mx.google.com with ESMTPS id z10si163631plk.0.2020.12.09.09.23.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 09 Dec 2020 09:23:44 -0800 (PST)
Received-SPF: pass (google.com: domain of martin.petersen@oracle.com designates 156.151.31.86 as permitted sender) client-ip=156.151.31.86;
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
	by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0B9HJwqh078310;
	Wed, 9 Dec 2020 17:23:34 GMT
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
	by userp2130.oracle.com with ESMTP id 3581mr1a3g-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Wed, 09 Dec 2020 17:23:34 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
	by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0B9HKqhf099961;
	Wed, 9 Dec 2020 17:23:34 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
	by aserp3030.oracle.com with ESMTP id 358ksqdjms-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 09 Dec 2020 17:23:33 +0000
Received: from abhmp0005.oracle.com (abhmp0005.oracle.com [141.146.116.11])
	by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 0B9HNUEM017666;
	Wed, 9 Dec 2020 17:23:30 GMT
Received: from ca-mkp.ca.oracle.com (/10.156.108.201)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Wed, 09 Dec 2020 09:23:29 -0800
From: "Martin K. Petersen" <martin.petersen@oracle.com>
To: Nathan Chancellor <natechancellor@gmail.com>,
        Jaegeuk Kim <jaegeuk@kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        "James E.J. Bottomley" <jejb@linux.ibm.com>,
        Arnd Bergmann <arnd@kernel.org>
Cc: "Martin K . Petersen" <martin.petersen@oracle.com>,
        Stanley Chu <stanley.chu@mediatek.com>,
        Asutosh Das <asutoshd@codeaurora.org>,
        clang-built-linux@googlegroups.com, Can Guo <cang@codeaurora.org>,
        Avri Altman <avri.altman@wdc.com>, Bean Huo <beanhuo@micron.com>,
        Bart Van Assche <bvanassche@acm.org>, linux-kernel@vger.kernel.org,
        Alim Akhtar <alim.akhtar@samsung.com>, linux-scsi@vger.kernel.org,
        Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH] ufshcd: fix Wsometimes-uninitialized warning
Date: Wed,  9 Dec 2020 12:23:14 -0500
Message-Id: <160753457755.14816.4979467058172336849.b4-ty@oracle.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201203223137.1205933-1-arnd@kernel.org>
References: <20201203223137.1205933-1-arnd@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9829 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999 suspectscore=0
 bulkscore=0 malwarescore=0 phishscore=0 mlxscore=0 spamscore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2012090122
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9829 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 mlxlogscore=999
 clxscore=1015 malwarescore=0 priorityscore=1501 adultscore=0
 lowpriorityscore=0 phishscore=0 spamscore=0 impostorscore=0 mlxscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2012090122
X-Original-Sender: martin.petersen@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2020-01-29 header.b="o/Z8E/8S";
       spf=pass (google.com: domain of martin.petersen@oracle.com designates
 156.151.31.86 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
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

On Thu, 3 Dec 2020 23:31:26 +0100, Arnd Bergmann wrote:

> clang complains about a possible code path in which a variable is
> used without an initialization:
> 
> drivers/scsi/ufs/ufshcd.c:7690:3: error: variable 'sdp' is used uninitialized whenever 'if' condition is false [-Werror,-Wsometimes-uninitialized]
>                 BUG_ON(1);
>                 ^~~~~~~~~
> include/asm-generic/bug.h:63:36: note: expanded from macro 'BUG_ON'
>  #define BUG_ON(condition) do { if (unlikely(condition)) BUG(); } while (0)
>                                    ^~~~~~~~~~~~~~~~~~~
> 
> [...]

Applied to 5.11/scsi-queue, thanks!

[1/1] ufshcd: fix Wsometimes-uninitialized warning
      https://git.kernel.org/mkp/scsi/c/4c60244dc372

-- 
Martin K. Petersen	Oracle Linux Engineering

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/160753457755.14816.4979467058172336849.b4-ty%40oracle.com.
