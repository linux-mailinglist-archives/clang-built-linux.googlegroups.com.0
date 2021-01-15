Return-Path: <clang-built-linux+bncBCS7XUWOUULBB57DQ6AAMGQEO5JOPDI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x63e.google.com (mail-ej1-x63e.google.com [IPv6:2a00:1450:4864:20::63e])
	by mail.lfdr.de (Postfix) with ESMTPS id ED4892F85BA
	for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 20:50:15 +0100 (CET)
Received: by mail-ej1-x63e.google.com with SMTP id jg11sf3378439ejc.23
        for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 11:50:15 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610740215; cv=pass;
        d=google.com; s=arc-20160816;
        b=YK8ZkLewWV0poLvNeZo0o9rhF9h0JgwO50zXmaFvueN5Y1BlLfxUR2n7ao9osW+1uE
         groGN6UQLedTOahiToWb4ozdC6tc33A4tm/OJjM3/RSlRib1oVxzEIuae4JiGns1b1bx
         HRDFFRwdR83MTfZ8NGktpnT+CZjWy7ogC2NGHwj73rgt3Wmft/bghjsaCvud1zcLXjFY
         uqCqJqDW04aQrEv0ix6nJUK6c02AdV1E5wJsHxHtU3BCrIIHeRZ7yZzSDd3aam1XP5ot
         bnGOpkzfUYUQGKfLYasqBA4ayPWxBq+pfuXAgb9j/2SyJjqfPHb4ENVOZfj5EfN6ied8
         yXLg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ERKyZGVqlQRzGe3qFkafN7O6uNmaM0cquy98v1WW80k=;
        b=k+o5RkNt8Z+1IgsVvo0TLwiQKf8VxPfFcfUYlDNEGwd/dqh02CHi/wr2vKlM3viWfD
         8P2/61tQIyBJis41L4YL8uACUBID7lR5NVVVS9utatbV3u4ShAf5ytrFJqUNzBPZN4Mu
         afh5FL5RlRog8GqwGjIe5fwC77xHQfLtgiT3M/ZOsDeu0Qf7yFjrMLuNoC8rnXOO8P7/
         n2gcm2u+t8qkxXihNOiAd+jPNthxo1Qx3cE/ccRqZHPKc8mvQZQZz3ebcpX8BjVUL4nx
         JL5jDvMaQc1DNuQpYpxcccsJrS07t+xtC8rtJZjvhb6xoGB0CJ/1apNIuyNifV1nPgJ+
         YgNQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=XWKvrIeT;
       spf=pass (google.com: domain of maskray@google.com designates 2a00:1450:4864:20::12f as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=ERKyZGVqlQRzGe3qFkafN7O6uNmaM0cquy98v1WW80k=;
        b=Dqy0B7zCuglWCjKo+gx7F7wY043WviM6z5s3qzK21Jb+Uktj8qB7HLATLMCx+0YG80
         PhepuH9Lxjz1jn002/La5wOyMz5PlcJJdfuH5sx6ObpZ02D4CPZfdkhHiWBfqLczdKFm
         frHj4nLe+mru6Mm25G3ewOk9F7T3llH0PGHa6Sm/WatMGmCWWB0N2o3Lsp1/dsn9PbHz
         RofdhAnhHugZDlEfGsPdkPUYNU2HYqGnSGF+/xI3+HTCQiHtjdjRwMTyK9nFS2KrGJdK
         cJlT4Ged/y143aiv/NcSLkOU1npV2YjAo3GkFRzSWv+ypSobL+fFBUyKfvElkxLrkuj7
         0A9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ERKyZGVqlQRzGe3qFkafN7O6uNmaM0cquy98v1WW80k=;
        b=RzoUXnwrDXxwSKUIK4aQ6aI7fGRA8Ckxj/euF/txd6QiJ3exaaW9dt+faVOqyJYYPR
         PpMlw/SpypL/WHmPlf+geJ0q5+lXF+0/UKQvEt+ktbSz+98ZVB7UznmKYkbutR9lbMgA
         tFs29xruwfX9gMUh5qwkYXzYZTusNBmhZN/ooJRWGPlm4/G5F6ubN0JvtCenbVk6ziLE
         or1rumBBW12wHtKcXtUC10BhYlPIiBSjqJKsLUXSqr/8TBteMpvARsocf3V+Xj+GDm5F
         rMT4s1aeAJoOkFPV6ON7SBMuzQIoV/cAhKRRnSTC2LEtYSosrB8jP7+2KOLAJsM2H0ah
         tgOw==
X-Gm-Message-State: AOAM533vRaefM3j2BWYK6iFcxAfbKsM/Wzj8Puw1URR7vS0t8O/e9WXa
	7a72ZAhLc72wiD2eYKj6xoA=
X-Google-Smtp-Source: ABdhPJwnmS84Xr/9dM0mGFieFwTBP5RIXlXzB79WG+euw2cB4gEPR2LD0zyAO9dHlcWRRcdCDhEVyw==
X-Received: by 2002:aa7:dd17:: with SMTP id i23mr10862831edv.14.1610740215689;
        Fri, 15 Jan 2021 11:50:15 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:1ba9:: with SMTP id r9ls2438099ejg.0.gmail; Fri, 15
 Jan 2021 11:50:14 -0800 (PST)
X-Received: by 2002:a17:907:20a7:: with SMTP id pw7mr2567403ejb.283.1610740214868;
        Fri, 15 Jan 2021 11:50:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610740214; cv=none;
        d=google.com; s=arc-20160816;
        b=V/pr9aMaBvaBWNRMroBYK2pQfZ8H0m+81y/Kig0ojwI8QH9yfD5gXWqnFl3V2NPj3K
         AJ8Ds+fn/8Ouixf2oYQcrazzhRZxE/KV45ZVyWRQuG17FPXNEvmUo7VMMiAc+vP6g9Tx
         ZsoDmBGXpsjtNL2j9jj/BlXomF7Wonx3L8Lwsa5NFoG6r2SWGMmAKWppP+UiVqEGbCXa
         lqf1lWPDBPBADE8HELaGqLX5uaUEtmEoVeFfh5nEQzcGcUKITtMrrUASPkPHniAEyW3v
         6W09Q+iwydCgIFaec3EC7OTih3vjaUN0ob755UuPctYuyux/Nfev8FQdUIEqcxrTEsq9
         pnCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=PnPuJYU4PXQYlGf79G8ijZzEVP+6toQVVVmd55UETSI=;
        b=TfxcZc+OqwVAq6VfytIcxm70KeYq3bTmXDmGPTX9/tPrd5IlLZSSRBEV3+x8pFa+fV
         dSSNipaHfGUjVkUm3XvxdvIP8w+kwJyCvrEnrXr2GbvTX/PEmO8EEs2JK+BssrxI+C+o
         lrGsITCGnQPcBZ6ntQMxPS9pfyaqHKQaLuGzmBcokQZIDYlxUAt1bxoX5iuY6w2h/1ag
         KZgl/JcFRTe4tYMuLU93CEj832Yd01WCWEjTF8BeHBgyKiCxJNy5PsLBOQwsLrtGVrsv
         bYkazV9/PzOF0BEQHCD1xRa82T3DQHhNSwbVX6O2NRpntqqJNIaumlS8UV4BzXWLGx9J
         JKKw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=XWKvrIeT;
       spf=pass (google.com: domain of maskray@google.com designates 2a00:1450:4864:20::12f as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com. [2a00:1450:4864:20::12f])
        by gmr-mx.google.com with ESMTPS id f26si459403ejx.0.2021.01.15.11.50.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Jan 2021 11:50:14 -0800 (PST)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2a00:1450:4864:20::12f as permitted sender) client-ip=2a00:1450:4864:20::12f;
Received: by mail-lf1-x12f.google.com with SMTP id x20so14836317lfe.12
        for <clang-built-linux@googlegroups.com>; Fri, 15 Jan 2021 11:50:14 -0800 (PST)
X-Received: by 2002:ac2:593a:: with SMTP id v26mr4310238lfi.591.1610740214143;
 Fri, 15 Jan 2021 11:50:14 -0800 (PST)
MIME-Version: 1.0
References: <20210114211840.GA5617@linux-8ccs> <20210114215416.993167-1-maskray@google.com>
 <CANpmjNOrD76O2_Zpwo5RJ2d12gczuQpG9bJkXYLY_sOVeEVZGQ@mail.gmail.com>
In-Reply-To: <CANpmjNOrD76O2_Zpwo5RJ2d12gczuQpG9bJkXYLY_sOVeEVZGQ@mail.gmail.com>
From: =?UTF-8?B?J0bEgW5nLXJ1w6wgU8OybmcnIHZpYSBDbGFuZyBCdWlsdCBMaW51eA==?= <clang-built-linux@googlegroups.com>
Date: Fri, 15 Jan 2021 11:50:02 -0800
Message-ID: <CAFP8O3Jv23Vztn0puyXVDtpqAN9sHKd6PdHGUdzA5q7v-dmp4w@mail.gmail.com>
Subject: Re: [PATCH v2] module: Ignore _GLOBAL_OFFSET_TABLE_ when warning for
 undefined symbols
To: Marco Elver <elver@google.com>
Cc: LKML <linux-kernel@vger.kernel.org>, Jessica Yu <jeyu@kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Sam Ravnborg <sam@ravnborg.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=XWKvrIeT;       spf=pass
 (google.com: domain of maskray@google.com designates 2a00:1450:4864:20::12f
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: =?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>
Reply-To: =?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>
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

On Thu, Jan 14, 2021 at 11:04 PM Marco Elver <elver@google.com> wrote:
>
> On Thu, 14 Jan 2021 at 22:54, Fangrui Song <maskray@google.com> wrote:
> > clang-12 -fno-pic (since
> > https://github.com/llvm/llvm-project/commit/a084c0388e2a59b9556f2de0083=
333232da3f1d6)
> > can emit `call __stack_chk_fail@PLT` instead of `call __stack_chk_fail`
> > on x86.  The two forms should have identical behaviors on x86-64 but th=
e
> > former causes GNU as<2.37 to produce an unreferenced undefined symbol
> > _GLOBAL_OFFSET_TABLE_.
> >
> > (On x86-32, there is an R_386_PC32 vs R_386_PLT32 difference but the
> > linker behavior is identical as far as Linux kernel is concerned.)
> >
> > Simply ignore _GLOBAL_OFFSET_TABLE_ for now, like what
> > scripts/mod/modpost.c:ignore_undef_symbol does. This also fixes the
> > problem for gcc/clang -fpie and -fpic, which may emit `call foo@PLT` fo=
r
> > external function calls on x86.
> >
> > Note: ld -z defs and dynamic loaders do not error for unreferenced
> > undefined symbols so the module loader is reading too much.  If we ever
> > need to ignore more symbols, the code should be refactored to ignore
> > unreferenced symbols.
> >
> > Reported-by: Marco Elver <elver@google.com>
> > Link: https://github.com/ClangBuiltLinux/linux/issues/1250
> > Signed-off-by: Fangrui Song <maskray@google.com>
>
> Tested-by: Marco Elver <elver@google.com>
>
> Thank you for the patch!
>
> > ---
> >  kernel/module.c | 20 ++++++++++++++++++--
> >  1 file changed, 18 insertions(+), 2 deletions(-)
> > ---
> > Changes in v2:
> > * Fix Marco's email address
> > * Add a function ignore_undef_symbol similar to scripts/mod/modpost.c:i=
gnore_undef_symbol
> >
> > diff --git a/kernel/module.c b/kernel/module.c
> > index 4bf30e4b3eaa..278f5129bde2 100644
> > --- a/kernel/module.c
> > +++ b/kernel/module.c
> > @@ -2348,6 +2348,20 @@ static int verify_exported_symbols(struct module=
 *mod)
> >         return 0;
> >  }
> >
> > +static int ignore_undef_symbol(Elf_Half emachine, const char *name)
>
> Why not 'bool' return-type?

Will use bool and false in v3.

> > +{
> > +       /* On x86, PIC code and Clang non-PIC code may have call foo@PL=
T. GNU as
>
> Not sure if checkpatch.pl warns about this, but this multi-line
> comment does not follow the normal kernel-style (see elsewhere in
> file):

It doesn't warn about this. (The commit description warning cannot be
fixed, even if I place the closing paren on the next line.)

% ./scripts/checkpatch.pl
v2-0001-module-Ignore-_GLOBAL_OFFSET_TABLE_-when-warning-.patch
WARNING: Possible unwrapped commit description (prefer a maximum 75
chars per line)
#8:
https://github.com/llvm/llvm-project/commit/a084c0388e2a59b9556f2de00833332=
32da3f1d6)

total: 0 errors, 1 warnings, 32 lines checked

NOTE: For some of the reported defects, checkpatch may be able to
      mechanically convert to the typical style using --fix or --fix-inplac=
e.

v2-0001-module-Ignore-_GLOBAL_OFFSET_TABLE_-when-warning-.patch has
style problems, please review.

NOTE: If any of the errors are false positives, please report
      them to the maintainer, see CHECKPATCH in MAINTAINERS.

> /*
>  * ...
>  */
>
> > +        * before 2.37 produces an unreferenced _GLOBAL_OFFSET_TABLE_ o=
n x86-64.
> > +        * i386 has a similar problem but may not deserve a fix.
> > +        *
> > +        * If we ever have to ignore many symbols, consider refactoring=
 the code to
> > +        * only warn if referenced by a relocation.
> > +        */
> > +       if (emachine =3D=3D EM_386 || emachine =3D=3D EM_X86_64)
> > +               return !strcmp(name, "_GLOBAL_OFFSET_TABLE_");
> > +       return 0;
> > +}
> > +
> >  /* Change all symbols so that st_value encodes the pointer directly. *=
/
> >  static int simplify_symbols(struct module *mod, const struct load_info=
 *info)
> >  {
> > @@ -2395,8 +2409,10 @@ static int simplify_symbols(struct module *mod, =
const struct load_info *info)
> >                                 break;
> >                         }
> >
> > -                       /* Ok if weak.  */
> > -                       if (!ksym && ELF_ST_BIND(sym[i].st_info) =3D=3D=
 STB_WEAK)
> > +                       /* Ok if weak or ignored.  */
> > +                       if (!ksym &&
> > +                           (ELF_ST_BIND(sym[i].st_info) =3D=3D STB_WEA=
K ||
> > +                            ignore_undef_symbol(info->hdr->e_machine, =
name)))
> >                                 break;
> >
> >                         ret =3D PTR_ERR(ksym) ?: -ENOENT;
> > --
> > 2.30.0.296.g2bfb1c46d8-goog
> >



--=20
=E5=AE=8B=E6=96=B9=E7=9D=BF

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAFP8O3Jv23Vztn0puyXVDtpqAN9sHKd6PdHGUdzA5q7v-dmp4w%40mai=
l.gmail.com.
