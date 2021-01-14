Return-Path: <clang-built-linux+bncBDYJPJO25UGBBKP6QKAAMGQEOTSYV6A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3f.google.com (mail-yb1-xb3f.google.com [IPv6:2607:f8b0:4864:20::b3f])
	by mail.lfdr.de (Postfix) with ESMTPS id D0C6C2F6D9C
	for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 23:01:14 +0100 (CET)
Received: by mail-yb1-xb3f.google.com with SMTP id j1sf3264362ybj.11
        for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 14:01:14 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610661674; cv=pass;
        d=google.com; s=arc-20160816;
        b=yKlOyi3ECfdFgUE7viYDY9ESuILYLNofS5LrwcLvx3NWPI6J6ljCT584D+Zf8UDW3E
         aBeBAOCnJRFQLaQhC4oXLnjhkGVeZZGYVOGwTvCQv5VmuRyaPU98Cquw4euSXzu3EsuP
         CQc3OeTm+wcuf0EXS+eD+1mqsE9ORLwB9mdOq3Z69+8I65aWr1//BJlErsaGGIO/SRax
         D1hfuyRULxn3u62zMGAFYTulmUHw8SnvnIEwke+gBmCvINgptbpCqArScS3GMnncckQI
         OEaaUHMaoYJ3pm0eWFVKAHGjTmMiHMnHH3HyjDFhMw+qxz36oTE56oJzNoiic+w81OeQ
         Wfsw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=OsQW89faLrtDnlvQval1riFSFnn9+chjS7UAKRoSXjE=;
        b=CJWKcW+/jp+jQRTWLXwVdJhCbF1Bh0+rr71VqAXQ1wmo+S+I5DTTRunveipZzjeDSH
         HGLO5bb1R7iD+8yveeMsm21cGDPdVwCtcNhAt8UoI7ll32BT5OfrBd2LtGXWrSGVNOb0
         yeh1L7SYAQfRAQDoR3o6OvW47UADHkacBWS3AITaC7oV+6WVVdmI9nKn8DON8V2Pxb1z
         RdHHlTToGnpYH79qS1mqUVgoaet9uzGyiSB3BLvPxjn3N9Yc0MrFDTK9S5kAch6Q+9Vy
         hFGPPa25bCjvuD6TNn2EVQ6wUOUVGfxx3t3jtcAtFScF7cc+IDNHedbOybLJcR6O5ceq
         uKFQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Y8Aex8dp;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102d as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OsQW89faLrtDnlvQval1riFSFnn9+chjS7UAKRoSXjE=;
        b=B2q7tlDkfwL3lWVQ/9wUrowFGLZqrSU0e+HrhuRR5y8kJHiqIGBCtAA+ket09xiREP
         G7hDP7ANa+7RHseDEyuRQKRsXTV612lUKza9OmntThlmAwdDV+8cHAqVzY5vMghoYojx
         M8G39EYuUn+/Xx3M8WCA/KE5atJANQSxKUfMfKay56/AorhVa2BEQU1XYJ4N4rf33N2r
         Mq5Jxfpzo4ogSWVaO3l9LAXMKZ2N7AcDzK8pMLZcB5Z9o2jvKzofCWPC1yb3st0xUsSv
         qjnaK0ptJ8ehgtZVmlfnZFS3HH9E590Fmm3y0hKF3Vp5+pOjetxkyNnVp47RVSleK0zR
         o5Ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OsQW89faLrtDnlvQval1riFSFnn9+chjS7UAKRoSXjE=;
        b=qNsVO3zmxQDil0MrWWp2whqJrUbRudcanbZjoWCDxJ2/rs9isBuo99vLIdwJTx09el
         X9mzdQiYrnvX1D1s83S08UT+5ugj6eQ5L3r1QmjhHct6dMcv/kxory/ibUDcFJCili/b
         +xKnBUKulSj3mwhT9uhhGnxOpKF49mP5d0bS46emrwUWOidgvkuvRu5tk3y7xf2CuNH1
         fqHHCFMPEViTZ3K9ltgkS0hVUN5yDu4aLFTEIgedR+zz8BOatdDEkOC/CpEzfcE9Y5bl
         /yD7mqpqdW+a9vfWIskh2mGg4i667bTuN8yZRlxpXbecfPPVZdi69Cvs85wxlx3HUxaB
         GK/g==
X-Gm-Message-State: AOAM533HN0tw6sKLwEpye/9uFc3esbufOJy3l/sDLzBxSpX26lT/URar
	ELKSnSmFValQwjiBk2dh7Wc=
X-Google-Smtp-Source: ABdhPJxxldalJnFAH1PJ9uFh9Ws1cMHBQWD75fh+x0AjjJxYWmOYHjZG1XIQr4GfzCySAirmXXrxag==
X-Received: by 2002:a25:b320:: with SMTP id l32mr5091743ybj.104.1610661673823;
        Thu, 14 Jan 2021 14:01:13 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:f80c:: with SMTP id u12ls3407693ybd.4.gmail; Thu, 14 Jan
 2021 14:01:13 -0800 (PST)
X-Received: by 2002:a25:3587:: with SMTP id c129mr14139531yba.223.1610661673196;
        Thu, 14 Jan 2021 14:01:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610661673; cv=none;
        d=google.com; s=arc-20160816;
        b=PCQEzkgo3WYqRpEIwiLddT8AdBvkLxq71pgQ9Q0ESPxL45FmLGAlBSHJ0/DWz7w/Ea
         vCNQkfn02AbBJ5bpWYns/Y2p+u3QVrrwJoaipgP5qpza7YMnJ1soRrw1/iN24ROlFGUt
         4oH/FHUkJ6CblxdFAI7O05xaZSty3/ojNt6dvOdloXkJ1qDu4vPTelUfEkLJPu3+uiLB
         Qz89AZo8dXezJa2KoMpXMmbd6Y2KtZSRY8tmLiUDTTUmQxQ1JJ1NRoM8u8G8aDm4NA9X
         Aai+Bgy4JLwyhTScyq1rZ6DCYc9RnJ48ZDuB8DAxenGamICK2B3UsD6e51zY+rXPz9/C
         foFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=cVv6S5EAOTDagu+nMi70jtjXxb9kx3oijm5M+lP6Ygs=;
        b=YEO38POxjVgNpdLqMfdGdzgWQkV4F5dsDpOp60nNQbqhu1rLOr2CH/0jwUNW2zueTK
         oLy/Oo7w2S/gvseIsQZL/akC7Rp78GF1PvB85x6U9nfZcaso85EgaLz0RXWj3MP/9vG+
         P6xkaQR8PKnDvAQ2/ETabfUQ6FSSvNFuPaG9OP/SflrtMO2jYYOSBBqeURmMzoEgaydZ
         pLMrdTne1ogMm6IHm1DGnfCporg2x1IZVy1A+xT7QgbdzYiy34N82pqU4X+0o1riDOFT
         2Tmt8vPfAD8LP4xssBedSkSf02c6rXzg4gcQ5JefFhWTFhY3h/TmVP/WrrgsqCInG+Ks
         u2FQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Y8Aex8dp;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102d as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x102d.google.com (mail-pj1-x102d.google.com. [2607:f8b0:4864:20::102d])
        by gmr-mx.google.com with ESMTPS id x18si201141ybe.0.2021.01.14.14.01.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Jan 2021 14:01:13 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102d as permitted sender) client-ip=2607:f8b0:4864:20::102d;
Received: by mail-pj1-x102d.google.com with SMTP id my11so4491353pjb.1
        for <clang-built-linux@googlegroups.com>; Thu, 14 Jan 2021 14:01:13 -0800 (PST)
X-Received: by 2002:a17:90a:6ba4:: with SMTP id w33mr7202654pjj.32.1610661672195;
 Thu, 14 Jan 2021 14:01:12 -0800 (PST)
MIME-Version: 1.0
References: <20210114211840.GA5617@linux-8ccs> <20210114215416.993167-1-maskray@google.com>
In-Reply-To: <20210114215416.993167-1-maskray@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 14 Jan 2021 14:01:01 -0800
Message-ID: <CAKwvOdnG8VP2n0E5UiM+txxN6SJp-MOMfNqawqtrCi04BettHg@mail.gmail.com>
Subject: Re: [PATCH v2] module: Ignore _GLOBAL_OFFSET_TABLE_ when warning for
 undefined symbols
To: Fangrui Song <maskray@google.com>, Jessica Yu <jeyu@kernel.org>
Cc: LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Sam Ravnborg <sam@ravnborg.org>, 
	Marco Elver <elver@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Y8Aex8dp;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102d
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

On Thu, Jan 14, 2021 at 1:54 PM 'Fangrui Song' via Clang Built Linux
<clang-built-linux@googlegroups.com> wrote:
>
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

Thanks for the patch.

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

Jessica, would you mind adding when applying:

Cc: <stable@vger.kernel.org>

as I suspect we might want this fixed in stable tree's branches, too.
It might of interest to add:

Link: https://sourceware.org/bugzilla/show_bug.cgi?id=27178

too.

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
> +{
> +       /* On x86, PIC code and Clang non-PIC code may have call foo@PLT. GNU as
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
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnG8VP2n0E5UiM%2BtxxN6SJp-MOMfNqawqtrCi04BettHg%40mail.gmail.com.
