Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBU5X676QKGQEZY2DKWQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63c.google.com (mail-pl1-x63c.google.com [IPv6:2607:f8b0:4864:20::63c])
	by mail.lfdr.de (Postfix) with ESMTPS id 581F92C37FD
	for <lists+clang-built-linux@lfdr.de>; Wed, 25 Nov 2020 05:21:41 +0100 (CET)
Received: by mail-pl1-x63c.google.com with SMTP id ba3sf906126plb.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Nov 2020 20:21:41 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606278099; cv=pass;
        d=google.com; s=arc-20160816;
        b=pPUlD9Qm5LGd7+Ctyd5be26oj842aUhFBXVnAiaG6U1yKCWJ2pGbC5FwsWyjNDiNx2
         MZEvTA5/ORXAhzkBmjBasD/xENS14KW+o7nKKKe6LWQ4wQb8LBDxqgGqfoG2cV3ISKuz
         QZLWwOwnIodzNr+N2pW91heri+99YnjhNoNLBrjM7WMCUWJRDO8BFm+NAp0QlNTeLV8s
         oFvtKcMPXAvMZcd7KF7WijH/U2jZy3wFjBkUO8GU3RghsltJpjmEZAgHqj8ydVbkNJU7
         wlzhW+l5b07WGSYYkXGkP7pgOPe5PLhAi+uc5NTKjgfDGZh08bbOMipyyU5RFDu/xvAd
         urDg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=fmAPtofzUmd0MlcGN0pSR16pc92B4Y/Fw0QztqhU/jI=;
        b=QTTDlZG57m9AkKoPpHm7fbs3QfB9HHyScLFB6MotLQO5ciW8v0yWeJEGCGWVxjjBpN
         Gs6nlMcokXlig0LWIg0PDOEeGvB9B7pF6GkHM/yLzjxTcd3NSHT02p69VIQ4PODW9y8k
         D18Zq3TWxQ2K//5DI0rhDxvtLHVSiBxuOt5of22eUE+3XIKBRkpLAvg9VFuVpqF++w3R
         +INSYeNLrEGcO/v00We4oKRm071wMqe2MjVtvejUVlFY+WHn/v9tmE11vK6PEmQd+5gG
         +p+MGGiPWGXrhYtL9/SNqjocXfbvBXjQjxDtmA9RTLZAPHsXwWF+YEqtZCzJhZ0etS4/
         82XQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=HiiUZCzM;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=fmAPtofzUmd0MlcGN0pSR16pc92B4Y/Fw0QztqhU/jI=;
        b=toaMblQcvF7eauUaKg+jWQIN6udOFPXW1BgaweRldjNUGsXNujhmxSXBv7FnoD9H4C
         BOslc7Ds9LPccKNRqvAHlRXJTrrhUMOrOFDVTXZvpiGWPqT7Axwl+a4ymQ2xtFMZp2Yn
         QKJeahupg8tbMLyfRxUwws70gwBauR7vktpKsy36pI0uEHTFe8DNXcpPEeWbHUYI44jc
         UiNZms224eQZ+2mV/hWUCveLSsIfSyVhvVdCG8EJMgHBa8hyUcTWczsqRUGuhNUrmyoO
         cQijh7kMIPiBuwL8sY/FK98ducBcl9N48Ixssr6499ThQ5HA8mtDGTtpzPavLXjHrOLK
         nzEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fmAPtofzUmd0MlcGN0pSR16pc92B4Y/Fw0QztqhU/jI=;
        b=RztV1gco/+i7cGxh9I61eoZ53V4H37Mo7nD5O8PeVvOw5/bLSFByE4Nfge8rahf93q
         Vyic16O6eJ1AzyGzHkB4yKFdgp4n4wF+6OhM4BGZenc5o8gG2A7Zuf0PmiyFVG7kQmXn
         mNcI/H5q/z6pq2xgGTDOfTtrWj0LC0YpWywNsHHsHItJQ4cufixxq3YfobTAmSzb+5CR
         Jf+y4e122CxMOObgx/NV5URpuh0M4bMPDzz2TI1EK5CvnmpdFTiNjhz5PYax9isjQ04/
         ZyQFTAhpNOI2vtYcYIiiqWRQxkmLmiX1IulyJP2qfjaPFmLLnpX1p89AKzLlQ0IR8dCW
         ApIQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532Bmf1djDBJNfHJwCh+rlyYiNK9hw7XunrNPoojSvHOWfnYPfm3
	wx2bAS9uMCI0HzPZ6cu8TSU=
X-Google-Smtp-Source: ABdhPJxiITep8k2BI7TIipR8BFA1NM92cyledrycAIRyKtRXlvMFXlwJFUOqxAOp/j9GOU55wk9EHA==
X-Received: by 2002:a63:5b04:: with SMTP id p4mr1489588pgb.369.1606278099769;
        Tue, 24 Nov 2020 20:21:39 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6a00:2a8:: with SMTP id q8ls426429pfs.9.gmail; Tue, 24
 Nov 2020 20:21:39 -0800 (PST)
X-Received: by 2002:aa7:8045:0:b029:198:3058:b944 with SMTP id y5-20020aa780450000b02901983058b944mr1381352pfm.71.1606278099091;
        Tue, 24 Nov 2020 20:21:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606278099; cv=none;
        d=google.com; s=arc-20160816;
        b=rlt8K2P9V9sAjjvUnIjMEAQ1Odxs0fZ8UobuN5MtBRFY5um080HbYa24sKdi8XdNCX
         pHavwVP18wvtoVr500cUtulETGwlhFniiBmkLwcdWZzuTyFFbRdOYxUVw+zPFlzTkYhl
         MS9zxr76Ta7hefDF8SQKVRxo3VzFouCVeP0na+fUWvh7z36h3FWi1Zpz4IFthv4wIwmN
         C2AMDlzN3BEkEhCorjYE+bBFd61JpEliaxvEu/99qmh6FlLJBoq23opKucjD7BNoUfmY
         L5K1eOtRlzFwepZzcEAufs60mCc7I29jT6/KkEQ7q4du7x+MmtIlPnEIMiaF5OfyyEfr
         V9nQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=ooRzKz+xea3vITaQ6iu7qbgvOHqjZFJJkld/4o49MH4=;
        b=wsECIpCLbfNsx5Q/1yWx+7m9dJl47exaFYJm3k11vDuC10toUf0GBcUoz/XY6g/F0Y
         HGL1uDZWH8u9R9pX4qiyY+t8YSeA59vT3wAbr/XUMqXe4Ecgq9qhopETySHo2KCJRdNR
         O5/WUXV40l43/Hb9sAnhlzTz4hciO1O5eRjOK/vLlDM92+hvu/LlqHHjxsChZhcJz3Xw
         nHjXn9t5u/FisiqTy80MUFjrv7yoHdEoV7F15XwNYCSUmQjXvkSsTzcbjNtgeazTsYN5
         FF8peYgheNmk9bnUyYiKrvtgf1JjGJ308bvRUVU7QLD8kRFN/U4WVDFgoqTzMX/QpY21
         74sw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=HiiUZCzM;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-04.nifty.com (conssluserg-04.nifty.com. [210.131.2.83])
        by gmr-mx.google.com with ESMTPS id d2si76472pfr.4.2020.11.24.20.21.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Nov 2020 20:21:39 -0800 (PST)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) client-ip=210.131.2.83;
Received: from mail-pg1-f178.google.com (mail-pg1-f178.google.com [209.85.215.178]) (authenticated)
	by conssluserg-04.nifty.com with ESMTP id 0AP4LG01029045
	for <clang-built-linux@googlegroups.com>; Wed, 25 Nov 2020 13:21:17 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-04.nifty.com 0AP4LG01029045
X-Nifty-SrcIP: [209.85.215.178]
Received: by mail-pg1-f178.google.com with SMTP id t21so1235279pgl.3
        for <clang-built-linux@googlegroups.com>; Tue, 24 Nov 2020 20:21:17 -0800 (PST)
X-Received: by 2002:a63:3205:: with SMTP id y5mr1533249pgy.47.1606278076158;
 Tue, 24 Nov 2020 20:21:16 -0800 (PST)
MIME-Version: 1.0
References: <20201124154339.173752-1-arnd@kernel.org>
In-Reply-To: <20201124154339.173752-1-arnd@kernel.org>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Wed, 25 Nov 2020 13:20:39 +0900
X-Gmail-Original-Message-ID: <CAK7LNASsVeKzRp2cevv8RvPWvH_X9_FW4kp4C76BynTLSHJuRA@mail.gmail.com>
Message-ID: <CAK7LNASsVeKzRp2cevv8RvPWvH_X9_FW4kp4C76BynTLSHJuRA@mail.gmail.com>
Subject: Re: [PATCH] Makefile.extrawarn: remove -Wnested-externs warning
To: Arnd Bergmann <arnd@kernel.org>
Cc: Arnd Bergmann <arnd@arndb.de>,
        Nathan Chancellor <natechancellor@gmail.com>,
        Michal Marek <michal.lkml@markovi.net>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=HiiUZCzM;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Wed, Nov 25, 2020 at 12:43 AM Arnd Bergmann <arnd@kernel.org> wrote:
>
> From: Arnd Bergmann <arnd@arndb.de>
>
> The -Wnested-externs warning has become useless with gcc, since
> this warns every time that BUILD_BUG_ON() or similar macros
> are used.
>
> With clang, the warning option does nothing to start with, so
> just remove it entirely.
>
> Suggested-by: Nathan Chancellor <natechancellor@gmail.com>
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---

Applied to linux-kbuild.
Thanks.


>  scripts/Makefile.extrawarn | 1 -
>  1 file changed, 1 deletion(-)
>
> diff --git a/scripts/Makefile.extrawarn b/scripts/Makefile.extrawarn
> index 6baee1200615..d53825503874 100644
> --- a/scripts/Makefile.extrawarn
> +++ b/scripts/Makefile.extrawarn
> @@ -61,7 +61,6 @@ endif
>  ifneq ($(findstring 2, $(KBUILD_EXTRA_WARN)),)
>
>  KBUILD_CFLAGS += -Wdisabled-optimization
> -KBUILD_CFLAGS += -Wnested-externs
>  KBUILD_CFLAGS += -Wshadow
>  KBUILD_CFLAGS += $(call cc-option, -Wlogical-op)
>  KBUILD_CFLAGS += -Wmissing-field-initializers
> --
> 2.27.0
>


-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNASsVeKzRp2cevv8RvPWvH_X9_FW4kp4C76BynTLSHJuRA%40mail.gmail.com.
