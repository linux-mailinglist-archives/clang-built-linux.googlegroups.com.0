Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBTFFT6BAMGQEG7AON4I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53c.google.com (mail-pg1-x53c.google.com [IPv6:2607:f8b0:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id C4763332F61
	for <lists+clang-built-linux@lfdr.de>; Tue,  9 Mar 2021 20:55:57 +0100 (CET)
Received: by mail-pg1-x53c.google.com with SMTP id p1sf8272411pgi.16
        for <lists+clang-built-linux@lfdr.de>; Tue, 09 Mar 2021 11:55:57 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1615319756; cv=pass;
        d=google.com; s=arc-20160816;
        b=YnzYzxNSJYITYrq30Gwqe2RcyUzqFNXDn8EDH56nYR1xFF7h10Vsxa8/H+0hVVg35I
         0Ofh6opTA9hm0Q0dpgIU/0bH5zkRmM2nGShkJng1/CgxmCtIR5Os8rXG4rdTJe81Wr2P
         0ZyUtHkftTBCjdKMjdJFlISskUMC+HnJGU9qAPtEmhxJgjS3zWv+5y2K8DpsRCswAKOj
         C78tjDYnZSeCHtCdX3XcsULzEwxZLY2iBSi+0GH66IuqnLhRUH9Ma8VoMWgoPqdKQWRN
         mCUCIh6KgSD8UXpHpmGiX/nK9ra6kgy1ebXGWP75hcuPQbjRiUb5W6uMa4qYHoIB2Hev
         Ul6Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=XfK1ziQ1Diyz12vdPCKsozUoZ1KyRhpoirR17WpSZDM=;
        b=jSquxMxENzt4IxI+tKmDSB/aK4UI+snvoy/MrDKBVzMF6hVUIlm80sZUPiaCd9xaoI
         HFNbJQSbfttQ6A9JVRwy/9knsARylU31uWdwuEffD05mahpSVHNiAoJ8fyi8VGMKnN/z
         zMA1HvJOPbH9jjs3S6lpWjZ7ve2BCsidxh0/TNj/ORngT8Jt9RrtybNJEDI5YkGJ8wYE
         X09LvOcTd6JosERYymRZ5dOxXoa2g8izsOqUNZ/MK6jjL9kOBydwkrvWJRFpC1LB8FKK
         CfQq+oqPszMkvFl48yDSefPtbk2drNu34kVO7UB7tUQgMNkrVbmeanb04RKtqDe+2rjg
         jD4A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=2tBjBYar;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.91 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=XfK1ziQ1Diyz12vdPCKsozUoZ1KyRhpoirR17WpSZDM=;
        b=LeofjbD42l2Skh8uOYVEbt2zGeOjOcX6Ws4MX6s2LyMEIBR49aaAR/1mv3qcBdo4us
         d72672+RINayQ6td2zSMnpEk1/38KLlVAFLpYSayweZUfeOmM3xVAX182AeYItS3GTTb
         +6Sar8wosgcZ2yAjcVHyXEmDu+k/8JbHjalpxRcDyFBXwGm1hR3qQ6Qv7QqYOHpNqqcJ
         21ZUniFtotkjUVUXYdm5CVdJypTUtPEdTVYJo+7zc3BlxWCdvP3LRBpbKoUbmw0JDqnZ
         C1jfHj6hSpcIamXQ95Q1PqUfRo/XV35cqzS5dfq11W4+tK2M2tcv7mZQ8PmsL2HdOAir
         crPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XfK1ziQ1Diyz12vdPCKsozUoZ1KyRhpoirR17WpSZDM=;
        b=rll4xtsUZwpCu89d+CkkxFOGcAE3N/4RY1QQl4Qa8C/cj1jrTKmymIIbkQmPR6ieeo
         SGoebUc6BZpk/M3dZ78sEcSzdrQ7QW3aE7B28tujnz5ub9ND6FEuHja+NUiwU0+DZrBb
         rmwsZOuswfoX8bLG5NNGLyRHQwytrd0JnIKg6GdWKI4kt1U1RQGhf4rHbIrjNTtXR0j4
         YCpCOfYAWcJ24saCbJIV3YSeaH0xh0MKNWce5MeUseMExDPfe8EhPanCaHyufDJ6wREH
         B2DZ8FlnWch7t+JiCyQ2J6J0OKxWztSGer0pGLQK5s7alnPQJDVX/B9LQS43OSlh1uL7
         L6pw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533ypBgXY/1mMOZ5XeGABu7USdq6Ear3NOA73HfBwiUSJom32pKy
	H3BsBSr6wfq98MbP8WNVGCg=
X-Google-Smtp-Source: ABdhPJw++G0KjcDwPAi+2t7mH5gEO9NO6zT5aZGNEBikNlVOHSU7UIibLcl1E1FhxIha1zoO2DyFMg==
X-Received: by 2002:a17:90a:f489:: with SMTP id bx9mr6124564pjb.80.1615319756100;
        Tue, 09 Mar 2021 11:55:56 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:6902:: with SMTP id j2ls10660106plk.10.gmail; Tue,
 09 Mar 2021 11:55:55 -0800 (PST)
X-Received: by 2002:a17:90a:a613:: with SMTP id c19mr6443758pjq.141.1615319755305;
        Tue, 09 Mar 2021 11:55:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1615319755; cv=none;
        d=google.com; s=arc-20160816;
        b=Q01OTS9MpyITIYDWGy0dpt+bHrxq7yuOWSodX1HWe2ie9JzfPVHoto1Pfxvq4YwyNA
         w95BfNU3mGxO/JfDmBy5jpOgO8B/NIhvRuP1xStpE5OXQhWB5csmyVUwu/BrWmwdzAWy
         Q9dmM+jcKn9VfNXyOu3rQKUHCVgLbkHFgJf9vwGuf/0KRtp4dDDuCnPyxRaLfSi/CEcj
         p9K+uNad5TYhn4G7lcqd4Eue2F8TA/5xoHjYNZ8KSDeiidyGXJpdsMXqBKYUOmeNTAk0
         9tHigkGHqT/OTnXCnSmtTxyDO2RWL+mITRUBmdK4AfQ+utImopdnCaFyWDzsxqmgsd3w
         YUqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=O2Wusp+oF1an+HCfKF/8accMBu76kIYY85AHixnE3LA=;
        b=m8Ef/heJLHdRhuM48poNya8lFVNB65vUb2wQKoOmRDic7HYs/D/WGTHzq5CH+uSVnW
         K0zg+z9oL9xPJh6xyh73RzGx3F342+R0ViFxotpow/FHRWYNND6IvkkYlBYHtMYZN6iH
         9qn5H6h9U+AyBXnMFxIpqqTGgiuFy7Fn828kTqyunlFFYcLNLE48SbMwNcz3QRmp+3Vg
         Q4qhWHJsoaBjoN4DXtVgpTmS5835wZV+oxck7byWEdreb8J/D3+/xKnCcHEzG2ZUNW8s
         6J63ELj8kBJBC2FcuC27xbDhNVNn2ic1f4XUIE4zrAzhsPo1XYw4g52VIGVz8NaBJD/l
         oqBg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=2tBjBYar;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.91 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-06.nifty.com (conssluserg-06.nifty.com. [210.131.2.91])
        by gmr-mx.google.com with ESMTPS id r7si383061pjp.3.2021.03.09.11.55.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Mar 2021 11:55:55 -0800 (PST)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.91 as permitted sender) client-ip=210.131.2.91;
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175]) (authenticated)
	by conssluserg-06.nifty.com with ESMTP id 129JtdYW011946
	for <clang-built-linux@googlegroups.com>; Wed, 10 Mar 2021 04:55:39 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-06.nifty.com 129JtdYW011946
X-Nifty-SrcIP: [209.85.214.175]
Received: by mail-pl1-f175.google.com with SMTP id 30so2593890ple.4
        for <clang-built-linux@googlegroups.com>; Tue, 09 Mar 2021 11:55:39 -0800 (PST)
X-Received: by 2002:a17:90a:5510:: with SMTP id b16mr6321761pji.87.1615319738849;
 Tue, 09 Mar 2021 11:55:38 -0800 (PST)
MIME-Version: 1.0
References: <20210302210646.3044738-1-nathan@kernel.org> <20210302210646.3044738-2-nathan@kernel.org>
In-Reply-To: <20210302210646.3044738-2-nathan@kernel.org>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Wed, 10 Mar 2021 04:55:00 +0900
X-Gmail-Original-Message-ID: <CAK7LNARd7pM7SCKJOS=_ZDE+-Q_buDOfw_u0vsfof6G1FWXvOQ@mail.gmail.com>
Message-ID: <CAK7LNARd7pM7SCKJOS=_ZDE+-Q_buDOfw_u0vsfof6G1FWXvOQ@mail.gmail.com>
Subject: Re: [PATCH 2/2] Makefile: Only specify '--prefix=' when building with
 clang + GNU as
To: Nathan Chancellor <nathan@kernel.org>
Cc: Michal Marek <michal.lkml@markovi.net>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=2tBjBYar;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.91 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

On Wed, Mar 3, 2021 at 6:07 AM Nathan Chancellor <nathan@kernel.org> wrote:
>
> When building with LLVM_IAS=1, there is no point to specifying
> '--prefix=' because that flag is only used to find the cross assembler,
> which is clang itself when building with LLVM_IAS=1. All of the other
> tools are invoked directly from PATH or a full path specified via the
> command line, which does not depend on the value of '--prefix='.
>
> Sharing commands to reproduce issues becomes a little bit easier without
> a '--prefix=' value because that '--prefix=' value is specific to a
> user's machine due to it being an absolute path.
>
> Signed-off-by: Nathan Chancellor <nathan@kernel.org>


I was tricked by a couple of Reviewed-by/Tested-by tags.

With this patch applied, the code looks as follows:


ifneq ($(CROSS_COMPILE),)
CLANG_FLAGS += --target=$(notdir $(CROSS_COMPILE:%-=%))
ifneq ($(LLVM_IAS),1)
GCC_TOOLCHAIN_DIR := $(dir $(shell which $(CROSS_COMPILE)elfedit))
CLANG_FLAGS += --prefix=$(GCC_TOOLCHAIN_DIR)$(notdir $(CROSS_COMPILE))
CLANG_FLAGS += -no-integrated-as
endif
endif


For the native build (empty CROSS_COMPILE),
you cannot add -no-integrated-as.


I dropped this from my tree.



Is the correct code as follows?


ifneq ($(LLVM_IAS),1)
CLANG_FLAGS += -no-integrated-as
ifneq ($(CROSS_COMPILE),)
CLANG_FLAGS += --target=$(notdir $(CROSS_COMPILE:%-=%))
GCC_TOOLCHAIN_DIR := $(dir $(shell which $(CROSS_COMPILE)elfedit))
CLANG_FLAGS += --prefix=$(GCC_TOOLCHAIN_DIR)$(notdir $(CROSS_COMPILE))
endif
endif






> ---
>  Makefile | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/Makefile b/Makefile
> index c20f0ad8be73..0413b8c594cd 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -566,12 +566,12 @@ CC_VERSION_TEXT = $(shell $(CC) --version 2>/dev/null | head -n 1 | sed 's/\#//g
>  ifneq ($(findstring clang,$(CC_VERSION_TEXT)),)
>  ifneq ($(CROSS_COMPILE),)
>  CLANG_FLAGS    += --target=$(notdir $(CROSS_COMPILE:%-=%))
> +ifneq ($(LLVM_IAS),1)
>  GCC_TOOLCHAIN_DIR := $(dir $(shell which $(CROSS_COMPILE)elfedit))
>  CLANG_FLAGS    += --prefix=$(GCC_TOOLCHAIN_DIR)$(notdir $(CROSS_COMPILE))
> -endif
> -ifneq ($(LLVM_IAS),1)
>  CLANG_FLAGS    += -no-integrated-as
>  endif
> +endif
>  CLANG_FLAGS    += -Werror=unknown-warning-option
>  KBUILD_CFLAGS  += $(CLANG_FLAGS)
>  KBUILD_AFLAGS  += $(CLANG_FLAGS)
> --
> 2.31.0.rc0.75.gec125d1bc1
>


-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNARd7pM7SCKJOS%3D_ZDE%2B-Q_buDOfw_u0vsfof6G1FWXvOQ%40mail.gmail.com.
