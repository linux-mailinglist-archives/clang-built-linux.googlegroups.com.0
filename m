Return-Path: <clang-built-linux+bncBC2ORX645YPRBLGA42JQMGQE26D2XTA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3e.google.com (mail-io1-xd3e.google.com [IPv6:2607:f8b0:4864:20::d3e])
	by mail.lfdr.de (Postfix) with ESMTPS id CD793520838
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 May 2022 01:13:49 +0200 (CEST)
Received: by mail-io1-xd3e.google.com with SMTP id d7-20020a0566022d4700b0065aa0c91f27sf10834984iow.14
        for <lists+clang-built-linux@lfdr.de>; Mon, 09 May 2022 16:13:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1652138028; cv=pass;
        d=google.com; s=arc-20160816;
        b=IKsmguCOTIPky7IxRcFL6vMG4CB/Nf81wjXltqUh3uz6r1CE2ZbAPyPC/cL0STw3MK
         aUo4oZ9cEaQt+P7ATvFc2KP+ShMj5mzS85Hmj3RHEJ1rl5IO3IPC7n5z9wUr1OVjZ/7/
         EeTO6AENNvvhEDQQEO4u/JD6HrLQF3Jc3e+5X8/PKom8Ji1brqh+MoMvom8Z6Kw/sEAp
         J2gYkBm7E3+AgBQA+T55v/8L6U/BapUSMwd7nRa7u2SyQfw66CBSuVaX4Gy+efmobda8
         IwiD41Lvg1JQVnWBLi3N3qZzvF8EIKm3o98y9zailjCIog6awwtN7qMOvQyUD2q+IO20
         yl7Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=Q6rQyACHeH7qonTIVYEojHLlkzepHAiNDODKvnjSZsQ=;
        b=Zvtb/Vnn74woWb8HiMZWSpOpIYCFeXr86u1X5M+Cm2/mDWwHqvOC9i2kK9JDvJFN0s
         umfsReV/mF9p/Q9SYy2pvmxMfGxMooSWxCrZkcOdKuApsx5tWBOpf8cZ+IRkey16CC4I
         xyhPE6GsfB5Ss9mGmV4KoRwCrTnXpKGsl+wBSPB4qFp6QO/Rt9fmLrqWix8QJqncZN1d
         iF7xRtxJVE5G/qDdhULnUfhQ8lD2HSmj+uZBjgMyy5ZJMY4JHuW8mvbXbsUA4w3Q+Wcb
         Wu5YhkI43+DYbKvItEUgjRskAAVFP/D1er/nVlj1+1H4oLsM+EY6HdOqt13fAekqRS57
         YrHg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=f6fWCk6p;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::1133 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Q6rQyACHeH7qonTIVYEojHLlkzepHAiNDODKvnjSZsQ=;
        b=aa5EA6Hqsq4OHZli+86d1/qZgA2QZ79uI93XloxswkqapPqXyPnuSfB0fuTg03G1i7
         GfJ2jyLx8TPGsGHq54GXFQWaDArnlmM5Ho9/spL/5Wr8Mt568FiI3yUtXVoBJ22VuT/6
         oxEK8u8pNOY6aIC+mjUhXhWmAJTjw+Qs4Y5O6y4HEzR+uk+wahY36vjlV5zCzbMVy0eb
         RJ1bBfehli+foA4zHrszo1twOjB1cwNsiGsQd7XcvMRHGFD9HvfQXbnXEnB3uX1AHljf
         I/6X1qC2o+H9gotY+WDWIXhXIA/eISfrop4MlAucLtOmQ69PA+4lYxDiT7U1RN6J6VsI
         XuQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Q6rQyACHeH7qonTIVYEojHLlkzepHAiNDODKvnjSZsQ=;
        b=XSvdSstMiMPN6x/835+1CMoFsjA3ZO9pVilnnDQOgG5UfPz3tFbtxy8phT94s7lDVe
         LnvyI0TrZjK2xTLT+44YjIrOqNNy0V46BwxT6xclV5MRKAOBXFMBWblijOn2grtaQFC5
         ElWdxmkRASuoTzHWLmJOQZzDI1mhtjGrYlaN5ndZaMwpeZ+7FQr5QwO/OrujWLLXrcey
         QDAViw+o3NkJFxXIrv42HpRB3bcoe0C/6Bgtz+UWREhg5L696qCZiTgoHtS/ukZl2uLO
         Niyima7MdcFrlyWVLUftJUT9dJF6U/CO6J1M17RJ/FZHwBylLS3MsD96SoMJdGkdZIOt
         J6sw==
X-Gm-Message-State: AOAM533hn7nc/u9WJTchEkH2TOK7T6FiaPmkjK+h3d6N/fBB7m7reOkd
	yyXix+Mc7PwvK46Z8OQQV9A=
X-Google-Smtp-Source: ABdhPJw157S8jHjoh9RzPAjSCO9CGYoi/T414vCN4lqAg8VV61lLPylAv9qFg08dTRTDM+FoCd2gxw==
X-Received: by 2002:a05:6638:3471:b0:32b:362e:1e81 with SMTP id q49-20020a056638347100b0032b362e1e81mr9109459jav.112.1652138028803;
        Mon, 09 May 2022 16:13:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:130c:b0:32b:8cba:d72d with SMTP id
 r12-20020a056638130c00b0032b8cbad72dls3081459jad.5.gmail; Mon, 09 May 2022
 16:13:48 -0700 (PDT)
X-Received: by 2002:a02:2b21:0:b0:32a:fede:c3aa with SMTP id h33-20020a022b21000000b0032afedec3aamr8221817jaa.53.1652138028299;
        Mon, 09 May 2022 16:13:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1652138028; cv=none;
        d=google.com; s=arc-20160816;
        b=RXyphr/rWiRDPQucNsV+jVm5TGWxVq2wYy7K8gr1QvkYEAGzeS2uc2mBU/ScVTS1Uw
         BaKUIVhxrdText2/IkW8JIF5pPxOZbR5PLar3NUbb5GM7ENSoq05toSU/e2GpsrhmHx0
         nRKvduQkn35fT0PztTs1IUrnUZq+C2N1Or+dIiv9HDV0AUxEfJsc98ZEHkt2H5v0Z4tg
         Kq8zWrDxdQeFIS3mUxnGBd4bslXSe/YeDgt0ga26taBJDX4Phi47gof7LdSI71c9yKh9
         /nmz8JA5VJqqenFkIp9Bh2FJCWQ1TBdEUwrXkxH/7B2Lz1Z/ckRSSaUYXxdrOoePOV89
         RjuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=oazinpgomaqUG0jSYMm8ubizFPTzpD9YluLXTH1Uf+8=;
        b=IdIvGHl7yVdS6+AO9qjbCNx1dXjFpZciwaMig87eNzXlAEVUaexUo6TJ+QSL9HUct3
         UfoYys31PorEsSm2LZPJn2adjHa4yNYOol4DYEfQXrUW3Laif3G3Fy9UURdL241jTPGZ
         CjV10m5d4KGPiDyJ7WnwdZqjCa3+axH3eFXP9BxVQUWActck48BEtYNG4r4pA6uLvuEq
         5iG6wJ2q53WAzFJbBQxha8MtuBDh4pPuw4Doq+OAmuiQ7oEytgGwwaLQgJaS8DeS4rtJ
         FxYGtfx/WpJFNZWLErB71oM/3efoNuLx5DklyKUVlXAVGd+Epv7DohHByFGd3Z2/gnNd
         sTBw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=f6fWCk6p;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::1133 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yw1-x1133.google.com (mail-yw1-x1133.google.com. [2607:f8b0:4864:20::1133])
        by gmr-mx.google.com with ESMTPS id y5-20020a056e020f4500b002cd85b685c5si1067081ilj.4.2022.05.09.16.13.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 May 2022 16:13:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::1133 as permitted sender) client-ip=2607:f8b0:4864:20::1133;
Received: by mail-yw1-x1133.google.com with SMTP id 00721157ae682-2f7b815ac06so161740807b3.3
        for <clang-built-linux@googlegroups.com>; Mon, 09 May 2022 16:13:48 -0700 (PDT)
X-Received: by 2002:a81:1108:0:b0:2f7:bf11:3fb9 with SMTP id
 8-20020a811108000000b002f7bf113fb9mr17011668ywr.305.1652138027673; Mon, 09
 May 2022 16:13:47 -0700 (PDT)
MIME-Version: 1.0
References: <20220508190631.2386038-1-masahiroy@kernel.org> <20220508190631.2386038-10-masahiroy@kernel.org>
In-Reply-To: <20220508190631.2386038-10-masahiroy@kernel.org>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 9 May 2022 16:13:11 -0700
Message-ID: <CABCJKudnbTS=_2WgX63xb_3oCwt_6jwotqfoV5wSjkmfjuUJZQ@mail.gmail.com>
Subject: Re: [PATCH v4 09/14] kbuild: do not create *.prelink.o for Clang LTO
 or IBT
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: linux-kbuild <linux-kbuild@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Nicolas Schier <nicolas@fjasle.eu>, Peter Zijlstra <peterz@infradead.org>, linux-modules@vger.kernel.org, 
	linux-s390@vger.kernel.org, linuxppc-dev <linuxppc-dev@lists.ozlabs.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Ard Biesheuvel <ardb@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20210112 header.b=f6fWCk6p;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::1133
 as permitted sender) smtp.mailfrom=samitolvanen@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

On Sun, May 8, 2022 at 12:10 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> When CONFIG_LTO_CLANG=y, additional intermediate *.prelink.o is created
> for each module. Also, objtool is postponed until LLVM bitcode is
> converted to ELF.
>
> CONFIG_X86_KERNEL_IBT works in a similar way to postpone objtool until
> objects are merged together.
>
> This commit stops generating *.prelink.o, so the build flow will look
> the same with/without LTO.
>
> The following figures show how the LTO build currently works, and
> how this commit is changing it.
>
> Current build flow
> ==================
>
>  [1] single-object module
>
>                                       $(LD)
>            $(CC)                     +objtool              $(LD)
>     foo.c --------------------> foo.o -----> foo.prelink.o -----> foo.ko
>                            (LLVM bitcode)        (ELF)       |
>                                                              |
>                                                  foo.mod.o --/
>
>  [2] multi-object module
>                                       $(LD)
>            $(CC)         $(AR)       +objtool               $(LD)
>     foo1.c -----> foo1.o -----> foo.o -----> foo.prelink.o -----> foo.ko
>                            |  (archive)          (ELF)       |
>     foo2.c -----> foo2.o --/                                 |
>                 (LLVM bitcode)                   foo.mod.o --/
>
>   One confusion is foo.o in multi-object module is an archive despite of
>   its suffix.
>
> New build flow
> ==============
>
>  [1] single-object module
>
>   Since there is only one object, we do not need to have the LLVM
>   bitcode stage. Use $(CC)+$(LD) to generate an ELF object in one
>   build rule. When LTO is disabled, $(LD) is unneeded because $(CC)
>   produces an ELF object.
>
>            $(CC)+$(LD)+objtool             $(LD)
>     foo.c ------------------------> foo.o -------> foo.ko
>                                     (ELF)    |
>                                              |
>                                  foo.mod.o --/
>
>  [2] multi-object module
>
>   Previously, $(AR) was used to combine LLVM bitcode into an archive,
>   but there was no technical reason to do so.
>   This commit just uses $(LD) to combine and convert them into a single
>   ELF object.
>
>                             $(LD)
>             $(CC)          +objtool        $(LD)
>     foo1.c -------> foo1.o -------> foo.o -------> foo.ko
>                               |     (ELF)    |
>     foo2.c -------> foo2.o ---/              |
>                 (LLVM bitcode)   foo.mod.o --/
>
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> Reviewed-by: Nicolas Schier <nicolas@fjasle.eu>
> Tested-by: Nathan Chancellor <nathan@kernel.org>

Looks good, thanks for cleaning this up!

Reviewed-by: Sami Tolvanen <samitolvanen@google.com>

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKudnbTS%3D_2WgX63xb_3oCwt_6jwotqfoV5wSjkmfjuUJZQ%40mail.gmail.com.
