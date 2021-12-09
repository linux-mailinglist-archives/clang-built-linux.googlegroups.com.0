Return-Path: <clang-built-linux+bncBCC7DBWDQAJBB55JZCGQMGQE7JNGJVA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x839.google.com (mail-qt1-x839.google.com [IPv6:2607:f8b0:4864:20::839])
	by mail.lfdr.de (Postfix) with ESMTPS id BAB6446EA2A
	for <lists+clang-built-linux@lfdr.de>; Thu,  9 Dec 2021 15:38:48 +0100 (CET)
Received: by mail-qt1-x839.google.com with SMTP id o12-20020a05622a008c00b002aff5552c89sf9069770qtw.23
        for <lists+clang-built-linux@lfdr.de>; Thu, 09 Dec 2021 06:38:48 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1639060727; cv=pass;
        d=google.com; s=arc-20160816;
        b=JFHmfPo0e4WeGQKHf9AXOjkzDD8CnTtQJh3YmtAWUtvQqpyMdPOS37kyV8huVcCeOQ
         WGRieOj7uGHie50hfZDyDZj9rkhd8ZWYiCVghFgL1W5nk/dIe9jbAw1uANkMeh7LO/RG
         AvvpONyLATEPLU1k860RVOcPKRZ4hv9mY7034WRjxHE2U+aY1r91wrtcPKtg2J1JPAcd
         a1UhAtOiEG2AJD/o8rJIPk0ZD3L+Ftb4uRPSasZApUPIWrkXk0wA/uBH+6oJN77k232U
         sYBuBM4UHgRQFR1ayCZsmwznqc3b19hxAccNlgYWP/HBMIhmCKHoz9UrNN2NFQ4qCzOd
         LuvA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=YW5Ap8k17kMROXf06eypO9F/T9SYCkh6lPkHlQJK+gg=;
        b=RDYQ9Xc8UV4kDJs+k1Fo514JEgVCaHk7ZY39grEOJUt8ISii6UmrB1vxJ5ePWyz/8A
         IKzpHhuv9H1nKi9M+ub4E2nnhLJtqmbo+by1CFpQV8jyeNBNh6ZmRwccKuMQQWS56Ru/
         iU9l/tE5BQg0/kt3kGx3HBY6rPFGEqykMyRwWiF8LpZMfyca/0bHVR6zOGENvfILQjqd
         BBPoFlqfWmglzccfCHfNrxqB5/F+/IAZuFIn5F8SWQ25TwyVRd82GFrAEEYEuDE37lqg
         nF+oPgdCP9XKkI4VIMdtO+nAsdivpqhDdLFof6t6Ue9HxbVYvS0RAZUHxUNnH3m9GBy6
         flxA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of mark-pk.tsai@mediatek.com designates 210.61.82.184 as permitted sender) smtp.mailfrom=mark-pk.tsai@mediatek.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=mediatek.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YW5Ap8k17kMROXf06eypO9F/T9SYCkh6lPkHlQJK+gg=;
        b=pW8DPrIqLvZu5T7NAL3SbwsUawZFpbxnGX0HeeAAVEhaO856/zIudcpDRIMU+YCYkO
         4E2jwmv7Y1ThC8uegXjKyx2cr0bw7IqMhe6n421ATtT8ILl8S+kqRhr+rEKBDPbHOZ81
         RknaNrD311ad/c1LJhZCeo5K5tiCPbNbmziIi/qSsrGBrROJOaaVCmblSH9pzFX5Qvek
         o2MPZXDOVuYUqnR8DHr6xp4egD/8f8epe7r0/V1oZFIuPsxJt/Z9juuX7u9vTVVJIFjM
         pLUDcRUuMYU8HVcgORGCvbHPSqdQbGvDRzYJ9qDyxq78jt6f9uS+uwxeazhIydELi97M
         3vOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YW5Ap8k17kMROXf06eypO9F/T9SYCkh6lPkHlQJK+gg=;
        b=DNBJTJnjN8MKzdK5vX8uY/Gho8TcB0JxFGYbzB1BKmX/R91vlbJSrhbYVCdI8I7MAs
         C/6T3QFl55jXjeK7bfO8+78ZCUKG69uBZWo/VnGdDgM8E/dc3JH/MMZg/bjYKb7qeb78
         uKbHQSunCce7vnGNJkz7Dm2hLFnxf66Mhv6KqqAGWhW214fIPFlDv9sWWyhulNAnOyoQ
         09i4VhogejJhOQb3KU4j3Wn40+AFD+/siXdgqIxNvfv4pBjd5Uz7xzNAxDDgrNyzwhOh
         MicSYUfbaTAhkFIpSIn8N8XsP6uxirJXP8joqnY1RRFuNN13PrD/GBbtpCp4LBJpxHpK
         NhUA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530d/t4YaWXC/uZ6X41/udva4DNAO3boPgnxAHT6yvxlCW9JLFkn
	DwrhQLGfgFchFQ+Lz14rILg=
X-Google-Smtp-Source: ABdhPJyFVi9PdesLCGdbPt8VuGnsz5JuvypMU/K5Up0aNzycuE9XHyzq90CG2bK+Q+eVEE6qwnoTTg==
X-Received: by 2002:a05:6214:2c5:: with SMTP id g5mr16269620qvu.94.1639060727318;
        Thu, 09 Dec 2021 06:38:47 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:5fd4:: with SMTP id k20ls4245950qta.8.gmail; Thu, 09 Dec
 2021 06:38:46 -0800 (PST)
X-Received: by 2002:a05:622a:589:: with SMTP id c9mr17454066qtb.557.1639060726716;
        Thu, 09 Dec 2021 06:38:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1639060726; cv=none;
        d=google.com; s=arc-20160816;
        b=CgDvmkK5btBELabXgJwmAPCAUrtPRjcYXj5PqqErogT7f1VqZDtgSmMKK3+A+wR/+R
         YNMhKyCZCs8lviVL5FfrORUgvwiQUhxKoXzL0nBLvBaVuDPePGoHcERgeW7rZgr/MX/b
         YqG64F6/n2zAEMa7j8rxax9SxEkO9Y3WyJU/PHW58OkkxLJv/OTxcdmpxcEVcN/1zzOt
         pnOPUJ97MxD4XIcNdK1h9eMGKIRC1fNPZBEOcty9wo/ZXGFQlbvpdzBxy+i8Gyap2Rm8
         efdISPAZ5i3Y7ILKzPTvuARIuVgZ78nKgRIfuKBfK9BnTyzbfhc7rQep6ERNyY1phjea
         PYTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from;
        bh=4q8DB2KEfzJ/fzcxwijOe5l+D0VRHXCmqAXlDxbPWqc=;
        b=iStcPHtG3eYNlXCGnVRp59zthP6J3c/DvIiPFsOaEUkc/76Tnd94/14ckekhZiVrto
         lyriHd5aDa32N6dP9yuAg+BOKwij13BKCp5J3+++Id0TVnm1LiEIeeFNxsp12CXs46uD
         r6EFu1lQmNSedrz4yd9secV5DcsIHyc9H5rnTHRWnkqWFZdM5pvvaaFlCdmcnDLtBZ98
         1m13p3+Lde6/sFuucAsB8lT8je5wVhO/WkF0sZcLrQVhsIouzBKJmnKbEtPjXrbL7Fek
         u2yWGKW6oW7PE8/hBVKWxAlmdZIxrHH9q0UfoKUWgA8f45h19cS3rluBbiSBBS8wH3IQ
         gOVg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of mark-pk.tsai@mediatek.com designates 210.61.82.184 as permitted sender) smtp.mailfrom=mark-pk.tsai@mediatek.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=mediatek.com
Received: from mailgw02.mediatek.com ([210.61.82.184])
        by gmr-mx.google.com with ESMTPS id s4si1477470qtc.4.2021.12.09.06.38.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Dec 2021 06:38:46 -0800 (PST)
Received-SPF: pass (google.com: domain of mark-pk.tsai@mediatek.com designates 210.61.82.184 as permitted sender) client-ip=210.61.82.184;
X-UUID: 558ea62eb0ae44198d753f500b18983e-20211209
X-UUID: 558ea62eb0ae44198d753f500b18983e-20211209
Received: from mtkmbs10n1.mediatek.inc [(172.21.101.34)] by mailgw02.mediatek.com
	(envelope-from <mark-pk.tsai@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 747855209; Thu, 09 Dec 2021 22:38:41 +0800
Received: from mtkcas10.mediatek.inc (172.21.101.39) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 9 Dec 2021 22:38:39 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas10.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Thu, 9 Dec 2021 22:38:39 +0800
From: Mark-PK Tsai <mark-pk.tsai@mediatek.com>
To: <luca.stefani.ge1@gmail.com>
CC: <akpm@linux-foundation.org>, <anton@tuxera.com>,
	<clang-built-linux@googlegroups.com>, <linux-kernel@vger.kernel.org>,
	<linux-ntfs-dev@lists.sourceforge.net>, <michalechner92@googlemail.com>,
	<stable@vger.kernel.org>, <mark-pk.tsai@mediatek.com>,
	<yj.chiang@mediatek.com>
Subject: [PATCH v2] ntfs: Fix ntfs_test_inode and ntfs_init_locked_inode function type
Date: Thu, 9 Dec 2021 22:38:39 +0800
Message-ID: <20211209143839.31021-1-mark-pk.tsai@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200718112513.533800-1-luca.stefani.ge1@gmail.com>
References: <20200718112513.533800-1-luca.stefani.ge1@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-MTK: N
X-Original-Sender: mark-pk.tsai@mediatek.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of mark-pk.tsai@mediatek.com designates 210.61.82.184 as
 permitted sender) smtp.mailfrom=mark-pk.tsai@mediatek.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=mediatek.com
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

> Clang's Control Flow Integrity (CFI) is a security mechanism that can
> help prevent JOP chains, deployed extensively in downstream kernels
> used in Android.
> 
> It's deployment is hindered by mismatches in function signatures.  For
> this case, we make callbacks match their intended function signature,
> and cast parameters within them rather than casting the callback when
> passed as a parameter.
> 
> When running `mount -t ntfs ...` we observe the following trace:
> 
> Call trace:
> __cfi_check_fail+0x1c/0x24
> name_to_dev_t+0x0/0x404
> iget5_locked+0x594/0x5e8
> ntfs_fill_super+0xbfc/0x43ec
> mount_bdev+0x30c/0x3cc
> ntfs_mount+0x18/0x24
> mount_fs+0x1b0/0x380
> vfs_kern_mount+0x90/0x398
> do_mount+0x5d8/0x1a10
> SyS_mount+0x108/0x144
> el0_svc_naked+0x34/0x38
> 
> Signed-off-by: Luca Stefani <luca.stefani.ge1@gmail.com>
> Tested-by: freak07 <michalechner92@googlemail.com>
> Acked-by: Anton Altaparmakov <anton@tuxera.com>
> ---
>  fs/ntfs/dir.c   |  2 +-
>  fs/ntfs/inode.c | 27 ++++++++++++++-------------
>  fs/ntfs/inode.h |  4 +---
>  fs/ntfs/mft.c   |  4 ++--
>  4 files changed, 18 insertions(+), 19 deletions(-)
> 

Hi,

I think stable tree should pick this change.

Below is the mainline commit.

(1146f7e2dc15 ntfs: fix ntfs_test_inode and ntfs_init_locked_inode function type)

5.4 stable have the same issue when CFI is enabled.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20211209143839.31021-1-mark-pk.tsai%40mediatek.com.
