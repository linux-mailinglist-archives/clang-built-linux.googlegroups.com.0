Return-Path: <clang-built-linux+bncBC2ORX645YPRBXVHZCDQMGQEHGYBQSI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23c.google.com (mail-oi1-x23c.google.com [IPv6:2607:f8b0:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id 8432A3CBFA1
	for <lists+clang-built-linux@lfdr.de>; Sat, 17 Jul 2021 01:18:56 +0200 (CEST)
Received: by mail-oi1-x23c.google.com with SMTP id f205-20020acacfd60000b02901f424a672b7sf7285929oig.18
        for <lists+clang-built-linux@lfdr.de>; Fri, 16 Jul 2021 16:18:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626477535; cv=pass;
        d=google.com; s=arc-20160816;
        b=wm+3ZiE8hPShTFSc1Iv0KxZDPDzbA0qIBHJyOdMfxYca+BSm7wli8NgG+Fjfkx3pev
         ne8jr9ZaqhcoeXAdiy/TSgq9LsST0gvncbZP8G8nF3JlJYWQ6LiUhFTB+4RDlN0J3YVA
         uQNjjYUm9TVSAFDy6tDMUD3KJYpjvisDAQsLUnU69Ltfx9n6DCwTC3v4e9K/fpBL4Ljg
         JOxU5is+msErvcU//rG+XWU/ZAvAqHvmSvEu3Bde3jyvf7/QCfPBsQve46kVbPP7ccOE
         /VYDlrTdoQP5ZZBaGdBlkB1QTWPgVDfpBrTV71VoPlFI3gtYTvBM3uOYIMwRuejEkEDY
         edVg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=W4Iz9b9/kRZSV2Q3UkGgtfJ791DlkJVus3sVSF179M4=;
        b=r7anEjLD7Oq6ARqbfDgf4Q8vazAd4C+aYiN6vQRu6Nlbc3CNO7Xl86D4QzOIIIcc/T
         5QwMayNF4ne834+04doxtYAmFABv5aaRMKJtnKlHyBPoj+J0TB2NlZYKzOOyZKJyvtHC
         cvnbbBHKWN5sVz6qP/DrVtAtW9rtGwINqXESSsAmXenGkd/UdVsNEIEQjlefufK6YK2L
         1omav/DOszgtMxN8xZF1OOX8AMN4oaGzoYz+F/xSyLuckT7Kw9woOso639nXDhjP/utF
         yzWQMZd8dmCW20V589oI/z/stvo5JFDkcyfJWWgGBPvFG/LgzMpExHCtKk2+8IaB0i2C
         7N1w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=KSymXRh0;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::b34 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=W4Iz9b9/kRZSV2Q3UkGgtfJ791DlkJVus3sVSF179M4=;
        b=k7t+znzhy+M2XAaNQ2GogxHIIIxGn+1vavN1aoMSkLgbV/cUyiIZjFt4vnuOhuVUgr
         bPJsVx4kgLGD5ROqDFehQRw/He2EeJ6oGUXf7IILN7HdrqsSm0VzYq92dD59ktev02/w
         gM/aIz5r8SctV988uTrujiLJE0mtkbSSc58PqwnFtsEuJo6dP+Xd9iHjc0T1Cn7bJeUU
         Doy5Pd93J/xyZP2fNYm00KW0sSgh2hUV2GQGZuGRCqskMNDaNhBTWP4g79+IvldWIUW+
         qC31125Xrg0lhmY/JEr3JXnWhbJMgPo1mFl/q7Dyo5JYRd0OSN/sP/Sg+PGX1GPzH3ma
         2+iA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=W4Iz9b9/kRZSV2Q3UkGgtfJ791DlkJVus3sVSF179M4=;
        b=Qv5I2gOdRlLDad0P4H1DWrWKhyju+GV1zUCf8NBqtX/27TQTHuLj/Z8rhMKlLfm2eu
         v25pLpnKGRscysGv1n+aIDgnAIHfnto8xgtgVuP67QNc7C4j3SFV6tycxmCpDwd9DOap
         aNUEdpR/XEOemV2PCPm8lsuV2CyVFnE+BJzKHVuDFZqUkIku2dI10MYGxFxXYJgEzWiy
         xinG3d+dKvbzNrBCSX8P2dpEECrX64lHv9s35BOSK+qb5pUsxwfJf4Jld6KiYs+VHFzH
         LaEKEtqIB11QmFd+0KOsVZDhzqtPzfJ8Mu0rOZTklENhaHqu/qhJo8Q/iXPptKkELZTT
         0/wg==
X-Gm-Message-State: AOAM5305x2L3KzBZYVgmAHAmylbSCTf33eXjRNB7uzcm2fRsyMQAQYp5
	5rIgd9M3Bseo8SeO2cAjcxA=
X-Google-Smtp-Source: ABdhPJzdh0rmTXoPy5R8kpgvUbhGySKMHy686/PfU2fn3RurHuW77zWbWEnQHMzkAAUwrN3fYtbdQQ==
X-Received: by 2002:a9d:8ac:: with SMTP id 41mr9750805otf.170.1626477535040;
        Fri, 16 Jul 2021 16:18:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:5a83:: with SMTP id o125ls5191636oib.7.gmail; Fri, 16
 Jul 2021 16:18:54 -0700 (PDT)
X-Received: by 2002:a05:6808:138f:: with SMTP id c15mr9803671oiw.170.1626477534717;
        Fri, 16 Jul 2021 16:18:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626477534; cv=none;
        d=google.com; s=arc-20160816;
        b=CykvZt0xnwwiWaZJf4/Daa76fT2BSy7hqWt49IUjZadQOuKpcTBnGRlkXjAq1dJa2u
         fRvmlBQKLPlyrtsOi2mr1FeBhp2786yorXBHUZZ/EuFXS3MMSXEOZ1aSLoZfDNSO3wL1
         7dSp+qcSKc6KVIgU1kuHWeLCjwQo+SR04hfaA14segU72RKinl0c/+8R2+qdAfipJYJD
         qP+aGzNJjy+K6nF4cGfQKMa+POtZc7rwAXVyB8eJr7Mvr1/r/zVBdqsUwRnBGUs6VVT1
         u/vM6rxLYZYowd4RymtqK/rCLJKvC9UbY50/mR4N9y1ApkOMZgVJZZzQKKzFs1uXd/AG
         6DYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=LCegWa0EbR5E+H26lAI/gNXNrN/GZQPQ9Xz7Y1nEaK0=;
        b=ftJXWHTcBC15qeZVBGrIhUQQr4iLPomlN1ESyopMkv6cXDRd+rDRVFKMy6WGL1g6Wb
         VY0vubA0euNY5AucqEmoKK3Z6D/d8d7uQ4lv80vSwpI9j+zlA0P3kdpoMUveaOp6EZVW
         y7GR8WS0AISB3CnMdzH7V+ghq5KasLsdU/zuwaUOKQ42xAc4fdWnYKphUorJdsXLHjCv
         1fv9bFgBt0YkBNueO5msQyn7xIyYr1ArnM1LPYt8dbB4Lbu/hJyWWm7+3PzbR0R6EpQD
         Jehrj+7WEndElgFk1/gLnu+zihMr40cVgzQFdpRGSCdRiKfqC2aYBUOk+Skl2sBF+8h7
         tMlg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=KSymXRh0;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::b34 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb34.google.com (mail-yb1-xb34.google.com. [2607:f8b0:4864:20::b34])
        by gmr-mx.google.com with ESMTPS id j26si1731945ooj.0.2021.07.16.16.18.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Jul 2021 16:18:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::b34 as permitted sender) client-ip=2607:f8b0:4864:20::b34;
Received: by mail-yb1-xb34.google.com with SMTP id v189so17451647ybg.3
        for <clang-built-linux@googlegroups.com>; Fri, 16 Jul 2021 16:18:54 -0700 (PDT)
X-Received: by 2002:a25:3787:: with SMTP id e129mr15404370yba.459.1626477534089;
 Fri, 16 Jul 2021 16:18:54 -0700 (PDT)
MIME-Version: 1.0
References: <20210716204545.3536354-1-samitolvanen@google.com> <20210716225245.67939-1-alobakin@pm.me>
In-Reply-To: <20210716225245.67939-1-alobakin@pm.me>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 16 Jul 2021 16:18:42 -0700
Message-ID: <CABCJKucqW6a8h55tUQ072QMZxzB5O4djjF+TN1-Btb=TY8KE=Q@mail.gmail.com>
Subject: Re: [PATCH] kbuild: Fix TRIM_UNUSED_KSYMS with LTO_CLANG
To: Alexander Lobakin <alobakin@pm.me>
Cc: Kees Cook <keescook@chromium.org>, Masahiro Yamada <masahiroy@kernel.org>, 
	Michal Marek <michal.lkml@markovi.net>, Nathan Chancellor <nathan@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, linux-kbuild <linux-kbuild@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=KSymXRh0;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::b34
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

Hi Al,

On Fri, Jul 16, 2021 at 4:00 PM Alexander Lobakin <alobakin@pm.me> wrote:
>
> From:   Sami Tolvanen <samitolvanen@google.com>
> Date:   Fri, 16 Jul 2021 13:45:45 -0700
>
> > With CONFIG_LTO_CLANG, we currently link modules into native
> > code just before modpost, which means with TRIM_UNUSED_KSYMS
> > enabled, we still look at the LLVM bitcode in the .o files when
> > generating the list of used symbols. As the bitcode doesn't
> > yet have calls to compiler intrinsics and llvm-nm doesn't see
> > function references that only exist in function-level inline
> > assembly, we currently need a whitelist for TRIM_UNUSED_KSYMS to
> > work with LTO.
> >
> > This change moves module LTO linking to happen earlier, and
> > thus avoids the issue with LLVM bitcode and TRIM_UNUSED_KSYMS
> > entirely, allowing us to also drop the whitelist from
> > gen_autoksyms.sh.
> >
> > Link: https://github.com/ClangBuiltLinux/linux/issues/1369
> > Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> > ---
> >  scripts/Makefile.build    | 25 ++++++++++++++++++++++++-
> >  scripts/Makefile.lib      |  7 +++++++
> >  scripts/Makefile.modfinal | 21 ++-------------------
> >  scripts/Makefile.modpost  | 22 +++-------------------
> >  scripts/gen_autoksyms.sh  | 12 ------------
> >  5 files changed, 36 insertions(+), 51 deletions(-)
> >
> > diff --git a/scripts/Makefile.build b/scripts/Makefile.build
> > index 10b2f2380d6f..80e0fa810870 100644
> > --- a/scripts/Makefile.build
> > +++ b/scripts/Makefile.build
> > @@ -202,6 +202,7 @@ sub_cmd_record_mcount =                                   \
> >       if [ $(@) != "scripts/mod/empty.o" ]; then      \
> >               $(objtree)/scripts/recordmcount $(RECORDMCOUNT_FLAGS) "$(@)";   \
> >       fi;
> > +/
>
> Seems like a leftover or a random typo here.

Oops, indeed.

> >  recordmcount_source := $(srctree)/scripts/recordmcount.c \
> >                   $(srctree)/scripts/recordmcount.h
> >  else
> > @@ -271,12 +272,34 @@ $(obj)/%.o: $(src)/%.c $(recordmcount_source) $$(objtool_dep) FORCE
> >       $(call if_changed_rule,cc_o_c)
> >       $(call cmd,force_checksrc)
> >
> > +ifdef CONFIG_LTO_CLANG
> > +# Module .o files may contain LLVM bitcode, compile them into native code
> > +# before ELF processing
> > +quiet_cmd_cc_lto_link_modules = LTO [M] $@
> > +cmd_cc_lto_link_modules =                                            \
> > +     $(LD) $(ld_flags) -r -o $@                                      \
> > +             $(shell [ -s $(@:.lto.o=.o.symversions) ] &&            \
> > +                     echo -T $(@:.lto.o=.o.symversions))             \
> > +             --whole-archive $^
> > +
> > +ifdef CONFIG_STACK_VALIDATION
> > +# objtool was skipped for LLVM bitcode, run it now that we have compiled
> > +# modules into native code
> > +cmd_cc_lto_link_modules += ;                                         \
> > +     $(objtree)/tools/objtool/objtool $(objtool_args)                \
>
> Now $(part-of-module) inside $(objtool_args) doesn't get expanded
> properly, because previously it was being called on x.ko, and now
> it's being called on x.lto.o. $(basename $@) returns "x.lto" instead
> of "x", and Make doesn't find "x.lto.o" in $(real-objs-m).
>
> An example of objtool args dump:
>
>   LTO [M] fs/btrfs/btrfs.lto.o
> Call: ./tools/objtool/objtool orc generate --no-fp --no-unreachable --retpoline --uaccess fs/btrfs/btrfs.lto.o
> fs/btrfs/btrfs.lto.o: warning: objtool: static_call: can't find static_call_key symbol: __SCK__might_resched

Curiously I didn't see objtool warnings when building allmodconfig,
but you're obviously correct here. I'll fix this in v2.

> As can be seen, objtools command line no longer contains "--module".
> And this warning about "can't find static_call_key" can appear only
> in case of !module -> no -m|--module param was given.
>
> As a result, modules get broken and the kernel panics after loading
> initramfs.

Thanks for taking a look!

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKucqW6a8h55tUQ072QMZxzB5O4djjF%2BTN1-Btb%3DTY8KE%3DQ%40mail.gmail.com.
