Return-Path: <clang-built-linux+bncBDU43XP6ZAGRB353ZCDQMGQEXCXKX7I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23c.google.com (mail-lj1-x23c.google.com [IPv6:2a00:1450:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id 84E0E3CBFF0
	for <lists+clang-built-linux@lfdr.de>; Sat, 17 Jul 2021 02:01:52 +0200 (CEST)
Received: by mail-lj1-x23c.google.com with SMTP id a5-20020a2e7f050000b0290192ede80275sf3160747ljd.12
        for <lists+clang-built-linux@lfdr.de>; Fri, 16 Jul 2021 17:01:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626480111; cv=pass;
        d=google.com; s=arc-20160816;
        b=C6x2MWStqK0uNltpKLS+u0CWwjJ/WHwFyZipIWfQjaQ+uKMApLdvzKsS8Cnq/dDHux
         OdGusi0uQK99ZMCjrW78K86M+ckneZcXB73M3w/uwjVtNbgwHgTn6GM90H3XJ+Jx/ONl
         YW+D8JAqjL9g1rXeaYUtC2qXPvSJTjZJ3KwNO3IABcxZO66HwIYou2eLn+Wnp8l2M41V
         D/hsHqBX1YIINlf786xWuL0BPJIGzGWcppTxiRa/alAfGb6dH0SxipvTuEbzoqfNVZBt
         CmuPXPm0DSYDhsBSM+pEzLCYPB4+yIC1qGvo0hEgp3D2qWAP9h1F97pL7mhlXSdnKKlf
         3CKA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:reply-to:cc:from:to:date:dkim-signature;
        bh=Atfj0ZNls6zqF/kFwG/G9eVVGh7/2QqNKT8HDNnEhF4=;
        b=gdQ1O9uCpt6AynpD4Fam7B2hNSghcTfh8z7jmytTOhGXXd0KanB/6NpvRjRvHNdnAF
         X+7usg0HBiMgCuLPKQ2q5Hs2SgF6XKq6RtNmwng/zpnZ0sBCzc/M2u4fuCgqPu3moYuZ
         fOiTFpIYubEa6Mr9QESf2L1S+OvtRhm6WHU0iuUTWXDxnw00QYkqRbfecVfZlWRHfgrD
         XlBhq3fgl9XJkPmuabvILrRzaWRRNKTO1VE09J/xmplYgZnq53MGLd4albHeQzLuj1H5
         CQ7f8YsfSr44/iK8j2V9ndpsF282lMsxeO/XmTcn0ghgeSwqg3j6IeL/KpAtGaiVYoWo
         u/tA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@pm.me header.s=protonmail header.b=UEAK77EQ;
       spf=pass (google.com: domain of alobakin@pm.me designates 185.70.40.18 as permitted sender) smtp.mailfrom=alobakin@pm.me;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:to:from:cc:reply-to:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Atfj0ZNls6zqF/kFwG/G9eVVGh7/2QqNKT8HDNnEhF4=;
        b=V7p+OEFurJ7gnIZw/yg380zMRudEIvXLCxNJrhfY2vL7zZ86py6tNcvGyCA6VfGmWF
         K251vOzRv1/4vqTDQO/2ku4s+v+5xwBG5SQJmWh3kIstI9O1EfRQum3Z7sRUBUR8gsMS
         Tpbw7/C6Uk7u/FZfZt5PNp372AfOmNEQukFf/Jq9R+uRSKmflq7kUCXb/YvtSDDswWGQ
         hJfF6apx3tFMkpAz39dliYJF9rGNLZfbP65NQtFysarlID/7VFNijDuPvlZCn0up5PdW
         miahZDhM2oOlWGRqe3sDeOonxE6aDaLWaIukqrbKCyFidwrnjJY/ZHrBCyRvyLB6DsaO
         pKDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:to:from:cc:reply-to:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Atfj0ZNls6zqF/kFwG/G9eVVGh7/2QqNKT8HDNnEhF4=;
        b=RIBrqOyGDhwkxeOJUFfmX9Kjw+Oh8v5xGXyJCKIiNsAW53UiT93u2BsF+Ia4s2geHx
         gxFRU/Xck4TvxacWrNwi7eLRfxqsu3kMEOQQZ4QCUev8J1KvMz8PXgt6FE1S6oRxcKnx
         pg8+EtaARvAWZDyT59Fi48t5dEecRZMgyf/NvaFuLPcdr7yVep1ygkSgtyFW/J7VBJhh
         psPUtFXasfwEsjp1F1OR+Z6SGy3zMOWBkB0FbyKErFy5mn67Dc1SVxPVHwUP9jJ2CKiE
         7ec2qWbU0WaDLM/QNANttaQf6LQBmM43QcdOEafWzCtXMVuURKsETt/Eede3b4a5oDLZ
         C66w==
X-Gm-Message-State: AOAM531Qba03gRfBIb2tjYcefIwSOBLEVAIc5AoaZDAlSnlE60gVZ/zZ
	lG2i6AFg4S2XJbT4BIe87Us=
X-Google-Smtp-Source: ABdhPJzl4ExLKq7GHXjJNNxu6kRVtR5DKtQli0wo8kPOFuWNjDajJVN/Ef5Z8dYtpD/vbQ9NFTSNKA==
X-Received: by 2002:ac2:532d:: with SMTP id f13mr9670173lfh.123.1626480111548;
        Fri, 16 Jul 2021 17:01:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:23a3:: with SMTP id c35ls1038781lfv.3.gmail; Fri,
 16 Jul 2021 17:01:50 -0700 (PDT)
X-Received: by 2002:a19:ef04:: with SMTP id n4mr3949602lfh.500.1626480110395;
        Fri, 16 Jul 2021 17:01:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626480110; cv=none;
        d=google.com; s=arc-20160816;
        b=klMpaoy4EKwbnjis3MvMG5TvViDHJUOfN5ni7uRX0kLRollGoFuTJpI71uAEnKyzbq
         KhGw27yZbUDEi4bnWvYkltSy4XjNS7dpHHLUm2Q3TT7+VooXJ5uKfabSst7O2yr+xbPT
         PJ3Zn7FUKVbKODmiu4ANBRWME6DY+MDi7dqJZd8YnO/x68nOVjlfwWrUPAzyiSOo3c0b
         RUmEkd4y7Cgp1ncn6XiNT1GYMAx+PGH2WSwAl4gjAGANKfQ6DXGf8s0V2YB8C/nIrI9a
         A1hTe9anj6LbAVFv7fB34XV6ZNtgBDslJHTo32NSi62eltDpqDsvB9jroHzP6523z4Ii
         FQaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:reply-to:cc:from:to:dkim-signature:date;
        bh=r2E7sDKBOZy+lOoF6oEpTdm7rXJRh85I7jVCdPqIxzQ=;
        b=HCdiBAVrloJ/mGI6IfYR0Np5uqmZWrff59V1olTtpUEsRwhXI83sGKpnb08f0FHCoO
         utwbJE/vQbLMPsUmpCjhpKcfdednldE/1KUocIFlmFu/ROBQ7KYnQMZ+Lip2EpecpPO5
         ZFNyMOdTMbVXJpbW20V02yOKlIAuFCSzPAlIruBp7o3r1a/HB1PtDIukz7T7FxbjZAv4
         my1vvncJiYA4FlozbV9aHZNWDH727N0eaymO1BSq/vTSbb5ea9uctuPpFIX+1bWwypxR
         Jz7H620k8gxWtBXaHjCleQx6NX+Sy5vdDuDpSpwMzABbwzY53tvfA8+KVu4WXs8WzrEE
         kOtg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pm.me header.s=protonmail header.b=UEAK77EQ;
       spf=pass (google.com: domain of alobakin@pm.me designates 185.70.40.18 as permitted sender) smtp.mailfrom=alobakin@pm.me;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=pm.me
Received: from mail1.protonmail.ch (mail1.protonmail.ch. [185.70.40.18])
        by gmr-mx.google.com with ESMTPS id 206si346060lfa.8.2021.07.16.17.01.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Jul 2021 17:01:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of alobakin@pm.me designates 185.70.40.18 as permitted sender) client-ip=185.70.40.18;
Date: Sat, 17 Jul 2021 00:01:45 +0000
To: Sami Tolvanen <samitolvanen@google.com>
From: "'Alexander Lobakin' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Cc: Alexander Lobakin <alobakin@pm.me>, Kees Cook <keescook@chromium.org>, Masahiro Yamada <masahiroy@kernel.org>, Michal Marek <michal.lkml@markovi.net>, Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, linux-kbuild <linux-kbuild@vger.kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>
Reply-To: Alexander Lobakin <alobakin@pm.me>
Subject: Re: [PATCH] kbuild: Fix TRIM_UNUSED_KSYMS with LTO_CLANG
Message-ID: <20210716235415.161850-1-alobakin@pm.me>
In-Reply-To: <CABCJKucqW6a8h55tUQ072QMZxzB5O4djjF+TN1-Btb=TY8KE=Q@mail.gmail.com>
References: <20210716204545.3536354-1-samitolvanen@google.com> <20210716225245.67939-1-alobakin@pm.me> <CABCJKucqW6a8h55tUQ072QMZxzB5O4djjF+TN1-Btb=TY8KE=Q@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.2 required=10.0 tests=ALL_TRUSTED,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF shortcircuit=no
	autolearn=disabled version=3.4.4
X-Spam-Checker-Version: SpamAssassin 3.4.4 (2020-01-24) on
	mailout.protonmail.ch
X-Original-Sender: alobakin@pm.me
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@pm.me header.s=protonmail header.b=UEAK77EQ;       spf=pass
 (google.com: domain of alobakin@pm.me designates 185.70.40.18 as permitted
 sender) smtp.mailfrom=alobakin@pm.me;       dmarc=pass (p=QUARANTINE
 sp=QUARANTINE dis=NONE) header.from=pm.me
X-Original-From: Alexander Lobakin <alobakin@pm.me>
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

From: Sami Tolvanen <samitolvanen@google.com>
Date: Fri, 16 Jul 2021 16:18:42 -0700

> Hi Al,
>
> On Fri, Jul 16, 2021 at 4:00 PM Alexander Lobakin <alobakin@pm.me> wrote:
> >
> > From:   Sami Tolvanen <samitolvanen@google.com>
> > Date:   Fri, 16 Jul 2021 13:45:45 -0700
> >
> > > With CONFIG_LTO_CLANG, we currently link modules into native
> > > code just before modpost, which means with TRIM_UNUSED_KSYMS
> > > enabled, we still look at the LLVM bitcode in the .o files when
> > > generating the list of used symbols. As the bitcode doesn't
> > > yet have calls to compiler intrinsics and llvm-nm doesn't see
> > > function references that only exist in function-level inline
> > > assembly, we currently need a whitelist for TRIM_UNUSED_KSYMS to
> > > work with LTO.
> > >
> > > This change moves module LTO linking to happen earlier, and
> > > thus avoids the issue with LLVM bitcode and TRIM_UNUSED_KSYMS
> > > entirely, allowing us to also drop the whitelist from
> > > gen_autoksyms.sh.
> > >
> > > Link: https://github.com/ClangBuiltLinux/linux/issues/1369
> > > Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> > > ---
> > >  scripts/Makefile.build    | 25 ++++++++++++++++++++++++-
> > >  scripts/Makefile.lib      |  7 +++++++
> > >  scripts/Makefile.modfinal | 21 ++-------------------
> > >  scripts/Makefile.modpost  | 22 +++-------------------
> > >  scripts/gen_autoksyms.sh  | 12 ------------
> > >  5 files changed, 36 insertions(+), 51 deletions(-)
> > >
> > > diff --git a/scripts/Makefile.build b/scripts/Makefile.build
> > > index 10b2f2380d6f..80e0fa810870 100644
> > > --- a/scripts/Makefile.build
> > > +++ b/scripts/Makefile.build
> > > @@ -202,6 +202,7 @@ sub_cmd_record_mcount =                                   \
> > >       if [ $(@) != "scripts/mod/empty.o" ]; then      \
> > >               $(objtree)/scripts/recordmcount $(RECORDMCOUNT_FLAGS) "$(@)";   \
> > >       fi;
> > > +/
> >
> > Seems like a leftover or a random typo here.
>
> Oops, indeed.
>
> > >  recordmcount_source := $(srctree)/scripts/recordmcount.c \
> > >                   $(srctree)/scripts/recordmcount.h
> > >  else
> > > @@ -271,12 +272,34 @@ $(obj)/%.o: $(src)/%.c $(recordmcount_source) $$(objtool_dep) FORCE
> > >       $(call if_changed_rule,cc_o_c)
> > >       $(call cmd,force_checksrc)
> > >
> > > +ifdef CONFIG_LTO_CLANG
> > > +# Module .o files may contain LLVM bitcode, compile them into native code
> > > +# before ELF processing
> > > +quiet_cmd_cc_lto_link_modules = LTO [M] $@
> > > +cmd_cc_lto_link_modules =                                            \
> > > +     $(LD) $(ld_flags) -r -o $@                                      \
> > > +             $(shell [ -s $(@:.lto.o=.o.symversions) ] &&            \
> > > +                     echo -T $(@:.lto.o=.o.symversions))             \
> > > +             --whole-archive $^
> > > +
> > > +ifdef CONFIG_STACK_VALIDATION
> > > +# objtool was skipped for LLVM bitcode, run it now that we have compiled
> > > +# modules into native code
> > > +cmd_cc_lto_link_modules += ;                                         \
> > > +     $(objtree)/tools/objtool/objtool $(objtool_args)                \
> >
> > Now $(part-of-module) inside $(objtool_args) doesn't get expanded
> > properly, because previously it was being called on x.ko, and now
> > it's being called on x.lto.o. $(basename $@) returns "x.lto" instead
> > of "x", and Make doesn't find "x.lto.o" in $(real-objs-m).

To be more precise:

Previously, objtool was being called from Makefile.modfinal, where
part-of-module is hardcoded to 'y'. Now it's being called from
Makefile.build, and part-of-module is being calculated the same
way as for non-LTO build (when objtool is being called on each
object file rather than final composite object).
So, part-of-module and objtool invocation is now correct for modules
with single source file, but wrong for multi-object modules.

The simplest fix is to append '--module' to objtool args
unconditionally when we're trying to process .lto.o file.

> > An example of objtool args dump:
> >
> >   LTO [M] fs/btrfs/btrfs.lto.o
> > Call: ./tools/objtool/objtool orc generate --no-fp --no-unreachable --retpoline --uaccess fs/btrfs/btrfs.lto.o
> > fs/btrfs/btrfs.lto.o: warning: objtool: static_call: can't find static_call_key symbol: __SCK__might_resched
>
> Curiously I didn't see objtool warnings when building allmodconfig,
> but you're obviously correct here. I'll fix this in v2.
>
> > As can be seen, objtools command line no longer contains "--module".
> > And this warning about "can't find static_call_key" can appear only
> > in case of !module -> no -m|--module param was given.
> >
> > As a result, modules get broken and the kernel panics after loading
> > initramfs.
>
> Thanks for taking a look!
>
> Sami

Thanks for working on ClangLTO/CFI!
Al

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210716235415.161850-1-alobakin%40pm.me.
