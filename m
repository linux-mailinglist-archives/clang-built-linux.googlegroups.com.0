Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBWE2TLVQKGQEA4LRVHY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x237.google.com (mail-lj1-x237.google.com [IPv6:2a00:1450:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id 13123A04A3
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Aug 2019 16:19:05 +0200 (CEST)
Received: by mail-lj1-x237.google.com with SMTP id 140sf226101ljj.4
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Aug 2019 07:19:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567001944; cv=pass;
        d=google.com; s=arc-20160816;
        b=yzFKdD3ziHvsQzFQTwruZM45hFlQNA6ostZmWshVZrqeez01JjuTy7dlosepQO8bqY
         v/PmEabFI7FRQQNOGyROnAKEBVnQZwtN6jkd5sNAUGu9zhrirrL9M/Y4WKKx/k6AUqiX
         7AWKHUhAw/Fzs4D3lmfaShFC5yaIc0s5n/G11RRYWbGuwd1fYBHZt5G/+onDsno92hi/
         MrFb9cIuZ/6BqlF9ZLswxu0g9+tA7G6hZJ6Z7/hecPBxkTtcqekQpkv496H0L0fgMrxl
         Dq3LCpiKdX0+Dn3IF9uxUqf/f4P8ehOVGHZEeKf01BWN8ZMhS0vE6PfBaURhgkLvfQT6
         y/YA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=zrFx2y8nrW6v2D6sty0XvZ7QPOEYPAVvZxQeWNZ/WnY=;
        b=PIBOLUyOR0J8oNDmPTqGsXAjBn+VwltDe/cA2sYj261WspzZN8YrwHO+GQNqdyYDTk
         uyX9SxbRKPPEG9dyGbd8QzBHsVE5Fs9VdsvpzLgFO25dk1wsA/om2FKR8fPlcX6GwfU8
         syaKsh5jar/vuAphSa+hE/Z/Jz7XERkFFdZTnFRK/qO5MYXV4oSEIODwe3FasqGxebJu
         2QwI9o/Nw3cEzjAnaJRp+xX6yl/xfKyq9Dn0A77cnZQb+i021hR3JBwvilFALXm7vN5r
         P8wyq1g1N1QC6sglWsf5bggG4sU1a2q8qGkqYBGr6mA/jHRSopzwOPF4/DtEP8RnuSWp
         +PvQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XgVEVqMV;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=zrFx2y8nrW6v2D6sty0XvZ7QPOEYPAVvZxQeWNZ/WnY=;
        b=EYvxBbOanjd9ePCnX2gN7x4OYmwg8vE++NuQsJ4LgBPJ/dVR+brqCAflgpGrQOop3K
         wbOVuLWKmSYcbqmmovsjmC5IGxu+wVCimsk4ZOperjVrIhBcs/Hr0mXEHegeGUFxK60Q
         Ec45rv08qEBFBi0tg3LEtlXG82Jfe5u2afngCUtNoER1AJRcox+0//8Bi47d6TckeLAu
         yjwOPImsbmAy529ZNDKUPtpvflKQeMh1G+Vq912w5Q4McSDM7KC0QNcCSTIkeJWYzE7i
         kRRc4h1qfEoY24Ri0Ynq6lf9991TjTG0ltvWPduIDVnSWnuzZ8DFZouxyO+A79jX2ElC
         ZUyA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zrFx2y8nrW6v2D6sty0XvZ7QPOEYPAVvZxQeWNZ/WnY=;
        b=mrCFKoylcznqocSKhN7Zul1FMj2Q0w/yl9UHlBqcJ9f4K1NcQ7scJ18KnDfnT36FpF
         pk8M7iz9STAJRVCfkrfCbcGnReX1QbKK4qHcjBRVWpSh+BjS14n+KrtLxv1Zzldgo6pJ
         avBh1ys8XqUHTNgmp3qKVeyOeqF/IXZLcB1WbpS0u4+PojA975/HUZAVi/FYYE40cDp1
         /zYn62M5TCyUq3c5+4+B+Kvab71mAtVTFEuXCgRdaxgRi4Uf5N2ttG4VjtJUYTEC68/E
         ObvymiWBML2FCMQeW8SpnjhX854H2rFBZPDnWyOZybWYv977CNeNbD74JyyMGRyGtb3L
         q1QA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zrFx2y8nrW6v2D6sty0XvZ7QPOEYPAVvZxQeWNZ/WnY=;
        b=HN3qP7hJG3W+GiACrcQ+pYW/gEHqoRSZEbOLwRSgIBwVDDOHhL+DUYlLc8aKMsP+0r
         PwTa5t6ZLLWERn8K+j/aP6ur/p92FJEZhhwQBpH2+VL7kpmLYo9xZ9Hr6UojlCv/aewY
         x7ZksQ1bu4Gp+s/5wd51+fgF5mCAkHpwJyfG7Wwu3uslAEnO/Fz3F8Wg2rkQUqm46TDj
         ae/73UCZUELZapZjSxu7y08n8SDcCMMlVeKhHCPusKS+GfuxajLrLMWXIgMXzzwnwN+o
         1tU/vpeVMRwY2LNn4Ru8RySA9o8SLAUuUyq4PGggQyHcLpw/yPxFWpFtuU7BUfW1gqPL
         FKYQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVQtBJHsayRuhsF4eqZ6GoPVLWo+LcdDiEgzvPiAAq7J+Y/gnEV
	n7a8X0TNcuMCSCHrXPUu+Uc=
X-Google-Smtp-Source: APXvYqyE+Q/tSdYmn8WT5cKjFlEuGjqzJZWRW1H3ATsJAtPOST9oLy5bERmu4oHE5JKvpTWx2uSAqA==
X-Received: by 2002:ac2:4351:: with SMTP id o17mr2863902lfl.21.1567001944478;
        Wed, 28 Aug 2019 07:19:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:7510:: with SMTP id y16ls330292lfe.3.gmail; Wed, 28 Aug
 2019 07:19:03 -0700 (PDT)
X-Received: by 2002:a19:2d19:: with SMTP id k25mr3049383lfj.76.1567001943816;
        Wed, 28 Aug 2019 07:19:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567001943; cv=none;
        d=google.com; s=arc-20160816;
        b=Rjn//9je9WI1TWJLdGszQMUcxXoGrGIHNoYOZkX2t9/frO944nShq3k5VWNsFMvjJ/
         GybqBxjEWdwbmef3QW9O0puiOD0OsxapsDgc52LEXYRD0QJRKT2ujaMDmFQzgX2Upr3X
         forRuRn90RTmXWb+rR6lNuEeR8k/GGMJKppIOt3owadIlGWYKBU5Z5QOnSjUWwmAYcwy
         M0csHvkJQZ1CcqhdpVLQDtBtqgVe6sMqKkn4fqgm2orH9xfcScCQborY4mF+pQcoGkuW
         hyv6bFFrJXcyZxZ//MeiCUUyNd0s97RCdrFjEG6vCWdV1LJxZt2I0CArjIhQ1CNVojqC
         pArg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Seb53bhrV9qLT1s/qYvDSSQVj25Xuijj2Bv+NVJgBcQ=;
        b=FZYch04Yq2h9Bj9iY7AfF+2SholWmFzZekGP9f8Fu8kPtkjFfnsF9SSGRzKV6rDuhO
         RluKnaBvSLqYz/3eGvzEmKejj/ghspw/TfkA5LpZ5u7IKXhUW1tVMVpDG3rD3AXGJ1x4
         pQQlvlJ5C4KfxcfhIQeZhWMyqLW/14bYU2ZNzjoJ0QTuBrZlF/IJKhuv6RoAcrm2tpfk
         S3sb8Uf54U+mkSmLl2oDxp6NBrER/nHWrN11eEHRVHGN8HbzEjskvTYbIDETwUkaNJBu
         3jNzPXJzZ6YziIdJBOtFIg7EcQclpcDxCDsGq7LU8QHffweq5bJJ+QlQ2Kw4AILH+uLk
         K+Jg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XgVEVqMV;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com. [2a00:1450:4864:20::442])
        by gmr-mx.google.com with ESMTPS id x14si161042lfc.2.2019.08.28.07.19.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Aug 2019 07:19:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) client-ip=2a00:1450:4864:20::442;
Received: by mail-wr1-x442.google.com with SMTP id e16so2711474wro.5
        for <clang-built-linux@googlegroups.com>; Wed, 28 Aug 2019 07:19:03 -0700 (PDT)
X-Received: by 2002:a5d:69c8:: with SMTP id s8mr4682010wrw.353.1567001943244;
 Wed, 28 Aug 2019 07:19:03 -0700 (PDT)
MIME-Version: 1.0
References: <20190828055425.24765-1-yamada.masahiro@socionext.com> <CA+icZUWigJkh-VtJc4=xE06oMgE=ci2Mfdo2JaDv0fth8PKH+A@mail.gmail.com>
In-Reply-To: <CA+icZUWigJkh-VtJc4=xE06oMgE=ci2Mfdo2JaDv0fth8PKH+A@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Wed, 28 Aug 2019 16:18:51 +0200
Message-ID: <CA+icZUUhhOLfOgwoKP4nKOdPakNJF7XafJ09ERP6r7dOUduMsg@mail.gmail.com>
Subject: Re: [PATCH 1/2] kbuild: refactor scripts/Makefile.extrawarn
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Cc: linux-kbuild@vger.kernel.org, Nick Desaulniers <ndesaulniers@google.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Arnd Bergmann <arnd@arndb.de>, Michal Marek <michal.lkml@markovi.net>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=XgVEVqMV;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::442
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Wed, Aug 28, 2019 at 9:20 AM Sedat Dilek <sedat.dilek@gmail.com> wrote:
>
> On Wed, Aug 28, 2019 at 7:55 AM Masahiro Yamada
> <yamada.masahiro@socionext.com> wrote:
> >
> > Instead of the warning-[123] magic, let's accumulate compiler options
> > to KBUILD_CFLAGS directly as the top Makefile does. I think this makes
> > easier to understand what is going on in this file.
> >
> > This commit slightly changes the behavior, I think all of which are OK.
> >
> > [1] Currently, cc-option calls are needlessly evaluated. For example,
> >       warning-3 += $(call cc-option, -Wpacked-bitfield-compat)
> >     needs evaluating only when W=3, but it is actually evaluated for
> >     W=1, W=2 as well. With this commit, only relevant cc-option calls
> >     will be evaluated. This is a slight optimization.
> >
> > [2] Currently, unsupported level like W=4 is checked by:
> >       $(error W=$(KBUILD_ENABLE_EXTRA_GCC_CHECKS) is unknown)
> >     This will no longer be checked, but I do not think it is a big
> >     deal.
> >
>
> Hi Masahiro Yamada,
>
> thanks for your patch series.
>
> If KBUILD_ENABLE_EXTRA_GCC_CHECKS does extra(-warning)-checks for GCC and Clang,
> please rename the Kconfig into...
>
> KBUILD_ENABLE_EXTRA_CC_CHECKS
>
> ...or something similiar (and maybe with some notes in its Kconfig help-text?).
>

I have tested both patches against recent kbuild-next and can boot on
bare metal with clang.

I have *not* passed any W= to my make, but I see that clang's W=1
kbuild-cflags are active.

[ scripts/Makefile.extrawarn ]

ifeq ("$(origin W)", "command line")
  export KBUILD_ENABLE_EXTRA_GCC_CHECKS := $(W)
endif

#
# W=1 - warnings that may be relevant and does not occur too often
#
ifneq ($(findstring 1, $(KBUILD_ENABLE_EXTRA_GCC_CHECKS)),)
[ ... ]
KBUILD_CPPFLAGS += -DKBUILD_EXTRA_WARN1

else

# W=1 also stops suppressing some warnings

ifdef CONFIG_CC_IS_CLANG
KBUILD_CFLAGS += -Wno-initializer-overrides
KBUILD_CFLAGS += -Wno-format
KBUILD_CFLAGS += -Wno-sign-compare
KBUILD_CFLAGS += -Wno-format-zero-length
endif # CONFIG_CC_IS_CLANG

endif # KBUILD_ENABLE_EXTRA_GCC_CHECKS

These clang KBUILD_CFLAGS are active independently of passing W=1.

$ grep '\-Wno-initializer-overrides'
build-log_5.3.0-rc6-2-amd64-cbl-asmgoto.txt | wc -l
27195

So the above comment is misleading?

Is W=1 activated by default?

Or do I miss something?

[ Documentation/kbuild/kbuild.rst ]

KBUILD_ENABLE_EXTRA_GCC_CHECKS
------------------------------
If enabled over the make command line with "W=1", it turns on additional
gcc -W... options for more extensive build-time checking.

What about?

KBUILD_CC_EXTRA_CHECKS (or KBUILD_EXTRA_CC_CHECKS)
------------------------------
If enabled over the make command line with "W=...", it turns on additional
compiler warning options like -Wmissing-declarations for more extensive
build-time checking. For more details see <Documentation/kbuild/kbuild.rst>.

W=1 - warnings that may be relevant and does not occur too often
W=1 - also stops suppressing some warnings
W=2 - warnings that occur quite often but may still be relevant
W=3 - the more obscure warnings, can most likely be ignored

- Sedat -

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUUhhOLfOgwoKP4nKOdPakNJF7XafJ09ERP6r7dOUduMsg%40mail.gmail.com.
