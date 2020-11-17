Return-Path: <clang-built-linux+bncBDVIJONZ3YDRB5ETZX6QKGQEA7OJCCI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73d.google.com (mail-qk1-x73d.google.com [IPv6:2607:f8b0:4864:20::73d])
	by mail.lfdr.de (Postfix) with ESMTPS id D025A2B588F
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Nov 2020 04:56:37 +0100 (CET)
Received: by mail-qk1-x73d.google.com with SMTP id o25sf13232229qkj.1
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Nov 2020 19:56:37 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605585397; cv=pass;
        d=google.com; s=arc-20160816;
        b=UHxADIhtzLlu6Z9flJxGQkSkgkC9leDtxGF2GlM6BkazsXAl7kHt3UahjrOgckNnb4
         D3HBvnnRL5qOn5jcD9WzlspKqI7VXLB6GKFJJGZ8Q74oEJq8O8HSSIuxvBrKmcCgnmkI
         dzReXXScmRo66l2L3eoZEUsPQd4RXLJkS4/pxwIrE66J+aQ2JXEw7ihaaf5aoKQXb0Ux
         TrpkU/PM/G0eJY3eOyEynVQx9hlKabHqszeQmFQQnaz0dISjKpvgIEQ3XOYyJYU+oIvX
         jwCenZ1NNW9kg0IxZ/PjROoshuaui2aKH8jHyNHHEsYLq5jp0j0J+rne0fMNtsM6tMSJ
         sopw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:in-reply-to:date
         :references:message-id:organization:from:subject:cc:to:sender
         :dkim-signature;
        bh=N5EstxArL2EENSlPgYfUDlkLyw+quplIGZRW0uhmLro=;
        b=vJvByL1UYaqNh8ehIzrt1NaCYE25wJahRALq72OBwE1X/o81dV6QivW28dONnKyR3T
         Tc2Di1ofzYPXjpqZcNS9iuJ2adrEzkLIsGLgxi2PTCTTxuKo0FJf1hN6RLxUN08JSP8u
         5pIrb8/shOXSVd7AfK1hqU6olRSlGGxT3GY1OVwF3A1f4hcRK10eL01qrpZeEOkQQPs3
         +cQF2IAM0yRT/VKtib+4ZbhDvWLHErAApcI64BgXGR8XEuCXlAgTRCEaj3wwKJN7pq68
         pj1xggrS5CMa/krBQjTN2XMKyYn7h2syo71FTHbJOZE/ke11PIiN2h5i1zFZBoxluMxg
         zNfA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=XajkD24v;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 156.151.31.85 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:to:cc:subject:from:organization:message-id:references:date
         :in-reply-to:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=N5EstxArL2EENSlPgYfUDlkLyw+quplIGZRW0uhmLro=;
        b=Dmaf0v7KcUPRvUyRUkGce31dYmBkXLaRXtCSVnFpJ/vZemkuofKooFxJHw8NXBBbYF
         eQhXMXhkg+ZcLwPKDc4f3gJlGTepGKQUQ/d8LSZqm/h8DbXuvkfQj5NBxG/mNOTXiLfo
         hYUiSaE6s4q0Qlwivj9wHWZpRAR91q4LitR/j12wQtg++m298iasa7GhI5x7iUFaMLM7
         mqyhf3Y0m63WR73ZesX3HjsZwjM4kUwReLBYdo6UiXnZb2DIaJ7CSiYqtbkPk74+yN8G
         UerDvUNeKv1WGG9BoBCghBRnID+RLWHAkIHf9hhNEwgt24XYP8iTDwKdgTgn+pIMwlW0
         DkJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:to:cc:subject:from:organization
         :message-id:references:date:in-reply-to:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=N5EstxArL2EENSlPgYfUDlkLyw+quplIGZRW0uhmLro=;
        b=hV6px/3Umdu+i2WABlKVn/zkiFSQpn+MmqTqp9cYEXlapecZcVRXc8Vx0/TQa4ZOq0
         2SFLrmSmIOQvwyaNQ2P+orafPj8+7ea+KwPcnQAp5LOSGtMrB/kCmw3cDvOMKlFtspR/
         NdalvLPk11xosxP3E8uDIkTzpvpPunQGYxCieEZIz0QDFF12eSXD6DHeN49T4hW15eVm
         ufkmiJIDvnJwenUjtjsjdp3jJvLMSB5GyjnuPeiVERfkbQvOtobiWUk7XrdVuT9U0Bx+
         6GfStTAvgSo7W1ldJYGeDT8mpLF74rZ6p8dXJf04mzunPA7+nytVUvVgcUYwPQCTOLzF
         cRxA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532Z7a4aTiFzmCbEIB0qOw9WRxZp8xTRv47kUev+gI6m66oPV2q0
	YrD9hUbFhfOmWjI46ryn6Lw=
X-Google-Smtp-Source: ABdhPJz3IBS7lJlR8m9p81GMJVFRYlVjM8htN9sxANiOin4LfNx+uEXC/4KhdavBTnFVdLxE1UUpwA==
X-Received: by 2002:a37:5347:: with SMTP id h68mr18499189qkb.497.1605585396888;
        Mon, 16 Nov 2020 19:56:36 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:34b:: with SMTP id t11ls7399605qkm.4.gmail; Mon, 16
 Nov 2020 19:56:36 -0800 (PST)
X-Received: by 2002:a37:9d8:: with SMTP id 207mr17932780qkj.318.1605585396425;
        Mon, 16 Nov 2020 19:56:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605585396; cv=none;
        d=google.com; s=arc-20160816;
        b=KTib1/Db2ctRMi3vVe5FxMBmSxK42M/JbVlJAYF4BMMLdXC24fyNw5ySbiIpGZElqz
         K5c5pmA/BV5K2bQpai2ex2Hg1r6m8ObgsuX88LgzaioEhZEd46ihL37IdlEzdfN1G8/Q
         FsBX0xe/gS8LPzHV4cj0x5R/DK7JIlG0VWpnGewYkdLQAu2J20FAt192ZPbwj21uYvV9
         hU/hZ1x8jRWop8Fs3uTU0/4xBLRqvoaCV0pO5OgymoojG0LTqY4yj4bnlhe9Z3zi7l9Q
         u8PglCqEFqhJ4+h1/uR4LxicIQDcI+xc/bjw+4ECB33I4vxD7hnfWKhVXlw1GGDH5T2n
         nftg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:in-reply-to:date:references:message-id:organization
         :from:subject:cc:to:dkim-signature;
        bh=k78HJVH6abX6dGonUUcLQUJZtzYGy/GNj74+82yaRGk=;
        b=icD3WnaP6jEU7qiyu5N+ZSREfO4CuhWcG7020I+kDnZjrLgNNqgY7HOLYdOLv2pRiY
         EuxX/e6c9NMF65Kx6dA4eMRN4AyE+4dQ1rvvwdIhSE+sSBjnuvJh9iHYBvw7Q+Bwpcz7
         kb0V7iH+fTm784HDY7giWPNtDzdaOiCKZgpg4o0ke8na6PKxUBIju6r1WU96AHGzvEad
         1hKrP4CWztnxkVIqz4yOzOG0bChJ83lj2w1ukD2rxfyfQG0rimYBpz4Ga6eDq6mbQ5hM
         ihH9AkCVTlUHbzDAt9pCvz8wLdlHlNiQ/JuVhJ73dbZmfQgltjqwpleIvOvOBmwF05Tb
         Rozg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=XajkD24v;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 156.151.31.85 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from userp2120.oracle.com (userp2120.oracle.com. [156.151.31.85])
        by gmr-mx.google.com with ESMTPS id s190si1295055qkf.4.2020.11.16.19.56.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Nov 2020 19:56:36 -0800 (PST)
Received-SPF: pass (google.com: domain of martin.petersen@oracle.com designates 156.151.31.85 as permitted sender) client-ip=156.151.31.85;
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
	by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0AH3dvHZ166136;
	Tue, 17 Nov 2020 03:56:30 GMT
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
	by userp2120.oracle.com with ESMTP id 34t7vn0cdf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 17 Nov 2020 03:56:30 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
	by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0AH3db4f117417;
	Tue, 17 Nov 2020 03:54:29 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
	by aserp3030.oracle.com with ESMTP id 34uspsu1ct-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 17 Nov 2020 03:54:29 +0000
Received: from abhmp0010.oracle.com (abhmp0010.oracle.com [141.146.116.16])
	by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 0AH3sJhq022399;
	Tue, 17 Nov 2020 03:54:19 GMT
Received: from ca-mkp.ca.oracle.com (/10.159.214.123)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Mon, 16 Nov 2020 19:54:19 -0800
To: Lukas Bulwahn <lukas.bulwahn@gmail.com>
Cc: Christoph Hellwig <hch@lst.de>, Hannes Reinecke <hare@suse.de>,
        "Martin K . Petersen" <martin.petersen@oracle.com>,
        "James E . J .
 Bottomley" <jejb@linux.ibm.com>,
        linux-scsi@vger.kernel.org, Arnd
 Bergmann <arnd@arndb.de>,
        Tom Rix <trix@redhat.com>,
        Nathan Chancellor
 <natechancellor@gmail.com>,
        Nick Desaulniers <ndesaulniers@google.com>,
        clang-built-linux@googlegroups.com, kernel-janitors@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH] scsi: sd: remove obsolete variable in sd_remove()
From: "Martin K. Petersen" <martin.petersen@oracle.com>
Organization: Oracle Corporation
Message-ID: <yq1ft5863ku.fsf@ca-mkp.ca.oracle.com>
References: <20201116070035.11870-1-lukas.bulwahn@gmail.com>
Date: Mon, 16 Nov 2020 22:54:16 -0500
In-Reply-To: <20201116070035.11870-1-lukas.bulwahn@gmail.com> (Lukas Bulwahn's
	message of "Mon, 16 Nov 2020 08:00:35 +0100")
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9807 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999 malwarescore=0
 mlxscore=0 bulkscore=0 suspectscore=1 adultscore=0 spamscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2011170027
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9807 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999 suspectscore=1
 malwarescore=0 bulkscore=0 impostorscore=0 lowpriorityscore=0 spamscore=0
 adultscore=0 mlxscore=0 priorityscore=1501 phishscore=0 clxscore=1011
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2011170027
X-Original-Sender: martin.petersen@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2020-01-29 header.b=XajkD24v;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates
 156.151.31.85 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
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


Lukas,

> Commit 140ea3bbf39a ("sd: use __register_blkdev to avoid a modprobe
> for an unregistered dev_t") removed blk_register_region(devt, ...) in
> sd_remove() and since then, devt is unused in sd_remove().

Applied to 5.11/scsi-staging, thanks!

-- 
Martin K. Petersen	Oracle Linux Engineering

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/yq1ft5863ku.fsf%40ca-mkp.ca.oracle.com.
