Return-Path: <clang-built-linux+bncBDYJPJO25UGBB6U4U37AKGQEB4YGAYI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23a.google.com (mail-oi1-x23a.google.com [IPv6:2607:f8b0:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id B5FE52CE4DB
	for <lists+clang-built-linux@lfdr.de>; Fri,  4 Dec 2020 02:18:51 +0100 (CET)
Received: by mail-oi1-x23a.google.com with SMTP id v4sf1800261oie.19
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Dec 2020 17:18:51 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607044730; cv=pass;
        d=google.com; s=arc-20160816;
        b=BzvwOewYdLDIAl7h1DXh7YMxHYdSKmKYxNNdqZ9+Lv16wl6jlU51RSd5vW1byfEGWL
         Tvpg4Neq3SsCYoAuysxEV/ImqI3lOs3H9phLAUaQ+SMo6TmOD7pusPcL5vl437aZLFrU
         h9f8aI9m2iJ9/JPoqw1UP0X4xYPAzhrvQexGYhhefToFqOCQowFI7zSuXMGgdxY+hZi+
         6KNU9ey00B6SgrWAcIyh+9YlEv8f0JBKr7BaIPbj6ID3j4jVH45hzQVaH0wEhEOflyZi
         MX+ByyWLCkTJ6hv0mqmeyzyU8f/6B101GCrfJKljxU7dEd8OHQB3323t4cvzHjapCqhS
         O4HA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=2tZ2UkVmH3CHeN8AEAv9zwGTyw8b0w6D+UfWfgynIiQ=;
        b=0OCr1JNBqUTE06gQcpIRv+1SLiBZvaSSguW9dYTfgVUbhdrgxYxoFiv7DLI9fq0tF/
         hFekWDQj3shHoAMBDVZJ6gel8ES7WHNT4hYs2uq1dSNhZ9k1MZF8u5vzKmpE69Ib1vRY
         njGg2MVjLSE/RfBw494xLAbBI+9+jn15oTzIE05B3hwcyr6pOOV11IfCGLDU9nj+85sH
         DYhRMHwxCYUaAgKkODwscyHdX9Z5GkmNnBWJVogjxJduazjIvzQXVbeyJaxyGibCsjZ8
         RL67rJ3oEnc0mXVypLanzxebNpwP6D2Kz8hSuOjivENwyJbtiLCqexmT1Z/PdNQCTjvG
         Cdhw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=AdkoRN88;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2tZ2UkVmH3CHeN8AEAv9zwGTyw8b0w6D+UfWfgynIiQ=;
        b=UNzs256y3GAQGUsfcmnkYfizK/1OIv5dxJ9y5gMBzMGRJhRG7tf8MqtrOf7AuuHaCe
         DlyYhxyZNtN30MDi3zbmg4SkWh/sTA3IHf3jZz6VGPdBR3AzP5kmxNoI/4WKvY/HmA7+
         XkNo1iBjncNyX/cVvVtcqqhJbX8a1exjA1HeEDbp2RAEITCfjv3Vqw/0c7PWjPZz1hfX
         bH5Yrx3Ax8SrwVl1t/WaP4ONr0MnzwNQrStAX2/1ZPMaBsUICRiyTl3EzJmV6tYe3UR2
         DM3PfR8FvONKrktW4s+0Lj3ZVbIn5tJMsi5xsoXpYQso2jlL83D/6yBFlcX3bnni6Xhq
         e66g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2tZ2UkVmH3CHeN8AEAv9zwGTyw8b0w6D+UfWfgynIiQ=;
        b=mnELHnykD9JIBT6EVNvCt3CT3jntokYBx2CEC2XsQJ1O3hI80eVd2i2vS8DDst8lnX
         gKTqqhqK5lgab9yg0ti/npl60DcNbn3+wtRU6odNKDYzGD5c4V9LckmZ9j6pQOiSj/Lh
         18oacicUrrrKeOIXwCq1Mb14ePMXqcD0tkfEmERSX+RhJQ154MTBMmnljvYeq+fKu5cJ
         Zs3Em7fIbLlsPA7SxXptwcBB6GTLc6WuKHCWcCH/ezUvZlwdpvUnjzCeRYqpg2limBk4
         SjLxW701/IJ3vvh/pYHHsE3QM8tV9bKSj/VyzpZiLxAb2sfgx0nE4npvnc4A2wxNjMo9
         Ykfw==
X-Gm-Message-State: AOAM533uqj72wt2yrzzlRXrHdcZHkTUG/HzxJGPsELEyikiCExeOKG+u
	0fG1eWfWilCzV0DJMTxohTU=
X-Google-Smtp-Source: ABdhPJzgpp2uXJ6vcFgtFmS0j1XmOEwVYanHWlq5u47u4+67a5XloI8FS6NPcmuYzydCv/oJz2RcBw==
X-Received: by 2002:a9d:170d:: with SMTP id i13mr244001ota.106.1607044730738;
        Thu, 03 Dec 2020 17:18:50 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:cdc1:: with SMTP id d184ls678479oig.10.gmail; Thu, 03
 Dec 2020 17:18:50 -0800 (PST)
X-Received: by 2002:a05:6808:4ce:: with SMTP id a14mr1368720oie.85.1607044730325;
        Thu, 03 Dec 2020 17:18:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607044730; cv=none;
        d=google.com; s=arc-20160816;
        b=ZnEYcruVHaS8xvhmPLYnyPa+d9I2DVLmW/b2FhFx8qQWkzyVgb/+ZR/F9P1Qf5woMR
         iTXkmV4ZP7uYEJuAzhzTFXJAFjg4D8086Kkdzx9Urq0Flj08adIAXY9745Cf37xrK2eY
         YR+um7xm1l/iuC6USglN/A4dkfY3Yhmh7iPO9pIBJb2LnIC86L2HH8HqpAh1eLab+AS1
         FdLn9j48FWCoflF+aiwZgwBZUOKBlPabvcUDiN6y02cXQNdcKI+8eo/O4fZWPxYrkljO
         Otjzmxri488ln+Tty68ePkegmotC4EtKaT11MRHhKmZymZKs7TtAgWRZKJmk1YUwUJ6Y
         yFYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=yQuebzesxwMf25Xr/dPzPPrev+UQ6caZgGfIyyfOgUQ=;
        b=YD5UuFLnxlH8MvZjLApaUWvEsraOgal7NP4fN9nN9jz+DecpS9/4MC1+khUqx6lGX0
         5wznhnk9351Ep6yxicm45A3vcx8SZKeQdjE+8xDO4D2qXtHvStes+YexuPQHrnfzCfed
         EYhlkSqX1q+BYO1n3WH+BB51bZQpADZJBZxOUC9kjHOKgf0NbGkqWwfXMTujq19uNF0H
         qsqDS9D16lfiTjzSEsROsOFQVcRsIePC348/p2TMtamF4Rb2AVQAAMlloX502kpIseu4
         FTJBJKCBQFcogBFAW44T6NcCXFPtO5rqazUAqyoacrkGCCLwjim6WqCBL+GHdGRH3dvB
         GguQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=AdkoRN88;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com. [2607:f8b0:4864:20::1042])
        by gmr-mx.google.com with ESMTPS id m13si134058otn.1.2020.12.03.17.18.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Dec 2020 17:18:50 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) client-ip=2607:f8b0:4864:20::1042;
Received: by mail-pj1-x1042.google.com with SMTP id iq13so2126988pjb.3
        for <clang-built-linux@googlegroups.com>; Thu, 03 Dec 2020 17:18:50 -0800 (PST)
X-Received: by 2002:a17:90a:6fa1:: with SMTP id e30mr1854582pjk.32.1607044729507;
 Thu, 03 Dec 2020 17:18:49 -0800 (PST)
MIME-Version: 1.0
References: <20201204011129.2493105-1-ndesaulniers@google.com>
In-Reply-To: <20201204011129.2493105-1-ndesaulniers@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 3 Dec 2020 17:18:37 -0800
Message-ID: <CAKwvOdnmhguTTt7_xJJXH=m+JwEaZK1=hFhso3FF1Co+u8wkhw@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] Kbuild: make DWARF version a choice
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Arvind Sankar <nivedita@alum.mit.edu>, Jakub Jelinek <jakub@redhat.com>, 
	Fangrui Song <maskray@google.com>, Caroline Tice <cmtice@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Nick Clifton <nickc@redhat.com>, 
	Michal Marek <michal.lkml@markovi.net>, Andrew Morton <akpm@linux-foundation.org>, 
	Randy Dunlap <rdunlap@infradead.org>, "peterz@infradead.org" <peterz@infradead.org>, 
	Thomas Gleixner <tglx@linutronix.de>, Krzysztof Kozlowski <krzk@kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=AdkoRN88;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042
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

(minus Chengbin due to bounces)

On Thu, Dec 3, 2020 at 5:11 PM Nick Desaulniers <ndesaulniers@google.com> wrote:
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
>  lib/Kconfig.debug | 21 ++++++++++++++++-----
>  2 files changed, 24 insertions(+), 11 deletions(-)
>
> diff --git a/Makefile b/Makefile
> index a2ded5029084..2430e1ee7c44 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -826,12 +826,14 @@ else
>  DEBUG_CFLAGS   += -g
>  endif
>
> -ifneq ($(LLVM_IAS),1)
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
> +KBUILD_AFLAGS  += $(dwarf-aflag)
>  endif
>
>  ifdef CONFIG_DEBUG_INFO_REDUCED
> diff --git a/lib/Kconfig.debug b/lib/Kconfig.debug
> index 0c7380e36370..04719294a7a3 100644
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
> +       bool "Generate DWARF Version 2 debuginfo"
> +       help
> +         Generate DWARF v2 debug info.
> +
>  config DEBUG_INFO_DWARF4
> -       bool "Generate dwarf4 debuginfo"
> +       bool "Generate DWARF Version 4 debuginfo"
>         depends on $(cc-option,-gdwarf-4)
>         help
> -         Generate dwarf4 debug info. This requires recent versions
> -         of gcc and gdb. It makes the debug information larger.
> -         But it significantly improves the success of resolving
> -         variables in gdb on optimized code.
> +         Generate DWARF v4 debug info. This requires gcc 4.5+ and gdb 7.0+.
> +         It makes the debug information larger, but it significantly
> +         improves the success of resolving variables in gdb on optimized code.

^ I kept the previous help text, but while this may have been the case
when DWARF v4 support was first introduced in GCC, by my (lone)
measure of x86_64 defconfig with gcc 10.2, this doesn't or no longer
seems to be the case. See patch 2 for measurements:
https://lore.kernel.org/lkml/20201204011129.2493105-2-ndesaulniers@google.com/.
(also, missed the cover letter, here it is:
https://lore.kernel.org/lkml/CAKwvOdkZEiHK01OD420USb0j=F0LcrnRbauv9Yw26tu-GRbYkg@mail.gmail.com/)

> +
> +endchoice # "DWARF version"
>
>  config DEBUG_INFO_BTF
>         bool "Generate BTF typeinfo"
> --
> 2.29.2.576.ga3fc446d84-goog
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnmhguTTt7_xJJXH%3Dm%2BJwEaZK1%3DhFhso3FF1Co%2Bu8wkhw%40mail.gmail.com.
