Return-Path: <clang-built-linux+bncBCIO53XE7YHBBJMI6H6QKGQEXCLJPNA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3f.google.com (mail-vk1-xa3f.google.com [IPv6:2607:f8b0:4864:20::a3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 0515E2C195C
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Nov 2020 00:22:15 +0100 (CET)
Received: by mail-vk1-xa3f.google.com with SMTP id x23sf8697739vkx.1
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Nov 2020 15:22:14 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606173734; cv=pass;
        d=google.com; s=arc-20160816;
        b=iPJcQ+GLxbxSrAL2+Kjjx1IsxTM+b8rVyWFel5YM/83ul+nozN0SRg0gk+4k/yIhyW
         CVlwHGylqwETy1K5YE0wyX5l6BtrOiuYhKOrDneXt1nWhyT06+njecYUpkNvJybEbLaa
         3Q+ThYWr/c66gNNaZumn/W/8HZ03pbR6A80wFHz1TBM3DMm0amtjoRhONqLc6JCbkrJx
         QJPrKBRsXKdyF4a6Trvp1cLUrex+PI7R4GeeIvN05m38qOhLsSHwF0xlaXpPoMGfbSI7
         p00q1diaGPhyTpWMJXPGdyj6PxoBwaKc93CeNxME1qzhtLHxsbxADw2Jx7V0tpNGXD/e
         dR1w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=NGpjhNnp3dvWd+TpmGR9f52JwOLZNGDoL2pthhf/n1Y=;
        b=zgur1Ts7R2CKlcYMTS+yoMaxEeVGsXrMFBcyDVBNkHb4STJq6LgU23VzY9h9zP8WR4
         OzgYmCF4qY44GWSgYged6QHBDPTQK79cxh3VAnbNqHMrTxC0As4LKD+0B9/7LbHxQV3Z
         pfBmvQ0K0kNU9w7UTD9fiHN/Tg8Prn29ERdgQWCnTqawEjO2rVbDx3Ud1rhesa8CsVOW
         0cTdVkCARRLPWRo3U5CMjLFmo/7od76rkB1A+MRJPzs2zIU76CD7NTzFUo2jdsOTrrgC
         E9y70NcuH/EXBpE+PLhhq9qUG6kG9cJyoXq2pknhJmr4nvVyBFc3XRmCZq/+EOwVo6JH
         p/nA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hG2kRKHl;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=NGpjhNnp3dvWd+TpmGR9f52JwOLZNGDoL2pthhf/n1Y=;
        b=GsQyq3U29LEHgL1eK1Kqntuji4tCfrfA1DwY1+IRHcCKWBE/+hnF4jZHfLOPigcs5n
         s7gbwkoR/M2YtTYPiRDdYl3hBiYzNJ6+UiCNC4QH6MB1fNVfSsBMqIuYssxPe7MDcdkA
         rHgGfiDKGxgEd5IGT5J1kEbb2cnqmHWLhjCNM7nnDENIXjT5B/h3ZAOFWl7kZpnB7MHl
         dNdhFnKcyZ7Z6AIJ3nL/IvTDYAjGTScjSf0DhY7vKEoz9K47GmRQYkq7TTf14XBWi+EU
         WosDpILW5KB3q3JPxlciLJ2/YJf0uzZX1fn9PDUAaS8MkvLavccdXTZyXIUYqaxdsX89
         3xAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=NGpjhNnp3dvWd+TpmGR9f52JwOLZNGDoL2pthhf/n1Y=;
        b=Q3uMgKuXMj2Xo/nzXDEAASCY0USi2lbkmsDOytkR4tb5+g+ctZDPzyp1x3d545gymA
         tVuPCZHah69wbJ/K6z4461egqEgFiy0CRdQr3rqznVP9yGdSMYss+yNHatzIg4vxR+ab
         fAyeNncvYC34ch/maPiyVsvexzcFmvGdTzqvhE3sx8rtMJSwoS/WgbNNg3A6H5ycgq37
         j4Bz2nbpvq0N2I557b8Yrwn2R3+UtBA2skugiLWEhl3klBEFfByFTv8n8xjZJGMqNbwK
         w8Zq8WWrtbKFD2oFjKpAf8dAVSwWHGU5BBk0R+7CRzkUuuVeFlL0gG2MPD62HYvBV6BD
         77Tw==
X-Gm-Message-State: AOAM5336qLwlEx58wriPUV0njwFs172aXDFbIZfblFx2R7p9GJXxVyhD
	N4F1hBU8wck0R+UeOAUB610=
X-Google-Smtp-Source: ABdhPJwge2Fncy2XvFkVPG7HoBtAYV8F34vaEy1N3n7NfDlx5/TW++0uN6ql9xKqB+rINF708y3m/w==
X-Received: by 2002:a05:6102:51:: with SMTP id k17mr1745839vsp.47.1606173734111;
        Mon, 23 Nov 2020 15:22:14 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:784b:: with SMTP id y11ls1088601uaq.8.gmail; Mon, 23 Nov
 2020 15:22:13 -0800 (PST)
X-Received: by 2002:ab0:2302:: with SMTP id a2mr1800636uao.138.1606173733598;
        Mon, 23 Nov 2020 15:22:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606173733; cv=none;
        d=google.com; s=arc-20160816;
        b=BMkvPQc/wY1eY0JXvMe4DCrlalx8FMJbm6kZacKO7eQUFFH/lM1gv+5PpxIP5LaF09
         a5j/nRrLnj41O1eFvGSD7X71FhwFCRmVyStyx9EMJx7hXPNfHcZIM4JPdoUCQ3hxAjaD
         1WvV7euYfcPBZihIYybWCLE4+GsOORBYdqD8XDbs4pOSVysAjzaTWKQIpyW24KnP7lg+
         Uk163C7ZfMs6DAuCbJ2VYr9HlaVHBj1fbT5M8znx05hnNH5UNupco7ayY07Z+Le6cH92
         0V/buNSjkTRvU0wk4Q9zRiZ2llGIMTOVvIke9foilLHFgZw8GsOUcZynLnyvqvQ2XbuD
         hlwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:sender:dkim-signature;
        bh=LQnTTbrjFIzQtonW7hPRPMWJaMT5ZjIxqKt5qVmkYec=;
        b=UVJKdsYGuW1JUklfIcfS3b7jN2+vqwJL5EPXw0sREEZnT++3vXHZHciPU9sHK1cjcd
         kj5nMqe8jWkKEa2TU1VWM8bipIny6KP//mmLCHn1gp5nBit6xnqP3jepYyw4h1ImSztC
         t+NHXOYYZtCzdkkR+ZTqP2spDZfFNaht183kitlePY8M8UlLkyWr4hUDfYj74qa79B4L
         OsGh3K/qrfDT5bglHKLSjBwfEy6yryEvonBlQqxRAreXv0dV3o6zFApvfP0M8W00t3KU
         pIcJfoM/3E44LyVOp2S5gFkxUcE1FOAeS+GKQCByhWyTbw+46F+amxDxNmcveY9AsOIf
         7UbQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hG2kRKHl;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qk1-x743.google.com (mail-qk1-x743.google.com. [2607:f8b0:4864:20::743])
        by gmr-mx.google.com with ESMTPS id y129si795979vkf.3.2020.11.23.15.22.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Nov 2020 15:22:13 -0800 (PST)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) client-ip=2607:f8b0:4864:20::743;
Received: by mail-qk1-x743.google.com with SMTP id u4so18774753qkk.10
        for <clang-built-linux@googlegroups.com>; Mon, 23 Nov 2020 15:22:13 -0800 (PST)
X-Received: by 2002:a05:620a:88e:: with SMTP id b14mr1992029qka.195.1606173733142;
        Mon, 23 Nov 2020 15:22:13 -0800 (PST)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id z73sm7208464qkb.112.2020.11.23.15.22.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Nov 2020 15:22:12 -0800 (PST)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Mon, 23 Nov 2020 18:22:10 -0500
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>,
	Jakub Jelinek <jakub@redhat.com>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	linux-toolchains@vger.kernel.org,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Fangrui Song <maskray@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Dmitry Golovin <dima@golovin.in>,
	Alistair Delva <adelva@google.com>
Subject: Re: [PATCH v2 3/4] Kbuild: make DWARF version a choice
Message-ID: <20201123232210.GA208735@rani.riverdale.lan>
References: <CAK7LNAST0Ma4bGGOA_HATzYAmRhZG=x_X=8p_9dKGX7bYc2FMA@mail.gmail.com>
 <20201104005343.4192504-1-ndesaulniers@google.com>
 <20201104005343.4192504-4-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201104005343.4192504-4-ndesaulniers@google.com>
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=hG2kRKHl;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::743
 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
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

On Tue, Nov 03, 2020 at 04:53:42PM -0800, Nick Desaulniers wrote:
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
>  DEBUG_CFLAGS	+= -g
>  endif
>  
> -ifndef LLVM_IAS
> -KBUILD_AFLAGS	+= -Wa,-gdwarf-2
> -endif
> -
> -ifdef CONFIG_DEBUG_INFO_DWARF4
> -DEBUG_CFLAGS	+= -gdwarf-4
> +dwarf-version-$(CONFIG_DEBUG_INFO_DWARF2) := 2
> +dwarf-version-$(CONFIG_DEBUG_INFO_DWARF4) := 4
> +DEBUG_CFLAGS	+= -gdwarf-$(dwarf-version-y)
> +ifneq ($(dwarf-version-y)$(LLVM_IAS),21)
> +# Binutils 2.35+ required for -gdwarf-4+ support.
> +dwarf-aflag	:= $(call as-option,-Wa$(comma)-gdwarf-$(dwarf-version-y))
> +DEBUG_CFLAGS	+= $(dwarf-aflag)
> +KBUILD_AFLAGS	+= $(dwarf-aflag)
>  endif
>  

For LLVM_IAS=1, adding dwarf-aflag to DEBUG_CFLAGS should not be
necessary, no? This seems to add it for dwarf-4.

The as-option check will only work on binutils 2.35.1 onwards: earlier
versions will silently accept any -gdwarf-N option. Do we care? I think
it'll just get dwarf-2 for assembly files even though dwarf-4 might have
been configured. The earlier versions only error if the double-hyphen
form --gdwarf-N is used.

More generally, do we want to force this option via -Wa or should we
leave it up to the compiler driver when we can? For both Clang/IAS and
gcc/binutils, passing -gdwarf-N in KBUILD_AFLAGS will allow the compiler
to pass on the appropriate option to the assembler (with gcc you only
get --gdwarf-2 for the assembler except on trunk though). The only case
that would absolutely require -Wa is Clang without IAS, might be worth
adding the ability to pass on the flag to the external assembler?

Btw, is -gsplit-dwarf at all useful for assembler files?

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201123232210.GA208735%40rani.riverdale.lan.
