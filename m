Return-Path: <clang-built-linux+bncBDYJPJO25UGBBTNE7L3AKGQESQZLWKQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x437.google.com (mail-pf1-x437.google.com [IPv6:2607:f8b0:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id B4F5B1F1FF5
	for <lists+clang-built-linux@lfdr.de>; Mon,  8 Jun 2020 21:32:30 +0200 (CEST)
Received: by mail-pf1-x437.google.com with SMTP id x123sf12686482pfc.13
        for <lists+clang-built-linux@lfdr.de>; Mon, 08 Jun 2020 12:32:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591644749; cv=pass;
        d=google.com; s=arc-20160816;
        b=qZA0O0xypnF73dYINCE2ohIRkJluVN+gUXA9FKy1LMq9n5q3I/IY3NDn4NbmQR+3Kz
         K05gZeXapSzPEhcHuwDVcrSmpnhFlNwTS5oLA5VfZ2Dm251x3TuE0wxT5es8ovJT1BV9
         aKOP/bqsQnz6lbBXJEOFQH4twVYbRxOKVgdx0ZfugiKBi5iGJNfldGuhDlSuLfl3ePfG
         Kz+kyeNk1MDbDPU7kYlAfqpxSt2tDoJsf5XpYma/TMNl7GARmlB9HYgQFjl6SJpnF67Q
         5Oz1bnNSEoKQ9ICVLXyRHxoscOUuHor776xPSF633EHyKislEtNYwUZqSP3JPEdKsYLS
         TcDQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=ahZBZahLRrlbliKtmujVYe33sYvTMNh9yvqlMMJOXL0=;
        b=JGL36a3Z8C9YKo6XwIRjiFV/seJHu1J1B4SoQMeILI4Pjvo2jhcoAdWwGXcif0GW3C
         +im8c1RilHiCv7srm+50b8Pi6NKOQ0j63QSjxR7bzmxzVufKyUxvunwmdac1jRgjauE9
         qPdY6BHEvAYHkOFwT1Sh4RQmf/qRjTZK3L36KT99EgPUTLRjkYWgHxE8cSN4iI6m6VJj
         qwc1nqqK/pfNuARoyEFud5kOnyXwpmXJvcxy9X7AnGHTu+PbpU3U4nAuTLqJdZNG6W9+
         J44PcOixJlRfIvpodHSyQ7vYkXIlYikETfnimAtRPttV7gnJIwdoTu1XSghfc1MMvAjy
         ObVQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=hx5uX0GO;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ahZBZahLRrlbliKtmujVYe33sYvTMNh9yvqlMMJOXL0=;
        b=OEvz0ZJj2JQROnEZIXMvwswEsEX9S6Up6Yj4zWzE+jQdFoZQN7KmkDonyfZtiT9AwC
         NavDK3EiW185/2vnz25Idrai6PU/ZCU3mSy0me/Bl7EBhtY30i9KvUJzCziw2qXRDvzU
         jgpBBuL3icbkzjSBiynr3KzJCLPgJERgl9EIbBEozRMoEWDadw8DEYyF7qArrL/tjas3
         Si//aL02lvD0B2FZaOzQ3sDPQP8ZpToW/6RabRDp5SuZVNoYQeT/tKA92rrL8bEI+Sgl
         mtbAIikFEpyjuoq9HQIXXMoSKsMVB5mXOQCb6nxNi3p5/KoqasKLd/f93GBKGvlawORu
         6Wjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ahZBZahLRrlbliKtmujVYe33sYvTMNh9yvqlMMJOXL0=;
        b=Hu7ueBSKi/NO6Ms34KO3f7iu41pqDeGK8nzsDM0DWTjuRdFYutUc4TXtFOSWs/l5Ia
         IdIArdpLV02CArybScliuaiMg8tVRoj/uGm78/xCV4iaOQByMO4Vsf5nzbnc9alT6tli
         DinoL5F+eoa/MucxPJmwWy25vc/m4ixswlqGvTBzMRxpaTs3X22Mt8azBSWApEPlF6Vs
         QJgYaswm0nG2b0DpnaI5hbICi+yTprX5qaQ//NfvbiTtmHAGJzlu950m0iTsn/phlzvd
         46h+Kc7Q+RRdskx5iE3V7KWnYyNr9qIzJLcg6Gph9Y5Z43/uwQf5nfuicMmpwui4oHF+
         1dOw==
X-Gm-Message-State: AOAM530tdRxJjE0Ux15BuLnFoD9CxlTVPiGrxelVc4UNXdcRiBAQD1jE
	f/8KggExZctgDvAziQpNl14=
X-Google-Smtp-Source: ABdhPJx2XtE0pyC7pu2/WFHKDPtPEgeoIDDoQblZ06XKo3nw28zNjFVNWc9ijUtNphRjHcXzpMotWw==
X-Received: by 2002:a17:902:710e:: with SMTP id a14mr281093pll.199.1591644749415;
        Mon, 08 Jun 2020 12:32:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:bc4a:: with SMTP id t10ls6492159plz.4.gmail; Mon, 08
 Jun 2020 12:32:29 -0700 (PDT)
X-Received: by 2002:a17:90a:20a2:: with SMTP id f31mr903157pjg.34.1591644748957;
        Mon, 08 Jun 2020 12:32:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591644748; cv=none;
        d=google.com; s=arc-20160816;
        b=jthyul3Sweti9UCeUr+wQis72TO5r+q4An9OurwZ7L9E4/NxKw6Q/tIz65kv5Oaa5i
         AFtj1AIp2tirG3kAdsf3rj9RnrcLJHXHCBQW8y/z25cXT9kILvkxQs6swirGn+4Tnv6S
         KBV3tu0nCdPLI/lUWivdqcp0scIOB3XmpMRHUvUBoIFQk1toliA9VRlEku9ylLNzIwmw
         CqC/ZhrHGSw5p371g7Zz4eVeQJnUvcK2zTzuKucrFFKrs57OgrMlhMmga9ATB3ThMypF
         48mZZnQQC6jkdjT+5Hv/5w88kkqMyyozrcacwy3pVUsW128Wa1Aic87fwlfyG1OVTMVZ
         jq7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=323ec8Wj5TktrH3HGRGVoazp/PSpRZRCk45QTvCE1Pc=;
        b=jB5/tEaQmGIMCnbPnCUURjdBwsrz+YPQ56bUZdCXG3JwuIlEM3VcBSHulI5NT5hcO3
         rzew+Pja09S/fyXeouQED6GjS2GB/VAF1OIG2SXJcPA+3rYt5l/QbcOviywNF3FGM9Kf
         XTUo7M9OuRoktot7AZ54/ID6LO3OMl9I9znmIoEtoCDaeYYaWYFwnXeq8Y0vZ5rm83ca
         LfdBiiCln+N1+7Slhes92mHnCNczwvN3+NeacZOFXro0tW76Z9WGzBlfFMjUCKFbaKB4
         Wimd6O2M0KXRnMhwDM8JEvRfdXNpj6P3pB+a1zlLfisMySSif41Kx5gs/l1Kl4zzXlxp
         1CGg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=hx5uX0GO;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id v185si396007pfv.2.2020.06.08.12.32.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 Jun 2020 12:32:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Received: by mail-pf1-x442.google.com with SMTP id j1so8819538pfe.4
        for <clang-built-linux@googlegroups.com>; Mon, 08 Jun 2020 12:32:28 -0700 (PDT)
X-Received: by 2002:a63:4f09:: with SMTP id d9mr20996380pgb.10.1591644748212;
 Mon, 08 Jun 2020 12:32:28 -0700 (PDT)
MIME-Version: 1.0
References: <20200608060407.GX12456@shao2-debian> <202006081144.933995E4@keescook>
 <20200608192828.GB987@lca.pw>
In-Reply-To: <20200608192828.GB987@lca.pw>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 8 Jun 2020 12:32:17 -0700
Message-ID: <CAKwvOdn6EVkYkjgsg6VOamR-QUQGAiL6=LwvrxHZsQ3Oj+SyoQ@mail.gmail.com>
Subject: Re: 0887a7ebc9 ("ubsan: add trap instrumentation option"): BUG:
 kernel hang in early-boot stage, last printk: early console in setup code
To: Qian Cai <cai@lca.pw>
Cc: Kees Cook <keescook@chromium.org>, kernel test robot <rong.a.chen@intel.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, LKP <lkp@lists.01.org>, 
	"Linus, Torvalds," <torvalds@linux-foundation.org>, Andrew Morton <akpm@linux-foundation.org>, 
	Linux Memory Management List <linux-mm@kvack.org>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=hx5uX0GO;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442
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

On Mon, Jun 8, 2020 at 12:28 PM Qian Cai <cai@lca.pw> wrote:
>
> On Mon, Jun 08, 2020 at 12:00:11PM -0700, Kees Cook wrote:
> > On Mon, Jun 08, 2020 at 02:04:08PM +0800, kernel test robot wrote:
> > > The issue seems due to the lack of "-fsanitize-undefined-trap-on-error" in clang.
> >
> > Hm? No, that's supported in Clang (at least as far back as Clang 9.)
> >
> > > Greetings,
> > >
> > > 0day kernel testing robot got the below dmesg and the first bad commit is
> > >
> > > https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
> > >
> > > commit 0887a7ebc97770c7870abf3075a2e8cd502a7f52
> > > Author:     Kees Cook <keescook@chromium.org>
> > > AuthorDate: Mon Apr 6 20:12:27 2020 -0700
> > > Commit:     Linus Torvalds <torvalds@linux-foundation.org>
> > > CommitDate: Tue Apr 7 10:43:44 2020 -0700
> > >
> > >     ubsan: add trap instrumentation option
> >
> > In the randconfig, I see CONFIG_UBSAN_TRAP is enabled with lots of other
> > UBSAN options. If you're not expecting the results, it's very likely the
> > false positives in UBSAN are going to do bad things. :) This is "working
> > as expected", as noted in the commit log quoted below.
> >
> > >
> > >     Patch series "ubsan: Split out bounds checker", v5.
> > >
> > >     This splits out the bounds checker so it can be individually used.  This
> > >     is enabled in Android and hopefully for syzbot.  Includes LKDTM tests for
> > >     behavioral corner-cases (beyond just the bounds checker), and adjusts
> > >     ubsan and kasan slightly for correct panic handling.
> > >
> > >     This patch (of 6):
> > >
> > >     The Undefined Behavior Sanitizer can operate in two modes: warning
> > >     reporting mode via lib/ubsan.c handler calls, or trap mode, which uses
> > >     __builtin_trap() as the handler.  Using lib/ubsan.c means the kernel image
> > >     is about 5% larger (due to all the debugging text and reporting structures
> > >     to capture details about the warning conditions).  Using the trap mode,
> > >     the image size changes are much smaller, though at the loss of the
> > >     "warning only" mode.
> > >
> > >     In order to give greater flexibility to system builders that want minimal
> > >     changes to image size and are prepared to deal with kernel code being
> > >     aborted and potentially destabilizing the system, this introduces
> > >     CONFIG_UBSAN_TRAP.  The resulting image sizes comparison:
> > >
> > >        text    data     bss       dec       hex     filename
> > >     19533663   6183037  18554956  44271656  2a38828 vmlinux.stock
> > >     19991849   7618513  18874448  46484810  2c54d4a vmlinux.ubsan
> > >     19712181   6284181  18366540  44362902  2a4ec96 vmlinux.ubsan-trap
> > >
> > >     CONFIG_UBSAN=y:      image +4.8% (text +2.3%, data +18.9%)
> > >     CONFIG_UBSAN_TRAP=y: image +0.2% (text +0.9%, data +1.6%)
> > >
> > >     Additionally adjusts the CONFIG_UBSAN Kconfig help for clarity and removes
> > >     the mention of non-existing boot param "ubsan_handle".
> >
> > If you're trying to _boot_ a randconfig, I suspect there are going to be
> > a lot of surprises with UBSAN (in any mode) enabled. Right now, likely the
> > least noisy of them all is UBSAN_BOUNDS, which was split out for fuzzers.
> >
> > FWIW, the dmesg appears to be catching a NULL pointer dereference
> > (enabled via CONFIG_UBSAN_MISC):
> >
> > [    0.047646] UBSAN: Undefined behaviour in drivers/acpi/acpica/tbfadt.c:459:37
> > [    0.047650] member access within null pointer of type 'struct acpi_table_fadt'
> > [    0.047655] CPU: 0 PID: 0 Comm: swapper Not tainted 5.6.0-11597-g7baf219982281 #1
> > [    0.047659] Call Trace:
> > [    0.047676]  dump_stack+0x88/0xb9
> > [    0.047684]  ? ubsan_prologue+0x21/0x46
> > [    0.047689]  ? ubsan_type_mismatch_common+0x188/0x19e
> > [    0.047695]  ? __ubsan_handle_type_mismatch_v1+0x45/0x4a
> > [    0.047701]  ? acpi_tb_create_local_fadt+0xaa/0x435
> > [    0.047706]  ? acpi_tb_parse_fadt+0x54/0xd4
> > [    0.047712]  ? acpi_tb_parse_root_table+0x192/0x1bf
> > [    0.047717]  ? acpi_table_init+0x3b/0x56
> > [    0.047721]  ? acpi_boot_table_init+0xf/0x6e
> > [    0.047726]  ? setup_arch+0x459/0x520
> > [    0.047732]  ? start_kernel+0x5e/0x3ba
> > [    0.047737]  ? secondary_startup_64+0xa4/0xb0
> >
> > I'm not sure how ACPI defines acpi_gbl_FADT though? There's no
> > dereference...
> >
> > 459:         if (acpi_gbl_FADT.header.length <= ACPI_FADT_V2_SIZE) {
> >
> >
> > BTW, this report only contained 1 actual dmesg. There were two files with
> > dmesg file names, but one of them was the gzipped reproduction steps again.
>
> No, it does not complain about a NULL pointer dereference but rather a
> member access within NULL pointer.
>
> # ./scripts/faddr2line vmlinux acpi_tb_create_local_fadt+0x104/0x6ec
> acpi_tb_create_local_fadt+0x104/0x6ec:
> acpi_tb_convert_fadt at drivers/acpi/acpica/tbfadt.c:459
> (inlined by) acpi_tb_create_local_fadt at drivers/acpi/acpica/tbfadt.c:388

There's an issue with the use of ACPI_OFFSET w/ UBSAN (member access
within NULL) that was previously reported; I'm working on patches now.
(replacing the use of ACPI_OFFSET w/ offsetof from linux/stddef.h).
Not sure if it's precisely the same issue, but looks quite like it.
https://lore.kernel.org/lkml/20200601231805.207441-1-ndesaulniers@google.com/



>
> Clang would report several of those,
>
> https://lore.kernel.org/lkml/CA6078C3-3489-40E4-B756-A0AF6DB3A3A5@lca.pw/
>
> There are many examples how to "fix" those.
>
> $ git log  --oneline --grep='member access within null pointer'
>
> Anyway, this line,
>
>         if (acpi_gbl_FADT.header.length <= ACPI_FADT_V2_SIZE) {
>
> acpi_gbl_FADT was defined in,
>
> .//include/acpi/acpixf.h:266:ACPI_GLOBAL(struct acpi_table_fadt, acpi_gbl_FADT);
>
> #ifdef DEFINE_ACPI_GLOBALS
> #define ACPI_GLOBAL(type,name) \
>         extern type name; \
>         type name
>
>
>
> #define ACPI_INIT_GLOBAL(type,name,value) \
>         type name=value
>
>
>
> #else
> #ifndef ACPI_GLOBAL
> #define ACPI_GLOBAL(type,name) \
>         extern type name
> #endif
>
>
>
> #ifndef ACPI_INIT_GLOBAL
> #define ACPI_INIT_GLOBAL(type,name,value) \
>         extern type name
> #endif
> #endif
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200608192828.GB987%40lca.pw.



--
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdn6EVkYkjgsg6VOamR-QUQGAiL6%3DLwvrxHZsQ3Oj%2BSyoQ%40mail.gmail.com.
