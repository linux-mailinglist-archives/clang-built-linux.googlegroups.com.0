Return-Path: <clang-built-linux+bncBDYJPJO25UGBBB572OBAMGQEBTJAUOQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33d.google.com (mail-wm1-x33d.google.com [IPv6:2a00:1450:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FC2834235C
	for <lists+clang-built-linux@lfdr.de>; Fri, 19 Mar 2021 18:29:43 +0100 (CET)
Received: by mail-wm1-x33d.google.com with SMTP id n2sf13219478wmi.2
        for <lists+clang-built-linux@lfdr.de>; Fri, 19 Mar 2021 10:29:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616174983; cv=pass;
        d=google.com; s=arc-20160816;
        b=FGuBLA4NVR184pVoQbAg+Zhb6rDbftDsZlq5s0HH9TqRGnFSsIPWQTYSIwBL7+02gz
         W4kxmlywZdW0b6IVXrZICm4HPR3DVePBFWpv9OyGvGHRw+JtnWw1uuaPB9pg56Vt632e
         96pHagy3ZyXzzHmaombbw2bak6Bqogl3sp3++kxW92/sc+dIOfRfFTHun876yApVcImJ
         orR/x5e4Wh55KlRtasOwKNFPwKzXMn0v2u9Uhcy8W0+zZ0sjPoZViorkNPf2aiewt/Iu
         CeHs+DLAYsAMQaWFHC/AUN6GoUSO/DeyvnPCmiuAgE6N+jJdGZHfPg998bY+zHEWvvai
         +gHA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=X93fM+VOoOTTEOaKSDzSkHjzqzGkrGBxnzW8NQgUNag=;
        b=wmkX93bvBPAwBHQuG8HAJ5C0e45BgZLYA7xdlbPSnnVjDFSRHzGL1IFm0W2cC29mOD
         YJq1cz9MzwsWGCU1YDE7ZG8lZHBtHLLXAVHuQ7LkNe6qjK/91T75ABYlt/YdjlfyWFzu
         z6UOvsCYDMU43xha1boDe1MC+EXG1MHBBsZdiPMQbZVbkVBFkBbFIIl0aHxxtQb56Uoi
         tntSUSflGzEU5PkXrQsMRlDtfrNQSmwzFFPGGl+rGNfYqsR+l34N0g9nG3HVlqZAcJjN
         GEooV9GjMwTfNIe2lSiWCocV9k4N4CCLJ1TQ16vYQrrCK0mUs4z9O3wdKraRT1XKyHJR
         i5HA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=qxS40zfH;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::134 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=X93fM+VOoOTTEOaKSDzSkHjzqzGkrGBxnzW8NQgUNag=;
        b=CIKU6+IxnCd4tdOuZg7Q8luAerFU0EYgC3b78A8/+S7Evfa2mdxsa6EmrhS6Mu533K
         hcqxoy44dthLLJkfVLv1CA15ljzAEvvdVlSfjTyAb87FuPYRwTP1XMp02tcgIz0vY+l5
         91KKelQZlkhGkPGpMmvN9SBAKvAA2FPrd3eNdfVvKevySui4CFRzchGBlw6ia95PNyOa
         ERC3TEFIyQVUXU289Re3/2PLqg2S32FoTOUE12HpNZJPOFcz70O5HxGECAj08WWJtV9+
         KURJPcd3GOqVZaqYHF22y7PsqRMyrik/0DAHZ6QJkC7Q4wjyy/db46ZSna19JFk8gnnf
         t9gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=X93fM+VOoOTTEOaKSDzSkHjzqzGkrGBxnzW8NQgUNag=;
        b=rMD0ewn8++IEtr1sDi9Z2NTB0KOijlNpdDgZuU21rNWV8LWrpguEU1QHzwotQ7AzmV
         +n+Yo1sHpxSHOCHZsJzrTvWiBzBvi+NHrDtPKRzlWB3rrdTuBT2vhBcMMo43yrQfkXYg
         LnXJ9YILjCqebOwAGNShp5QMc8EkdjcKkm7kZPHgMqjSnJcRaJAPZTnvDgr2gFNIIU1k
         xeic4JurR8hcwVNQ8yNDCAzNGb4vxrbaonXldMXJ19yQtZSP26VTifQnQIfrbrLkWMGo
         KZKbVGBpaxwS+U6tzpAJLTnzwPawz+BOynfNKuSBSA5F7wOFPR63BASX3IWkX5aHBD/N
         Ab0w==
X-Gm-Message-State: AOAM530JMpGUBajIUuJ8tsTlvKhupPakqxt8avLjtV8RfLtu42725o2E
	tImbKCy6DNbWQ1pm5FZ5380=
X-Google-Smtp-Source: ABdhPJzwYXFmIfMvQnmAqcF0gm7rhB9UySq+MRFjxjDPb7pjYBeJbdOBEuVY14pMocKu99usxC227A==
X-Received: by 2002:a5d:58c9:: with SMTP id o9mr5706031wrf.181.1616174983379;
        Fri, 19 Mar 2021 10:29:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:bd84:: with SMTP id n126ls3022268wmf.2.canary-gmail;
 Fri, 19 Mar 2021 10:29:42 -0700 (PDT)
X-Received: by 2002:a1c:7407:: with SMTP id p7mr4727846wmc.51.1616174982551;
        Fri, 19 Mar 2021 10:29:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616174982; cv=none;
        d=google.com; s=arc-20160816;
        b=g7kG/IhL4UTpQKdy/RaAgDmZe/Ysfz498IOcF7xSYc+i2K2RnajdV6nVcFozrraoo0
         elaMevYgC2fWGeiDHEpO4rlMJuv2daEYl6HfDSBvdSWN3MoqmQXBWBmaE3NbSduZqtHm
         H4Sk/YggrmCUmG1WtoUNLzTGCqd8/jtZ5OeyqvKMO9Rhf4PRK91Innr/qcgHlDPB0XrA
         y2sHBoi0xb4JK0pLxBbB9iA+Yr3uIAi57k/NQLaDQjugw19mMtniyFYfsS+fch8b0OiY
         9iIy5JyDYlJci1oxXPyCADuNGoihYrWOq+Ia+6p2hJfN9TqDllrmdNpBK4oiVm3/hGpT
         aeOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=tvHhezgm6LLrHkw6LiFzJkS2cxMTL9fEuJKrvKkiKUQ=;
        b=zzr7aDgE6GBFxo7boDsRqDA++2NNVMyiSCx+rtl8pCLVJ9PodSdqSXPF254DnWXhy1
         YoyH1XluyFkCCGlNm8Y3lvhVctMqIT9y86WDveHiSVBEkvX5C4NsVOFlMWQ6YA6WKIkw
         kUoKkF3gVhHxyFM9dDhquyNRPyppZ6H6dawHjq0Ru04GTudyHBB4U62HN3GWzxAESnuS
         bUid0ZDs9TXRyMJ5ikox9laj2W2w80/TeasgAZMK9lDN9htyKofAhmhJxTLxwiQzyxmI
         jLWlWCCU24i6OfPL+0NM4yDnEtsQY6Sc3Z3Y7jdTwkrjAyl07+5Fzle1kXmSyKG+5UfT
         1unQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=qxS40zfH;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::134 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com. [2a00:1450:4864:20::134])
        by gmr-mx.google.com with ESMTPS id h16si219149wrx.2.2021.03.19.10.29.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Mar 2021 10:29:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::134 as permitted sender) client-ip=2a00:1450:4864:20::134;
Received: by mail-lf1-x134.google.com with SMTP id w37so11171209lfu.13
        for <clang-built-linux@googlegroups.com>; Fri, 19 Mar 2021 10:29:42 -0700 (PDT)
X-Received: by 2002:ac2:538e:: with SMTP id g14mr1375802lfh.543.1616174982034;
 Fri, 19 Mar 2021 10:29:42 -0700 (PDT)
MIME-Version: 1.0
References: <20210319165334.29213-1-andre.przywara@arm.com> <20210319165334.29213-2-andre.przywara@arm.com>
In-Reply-To: <20210319165334.29213-2-andre.przywara@arm.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 19 Mar 2021 10:29:30 -0700
Message-ID: <CAKwvOd=GT=dFUS4ihZ3X5_Vne2ZGqag=9zHaW6+wBLEj3jx-GA@mail.gmail.com>
Subject: Re: [PATCH 01/11] kselftest/arm64: mte: Fix compilation with native compiler
To: Andre Przywara <andre.przywara@arm.com>
Cc: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Shuah Khan <shuah@kernel.org>, Amit Daniel Kachhap <amit.kachhap@arm.com>, Mark Brown <broonie@kernel.org>, 
	Vincenzo Frascino <vincenzo.frascino@arm.com>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	"open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>, Nathan Chancellor <nathan@kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=qxS40zfH;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::134
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

On Fri, Mar 19, 2021 at 9:53 AM Andre Przywara <andre.przywara@arm.com> wrote:
>
> The mte selftest Makefile contains a check for GCC, to add the memtag
> -march flag to the compiler options. This check fails if the compiler
> is not explicitly specified, so reverts to the standard "cc", in which
> case --version doesn't mention the "gcc" string we match against:
> $ cc --version | head -n 1
> cc (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0
>
> This will not add the -march switch to the command line, so compilation
> fails:
> mte_helper.S: Assembler messages:
> mte_helper.S:25: Error: selected processor does not support `irg x0,x0,xzr'
> mte_helper.S:38: Error: selected processor does not support `gmi x1,x0,xzr'
> ...
>
> Actually clang accepts the same -march option as well, so we can just
> drop this check and add this unconditionally to the command line, to avoid
> any future issues with this check altogether (gcc actually prints
> basename(argv[0]) when called with --version).
>
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>  tools/testing/selftests/arm64/mte/Makefile | 2 --
>  1 file changed, 2 deletions(-)
>
> diff --git a/tools/testing/selftests/arm64/mte/Makefile b/tools/testing/selftests/arm64/mte/Makefile
> index 0b3af552632a..df15d44aeb8d 100644
> --- a/tools/testing/selftests/arm64/mte/Makefile
> +++ b/tools/testing/selftests/arm64/mte/Makefile
> @@ -6,9 +6,7 @@ SRCS := $(filter-out mte_common_util.c,$(wildcard *.c))
>  PROGS := $(patsubst %.c,%,$(SRCS))
>
>  #Add mte compiler option
> -ifneq ($(shell $(CC) --version 2>&1 | head -n 1 | grep gcc),)
>  CFLAGS += -march=armv8.5-a+memtag
> -endif
>
>  #check if the compiler works well
>  mte_cc_support := $(shell if ($(CC) $(CFLAGS) -E -x c /dev/null -o /dev/null 2>&1) then echo "1"; fi)
> --
> 2.17.5
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DGT%3DdFUS4ihZ3X5_Vne2ZGqag%3D9zHaW6%2BwBLEj3jx-GA%40mail.gmail.com.
