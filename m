Return-Path: <clang-built-linux+bncBDXLVH6MVYKRBLGHWSDAMGQECMMFRHY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id D2DC53AD576
	for <lists+clang-built-linux@lfdr.de>; Sat, 19 Jun 2021 00:52:29 +0200 (CEST)
Received: by mail-pg1-x53a.google.com with SMTP id l28-20020a63571c0000b02902224bbd5ea1sf6711669pgb.16
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Jun 2021 15:52:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624056748; cv=pass;
        d=google.com; s=arc-20160816;
        b=HgGUA4BQYpkdaRZYJgP/WtK4BpbvjUa+lNfZqSUQPbtV71BGGALIiCQqxGbe2Hc5jH
         5qLLPFqunFs4oJUS/oLtxbVLGYrV5WAHgbkKLwlomANsqcGUG2gEp6aShmiHxV+1hM7r
         EnjyUTzAbocrtooObYuCIxPRCT56uc3v1tmi8P73UBxIUXsN0RKHOpXphbB2KhdSWJoB
         OjlOfKwbS86LSn3s5q185vh37INa/UCIMx+kq3Z7IujXLN6Y6V9HOVsPPgSTfgB7teCR
         /pfFq1sAea2zZWmN6ANwo67b6qdHVyQ8yIqbYxAxnrAIpCPZ/4WZk/9bqF/DtkP2rWVS
         O9Hg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature:dkim-signature;
        bh=hFkiIe1bXzhQXt9WG0xALyHxF9iXAQBhqwDg6ZGPNk4=;
        b=k1FvB74MaLVlrF02x648z3UcJVyGPfjDp+pIrN5rdO160HJ5wL0MukLP0XF8XOoP9T
         8KOKQfctLRw6WqF7xh4lgu4DDER0eTag521UiwSyyNo3wUKAYvEiSNZoIoOmXlHdo53b
         tYX3q4M6HTxa7/YSajAJiJNIoTtO11L/SfxFgGuPYkeCBZixAAhrGlIbPomRmWPjmoR2
         QCKzIYwpT9qBu7QQZpLbmgN7ZortTeOgEwxAfftv9k6dNP9i9V8fzBvPNcDyq1AuOj2c
         L4je4qHptnOTdjntHPYTOIz7zMBcXGRo2/vnoA9MbcD4LOeDzlBwdOjegcUgkyQd2HVn
         28jg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tII83pBL;
       spf=pass (google.com: domain of jsmart2021@gmail.com designates 2607:f8b0:4864:20::632 as permitted sender) smtp.mailfrom=jsmart2021@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=hFkiIe1bXzhQXt9WG0xALyHxF9iXAQBhqwDg6ZGPNk4=;
        b=pXUG7041tYIJ0hBMdJ3RMutrPuoJFR1Xo2JqE+qrFVsSOhYdq1pJc/4vQyJrxcpOXV
         48UQvCo+NnqLPvO62XK6aVfHZYFhUVg4uULOLWv90xYA9cgB1XmIx1hrRLSbNnYtm9Lq
         NHHYp06KxuKLjv+q0SQf9v+C5cYqMTA7rNfPvs411guq+s/GzWE94zXqXYhyzco1s2BS
         cKgSNEow1jowBRe93KPbBaxm+iYrDktb46u6WC9MXEEUbjUc0Ct3CkAhHzAhnaubZ5pt
         7lzBBMtDaY2bTftOAQ8L3oOQdN6x+89s1WmH1KZSzSAGrPJMagc7Ef+BXD4RRI31pj3X
         svqg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=hFkiIe1bXzhQXt9WG0xALyHxF9iXAQBhqwDg6ZGPNk4=;
        b=lA6M+8lV5Ja9IlRU3E8V2a/GIg0nWhJNsfaCDe5eHZOacptgvjPE7jZ60Je8wXc6eM
         08ptmvthNnzvFtM2jG/fdAjsrTn5qmt3iUk3vf+SdLbONW56rD1nNG9f7BkNm05V/9On
         n59DBoennP1SZduRq87MR0cbTenIoEbqMCxmIDrsRcKmbUoOjYqDkXBSsBekKzG08hzt
         jljVcUI+pX4F3S5TeCMm/EXax5ifWw5w7rvv7SIKfXsoD0dJHrrp14qBAGD2S06bT/pv
         S30EdDqi2zPNBOky9pBJR9WT6TZE6vZfx4xysr1MItLsbfYDou//M0iRi4O2hJIhLRvy
         7sOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=hFkiIe1bXzhQXt9WG0xALyHxF9iXAQBhqwDg6ZGPNk4=;
        b=p2pimHWAony6+PF2fGbmwP5Ku8ZxmbkkVf+e5/UUDVya9UFnbuh6Zi+RAtLAtUUIHf
         8fqDYes6ywAPDLkbu+LIgXG1XfPsLoP9KaKhlv7DhC19HAi6HPocY6DJLxjXbBngKvvN
         NkY26dOG1SS/4aIWVbUyHPTeXCeXSpH0m7sUHz8V1Tym3k2UMy5CpmkNM3NpFXphodFY
         KuUAGFBS4V4onSc7ypDIGNd3B5GUsFs1SNHmorqrx/TpGX5d9EGwPs8Y6fKhR48AmMvZ
         lf3wJvri5Amdhv214VB+6KDy12mO/oqVvwFN/o7f9CXfO3PDD7JMMB0cB4jomDnxCS3x
         3OOw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531zuE5hnlPz0iegI7m5ckzcRIonYLh2+e75VQpgqtdRu+4bu7bi
	RQgx5ZLidvdyzcSjdub9jeI=
X-Google-Smtp-Source: ABdhPJwvFBKy/oEN6TOEHzBbLYD6CsZtRbLfdfxHcEzlXwzcaQjt+dMu4xCXDV/wOh3fbrPZoCe7RQ==
X-Received: by 2002:a17:90a:de15:: with SMTP id m21mr13414488pjv.87.1624056748644;
        Fri, 18 Jun 2021 15:52:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:cf03:: with SMTP id j3ls5084604pgg.0.gmail; Fri, 18 Jun
 2021 15:52:28 -0700 (PDT)
X-Received: by 2002:a05:6a00:1745:b029:2f2:a67d:7f5 with SMTP id j5-20020a056a001745b02902f2a67d07f5mr7119063pfc.25.1624056748036;
        Fri, 18 Jun 2021 15:52:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624056748; cv=none;
        d=google.com; s=arc-20160816;
        b=YIN2ZhceX24FRWPTyTVN3a+DHpwm6Y8fUNspwXYRgrzvJr7mrngGEvQSNIqByoJEGe
         h6cg/uHoM0hS8FBznoSn9KAAsoq2bOv+tgJzzRnVHm1QroTB6YY7mYjE3ela+K/Mhkqa
         49JciuPydO0ddDlmpqH2OubZYpnUKHFW+pBFXMwZ7SmYAaHNw4zYteUySEzf0Dpx0I0w
         0dRSCBzCin/yiNTIPYCR0TifJYMobhiQlZbA2KOphlnm7padpezSLu/Z2zdv2sYbp9ua
         NX+fcaZ3UkzMA+irN15ss//rnA4Ub3WfxSCD5Iz1A9c5cmnm1lhkS1ciGIv1C6U8Ytlj
         5FbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=QBEReQMrLJnmJ7k9QX7jY95T5VJ5V7GviHdKGKUsvvg=;
        b=xKO8cEU17Dw0/2itMFSx6wZtuOGRiMIzfXVzClzux5lvTtu5VqpFACUWfmdNdKdOEI
         uUAUWOFAP9L9F4/S308/FrDG+fIx3PlRdpNnThCanFoSM6vhiP9aiYDaWYh88YSG+fs3
         WCvlAol9iTdX9qExsYmK71B3wF88Y/hGrTrHpSNAmtLNR3b+J/3tR84lNr/NDfG6Tblx
         KwS1vkgNXPjmOMSagFAVfHu0rR4Mk29fO+CBGt4Cq0onXJl7Wb6irhU6ywTo9hBZhZrC
         BEIxRUn3lat8IXzjUaLnOx9WtbQ0uRGivgLFiedjG3+u/ZB1QfsD7IS+qu2pbOG97l8R
         k3qg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tII83pBL;
       spf=pass (google.com: domain of jsmart2021@gmail.com designates 2607:f8b0:4864:20::632 as permitted sender) smtp.mailfrom=jsmart2021@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pl1-x632.google.com (mail-pl1-x632.google.com. [2607:f8b0:4864:20::632])
        by gmr-mx.google.com with ESMTPS id a6si298519pls.4.2021.06.18.15.52.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Jun 2021 15:52:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of jsmart2021@gmail.com designates 2607:f8b0:4864:20::632 as permitted sender) client-ip=2607:f8b0:4864:20::632;
Received: by mail-pl1-x632.google.com with SMTP id c15so5376398pls.13
        for <clang-built-linux@googlegroups.com>; Fri, 18 Jun 2021 15:52:28 -0700 (PDT)
X-Received: by 2002:a17:90a:ea0d:: with SMTP id w13mr16079475pjy.51.1624056747314;
        Fri, 18 Jun 2021 15:52:27 -0700 (PDT)
Received: from [10.230.185.151] ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id g8sm10218823pgo.10.2021.06.18.15.52.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Jun 2021 15:52:26 -0700 (PDT)
Subject: Re: [PATCH] scsi: elx: efct: Do not use id uninitialized in
 efct_lio_setup_session()
To: Nathan Chancellor <nathan@kernel.org>,
 James Smart <james.smart@broadcom.com>,
 Ram Vegesna <ram.vegesna@broadcom.com>,
 "James E.J. Bottomley" <jejb@linux.ibm.com>,
 "Martin K. Petersen" <martin.petersen@oracle.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>, linux-scsi@vger.kernel.org,
 target-devel@vger.kernel.org, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com
References: <20210617061721.2405511-1-nathan@kernel.org>
From: James Smart <jsmart2021@gmail.com>
Message-ID: <bd2d2be8-8ec9-601a-14d6-aa4edb92859c@gmail.com>
Date: Fri, 18 Jun 2021 15:52:20 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.2
MIME-Version: 1.0
In-Reply-To: <20210617061721.2405511-1-nathan@kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: jsmart2021@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=tII83pBL;       spf=pass
 (google.com: domain of jsmart2021@gmail.com designates 2607:f8b0:4864:20::632
 as permitted sender) smtp.mailfrom=jsmart2021@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On 6/16/2021 11:17 PM, Nathan Chancellor wrote:
> clang warns:
> 
> drivers/scsi/elx/efct/efct_lio.c:1216:24: warning: variable 'id' is
> uninitialized when used here [-Wuninitialized]
>                        se_sess, node, id);
>                                       ^~
> 
> Shuffle the debug print after id's initialization so that the actual
> value is printed.
> 
> Fixes: 692e5d73a811 ("scsi: elx: efct: LIO backend interface routines")
> Link: https://github.com/ClangBuiltLinux/linux/issues/1397
> Signed-off-by: Nathan Chancellor <nathan@kernel.org>
> ---
>   drivers/scsi/elx/efct/efct_lio.c | 6 +++---
>   1 file changed, 3 insertions(+), 3 deletions(-)
> 

Thanks

Reviewed-by: James Smart <jsmart2021@gmail.com>

-- james


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/bd2d2be8-8ec9-601a-14d6-aa4edb92859c%40gmail.com.
