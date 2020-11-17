Return-Path: <clang-built-linux+bncBDYJPJO25UGBBF5P2D6QKGQEHEGNYBQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83d.google.com (mail-qt1-x83d.google.com [IPv6:2607:f8b0:4864:20::83d])
	by mail.lfdr.de (Postfix) with ESMTPS id 84E8A2B6D6F
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Nov 2020 19:34:00 +0100 (CET)
Received: by mail-qt1-x83d.google.com with SMTP id e22sf13015017qte.22
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Nov 2020 10:34:00 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605638039; cv=pass;
        d=google.com; s=arc-20160816;
        b=XcsWMLRkq3X+liHNe6zRBt6WbuINUQMZwnfDOG9XIgdmGv8vXofnwk1x3rKeso2GHr
         jUhjhRk/i9S4jS4FI18HoQ34eIA/UIMD4oNs6emMsQjzxg6trqd8ljArhtRoKBuy9dvx
         ShBSRFx7GP8LEy6rjsFWY7qipfmo1mDUx1dj9fjCPsJgB2WC1EmPhHwUuab4VK5W1WXe
         85Xm2Zw/iYLRm+6Z69Qvl7+IRERMRKXqgkEF3rX4QlddbTFJj0WI7iohrTDlN6UWgRKG
         dfBMCJMRVl2oDMvHfgvTi9DeXQbJG72w5LN3ivhC8/O/sbgkQVpMmI/mOFmEi8gU97R6
         OyEw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=EdIfOtKpsYXMjridsRWHqYVtWJ29e/Er8+4mh/ZI64I=;
        b=sBYcmjQdbKuMOetP3rxT6+964geRV9qmcfkIjWDoJCxUjmmYexcL4K707AZPSDYxy1
         NjK/78n7p7DEY/sLX4hKIPbH8ex22YAc0zmMPeR9Sf6Zb6mNLRQ7DZ+94KVj5FwBzKtw
         X2P52S84pzuKIZD7XSWAe59LOdLrJ4MpM8WyOiT2Vqr12hskjy5S2Q5XBtO9f+QWmyGV
         zncYuYj3RkNZcFkNWi9R+xrz+AAvzXuUZnFmJ+NqpfEPG4Wk9Kzg0wt3gMrCA1mohaGX
         eDI1pktRyCe3pqzF7U7WxQEMDCz+QwvGtPHz5405hYs1O00baALIvj04/zusk8nxx89w
         CdvA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=FOpWOWZ0;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::632 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EdIfOtKpsYXMjridsRWHqYVtWJ29e/Er8+4mh/ZI64I=;
        b=CLpZqH3B/1LDgIUl9MO1OTI5svmNHcCC1+pUHZAFsVL+nAc3WZJfNpdDJCvN5s2LDp
         bJviExt2Mz28KHMol+h+lSpca8aOsboO0x4i9aaj2euzwjhc4h8iMXVBtuYvYkQPGqCl
         WI+OgI3tBDz5dl0i1WsGzOVkn55o/IYMywPykwhm3SKvoO2IM71d18oBCHTTFJNXPBNA
         azwr9q42kqpF6xoUEfAPpPZnJ7wv6vhiTHEX6Q/L0TLyx9tZkuhH4Bo+/DQf5VSB2+EC
         OX0TttEtmIxCseafWOwkZNb13xrxXpQWIXaAs0aZ9kAUrUo1KjfIhMZckd6ArQgeJj/r
         MyWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EdIfOtKpsYXMjridsRWHqYVtWJ29e/Er8+4mh/ZI64I=;
        b=hBRqP1mE0Y3FkXosF15y0TKV+Cd3/IstE+p3ibUhnArBb8UqZLaFPw0YwcUWe4tRtF
         +FtmaNeIMYs9OyY9vBjM7GZzR5MbPj7B6luowNfhpiXgcCGzjdEi8Qt4eH1Tj5vYaBYA
         7y+QQY3w7FGA/slWCrGjc7uVN47P8mbmzM5JJXAeTZ5wikT47ib/VHvuAnpmIAMuQS7x
         GijDzmX2Nd/6abm8EkgDQuInrHxJB5w2QULFijYtlim1dvBWIrK2FHrujrPsoRdwnhym
         +qiho2MrXP4/oYoeNKrruddrdJxWMGLr5PcK1o/eLeslQl3qrKoYNe2dlMBaCn1OQXgk
         /QjA==
X-Gm-Message-State: AOAM531bcwEQORhVytE8m90zhElm4r/3KLViipT6IqOs02NWMEvw5xbY
	ETUxzr0QWIYaypegL97Xp2M=
X-Google-Smtp-Source: ABdhPJxiMFmW5ue+/Gw4w6gxYr1QA3IUdnx0jwZxHDSxVklL4bc+/r/zn61D43x/VSef0bh7KO0NMw==
X-Received: by 2002:ac8:44b5:: with SMTP id a21mr1066974qto.104.1605638039592;
        Tue, 17 Nov 2020 10:33:59 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aed:2726:: with SMTP id n35ls6483660qtd.3.gmail; Tue, 17 Nov
 2020 10:33:59 -0800 (PST)
X-Received: by 2002:ac8:6601:: with SMTP id c1mr1071040qtp.106.1605638039114;
        Tue, 17 Nov 2020 10:33:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605638039; cv=none;
        d=google.com; s=arc-20160816;
        b=sEA19tXRATJSuLzLjCRJo8eTxCFLE6GiRF6RG7mOnJMdNdueuj6OTSAI4Qk+4URiSl
         oJKSXq8tiEOTX17ZJpeVh/vBddM2zFZmoUDtl6veSzvUEV2J3s8bM99i5GJ/knApxN0E
         7b3kg/YWK/XUe9RiiVcjI2KQ2/egFAUGi4paZa+dc035DyZEl1HdAEXL59ugCqUcS7q3
         rvW/DW4ulSOBiIBVKHMAuddskEvvCt1f26CTQM/DRsT9qOMMq0XwEfWQ4nwAf5N9UVSt
         TmyaBH26nzY1Y+8rbEmRyFeOGKHIUYNqpY+MURyYMclz2NAeOlL2J5409WeI7Id0CZb9
         2dtg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=fQkJ2Lw7TUY5jWjGmBKfeemBsnDuv9nUetOaxVaTDb4=;
        b=wvgOdlYd0XIW02uTK70PDLzZXhSrlO6xCUlwvDyx13/ySDljrHX91pSfkVz6dt4dBI
         nnrE4CacBmRetQ3yxWS9fx5Z2UE55Kc5u/2Pgqf/1j+UbEAy1SFF0s2M9ze+OYcrHJSl
         HTHS3ITiHraEEteusbfh7EhEjTv7MO7ViRg9NciutKjv4gxAiH/ULKant8pBXj321djG
         eslWbjTtHXfvQWnWKJYuyxP0bc56I1B6FrWkDAbILKRdLvudo0R6IVdozUgYdGjxltPp
         EaNFNvYZejqMVzi5OGZMA0aTRCNKhcRsVuy6t7GVLynlkNGn0Lmup8u4jqT2nZp6rTVG
         2aXw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=FOpWOWZ0;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::632 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x632.google.com (mail-pl1-x632.google.com. [2607:f8b0:4864:20::632])
        by gmr-mx.google.com with ESMTPS id h3si1063769qko.3.2020.11.17.10.33.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Nov 2020 10:33:59 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::632 as permitted sender) client-ip=2607:f8b0:4864:20::632;
Received: by mail-pl1-x632.google.com with SMTP id y22so10706752plr.6
        for <clang-built-linux@googlegroups.com>; Tue, 17 Nov 2020 10:33:59 -0800 (PST)
X-Received: by 2002:a17:902:e901:b029:d8:e727:2595 with SMTP id
 k1-20020a170902e901b02900d8e7272595mr749648pld.56.1605638038233; Tue, 17 Nov
 2020 10:33:58 -0800 (PST)
MIME-Version: 1.0
References: <20201117173828.27292-1-info@metux.net>
In-Reply-To: <20201117173828.27292-1-info@metux.net>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 17 Nov 2020 10:33:47 -0800
Message-ID: <CAKwvOd=OsYyPYDg=CU5cHGNxYj6UKcwUKTmrweeERJLkiVwekw@mail.gmail.com>
Subject: Re: [PATCH] lib: compile memcat_p only when needed
To: "Enrico Weigelt, metux IT consult" <info@metux.net>, Andrew Morton <akpm@linux-foundation.org>, 
	Masahiro Yamada <masahiroy@kernel.org>
Cc: LKML <linux-kernel@vger.kernel.org>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, 
	Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue <alexandre.torgue@st.com>, 
	Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>, Yonghong Song <yhs@fb.com>, 
	Andrii Nakryiko <andrii@kernel.org>, John Fastabend <john.fastabend@gmail.com>, 
	KP Singh <kpsingh@chromium.org>, Network Development <netdev@vger.kernel.org>, bpf <bpf@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=FOpWOWZ0;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::632
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Tue, Nov 17, 2020 at 9:38 AM Enrico Weigelt, metux IT consult
<info@metux.net> wrote:
>
> The library function memcat_p() is currently used only once.
> (drivers/hwtracing/stm). So, often completely unused.

Any harm in just moving the definition into drivers/hwtracing/stm?
Then we don't need any Kconfig additions.  There never were many users
of this function, and there probably never will be.

>
> Reducing the kernel size by about 4k by compiling it
> conditionally, only when needed.
>
> Signed-off-by: Enrico Weigelt, metux IT consult <info@metux.net>
> ---
>  drivers/hwtracing/stm/Kconfig | 1 +
>  lib/Kconfig                   | 3 +++
>  lib/Kconfig.debug             | 1 +
>  lib/Makefile                  | 4 +++-
>  4 files changed, 8 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/hwtracing/stm/Kconfig b/drivers/hwtracing/stm/Kconfig
> index aad594fe79cc..8ce5cfd759d1 100644
> --- a/drivers/hwtracing/stm/Kconfig
> +++ b/drivers/hwtracing/stm/Kconfig
> @@ -3,6 +3,7 @@ config STM
>         tristate "System Trace Module devices"
>         select CONFIGFS_FS
>         select SRCU
> +       select GENERIC_LIB_MEMCAT_P
>         help
>           A System Trace Module (STM) is a device exporting data in System
>           Trace Protocol (STP) format as defined by MIPI STP standards.
> diff --git a/lib/Kconfig b/lib/Kconfig
> index b46a9fd122c8..b42ed8d68937 100644
> --- a/lib/Kconfig
> +++ b/lib/Kconfig
> @@ -686,6 +686,9 @@ config GENERIC_LIB_CMPDI2
>  config GENERIC_LIB_UCMPDI2
>         bool
>
> +config GENERIC_LIB_MEMCAT_P
> +       tristate
> +
>  config PLDMFW
>         bool
>         default n
> diff --git a/lib/Kconfig.debug b/lib/Kconfig.debug
> index c789b39ed527..beb5adb2f0b7 100644
> --- a/lib/Kconfig.debug
> +++ b/lib/Kconfig.debug
> @@ -2334,6 +2334,7 @@ config TEST_DEBUG_VIRTUAL
>
>  config TEST_MEMCAT_P
>         tristate "Test memcat_p() helper function"
> +       select GENERIC_LIB_MEMCAT_P
>         help
>           Test the memcat_p() helper for correctly merging two
>           pointer arrays together.
> diff --git a/lib/Makefile b/lib/Makefile
> index ce45af50983a..18fd6630be0b 100644
> --- a/lib/Makefile
> +++ b/lib/Makefile
> @@ -36,7 +36,9 @@ lib-y := ctype.o string.o vsprintf.o cmdline.o \
>          flex_proportions.o ratelimit.o show_mem.o \
>          is_single_threaded.o plist.o decompress.o kobject_uevent.o \
>          earlycpio.o seq_buf.o siphash.o dec_and_lock.o \
> -        nmi_backtrace.o nodemask.o win_minmax.o memcat_p.o
> +        nmi_backtrace.o nodemask.o win_minmax.o
> +
> +obj-$(CONFIG_GENERIC_LIB_MEMCAT_P) += memcat_p.o
>
>  lib-$(CONFIG_PRINTK) += dump_stack.o
>  lib-$(CONFIG_SMP) += cpumask.o
> --
> 2.11.0
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201117173828.27292-1-info%40metux.net.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DOsYyPYDg%3DCU5cHGNxYj6UKcwUKTmrweeERJLkiVwekw%40mail.gmail.com.
