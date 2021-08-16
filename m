Return-Path: <clang-built-linux+bncBDYJPJO25UGBB4NH5OEAMGQEM632D7I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23e.google.com (mail-lj1-x23e.google.com [IPv6:2a00:1450:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id 20A9F3EDF11
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Aug 2021 23:09:06 +0200 (CEST)
Received: by mail-lj1-x23e.google.com with SMTP id m20-20020a2ea5940000b02900f2f75a122asf6436767ljp.19
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Aug 2021 14:09:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629148145; cv=pass;
        d=google.com; s=arc-20160816;
        b=TfigmuRW5tWcjbjK3oJ2CH59iraV59kEGrUUJoFT/difCam5RZRqmHhr3m9+ipUHlU
         Zmbkla6s1to8Tw/JBUduYnelQUZQxPi2VoWRp9tQgYwhe1pegJXokmt1VC7ayrJBOF8L
         s4V9Htw3b148HKmABsKC8FToHhP9zBXvTH3mn52DI/sNELw/x9E2EReTyZRz75alyWUe
         xcOh6Ya7ahKg+XHk9Vj8/ec9snrPVEquUYqHwXIWM8aN/W2k/ZKwCv5HS50wi/DXWe97
         oBzFd62axmKmw5oocTMLNbTH+T6ELTT5hHVpKI21dj4qxySoqfsnWSqlZ9VdQ1xLRVhV
         Fu2g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=j576U8czK2WRjP1YMtLI94XrnYp16xL+LNRacTqdu4s=;
        b=QkdbG4UZQfSklKataWSR5JUD2xUdrCZfLW5ytfKK95xUq9mZN1R8Bm4DnG7SMS0OfG
         Cx1NlvyY5QLB3ji4jJ+AmmLpHyjl01CkN4ntQ/rmIUcZgEs34l1+mI/BKLAkr9nz+8wr
         4qOwllYHlvLGjeYZDhIETdHgkC2tHYRnk2dlsudkOhiznbbuEGMNLR12JVb4ved6mI/U
         dDgFvH3sUUV2sAOg+Aqzmf0/8uKvqZ6pGXeQet/g5XdiI5rRzWsVbEmUkxCja23OgbSx
         NvxkV4YTIe6UHSzf1N5ZB8VlG1/MqMIZTRGBvkDH2oWcR3e2iyXVmB2JJ7Fm32ydyWbn
         +b8A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="PckaKH/D";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::235 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=j576U8czK2WRjP1YMtLI94XrnYp16xL+LNRacTqdu4s=;
        b=mkOUs9VgO4c41VGNPoag/gkfy7s9XE/IhVWs7pw8iic3AmDpeFM3BDUztDGxJFbcrk
         owCJRcLtC5jTwox7zD3k0yG2cAO4o3dOM1J3R6+I8VUnmYYUkt1TTS0hc90nOLzUqTAi
         U0HU9Tb2tgwUwx3N6W2NMLHgiCMQEeSCfvfM/EnuBWjwDbjm0EvmIN7hlBlAEzNEQlKS
         GK3tyNf6bUAkQFL/s1/uIiYPp8s7PvNf11z/eN7sooS+SrYm1MRCV39qPfv7j1qqJhxE
         tMbwuHknzEFF5PG84h0GyHawFqfTN/mr5mCmpZDWV0GdTdUtLKD4J6MaxSK3v6BCEq4U
         wuYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=j576U8czK2WRjP1YMtLI94XrnYp16xL+LNRacTqdu4s=;
        b=kpsiHRU1gMN4piak06DGqJD6TUWcnHAXl/nHt4hrrQVoR52ZNVT3GVq9kMYmmKNmt3
         Ko/wY/IOC/Zl9mpnsKrwpciuaPJnaT5QvEo/At46cmzB9NGmN4PE7Gvs0ogJX/uOPrOp
         k9CTubVUGoS6VEKdLkKNXcwVJC5fQTyiTB+dxMga4il0lbtztARRy6XYGH6QJSPC7oVd
         rVzS2cxVm4wClfOq/Vh0OFqCebJf4vLY4CtwIplQBkvMJT3XqYYpOdL4cvyANqRXBdIy
         60etf/hTVHTR2UHRd11sJN8gIckV726U0aEoaoq7rAOmp+nFB7s5Ve113HnwpBYVgL5H
         LoJA==
X-Gm-Message-State: AOAM530/zafypB3BAgt6Cc2OwXoWma5C6GG3uyoid++pne/TtkAHeuRI
	NKBJNPlafImHSXaoTjI22M0=
X-Google-Smtp-Source: ABdhPJwYnm0gfjElpCXobFgiqyFdewVZ0gr9PLkgyQvdZWKtjQSTB+2oR8SsHJs2AzWJp5ooC4OG2w==
X-Received: by 2002:a05:6512:3a83:: with SMTP id q3mr215496lfu.309.1629148145725;
        Mon, 16 Aug 2021 14:09:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:b24:: with SMTP id w36ls44442lfu.1.gmail; Mon, 16
 Aug 2021 14:09:04 -0700 (PDT)
X-Received: by 2002:ac2:5470:: with SMTP id e16mr207898lfn.399.1629148144768;
        Mon, 16 Aug 2021 14:09:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629148144; cv=none;
        d=google.com; s=arc-20160816;
        b=USFUYuy1UdO6y+7DRs2BeUf2y6weX3eTD7INOf0qPLJsmOJosorvvWDJ0CxKCIirLj
         RabrlSvC1EPpzF7TBMZ9cAqUNJX3Owxa2Q3M3rrt4u1sTOP5HwWEJCdi3kO3DywaCCUt
         pyxxh5UH35U3Gf4eqNmaxA2DGgQ3wFXEaEq/eV5mlNdVJn1CBiePFYjgkoisM/cgfuS+
         eiKYsWYJNL61mH0v53S/rroxo2LlvgwFCGWIvyWQbY7AY4P5ypnO2qn3l3lvk1VgNJ2I
         ETOAGPKrDgeh1mT5CqAi10hBgm+gne3TKme2ve2rmiC8G+WNsO/uj0JgsPZlWKSP1NTS
         VKqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=kXHESVXtW3fAQs2klw3L8m3LsM2vjy+bWhA8ZxQLeJ4=;
        b=gnHG5kiv/rrWRvccRbheuwIQN9KQx/o55ptJrzkQbW7ja4sWGX4R5e8C5MU/8pAY0/
         JalrkfgVKU6wKj3R7ZKcJfel73dJCUJ0aynp9NYAWZyffsl8UuiKrZCOp0UDYvYcE2bJ
         DP7pTHzfKz8Z2znIHtSdJagsFY7+MGT/p+ANZqr/UUivqQ4InsL0zxJXK3nuc6zyyxW2
         QeAKHRTgMAwuakfhrIA8aRSDEXAOel/tNi/AVFhXDiKuFgoXst3yg0BLLGjASBcQjAJT
         4XWxD1z5xiY0e9ZKdmtH0iOBuN9oLAPOyVhjCbC0ZpqB6opsbRr21uAqwGywbvx4PinD
         GZ0w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="PckaKH/D";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::235 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com. [2a00:1450:4864:20::235])
        by gmr-mx.google.com with ESMTPS id f16si4511ljj.3.2021.08.16.14.09.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Aug 2021 14:09:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::235 as permitted sender) client-ip=2a00:1450:4864:20::235;
Received: by mail-lj1-x235.google.com with SMTP id f2so7636153ljn.1
        for <clang-built-linux@googlegroups.com>; Mon, 16 Aug 2021 14:09:04 -0700 (PDT)
X-Received: by 2002:a2e:9304:: with SMTP id e4mr167248ljh.244.1629148144281;
 Mon, 16 Aug 2021 14:09:04 -0700 (PDT)
MIME-Version: 1.0
References: <20210816210418.59294-1-nathan@kernel.org>
In-Reply-To: <20210816210418.59294-1-nathan@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 16 Aug 2021 14:08:52 -0700
Message-ID: <CAKwvOd=usiNsmpRbfBfdCyCcLRudY4aSa72FMLX-P5bKRTH9zw@mail.gmail.com>
Subject: Re: [PATCH] selftests: Use -fno-integrated-as instead of -no-integrated-as
To: Nathan Chancellor <nathan@kernel.org>
Cc: Shuah Khan <shuah@kernel.org>, Mathieu Desnoyers <mathieu.desnoyers@efficios.com>, 
	Peter Zijlstra <peterz@infradead.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Boqun Feng <boqun.feng@gmail.com>, linux-kernel@vger.kernel.org, 
	linux-kselftest@vger.kernel.org, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="PckaKH/D";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::235
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

On Mon, Aug 16, 2021 at 2:05 PM Nathan Chancellor <nathan@kernel.org> wrote:
>
> -no-integrated-as is considered the legacy flag since clang 3.5 so move
> -fno-integrated-as in case clang ever decides to remove the legacy flag.
>
> Link: https://releases.llvm.org/3.5.0/tools/clang/docs/ReleaseNotes.html#new-compiler-flags
> Signed-off-by: Nathan Chancellor <nathan@kernel.org>

Thanks for the patch!
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>  tools/testing/selftests/rseq/Makefile  | 2 +-
>  tools/testing/selftests/sched/Makefile | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/tools/testing/selftests/rseq/Makefile b/tools/testing/selftests/rseq/Makefile
> index 2af9d39a9716..32f503c13c61 100644
> --- a/tools/testing/selftests/rseq/Makefile
> +++ b/tools/testing/selftests/rseq/Makefile
> @@ -1,7 +1,7 @@
>  # SPDX-License-Identifier: GPL-2.0+ OR MIT
>
>  ifneq ($(shell $(CC) --version 2>&1 | head -n 1 | grep clang),)
> -CLANG_FLAGS += -no-integrated-as
> +CLANG_FLAGS += -fno-integrated-as
>  endif
>
>  CFLAGS += -O2 -Wall -g -I./ -I../../../../usr/include/ -L$(OUTPUT) -Wl,-rpath=./ \
> diff --git a/tools/testing/selftests/sched/Makefile b/tools/testing/selftests/sched/Makefile
> index 10c72f14fea9..d84a19363a62 100644
> --- a/tools/testing/selftests/sched/Makefile
> +++ b/tools/testing/selftests/sched/Makefile
> @@ -1,7 +1,7 @@
>  # SPDX-License-Identifier: GPL-2.0+
>
>  ifneq ($(shell $(CC) --version 2>&1 | head -n 1 | grep clang),)
> -CLANG_FLAGS += -no-integrated-as
> +CLANG_FLAGS += -fno-integrated-as
>  endif
>
>  CFLAGS += -O2 -Wall -g -I./ -I../../../../usr/include/  -Wl,-rpath=./ \
>
> base-commit: 7c60610d476766e128cc4284bb6349732cbd6606
> --
> 2.33.0.rc2
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DusiNsmpRbfBfdCyCcLRudY4aSa72FMLX-P5bKRTH9zw%40mail.gmail.com.
