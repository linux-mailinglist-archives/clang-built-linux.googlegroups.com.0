Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBMFGS76AKGQEPGRZHGI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe37.google.com (mail-vs1-xe37.google.com [IPv6:2607:f8b0:4864:20::e37])
	by mail.lfdr.de (Postfix) with ESMTPS id 0454F28D203
	for <lists+clang-built-linux@lfdr.de>; Tue, 13 Oct 2020 18:17:54 +0200 (CEST)
Received: by mail-vs1-xe37.google.com with SMTP id f19sf121533vsp.10
        for <lists+clang-built-linux@lfdr.de>; Tue, 13 Oct 2020 09:17:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602605873; cv=pass;
        d=google.com; s=arc-20160816;
        b=rnrvk26cMZH16wLfrJbvO2sYFinvchHm1cL95DHBVY/YKT+3EELI5ilaf9Lo1ol0nK
         dfi8/cirpBBJdr/SRBZYdc3BA3p/2j4kGledxe2DW3BdKD4GH9py5oH0MaPS8xh/fi20
         1XRjXGr+Jvx8o2nEM1rMaDhK04frfmEZQVFCfLDoZ/kd06MlOx3QV7DiCkHLPwG/sBr4
         Q4N4J626gTDbYtB5B8ifVkamPcDocMJkCiuhkccwv1y/qgfmuGzK1YTpQtag5hpJ/UHf
         Frs0MB7lXCAlqRNjhgTCP6zpkBGG6hTYvdRPeHtIgv7LfK02QMw+FTCc5x43nKiRTQXc
         ZZvA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=04YvFTolJJGdpgNLOouUZpE3K7r2u9uBcpsTIn9qhpY=;
        b=f61BhaGQB9ZGqYj5kkcxn4N+r88gzUYn2yNcH9e9bcuZbo/8MlFsPQot0NIWw4mk4o
         xEL+yz37q0a7lFSiT7fICob9i88uZcGZQq+LYpdZzLomOu2OHf53FIjAwCOWN/n8kRu3
         9Mf0c0lZRprtTCz3PBYkgPcBKEmCd+Hbvw51Zz72rgkvsH/IyI2aOvTb21PIhnZ9Nd30
         HX2IVTlGAW2/PvleN70N0JjbNpmXFH3JiGKFPGduJi+Xy5lN/afsFZYdVR6zoNTYbGvR
         7A6WiBOF98gp5h/bkPDdZYFbJRSc1Q497e7XdKF7Tbpq78Dd49PoGYajeYzWZyKMTApK
         Yg6w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b="q7/RJVmC";
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.80 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=04YvFTolJJGdpgNLOouUZpE3K7r2u9uBcpsTIn9qhpY=;
        b=iCudjQXo+e/3g1jAXnMB5Z5wn++rSBVunIu3F7AQEyJpCKN9bQfZUhoMrHHEHBExx2
         QwHZfIB6094WeeL8F/PZLzQXgTNAMHaLa9hvg+UlDVts/EHGpOqsRkjG4lw23vtpQH0a
         alz2YxQi2wuYfcOwN+LxgxIiql3u5P5eGibljFNnqt5sL7gOsJWeuPNFHKbxgwKMLM8W
         0EodYQsTHY4tcSyUGiGRx1k9su/nfivOMxWQx4csUP2DHqIrjMvRGbVUiVm+9obordEc
         DO91df4mez1EFavoxZJkRCC9535crr6i++EnTahQ8yMkgT3hpnZARyy435mj9X4OhJeN
         LDmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=04YvFTolJJGdpgNLOouUZpE3K7r2u9uBcpsTIn9qhpY=;
        b=FhFgeo4Rnk1ktNpZGpTINgVnRSOUivzwiPGb8Etg+yQtKi8ShoYH6Ekh1EdBlkFsEY
         oEp7C+WF1B+1y45X0dCUFAMQuGcUu/fuBMWoB8NSzqG5iDNV5+dfAscL7LLqPslDqWLo
         ELa0+UJcqRdV8Um3pQQgcQxZ/3U/SQzqv0e7V5VGv4LSBAqc0yhf4J2co+p8t8IUr7zQ
         lu7iuiua2TWGsok+Fm4vxjcPYmzzTxSNSWqg1G++nBrconHkNC91TVdUqpAqdZDrfgQ4
         GJiZNhEdUeOeGDM6brVTc2B4F2F0WdgSUD5L/7NN8NMwrVDyoAdoJHY6RdDGOC4kjZt0
         DGgw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5302fSpJP9va9i5/aopm2V+XRFXmcs0A7iyUwBT/9cObyUrE9hpk
	YmVwBnIGw9G+soAbsCH8N7g=
X-Google-Smtp-Source: ABdhPJzcEh2gDH8SaYR/WaCCz1NHXYgGk+gaw2+E711/7aU4evGR37fiMnEzyUsmebhi7KgOmQNrRA==
X-Received: by 2002:ab0:66d6:: with SMTP id d22mr581502uaq.77.1602605872973;
        Tue, 13 Oct 2020 09:17:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:874b:: with SMTP id j72ls63386vsd.9.gmail; Tue, 13 Oct
 2020 09:17:52 -0700 (PDT)
X-Received: by 2002:a67:fac4:: with SMTP id g4mr687929vsq.9.1602605872132;
        Tue, 13 Oct 2020 09:17:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602605872; cv=none;
        d=google.com; s=arc-20160816;
        b=Vkpm3mxNb6Q8Bx8EwVQaHr8f4AcXTxgCY3Sp7AiuznoDQKm8NJOoShl2ncY5LviKuF
         hiePixVViaK0DSFqnbwm3Ee64uZYGVgxOWtykTRQmztgbG25LE1tHqWTbGbNw7mQprHN
         DMnoGPf2m1JHuMNu8mz7AmjVkfNLNjuRTbXVVki0uSLqOOstpopOcLZeDFDhStm9ZCzR
         +BFhLWGWcMJO8rl6oGzqi2jGlIggHNxgFHPRRAnL6PPbFpOAZhF6gwXeE9J5QvTZfxNg
         iJNF+UlQVP32hpXZJWBvpnZtefmKczRhBJAD3tfvhGpJnvsleZkPVSQfqRHpHGGmp97C
         b48w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=PTNol6ZKZ6WikiQS1iwVWRfK1eVWXWR50IMrdlrgv8M=;
        b=E4jSo4Go37r2OJI32KyFTdskrGhuZSRRaLR8BL+zz4VK/Rlnn+Oy9FkeeRwlHuw2rC
         tibkWzeG+R2KqX1nooXQzsfRLLPcNz6hmLFM4Rie3+bpRVcrBQiuJZZYVmLIa+xkItMQ
         lQPPhPrXHJyxSMyQ1LtdXy6w4ZfZqej/JR/2tnJG5zWAXu/3LkYTcgsssIk5fdi4snBD
         LOIsZ4Oimip+oazRhsmcIHh3t5cZVWIRtY4aqGWFhGSryDjuQbX3PWwAc39kl3oaMFDK
         XLxw1vwQyGtz/bmFfqceeiJuYItOIm91+aKK3UHYpq1e54vwf4CQ/R3mTnQxkXoidcDF
         wLaQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b="q7/RJVmC";
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.80 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-01.nifty.com (conssluserg-01.nifty.com. [210.131.2.80])
        by gmr-mx.google.com with ESMTPS id g23si26567vsa.0.2020.10.13.09.17.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Oct 2020 09:17:52 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.80 as permitted sender) client-ip=210.131.2.80;
Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com [209.85.210.177]) (authenticated)
	by conssluserg-01.nifty.com with ESMTP id 09DGHam7015873
	for <clang-built-linux@googlegroups.com>; Wed, 14 Oct 2020 01:17:36 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-01.nifty.com 09DGHam7015873
X-Nifty-SrcIP: [209.85.210.177]
Received: by mail-pf1-f177.google.com with SMTP id c20so51007pfr.8
        for <clang-built-linux@googlegroups.com>; Tue, 13 Oct 2020 09:17:36 -0700 (PDT)
X-Received: by 2002:aa7:90cf:0:b029:156:2bff:5a87 with SMTP id
 k15-20020aa790cf0000b02901562bff5a87mr429693pfk.63.1602605855902; Tue, 13 Oct
 2020 09:17:35 -0700 (PDT)
MIME-Version: 1.0
References: <20201012170631.1241502-1-ujjwalkumar0501@gmail.com> <20201012170631.1241502-2-ujjwalkumar0501@gmail.com>
In-Reply-To: <20201012170631.1241502-2-ujjwalkumar0501@gmail.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Wed, 14 Oct 2020 01:16:59 +0900
X-Gmail-Original-Message-ID: <CAK7LNAQUXwH0KoNNQo9F1UCkkah2S1gJZKJFB1+91M3ZGSHQSQ@mail.gmail.com>
Message-ID: <CAK7LNAQUXwH0KoNNQo9F1UCkkah2S1gJZKJFB1+91M3ZGSHQSQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] kconfig: use interpreters to invoke scripts
To: Ujjwal Kumar <ujjwalkumar0501@gmail.com>
Cc: Michal Marek <michal.lkml@markovi.net>,
        Andrew Morton <akpm@linux-foundation.org>,
        Kees Cook <keescook@chromium.org>,
        Lukas Bulwahn <lukas.bulwahn@gmail.com>,
        Nathan Chancellor <natechancellor@gmail.com>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        linux-ia64@vger.kernel.org,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        linux-kernel-mentees@lists.linuxfoundation.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b="q7/RJVmC";
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org
 does not designate 210.131.2.80 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

On Tue, Oct 13, 2020 at 2:08 AM Ujjwal Kumar <ujjwalkumar0501@gmail.com> wrote:
>
> We cannot rely on execute bits to be set on files in the repository.
> The build script should use the explicit interpreter when invoking any
> script from the repository.
>
> Link: https://lore.kernel.org/lkml/20200830174409.c24c3f67addcce0cea9a9d4c@linux-foundation.org/
> Link: https://lore.kernel.org/lkml/202008271102.FEB906C88@keescook/
>
> Suggested-by: Andrew Morton <akpm@linux-foundation.org>
> Suggested-by: Kees Cook <keescook@chromium.org>
> Suggested-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>
> Signed-off-by: Ujjwal Kumar <ujjwalkumar0501@gmail.com>
> ---



The patch prefix 'kconfig:' should be used for changes
under scripts/kconfig/.


I want to see both prefixed with "kbuild:".

1/2:   kbuild: use interpreters in Kconfig files to invoke scripts
2/2:   kbuild: use interpreters in Makefiles to invoke scripts


More preferably, those two patches should be squashed into a
single patch titled "kbuild: use interpreters to invoke scripts"



BTW, I notice some code left unconverted.

For example,
https://github.com/torvalds/linux/blob/master/init/Kconfig#L68
https://github.com/torvalds/linux/blob/v5.9/certs/Makefile#L25

Maybe more...



I know it is difficult to cover everything, but please
re-check the remaining code.







>  init/Kconfig | 16 ++++++++--------
>  1 file changed, 8 insertions(+), 8 deletions(-)
>
> diff --git a/init/Kconfig b/init/Kconfig
> index c9446911cf41..8adf3194d26f 100644
> --- a/init/Kconfig
> +++ b/init/Kconfig
> @@ -30,12 +30,12 @@ config CC_IS_GCC
>
>  config GCC_VERSION
>         int
> -       default $(shell,$(srctree)/scripts/gcc-version.sh $(CC)) if CC_IS_GCC
> +       default $(shell,$(CONFIG_SHELL) $(srctree)/scripts/gcc-version.sh $(CC)) if CC_IS_GCC
>         default 0
>
>  config LD_VERSION
>         int
> -       default $(shell,$(LD) --version | $(srctree)/scripts/ld-version.sh)
> +       default $(shell,$(LD) --version | $(AWK) -f $(srctree)/scripts/ld-version.sh)
>
>  config CC_IS_CLANG
>         def_bool $(success,echo "$(CC_VERSION_TEXT)" | grep -q clang)
> @@ -45,20 +45,20 @@ config LD_IS_LLD
>
>  config CLANG_VERSION
>         int
> -       default $(shell,$(srctree)/scripts/clang-version.sh $(CC))
> +       default $(shell,$(CONFIG_SHELL) $(srctree)/scripts/clang-version.sh $(CC))
>
>  config CC_CAN_LINK
>         bool
> -       default $(success,$(srctree)/scripts/cc-can-link.sh $(CC) $(CLANG_FLAGS) $(m64-flag)) if 64BIT
> -       default $(success,$(srctree)/scripts/cc-can-link.sh $(CC) $(CLANG_FLAGS) $(m32-flag))
> +       default $(success,$(CONFIG_SHELL) $(srctree)/scripts/cc-can-link.sh $(CC) $(CLANG_FLAGS) $(m64-flag)) if 64BIT
> +       default $(success,$(CONFIG_SHELL) $(srctree)/scripts/cc-can-link.sh $(CC) $(CLANG_FLAGS) $(m32-flag))
>
>  config CC_CAN_LINK_STATIC
>         bool
> -       default $(success,$(srctree)/scripts/cc-can-link.sh $(CC) $(CLANG_FLAGS) $(m64-flag) -static) if 64BIT
> -       default $(success,$(srctree)/scripts/cc-can-link.sh $(CC) $(CLANG_FLAGS) $(m32-flag) -static)
> +       default $(success,$(CONFIG_SHELL) $(srctree)/scripts/cc-can-link.sh $(CC) $(CLANG_FLAGS) $(m64-flag) -static) if 64BIT
> +       default $(success,$(CONFIG_SHELL) $(srctree)/scripts/cc-can-link.sh $(CC) $(CLANG_FLAGS) $(m32-flag) -static)
>
>  config CC_HAS_ASM_GOTO
> -       def_bool $(success,$(srctree)/scripts/gcc-goto.sh $(CC))
> +       def_bool $(success,$(CONFIG_SHELL) $(srctree)/scripts/gcc-goto.sh $(CC))
>
>  config CC_HAS_ASM_GOTO_OUTPUT
>         depends on CC_HAS_ASM_GOTO
> --
> 2.25.1
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201012170631.1241502-2-ujjwalkumar0501%40gmail.com.



-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAQUXwH0KoNNQo9F1UCkkah2S1gJZKJFB1%2B91M3ZGSHQSQ%40mail.gmail.com.
