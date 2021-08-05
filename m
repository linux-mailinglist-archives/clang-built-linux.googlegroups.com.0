Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBUW5V6EAMGQETKGNL5Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33a.google.com (mail-ot1-x33a.google.com [IPv6:2607:f8b0:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id EC3A73E1635
	for <lists+clang-built-linux@lfdr.de>; Thu,  5 Aug 2021 15:59:47 +0200 (CEST)
Received: by mail-ot1-x33a.google.com with SMTP id w4-20020a0568301444b0290405cba3beedsf2196998otp.13
        for <lists+clang-built-linux@lfdr.de>; Thu, 05 Aug 2021 06:59:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628171986; cv=pass;
        d=google.com; s=arc-20160816;
        b=rglbN5rFATLsqve68QD/3W1Sz0ctMcHKFfhrAtjfdVSBoL7XQagxmTtyjBDjB5jLPu
         qu6OJXkka1Rch4j+y4Mnz6ab9Q0z2UAx0iPIYrBfRaqnmSDLIgMlNbYQsmreiuH0nj4i
         RvTIFdYyZFsGSCyxwUsUym1UsEFgGnIR5W29nw4+yLZ/fSTRb0qOy35grlex1/3qhzAl
         xCJZwkmUTzoBbhjDQPsbsDZVw8Il0q0DtuigQT3JLu50Msk4t3YyMLy/qZa7e+VH+Ss5
         yTrkoa3bG+5WDdQe2B9aQPwgaLP4eNujaboN5+MlLGPImfwH+3MFCqW4UZG59G0o5WgI
         8vLw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=AZMoeu9dNmGwJLX8y03IbU9IpdY6/eu3wOu6alJoYW8=;
        b=xvPAYbxcKfPv8e3q3cdlTCG6WZOcGVqzKwmTkST0pEuuOyjyO2hpMcphG1uY4StFvp
         TL/cRFtSj7rTBRwII4t+lTD00GX1PVenRWYm/ZUw9et54mWZ4xUiUu5I8Oo8j1ftQKCy
         0iIYvMhzbW8x9f3rDWalLGsVLjCKGiQ1QKbEg2QB4a91wicHvxpQ4d2F5KurIjdd+FQF
         fbA6bMtNAufp8u8BkO41bRnYB1Aw2YR+/OT/1Wy3zq6ziTz4kk2I6IhQ0rJXFHG6VEF6
         A3pxbGEIH/HRKzpu0GxvVDWmnSoTm3Cd/MVkPlA5WwUWpvfP0PRXIGh/QeLNk34y/aVr
         TO2g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=iCajhmo4;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=AZMoeu9dNmGwJLX8y03IbU9IpdY6/eu3wOu6alJoYW8=;
        b=nFGtiRHnrvg+1UE7TwRBE2tIWUTCfVydRILCObfNrnPOrWjiMhrTmzA1zEjZOF/Qw6
         5+YggRi37VRkzLI86ICiw7NZrxGVvbduLBD5yYz/CGNyr5WFYLuBqgddfK0DUF0oS9hR
         rxgl3rqVYGqMHEIT7RLhIxlmGXHreEQ5vkyipy5uSxYmYWWtyZTZoymrTzk26c/NQgYz
         16jlZYruaXVD7T2uqOpyD96qKUbh4O6AhrdqSJtNO1D81dXK+7Y82nQbA9mGkruP55Ly
         L8jYSeF11lHW8f1YEnw7ZAv582XAS19HuhpAKjGTXmgSlXR2/VbULxGMrLioKY7Dt0tb
         AlSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AZMoeu9dNmGwJLX8y03IbU9IpdY6/eu3wOu6alJoYW8=;
        b=UR5BeTNWNzKS6YFBQLtW0kp0CRdVY6ElpwcZw3RSDaGB0xgpD0tJ92grytYMpxzdvi
         roVkwBA2cn/9ZV2kgRNvfcfm+6fOtIbLWTNjSih1+vA3PBrnO/Wzk+BNw14jaO6pR2/Z
         2rZq5WmmQxwFD0FwQjVKKlzgaOv3nJjIAeG/n36Q5fqI3/AJMXna18L6dKnYmSW/8UvJ
         Yam+uIBIYx9miq8uYcw5rK7IYO73Jzgb+SqW6GjqtElm/3uNJAMjfgkhNAaOZHdBKU8g
         lfOwHwOMF9b6SSc4X9jrYJb+ewOO7PcxdHSlAbz6kO9hPgUkClgdRdtMenJZ0xG5cfK1
         8itw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532RB7PhgQeusFZnMXwTEhEYVw6nJwKIv7BEii/QVvkiJNBKjiQa
	/T1qyXbpvypQUHcuWQPh7DI=
X-Google-Smtp-Source: ABdhPJyokI52z/MX973gXR2kghHiCTFoM+xQoWyHtalTurDmUyvoO8gaMIOWGXqB4WS2ta7s69arqg==
X-Received: by 2002:a05:6808:8c1:: with SMTP id k1mr3751694oij.110.1628171986458;
        Thu, 05 Aug 2021 06:59:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:201d:: with SMTP id q29ls1477067oiw.7.gmail; Thu,
 05 Aug 2021 06:59:46 -0700 (PDT)
X-Received: by 2002:a54:441a:: with SMTP id k26mr3720577oiw.160.1628171986112;
        Thu, 05 Aug 2021 06:59:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628171986; cv=none;
        d=google.com; s=arc-20160816;
        b=C3fGpEAQpJesdIBMg9BHiVs7bskAylkX0pbE0kzDGGLnld684szs69SiLoSUaPfj9P
         MglBVZIhyoVWB41eXXVYm74XAVRnVAgJidVpzQZA6dgQ0FRFj+KTnBM/R4kkNF0y79ro
         cy1ClyR9QfL/KqgeIRIGbG4xr+vgyrlsSFYI14KhpTZWcB+z7RLe20n7AbyfVcpt6dNW
         TPN0bHAGcrqBCXIkpPORSNykyn8sUeDrQoXK4NwBAYrrNizEqnyhjLq/YGTaytLUj0k0
         w2Brk+NCpQZWmgZY6hoeHo4wkKhEng2WmIf7axsj6DY1Ti4z3K7e0ZRsKg82eCj6kbjU
         rZDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=MkSCffZ2FCUUtcooB4heJtTkmzuuejT3xGrOt7x1cAA=;
        b=SLnOMbtkBh4M6d0NPkCsgMMBLzDas/MmgCcxOwKz7VG+M6vr/thfUpTxcQN6YPipP+
         2dgft6rbUA314Fc4ixmRVxS+oTM/BsY+qgd0HIt/AnGNXFBp2upJD9WVbM7+lDp164om
         x6iIf3YbxkVCWErYObhdobhmPmzVIxq27ein0XAP61rS8kdYHxDnqd/i9OpPYJEl/GVI
         TDSICExKXq31FGJpP2s/AtOWVyV4jTU15pYBDoqXxEYpRHqjsG7J4MgjPEA7j97Vh6JU
         X5j2uhZDFwgrh8nHD6AdbjxCeoh2UbItg5SLInSaMZZErVNN2l2GLtJZxVrReBAM9+U/
         /dIg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=iCajhmo4;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-05.nifty.com (conssluserg-05.nifty.com. [210.131.2.90])
        by gmr-mx.google.com with ESMTPS id q1si363142oij.1.2021.08.05.06.59.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 Aug 2021 06:59:46 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) client-ip=210.131.2.90;
Received: from mail-pj1-f45.google.com (mail-pj1-f45.google.com [209.85.216.45]) (authenticated)
	by conssluserg-05.nifty.com with ESMTP id 175DxJZh003798
	for <clang-built-linux@googlegroups.com>; Thu, 5 Aug 2021 22:59:20 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-05.nifty.com 175DxJZh003798
X-Nifty-SrcIP: [209.85.216.45]
Received: by mail-pj1-f45.google.com with SMTP id mz5-20020a17090b3785b0290176ecf64922so14956473pjb.3
        for <clang-built-linux@googlegroups.com>; Thu, 05 Aug 2021 06:59:20 -0700 (PDT)
X-Received: by 2002:a62:8896:0:b029:3c3:7c34:6527 with SMTP id
 l144-20020a6288960000b02903c37c346527mr5225762pfd.80.1628171959400; Thu, 05
 Aug 2021 06:59:19 -0700 (PDT)
MIME-Version: 1.0
References: <20210802183910.1802120-1-ndesaulniers@google.com> <20210802183910.1802120-3-ndesaulniers@google.com>
In-Reply-To: <20210802183910.1802120-3-ndesaulniers@google.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Thu, 5 Aug 2021 22:58:42 +0900
X-Gmail-Original-Message-ID: <CAK7LNAQKd1obWkcN9BPfdx==ZVgDV16POCxhYFbexyvB5Nz7KA@mail.gmail.com>
Message-ID: <CAK7LNAQKd1obWkcN9BPfdx==ZVgDV16POCxhYFbexyvB5Nz7KA@mail.gmail.com>
Subject: Re: [PATCH v6 2/3] Makefile: infer --target from ARCH for CC=clang
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Miguel Ojeda <ojeda@kernel.org>, Fangrui Song <maskray@google.com>,
        Michal Marek <michal.lkml@markovi.net>,
        Arnd Bergmann <arnd@kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Geert Uytterhoeven <geert@linux-m68k.org>,
        Christoph Hellwig <hch@infradead.org>,
        Linus Torvalds <torvalds@linux-foundation.org>,
        Nathan Chancellor <nathan@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=iCajhmo4;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

On Tue, Aug 3, 2021 at 3:39 AM Nick Desaulniers <ndesaulniers@google.com> wrote:
>
> We get constant feedback that the command line invocation of make is too
> long when compiling with LLVM. CROSS_COMPILE is helpful when a toolchain
> has a prefix of the target triple, or is an absolute path outside of
> $PATH.
>
> Since a Clang binary is generally multi-targeted, we can infer a given
> target from SRCARCH/ARCH.  If CROSS_COMPILE is not set, simply set
> --target= for CLANG_FLAGS, KBUILD_CFLAGS, and KBUILD_AFLAGS based on
> $SRCARCH.
>
> Previously, we'd cross compile via:
> $ ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- make LLVM=1 LLVM_IAS=1
> Now:
> $ ARCH=arm64 make LLVM=1 LLVM_IAS=1
>
> For native builds (not involving cross compilation) we now explicitly
> specify a target triple rather than rely on the implicit host triple.
>
> Link: https://github.com/ClangBuiltLinux/linux/issues/1399
> Suggested-by: Arnd Bergmann <arnd@kernel.org>
> Suggested-by: Linus Torvalds <torvalds@linux-foundation.org>
> Suggested-by: Masahiro Yamada <masahiroy@kernel.org>
> Suggested-by: Nathan Chancellor <nathan@kernel.org>
> Acked-by: Arnd Bergmann <arnd@kernel.org>
> Reviewed-by: Nathan Chancellor <nathan@kernel.org>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
> Changes v5 -> v6:
> * Use indirection as per Linus. We now have CLANG_TARGET_FLAGS and a
>   few variables suffixed with $SRCARCH.
> * Add Linus' SB tag.
> * Change hexagon target triple from -gnu to -musl.
>
> Changes v3 -> v4:
> * Reword commit message and oneline, as per Nathan.
> * Drop documentation change (it's the next patch, could be squashed in,
>   I guess).
> * Drop LLVM_IAS=1 requirement, as per Masahiro.
> * Carry Arnd's and Nathan's AB/RB/TB tags, confirmed OK on IRC+Discord.
>
> Changes v2 -> v3:
> * Drop check/requirement for LLVM=1, as per Masahiro.
> * Change oneliner from LLVM=1 LLVM_IAS=1 to CC=clang LLVM_IAS=1.
> * Don't carry forward Nathan's RB/TB tags. :( Sorry Nathan, but thank
>   you for testing+reviewing v2.
> * Update wording of docs slightly.
>
> Changes v1 -> v2:
> * Fix typos in commit message as per Geert and Masahiro.
> * Use SRCARCH instead of ARCH, simplifying x86 handling, as per
>   Masahiro. Add his sugguested by tag.
> * change commit oneline from 'drop' to 'infer.'
> * Add detail about explicit host --target and relationship of ARCH to
>   SRCARCH, as per Masahiro.
>
> Changes RFC -> v1:
> * Rebase onto linux-kbuild/for-next
> * Keep full target triples since missing the gnueabi suffix messes up
>   32b ARM. Drop Fangrui's sugguested by tag. Update commit message to
>   drop references to arm64.
> * Flush out TODOS.
> * Add note about -EL/-EB, -m32/-m64.
> * Add note to Documentation/.
>
>  scripts/Makefile.clang | 25 +++++++++++++++++++++++--
>  1 file changed, 23 insertions(+), 2 deletions(-)
>
> diff --git a/scripts/Makefile.clang b/scripts/Makefile.clang
> index 297932e973d4..1f4e3eb70f88 100644
> --- a/scripts/Makefile.clang
> +++ b/scripts/Makefile.clang
> @@ -1,6 +1,27 @@
> -ifneq ($(CROSS_COMPILE),)
> +# Individual arch/{arch}/Makefiles should use -EL/-EB to set intended
> +# endianness and -m32/-m64 to set word size based on Kconfigs instead of
> +# relying on the target triple.
> +CLANG_TARGET_FLAGS_arm         := arm-linux-gnueabi
> +CLANG_TARGET_FLAGS_arm64       := aarch64-linux-gnu
> +CLANG_TARGET_FLAGS_hexagon     := hexagon-linux-musl
> +CLANG_TARGET_FLAGS_m68k                := m68k-linux-gnu
> +CLANG_TARGET_FLAGS_mips                := mipsel-linux-gnu
> +CLANG_TARGET_FLAGS_powerpc     := powerpc64le-linux-gnu
> +CLANG_TARGET_FLAGS_riscv       := riscv64-linux-gnu
> +CLANG_TARGET_FLAGS_s390                := s390x-linux-gnu
> +CLANG_TARGET_FLAGS_x86         := x86_64-linux-gnu
> +CLANG_TARGET_FLAGS             := $(CLANG_TARGET_FLAGS_$(SRCARCH))
> +
> +ifeq ($(CROSS_COMPILE),)
> +ifeq ($(CLANG_TARGET_FLAGS),)
> +$(error Specify CROSS_COMPILE or add '--target=' option to scripts/Makefile.clang)


When I was browsing the code, I noticed a nit.

I believe non-build targets such as
'make help', 'make clean' etc. should succeed
without any correct CROSS_COMPILE set
since they do not use the compiler at all.


The remaining architectures may fail to clean.

$ export LLVM=1
$ make ARCH=csky  clean
scripts/Makefile.clang:17: *** Specify CROSS_COMPILE or add
'--target=' option to scripts/Makefile.clang.  Stop.



I decided to not be worried about it because it
is fixable later.
I will pick it up unless a significant issue is found.





> +else
> +CLANG_FLAGS    += --target=$(CLANG_TARGET_FLAGS)
> +endif # CLANG_TARGET_FLAGS
> +else
>  CLANG_FLAGS    += --target=$(notdir $(CROSS_COMPILE:%-=%))
> -endif
> +endif # CROSS_COMPILE
> +
>  ifeq ($(LLVM_IAS),1)
>  CLANG_FLAGS    += -integrated-as
>  else
> --
> 2.32.0.554.ge1b32706d8-goog
>


--
Best Regards


Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAQKd1obWkcN9BPfdx%3D%3DZVgDV16POCxhYFbexyvB5Nz7KA%40mail.gmail.com.
