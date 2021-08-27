Return-Path: <clang-built-linux+bncBAABBTFGUSEQMGQE67WBS4A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53a.google.com (mail-ed1-x53a.google.com [IPv6:2a00:1450:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id 51A473F9C78
	for <lists+clang-built-linux@lfdr.de>; Fri, 27 Aug 2021 18:31:09 +0200 (CEST)
Received: by mail-ed1-x53a.google.com with SMTP id g4-20020a056402180400b003c2e8da869bsf3497355edy.13
        for <lists+clang-built-linux@lfdr.de>; Fri, 27 Aug 2021 09:31:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630081869; cv=pass;
        d=google.com; s=arc-20160816;
        b=AklENnOMYH63gl/M+KgxUsj2quP5vX6YTGBXSjNLXlMi4oH5H7qD3Xj2tq8hWgSIq9
         8GUai7zhQYAupG0gvQHJKixpkHyN/XOOKD+sxwqqE15zEC0WdkxuPvIzETYdRuIjag01
         sQqYdPDxBtLWvtSOsJOLqkEDWX7a5Eh73vo1/t4QI0talc6khPQshHeD5yObbKUY91MF
         4wlMt751NjYO5Svbbj+qxsy2KXzWf9dlvUnalo7w7TPp7PT+ksTN3dP/hgei7NY6braB
         U3LGSXDAorYQrUaiZXKmMW9zmrS5NUyhTIT232ns7cI4RIT3ZrVDw9kBHn4Pii1U32hf
         5ADA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:dkim-signature;
        bh=OonIs3j9RC32WMqDhMd8U4JzqrZI/t/esGTJ6Uma5Ak=;
        b=y0CJ8gn8iXFuAmt4OY/jLA2yjIa3NTEoV/BuTPtqvH4wNvv+4R3jW0yQWUW6QLvJsL
         vRna5G8iqXLqqdfRrcjLetfn28bDpwt8nfYVej8F6JQ/YxuuFJlL9gYuCsb0U3+qj0zs
         Rn8twqwyHWmQPi1rpI0088f49Bu/dxiUzYSi0ELYSXKA6SklHa3xL9IwfKF1Z+jN6pSG
         kLjkupIJvRSLG/kLOIOPixbmFkbdWxGGthGQTsgfOfK0o4pjbbKURMzXNNKuHmfLNr/S
         Sg/mOZ3+yCBftJjoh/2DbX7LEMSRDl98+aHg9KyuLU8ofXc/MUICNxxrd8WhMw0M+M50
         nPSw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@paragon-software.com header.s=mail header.b=ch6SmnIk;
       spf=pass (google.com: domain of almaz.alexandrovich@paragon-software.com designates 81.5.88.159 as permitted sender) smtp.mailfrom=almaz.alexandrovich@paragon-software.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=paragon-software.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=OonIs3j9RC32WMqDhMd8U4JzqrZI/t/esGTJ6Uma5Ak=;
        b=NT8mV3VoMeWv27fBNNnjXvTWIwAowNt8v3N26oi51gcjtSBCp13mEULXG60ubT625Z
         GR/tiLjsmOm8KYHZNBJxo96DA7mdnE+OKjcliAG24+KPSHQZe0Bg3DbmwbMFX46YvnWh
         gEqPKExWhStt0CnnoqTM+f0us7MDu73eVsjxZPWHWqeW/AjePFcXSmnD0vigAAQWEbtE
         TdUlNtyjHOi0/2pkJ4CcXITEpLj12f9t/94ntCVFbYhQI57OaSrbzFio3LhEZSKTtd9r
         Y6oE0yXFRJu+1BpsDS794K8BOLmsnYiCSeNY4b1lIx61efEIhPwOavTrlOeQ0USDyPb6
         baFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:thread-topic:thread-index
         :date:message-id:references:in-reply-to:accept-language
         :content-language:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OonIs3j9RC32WMqDhMd8U4JzqrZI/t/esGTJ6Uma5Ak=;
        b=RGVtTbCJtzNWExwBZBsG99cx07bRRzKYxB5fpeGhBHueCGTr39NZ3IIEmJNy6bExpe
         3tSqB7Ej2pxZG5TccKMMCfrC8oSYiBR+vrSNEK2IJzhRPDagmPZf55g8AsHpq/gbLf49
         TSNQIEnuGp0UzYQ4NuC8/Kbj0NI2/owTpjqU8koYggl7IYK8UHmkd1igMj/yhkhErv+y
         xdXeFpczty2SYC0rqC8zwk7GLZcSmO8axJupFupCAJxLLs31hmTQSiyLTlnGtRrGEZi2
         Txzv8BDYmqfiQLjkifq2/9qYF2kvKn0ecVkIgDZ6/XL89lDFGhgajMb2yASs43EWK5wW
         EcOg==
X-Gm-Message-State: AOAM5339kBXNRxFFVwzEy+1ExRXBIzR25f9PN8jB7sAJmrmB3qVI/jNm
	kz5ySGHBQkE6gguXorpCmgg=
X-Google-Smtp-Source: ABdhPJx6tISLzfxCnQU0bamvzR+VVtHY6HiMmW91ShgRhTWF9hHStIoKiSJGZ9GSgTSGJjZjGj4Gkg==
X-Received: by 2002:a05:6402:b47:: with SMTP id bx7mr10719463edb.319.1630081869104;
        Fri, 27 Aug 2021 09:31:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:c944:: with SMTP id h4ls659882edt.1.gmail; Fri, 27 Aug
 2021 09:31:08 -0700 (PDT)
X-Received: by 2002:aa7:dace:: with SMTP id x14mr10557506eds.169.1630081868291;
        Fri, 27 Aug 2021 09:31:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630081868; cv=none;
        d=google.com; s=arc-20160816;
        b=PplEwj6QUiicNRGV7G3fupENMmz6wKOypi108Co++qPPocCBiYzRcTgU4I8vSu8faZ
         wY+fWn+UaidVBVlB1QBxZSGwhfh9Hhy0AG7qxAMCuhOgyQE2FMb34YPy011na3gx0ism
         VlYTHrZAcG+eharkTX8s6vIf9MdajQ0W1iuBJf24Fr/JyqSt1Z+jAXV/WUR1sVTRhA3E
         97vg5bB7D+gVMKFWh7ARRF0iUdRF7p4RObY9fizrUDnQZ8BW1rNPeQAVya+HpjD05kxF
         uZXtr6R/E7PlxPBQ6QLjWZa71iOMHLxyipAeaXEmt+9uYdCseHI8zJv0/9c4Ss0Y6yuk
         nbYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:dkim-signature;
        bh=mTPrU7Xby7bdyA5QoWyXxTNUqhVFSY/ggcdmXWm3lTw=;
        b=SA2YRJ+Q8kZz4PrgPB+srNIKmZ5YS4M+YGlSZFdSt2JT7m7MCCwXuN6IOfp42vPMym
         zfTFU87YV/LsyEZUTIYqRH1kmLVZbzmibd93VanGql8w3Yy5ZFWBv21guI4bp7tBcYrS
         NGxpJJhcY0my8GBMgKVL8MrUdDRIe3MMI0S9d8rvTZKlZH6Hbut1DnlQNEQEA9ejjo/x
         JZa7kIJW0UvH/w4nkdeS+8wVLQxCj8D60U2kdRyNrOG+zYf3EZVOjTeyjIyYz2nbIKfD
         oeUXM2Oolu4ADkAXSft1rD2OoGdFYJ7ssSpaw7/X7beGN1do5BM6XfpWBlQ8AhFbnxhv
         5DXg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@paragon-software.com header.s=mail header.b=ch6SmnIk;
       spf=pass (google.com: domain of almaz.alexandrovich@paragon-software.com designates 81.5.88.159 as permitted sender) smtp.mailfrom=almaz.alexandrovich@paragon-software.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=paragon-software.com
Received: from relaydlg-01.paragon-software.com (relaydlg-01.paragon-software.com. [81.5.88.159])
        by gmr-mx.google.com with ESMTPS id e20si86611eds.4.2021.08.27.09.31.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Aug 2021 09:31:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of almaz.alexandrovich@paragon-software.com designates 81.5.88.159 as permitted sender) client-ip=81.5.88.159;
Received: from dlg2.mail.paragon-software.com (vdlg-exch-02.paragon-software.com [172.30.1.105])
	by relaydlg-01.paragon-software.com (Postfix) with ESMTPS id 91A0E821CB;
	Fri, 27 Aug 2021 19:31:07 +0300 (MSK)
Received: from vdlg-exch-02.paragon-software.com (172.30.1.105) by
 vdlg-exch-02.paragon-software.com (172.30.1.105) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.2; Fri, 27 Aug 2021 19:31:07 +0300
Received: from vdlg-exch-02.paragon-software.com ([fe80::586:6d72:3fe5:bd9b])
 by vdlg-exch-02.paragon-software.com ([fe80::586:6d72:3fe5:bd9b%12]) with
 mapi id 15.01.2176.009; Fri, 27 Aug 2021 19:31:07 +0300
From: "'Konstantin Komarov' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>
CC: "nathan@kernel.org" <nathan@kernel.org>, "ndesaulniers@google.com"
	<ndesaulniers@google.com>, "ntfs3@lists.linux.dev" <ntfs3@lists.linux.dev>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>
Subject: RE: [PATCH] fs/ntfs3: Remove unused including <linux/version.h>
Thread-Topic: [PATCH] fs/ntfs3: Remove unused including <linux/version.h>
Thread-Index: AQHXlNOYiBEK8ENRz0Won74AeeEXEauHl8Bg
Date: Fri, 27 Aug 2021 16:31:07 +0000
Message-ID: <3f2f11cc4e414f088ed60919e7d9cd56@paragon-software.com>
References: <1629361417-94657-1-git-send-email-jiapeng.chong@linux.alibaba.com>
In-Reply-To: <1629361417-94657-1-git-send-email-jiapeng.chong@linux.alibaba.com>
Accept-Language: ru-RU, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.30.0.26]
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
X-Original-Sender: almaz.alexandrovich@paragon-software.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@paragon-software.com header.s=mail header.b=ch6SmnIk;
       spf=pass (google.com: domain of almaz.alexandrovich@paragon-software.com
 designates 81.5.88.159 as permitted sender) smtp.mailfrom=almaz.alexandrovich@paragon-software.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=paragon-software.com
X-Original-From: Konstantin Komarov <almaz.alexandrovich@paragon-software.com>
Reply-To: Konstantin Komarov <almaz.alexandrovich@paragon-software.com>
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

> From: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>
> Sent: Thursday, August 19, 2021 11:24 AM
> To: Konstantin Komarov <almaz.alexandrovich@paragon-software.com>
> Cc: nathan@kernel.org; ndesaulniers@google.com; ntfs3@lists.linux.dev; linux-kernel@vger.kernel.org; clang-built-
> linux@googlegroups.com; Jiapeng Chong <jiapeng.chong@linux.alibaba.com>
> Subject: [PATCH] fs/ntfs3: Remove unused including <linux/version.h>
> 
> Eliminate the follow versioncheck warning:
> 
> ./fs/ntfs3/inode.c: 16 linux/version.h not needed.
> 
> Reported-by: Abaci Robot <abaci@linux.alibaba.com>
> Fixes: 82cae269cfa9 ("fs/ntfs3: Add initialization of super block")
> Signed-off-by: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>
> ---
>  fs/ntfs3/inode.c | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/fs/ntfs3/inode.c b/fs/ntfs3/inode.c
> index bf51e29..bb01f1b 100644
> --- a/fs/ntfs3/inode.c
> +++ b/fs/ntfs3/inode.c
> @@ -13,7 +13,6 @@
>  #include <linux/namei.h>
>  #include <linux/nls.h>
>  #include <linux/uio.h>
> -#include <linux/version.h>
>  #include <linux/writeback.h>
> 
>  #include "debug.h"
> --
> 1.8.3.1
Hi Jiapeng! Applied, thanks.
Best regards.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/3f2f11cc4e414f088ed60919e7d9cd56%40paragon-software.com.
