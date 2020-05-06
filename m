Return-Path: <clang-built-linux+bncBDYJPJO25UGBBH7CZP2QKGQEG4PJKZA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc38.google.com (mail-oo1-xc38.google.com [IPv6:2607:f8b0:4864:20::c38])
	by mail.lfdr.de (Postfix) with ESMTPS id 623D41C779D
	for <lists+clang-built-linux@lfdr.de>; Wed,  6 May 2020 19:17:20 +0200 (CEST)
Received: by mail-oo1-xc38.google.com with SMTP id a144sf1591197oob.6
        for <lists+clang-built-linux@lfdr.de>; Wed, 06 May 2020 10:17:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588785439; cv=pass;
        d=google.com; s=arc-20160816;
        b=Zo3KkYZohByxGZpr7EvRWs9obWY4ilMDL0NHosGoy19B8Xt+KUOu0f/b8xXbIuQaaQ
         VRd5Xv3WViId8jcEGHMyMLRu/7XxXjJQSL5Jgl5EfEisMxnbf8cqM46XlT9u+haydu5j
         COwFpTh5yhqDdeJP+V4rW2eMzeYRCZg/30Yi867UlN3DmytCXYYN1f8WI7dn1cvutJBF
         7H8f+E+VGje5PJFrCC/FQ/S802VA91ZOrztVXRhAxdjv/NBciNU0UKqwG6gRS0LLUqqs
         QigdItIBjjoH57t6SvnpeTF7o4YkpsCDfTWgkMEyGUT5z3Mi+6S+VEmeqB54K1sfwcSm
         twJA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=M173eyRn0pxXOp05/U0djq147fS9Na3HBVUYCfcx7S0=;
        b=MH/AtKiGtf4Z5AgEttM1HJp96J4cxEPw1yNTN34+hhfNjPCLMx6adTG6zlm7yXCdBj
         wXpXdVlHy/xz8urnIgm8jXJXc1+bH2pngGe00zK4qMD8ca5+wNLXrEXrShhZIHWnN/xN
         tiCsrECihgpxZ3IthvbCivTP0czZdEy1LBmAXb/o5PU29C5DM3A0TEnDXcDCoMOInaQF
         +PAbI071QhBgPpPtQ7HjnuIy1v8pV0/numz/JT4XW3aCms90fcFxAm4BzjjPCWBqaips
         Nfak6GVhKtFT3UpDM2UGXBEX04V8izNsnbPzc98OMqqp80AEDR1n+iltJzT+EbI/wa9E
         q9pg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=AoWlyDRv;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=M173eyRn0pxXOp05/U0djq147fS9Na3HBVUYCfcx7S0=;
        b=Lma6cu0lYefZLGu6HQlzmrRHX6JyIU4oUIWjrxwiBwV+s6JoWblt57fhItLkdfl9zS
         bxq2qRCFvh1ZV7HJZ+vYxfxdIjKUrfECmej5C++BTDAhJNDA4HAq+jHuAIZus34QDDAa
         MMF33R4r1EP8QBj+7EWHKXNcshTMrVrBDVAUfZjIBBk2908kHXlA8xkD7dDqzdFpqskI
         Y/7AqejodRDcgf9bh3hNbe550A5BuZG8FKTr8l62Qxtb4pN8p23+RlXDl0+cFWGIjYpJ
         0pfpzF/SwDLJ11BhE8HX/W4cgBaOFd6AhVBotivVZirNyUzHY84ZxUm+luUT+1tRxj+U
         /Y2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=M173eyRn0pxXOp05/U0djq147fS9Na3HBVUYCfcx7S0=;
        b=IbyayibgXxe0SIuP7pJ65FgR6rks+iQQ+r7iVk+11+Ih3thP2zFpsH2x5MxN6GFRFU
         HNiUntaYsZHz9dIxfpsG2QCKKMSsBrpkJDN/h5ciaGRfpFM1HcllgQJmwpRELduwgbJn
         RY3TgmRQLNiI5KW+uQf2boSFO5b4verWEqDIFbdSOGFTddg/nuz1GMv1xEVU6pjNdAXz
         lLFeH7DFjNtCk9r47r7j2DEpj5+B6nljBOR9Jkuq9qCGwhrWqb7l7lr6b/N6ZuecmRxj
         LJ2xa5BT6pXUw3U9b3GTvwEM3KW3d0vgZIwb+4I7t4fIyDoj+DusiAYKbIh1ktXSBBBw
         cTYQ==
X-Gm-Message-State: AGi0Pub0nfF8SlNwNus0x1xNTIr2NiiSEQTIqXpaISfTTSorLo33QuHb
	NH6bJWEbixLBX+SHooKBAdg=
X-Google-Smtp-Source: APiQypJh6SVvGDJVIAw4UzGQTNKQQwNmGaeWwdcx/0Ub6nsvNdB/VNWqw2/a32/lrA3Mt3GxdRHVFw==
X-Received: by 2002:a4a:d44a:: with SMTP id p10mr8220686oos.11.1588785439270;
        Wed, 06 May 2020 10:17:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:cd54:: with SMTP id d81ls738033oig.6.gmail; Wed, 06 May
 2020 10:17:18 -0700 (PDT)
X-Received: by 2002:aca:4d55:: with SMTP id a82mr3599592oib.4.1588785438671;
        Wed, 06 May 2020 10:17:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588785438; cv=none;
        d=google.com; s=arc-20160816;
        b=Y7FM/DZzUVdQCeN5DSh1s6c3+AomDP3uuI8LCxYCyle5/pHnAoPV2u7PxlEUFRgsBa
         SHdLzDHyR8apCv9yPAk9Tt0/aWjIjPOlOR3LnqnFcWn1j9Yp3et7iZYD5ObGjklyAgCh
         2gTRNAxJDRv03AkgUcyr8lzxniA9xf/UnpJARV2kLo4w4l9A2/mItl4Uz5849VO50WEs
         v+zVoGyMxz12jpQpOyY+P/SaaUfsoQLFxrv1yXEiaugKb2MI8cW3oCBFL4r639I02/eN
         pWceAgCOGG84GQb2wWxgtNrcIwB3rNKIpx1nzpi44ZUERi2IJM4x1pcvD2ufYtosFt+K
         5o0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=/k/x3jvD4hIY8pDNsyuRYJAWCjnjlkQj95o1100b+nU=;
        b=vQZ4HQJsh2Fgl/XEYj1OLf92hBgyFAXRNx8Z4a0TWZlaWLUCi6ewAGk+jzAU3FdHsC
         Xc1jgpWQB2Afk+lSSGfS90hA7lnmSB2Bye8cNmhIo+dqS3DjzZHPbhpwo+/9WgcJlkdL
         BgLsTT+fTcXcPutISse0xBs5HFdD4qNjei1abZi7YjHHQaMqwrj/yOIyWUG386yrU6xh
         4aAUi5uyShI9mo19weLPGIrX1v1TNCKkVzpkvix9qnMNFMPT8XN8+7WdlfGk8+pbndAL
         YKTF8vK4mHCEEd4piAsGcYudO6mvXZ69/ImBCfprUZehG6lFdbYwiXr/r7b8wr/sWbjn
         dYwQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=AoWlyDRv;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id f76si187612oib.0.2020.05.06.10.17.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 May 2020 10:17:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Received: by mail-pl1-x644.google.com with SMTP id b6so755267plz.13
        for <clang-built-linux@googlegroups.com>; Wed, 06 May 2020 10:17:18 -0700 (PDT)
X-Received: by 2002:a17:902:ac87:: with SMTP id h7mr8736134plr.119.1588785437559;
 Wed, 06 May 2020 10:17:17 -0700 (PDT)
MIME-Version: 1.0
References: <20200506055245.3013374-1-jiaxun.yang@flygoat.com>
In-Reply-To: <20200506055245.3013374-1-jiaxun.yang@flygoat.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 6 May 2020 10:17:06 -0700
Message-ID: <CAKwvOdkmK7QdbZFKCCao9W8cJcOR_M-LyOkL3_Ms7amegv499w@mail.gmail.com>
Subject: Re:
To: Jiaxun Yang <jiaxun.yang@flygoat.com>
Cc: linux-mips@vger.kernel.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	"Maciej W . Rozycki" <macro@linux-mips.org>, Fangrui Song <maskray@google.com>, 
	Kees Cook <keescook@chromium.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>, Paul Burton <paulburton@kernel.org>, 
	Masahiro Yamada <masahiroy@kernel.org>, Jouni Hogander <jouni.hogander@unikie.com>, 
	Kevin Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>, Borislav Petkov <bp@suse.de>, 
	Heiko Carstens <heiko.carstens@de.ibm.com>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=AoWlyDRv;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644
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

On Tue, May 5, 2020 at 10:52 PM Jiaxun Yang <jiaxun.yang@flygoat.com> wrote:
>
> Subject: [PATCH v6] MIPS: Truncate link address into 32bit for 32bit kernel
> In-Reply-To: <20200413062651.3992652-1-jiaxun.yang@flygoat.com>
>
> LLD failed to link vmlinux with 64bit load address for 32bit ELF
> while bfd will strip 64bit address into 32bit silently.
> To fix LLD build, we should truncate load address provided by platform
> into 32bit for 32bit kernel.
>
> Signed-off-by: Jiaxun Yang <jiaxun.yang@flygoat.com>
> Link: https://github.com/ClangBuiltLinux/linux/issues/786
> Link: https://sourceware.org/bugzilla/show_bug.cgi?id=25784
> Reviewed-by: Fangrui Song <maskray@google.com>
> Reviewed-by: Kees Cook <keescook@chromium.org>
> Tested-by: Nathan Chancellor <natechancellor@gmail.com>
> Cc: Maciej W. Rozycki <macro@linux-mips.org>

Cool, this revision looks a bit simpler. Thanks for chasing this.
Tested-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
> V2: Take MaskRay's shell magic.
>
> V3: After spent an hour on dealing with special character issue in
> Makefile, I gave up to do shell hacks and write a util in C instead.
> Thanks Maciej for pointing out Makefile variable problem.
>
> v4: Finally we managed to find a Makefile method to do it properly
> thanks to Kees. As it's too far from the initial version, I removed
> Review & Test tag from Nick and Fangrui and Cc instead.
>
> v5: Care vmlinuz as well.
>
> v6: Rename to LIKER_LOAD_ADDRESS
> ---
>  arch/mips/Makefile                 | 13 ++++++++++++-
>  arch/mips/boot/compressed/Makefile |  2 +-
>  arch/mips/kernel/vmlinux.lds.S     |  2 +-
>  3 files changed, 14 insertions(+), 3 deletions(-)
>
> diff --git a/arch/mips/Makefile b/arch/mips/Makefile
> index e1c44aed8156..68c0f22fefc0 100644
> --- a/arch/mips/Makefile
> +++ b/arch/mips/Makefile
> @@ -288,12 +288,23 @@ ifdef CONFIG_64BIT
>    endif
>  endif
>
> +# When linking a 32-bit executable the LLVM linker cannot cope with a
> +# 32-bit load address that has been sign-extended to 64 bits.  Simply
> +# remove the upper 32 bits then, as it is safe to do so with other
> +# linkers.
> +ifdef CONFIG_64BIT
> +       load-ld                 = $(load-y)
> +else
> +       load-ld                 = $(subst 0xffffffff,0x,$(load-y))
> +endif
> +
>  KBUILD_AFLAGS  += $(cflags-y)
>  KBUILD_CFLAGS  += $(cflags-y)
> -KBUILD_CPPFLAGS += -DVMLINUX_LOAD_ADDRESS=$(load-y)
> +KBUILD_CPPFLAGS += -DVMLINUX_LOAD_ADDRESS=$(load-y) -DLINKER_LOAD_ADDRESS=$(load-ld)
>  KBUILD_CPPFLAGS += -DDATAOFFSET=$(if $(dataoffset-y),$(dataoffset-y),0)
>
>  bootvars-y     = VMLINUX_LOAD_ADDRESS=$(load-y) \
> +                 LINKER_LOAD_ADDRESS=$(load-ld) \
>                   VMLINUX_ENTRY_ADDRESS=$(entry-y) \
>                   PLATFORM="$(platform-y)" \
>                   ITS_INPUTS="$(its-y)"
> diff --git a/arch/mips/boot/compressed/Makefile b/arch/mips/boot/compressed/Makefile
> index 0df0ee8a298d..3d391256ab7e 100644
> --- a/arch/mips/boot/compressed/Makefile
> +++ b/arch/mips/boot/compressed/Makefile
> @@ -90,7 +90,7 @@ ifneq ($(zload-y),)
>  VMLINUZ_LOAD_ADDRESS := $(zload-y)
>  else
>  VMLINUZ_LOAD_ADDRESS = $(shell $(obj)/calc_vmlinuz_load_addr \
> -               $(obj)/vmlinux.bin $(VMLINUX_LOAD_ADDRESS))
> +               $(obj)/vmlinux.bin $(LINKER_LOAD_ADDRESS))
>  endif
>  UIMAGE_LOADADDR = $(VMLINUZ_LOAD_ADDRESS)
>
> diff --git a/arch/mips/kernel/vmlinux.lds.S b/arch/mips/kernel/vmlinux.lds.S
> index a5f00ec73ea6..5226cd8e4bee 100644
> --- a/arch/mips/kernel/vmlinux.lds.S
> +++ b/arch/mips/kernel/vmlinux.lds.S
> @@ -55,7 +55,7 @@ SECTIONS
>         /* . = 0xa800000000300000; */
>         . = 0xffffffff80300000;
>  #endif
> -       . = VMLINUX_LOAD_ADDRESS;
> +       . = LINKER_LOAD_ADDRESS;
>         /* read-only */
>         _text = .;      /* Text and read-only data */
>         .text : {
>
> --

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkmK7QdbZFKCCao9W8cJcOR_M-LyOkL3_Ms7amegv499w%40mail.gmail.com.
