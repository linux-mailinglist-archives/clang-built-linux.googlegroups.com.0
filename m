Return-Path: <clang-built-linux+bncBDVIJONZ3YDRBAUVZX6QKGQEVP6TCEA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53f.google.com (mail-pg1-x53f.google.com [IPv6:2607:f8b0:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id BD9B02B5895
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Nov 2020 04:58:59 +0100 (CET)
Received: by mail-pg1-x53f.google.com with SMTP id s130sf13084044pgc.22
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Nov 2020 19:58:59 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605585538; cv=pass;
        d=google.com; s=arc-20160816;
        b=xaR8jqbYBCQcGRKZRp0TxRJDVMJRsur5r/mc8aysyKzvAg8XVylmgy54xWwYqS9yiO
         cPI9DJl3K0LO1UcbT2CbzLdQcEFPiJMENXTqXW2C2RrzRBB/NZTDC15FucE1KNBEctFW
         KFsldnaItiq/2Z5wUrMQO6cz0UwGdgkkUlH6+3yYweb+HgNIixvDTVqdtAyx17UK2u/T
         QijNHN2kcA0JY4AKUjxXn5monngtdElFjegFCie54DeYvzQTfyrTDpzlj6beJtXK3dEf
         rygLMNd58ARBRiRItJcY39ymgCfDaryrOn9MKqqQs+5a1Zo7mHkLLb749qhjPPmBlbEn
         Sz/g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:in-reply-to:date
         :references:message-id:organization:from:subject:cc:to:sender
         :dkim-signature;
        bh=kOknkNK0noj0G+BAdUZHeU1fHwR5VGtoHDyS7qR5mtM=;
        b=Q3Cej1Py61JtmR5D4ZkO9oyHKocnWkrv2Yd79pdECIVjzOJYzO4jkCYJvPImZteySy
         HKAiwTQKz9q6EoeiaZe47Y6g7aZNIJ7YWtxbrwxEzG2DmvPp+2mALAjwlLdbDXKSc0lv
         dnhvtfSS+bVMau6cdqXOEADURDRf7vh2pxlswLKsRYND3cOC6XaJtQncE2U0hH4u5usL
         Jtxx5YBw6l4+0JTCnKCQvDG7Rqui7wyWbvy11e3KAC+3sQjQXkviy+S3mRVTDHJ6ihio
         bPbxKV6HY3hLzFRwV2VhYWwGfZNjeWqWE13aTLwtB9sw7fNdIKxtjVL1Yu8oYj+MyA/I
         yH9Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=w2FKmWJM;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 141.146.126.78 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:to:cc:subject:from:organization:message-id:references:date
         :in-reply-to:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=kOknkNK0noj0G+BAdUZHeU1fHwR5VGtoHDyS7qR5mtM=;
        b=kic6JdH0Ya6zbV+2SSCb/l8Yo1KCvOmPeuf/yvtOlQfqX6TuqJGgQbp3EjiOXXNLr6
         Uov9UIHYBWDWUQ+49wdXb+PcU8FP1GnfNxQB64uiqWGy8euclXAzo/kyraRnVZMPjPgl
         JCXL5Q+CeszhXDZtdR3zXse7MIIlRYfFxdzY0XHcSsxAOxwwTo/ypQz6RofHmMF5M4TG
         bTQN+baZTCNQl5bH2HrFUnthvsiBh/rWGHIe39TWDRlnl+sZUKKSNkcypGvq8u9beRdt
         vbv1brB9USlw8oZdgHLQHEvf2AbCulujwDBY+buJsb+U8MVWuK+h6JGU+v+CkvzEyhlX
         rgdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:to:cc:subject:from:organization
         :message-id:references:date:in-reply-to:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=kOknkNK0noj0G+BAdUZHeU1fHwR5VGtoHDyS7qR5mtM=;
        b=W4AkGnaB+OHgtKJRQc+MXgsimMvC5zdJRWHX5CaZDw3I7Dud+VWnArtKHAu8es+RiT
         i5Od6421VFuPn9LtfELBMlX+2Xtd3MbwHqhN0QQAgpD21zONkeukai69/VjpZb3tEmBo
         qpcNTKaldsI+VU1dv4nOCG5ruOJqPwRDnKBmlHi68I/k8J1BfHRm2kIHtVo9qAC47gP1
         SzUpJZprtjbcxKVWYdLSy5aeWHRYRyRJekUFbwgHiNhQMt62O6JhchTrbPaTlF2ZE+i3
         c1HprkaLOv8l+WJfbp/28oKXpySi69TmMjPW18WxhPWPP+5cInZ5BiasPqpkKLUruuXz
         ul1w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533ZKqalDiNNJbaF4y80Ql42Vd7F+loWzBUwLuj5VVfZfhM72vLA
	e/sJ8302HoqPz9dXw9iCH9s=
X-Google-Smtp-Source: ABdhPJzLZwiGqTh1u4YHZwiml0bktVIylpBHv8u7yOO849GJcBZAWLdKA22EG7mDgRnvqHmjRBmiFQ==
X-Received: by 2002:a63:ff1a:: with SMTP id k26mr2011718pgi.167.1605585538362;
        Mon, 16 Nov 2020 19:58:58 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:5621:: with SMTP id k33ls5400847pgb.2.gmail; Mon, 16 Nov
 2020 19:58:57 -0800 (PST)
X-Received: by 2002:a65:5c43:: with SMTP id v3mr2012919pgr.271.1605585537772;
        Mon, 16 Nov 2020 19:58:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605585537; cv=none;
        d=google.com; s=arc-20160816;
        b=mslK99cpvBVJR5FFMkOfA8tSPI07d3RwMvKdLv6gaZhFKsCCKPPdpVpRwUmy46jRbP
         aZoq0y8Dz9mW/r26cQ0a8QHw3n7pUxyvJu10rj0iOT0f2kh9Nnw6dKbalGJR0xcpum0L
         LFBzUZ5c6VBjUDXIV+VGk38/BuPvKzAdbNCQYIXrmeBOmWbp/hvQFCszAZRmJA8tz+Bw
         kZjHGJrRZx95jI+yxV/9qQXKiw2I0N1xr5aWbLxWc5wgGd9xE6Oo/hGqXFm0qqe4nFgf
         Kx2vW3JfsalnvT8BsSz0uhLYrwGMXzTCx8mSv3qRzq59beRflqg3uPaC2fZ0cOEd6hOz
         zOkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:in-reply-to:date:references:message-id:organization
         :from:subject:cc:to:dkim-signature;
        bh=4uRHwmfKuuxRJtZVOun8/wC6aST5HhqMfBfPWZdhLFI=;
        b=w5Le3L0HZLwklACXqFMb5rGOaUe1QFUWs+Pknjkq/Ojqvbj3ovxIFfaE3/+I8mMCNi
         KGmJsXmHDEES1K7Hut8gv4twufatBxiwL6HIElww4TPH4P9IXw+BwM48mNU6N8Q4yGXy
         r0ietb+RH0l3XR+1bYlYYfjjaLSAAE+EWajquLzzaQrpzRHvFBMFFKC1lnUcSXOiXgX1
         bmXRwIybpk8l5frRwNlY9ZYDo3Hm1ySsPr4xcqNrdE0ptpOgZZ3Hpdg4OUVoDC7TpTJK
         B4OCf5faQ7tElJRqgAYCCHrftJ6SJy0F6b2l8htFgqidGXOKHBgusef7BzKj+0YZ2deW
         A0AA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=w2FKmWJM;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 141.146.126.78 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from aserp2120.oracle.com (aserp2120.oracle.com. [141.146.126.78])
        by gmr-mx.google.com with ESMTPS id g4si110770pju.0.2020.11.16.19.58.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Nov 2020 19:58:57 -0800 (PST)
Received-SPF: pass (google.com: domain of martin.petersen@oracle.com designates 141.146.126.78 as permitted sender) client-ip=141.146.126.78;
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
	by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0AH3fKxB138097;
	Tue, 17 Nov 2020 03:58:50 GMT
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
	by aserp2120.oracle.com with ESMTP id 34t76kre6k-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 17 Nov 2020 03:58:50 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
	by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0AH3fIIv005297;
	Tue, 17 Nov 2020 03:58:50 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
	by aserp3020.oracle.com with ESMTP id 34umcxms51-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 17 Nov 2020 03:58:49 +0000
Received: from abhmp0017.oracle.com (abhmp0017.oracle.com [141.146.116.23])
	by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 0AH3wmXN010018;
	Tue, 17 Nov 2020 03:58:48 GMT
Received: from ca-mkp.ca.oracle.com (/10.159.214.123)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Mon, 16 Nov 2020 19:58:47 -0800
To: Lukas Bulwahn <lukas.bulwahn@gmail.com>
Cc: Christoph Hellwig <hch@lst.de>, Hannes Reinecke <hare@suse.de>,
        "James
 E . J . Bottomley" <jejb@linux.ibm.com>,
        linux-scsi@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
        Tom Rix <trix@redhat.com>,
        Nathan
 Chancellor <natechancellor@gmail.com>,
        Nick Desaulniers
 <ndesaulniers@google.com>,
        clang-built-linux@googlegroups.com, kernel-janitors@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH] scsi: sd: remove obsolete variable in sd_remove()
From: "Martin K. Petersen" <martin.petersen@oracle.com>
Organization: Oracle Corporation
Message-ID: <yq14klo63ee.fsf@ca-mkp.ca.oracle.com>
References: <20201116070035.11870-1-lukas.bulwahn@gmail.com>
	<yq1ft5863ku.fsf@ca-mkp.ca.oracle.com>
Date: Mon, 16 Nov 2020 22:58:45 -0500
In-Reply-To: <yq1ft5863ku.fsf@ca-mkp.ca.oracle.com> (Martin K. Petersen's
	message of "Mon, 16 Nov 2020 22:54:16 -0500")
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9807 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=1 mlxscore=0 phishscore=0
 spamscore=0 bulkscore=0 mlxlogscore=999 malwarescore=0 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2011170027
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9807 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=1 phishscore=0
 adultscore=0 priorityscore=1501 bulkscore=0 clxscore=1015 mlxlogscore=999
 malwarescore=0 mlxscore=0 spamscore=0 lowpriorityscore=0 impostorscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2011170027
X-Original-Sender: martin.petersen@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2020-01-29 header.b=w2FKmWJM;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates
 141.146.126.78 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
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


>> Commit 140ea3bbf39a ("sd: use __register_blkdev to avoid a modprobe
>> for an unregistered dev_t") removed blk_register_region(devt, ...) in
>> sd_remove() and since then, devt is unused in sd_remove().
>
> Applied to 5.11/scsi-staging, thanks!

Actually, this should go through block given the dependency on the
commit above.

Acked-by: Martin K. Petersen <martin.petersen@oracle.com>

-- 
Martin K. Petersen	Oracle Linux Engineering

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/yq14klo63ee.fsf%40ca-mkp.ca.oracle.com.
