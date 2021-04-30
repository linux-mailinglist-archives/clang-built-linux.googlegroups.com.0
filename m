Return-Path: <clang-built-linux+bncBDYJPJO25UGBB2MSWKCAMGQEL7LIIXY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x440.google.com (mail-wr1-x440.google.com [IPv6:2a00:1450:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 5288D3703AD
	for <lists+clang-built-linux@lfdr.de>; Sat,  1 May 2021 00:49:14 +0200 (CEST)
Received: by mail-wr1-x440.google.com with SMTP id j72-20020adf914e0000b02901073cdd9d65sf16690535wrj.0
        for <lists+clang-built-linux@lfdr.de>; Fri, 30 Apr 2021 15:49:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619822954; cv=pass;
        d=google.com; s=arc-20160816;
        b=A/0uSEVd7RFhUb30+VWsBEBlWYCN5xGFb0gY053oUemf1rWSF310h0E06cGf9HiE48
         swEfbMnwxvZKihR228RRcTYLPTWA+AYDNUOClnEeU/wKeTedZIxkItIB+8LOez6PTVPq
         SXIKazkWISggS2rQ8QmegeuevPMq6ofvdBAhRm0v+vCvdvLaOkhYAhdW9ihtrAPBkMMm
         cg3SU7plB0T0IDPTvJx+Hdvj5Oy/HlFu31seXE+1gMaFSQctahzJO84hiloiLUjvl1ag
         6xI1ZiMc0rmbImFtjKmwBA+QYbgiNoXkWdd2nCFx7lHwPrT/gcW8+mGaEoT1e6DhOj0o
         KgtA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=cvgnKbVNt1SFLMq9Z7b/vTXhfuwOZgSi1204DoZshQs=;
        b=nD7IWE8E1UtEbEdMY5L67iLWWgiOCWY8S59mmpDK9CLP4AgfHp0lpfL31tiehkZEqd
         IAag0LPCYYt3SvtjHu+UhBevpuqIyYtaLA0ee8wmtdk19jYtQciZZCbnjx/RaEB3uDp7
         rzeUBAd39eEf5/oet+lAQNl7p1+O0ckyFO5Jiz+0U4gpEJ0mRTqMKeToPK4JhPvxWkzq
         NHF0j0eBhP808DK14S02BB+oEDtRUL8nCoBZugptrVIEeIKU3nped4HmEaxgssVHexJ5
         pnT8x6gwhp1nIQTzjwhg21z7aq1bzSlwMnWR2wiD/IZCEKyyZYkzxuZ/oSrNmq1VrXMz
         +Y3g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Hdkd+OSz;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::136 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cvgnKbVNt1SFLMq9Z7b/vTXhfuwOZgSi1204DoZshQs=;
        b=jPKHU5SSqQeS3GQPUni0EwtRlnlSZyzxl/eeyzG07q/R08ZhnBJ36lxVcPETUOFoaa
         6gHTIDrCLxIUZ97aLwg22VPys0YUwHdslb+XbiP+ISIBrkjv9baCpygHAH3uWtv1JW5t
         50LHr2cRaqF/3mnOkDs+jM08eyvD3VxOj3Z9Uu/PipqyN5VKmuOHjHHTrVVy/hQMl37O
         m+WQq9BOypkaFdKfCFwChLM76niCJbTdHEa9OBUUqMS8ZeyD0NfwvLfFhpLIJD04eny4
         PmHOBzn4nEJKsLtBOYfub/TAUxZA0Npy0PBhPQm3BfNnvr3ffKYvJHxzeVc9C5WZa/Pv
         hrvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cvgnKbVNt1SFLMq9Z7b/vTXhfuwOZgSi1204DoZshQs=;
        b=qwUPlMwSqxZw/xyUTO3gIhhEPgMdwIBO9qV4vpmYZV6q7sYpMCWS3wclor5iVaTNfl
         p1YOctn/WOnjoKQ+O5SnriqygoazrjkF9Q4RVRMC7yBVG0IXBi7ZEayfvyQoYy7XCKw/
         VVXBoGgA3cpEXWLHSM32nwxxGxOX1dxSCVnMoAHVf9VAoP54hn/Vs7q4EhLO20Sg1kjP
         CSDz6MwN8G/luLL/TT1NSiK4hUWa61twwACJQwf0IOTG7EyQcvujQ67q70X0sNeh/idh
         FKVyV7Z8O6Ym0IOwgtgoFW4SYhUL1ErUlcqE/79BL2v4MEXYfFNKJqSf94V/9EKKJLot
         IL7g==
X-Gm-Message-State: AOAM530dskbl7Jg2YaTUPaWjk07xK3FBO88DgPR4WcLlhPW9xwygo4+H
	zu/N/BWepOdmCMNtGyP4V4M=
X-Google-Smtp-Source: ABdhPJwzitac+1hMFrKKjlsQ1VFoKrL1KZ3loNjQ1v73J5XvwRV1QG/tVA740lRyRenbC4BDYJT3jQ==
X-Received: by 2002:adf:8306:: with SMTP id 6mr9744345wrd.307.1619822954081;
        Fri, 30 Apr 2021 15:49:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:6da1:: with SMTP id u1ls6509714wrs.1.gmail; Fri, 30 Apr
 2021 15:49:13 -0700 (PDT)
X-Received: by 2002:a5d:51d2:: with SMTP id n18mr9925919wrv.69.1619822953253;
        Fri, 30 Apr 2021 15:49:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619822953; cv=none;
        d=google.com; s=arc-20160816;
        b=c7PfxQfgcCRTeGSUNu9avP2CCwXipRHXSd4Z4nj6EylpuUFUXQXitc6Hm1fJCGG1eZ
         vWdWqUCdPoGHzf4G2W1cSB0ijnE7mrR3Z8JD/P87tuXNOiywqKErPu4oENHT8/mhEU0z
         wofAvupj0dh3XQf6WcbxsZw7ElGY1/bKnqndd7rOH+MhpCV/rnLt3eS2pSf/EOI4iJht
         QbMQYkgEReJjs7Ny9MCEQDb3fsGGLja/v881d6j0oo3HpOu460UUVIBkLBBpGDwOseGJ
         pHKKTMN+1wwqm2JOG5vHK+x3NzMWKJEh7dk/TQmkgK51r4uEzXUq/0aOpWau1J3uDyvC
         x8lw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=iDj/KqljFidoYmUB3JwJD5XIMfVHo2ILy+QB0Z4+7eY=;
        b=Nm5uq3/rLDa0Bu+dNwv/+tBWe1ryuO5r0KAIA2GTLbRJPJ9gX27myuvigr7HSGJlet
         VL5wmXn8g4mouSNWvRzn6OgmHRRO34doTeyEShQ2K4LZlw5fugqAQ1gGVSHDGFxExq8b
         XRn2spVOo5Vor1t9N3qvgTaLyxBUCz5560VfzHRWUsdW9g+BRVhGg0qp3suybDJvfoWl
         3Z9xDPK60Vu8RM6assZlx2gV5l5sFh+kZa3+StI83zTeW1wvE8X2lgTVGiNBgT1cGbt5
         /NcBY6i1FHElxCRFqxMa8d5uUu3JZdos0zvbEpHYVyKYSkRgaOLA1AGoeb4tvd40CUVq
         l3Yg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Hdkd+OSz;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::136 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com. [2a00:1450:4864:20::136])
        by gmr-mx.google.com with ESMTPS id z5si545824wmb.1.2021.04.30.15.49.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Apr 2021 15:49:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::136 as permitted sender) client-ip=2a00:1450:4864:20::136;
Received: by mail-lf1-x136.google.com with SMTP id x19so82091571lfa.2
        for <clang-built-linux@googlegroups.com>; Fri, 30 Apr 2021 15:49:13 -0700 (PDT)
X-Received: by 2002:a05:6512:2190:: with SMTP id b16mr4831831lft.122.1619822952803;
 Fri, 30 Apr 2021 15:49:12 -0700 (PDT)
MIME-Version: 1.0
References: <20210429012350.600951-1-nathan@kernel.org>
In-Reply-To: <20210429012350.600951-1-nathan@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 30 Apr 2021 15:49:00 -0700
Message-ID: <CAKwvOdkXBY_5goFo_DvbuaDNE=vcXxXYsw6tJGy4ZBRySW9_oA@mail.gmail.com>
Subject: Re: [PATCH] Makefile: Move -Wno-unused-but-set-variable out of GCC
 only block
To: Nathan Chancellor <nathan@kernel.org>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Michal Marek <michal.lkml@markovi.net>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, "# 3.4.x" <stable@vger.kernel.org>, 
	Jian Cai <jiancai@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Hdkd+OSz;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::136
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

On Wed, Apr 28, 2021 at 6:24 PM Nathan Chancellor <nathan@kernel.org> wrote:
>
> Currently, -Wunused-but-set-variable is only supported by GCC so it is
> disabled unconditionally in a GCC only block (it is enabled with W=1).
> clang currently has its implementation for this warning in review so
> preemptively move this statement out of the GCC only block and wrap it
> with cc-disable-warning so that both compilers function the same.
>
> Cc: stable@vger.kernel.org
> Link: https://reviews.llvm.org/D100581

Thanks for the patch.

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Tested-by: Nick Desaulniers <ndesaulniers@google.com>

(That's actually one of Jian's teammates working on implementing that
warning).  Tested with https://reviews.llvm.org/D100581 applied, which
I do fully expect to land in LLVM soon.

> Signed-off-by: Nathan Chancellor <nathan@kernel.org>
> ---
>  Makefile | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/Makefile b/Makefile
> index f03888cdba4e..911d839cfea8 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -775,16 +775,16 @@ KBUILD_CFLAGS += -Wno-gnu
>  KBUILD_CFLAGS += -mno-global-merge
>  else
>
> -# These warnings generated too much noise in a regular build.
> -# Use make W=1 to enable them (see scripts/Makefile.extrawarn)
> -KBUILD_CFLAGS += -Wno-unused-but-set-variable
> -
>  # Warn about unmarked fall-throughs in switch statement.
>  # Disabled for clang while comment to attribute conversion happens and
>  # https://github.com/ClangBuiltLinux/linux/issues/636 is discussed.
>  KBUILD_CFLAGS += $(call cc-option,-Wimplicit-fallthrough,)
>  endif
>
> +# These warnings generated too much noise in a regular build.
> +# Use make W=1 to enable them (see scripts/Makefile.extrawarn)
> +KBUILD_CFLAGS += $(call cc-disable-warning, unused-but-set-variable)
> +
>  KBUILD_CFLAGS += $(call cc-disable-warning, unused-const-variable)
>  ifdef CONFIG_FRAME_POINTER
>  KBUILD_CFLAGS  += -fno-omit-frame-pointer -fno-optimize-sibling-calls
>
> base-commit: d8201efe75e13146ebde433745c7920e15593baf
> --
> 2.31.1.362.g311531c9de
>
> --

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkXBY_5goFo_DvbuaDNE%3DvcXxXYsw6tJGy4ZBRySW9_oA%40mail.gmail.com.
