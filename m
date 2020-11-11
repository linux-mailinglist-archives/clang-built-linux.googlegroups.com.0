Return-Path: <clang-built-linux+bncBDPL7R4J6AKRBXW4WH6QKGQE7WDLGRY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x238.google.com (mail-lj1-x238.google.com [IPv6:2a00:1450:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id BD3ED2AFB99
	for <lists+clang-built-linux@lfdr.de>; Thu, 12 Nov 2020 00:06:07 +0100 (CET)
Received: by mail-lj1-x238.google.com with SMTP id j9sf1483689ljb.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 11 Nov 2020 15:06:07 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605135967; cv=pass;
        d=google.com; s=arc-20160816;
        b=kMZWFUMhHOYMacr/qiLY6FyaP9e+6W+m+xhdxESWtyZ9ZStaxytIi5MfmU0ZgVe68O
         YQHe0ae1QzxEvNZ2nfxgiMJSe//sWS2yzdxzhfJe/Wcpr3FGXGughO6coiBBZbBVRSFD
         KO4L1IdgCUF8EnppEYtbstB8fsYCVK1+jbxBbuZWwtzMl7VeRZ957lYX6EqzivkLQxla
         Nv+SwJni5ZJhsrkJ1UXvBmA6P6GxSs0FcZS4LBl0VxgUvBYygR6ILcQ2lMiNOWHnM+ji
         ZBKa4MYvqd0IGbgncqYmmHwfVTr0KRHXROCH5EZ8B99DjIXS/cTks2+BlvRk3hEm6HIB
         6g7w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=/udxfH5G+DRjfcX8XF/G6AL4KgVvgDmiwzraSBZcIAs=;
        b=OhPI++owuWET9VX1BQuZVKLb0DkoOkiPxbDwPwgPvqkFJQWPSdSayeTTNQey/VbJGK
         aiw6lrnJu5uPLlh0iArCw/4cwoZJIkCuv361OAjktEElPdce+NWNjjpgWdygEC4Mb/Ab
         tL2U3ysuSfuexd7/+KrTXNq/5mAXerYwFk9GBdHm+YEhBB0uyiB2GpMkj7zRdgN8gMTM
         N4l9vXxR6XDvuIIfE+6NamUtCpL6MCIrgy2VP6DERTkTivNwDgWAvrjw6LquaIr/we64
         FeAOSG7TR9Ye7lrROG9z3Fu4he+Vs/HmZKy/JVaJGsA0CZnHlw/CXOxFWz8oLxW1vik/
         b/vg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tsbogend@alpha.franken.de designates 193.175.24.41 as permitted sender) smtp.mailfrom=tsbogend@alpha.franken.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/udxfH5G+DRjfcX8XF/G6AL4KgVvgDmiwzraSBZcIAs=;
        b=o0i1f8PwBrwfR8AKsDV+S9q8gUkNVNAuE7hN76S05Xl/2xnrNCHD1WJ+VtHE0wjdnZ
         vmmp9oC/7vq7sGme0zTdoi10H94TZJ1wOl6shXvEq/y6WWvthSJp7NLzF06muXBn5l0U
         VMAmXx1uMMiDJPtcPx7r84iQI0H4DCwOMWyLfqHWUFhNdWAqZ+xj/WZYEGafMx8oOzuz
         uWwNqCRFvFq8OrfDsDBGQAIaXCdVGU4XKdhQz1apY4VGHW18XqY50FuoNm4QCKbknbPe
         KKrlNHGPg7DUQtXdhWQvHONIHwcQkT8lLOGbFvk/jK9Jq+j57K4vmiwUG9flTdKjI1W9
         tUhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=/udxfH5G+DRjfcX8XF/G6AL4KgVvgDmiwzraSBZcIAs=;
        b=haZR3QEKusAPJGHK8N6Zzkc6ZICXppAvEMf3KLU5mIrXcAnUHcykEdTvHukU1/5UbD
         i+YKAaAWbgBzRTkAbQfKzD0ukGhNGNTk1H2bkdDAEpFqLB06h5pL3C1IOZOrwEdLtBbP
         Us5A3DMsQJ2o8qoOJF6/m2et8xjqtgS8psoddhgn5FWWH2JsqNHEOU7KRNsE+o+dft5A
         0tduYDRlaTwGUrY9Tr+QdevJuY7scRM0cWkJC9eU8F9qRpqd847Ul2mxqiYaRQUKu+4j
         XiCC7osQrDothrzV6lVK3KfGYT85V9HKwLoDYdxxUi5Dc3bRznu0y4R7/GG8M4Lqqqn3
         VMHg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533ET5/T3ri+3UvYYPLW8EXuF2OIoh4sFz2+eXPnwRrN6F7gGwFE
	SrGBuLPWJIOsmjFd2w0z4e8=
X-Google-Smtp-Source: ABdhPJywCm4sk5N9MOxJCOaE8idFe+exkoOPanIAn2gkayM4nfoSly0WtP6Zg0C6aU8JOc3GA+GLng==
X-Received: by 2002:a2e:b8c7:: with SMTP id s7mr10680480ljp.374.1605135967230;
        Wed, 11 Nov 2020 15:06:07 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:7619:: with SMTP id r25ls199090ljc.11.gmail; Wed, 11 Nov
 2020 15:06:06 -0800 (PST)
X-Received: by 2002:a2e:8ecc:: with SMTP id e12mr11589921ljl.98.1605135965981;
        Wed, 11 Nov 2020 15:06:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605135965; cv=none;
        d=google.com; s=arc-20160816;
        b=xoYkV7ffdqsKurH9L6FPBmBRit64ReYMiuuEas6XPDFYKt/fOb7XVDyBJH/xwTvIc/
         2p3nLRxy1S/pCnZSRLijPLahq1NGlQrK7/nt6Im13w8EThaN3CzqYnnfSikuByvfyem+
         qZ2xfXaj7CwQkEYu11kGZlYXPrAuD7RcO2iBheWTz3C9FtJyF9heIOmbBvq1gNIzvjMd
         Ag0iEKu9tiRSWZWTpwpalYFGP/MbvTfvP4xhqI6zN8W1JRaE7OSzshpML1tTxfBLPmMh
         sSCysflfAa5soXlpOFhCgT77VeL7Hqs+aZy4Hnc15gNBWedfgrdwd6uCkV0EBTYB6cyw
         /o9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=+asV2cFBcChCv24CtJcn9d4WKL105EgCXAbf9BadlEE=;
        b=kb0qP/0WKbpjaSuNC8nM4VkPtZYhin0LQD3ilLKzPXjmGjf1kJ29DGPoQoFa+lydfa
         gerLf7XMeNDFtcAyMZqiIh2Ehnmqodv8MVQBAPTuqAu1rfbe4G2hvI3yiCcHj/8saOps
         2aKnQXD5dq19zBRsFP5E214madoT9ovBb9LeUA/hwh3eZz1WrP/8PDV3en2fQSdOeFTx
         BC6U5tj70LFOD/25c8iYmCCBUjWsO9cBkSdZoBKxjqcw6hGWL6JiEfqJmsv+v7x/LF5X
         3eWVb9RqxAtclCrQsaUuc5aWiI/NUejwT9WQtsrFvu90VM5nshf5wagM5oqAa1sT7pHY
         EtUA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tsbogend@alpha.franken.de designates 193.175.24.41 as permitted sender) smtp.mailfrom=tsbogend@alpha.franken.de
Received: from elvis.franken.de (elvis.franken.de. [193.175.24.41])
        by gmr-mx.google.com with ESMTP id i67si73167lfi.2.2020.11.11.15.06.05
        for <clang-built-linux@googlegroups.com>;
        Wed, 11 Nov 2020 15:06:05 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of tsbogend@alpha.franken.de designates 193.175.24.41 as permitted sender) client-ip=193.175.24.41;
Received: from uucp (helo=alpha)
	by elvis.franken.de with local-bsmtp (Exim 3.36 #1)
	id 1kczBl-0005fC-01; Thu, 12 Nov 2020 00:06:05 +0100
Received: by alpha.franken.de (Postfix, from userid 1000)
	id DDCF3C4DDF; Thu, 12 Nov 2020 00:03:14 +0100 (CET)
Date: Thu, 12 Nov 2020 00:03:14 +0100
From: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: clang-built-linux@googlegroups.com,
	Serge Semin <Sergey.Semin@baikalelectronics.ru>,
	Alexey Malahov <Alexey.Malahov@baikalelectronics.ru>,
	linux-mips@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] MIPS: remove GCC < 4.9 support
Message-ID: <20201111230314.GB19275@alpha.franken.de>
References: <20201111032105.2346303-1-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201111032105.2346303-1-ndesaulniers@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: tsbogend@alpha.franken.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of tsbogend@alpha.franken.de
 designates 193.175.24.41 as permitted sender) smtp.mailfrom=tsbogend@alpha.franken.de
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

On Tue, Nov 10, 2020 at 07:21:05PM -0800, Nick Desaulniers wrote:
> Remove a tautology; since
> commit 0bddd227f3dc ("Documentation: update for gcc 4.9 requirement")
> which raised the minimally supported version of GCC to 4.9, this case is
> always true.
> 
> Link: https://github.com/ClangBuiltLinux/linux/issues/427
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
>  arch/mips/include/asm/compiler.h | 9 +--------
>  1 file changed, 1 insertion(+), 8 deletions(-)

applied to mips-next.

Thomas.

-- 
Crap can work. Given enough thrust pigs will fly, but it's not necessarily a
good idea.                                                [ RFC1925, 2.3 ]

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201111230314.GB19275%40alpha.franken.de.
