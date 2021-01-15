Return-Path: <clang-built-linux+bncBC7OBJGL2MHBBY74QSAAMGQER3F2DYI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x537.google.com (mail-pg1-x537.google.com [IPv6:2607:f8b0:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id AD00C2F736E
	for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 08:04:05 +0100 (CET)
Received: by mail-pg1-x537.google.com with SMTP id y2sf5547571pgq.23
        for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 23:04:05 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610694244; cv=pass;
        d=google.com; s=arc-20160816;
        b=YPUbVCbm0iWJaL4bQHqlW8tXDLoRfPVfeKn0jUX2ZF80UCs4Jo7GHDAaOnnhNdLPCK
         f3ZP8KP3Hm6dtLsNasnCyXQOu59iCSRXgNp/grJnvHzJiKTPQo4CG8Ff5Mg8xG8BCr6K
         dDADZbmO1Kg97ageQ8XTydE54vbFeHbVpqTNo55uMFBEIn4g3BBsxsvRGmUxeI44Sdkg
         /zy/ZYQR7DZnnom4QlHhXPLWK/tgJ3fR8Yqscm31nqv7oUHI6lkfv7Td4qfKYip0Bpqi
         vCEWlgQu1PjRIY9QHSyvXt09zVN8PV+InL428laMfRLnUQxCD5eAVf6nylE0MvZ0CuET
         dhVg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=PZufYrGbYYlBgn/JPhoWtGNO6CKF5mOhxVYz+Vm+j+U=;
        b=jeo6Qzk3FvMHTdkBbVaBHs9jGk97Io6lMvbS2JyP06HOrHX4LXzgy8+mpyYiyP/bZN
         bnOaXRWF6sdCwmGyQGbZIyVjNl9bw0hlvuJVDJ3oXCZ8bxZQ/Vj/aSW0f9iDnkvhW9+S
         nqI8zizN6YDmElJiUmg2eXKhKIkOPiHOiYAajugAJajsvhmgngCKl/bb+F3C4mZ5XdW9
         +tCfmPvcQD2O+Din51gvnQAmlBBBHPz9eJI4nxiCHeEzj6cFqFB5ae3zw9z34FAj9lCf
         zOHQVsc7YJ8+chxRnBiwMcYrgO8Kuwl/+FZ2t0aeuzNP3hMSMVdKHX6H8Wv/hPLxmdpK
         JNWw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=dd0tjJF7;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::333 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PZufYrGbYYlBgn/JPhoWtGNO6CKF5mOhxVYz+Vm+j+U=;
        b=TthRMSIK8NTlxRBfOfggOj+4HNiBGAWxFJaCelsaEqSLrLlNbSGSqHJcHQgkW9wi+m
         C1QrrltCFwDT3ybw1TC7G8aReu83IFmOPdxMZXdr8GlWpMrioQbrO6EF2oTZTw3ZeA85
         4O/fjzSfKp2uKsVvjvpMTzemJPLxFgv2COSkxpncsgDsxWh2SFkzIQejmox36NzA+yZ6
         50wCEMOxjlz4kef4cRJ+lxNYNR/bo10gKB8BJcgX/TdwOC3/Yf7Lii7caeJbB4r7QadH
         ztJkfgt8YKVccz2fvZGC2gAJxxPJK/uKMxGI25JU/3YnDuQPs0XuwuzvRjGFnRL/RNi9
         vIiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PZufYrGbYYlBgn/JPhoWtGNO6CKF5mOhxVYz+Vm+j+U=;
        b=DCmrrcbgrBUEoZ5LcSs6WQtT773e5oBzXJ3qOfbpcP0Fr65eag3oEMXmNPvulGGdXk
         ov7SAtXdhHd+ks0bpChM/h4xDmAveceQ9p7a4vbSOMUykHJHT8j3qR6yuxy9k7HvDhcE
         oqeOtYOQLvT5AIBTiRDxlVmA/45V39VMFh3oIDsOCs1lhAkG0Bzlt79n9Ohj38H+hAbE
         oXqWjWmcDwvV9mUiz3u/twCwEsBDyPgKGpnTT1qwP4eG3HrdLx6uppCir92PQWZ+Ac0D
         x8iGCkOfT9QHWQKf4+tpyKMrkKEWbUax60w7VscAP35Rt49347l3dLPfqEh7XcfFZ8ph
         5kyA==
X-Gm-Message-State: AOAM5329P7LoezgoTvbW4UxlAcrZGYyH/tZXSut/dSnQlLNV/u9V3qdq
	Xmww8lnWA4HRZbXohgT1AYQ=
X-Google-Smtp-Source: ABdhPJzvSXCoy2Ku27Mo4VS3sbp6MujmZs6+Xl3+rSWT+tsI06ovjwYJPoNjQo90s3ZaepkgxQRoPg==
X-Received: by 2002:a17:90b:3c7:: with SMTP id go7mr9024540pjb.188.1610694243867;
        Thu, 14 Jan 2021 23:04:03 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:a416:: with SMTP id p22ls3971806plq.3.gmail; Thu, 14
 Jan 2021 23:04:03 -0800 (PST)
X-Received: by 2002:a17:90a:ff03:: with SMTP id ce3mr8983884pjb.44.1610694243105;
        Thu, 14 Jan 2021 23:04:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610694243; cv=none;
        d=google.com; s=arc-20160816;
        b=RsKbIJS/17LCBD/tr9Q4NFrBe5l0BjmLZ/gilh2nI10n384Ps4YqSf/4tKcgSCeqxC
         rSHG4/Yhl5WVLFuCo2kXZSvubOFGniKg6PmpZbCHKMgCnwzkvV32NAEbx06jrMQL9mSZ
         NKp4/JUe6WxNg4lm91hj0U+DU4/YuHiwFwa5lSltWRj1jBVubb+WjslgwP885/xQImff
         Z2xRB4lYyvyyOhXeegi+2mY+eErCTpAvlS404xSTtiawV2+pIJ8PptqwQpHsW9QR3YYb
         8vlFpIBHSfTtcQ+TjZViMe84674Y/lLvHfLyi5CnlNHsxLTR5Z2HXLMuTjjSt1Nr3hZE
         fbIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=JZuzVr+TgXPqb7ivDtim3E40dPuUOJv5AgOFr5mOA50=;
        b=aNNoU190OuTsOs2EHkAkJiAGM4LXGd5gEmKGrgin0uYl9LzU11DgO5xUClINLEs0ES
         V7xcwSHCGGgwSuX2n7ZAblUwn7fOkx0up2zmNJ9zqh7leuwCuCd+YtK/RPXf2cXxOJGK
         trliLr4ZZOF7prTXipeAD9WRfvhw245Lcr8t+4s5ClSlbyuU4IPL7qR3QIDCe5+Ajl/P
         shjHxkfFICtgB1+rXODxo20W97quj7R7t/KsuCD+VbfykKvRxdMzdAq8IBk1Fwf9xbCq
         XHgpbNQQ4oXdIwnvOjFc4kS5rrehw1m/7ZciZJ0Mal5J60wT1e9Ec1BQzQv4c4rvXHTl
         59JA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=dd0tjJF7;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::333 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ot1-x333.google.com (mail-ot1-x333.google.com. [2607:f8b0:4864:20::333])
        by gmr-mx.google.com with ESMTPS id m63si386577pfb.3.2021.01.14.23.04.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Jan 2021 23:04:03 -0800 (PST)
Received-SPF: pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::333 as permitted sender) client-ip=2607:f8b0:4864:20::333;
Received: by mail-ot1-x333.google.com with SMTP id n42so7640003ota.12
        for <clang-built-linux@googlegroups.com>; Thu, 14 Jan 2021 23:04:03 -0800 (PST)
X-Received: by 2002:a05:6830:2413:: with SMTP id j19mr7591335ots.251.1610694242544;
 Thu, 14 Jan 2021 23:04:02 -0800 (PST)
MIME-Version: 1.0
References: <20210114211840.GA5617@linux-8ccs> <20210114215416.993167-1-maskray@google.com>
In-Reply-To: <20210114215416.993167-1-maskray@google.com>
From: "'Marco Elver' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 15 Jan 2021 08:03:51 +0100
Message-ID: <CANpmjNOrD76O2_Zpwo5RJ2d12gczuQpG9bJkXYLY_sOVeEVZGQ@mail.gmail.com>
Subject: Re: [PATCH v2] module: Ignore _GLOBAL_OFFSET_TABLE_ when warning for
 undefined symbols
To: Fangrui Song <maskray@google.com>
Cc: LKML <linux-kernel@vger.kernel.org>, Jessica Yu <jeyu@kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Sam Ravnborg <sam@ravnborg.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: elver@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=dd0tjJF7;       spf=pass
 (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::333 as
 permitted sender) smtp.mailfrom=elver@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Marco Elver <elver@google.com>
Reply-To: Marco Elver <elver@google.com>
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

On Thu, 14 Jan 2021 at 22:54, Fangrui Song <maskray@google.com> wrote:
> clang-12 -fno-pic (since
> https://github.com/llvm/llvm-project/commit/a084c0388e2a59b9556f2de0083333232da3f1d6)
> can emit `call __stack_chk_fail@PLT` instead of `call __stack_chk_fail`
> on x86.  The two forms should have identical behaviors on x86-64 but the
> former causes GNU as<2.37 to produce an unreferenced undefined symbol
> _GLOBAL_OFFSET_TABLE_.
>
> (On x86-32, there is an R_386_PC32 vs R_386_PLT32 difference but the
> linker behavior is identical as far as Linux kernel is concerned.)
>
> Simply ignore _GLOBAL_OFFSET_TABLE_ for now, like what
> scripts/mod/modpost.c:ignore_undef_symbol does. This also fixes the
> problem for gcc/clang -fpie and -fpic, which may emit `call foo@PLT` for
> external function calls on x86.
>
> Note: ld -z defs and dynamic loaders do not error for unreferenced
> undefined symbols so the module loader is reading too much.  If we ever
> need to ignore more symbols, the code should be refactored to ignore
> unreferenced symbols.
>
> Reported-by: Marco Elver <elver@google.com>
> Link: https://github.com/ClangBuiltLinux/linux/issues/1250
> Signed-off-by: Fangrui Song <maskray@google.com>

Tested-by: Marco Elver <elver@google.com>

Thank you for the patch!

> ---
>  kernel/module.c | 20 ++++++++++++++++++--
>  1 file changed, 18 insertions(+), 2 deletions(-)
> ---
> Changes in v2:
> * Fix Marco's email address
> * Add a function ignore_undef_symbol similar to scripts/mod/modpost.c:ignore_undef_symbol
>
> diff --git a/kernel/module.c b/kernel/module.c
> index 4bf30e4b3eaa..278f5129bde2 100644
> --- a/kernel/module.c
> +++ b/kernel/module.c
> @@ -2348,6 +2348,20 @@ static int verify_exported_symbols(struct module *mod)
>         return 0;
>  }
>
> +static int ignore_undef_symbol(Elf_Half emachine, const char *name)

Why not 'bool' return-type?

> +{
> +       /* On x86, PIC code and Clang non-PIC code may have call foo@PLT. GNU as

Not sure if checkpatch.pl warns about this, but this multi-line
comment does not follow the normal kernel-style (see elsewhere in
file):

/*
 * ...
 */

> +        * before 2.37 produces an unreferenced _GLOBAL_OFFSET_TABLE_ on x86-64.
> +        * i386 has a similar problem but may not deserve a fix.
> +        *
> +        * If we ever have to ignore many symbols, consider refactoring the code to
> +        * only warn if referenced by a relocation.
> +        */
> +       if (emachine == EM_386 || emachine == EM_X86_64)
> +               return !strcmp(name, "_GLOBAL_OFFSET_TABLE_");
> +       return 0;
> +}
> +
>  /* Change all symbols so that st_value encodes the pointer directly. */
>  static int simplify_symbols(struct module *mod, const struct load_info *info)
>  {
> @@ -2395,8 +2409,10 @@ static int simplify_symbols(struct module *mod, const struct load_info *info)
>                                 break;
>                         }
>
> -                       /* Ok if weak.  */
> -                       if (!ksym && ELF_ST_BIND(sym[i].st_info) == STB_WEAK)
> +                       /* Ok if weak or ignored.  */
> +                       if (!ksym &&
> +                           (ELF_ST_BIND(sym[i].st_info) == STB_WEAK ||
> +                            ignore_undef_symbol(info->hdr->e_machine, name)))
>                                 break;
>
>                         ret = PTR_ERR(ksym) ?: -ENOENT;
> --
> 2.30.0.296.g2bfb1c46d8-goog
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANpmjNOrD76O2_Zpwo5RJ2d12gczuQpG9bJkXYLY_sOVeEVZGQ%40mail.gmail.com.
