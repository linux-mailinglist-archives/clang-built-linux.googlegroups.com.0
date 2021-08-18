Return-Path: <clang-built-linux+bncBC2ORX645YPRBZOD6SEAMGQERZSP4LQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3d.google.com (mail-yb1-xb3d.google.com [IPv6:2607:f8b0:4864:20::b3d])
	by mail.lfdr.de (Postfix) with ESMTPS id E20903F077E
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 17:06:14 +0200 (CEST)
Received: by mail-yb1-xb3d.google.com with SMTP id d69-20020a25e6480000b02904f4a117bd74sf3109752ybh.17
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 08:06:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629299173; cv=pass;
        d=google.com; s=arc-20160816;
        b=ad1Mr/QCZSSSY3MFECIIOG+IeTUmsSf2aYgjhZW01OW1P0LMCVwb9uBtGTXckLLXEu
         +jP1WQ3QC7txPGc9WBt0LSOP2ytCdRciiene6ThUDmmrZX9cstdfW7bQ6LbMUPXc65e1
         jEVMw2NLoeFmQFJ1Pw8LlmUuXKFbhBHR0S/6Xj2Ux1mP4y9fQUTwWgXkTD0Auq4pAFsp
         s5DEE6dDaZ80sIaHlwa4zViha6U5q4f+/ddJIiN6rGk2G7N4AnvCEqa4pS38bUXnbAHc
         2HjFqn/BBNTZqED0qmBWjVFWj9KBxOhXCVos3cwLkEVeZNTF0jXpizLkzzMmxj8FNfLs
         JZgw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=cDVefr77krpK6KPbOZR2vKp+F9HBEvHB2VrLX6BlY50=;
        b=qZFGoNsDtnx4NUF5CcdDmkBzChBYbebCtqpzkfoJP9ePLgAY8slAtU5JyRKv1IOBRX
         h0k0RsDJo5mhfZYPtconSfvaOWoAuCvNEyCobGoZHhP9QmKwcr4BRoR6vex5pJcLu5IK
         ryf13NZ9IHu6gVWVEyQhF2x80Rs4NNSynXKJCuRO/8h564MMFUxChM9Okj5xy0E+IrqF
         PLjgIoDqtos3B++30/0n1eUE8HgEFLDTSfvsyn3eZHpBBJBxxMfQm/Ds+J0iFiUlYDGB
         Ile4EAe69KzLeo34yTXhUybinMjTAs4Q5abOWgRt4+CFU7GRfPFPU2GH/kr4oUxvS1dB
         0Iuw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ZVq8iO+u;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::b30 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cDVefr77krpK6KPbOZR2vKp+F9HBEvHB2VrLX6BlY50=;
        b=X0VYqX0UhMD2i4UjRE7+d3YsPHSDMPLoMJ0tQFn7m7BgFRcAki667sRZO2mmFXNQ59
         5I11agfTTeqjFveyvu6dvUqzrg1qs/t0iGa6FBKlkXOVp6RUeqXYEgg7ZrbPTY6j3b+L
         RSWj7oA1jV9t56BCAttIceE3noAl3CipeWsWgS/E3bWRLvChKqHEekswosEFrciXbj3B
         pZSDrhNapr6dERoO9fyA1irKYnTYTrTRuRKh+aXaXLWeQEMrGn2pNtl+boXV6VWqWRyJ
         5kIGvtYdIWOQSrnFNZqdQZYEflAwvbksce7DhwyETJJpMfvgPt8100sySTMqxtPyNsxR
         d++g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cDVefr77krpK6KPbOZR2vKp+F9HBEvHB2VrLX6BlY50=;
        b=g3dV17uVXoetdW+S5Xl9in7tAVVA/ZuJnOlnt5+VV+tpn8qlqTnUR4Q9f8YbiDxZno
         8EuGCMR0U/a2J0EWcq663aSzydJ//VmV4F1MxIyLGrCcGPbGe+8K+ZQ9gYviV2lOpGwD
         f+TA2WTwZBzlwW0Z4o5mdKv3fzI7D0eyOUIwGXV+UznVhudczmk4pPCycN6SQU0NT3Zb
         jiJY1NCG9PSaDSM8iKYW9A6H0+rf4lBb5WlMAK1/JDUrhL5OLTTL9uqi/fcefozLZBIf
         sfU4d/258WhBxXKLqa6uyK43CaUiHcTfEXIp+AygC+ZsNqW4UCMFTDjSX9gjsQJyL19T
         7vIw==
X-Gm-Message-State: AOAM531oUtJTV2e46ta8ZTevxkH4/x5B0ytO2AJip8h42jHrdWs+25j/
	rLe2cVeV+5Tvx/zLa7YI3OY=
X-Google-Smtp-Source: ABdhPJxZ54zLLrMWhBst5D7QzPdNEXyDi55ygrgl43sjzbzv6l9pWA/BpLtgjvYGDvFEaJBKFThMaA==
X-Received: by 2002:a25:aad2:: with SMTP id t76mr12449310ybi.18.1629299173829;
        Wed, 18 Aug 2021 08:06:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:c70c:: with SMTP id w12ls200682ybe.4.gmail; Wed, 18 Aug
 2021 08:06:13 -0700 (PDT)
X-Received: by 2002:a25:8447:: with SMTP id r7mr11947485ybm.277.1629299173331;
        Wed, 18 Aug 2021 08:06:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629299173; cv=none;
        d=google.com; s=arc-20160816;
        b=MgunUDVZtpSr/f9M7zPtIvuAULvs2cQh/UO9q6stQRS2rlrGVuDIwAolboPi7XFqOL
         Cl+SpRMeFiMwe3CmW7JH0R2vWooU9lrm9r8J0CL1D3d39ZyE9KIa07ITTsSKmoU8Oq99
         K2lvXn1vszV2v2dmtTD924I06PrdgQyjVeXORoAuZQOz56esthFcrpk2rbzpJskS58NA
         bIf+podtSgKMVevBZSK+U4EtBLvMo6HwnaqPmcle3l5Ek3fLrrCefMe/rQG0sdEfikm9
         aw/1OEI03IAVsnZW5etW8l4xXWJdu/5pBDWYa7dgmSgIGwvGc7qN9Wqg8unZ7oQ4Z5UK
         0ZXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=KYJwSm6eCcwSwyminZRoSw8P5cz5zWYev61l8HFaS3A=;
        b=jwVIdiY7LzWC6jU8jixWe6W7mkSUNmjybx8jHWn5tPMUqugyuJdgHhNabnuVjSAUfd
         Yr/8yY+AgYX5TaUwl/CZ1tAyEJp6XvsN6ZO//Gi+UElWorbVA4TiaLWKVDasA//Wxl6c
         mGOjKq7suWeGnCKkqUA7MRJkuo3xR6rT9RKJL8rQAP70cUV8UV0uJ8JhetR3S3sTW2+Y
         q0ezPca7ecP/77pEghhQnkDsmn1ZUl5JD5fHmMEeJAaKYWoIOriNBUsa+v/DQ2wtZoEN
         IKrhtkv+igF7KJ+3YBvvtF1hHat6SGQedZwIBlTyniGyGG4rryPL8A+yMC5Xy0Taifje
         PKOw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ZVq8iO+u;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::b30 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb30.google.com (mail-yb1-xb30.google.com. [2607:f8b0:4864:20::b30])
        by gmr-mx.google.com with ESMTPS id q62si29288ybc.4.2021.08.18.08.06.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Aug 2021 08:06:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::b30 as permitted sender) client-ip=2607:f8b0:4864:20::b30;
Received: by mail-yb1-xb30.google.com with SMTP id w17so5839585ybl.11
        for <clang-built-linux@googlegroups.com>; Wed, 18 Aug 2021 08:06:13 -0700 (PDT)
X-Received: by 2002:a25:cc52:: with SMTP id l79mr11563745ybf.459.1629299172676;
 Wed, 18 Aug 2021 08:06:12 -0700 (PDT)
MIME-Version: 1.0
References: <20210816180519.1021311-1-samitolvanen@google.com> <CAK7LNASAHN=-uj73Uwk10aXbsR8AkUM_P=3NX_dq2SiFTqUctg@mail.gmail.com>
In-Reply-To: <CAK7LNASAHN=-uj73Uwk10aXbsR8AkUM_P=3NX_dq2SiFTqUctg@mail.gmail.com>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 18 Aug 2021 08:06:01 -0700
Message-ID: <CABCJKudQhagwdb-UfGE2JQN8H29NSpMd5PgVoftJYRp5ZwpRrA@mail.gmail.com>
Subject: Re: [PATCH v4] kbuild: Fix TRIM_UNUSED_KSYMS with LTO_CLANG
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Kees Cook <keescook@chromium.org>, Michal Marek <michal.lkml@markovi.net>, 
	Alexander Lobakin <alobakin@pm.me>, Nathan Chancellor <nathan@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=ZVq8iO+u;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::b30
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

On Tue, Aug 17, 2021 at 7:34 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> On Tue, Aug 17, 2021 at 3:05 AM Sami Tolvanen <samitolvanen@google.com> wrote:
> >
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
> > Reviewed-by: Alexander Lobakin <alobakin@pm.me>
> > Tested-by: Alexander Lobakin <alobakin@pm.me>
> > ---
> > Changes in v4:
> > - Added .lto.o to targets to actually fix the use of if_changed.
> > - Replaced an unnecessary mod-prelink-ext with .lto.
> >
> > Changes in v3:
> > - Added missing FORCE.
> >
> > Changes in v2:
> > - Fixed a couple of typos.
> > - Fixed objtool arguments for .lto.o to always include --module.
> >
> > ---
> >  scripts/Makefile.build    | 28 +++++++++++++++++++++++++++-
> >  scripts/Makefile.lib      |  7 +++++++
> >  scripts/Makefile.modfinal | 21 ++-------------------
> >  scripts/Makefile.modpost  | 22 +++-------------------
> >  scripts/gen_autoksyms.sh  | 12 ------------
> >  5 files changed, 39 insertions(+), 51 deletions(-)
> >
> > diff --git a/scripts/Makefile.build b/scripts/Makefile.build
> > index 02197cb8e3a7..a6f43afd09bb 100644
> > --- a/scripts/Makefile.build
> > +++ b/scripts/Makefile.build
> > @@ -88,6 +88,10 @@ endif
> >
> >  targets-for-modules := $(patsubst %.o, %.mod, $(filter %.o, $(obj-m)))
> >
> > +ifdef CONFIG_LTO_CLANG
> > +targets-for-modules += $(patsubst %.o, %.lto.o, $(filter %.o, $(obj-m)))
> > +endif
> > +
> >  ifdef need-modorder
> >  targets-for-modules += $(obj)/modules.order
> >  endif
> > @@ -271,12 +275,34 @@ $(obj)/%.o: $(src)/%.c $(recordmcount_source) $$(objtool_dep) FORCE
> >         $(call if_changed_rule,cc_o_c)
> >         $(call cmd,force_checksrc)
> >
> > +ifdef CONFIG_LTO_CLANG
> > +# Module .o files may contain LLVM bitcode, compile them into native code
> > +# before ELF processing
> > +quiet_cmd_cc_lto_link_modules = LTO [M] $@
> > +cmd_cc_lto_link_modules =                                              \
> > +       $(LD) $(ld_flags) -r -o $@                                      \
> > +               $(shell [ -s $(@:.lto.o=.o.symversions) ] &&            \
> > +                       echo -T $(@:.lto.o=.o.symversions))             \
> > +               --whole-archive $(filter-out FORCE,$^)
> > +
> > +ifdef CONFIG_STACK_VALIDATION
> > +# objtool was skipped for LLVM bitcode, run it now that we have compiled
> > +# modules into native code
> > +cmd_cc_lto_link_modules += ;                                           \
> > +       $(objtree)/tools/objtool/objtool $(objtool_args) --module       \
> > +               $(@:.ko=.lto.o)
>
>
> What is this "$(@:.ko=.lto.o)" doing ?
>
> The target is already suffixed with .lto.o
> so $(@:.ko=.lto.o) should be the same as $@

Good catch, probably a leftover from an earlier iteration.

> Shall I fix it locally unless
> I find more questionable code?

Please do.

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKudQhagwdb-UfGE2JQN8H29NSpMd5PgVoftJYRp5ZwpRrA%40mail.gmail.com.
