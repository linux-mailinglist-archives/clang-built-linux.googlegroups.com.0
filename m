Return-Path: <clang-built-linux+bncBDYJPJO25UGBBIPO5DZQKGQENQMIDUA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93b.google.com (mail-ua1-x93b.google.com [IPv6:2607:f8b0:4864:20::93b])
	by mail.lfdr.de (Postfix) with ESMTPS id 328C119168C
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Mar 2020 17:36:51 +0100 (CET)
Received: by mail-ua1-x93b.google.com with SMTP id d2sf3904526uak.11
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Mar 2020 09:36:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585067810; cv=pass;
        d=google.com; s=arc-20160816;
        b=SjkhUw7gc3nEJ2Vppak1m6dEzgR/9N1pmIPDpKNxyEaqkt/19ziJsGWYtPhINhYh+g
         +H+C7cr3L4YHR8fJ6g8iM+MTGdTPMIXiwydfP5woot0sVPt59LvRBV+3JP1DW3yAa1rr
         JKJLsVjzUMNa0kInQAUa8lDF39lNtyFJQ2NlZvJ6Am655zEfJ4GcmLv6b+4bfZpXytPP
         dNU9ObvtDHLsfdtUDOBFY6GWxtplnSBrdyjGj+rIQjvPEb2kGV9N85wmr8TOc6hIb0Xp
         jgS/nDh12zw74B/rEDZVM7DLEzqR0gK52aD0vF3pRFNJ44lntJ0NK3jGyNGy/dNyk7vq
         dS0A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=lplI8q5VkDWFKv0O/FAe70UToJEvVaHpARAawsvZ1zU=;
        b=pCjeMtIZ99VfeYhRs7ey2HX+AxZcbYdPrf660Dr+CEX86TMScHWAmtPVq5C2T6o/25
         o6YQQ9n8W+DyXez8BQN/hT4wZ2LcJ4vKGJm8Dm1jEJx5i9xv9dyzd4f6r1HYbWAP1Qbz
         jfl8i6eGNWCzE/EZp+vyMj/Jqin0JKEtjGYiHcgpDW+PrU5l87/lWtO83xIb10wnroa3
         IjjuQz5Xybjdw07Tpo+5Umek3UKQ5QgnSygQpCOaePWCUPG90i2EGGmNamP0MSJTL7Z0
         rx+IWERY64ra2KFoRO/PIhAppTLtmW9ABOmQGN5meX8SW6zrs05iEri9jBilzn0iBTxJ
         ZuIQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=nTXRVhVV;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lplI8q5VkDWFKv0O/FAe70UToJEvVaHpARAawsvZ1zU=;
        b=FyaLeTL+Pw/fy8GcYOIcoH6QQHk8h7XdUd6wjL6KTGsasShI8NTWoBB3zI801whJXe
         pdstiYYHdWasQDEdeMAgAy89EH/5ieTxlmqrF2hhV68Z/ccwvKa8NiPxah84xCzL+cxR
         aUds/bbdYzE+hGDYzUupbJ+MW+aKTFDaztqpNlLZyTDh1PVJQXlCJ6eiWKNf8jL71mM5
         GWM3W8alhPCcCNlEofDIT3rrgNda00i5KAwrVXQP2w+NplAp3AnB4gIxj4rODx6Boy8l
         TCE9EOF9oKPl5CC37VbQXcIfXcV7XVu4rlur4u/Af0MMV9LfsMhQNZ3Yh4ArBtvLqdFH
         s5Tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lplI8q5VkDWFKv0O/FAe70UToJEvVaHpARAawsvZ1zU=;
        b=ps1bkqx9cEFUwTSO5A3fEpzTyRGpCJDLlUkHyh/6w6IkA5JDqkMDXYYFxD4Hxe9GbA
         Nk5O7t1Qftw5WG/4EL3BofDPU4EE6a1oVqYsNBgWQw72pDsOY5c8z1fM1CUS/e6riq7Q
         gIxp2MjBzEnpA9tRvffcMFg6bFdhEOi9MkYKxjkLSGCXJDGWd9KDIfI0T+a1pyfO5cj+
         JTjyzTo7IzNZqktPQmpR1zPyhwDNfTPtHgoSfe3W+1+Dog/2GUqxBp3rcqwC6zSHr8M4
         9vAe5yZ6ThL/RSQkR/XVlFR+Z+5kZ6MnaP8GMQKd545iHHVKWTLHN9bEeDWcpEuhH44g
         dSCw==
X-Gm-Message-State: ANhLgQ3Q81fMzom5zALImA1hd15oQ98YqcKRqqLWAENBXUkEpB/6jWoQ
	JY1JEP0+qNsgm2tzvU+tbSM=
X-Google-Smtp-Source: ADFU+vt52a7R2lpQl/XRdZ73eTnmgMq2ds8A+XziCRkgilUs/tYb2v9fNWG0dYruMmO99xsI22+aZA==
X-Received: by 2002:a67:a06:: with SMTP id 6mr11443711vsk.22.1585067809979;
        Tue, 24 Mar 2020 09:36:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:7717:: with SMTP id z23ls1348880uaq.8.gmail; Tue, 24 Mar
 2020 09:36:49 -0700 (PDT)
X-Received: by 2002:ab0:496d:: with SMTP id a42mr17981244uad.90.1585067809560;
        Tue, 24 Mar 2020 09:36:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585067809; cv=none;
        d=google.com; s=arc-20160816;
        b=x1N4Q4kO5UeXHcFcDsmW17FinumQcXL5i379e1Yo9yWQJestv6kZgz240sI34SfUB2
         1+Y0V0wV0RBHzq9mXIPjCN5flbS4PFIkRRdSsLwnzibwnj7kvd7hjsp39IhfONGOrzko
         Kh/X4YQX+gzlNa/ZKi8PpW6HYA1sffmqv3tTyV4nmI7JVpHsQmJpbDFClZ4+cUURXAu9
         dKRK2aQqa9VDBuABRLtT+5FXqsV2TKcurg+RvY6kukaCvgdMYqOUuiJW/5KKithv5zy0
         FXh5pm2p/W7BJ9E3jNe97aDX3WqQawaceszbch+cfMAiJf/5V6g0r1sjVgj3sV85sraT
         CfYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=G2pRf2REXURXRcZCaSPd6oM79gOgGyCy4tzXJ0HzXK4=;
        b=pegH8HyfJt9RwMKcxcK/AhKkziBFg2GpWnopS1WDI4KRXuUYp3N87u6iANcyfKNFXi
         YQwVQNiyd5s2UJ7vwAzRoqUBp8HKIJmaRl2m4hPjrh7UmTpkk2fzcuTMWidqD5oFbI9v
         uM8V/BsqYG5c/8yypo4o3d9xFhpwpCiZjvWrcSZAMgx7sfkUuK9fwKqmeGnp/ZAttL9K
         +x/DRn4KT/ovbj2iJtS4V0bIZWe+o74orqwj8VS75G2WjSBe5fwA0gf4ja5s4eKBijjz
         nqAFxhjbof/mzihUkfI/X79kJnESiTi17gnEyP1493yeTR1g5Gg4uXCkbLn5Bc9B/W4T
         kDDQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=nTXRVhVV;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com. [2607:f8b0:4864:20::1044])
        by gmr-mx.google.com with ESMTPS id k6si474113vso.1.2020.03.24.09.36.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Mar 2020 09:36:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) client-ip=2607:f8b0:4864:20::1044;
Received: by mail-pj1-x1044.google.com with SMTP id ck23so1691407pjb.4
        for <clang-built-linux@googlegroups.com>; Tue, 24 Mar 2020 09:36:49 -0700 (PDT)
X-Received: by 2002:a17:902:820a:: with SMTP id x10mr23585647pln.179.1585067808195;
 Tue, 24 Mar 2020 09:36:48 -0700 (PDT)
MIME-Version: 1.0
References: <20200324084821.29944-1-masahiroy@kernel.org> <20200324084821.29944-2-masahiroy@kernel.org>
In-Reply-To: <20200324084821.29944-2-masahiroy@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 24 Mar 2020 09:36:36 -0700
Message-ID: <CAKwvOd=AXnAjoa0iOhPc4S49ZpDDX9BYB-BZQc=6Z0dygVYLPA@mail.gmail.com>
Subject: Re: [PATCH 01/16] lib/raid6/test: fix build on distros whose /bin/sh
 is not bash
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: LKML <linux-kernel@vger.kernel.org>, "David S . Miller" <davem@davemloft.net>, 
	Linus Torvalds <torvalds@linux-foundation.org>, Kees Cook <keescook@chromium.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Herbert Xu <herbert@gondor.apana.org.au>, 
	"open list:HARDWARE RANDOM NUMBER GENERATOR CORE" <linux-crypto@vger.kernel.org>, Ingo Molnar <mingo@redhat.com>, 
	Thomas Gleixner <tglx@linutronix.de>, Borislav Petkov <bp@alien8.de>, Peter Zijlstra <peterz@infradead.org>, 
	"H . Peter Anvin" <hpa@zytor.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	Jim Kukunas <james.t.kukunas@linux.intel.com>, NeilBrown <neilb@suse.de>, 
	Yuanhan Liu <yuanhan.liu@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=nTXRVhVV;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044
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

On Tue, Mar 24, 2020 at 1:49 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> You can test raid6 library code from user-space, like this:
>
>   $ cd lib/raid6/test
>   $ make
>
> The command in $(shell ...) function is evaluated by /bin/sh by default.
> (or, you can change the default shell by setting 'SHELL' in Makefile)
>
> Currently '>&/dev/null' is used to sink both stdout and stderr. Because
> this code is bash-ism, it only works when /bin/sh is a symbolic link to
> bash (this is the case on RHEL etc.)
>
> This does not work on Ubuntu where /bin/sh is a symbolic link to dash.
>
> I see lots of
>
>   /bin/sh: 1: Syntax error: Bad fd number
>
> and
>
>   warning "your version of binutils lacks ... support"
>
> Replace it with portable '>/dev/null 2>&1'.
>
> Fixes: 4f8c55c5ad49 ("lib/raid6: build proper files on corresponding arch")
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> Acked-by: H. Peter Anvin (Intel) <hpa@zytor.com>
> ---
>
>  lib/raid6/test/Makefile | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/lib/raid6/test/Makefile b/lib/raid6/test/Makefile
> index 3ab8720aa2f8..b9e6c3648be1 100644
> --- a/lib/raid6/test/Makefile
> +++ b/lib/raid6/test/Makefile
> @@ -35,13 +35,13 @@ endif
>  ifeq ($(IS_X86),yes)
>          OBJS   += mmx.o sse1.o sse2.o avx2.o recov_ssse3.o recov_avx2.o avx512.o recov_avx512.o
>          CFLAGS += $(shell echo "pshufb %xmm0, %xmm0" |         \
> -                    gcc -c -x assembler - >&/dev/null &&       \
> +                    gcc -c -x assembler - >/dev/null 2>&1 &&   \
>                      rm ./-.o && echo -DCONFIG_AS_SSSE3=1)
>          CFLAGS += $(shell echo "vpbroadcastb %xmm0, %ymm1" |   \
> -                    gcc -c -x assembler - >&/dev/null &&       \
> +                    gcc -c -x assembler - >/dev/null 2>&1 &&   \
>                      rm ./-.o && echo -DCONFIG_AS_AVX2=1)
>         CFLAGS += $(shell echo "vpmovm2b %k1, %zmm5" |          \
> -                   gcc -c -x assembler - >&/dev/null &&        \
> +                   gcc -c -x assembler - >/dev/null 2>&1 &&    \

These should all use $(CC) rather than hardcode gcc.

>                     rm ./-.o && echo -DCONFIG_AS_AVX512=1)
>  else ifeq ($(HAS_NEON),yes)
>          OBJS   += neon.o neon1.o neon2.o neon4.o neon8.o recov_neon.o recov_neon_inner.o
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200324084821.29944-2-masahiroy%40kernel.org.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DAXnAjoa0iOhPc4S49ZpDDX9BYB-BZQc%3D6Z0dygVYLPA%40mail.gmail.com.
