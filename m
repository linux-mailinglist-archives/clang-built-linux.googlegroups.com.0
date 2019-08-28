Return-Path: <clang-built-linux+bncBDTI55WH24IRBEGUTLVQKGQEVFACSUA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3b.google.com (mail-yb1-xb3b.google.com [IPv6:2607:f8b0:4864:20::b3b])
	by mail.lfdr.de (Postfix) with ESMTPS id A93D6A072D
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Aug 2019 18:21:37 +0200 (CEST)
Received: by mail-yb1-xb3b.google.com with SMTP id i70sf429947ybg.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Aug 2019 09:21:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567009296; cv=pass;
        d=google.com; s=arc-20160816;
        b=G0QV/jWo5pDDu/brkF4KteDKHNPWfNN8iQ1YAhD3/iS2CDOd39xiy0OCkM2a2W90iW
         pQIt51HYGJwc78YNrqDHDvBNV3/Z19zySL+SPiJ961PS9ikpyQt05i06nvwkj3PlWCiW
         5Ry3xN6w5D8wYbEZWbXhuBG4MNn1zRt0rCVlpou8hoR6EhXwbpJhu8pKmnLpk3u12wSr
         x8dn2kTFw7dZ8jbVNC0P7K7BLWGj5xH/YFcixrHLRnGACgFJoHyY8QpJGVmPV2BaR61U
         y2P2K7S3inG1dVs81OS9EE0MaEOPPHyMJmwgM8ss4tfKW788B1OiUhqQIgp8OQmLmI7T
         eQ+g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=J97IoDN4GN/6HnxB4VwsBdRiPqFPYeHQiOfARg16bJA=;
        b=I2DdPP+Pdxwu8lVZbMRddiH1omBtqqUpwbhDcj++nwjzsm1TcZobzkVNVpGfxg+ATp
         TrwsjiG36hZNGCzYXTGZxVLWT1DZSDP8Ftb552SPCrWc3urcsE0jXS0SbGPQ4DanOUei
         6Plk9FJhMUQSw7l7bHNHi6rRX6HKafG29JdJiugk1IdLKSOOBelVhq29fe+15O+HZd0K
         Vc89WkUxj6ePzrRR4neE8edIdKhBiiFq4AUstzOtcOgMlfcbmH7wlKnx+aNidapV0Bf9
         Pe4oFOfrYmkD4HzLk9VGblLvzzZ/Tvz5Xl4AsWl4zCjDHKnzFitbOdDrgDNPB7Mi6Pdc
         yA2w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=UkCaK5W8;
       spf=softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.90 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=J97IoDN4GN/6HnxB4VwsBdRiPqFPYeHQiOfARg16bJA=;
        b=iJyx2sspMxJ1iOu8RKuvdHB2qMgEmABXqN5fwdw/ZfjRNcH5S/ipwDW8SUQNOArM+G
         +9J9skk6M4T2GBAyVwfUudfYxsKM1KvfgxPQHmC16Z751pXQDp/nwkVPaZWlHt6RxM4E
         83099ijnA6GxgiM+sbITjEfhpR1wdWm/yxOwt8PPW9sUULOBgLc13bhn4AagVt4s6Pv/
         EaS0Ajk7+KDG3uzuP3PbKbF1nADLgmRW2IMOHMsd9kbxTGm0HQU+9zjU8y7WkO/pVbwC
         s2cCcuHOTDcuE2Cousb3AvBDMvEQ4BCU+nmJINlKoOwejjAwcgqcqHZJ/VR8d6lGmmVx
         kOOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=J97IoDN4GN/6HnxB4VwsBdRiPqFPYeHQiOfARg16bJA=;
        b=hwqdMcrnKtUkBVUuhsIbu9HdWodpScz63Osyf2d2ougQ4vvyXecTgo2m0tKNZT82Ef
         ssJibbB4zxCmS3zLp7pPDEb/rXMOqnNLToFxMRuCITsvRjxrw+KAOgHWxbtbjifqp3sh
         Ze6eQ1kaTyBLYwavomHU+VJtRl9t4W831t8Q1Ce5Ibu7qAFCMsfazS1laY/DSckZ/OCN
         3o4CX0c0IuthhwfDJququXL7Myd66lNPBQ4mMsOWk/PsplJS2/nCYSby9YuCjqjo/mkv
         F5OwGs6YYr+idMlEBABSa7TiaAwHgbksYlIr4D2u9o1wttqKCQZBu7MWuqXWSwhlPL3D
         cC5w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXy6ETmyIe4znWbMLW9YYZRb4yiot0eOLX31SXn3G4VIDDyEIa+
	EwjcKASM4XcxKgI8y0ofc38=
X-Google-Smtp-Source: APXvYqxVJ2VR7j0ZFtzMLnIHYol4QkVxIZDVdVC2ejmHPfxi4ZKKRvmM7ivdP371YK7qgLMuympkJA==
X-Received: by 2002:a81:af59:: with SMTP id x25mr3492227ywj.221.1567009296691;
        Wed, 28 Aug 2019 09:21:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:df86:: with SMTP id w128ls523714ybg.16.gmail; Wed, 28
 Aug 2019 09:21:36 -0700 (PDT)
X-Received: by 2002:a25:e052:: with SMTP id x79mr3591504ybg.57.1567009296365;
        Wed, 28 Aug 2019 09:21:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567009296; cv=none;
        d=google.com; s=arc-20160816;
        b=VyRJWeZ+v++I2xIQQ6Wj01O3GJUtSp+BhxafvxIQnhTiBQa55ehBWON4T9sE7rNkoX
         ZclrqCbE81/PVSIeQ4vwTG2zmtRkzQ8PfzWmMLYSdrObhQ3zMnS9omozHFJ75Q/+jy0T
         7OMp18DvWs67CTM45j/tKrgP+xeOvKSFpqwIT+k/ycL6he1dVM4QKTvreyh02siFYUTD
         2uiFn9V0wZTSOMjZ2ofN04lz/MGtEGZBEpNFX5qFfeJHBlKsLqhXzsULnDlgIlggzTJ3
         S9UV/r9iyWvZViFApJ1FcVP8WZj4+9lqzrXcSSIhH6+AtfvqLBc+mwIIa3eV8rjBlvA3
         kKiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=gLFsc4GoaKSP2blYoRMPLmZqDOXVyUGvyhVsoSy7tug=;
        b=T0AeZHcpNhuSuZn7MLIEjAoCSXeaXoyFdICS2MpuIqHEODbnewiUTvNJ7fUbhnFW7f
         tZ1ZMCckV11j3nFwrypiyZ2Pu6jNNMfP1Ddu7lRA+P/gZFYAHia3nr18DoL3w6YSWdyo
         qDRow2vV1UroMc9nN4cNyVd9Bts77ZH9b2PcVDOAVksCIMYqu7p1ZLyqhdNdumd1vnB3
         wBW3z7x+Q3+/WJoyxiCvQvypimQ90KUVeaTBF7Xh4PUsZthF4Lp0U+jecEVJnJqISYVN
         aW0IBebtKUWLm+OcJiXPZG3POPJdM4cLaONDGxtekCYqoRu65QFd/94M8VqH+YRWhY+L
         3fGw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=UkCaK5W8;
       spf=softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.90 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
Received: from conssluserg-05.nifty.com (conssluserg-05.nifty.com. [210.131.2.90])
        by gmr-mx.google.com with ESMTPS id j72si198835ybg.0.2019.08.28.09.21.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Aug 2019 09:21:36 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.90 as permitted sender) client-ip=210.131.2.90;
Received: from mail-ua1-f49.google.com (mail-ua1-f49.google.com [209.85.222.49]) (authenticated)
	by conssluserg-05.nifty.com with ESMTP id x7SGKvPs014094
	for <clang-built-linux@googlegroups.com>; Thu, 29 Aug 2019 01:20:58 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-05.nifty.com x7SGKvPs014094
X-Nifty-SrcIP: [209.85.222.49]
Received: by mail-ua1-f49.google.com with SMTP id r10so184973uam.1
        for <clang-built-linux@googlegroups.com>; Wed, 28 Aug 2019 09:20:58 -0700 (PDT)
X-Received: by 2002:ab0:32d8:: with SMTP id f24mr2475802uao.121.1567009256901;
 Wed, 28 Aug 2019 09:20:56 -0700 (PDT)
MIME-Version: 1.0
References: <20190815225844.145726-1-nhuck@google.com> <20190827004155.11366-1-natechancellor@gmail.com>
In-Reply-To: <20190827004155.11366-1-natechancellor@gmail.com>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Thu, 29 Aug 2019 01:20:19 +0900
X-Gmail-Original-Message-ID: <CAK7LNATHj5KrnFa0fvHjuC-=5mV8VBT14vrpPMfuNKWw7wabag@mail.gmail.com>
Message-ID: <CAK7LNATHj5KrnFa0fvHjuC-=5mV8VBT14vrpPMfuNKWw7wabag@mail.gmail.com>
Subject: Re: [PATCH] kbuild: Do not enable -Wimplicit-fallthrough for clang
 for now
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Michal Marek <michal.lkml@markovi.net>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Nathan Huckleberry <nhuck@google.com>, Joe Perches <joe@perches.com>,
        Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
        Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: yamada.masahiro@socionext.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=UkCaK5W8;       spf=softfail
 (google.com: domain of transitioning yamada.masahiro@socionext.com does not
 designate 210.131.2.90 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
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

On Tue, Aug 27, 2019 at 9:42 AM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> This functionally reverts commit bfd77145f35c ("Makefile: Convert
> -Wimplicit-fallthrough=3 to just -Wimplicit-fallthrough for clang").
>
> clang enabled support for -Wimplicit-fallthrough in C in r369414 [1],
> which causes a lot of warnings when building the kernel for two reasons:
>
> 1. Clang does not support the /* fall through */ comments. There seems
>    to be a general consensus in the LLVM community that this is not
>    something they want to support. Joe Perches wrote a script to convert
>    all of the comments to a "fallthrough" keyword that will be added to
>    compiler_attributes.h [2] [3], which catches the vast majority of the
>    comments. There doesn't appear to be any consensus in the kernel
>    community when to do this conversion.
>
> 2. Clang and GCC disagree about falling through to final case statements
>    with no content or cases that simply break:
>
>    https://godbolt.org/z/c8csDu
>
>    This difference contributes at least 50 warnings in an allyesconfig
>    build for x86, not considering other architectures. This difference
>    will need to be discussed to see which compiler is right [4] [5].
>
> [1]: https://github.com/llvm/llvm-project/commit/1e0affb6e564b7361b0aadb38805f26deff4ecfc
> [2]: https://lore.kernel.org/lkml/61ddbb86d5e68a15e24ccb06d9b399bbf5ce2da7.camel@perches.com/
> [3]: https://lore.kernel.org/lkml/1d2830aadbe9d8151728a7df5b88528fc72a0095.1564549413.git.joe@perches.com/
> [4]: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=91432
> [5]: https://github.com/ClangBuiltLinux/linux/issues/636
>
> Given these two problems need discussion and coordination, do not enable
> -Wimplicit-fallthrough with clang right now. Add a comment to explain
> what is going on as well. This commit should be reverted once these two
> issues are fully flushed out and resolved.
>
> Suggested-by: Masahiro Yamada <yamada.masahiro@socionext.com>
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---

Applied to linux-kbuild. Thanks.

(If other clang folks give tags, I will add them later.)



>  Makefile | 8 +++++---
>  1 file changed, 5 insertions(+), 3 deletions(-)
>
> diff --git a/Makefile b/Makefile
> index f125625efd60..6007a56bdbee 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -751,6 +751,11 @@ else
>  # These warnings generated too much noise in a regular build.
>  # Use make W=1 to enable them (see scripts/Makefile.extrawarn)
>  KBUILD_CFLAGS += -Wno-unused-but-set-variable
> +
> +# Warn about unmarked fall-throughs in switch statement.
> +# Disabled for clang while comment to attribute conversion happens and
> +# https://github.com/ClangBuiltLinux/linux/issues/636 is discussed.
> +KBUILD_CFLAGS += $(call cc-option,-Wimplicit-fallthrough,)
>  endif
>
>  KBUILD_CFLAGS += $(call cc-disable-warning, unused-const-variable)
> @@ -845,9 +850,6 @@ NOSTDINC_FLAGS += -nostdinc -isystem $(shell $(CC) -print-file-name=include)
>  # warn about C99 declaration after statement
>  KBUILD_CFLAGS += -Wdeclaration-after-statement
>
> -# Warn about unmarked fall-throughs in switch statement.
> -KBUILD_CFLAGS += $(call cc-option,-Wimplicit-fallthrough,)
> -
>  # Variable Length Arrays (VLAs) should not be used anywhere in the kernel
>  KBUILD_CFLAGS += -Wvla
>
> --
> 2.23.0
>


-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNATHj5KrnFa0fvHjuC-%3D5mV8VBT14vrpPMfuNKWw7wabag%40mail.gmail.com.
