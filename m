Return-Path: <clang-built-linux+bncBDVIJONZ3YDRBCW4TD6AKGQE2XQOTCI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23d.google.com (mail-oi1-x23d.google.com [IPv6:2607:f8b0:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B90628D69F
	for <lists+clang-built-linux@lfdr.de>; Wed, 14 Oct 2020 00:45:31 +0200 (CEST)
Received: by mail-oi1-x23d.google.com with SMTP id n9sf386643oib.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 13 Oct 2020 15:45:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602629130; cv=pass;
        d=google.com; s=arc-20160816;
        b=HYunXoxfcKWMZJTm/JVPVHP1lhOE4Uu7aZSgT8SPWZ4Z5WaK9mMMvHytqMUWmCLvHR
         kfJA3lOPC06Ypwx/dJlzSd7liRP9Sa0MzJLibwGH1UXjM/OhHrsX1QRP07vsX8NOkQ1G
         Euc4mcE5DXqvPsnrlpbd1sro3coQLt1q7yry3XpwHPBFDlVpDVKnTGB7ED6hz677Li3P
         lqLejA3f3R73tpdRlwW5cn/qe5AzNjQ2DhWpdLrT7Lr6EGSh91OWfXMarcuOxxETZ8sF
         9Iia7JOVNWqF507MEOthFrUTKcjl69s+28ZeLbeYxs06UiToJiLUS4RbqOzUI8+9wdes
         MOrg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=WD1y5SLqytZ7x+HPE2bVbfhlbLmVNNzRwPGkOvKcAB4=;
        b=Rnw+NNnykN0b0/x+4pY2Vxcy/wil6qaifyMxwmjhlab92n1RVrL4UDmuNSM9im0a15
         fYuip5nV6krcY+BsMKz0vdROl7agDZhNIwvGKOEF2WIpIm6/okh3GrN+BeOsoVZjDBEi
         p+7YVr197QRby4Z9ipygoFxvdl0+5bZXy+Cjr1/AHq9GF6IFXM+f0dMnNtivMhHgwTqi
         2mFJP/+W528v0iNdOZ2QEnel2qiol9STsk7gnYO8+7rBvPugjtE+qVo7I6zpCRMYHJnn
         SRxqXMkwTOuegojYh9nHzrgp5NlKwH72BlJM7wf7m4XNeVSz8QdkXrzcdvmR++WZl9UP
         5/3Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=DCrESlm8;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 141.146.126.79 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WD1y5SLqytZ7x+HPE2bVbfhlbLmVNNzRwPGkOvKcAB4=;
        b=R3mogYa2/5KxbnnSFz5X0vadZ86SYx5Lzzf+3559ppxJvJUGvntKh1xTbq7vue3rjj
         /YItFt372wwRY0mKIML5pAML1/IiCGTxo1HU7N1pJaGf2WJMXBpiXAY4k+Hp8OVaaKI6
         yOBet5qtW8W5UJEb9vzkLUpujXuTxU/s6TNyMzcU7OUSjfUO4kv8S3706nluN3EGxnh7
         0C/3+t/Kf6+pWPTPYuiVsXja3WY9Dw9pfjU1yjbTal9cdn7oOtplN7igErH42y7nMXHM
         edrThy/ZFQ1KcrHdS5+8VDBDD+8KgzX3e+FOhcv9fJtoBRjFdfJjqOfkIPCfLPN7traG
         WPHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WD1y5SLqytZ7x+HPE2bVbfhlbLmVNNzRwPGkOvKcAB4=;
        b=e29y/1C6PO9q1l5jAYDplusW8s9F7iYtXfSPsOsxel/mAlC1eMl5J0kZrfkZSV2haY
         uwlVR8Yd+AjrHXunIiMHP6hEWwDRZS3rZZ9VT5G22nJ6IWrvr+nr9qiNAFNcW1zEs64l
         CeHYCkRkrKR3z0ToLNuzyWU4QRTIY/GQe4GofWTe9EpadwiUOfDQOXFgMnxFNdzwZbhN
         FoezecJqX5lG7HwNo6zHl0/PfoOztFOjAGnh/Ux6X8WmO2cNPPa7wHs6uxUgiGLDLo/J
         A2DPxzzrbOis4QxBKPypfzJW5IK27pdk9RUjmZCMvhIu7oJz0bo07fPyuKYPgsMi48VL
         GvDw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531E+1Ga8a4xUouf5HM8ZF6O/ioo+vJiv3p7SKH4e2ZNJLJrwRP2
	x8qZUmiI90dppQj1smqLQos=
X-Google-Smtp-Source: ABdhPJxsshV9ti/WtjvnCxsqdkH3HwyxCCHSLcbGBwl2dwIfuoplJ2At3L+y7EGenZnwExfOsttYtg==
X-Received: by 2002:aca:d9c2:: with SMTP id q185mr370561oig.28.1602629130096;
        Tue, 13 Oct 2020 15:45:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:cd96:: with SMTP id d144ls243903oig.5.gmail; Tue, 13 Oct
 2020 15:45:29 -0700 (PDT)
X-Received: by 2002:aca:cfce:: with SMTP id f197mr384827oig.44.1602629129710;
        Tue, 13 Oct 2020 15:45:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602629129; cv=none;
        d=google.com; s=arc-20160816;
        b=smJiwFoKI83xaNkbIjUsALcrGAr7396lEp0W6SGp3MeWcN9co19Wa1Wrf03NNzTIry
         pAMNo+NBH8u88o9ej95rK5OJpxyBWK6nv5qIGs0YM3W0wn4/MITNCqnvNjZGv6bFB4uw
         4SZ+UYAUVagAyOfusqavAnxCBGwIX1DxA28cx9JaX2xGYrVOHJqv/B0Rb7W5TGzgVf6d
         DwFs/iERjRzNHaz9dDSkz09Muaqv5NIZoJpRC54i2p8qReTW2McO6pRaxr+uvocxYTdj
         apLTI/Jw2mU98BmhykJfogLdD9RQCnl2L9pgEevNXA5M/3wEc1dbMjEmHS09BzV5cW/w
         KM0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=ArcMjQJ2s3MSpWrq6+n/RKwMjg3fQXUIA+bfV4ABt88=;
        b=yWduqWPGlyT3byxbCv14hiUh/B1pwnTDJp7qyRJup4HIHiSoGPJI6FY2eQVvW0yeQZ
         isNqMamGQlQk8v1HaKVL757hA0mRJkzE7rLyQMWCG3jCD6j2vN8lwb3stytxnfws7XxM
         HhDE/2gU8FzRHJf8yC61oXQiiMVHVwdzzdPxxEEJmHsr8OyC8T2h70jh+4Vkb8iWCV++
         ueNvDLctRFHCbShUY4FKYfAMTrpxrhDX4GPZCq8rUhZlUYb27Yz9ho/yYIrySoNpCFoE
         X6KqJLQu84iWvSZM6rsAXTVtA9+WH0U4Tw+mD1Sx9t90fKBO1LNikEYNwqy8kyE7FOt+
         zllQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=DCrESlm8;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 141.146.126.79 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from aserp2130.oracle.com (aserp2130.oracle.com. [141.146.126.79])
        by gmr-mx.google.com with ESMTPS id p17si118689oot.0.2020.10.13.15.45.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Oct 2020 15:45:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of martin.petersen@oracle.com designates 141.146.126.79 as permitted sender) client-ip=141.146.126.79;
Received: from pps.filterd (aserp2130.oracle.com [127.0.0.1])
	by aserp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 09DMYZUR143659;
	Tue, 13 Oct 2020 22:45:27 GMT
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
	by aserp2130.oracle.com with ESMTP id 343pajucw2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 13 Oct 2020 22:45:26 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
	by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 09DMZW2w162477;
	Tue, 13 Oct 2020 22:43:26 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
	by userp3020.oracle.com with ESMTP id 344by2v0g9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 13 Oct 2020 22:43:26 +0000
Received: from abhmp0012.oracle.com (abhmp0012.oracle.com [141.146.116.18])
	by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 09DMhPRf009987;
	Tue, 13 Oct 2020 22:43:25 GMT
Received: from ca-mkp.ca.oracle.com (/10.156.108.201)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Tue, 13 Oct 2020 15:43:24 -0700
From: "Martin K. Petersen" <martin.petersen@oracle.com>
To: njavali@marvell.com, "trix@redhat.com" <trix@redhat.com>,
        natechancellor@gmail.com, jejb@linux.ibm.com, ndesaulniers@google.com
Cc: "Martin K . Petersen" <martin.petersen@oracle.com>,
        clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org,
        GR-QLogic-Storage-Upstream@marvell.com, linux-scsi@vger.kernel.org
Subject: Re: [PATCH] scsi: qla2xxx: initialize value
Date: Tue, 13 Oct 2020 18:43:00 -0400
Message-Id: <160262862432.3018.2457748538625562502.b4-ty@oracle.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201005144544.25335-1-trix@redhat.com>
References: <20201005144544.25335-1-trix@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9773 signatures=668681
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=771 spamscore=0
 suspectscore=0 mlxscore=0 malwarescore=0 adultscore=0 bulkscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2010130158
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9773 signatures=668681
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0 suspectscore=0
 impostorscore=0 priorityscore=1501 clxscore=1015 malwarescore=0
 adultscore=0 lowpriorityscore=0 spamscore=0 phishscore=0 mlxscore=0
 mlxlogscore=788 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2010130158
X-Original-Sender: martin.petersen@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2020-01-29 header.b=DCrESlm8;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates
 141.146.126.79 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
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

On Mon, 5 Oct 2020 07:45:44 -0700, trix@redhat.com wrote:

> clang static analysis reports this problem:
> 
> qla_nx2.c:694:3: warning: 6th function call argument is
>   an uninitialized value
>         ql_log(ql_log_fatal, vha, 0xb090,
>         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> 
> [...]

Applied to 5.10/scsi-queue, thanks!

[1/1] scsi: qla2xxx: Initialize variable in qla8044_poll_reg()
      https://git.kernel.org/mkp/scsi/c/21a6cd48bb48

-- 
Martin K. Petersen	Oracle Linux Engineering

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/160262862432.3018.2457748538625562502.b4-ty%40oracle.com.
