Return-Path: <clang-built-linux+bncBCIO53XE7YHBBGUEUT3QKGQEZKPTPDY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x539.google.com (mail-pg1-x539.google.com [IPv6:2607:f8b0:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DDFE1FBD01
	for <lists+clang-built-linux@lfdr.de>; Tue, 16 Jun 2020 19:32:12 +0200 (CEST)
Received: by mail-pg1-x539.google.com with SMTP id p8sf901196pgj.14
        for <lists+clang-built-linux@lfdr.de>; Tue, 16 Jun 2020 10:32:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592328731; cv=pass;
        d=google.com; s=arc-20160816;
        b=tUMhxCS98sySNqWqI4OjBpyU7p7btOfGuexGBYaHlwObEVfSMR1hBEnznJS7hiA44i
         uWqobzH3eNCKXBLlKdPl4dSTM/9CqOxmIFYOYd5Zvbzw2dkGM8zPwI+vzTWyDqrY5GFK
         vEIqyZYLn/5ZdllBj77SSr3gvIzsP//bjLYTzhWa0pjiXPXj6tA2kKYN6U6SBvFkQVce
         2MfLgsqp48+W9/y7lbZBfN153Mtqfv1YAwriEp+nVj+AlrUqtAPzizY+RS5oEKRBAIBz
         4IBZjRDlF6eIRyEDA8NkNmEDDBSilJycG9aojIwe2LMMV3NX9EvJj03qS4ch0awPDxUC
         ogJQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=rpw0+QdYeKQvBE0qJwUMN6esDEo0371xhoUDiUGIK64=;
        b=El+UWqheABsn2SQy8k2yHq1KItC4PHLxJJMMakNUCK+ueqwQR17S0ssbqD7spk6/Lg
         t8x0adUf7Giz/00XfPYpMG6uegdREtkYeCwyjghNOngs1FKl5GuuQSvMRiBLo18AgVT1
         qOJOVMb8v766EIV7Fj0OZwYcxAWcPkXv458tbT7VOuEQugR8OAAxjWCTU6+2B206+lXO
         wGwlI34w5Ez5bc/PXnJgkb85zbNL/JFt3iSYlhONrmLe562T081oSHIsp2CYQkMH+RFa
         vsauDqbIcucSWXkv+87pxgI0Y9TeC6AF6k0v9GgHAoB3kLYMAKGQfm9VqaRlloqtjIY1
         wm1Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NxuO4Bzh;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::f41 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=rpw0+QdYeKQvBE0qJwUMN6esDEo0371xhoUDiUGIK64=;
        b=k7mzb3OjGOJk7FNx4GlFcYIEdxA5AtIG0nyXcmTeZmjP8KFNMNKA3dVCh1/0yh0jk+
         nnKR9ylDHj5JSTd6mOe0T13iICsT3MBaVhb3knmkPBnyYD+e++5K4YJlhGrKM1RP1keW
         Utz+yfWl+oKwMe1Vh9htYU777h41hsEBa0WeY9aIp+WxgTucIMB1I1XxJmyDa2qaFyAH
         a+yB+Wi1PVWxlJ5G5Akc2isWIamJsbcAnYXOLSqEzUiRXnOpHnh1UwYb4/p14cQroS3g
         /1lUIkyCOEHRcjItxPR0+++aare3PXNNAmYG5oipFV23wRrEvTr6wh/7BFDdngGr/XWr
         9wog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=rpw0+QdYeKQvBE0qJwUMN6esDEo0371xhoUDiUGIK64=;
        b=FSM4gTT+jnh91cLIfq3f7rwGzm1q+Z+LdfRczLJ2j2ua4A8z2SRdokqYa2h49UwAFc
         aOVFebu81GX4pW0kwIB80jeUYiCra22j4HLJap8sRpcHO0XLCo0gJRHTV+Zqu7FEoLNX
         duQ7qJC09015pmVmgNvdyWeiO38D+fRqL9rjDk3eJSrItLUYAkLbL537ZuDrqSHsgLyk
         L+nWU7VVJm6QHfHEg1XKqVddGuJ26wWFcqxNN3/iPVyQcz+xKzXA2PfJCLfyXNzb0OkR
         izYa7liJQ4zxxwBKiY1TafQp3rm3a40Gv1BLaRC4NTCyglkusSPGvHydBwXB1gNhcMTC
         8vvg==
X-Gm-Message-State: AOAM530nAtb8/kker4ZdIDFIO5f9K0oFy5ksOIFtaUk7rYWXFiVwf+Mr
	HfZdQCeyy3DHdEypmOwWJzM=
X-Google-Smtp-Source: ABdhPJzT3FErTwCPanvIxKWEh/mRNZVE2n18H+4x1Bwc8Sei9lhhFgTkOHgbcDghnlL3/mrflNi2zw==
X-Received: by 2002:a17:90a:d244:: with SMTP id o4mr4029728pjw.186.1592328731086;
        Tue, 16 Jun 2020 10:32:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:730d:: with SMTP id o13ls2001604pgc.1.gmail; Tue, 16 Jun
 2020 10:32:10 -0700 (PDT)
X-Received: by 2002:a63:d918:: with SMTP id r24mr2936197pgg.119.1592328730487;
        Tue, 16 Jun 2020 10:32:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592328730; cv=none;
        d=google.com; s=arc-20160816;
        b=cbxU3B/CbbX/vNV+S0cwUS9PTh+9auy22RpLmLlzKUgQ2+P5sCuILnXzPvlTSKCnun
         ndQZArcZGVW+zBc7uaxoNR1IDX1X/Xcs9fYbG+bF8m+jmwyTgA3NxQsr2oSxetbL+bFN
         XsfoOjPabud3LtikZ1131vHT7RVOGBTSVjXYTbfo4mvZTcdyT7bWq7cvHgSsz000gFh7
         aTIhPNbDSvqIjiYYYMn1wJ4w/8QqvHvPtoTRNr6oPHfJNPGOZAwwGMRo/JI4oprd3P+z
         RxJ+jFUF+UL6LKINxrf5eGO3gGpdeoj8EJ0JOxU1cbuXWyPzjQcOVnmSLuBXP+Rd2Cpo
         RyQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:sender:dkim-signature;
        bh=pdKXx2HvHZVn9QrDQaDhZwHF4KE1L75ld3FlRX9mLos=;
        b=xp/l9MxvIKoUb0x/+NjdkCAqbX/IbtokBWEfa4CN5EXk6VdUk42JHj8kIbdv2kYT+n
         uGnWiBQaBaCWPqiA4MRIh/jrx24+Qgpguu+EAjBVQNH7P9GXwBbA+5OYa1IiqIZ1nf0W
         ZGaYcl0GWGuNspVSBewQlziH7AQ61IFLwvYZUFtpDEtZJ3aGxnPAKttRRvc+TduOJsw/
         mtUY332FmJ0QVFZEMOgOImpTnBewIUzGAJ6XxyJObeX5ltVgIe8pHF13E8Vwr6ssWzlw
         ZNzRpbAOHlfXMh8LtlFeDWkElibDLNYas8eOP4jCrbrk0XgLOqmlL5c2b+30cSs3I0aV
         cWJw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NxuO4Bzh;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::f41 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qv1-xf41.google.com (mail-qv1-xf41.google.com. [2607:f8b0:4864:20::f41])
        by gmr-mx.google.com with ESMTPS id f28si777965pgn.2.2020.06.16.10.32.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Jun 2020 10:32:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::f41 as permitted sender) client-ip=2607:f8b0:4864:20::f41;
Received: by mail-qv1-xf41.google.com with SMTP id x16so9874548qvr.3
        for <clang-built-linux@googlegroups.com>; Tue, 16 Jun 2020 10:32:10 -0700 (PDT)
X-Received: by 2002:a0c:d442:: with SMTP id r2mr3274162qvh.59.1592328729589;
        Tue, 16 Jun 2020 10:32:09 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id r77sm14755313qke.6.2020.06.16.10.32.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Jun 2020 10:32:09 -0700 (PDT)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Tue, 16 Jun 2020 13:32:07 -0400
To: Sedat Dilek <sedat.dilek@gmail.com>
Cc: clang-built-linux@googlegroups.com,
	Masahiro Yamada <masahiroy@kernel.org>
Subject: Re: LLVM/Clang: Integrated assembler: DWARF version 4 and passing
 assembler option
Message-ID: <20200616173207.GA1497519@rani.riverdale.lan>
References: <CA+icZUUWh=NzBwAa3hff6yOxY0ZirKmzOLz=a2eZUbW_cD5ECg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CA+icZUUWh=NzBwAa3hff6yOxY0ZirKmzOLz=a2eZUbW_cD5ECg@mail.gmail.com>
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=NxuO4Bzh;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::f41
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

On Tue, Jun 16, 2020 at 01:21:46PM +0200, Sedat Dilek wrote:
> Hi Arvind,
> 
> when experimenting with LLVM_IAS=1 (and later using LLVM tools via
> LLVM=1) I saw that we need DWARF version 4 for debug.
> 
> In [4] I saw you simplified the kbuild info detection for
> CONFIG_DEBUG_INFO_COMPRESSED=y.
> 
> As I know you are working in the x86/boot/build area I wanted to
> kindly ask what do you think of these changes:
> 
> [ kbuild: Silence dwarf-2 warning when LLVM_IAS=1 ]

Cc clang-built-linux/Yamada-san.

I'm by no means an expert at this stuff :) I've only been contributing
to the kernel for a few months and am learning as I go.

Regarding these changes, for gcc I would say that given we invoke the
gcc driver for assembler files, KBUILD_AFLAGS could just be
-g/-gsplit-dwarf, and additionally -gdwarf-4 if DEBUG_INFO_DWARF4 is
configured, i.e.  basically just do KBUILD_AFLAGS += $(DEBUG_CFLAGS)
once DEBUG_CFLAGS have been fully set (maybe excepting the -f options,
though those don't appear to cause any errors even if passed for
assembler input).

Eg, right now it appears that assembler files don't have split dwo
output with gcc, only C files do.

I would assume that should also work for clang and allow clang to invoke
its built-in assembler with whatever flags it thinks are appropriate,
and hence should avoid the problems you get now?

> 
> --- a/Makefile
> +++ b/Makefile
> @@ -803,8 +803,10 @@ DEBUG_CFLAGS       += -gsplit-dwarf
>  else
>  DEBUG_CFLAGS   += -g
>  endif
> +ifndef LLVM_IAS
>  KBUILD_AFLAGS  += -Wa,-gdwarf-2
>  endif
> +endif
>  ifdef CONFIG_DEBUG_INFO_DWARF4
>  DEBUG_CFLAGS   += -gdwarf-4
>  endif
> 
> [ kbuild: Add dwarf-4 assembler option when LLVM_IAS=1 ]
> 
> diff --git a/Makefile b/Makefile
> index 4d796ce78888..c3bc1ff0d900 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -809,6 +809,9 @@ endif
>  endif
>  ifdef CONFIG_DEBUG_INFO_DWARF4
>  DEBUG_CFLAGS   += -gdwarf-4
> +ifdef LLVM_IAS
> +KBUILD_AFLAGS  += -Wa,-gdwarf-4
> +endif
>  endif
> 
> Does passing  "-Wa,-gdwarf-4" makes sense here or is mandatory?
> Is indendent of CONFIG_DEBUG_INFO_DWARF4=y even?
> 
> Thanks in advance.
> 
> Regards,
> - Sedat -
> 
> [1] https://github.com/ClangBuiltLinux/linux/issues/1049
> [2] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/kbuild/llvm.rst#n47
> [3] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/kbuild/llvm.rst#n62
> [4] https://git.kernel.org/pub/scm/linux/kernel/git/masahiroy/linux-kbuild.git/commit/?h=fixes&id=7b16994437c7359832dd51d66c5c387995a91438

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200616173207.GA1497519%40rani.riverdale.lan.
