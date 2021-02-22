Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBXVQZ6AQMGQE6J6NG4I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63d.google.com (mail-pl1-x63d.google.com [IPv6:2607:f8b0:4864:20::63d])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C330321C88
	for <lists+clang-built-linux@lfdr.de>; Mon, 22 Feb 2021 17:14:24 +0100 (CET)
Received: by mail-pl1-x63d.google.com with SMTP id p1sf2102060plf.14
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Feb 2021 08:14:24 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614010463; cv=pass;
        d=google.com; s=arc-20160816;
        b=VVfzlDtHtxg8W8CayHu+slK1ifQBGKkRIXhKPBkGhFKgy/qrK6EyxgP2YM2W2f7lOi
         QqzGUhydgNkFMez6M0bsEk4C73ZZZ6Xn4cTE3ftTix3W9nuWFvHO+7MxzdeHQjPkQiQH
         QIL+7RKnx2psS+W8sRPTH8qCs8ejH2qjjkzPi334Lq2pRko7wGc8QPyjkUIOfnTjA0Fk
         bRhQDp5y9xnoLiWh0S+qo5pmdNtbL9V3o/yveGceE5UmVQckrwRKv6hZp1fkCLOEgVHN
         FcNF/HEigk2zQZvJ3eVr+z+cntKs36N8j7oG1bpadq0GDVzACINL40r5cnklMoTCSUIv
         UIMQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=yGyl0jNA9NaIBfuz3n6VECeUP46eADC4OI1g54rKs6E=;
        b=VuWvpaIbypAaZDBl0khRQ1U9pLd/lydFo6K5L13V/sEUNwxi4k9TApXGNAY51E6jxG
         0ahZRzsDGrF+scJyHfDfKLhRBeWwfGcJWv9n+SePz+KQCYdWApJThmrFc1DsfagTYN/z
         IpUATkJSZ5Zeianro8TU6JUExBqs1OqSRkGG+SbjPTONLP4mrzppJu4PMW8ImXXTznf7
         auTbw3gWGRpx8JaDzFT3KKyJsL/hJcO04OqrSfYcc4dJpw5bzshkKr50QnGQR1qC4pKo
         65CES24mV3sJoDrLchXQ1GfbbL7tnBOMrkYtsl/LTsPkibALrrpBGS/gmcxF8zEYOWgl
         4O8w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OHPYNZch;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d30 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=yGyl0jNA9NaIBfuz3n6VECeUP46eADC4OI1g54rKs6E=;
        b=jG4LsYtAgRGaDVUs24q7W6LX5WpvkwyFOV6i9JEAIYn/vXACmFvnXvdezUgB2LMxA1
         vXQdARcP09oGkzoseFPvpYyKYu7DEmSfmA6mHsVVoROlRaAFu5KIqwbnifH5RkIeyQ1I
         mjbAcPT9tBXHg6SUrX9jQO5ghcfNgpRtvwr7nNGgkLniD99FNCrT/LnjkGGtiZqbPbqc
         wsScvURjrKmc9uEH0Jh2wFJ3WMvMkzcaB9Bz/PZqp7kP+g1yTAmv1sF+PSr/CixUa0hu
         lILB2GCBnnh0YwUEnRgnTCqSYzYHvSG2IwVBfZG0FefzBoRjxnL6ujhxN4yvodTA8znY
         ij7w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yGyl0jNA9NaIBfuz3n6VECeUP46eADC4OI1g54rKs6E=;
        b=I2MujB0t0D43jBlyBSPl4+pgAKaUwU3z1qpKxOq27JhELgad10/ZNUEVJY6ye7Grax
         qqwyANw0i5mUe4CV+wId0C7Ph+7yjAfwDYEHZgxc+rHvo4wnla7XQ+XrUAwTWDF5PfB0
         JrBv2YFSDRYAfiJu1MKldgAQ8mL7KQed9HRKH8oJlPmvVh9s+qxf9UXz/dc2gVMiKz4k
         Yl5fVY33ylDb7+CPtGMrF53u/JmiOYZT2Tet6SsawoijtyjHKOsv9DDn3UmrKGZeir3K
         BykJ4tYBT/qU66yu6T7HIvd2SZiMplR+dYEyNTK/1jL4CF2SJ3oKk9dkyEIATOfGiBtn
         KbcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yGyl0jNA9NaIBfuz3n6VECeUP46eADC4OI1g54rKs6E=;
        b=PQZrxt9WlKxHdTqlg8cYEaP8sRKevDnIqubjwdL8CnEXKsG/jQontCTKktj4jdyuR1
         BonroxCV5vJ9kn++gLC4wI+WH973KgGrZkMNTcLMyt9TJ7X6zfQ78LbmMswTG3qw91Lq
         F9XTUDOsQA73ty2uzwprnuQz5irEkX4m2D1zR15ihhrxsmtGMYSTwXVtb3pkbk/LZ74l
         jFsQGcPMkyun1lNcDh0buKE4rtHClgLMVW+Hu+KmXaTiU1Be8L6UiRLrKxQF8r16Of1L
         HDZCuh5sJwLMDO7heViCS1k6wT+tmG3hvUk3psbH8qmst1VgF6s58KHekzD9/4nWFpFG
         eDiQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531x41UptwFys2+2tWgNbgreQge31e0b/YlIYKH+opsaIi+iHiN9
	BI0fAPLIv6hkjFot8klge9Q=
X-Google-Smtp-Source: ABdhPJxTNCE7dhVrywXqWQOaxrBU2GFEc88BDLhFkwztCOcUZDe3gDd6zGkTvaUVvbHJoUxziT4P1w==
X-Received: by 2002:a17:902:8a88:b029:e3:1bd0:2c29 with SMTP id p8-20020a1709028a88b02900e31bd02c29mr15383721plo.5.1614010462928;
        Mon, 22 Feb 2021 08:14:22 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:e788:: with SMTP id cp8ls1605994plb.4.gmail; Mon, 22
 Feb 2021 08:14:22 -0800 (PST)
X-Received: by 2002:a17:90a:19d0:: with SMTP id 16mr24515113pjj.121.1614010462296;
        Mon, 22 Feb 2021 08:14:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614010462; cv=none;
        d=google.com; s=arc-20160816;
        b=lM/1lNW/zFdiG19g/ztLSoG7XbT9v8KWchdnVk5TDsGt2Vc2upypYpfQN1a4BBJ4zb
         qqePwU1JjX+m/HneEc7SX3rDVMA9ODl6PJ8gkX0C6qIMyxkjw8qzL1go3Z5Da5+bQ1oZ
         2/TAf5iUdFqJUogVK97k1N8na2a2L1kINnfwR8rEfNnebohEDlBdjVCYbXgajJBe5RXS
         ZBmv4MW9EHBGenl2or1IJ8uPhBN/8Wmx0ZJfXfp+EyWrhKg5syhAxTEMSddUUrMoCP2L
         P1F/XIOLko38DsY/E7uEmg6/6GeRyBmnJrF2nXnRnIUE+mzR26Hp9hTnH1wFlPwj8l0s
         VHdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=wv8UYvkcZRJDa28Q22Hdgwpxjk6P0Y3TZKnCb4xl10k=;
        b=JBikVkV13DqE57o0Y/cGJADCa4Fjun2dB1dVc+i9PpDovYtfOwt0NM8xXbIsZHyR1k
         Z/QLV24hApfi3rjrzuCdRlgjFN/Pz+JUcRpxQd8+3NEn1VQ13XEYPRTZnCb9zTdRRC5H
         F9AYqEZZYMlkscW1nYrZd9im7tUunrt6RykevfbllHTqbou5As/BmyIkp/LstsspD0Ez
         7aoD++0I54NnYV5Gv75kYVpT2of5SmN7WcWQhbxI3BRWMLwO9CYtbKqOWxHuNQIZF401
         /0Q4N5ju3SOlVq6T79OxSNLsl0skvBGxChik2fMF48bN6v9rUgWPP7GzSbNwnkk2SYuN
         IgnA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OHPYNZch;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d30 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd30.google.com (mail-io1-xd30.google.com. [2607:f8b0:4864:20::d30])
        by gmr-mx.google.com with ESMTPS id 33si9781pjz.3.2021.02.22.08.14.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Feb 2021 08:14:22 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d30 as permitted sender) client-ip=2607:f8b0:4864:20::d30;
Received: by mail-io1-xd30.google.com with SMTP id y202so13805612iof.1
        for <clang-built-linux@googlegroups.com>; Mon, 22 Feb 2021 08:14:22 -0800 (PST)
X-Received: by 2002:a05:6638:44e:: with SMTP id r14mr5145828jap.138.1614010461687;
 Mon, 22 Feb 2021 08:14:21 -0800 (PST)
MIME-Version: 1.0
References: <CA+G9fYtNOZ-G_RTq_Uedy-7wkFog2q+OWNbWd--eL+i2-OQ7NA@mail.gmail.com>
In-Reply-To: <CA+G9fYtNOZ-G_RTq_Uedy-7wkFog2q+OWNbWd--eL+i2-OQ7NA@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Mon, 22 Feb 2021 17:14:16 +0100
Message-ID: <CA+icZUVdpyNC=e8Cdg2bXaKdQGgkY1Te-OEXE7jaKARw0KKrCw@mail.gmail.com>
Subject: Re: clang-12: i386: Unsupported relocation type: R_386_PLT32 (4)
To: Naresh Kamboju <naresh.kamboju@linaro.org>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>, 
	open list <linux-kernel@vger.kernel.org>, x86-ml <x86@kernel.org>, 
	lkft-triage@lists.linaro.org, Nathan Chancellor <natechancellor@gmail.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, Nathan Chancellor <nathan@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=OHPYNZch;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d30
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

On Mon, Feb 22, 2021 at 5:08 PM Naresh Kamboju
<naresh.kamboju@linaro.org> wrote:
>
> While building i386 configs on stable-rc 5.10, stable-rc 5.11 branch
> and mainline
> with clang-12 these following warnings and errors were noticed.
>

Hi Naresh,

Please see commit bb73d07148c405c293e576b40af37737faf23a6a
("x86/build: Treat R_386_PLT32 relocation as R_386_PC32").
Recently accepted into Linus Git tree.

[1] says:

Further info for the more interested:

  https://github.com/ClangBuiltLinux/linux/issues/1210
  https://sourceware.org/bugzilla/show_bug.cgi?id=27169
  https://github.com/llvm/llvm-project/commit/a084c0388e2a59b9556f2de0083333232da3f1d6

Hope that helps.

- Sedat -

[1] https://git.kernel.org/linus/bb73d07148c405c293e576b40af37737faf23a6a

> make --silent --keep-going --jobs=8
> O=/home/tuxbuild/.cache/tuxmake/builds/1/tmp ARCH=i386
> CROSS_COMPILE=i686-linux-gnu- 'HOSTCC=sccache clang' 'CC=sccache
> clang'
>
> drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:2586:9: warning: shift
> count >= width of type [-Wshift-count-overflow]
>
>         return hweight64(VDBOX_MASK(&i915->gt));
>                ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> include/asm-generic/bitops/const_hweight.h:29:49: note: expanded from
> macro 'hweight64'
> #define hweight64(w) (__builtin_constant_p(w) ? __const_hweight64(w) :
> __arch_hweight64(w))
>                                                 ^~~~~~~~~~~~~~~~~~~~
> include/asm-generic/bitops/const_hweight.h:21:76: note: expanded from
> macro '__const_hweight64'
> #define __const_hweight64(w) (__const_hweight32(w) +
> __const_hweight32((w) >> 32))
>                                                                            ^  ~~
> include/asm-generic/bitops/const_hweight.h:20:49: note: expanded from
> macro '__const_hweight32'
> #define __const_hweight32(w) (__const_hweight16(w) +
> __const_hweight16((w) >> 16))
>                                                 ^
> include/asm-generic/bitops/const_hweight.h:19:48: note: expanded from
> macro '__const_hweight16'
> #define __const_hweight16(w) (__const_hweight8(w)  +
> __const_hweight8((w)  >> 8 ))
>                                                ^
> include/asm-generic/bitops/const_hweight.h:10:9: note: expanded from
> macro '__const_hweight8'
>          ((!!((w) & (1ULL << 0))) +     \
>                ^
> drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:2586:9: warning: shift
> count >= width of type [-Wshift-count-overflow]
>         return hweight64(VDBOX_MASK(&i915->gt));
>                ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> <trim>
>
> 32 warnings generated.
> Unsupported relocation type: R_386_PLT32 (4)
> make[3]: *** [arch/x86/boot/compressed/Makefile:116:
> arch/x86/boot/compressed/vmlinux.relocs] Error 1
> make[3]: *** Deleting file 'arch/x86/boot/compressed/vmlinux.relocs'
> make[3]: Target 'arch/x86/boot/compressed/vmlinux' not remade because of errors.
>
> Reported-by: Naresh Kamboju <naresh.kamboju@linaro.org>
>
> Steps to reproduce:
> ---------------------------
> # TuxMake is a command line tool and Python library that provides
> # portable and repeatable Linux kernel builds across a variety of
> # architectures, toolchains, kernel configurations, and make targets.
> #
> # TuxMake supports the concept of runtimes.
> # See https://docs.tuxmake.org/runtimes/, for that to work it requires
> # that you install podman or docker on your system.
> #
> # To install tuxmake on your system globally:
> # sudo pip3 install -U tuxmake
> #
> # See https://docs.tuxmake.org/ for complete documentation.
>
> tuxmake --runtime podman --target-arch i386 --toolchain clang-12
> --kconfig defconfig  --kconfig-add
> https://builds.tuxbuild.com/1opxSKxZuRowPsiOsSJ0IoUOXOt/config
>
> --
> Linaro LKFT
> https://lkft.linaro.org
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BG9fYtNOZ-G_RTq_Uedy-7wkFog2q%2BOWNbWd--eL%2Bi2-OQ7NA%40mail.gmail.com.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUVdpyNC%3De8Cdg2bXaKdQGgkY1Te-OEXE7jaKARw0KKrCw%40mail.gmail.com.
