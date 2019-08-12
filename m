Return-Path: <clang-built-linux+bncBDYJPJO25UGBB6HBY7VAKGQEMUBDZTI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id 89C998AAF0
	for <lists+clang-built-linux@lfdr.de>; Tue, 13 Aug 2019 01:06:33 +0200 (CEST)
Received: by mail-pg1-x53a.google.com with SMTP id m17sf56516079pgh.21
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Aug 2019 16:06:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565651192; cv=pass;
        d=google.com; s=arc-20160816;
        b=gDTN8OicGbMgQNMMKBte3NxFiU6ZmCDTgPjE0ojVewF9+Qnw694yy046WYGQ9b4tvL
         FqeB966FQmPOByO7NvkdvUcVygkneHijDVjMAAJ8h6e8nOucheXMPTlQFrX9VThLjjj/
         z92Ssqq9XmoEx9k1emjqQzMmXQkOceAHNn0GhHF3kaTYWHmPsC3WNQ6bj5UuSo1tzfLm
         PuJkGTz3P1V6NpHsvF95xCxhq2V4TFd8SZs3Y2HCnvrLFvKnCqbp9L1E3GJq1H641N6o
         Jr42ICnFfpbgDM0ohXksQsgFF4xYiEO85QGXzNIjqiFgiL8BX51CIXIgNZhi8Kfvbbuo
         huTw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=ptbn1hNW4NftJcYIIAYbMQ4MS16n6JYDyJVN4uwJ/M0=;
        b=LefvrOka6q8VDfKW7/Ft7G/yzb3NUqUysSW++71r73sgNydsJrEuhiGR9ibekM7Wre
         /jTBVwJQGaeD5dYGQPy5MH4d5y1buV60rB95ykxGhAGzQ/pbGu0rFq8yq25npYTDIiZL
         6O1yY0KDtSw6cvVvBvB4YI6Vww4HDyoHF9NOrKH8T8q7zZTi650cak0hj3RmCfu43iMG
         wbeqXj215BLZimmSDu63GSk0tRkKI3YBo3dY2bTzTN4GbBwtPL7KEOWb2nLV0RfPuuN9
         PADkmSGCnN5aM+9mSehjhgfyyQnNMGmBRDuuAjobvS4qX3wSEeXxY5TOrQ+Ux3PIqhza
         9zIQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=RV02ssHx;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ptbn1hNW4NftJcYIIAYbMQ4MS16n6JYDyJVN4uwJ/M0=;
        b=BURqGA3I5pGAyuk4VsUhNSr+2Yoka/nPek+ewUxdarSf959hniS+7UUWh4YYrMP/iW
         +dLqd9H2ct+5ilG7GJuS7XgLwVMS4XoNm5r44aZYZmqtitnPXBZFlu4ylNSLc0kKU62I
         aVY7Fa62ZPG5E+dk4iQIfQWGAIDz1086gkEkCJ5ncuie7yHgPljhSvr2yIkdKd6uS4yY
         QuiyLuyVMFDdhjFUVHDQOGzLATzm/g0N/rJyomWPvvL8fsHXZoBgKpKCERhPgjTfAV2y
         zFhxPymFvprpA+vHdnG8prf3mhnZnrj5o5rQnCv/6an+es1ijc7sVob8TxDScyMF+87O
         Labg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ptbn1hNW4NftJcYIIAYbMQ4MS16n6JYDyJVN4uwJ/M0=;
        b=hYkv+n2RE4AfJdR2y3xvU4gFwmLHnuQ8FJ4WOGOOPjLtYMTugiRZynC6n+PjClwOqX
         /etD2+TCAg1J4ITdeb1UGxB9jq78sqDCuZKviP/OUxtNGX5l/B0+HXNAsjE2m4Ttc2ed
         +t4V3VHvggkoNmGkBJdud6iPP5lRAJ4kkQGUM9hMCz78ox/a8VfBvFiquuYWr0lqj5t+
         zh+UmKHvOXEWNsP/deUgiYPgpjp1JjS9zj8ZGzNKM2cBl8GQMhvbBbVvWCv/VMUAqDHr
         WYuGACZ5GkxcNO18MWG2107mmTP9vELA6ZIq6EHNJYhISDHy36k+V3KievdB4I9ydVPp
         I4wg==
X-Gm-Message-State: APjAAAXvMEs7BJb91PDqr6Nr530LikgXklSRyw3UMsvmeHLTKRwnkbhB
	tReyUrt9iMbwVoRXzI3q9Zk=
X-Google-Smtp-Source: APXvYqyuFi8Cv3yi8dSNCN7DEC7vPwEl+09HOUqez3n0m/t+miEPaU5bN1yFMaeo7Kmdg6zO/QZpKg==
X-Received: by 2002:a17:902:aa03:: with SMTP id be3mr35081763plb.240.1565651192299;
        Mon, 12 Aug 2019 16:06:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:fc15:: with SMTP id j21ls12484363pgi.9.gmail; Mon, 12
 Aug 2019 16:06:32 -0700 (PDT)
X-Received: by 2002:a63:c006:: with SMTP id h6mr31726045pgg.290.1565651191898;
        Mon, 12 Aug 2019 16:06:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565651191; cv=none;
        d=google.com; s=arc-20160816;
        b=zGq/lhwCUMC+II/Lpz5XIGn+XeX3GLVle6ruOQwmCrFuJw3wCT3+dq+a9wr771Gxw8
         QvAbo5i11GNvDmSiHwmOF0b7hdsD7S28dSml7nreKrGU0pQ4qrYrDbA/hA881HCyjrLT
         cGn0uhCEypdBPBSpBFKnfPlL3WUTeKUtQ7WcNL5H5vgoEd6NVSqd4scRDL/DdPOckhU5
         pTxcDJIYKeVxBsfvDaN9ltebQEKgaj59tDGRzkV1Ds6fGVCwkODIQA3OkoGEsa22fyjY
         oFb67bA6vFHOhA7Ry9aJ5hViZfYPGI8S84a+7Z+rNS6/q/QQZlmqSiLB8pUbrtEDi8hq
         k2Ig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=De9jcsYouvXHLh29bhHmb3kbddcyyiH/H6Cd5fLJLXA=;
        b=AT8AxfMFX/o7m6pab4OBwtxQTCOZ2Rn+x6sv372UPvd0UTQNAwkqneAqNgXOZpFopZ
         tYkSMP2OHIcumpVp2uP60tf94jjTRr5Xabbr2ZQtn0TgqTplfFASyVp4Am5zDaNCg1zu
         VJx4u67Ss6RasY9y5ap/uoJqf6+QHT33XHrFjXc0m8GHej8EiAkbTWUSzcINrlZZYjhL
         4QA0OVLIMhuyjDmtwhFwUfxjvCLnzssb2CehTPIhGeYnkDwLNzoUPLl7SuZSS5bLVVvr
         Wo/vIm1uxaweWqVSoeq0565I9GNu1NlAC0qtdDmZdJ0U6piqP41VMhDmps2bJSMDjSSR
         rEXA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=RV02ssHx;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id l72si4638699pge.0.2019.08.12.16.06.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Aug 2019 16:06:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id i18so50230619pgl.11
        for <clang-built-linux@googlegroups.com>; Mon, 12 Aug 2019 16:06:31 -0700 (PDT)
X-Received: by 2002:aa7:8085:: with SMTP id v5mr20736102pff.165.1565651191125;
 Mon, 12 Aug 2019 16:06:31 -0700 (PDT)
MIME-Version: 1.0
References: <20190812214711.83710-1-nhuck@google.com>
In-Reply-To: <20190812214711.83710-1-nhuck@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 12 Aug 2019 16:06:20 -0700
Message-ID: <CAKwvOdnruuSr01efU9W7vdHy5nngYj5WOWGaCRf7ucX=6WRNKA@mail.gmail.com>
Subject: Re: [PATCH] kbuild: Change fallthrough comments to attributes
To: Nathan Huckleberry <nhuck@google.com>
Cc: Masahiro Yamada <yamada.masahiro@socionext.com>, Michal Marek <michal.lkml@markovi.net>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	Linux Memory Management List <linux-mm@kvack.org>, clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=RV02ssHx;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542
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

On Mon, Aug 12, 2019 at 2:48 PM 'Nathan Huckleberry' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
>
> Clang does not support the use of comments to label
> intentional fallthrough. This patch replaces some uses
> of comments to attributesto cut down a significant number
> of warnings on clang (from ~50000 to ~200). Only comments
> in commonly used header files have been replaced.
>
> Since there is still quite a bit of noise, this
> patch moves -Wimplicit-fallthrough to
> Makefile.extrawarn if you are compiling with
> clang.
>
> Signed-off-by: Nathan Huckleberry <nhuck@google.com>
> ---
>  Makefile                   |  4 +++
>  include/linux/jhash.h      | 60 ++++++++++++++++++++++++++++----------
>  include/linux/mm.h         |  9 ++++--
>  include/linux/signal.h     | 14 +++++----
>  include/linux/skbuff.h     | 12 ++++----
>  lib/zstd/bitstream.h       | 10 +++----
>  scripts/Makefile.extrawarn |  3 ++
>  7 files changed, 77 insertions(+), 35 deletions(-)
>
> diff --git a/Makefile b/Makefile
> index c391fbb07195..875930c19619 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -847,7 +847,11 @@ NOSTDINC_FLAGS += -nostdinc -isystem $(shell $(CC) -print-file-name=include)
>  KBUILD_CFLAGS += -Wdeclaration-after-statement
>
>  # Warn about unmarked fall-throughs in switch statement.
> +# If the compiler is clang, this warning is only enabled if W=1 in
> +# Makefile.extrawarn
> +ifndef CONFIG_CC_IS_CLANG
>  KBUILD_CFLAGS += $(call cc-option,-Wimplicit-fallthrough,)

This should go in the block higher up (see line 739) that already
exists for CONFIG_CC_IS_CLANG.

> +endif
>
>  # Variable Length Arrays (VLAs) should not be used anywhere in the kernel
>  KBUILD_CFLAGS += -Wvla
> diff --git a/include/linux/jhash.h b/include/linux/jhash.h
> index ba2f6a9776b6..6cb2381501d1 100644
> --- a/include/linux/jhash.h
> +++ b/include/linux/jhash.h

Probably should split this patch into:
1. Makefile and scripts/Makefile.extrawarn hunks
2. hunks for each other file that can be applied individually (as
makes sense for the maintainers' trees).

> @@ -86,19 +86,43 @@ static inline u32 jhash(const void *key, u32 length, u32 initval)
>         }
>         /* Last block: affect all 32 bits of (c) */
>         switch (length) {
> -       case 12: c += (u32)k[11]<<24;   /* fall through */
> -       case 11: c += (u32)k[10]<<16;   /* fall through */
> -       case 10: c += (u32)k[9]<<8;     /* fall through */
> -       case 9:  c += k[8];             /* fall through */
> -       case 8:  b += (u32)k[7]<<24;    /* fall through */
> -       case 7:  b += (u32)k[6]<<16;    /* fall through */
> -       case 6:  b += (u32)k[5]<<8;     /* fall through */
> -       case 5:  b += k[4];             /* fall through */
> -       case 4:  a += (u32)k[3]<<24;    /* fall through */
> -       case 3:  a += (u32)k[2]<<16;    /* fall through */
> -       case 2:  a += (u32)k[1]<<8;     /* fall through */
> -       case 1:  a += k[0];
> +       case 12:
> +               c += (u32)k[11]<<24;
> +               __attribute__((fallthrough));
> +       case 11:
> +               c += (u32)k[10]<<16;
> +               __attribute__((fallthrough));
> +       case 10:
> +               c += (u32)k[9]<<8;
> +               __attribute__((fallthrough));
> +       case 9:
> +               c += k[8];
> +               __attribute__((fallthrough));
> +       case 8:
> +               b += (u32)k[7]<<24;
> +               __attribute__((fallthrough));
> +       case 7:
> +               b += (u32)k[6]<<16;
> +               __attribute__((fallthrough));
> +       case 6:
> +               b += (u32)k[5]<<8;
> +               __attribute__((fallthrough));
> +       case 5:
> +               b += k[4];
> +               __attribute__((fallthrough));
> +       case 4:
> +               a += (u32)k[3]<<24;
> +               __attribute__((fallthrough));
> +       case 3:
> +               a += (u32)k[2]<<16;
> +               __attribute__((fallthrough));
> +       case 2:
> +               a += (u32)k[1]<<8;
> +               __attribute__((fallthrough));
> +       case 1:
> +               a += k[0];
>                  __jhash_final(a, b, c);
> +               break;
>         case 0: /* Nothing left to add */
>                 break;
>         }
> @@ -132,10 +156,16 @@ static inline u32 jhash2(const u32 *k, u32 length, u32 initval)
>
>         /* Handle the last 3 u32's */
>         switch (length) {
> -       case 3: c += k[2];      /* fall through */
> -       case 2: b += k[1];      /* fall through */
> -       case 1: a += k[0];
> +       case 3:
> +               c += k[2];
> +               __attribute__((fallthrough));
> +       case 2:
> +               b += k[1];
> +               __attribute__((fallthrough));
> +       case 1:
> +               a += k[0];
>                 __jhash_final(a, b, c);
> +               break;
>         case 0: /* Nothing left to add */
>                 break;
>         }
> diff --git a/include/linux/mm.h b/include/linux/mm.h
> index 0334ca97c584..52d99f263ca3 100644
> --- a/include/linux/mm.h
> +++ b/include/linux/mm.h
> @@ -158,11 +158,14 @@ static inline void __mm_zero_struct_page(struct page *page)
>
>         switch (sizeof(struct page)) {
>         case 80:
> -               _pp[9] = 0;     /* fallthrough */
> +               _pp[9] = 0;
> +               __attribute__((fallthrough));
>         case 72:
> -               _pp[8] = 0;     /* fallthrough */
> +               _pp[8] = 0;
> +               __attribute__((fallthrough));
>         case 64:
> -               _pp[7] = 0;     /* fallthrough */
> +               _pp[7] = 0;
> +               __attribute__((fallthrough));
>         case 56:
>                 _pp[6] = 0;
>                 _pp[5] = 0;
> diff --git a/include/linux/signal.h b/include/linux/signal.h
> index b5d99482d3fe..4fb0a0041a37 100644
> --- a/include/linux/signal.h
> +++ b/include/linux/signal.h
> @@ -129,11 +129,11 @@ static inline void name(sigset_t *r, const sigset_t *a, const sigset_t *b) \
>                 b3 = b->sig[3]; b2 = b->sig[2];                         \
>                 r->sig[3] = op(a3, b3);                                 \
>                 r->sig[2] = op(a2, b2);                                 \
> -               /* fall through */                                      \
> +               __attribute__((fallthrough));                           \
>         case 2:                                                         \
>                 a1 = a->sig[1]; b1 = b->sig[1];                         \
>                 r->sig[1] = op(a1, b1);                                 \
> -               /* fall through */                                      \
> +               __attribute__((fallthrough));                           \
>         case 1:                                                         \
>                 a0 = a->sig[0]; b0 = b->sig[0];                         \
>                 r->sig[0] = op(a0, b0);                                 \
> @@ -163,9 +163,9 @@ static inline void name(sigset_t *set)                                      \
>         switch (_NSIG_WORDS) {                                          \
>         case 4: set->sig[3] = op(set->sig[3]);                          \
>                 set->sig[2] = op(set->sig[2]);                          \
> -               /* fall through */                                      \
> +               __attribute__((fallthrough));                           \
>         case 2: set->sig[1] = op(set->sig[1]);                          \
> -               /* fall through */                                      \
> +               __attribute__((fallthrough));                           \
>         case 1: set->sig[0] = op(set->sig[0]);                          \
>                     break;                                              \
>         default:                                                        \
> @@ -186,7 +186,7 @@ static inline void sigemptyset(sigset_t *set)
>                 memset(set, 0, sizeof(sigset_t));
>                 break;
>         case 2: set->sig[1] = 0;
> -               /* fall through */
> +               __attribute__((fallthrough));
>         case 1: set->sig[0] = 0;
>                 break;
>         }
> @@ -199,7 +199,7 @@ static inline void sigfillset(sigset_t *set)
>                 memset(set, -1, sizeof(sigset_t));
>                 break;
>         case 2: set->sig[1] = -1;
> -               /* fall through */
> +               __attribute__((fallthrough));
>         case 1: set->sig[0] = -1;
>                 break;
>         }
> @@ -230,6 +230,7 @@ static inline void siginitset(sigset_t *set, unsigned long mask)
>                 memset(&set->sig[1], 0, sizeof(long)*(_NSIG_WORDS-1));
>                 break;
>         case 2: set->sig[1] = 0;
> +               __attribute__((fallthrough));
>         case 1: ;
>         }
>  }
> @@ -242,6 +243,7 @@ static inline void siginitsetinv(sigset_t *set, unsigned long mask)
>                 memset(&set->sig[1], -1, sizeof(long)*(_NSIG_WORDS-1));
>                 break;
>         case 2: set->sig[1] = -1;
> +               __attribute__((fallthrough));
>         case 1: ;
>         }
>  }
> diff --git a/include/linux/skbuff.h b/include/linux/skbuff.h
> index d8af86d995d6..4a1df6714dfe 100644
> --- a/include/linux/skbuff.h
> +++ b/include/linux/skbuff.h
> @@ -3639,19 +3639,19 @@ static inline bool __skb_metadata_differs(const struct sk_buff *skb_a,
>  #define __it(x, op) (x -= sizeof(u##op))
>  #define __it_diff(a, b, op) (*(u##op *)__it(a, op)) ^ (*(u##op *)__it(b, op))
>         case 32: diffs |= __it_diff(a, b, 64);
> -                /* fall through */
> +               __attribute__((fallthrough));
>         case 24: diffs |= __it_diff(a, b, 64);
> -                /* fall through */
> +               __attribute__((fallthrough));
>         case 16: diffs |= __it_diff(a, b, 64);
> -                /* fall through */
> +               __attribute__((fallthrough));
>         case  8: diffs |= __it_diff(a, b, 64);
>                 break;
>         case 28: diffs |= __it_diff(a, b, 64);
> -                /* fall through */
> +               __attribute__((fallthrough));
>         case 20: diffs |= __it_diff(a, b, 64);
> -                /* fall through */
> +               __attribute__((fallthrough));
>         case 12: diffs |= __it_diff(a, b, 64);
> -                /* fall through */
> +               __attribute__((fallthrough));
>         case  4: diffs |= __it_diff(a, b, 32);
>                 break;
>         }
> diff --git a/lib/zstd/bitstream.h b/lib/zstd/bitstream.h
> index 3a49784d5c61..cc311bae44da 100644
> --- a/lib/zstd/bitstream.h
> +++ b/lib/zstd/bitstream.h
> @@ -259,15 +259,15 @@ ZSTD_STATIC size_t BIT_initDStream(BIT_DStream_t *bitD, const void *srcBuffer, s
>                 bitD->bitContainer = *(const BYTE *)(bitD->start);
>                 switch (srcSize) {
>                 case 7: bitD->bitContainer += (size_t)(((const BYTE *)(srcBuffer))[6]) << (sizeof(bitD->bitContainer) * 8 - 16);
> -                       /* fall through */
> +                       __attribute__((fallthrough));
>                 case 6: bitD->bitContainer += (size_t)(((const BYTE *)(srcBuffer))[5]) << (sizeof(bitD->bitContainer) * 8 - 24);
> -                       /* fall through */
> +                       __attribute__((fallthrough));
>                 case 5: bitD->bitContainer += (size_t)(((const BYTE *)(srcBuffer))[4]) << (sizeof(bitD->bitContainer) * 8 - 32);
> -                       /* fall through */
> +                       __attribute__((fallthrough));
>                 case 4: bitD->bitContainer += (size_t)(((const BYTE *)(srcBuffer))[3]) << 24;
> -                       /* fall through */
> +                       __attribute__((fallthrough));
>                 case 3: bitD->bitContainer += (size_t)(((const BYTE *)(srcBuffer))[2]) << 16;
> -                       /* fall through */
> +                       __attribute__((fallthrough));
>                 case 2: bitD->bitContainer += (size_t)(((const BYTE *)(srcBuffer))[1]) << 8;
>                 default:;
>                 }
> diff --git a/scripts/Makefile.extrawarn b/scripts/Makefile.extrawarn
> index a74ce2e3c33e..e12359d69bb7 100644
> --- a/scripts/Makefile.extrawarn
> +++ b/scripts/Makefile.extrawarn
> @@ -30,6 +30,9 @@ warning-1 += $(call cc-option, -Wunused-but-set-variable)
>  warning-1 += $(call cc-option, -Wunused-const-variable)
>  warning-1 += $(call cc-option, -Wpacked-not-aligned)
>  warning-1 += $(call cc-option, -Wstringop-truncation)
> +ifdef CONFIG_CC_IS_CLANG
> +KBUILD_CFLAGS += $(call cc-option,-Wimplicit-fallthrough,)

copy+pasta? Should this be:
warning-1 += ...

further, there's a block at the end of this file already for
CONFIG_CC_IS_CLANG that this should go in.  Unlike the rest of the
items there, you SHOULD keep the call to cc-option since older
versions of Clang won't support the warning.

Thanks for the patch!
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnruuSr01efU9W7vdHy5nngYj5WOWGaCRf7ucX%3D6WRNKA%40mail.gmail.com.
