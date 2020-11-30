Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBAXJST7AKGQEQUHTZHA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x640.google.com (mail-pl1-x640.google.com [IPv6:2607:f8b0:4864:20::640])
	by mail.lfdr.de (Postfix) with ESMTPS id 69D842C8C14
	for <lists+clang-built-linux@lfdr.de>; Mon, 30 Nov 2020 19:05:56 +0100 (CET)
Received: by mail-pl1-x640.google.com with SMTP id g1sf3851204plt.20
        for <lists+clang-built-linux@lfdr.de>; Mon, 30 Nov 2020 10:05:56 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606759555; cv=pass;
        d=google.com; s=arc-20160816;
        b=eKeO9kKf3jreW7dgwgZbcRcFXmRM/F2zhm+BBSFaSSKWfbl+t2EjKRRjShSYLBtt6c
         nra37qPP8NyhPPbu7VPujpJHPsraLWJ+aD/Ge1BJ6t96pcyyhtLKO/+Ao4Xb6wJstAc9
         5eZ/YmaH6Hb75ULPvt8hkp+qX/mgBvIhCb6dY04moCOaWjbbFnUI5IYr9O+rG1OyPjbd
         An7+F++gNBi1znUwXW5pscluW5p8WMmEthrlsfXOEUPkDcqnJ5PB8lZrPsUQSMkez1Vf
         5CJAR2BJVfYGRb5lnUgQUQc4rZ+jIoa6F4bJGSGCgVt+pLYRjNup8PhX7919NdpQdZkN
         ANcg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=egm004UZjZlyCHoKtiUpjgMxj3Ri9RCyI3oB95MlQvI=;
        b=PhCDU9p8OQSmPSHZg/U963u6Om3cVMiHZxZ6uJtuZ6LiZkF40rIvs1HogptV44orpU
         T1fZF60tmKkEKhfqP2PpWlleLas1zTjOy7LucA3mmYdP+uzVuKVUZ7Lf8PsRGB/AFag0
         OU7gp29O9n2dy1lyAwqAYI8zTKsht76+YmpTlwuUzOXRNi1bqFwItWnAbffzZT6LzXyW
         bTzIoAahZkgsTYyxntynZ8ccoYkC/AupqDp78b9Jw/e8qHBHMqAshmauLdhz0m67J0vK
         FPwcse/Izi3J9iTVJ/AwGd4NQ0Z7aFYOW6IMHV0JHhljWhXlmxOaVy0CSfUmveJEJ919
         NhTw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=Q435s1Fo;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.80 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=egm004UZjZlyCHoKtiUpjgMxj3Ri9RCyI3oB95MlQvI=;
        b=WfwvEuSrQ0/xKvvUhB2VWcXGvzQ76LS6P1RLBSByNhqHsntO7HDXjKaDZUlh4XXna8
         oxx1QEV7tHEI1SrAkMcDSWLGvNXk6/IlHe+UCMAghqyNQ9YidBqqBpThQPE+ew99DJbK
         fqlDkikGDnTgo7BF+OqLQ9a96wBi1Vgfi9VSCFEkcqXPNjXMw/kf5XhP72QNZKHkxxRf
         LcoFsdPUETo2MwgrRxDzbnTVwplieVJWtLZ26ca/iCe+iaMymrKirZqApQNyXnl15rBa
         ddx6iH2IZW0KSon2rgWRr+H5je98cLa1Chii2a/zE83KJDTDEM0fwTIq9LTpUXcSfXKu
         kaeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=egm004UZjZlyCHoKtiUpjgMxj3Ri9RCyI3oB95MlQvI=;
        b=ArKvilb48UhO7odmLhv/Gf2uw31GdItC56gygMZ7ssFfjqLmBqPuPJvBEyFwaOg9K0
         5IYFHzFU92Fej17DVlVsyF+L3yIQoSuuJ9J1fULfqGOgDtHb0i6Z3iUHbMuOscwbOOmm
         foc2OIISIMmM+io1faAXQIgie2XLwBSAjBLnG8SpxLGlZZu/vd6GGxG70oOis3iONv4+
         3pBz29yIowBLFcixAJ78+nKJ80KVD7SgilA/fu/RkEiRq4U61eRI5Clt5+loPSbdT+y6
         ZPBwNkVymL3QbSfT6hTuYeFfhiSP67k5A8LvMwSMhVsWLx9a6CtF2vFCyOX4uxmNpvho
         +0Gw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530R2sA1DmW8A2YtGgNBPuXIKqGt3eF9Oh1fHyONus7ppRwSfMCT
	K8QG1yqSI+hVbnD+CMpvqn0=
X-Google-Smtp-Source: ABdhPJyxs33UFy/k1oxHJVFivmdzlcAFxlyCqo2O+/u8uz2fErPCtIKj7HlzJF+XTEKzahMTlnLu1w==
X-Received: by 2002:a17:902:868e:b029:d7:eb0d:79e8 with SMTP id g14-20020a170902868eb02900d7eb0d79e8mr20329712plo.12.1606759554626;
        Mon, 30 Nov 2020 10:05:54 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:451d:: with SMTP id s29ls4491675pga.5.gmail; Mon, 30 Nov
 2020 10:05:54 -0800 (PST)
X-Received: by 2002:a63:c008:: with SMTP id h8mr5424058pgg.335.1606759553785;
        Mon, 30 Nov 2020 10:05:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606759553; cv=none;
        d=google.com; s=arc-20160816;
        b=VLQ0Dkg+rjzAdRdYaEgx+3Owgz9BQG6zWXRKAxuVdLzxcWyDyUw36jsvvTkyaTTbgH
         i3GwWg84Idy7LSBpXcuT3IkibKuXanevrQj+hY+wOcQs8AC4uSEhRAFIx6RNN59VKZIK
         qhyK9fy7levdbzvyMJPKea3AJjUUFMrQNebygYgMBgXYHJ2JNSWt7+yriWbLo5AWTzF1
         Pf9fBkoRVzg+oS7ta00HOj9tMDDkbbfrMNWbimVjAF8QAtrIOwqaFxBcdAelO5aJdLSm
         OssQ0CDb1rFLDYubF2OGFsaiIX17jE8DGL2O7nqj0PX0HTd6q6nH3Xs9yPLPW/Y6Seiw
         yL1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=Uh4bIgW4sNgrSBi12OkKecL/ZclO6A0g1hh7lFN2Jko=;
        b=Z+fEbRA6qpMjarCj2Vwky7Cy1E7qlaCUO2afsLhGgRN78efpra5Z74hM2z52fBD/qw
         oJe0/vg+KCqwV4GqNdjQxSCA2Z9uR/Rx0HdPehU0hSh8c9cEE7+UXymp7prypO6UFsDT
         mJqG2UY6/bwEUoMWVp5BCPf/HmqQZrIzVx3JLmDTzlzRV+wyAlXjyTJPIInSC0G9yie6
         IQawRnR329l7eSnQiOYgHBOaJ0VuDc5x+/4WRwBOpOzmO8CqzxPHpLwbj7113OvFMTzu
         9lvMaOIS6SqiCwnzlRNwOUNC+r86DUBDJPQxHRH6XVVlIct4p6qgGUnGjqdCjIJsjUzs
         n2Iw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=Q435s1Fo;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.80 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-01.nifty.com (conssluserg-01.nifty.com. [210.131.2.80])
        by gmr-mx.google.com with ESMTPS id d2si1211882pfr.4.2020.11.30.10.05.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 30 Nov 2020 10:05:53 -0800 (PST)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.80 as permitted sender) client-ip=210.131.2.80;
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com [209.85.214.173]) (authenticated)
	by conssluserg-01.nifty.com with ESMTP id 0AUI5U0M000565
	for <clang-built-linux@googlegroups.com>; Tue, 1 Dec 2020 03:05:30 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-01.nifty.com 0AUI5U0M000565
X-Nifty-SrcIP: [209.85.214.173]
Received: by mail-pl1-f173.google.com with SMTP id x4so5186058pln.8
        for <clang-built-linux@googlegroups.com>; Mon, 30 Nov 2020 10:05:30 -0800 (PST)
X-Received: by 2002:a17:90a:c209:: with SMTP id e9mr27829261pjt.87.1606759529929;
 Mon, 30 Nov 2020 10:05:29 -0800 (PST)
MIME-Version: 1.0
References: <CAK7LNAST0Ma4bGGOA_HATzYAmRhZG=x_X=8p_9dKGX7bYc2FMA@mail.gmail.com>
 <20201104005343.4192504-1-ndesaulniers@google.com> <20201104005343.4192504-4-ndesaulniers@google.com>
In-Reply-To: <20201104005343.4192504-4-ndesaulniers@google.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Tue, 1 Dec 2020 03:04:50 +0900
X-Gmail-Original-Message-ID: <CAK7LNAT5MQqUddv+QbFu5ToLBK3eUPArHSBR=5AOS3ONtMqKaw@mail.gmail.com>
Message-ID: <CAK7LNAT5MQqUddv+QbFu5ToLBK3eUPArHSBR=5AOS3ONtMqKaw@mail.gmail.com>
Subject: Re: [PATCH v2 3/4] Kbuild: make DWARF version a choice
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Jakub Jelinek <jakub@redhat.com>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        linux-toolchains@vger.kernel.org,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Fangrui Song <maskray@google.com>,
        Nathan Chancellor <natechancellor@gmail.com>,
        Sedat Dilek <sedat.dilek@gmail.com>, Dmitry Golovin <dima@golovin.in>,
        Alistair Delva <adelva@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=Q435s1Fo;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.80 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

On Wed, Nov 4, 2020 at 9:53 AM 'Nick Desaulniers' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
>
> Modifies CONFIG_DEBUG_INFO_DWARF4 to be a member of a choice. Adds an
> explicit CONFIG_DEBUG_INFO_DWARF2, which is the default. Does so in a
> way that's forward compatible with existing configs, and makes adding
> future versions more straightforward.
>
> Suggested-by: Fangrui Song <maskray@google.com>
> Suggested-by: Masahiro Yamada <masahiroy@kernel.org>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
>  Makefile          | 14 ++++++++------
>  lib/Kconfig.debug | 19 +++++++++++++++----
>  2 files changed, 23 insertions(+), 10 deletions(-)
>
> diff --git a/Makefile b/Makefile
> index 75b1a3dcbf30..e23786a4c1c7 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -826,12 +826,14 @@ else
>  DEBUG_CFLAGS   += -g
>  endif
>
> -ifndef LLVM_IAS
> -KBUILD_AFLAGS  += -Wa,-gdwarf-2
> -endif
> -
> -ifdef CONFIG_DEBUG_INFO_DWARF4
> -DEBUG_CFLAGS   += -gdwarf-4
> +dwarf-version-$(CONFIG_DEBUG_INFO_DWARF2) := 2
> +dwarf-version-$(CONFIG_DEBUG_INFO_DWARF4) := 4
> +DEBUG_CFLAGS   += -gdwarf-$(dwarf-version-y)
> +ifneq ($(dwarf-version-y)$(LLVM_IAS),21)
> +# Binutils 2.35+ required for -gdwarf-4+ support.
> +dwarf-aflag    := $(call as-option,-Wa$(comma)-gdwarf-$(dwarf-version-y))
> +DEBUG_CFLAGS   += $(dwarf-aflag)

This changes the behavior.

For the Dwarf-2 case,

Previously, -gdwarf-2 was passed to $(CC),
so the debug info was generated by gcc.

Now, -Wa,-gdwarf-2 is passed to $(CC).
-gdwarf-2 is handled by GNU as.
So, the source info points to /tmp/<hash>.s
instead of the original .c file.



Handling the Dwarf capability is very complicated.

Are you still working for v3?



> +KBUILD_AFLAGS  += $(dwarf-aflag)
>  endif
>
>  ifdef CONFIG_DEBUG_INFO_REDUCED
> diff --git a/lib/Kconfig.debug b/lib/Kconfig.debug
> index 83a860126897..03c494eefabd 100644
> --- a/lib/Kconfig.debug
> +++ b/lib/Kconfig.debug
> @@ -256,14 +256,25 @@ config DEBUG_INFO_SPLIT
>           to know about the .dwo files and include them.
>           Incompatible with older versions of ccache.
>
> +choice
> +       prompt "DWARF version"
> +       help
> +         Which version of DWARF debug info to emit.
> +
> +config DEBUG_INFO_DWARF2
> +       bool "Generate DWARF v2 debuginfo"
> +       help
> +         Generate DWARF v2 debug info.
> +
>  config DEBUG_INFO_DWARF4
>         bool "Generate dwarf4 debuginfo"
>         depends on $(cc-option,-gdwarf-4)
>         help
> -         Generate dwarf4 debug info. This requires recent versions
> -         of gcc and gdb. It makes the debug information larger.
> -         But it significantly improves the success of resolving
> -         variables in gdb on optimized code.
> +         Generate DWARF v4 debug info. This requires gcc 4.5+ and gdb 7.0+.
> +         It makes the debug information larger, but it significantly
> +         improves the success of resolving variables in gdb on optimized code.
> +
> +endchoice # "DWARF version"
>
>  config DEBUG_INFO_BTF
>         bool "Generate BTF typeinfo"
> --
> 2.29.1.341.ge80a0c044ae-goog
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201104005343.4192504-4-ndesaulniers%40google.com.



-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAT5MQqUddv%2BQbFu5ToLBK3eUPArHSBR%3D5AOS3ONtMqKaw%40mail.gmail.com.
