Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBVOD62EAMGQE5F6IRDQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x539.google.com (mail-pg1-x539.google.com [IPv6:2607:f8b0:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id 633F33F0F0F
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Aug 2021 02:12:07 +0200 (CEST)
Received: by mail-pg1-x539.google.com with SMTP id d4-20020a6336040000b029023ad3e0b062sf2411018pga.10
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 17:12:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629331926; cv=pass;
        d=google.com; s=arc-20160816;
        b=EtRAWckP7GuEJeMkODWgxcwUbozm3zeIGxG+tj8dsm2dgmp+ZwX0YRjfuzVH/7yEkg
         LWf/z5Cfhwq70hGxdHNH3vi20Fj3/DykdXJ//OAhVUacZ4mTsl2rETNyz7ZPwWtIYZKC
         iO+mV7ryL0FJcXzpWObkqo8tx3Q7HETVBNvZye3xt6lZ6RZO877ylFxdnsqumACLx+vb
         5nhMBjzm17Kfxj/jZfToE6CTTYxXsvzSDfaY9LMjwrLkps1uaUXHzD1O8wTF/6dEUMEk
         aZ23hP4YKS00yVI71OXITTu8O8ntApeJPQjuTUIIANEFvvz4ZJxQy3Eov5Dl8ELWmmuO
         mDyA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=W/gFBTjlTc2Mpk6ZbbS778KQzIYJkxYa9E7oaeQQuwc=;
        b=IB9Ga34hG6K4b4fAxMp2kQj3aBv69PBUVjQQXVS8+TOhUKeU7Ao2AE/EiSgDy+h53M
         rIIWYHBc0y97cp8EqPCNO4ldgfuZKDQg47Qxo/78ht32D+8XGtmVxqMAwD6gn9ov9N70
         WZU9UGiojoIFue3pUU0hmauokbA1GHQ7Pt5oeJ9eC8gttm9d+K8sBSJoqEGdPT2cHirn
         8SPvWaf9530tP+17TH75jfarH5b7y1UO81+XPPQdz7JMYaB4yq16YQrBCf/YeuC/WVRk
         ZvPCfAdCjWP493qT5YdQT0h3zxL/DL713AE44XVza5YDm8GHDkNs4lbkwCG3xouK6FRQ
         tVUQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=ARuw9aHU;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.91 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=W/gFBTjlTc2Mpk6ZbbS778KQzIYJkxYa9E7oaeQQuwc=;
        b=dXLEbehEzIeiy/80qs9gHXDJYqwgb1/k4WwBjPLLEimzBda4S/M+nUX1tqapvIHZB2
         SFurgLiMSQaeQXp8awv1ujrl2znMLXsEYcNecWWplH/asfLPJQnq4Azk/dqrs4FQGXu8
         5eV0gh0voi0Wyo81wUUQTR/kDMsl0jS1yh/71Hc/oIRK7bCVZCgcE+qskcvVw+rs2OXU
         Ky+94rNfPOQvAX/kv7rv1hQdJ2P1yk1JpF7V3U8bNOg/kAjXLilO8/gD6Wzx5bJffVXT
         cCZFZFufR4mGzym3XnPvdtPEcTNP84nmAL68/kg/j8BGOxkxpKHPTBUh1aVkXWxU5mBf
         Q5Lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=W/gFBTjlTc2Mpk6ZbbS778KQzIYJkxYa9E7oaeQQuwc=;
        b=n51NhwOkKECV2nD+3GDvGSospCO7P9fnJ3HlZTqraLNmgp0ABUq3eL7oaciO5qPFJW
         x6+R9yyilLnPpVeCKWxHEFlWlLxWoTRUUHyIz+DLc21vhJU1z9UfdBu3C87LiePWXTEM
         gUzEffTbfmGjIDb+fjDmkHw9YuzbpQ6uA4c1O15+ALcOMjz1E3Zm9B48f2ORIDSYBmPG
         Ede74QdImG4lITL0FV/UD2F7OTgM+BmuOdEI/Yn63x56BQrT/qnMav/bijheiDTHqHIb
         i9dsEr0GrJOMLrQRvjHc6ObNQFOqiyy3D4otMJFeC6kqe6qqKTzyIu7zq749DzwtpdWU
         5qkQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5315vhnXLW1fRpEe6cRt592foEF7Rj1sNz9zrGLj8o0uq3saprPA
	cuEKBJHsSLGoLk930+HiXds=
X-Google-Smtp-Source: ABdhPJxpw5kvF8kYD7+gjn6XVqnXj8Qr0ZOdxD69pNJ83jw06RC9BeTqbsr5c93Tj9MU+7bfrjeFcQ==
X-Received: by 2002:a17:90a:fa89:: with SMTP id cu9mr11312721pjb.5.1629331926010;
        Wed, 18 Aug 2021 17:12:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:520c:: with SMTP id o12ls1775537pgp.6.gmail; Wed, 18 Aug
 2021 17:12:05 -0700 (PDT)
X-Received: by 2002:aa7:973a:0:b029:3e0:9744:6460 with SMTP id k26-20020aa7973a0000b02903e097446460mr12056717pfg.63.1629331925489;
        Wed, 18 Aug 2021 17:12:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629331925; cv=none;
        d=google.com; s=arc-20160816;
        b=cS8EF/8Y7t5RdnaB6edvE03bBBTWciPNUM1o/JyLm/Cy/BIwU/uXucadaao0USb8Ah
         njLCgA9/xes6GQQYbx7EC7RiUjR0Gu1Uz42py90LJDuznqVpZc7LO3C8xXlqgsCdVACK
         7/sZb0rTYprrFThlyDkcanCKnApflgWEuJO05ATuXfNGAbVKhBqUGwx6dZ4Ie4K5r5Un
         JJVW+7vfw4HUx7fQrIMpSAguRhxSXKAqCbSadGSQnafzq4yF/Qlwa70qtjyUwqJtv7NY
         rM2WikFip33B1Ua64N5KfmYVn6njm8deNwJcZijrxlFEFqJUQI2ykeIpbLIEhLTHqN44
         FLQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=8M03MRw2TuofOPMeylniQhhiTzksWPSL5VyD0yUEHAo=;
        b=qP0P9p2MzhhVYJLHjaK2G2F/sr5Ka/cKSbwfKdxoj7OXTZZYpbAMuJx6UiGqDodLA7
         ACywLDHTOF/8xuo5XcQPuX/B0wfpeTjJe0goXzaHmq0gLVXEQ8u9gtWgbg0aYrI/MFVh
         1VsBAeLbupM9QKUCrVZ8JtZFQAVNxE+1laSOh9WtpEXOTDafJF70LopW0fzCIBNL5eQo
         qv39AEOcnz9inUnK/F8yS/2juW/u5rRsKI0fmomEd8bQ18g9hNiOdpNt7uQoOkDfxmb7
         inv5XGfnPdkcmHFYMeyaFQehF3X2iPCzbNI2OX1o1N04rmVq6VrAbJapt/hT0IhuH90t
         NWnw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=ARuw9aHU;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.91 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-06.nifty.com (conssluserg-06.nifty.com. [210.131.2.91])
        by gmr-mx.google.com with ESMTPS id i123si137373pfb.1.2021.08.18.17.12.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Aug 2021 17:12:05 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.91 as permitted sender) client-ip=210.131.2.91;
Received: from mail-pj1-f46.google.com (mail-pj1-f46.google.com [209.85.216.46]) (authenticated)
	by conssluserg-06.nifty.com with ESMTP id 17J0Blba016741
	for <clang-built-linux@googlegroups.com>; Thu, 19 Aug 2021 09:11:48 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-06.nifty.com 17J0Blba016741
X-Nifty-SrcIP: [209.85.216.46]
Received: by mail-pj1-f46.google.com with SMTP id gz13-20020a17090b0ecdb0290178c0e0ce8bso6171860pjb.1
        for <clang-built-linux@googlegroups.com>; Wed, 18 Aug 2021 17:11:48 -0700 (PDT)
X-Received: by 2002:a17:90a:c506:: with SMTP id k6mr11896409pjt.198.1629331907468;
 Wed, 18 Aug 2021 17:11:47 -0700 (PDT)
MIME-Version: 1.0
References: <20210816180519.1021311-1-samitolvanen@google.com>
 <CAK7LNASAHN=-uj73Uwk10aXbsR8AkUM_P=3NX_dq2SiFTqUctg@mail.gmail.com> <CABCJKudQhagwdb-UfGE2JQN8H29NSpMd5PgVoftJYRp5ZwpRrA@mail.gmail.com>
In-Reply-To: <CABCJKudQhagwdb-UfGE2JQN8H29NSpMd5PgVoftJYRp5ZwpRrA@mail.gmail.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Thu, 19 Aug 2021 09:11:10 +0900
X-Gmail-Original-Message-ID: <CAK7LNARFdB9=bV+X6nYzkrpvO-2FtOu5oxg6Ch3r=AROa1atVA@mail.gmail.com>
Message-ID: <CAK7LNARFdB9=bV+X6nYzkrpvO-2FtOu5oxg6Ch3r=AROa1atVA@mail.gmail.com>
Subject: Re: [PATCH v4] kbuild: Fix TRIM_UNUSED_KSYMS with LTO_CLANG
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Kees Cook <keescook@chromium.org>, Michal Marek <michal.lkml@markovi.net>,
        Alexander Lobakin <alobakin@pm.me>,
        Nathan Chancellor <nathan@kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=ARuw9aHU;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.91 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Thu, Aug 19, 2021 at 12:06 AM Sami Tolvanen <samitolvanen@google.com> wrote:
>
> On Tue, Aug 17, 2021 at 7:34 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
> >
> > On Tue, Aug 17, 2021 at 3:05 AM Sami Tolvanen <samitolvanen@google.com> wrote:
> > >
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
> > > Reviewed-by: Alexander Lobakin <alobakin@pm.me>
> > > Tested-by: Alexander Lobakin <alobakin@pm.me>
> > > ---
> > > Changes in v4:
> > > - Added .lto.o to targets to actually fix the use of if_changed.
> > > - Replaced an unnecessary mod-prelink-ext with .lto.
> > >
> > > Changes in v3:
> > > - Added missing FORCE.
> > >
> > > Changes in v2:
> > > - Fixed a couple of typos.
> > > - Fixed objtool arguments for .lto.o to always include --module.
> > >
> > > ---
> > >  scripts/Makefile.build    | 28 +++++++++++++++++++++++++++-
> > >  scripts/Makefile.lib      |  7 +++++++
> > >  scripts/Makefile.modfinal | 21 ++-------------------
> > >  scripts/Makefile.modpost  | 22 +++-------------------
> > >  scripts/gen_autoksyms.sh  | 12 ------------
> > >  5 files changed, 39 insertions(+), 51 deletions(-)
> > >
> > > diff --git a/scripts/Makefile.build b/scripts/Makefile.build
> > > index 02197cb8e3a7..a6f43afd09bb 100644
> > > --- a/scripts/Makefile.build
> > > +++ b/scripts/Makefile.build
> > > @@ -88,6 +88,10 @@ endif
> > >
> > >  targets-for-modules := $(patsubst %.o, %.mod, $(filter %.o, $(obj-m)))
> > >
> > > +ifdef CONFIG_LTO_CLANG
> > > +targets-for-modules += $(patsubst %.o, %.lto.o, $(filter %.o, $(obj-m)))
> > > +endif
> > > +
> > >  ifdef need-modorder
> > >  targets-for-modules += $(obj)/modules.order
> > >  endif
> > > @@ -271,12 +275,34 @@ $(obj)/%.o: $(src)/%.c $(recordmcount_source) $$(objtool_dep) FORCE
> > >         $(call if_changed_rule,cc_o_c)
> > >         $(call cmd,force_checksrc)
> > >
> > > +ifdef CONFIG_LTO_CLANG
> > > +# Module .o files may contain LLVM bitcode, compile them into native code
> > > +# before ELF processing
> > > +quiet_cmd_cc_lto_link_modules = LTO [M] $@
> > > +cmd_cc_lto_link_modules =                                              \
> > > +       $(LD) $(ld_flags) -r -o $@                                      \
> > > +               $(shell [ -s $(@:.lto.o=.o.symversions) ] &&            \
> > > +                       echo -T $(@:.lto.o=.o.symversions))             \
> > > +               --whole-archive $(filter-out FORCE,$^)
> > > +
> > > +ifdef CONFIG_STACK_VALIDATION
> > > +# objtool was skipped for LLVM bitcode, run it now that we have compiled
> > > +# modules into native code
> > > +cmd_cc_lto_link_modules += ;                                           \
> > > +       $(objtree)/tools/objtool/objtool $(objtool_args) --module       \
> > > +               $(@:.ko=.lto.o)
> >
> >
> > What is this "$(@:.ko=.lto.o)" doing ?
> >
> > The target is already suffixed with .lto.o
> > so $(@:.ko=.lto.o) should be the same as $@
>
> Good catch, probably a leftover from an earlier iteration.
>
> > Shall I fix it locally unless
> > I find more questionable code?
>
> Please do.
>
> Sami


Applied with $(@:.ko=.lto.o)  ->  $@

Thanks.


-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNARFdB9%3DbV%2BX6nYzkrpvO-2FtOu5oxg6Ch3r%3DAROa1atVA%40mail.gmail.com.
