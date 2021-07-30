Return-Path: <clang-built-linux+bncBDYJPJO25UGBBTEASKEAMGQEVTVZRMA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13a.google.com (mail-lf1-x13a.google.com [IPv6:2a00:1450:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AD9F3DC136
	for <lists+clang-built-linux@lfdr.de>; Sat, 31 Jul 2021 00:42:21 +0200 (CEST)
Received: by mail-lf1-x13a.google.com with SMTP id j6-20020ac253a60000b02903b68cc7d130sf2661718lfh.16
        for <lists+clang-built-linux@lfdr.de>; Fri, 30 Jul 2021 15:42:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627684941; cv=pass;
        d=google.com; s=arc-20160816;
        b=MNoEqf1kYcl1e4EmgiIUVqDI832tkY5NdIa/Zufx6x6Ld/NRUGg9LZ3G96Gsn5dIt1
         0b+Ex54+NFVbgOxtnD0563zPD8tw+rmOFIAviO9N18QMvc4uN/B05BXeEK3RJHR5F2EZ
         vsBSRSL024ul8PN1EOU7GdmXu4afkCduDgG6Rt2uaAX2x09exlfsv15Vx35iWcRKOHBu
         lVY5kXBa6guCw9BE+SplfBpGTzFhC0+MQb05WmDggBsTutsJq+pkZSQoWXyOFZPMm/6b
         VNVH+DjbpXqUXzXw25IHM48/mWHsQf8/oARqGmDsd5aP4xzx6SbT0CwxQhscFEtslYVE
         2m2Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=xjrJdUjrbsHCHLR2y2nqgTVDmzqSzgs/TMrZ/wxqyTQ=;
        b=atorkhn4t9v6ZCeFCdEuXqLwM5RGLbxDvAwm+jxK0Mh/gOdyeMMMGai+aEcQ64ep7p
         4g39k48OttyncNpgLc6febHaxzQyjOUVPfUATNJCkWpl0C1oIh+TpxzIFgMnag5qgE87
         3VwZjtxsDljxAVrDe29qbhUKgBr3v+S+XRaXnMb6LYfZLtHL/uffihkfpKhNbUdHvDus
         ygVh0UYXe8UqMpBV58PCp4iZ7ZvZ6kwl+NK435q6qrpFutHv3zE672fSkVuu17L1Pp0K
         7TRQ0YPnD3hiaAKE1lk2PiKvkMixCuazI6GdiXbbx3zOpwMb0Stfq+ruc+H4ZuGR0vQw
         AMFA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=CamcDOtb;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::233 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xjrJdUjrbsHCHLR2y2nqgTVDmzqSzgs/TMrZ/wxqyTQ=;
        b=VKNnyZAOf649CwJQmmlZhEXOeJuaooGo80IPofGYRgSS47jCiMROh1cMNju6r/AR4m
         pHQEAtW0TbRwSPaY1PJFyUYuEpzn4gmIo7TZeP8/f3H1LmTj5GJdCCoODoTmmrBEqa+E
         E6fI4OxpnTqAU+fFmVIM0YxuCOdFcxQdMLxhoORL10Gfrv29Qm8v6gZDT/NUa1iaqJbu
         z6h9DFVFXuM/c+yPqpHmix53FB2q/92QXWmCui0BY75g65ptSe1S4nvHmeyQ11Ky9Edk
         JdknL1T8Nc2ENlHv/Y7+YX5jTwP00lRDtD0Wg7l4aMppQckj+2It0/3VXAPYakeopWA9
         q8RQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xjrJdUjrbsHCHLR2y2nqgTVDmzqSzgs/TMrZ/wxqyTQ=;
        b=dPaobogl725GtgIx6o/ZYN88nc5wnSO+BiX2qEh9tMPQHsfwRhJrxTdWR1mFDgCIUL
         0Bp8oWmXPV4bTG3EbBbUU/rS3pQ94hOmtM+eHI82YMJ+LuxmAFOaxAL4PED6KAKenChF
         fpT8WYiL+VzhXNGiPc5frWX2zOmeg84TyuK5wD0qUIsBhkzPHDadGOIRjvmQhj7adYve
         yZxRYZnF0s9S5wSNk2RO1/09tS1pdS8XFNV8wcQLqNX5VS2N0GLC8GRAnr5QEtz3TaZn
         P1aLGKA3CHUovh5Xe07Dz1WYcq+rPwwNkVTNlMRf0J+J/csmB2B7xmxAKUFi2Hi3V404
         l7EQ==
X-Gm-Message-State: AOAM530zacOJiEVGH7LN3DLWqvsEODDlLnOfCR69YBU/tz+/kCLjJq1l
	AWr+GROwgZCiGjnNz6aWAag=
X-Google-Smtp-Source: ABdhPJywHrTwAZ1b9MolBN0MAB5enIAa5nVO+L4TCU3HEFic6lED7bxuP75qOwF/90rNe8303mMySg==
X-Received: by 2002:ac2:4310:: with SMTP id l16mr3605404lfh.481.1627684940884;
        Fri, 30 Jul 2021 15:42:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:3f02:: with SMTP id y2ls1188848lfa.3.gmail; Fri, 30
 Jul 2021 15:42:19 -0700 (PDT)
X-Received: by 2002:ac2:5084:: with SMTP id f4mr1950748lfm.107.1627684939774;
        Fri, 30 Jul 2021 15:42:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627684939; cv=none;
        d=google.com; s=arc-20160816;
        b=JrI4fuua+wQFjROtt+iizAkiaFVofpG5jKQ6zpYk+6NVJOVHpdmY8dSclTtzMG0c5M
         p1OJWeyvY2i4M2hukH1VJo+3+9SwjiepVHMH6yPt/Na/GURwzZ46ArRAOMQ362JgyzY8
         kZ3LKmu8Jh6NYjZIOxKg8RDkqHllaNMDFz0nXBwH1JIAIyT/y/9smcq3gK/OJCGvGqbo
         drPGlWK1Uwqd7QSJXly+NYXi9upIsDCZx9U7/NMPO2fYcbleQmFfavmgr7S/7Sou+qf2
         eT2oxLa+nwxs+4bAXJT8JElkiVOALiMlIzt/JCRbhG/OfHwGKUqwXXLo34leA9sznhzL
         kXAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=MvaRlaXK64PpiXVCxXFWPZrJ6CRVJKhlEggaPSUWrrw=;
        b=TqNRYepD+es0VdrYs4cx8iSGo2x8xpEJlwRnyq1vA5R6zAJQxApNpqFRDr8H6OOOE8
         vk0DihjMZlYCn9VtXOv3HSOe8ew1jfuZ39uNLW5tyBhcWCLFoj8ffvtfqV6rnyUkQ+8u
         3ALs6GPr/Zkzxo+fzKLysIURn1dGSpj79mc2cWsX9iSRB5Lu95j65MWE+K7cXOHdZMZZ
         VZV4HEAIinCRFqIWRjoCbZKhPmV8Zc3kli6vlO4F/tNA1QozcZQ+cyvliylWvLHa7NzF
         3H+/oCniMfBQJjjg/x6GWHO6hkZ7wdZEoGYVOKbWuG2dNvko0Jw/6qEKjtUAnYsxAlru
         E67g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=CamcDOtb;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::233 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com. [2a00:1450:4864:20::233])
        by gmr-mx.google.com with ESMTPS id d2si85302lfv.0.2021.07.30.15.42.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Jul 2021 15:42:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::233 as permitted sender) client-ip=2a00:1450:4864:20::233;
Received: by mail-lj1-x233.google.com with SMTP id u20so14566672ljo.0
        for <clang-built-linux@googlegroups.com>; Fri, 30 Jul 2021 15:42:19 -0700 (PDT)
X-Received: by 2002:a2e:a911:: with SMTP id j17mr3212666ljq.341.1627684939283;
 Fri, 30 Jul 2021 15:42:19 -0700 (PDT)
MIME-Version: 1.0
References: <20210730223815.1382706-1-nathan@kernel.org>
In-Reply-To: <20210730223815.1382706-1-nathan@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 30 Jul 2021 15:42:08 -0700
Message-ID: <CAKwvOdnJ9VMZfZrZprD6k0oWxVJVSNePUM7fbzFTJygXfO24Pw@mail.gmail.com>
Subject: Re: [PATCH] vmlinux.lds.h: Handle clang's module.{c,d}tor sections
To: Nathan Chancellor <nathan@kernel.org>
Cc: Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>, 
	Fangrui Song <maskray@google.com>, Marco Elver <elver@google.com>, linux-arch@vger.kernel.org, 
	linux-kernel@vger.kernel.org, kasan-dev@googlegroups.com, 
	clang-built-linux@googlegroups.com, stable@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=CamcDOtb;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::233
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

On Fri, Jul 30, 2021 at 3:38 PM Nathan Chancellor <nathan@kernel.org> wrote:
>
> A recent change in LLVM causes module_{c,d}tor sections to appear when
> CONFIG_K{A,C}SAN are enabled, which results in orphan section warnings
> because these are not handled anywhere:
>
> ld.lld: warning: arch/x86/pci/built-in.a(legacy.o):(.text.asan.module_ctor) is being placed in '.text.asan.module_ctor'
> ld.lld: warning: arch/x86/pci/built-in.a(legacy.o):(.text.asan.module_dtor) is being placed in '.text.asan.module_dtor'
> ld.lld: warning: arch/x86/pci/built-in.a(legacy.o):(.text.tsan.module_ctor) is being placed in '.text.tsan.module_ctor'

^ .text.tsan.*

>
> Place them in the TEXT_TEXT section so that these technologies continue
> to work with the newer compiler versions. All of the KASAN and KCSAN
> KUnit tests continue to pass after this change.
>
> Cc: stable@vger.kernel.org
> Link: https://github.com/ClangBuiltLinux/linux/issues/1432
> Link: https://github.com/llvm/llvm-project/commit/7b789562244ee941b7bf2cefeb3fc08a59a01865
> Signed-off-by: Nathan Chancellor <nathan@kernel.org>
> ---
>  include/asm-generic/vmlinux.lds.h | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vmlinux.lds.h
> index 17325416e2de..3b79b1e76556 100644
> --- a/include/asm-generic/vmlinux.lds.h
> +++ b/include/asm-generic/vmlinux.lds.h
> @@ -586,6 +586,7 @@
>                 NOINSTR_TEXT                                            \
>                 *(.text..refcount)                                      \
>                 *(.ref.text)                                            \
> +               *(.text.asan .text.asan.*)                              \

Will this match .text.tsan.module_ctor?

Do we want to add these conditionally on
CONFIG_KASAN_GENERIC/CONFIG_KCSAN like we do for SANITIZER_DISCARDS?

>                 TEXT_CFI_JT                                             \
>         MEM_KEEP(init.text*)                                            \
>         MEM_KEEP(exit.text*)                                            \
>
> base-commit: 4669e13cd67f8532be12815ed3d37e775a9bdc16
> --


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnJ9VMZfZrZprD6k0oWxVJVSNePUM7fbzFTJygXfO24Pw%40mail.gmail.com.
