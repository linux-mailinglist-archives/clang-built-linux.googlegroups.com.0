Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBDFF7CEAMGQEPYOSXWI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43a.google.com (mail-pf1-x43a.google.com [IPv6:2607:f8b0:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BE543F14F1
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Aug 2021 10:13:02 +0200 (CEST)
Received: by mail-pf1-x43a.google.com with SMTP id n27-20020a056a000d5b00b003e147fb595esf2705460pfv.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 19 Aug 2021 01:13:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629360781; cv=pass;
        d=google.com; s=arc-20160816;
        b=oYaXosEQu0imqhroHlnaIfoNVpCJTnpP3fqBk6v/GjyebuPFlGZUR4hSbR9YDhr2MT
         NPCm38eSwpKFRqbKEQJnaI3Bk2eisd/9S+4Ug2F/8WIQNTuaWMloNN9sM7fVOysVjBGm
         zre3t1iC70MNrHTRe8BIZPLFRrjSTA4cIzcIqMSF3y7rkHW2xs4ncXQ3bLUMDOEYMq9A
         0xM5MGKgVheGP0D4VALeVdSoyD/6qoebG+ecL0qVyE+/voCJzaGnsa5TSmlgirUgX2QJ
         PJh9xn+P8L4QYKCCdNg1/zHn2sIu6Sz8yHObFPbIWe6bNsDneYSrgP17Qagds7n6l7iZ
         EAUQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=rM5zobo5ecdSNNNAeBhARP1W19d8EelzE684t6NEzhk=;
        b=Q6Xp31/WclJCyvJJE5mSDVZWl0/qUa4J2H11Xq+e2XsU7PGiTcmCGEPlQaw9BbqimU
         A9C0RrrsSBGG4d+7ghkDQh9r/v2pyAZtN+afEA/EuBmEt/BkR8yhy0i0On5poneQzaif
         FRurZi8CaUniwjwLS2bi7itkWZ/Xo+TyyIz299FAkimu/pIu4/cU0G+YBmA0F8bdcUR0
         xZOlgijh4llZcBZIrQXiw4jvz076WRPmQmjGvh90D4W+eavMU4qPJnNbrZdzshYpkUwL
         TcJ6i9QiT4FE8y4XbgYiW1UBtAV9wxXl71anH6Xgf78Aad7fuck8a4UAlPLERuUTaGyx
         4tVA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=D+sDiHEX;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=rM5zobo5ecdSNNNAeBhARP1W19d8EelzE684t6NEzhk=;
        b=OUWXZe2Kz23WO73YdaULPq1duqzazfg3I1j0aozHda7AxILNb/iRZZQvL7PgDHVgGb
         dPfDPuS8RuPQo/CiXm00Rm+yhSOmn+ONtNZ1OpELa8QSQvzZTn+Q7L3kWM29D1I9UuV0
         JXEi2A7N/ddVmZMykkkD8btq7iCjIqfTUKmIwOYCQVqk3GAAdMWUIDDDPeTxODkFxQ00
         t52IH6FGphwKgx0kzY+T2d5sONCXuSNQftMO3joik1iOwQbbDxn1BGlQ3Ji91eJr3K6r
         Td9pBdu9tEWHCWqNWy9f+fGaZxfDd8PYwJXu1OWzq8Y1l3YCQYgmOLwzWaX+lTOU9NTy
         ZyeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rM5zobo5ecdSNNNAeBhARP1W19d8EelzE684t6NEzhk=;
        b=aUqez4Imj2+kUbX21+sxiAn/uCJcj3xy37daK2hHwX/j450u9pfWx0UwXCH8o/sJue
         NVi17hHrGPVik7yz/LHMj8dlHfHY7md0vHpCHXMbfIkMZYA7BDt2baS18zq+8UKHIwJI
         qfm/RiM6Iqni92w5DCeRmkKpn7vZgIJkKrtwJS0EC4dhQnWcyDkuyHM60WDtb2lR9XCi
         hvUQPCZe85LuCfvAS8UyJIQ3Svc2KG1sgyqGAaTTX887P3Z+jSwfudaAgvAPvTkVGFaT
         u221TX4QwK/n34E94EsSZYfsr+5dGeN9JY6w/lea3e7iCVWAYQBsaXis6tO8UgPXmb7B
         QrcQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533XpDMfDzKTJLklogtKO2xtdiXnJebw1L5aBlY9TVXerZ/mGkAb
	8RqV8Xy2JjFjtvW1/SOYaCM=
X-Google-Smtp-Source: ABdhPJzZeecEb+Ykm0MTkvS4vq+IieSXZzlVc8Amu5u+HpqNcwdEaDlPEHl0gQZHvcNAIszAkHL/hA==
X-Received: by 2002:a17:90a:4a95:: with SMTP id f21mr7934220pjh.122.1629360780935;
        Thu, 19 Aug 2021 01:13:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:218:: with SMTP id fy24ls4087149pjb.3.canary-gmail;
 Thu, 19 Aug 2021 01:13:00 -0700 (PDT)
X-Received: by 2002:a17:902:6bc1:b0:12d:7f02:f780 with SMTP id m1-20020a1709026bc100b0012d7f02f780mr10854087plt.55.1629360780338;
        Thu, 19 Aug 2021 01:13:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629360780; cv=none;
        d=google.com; s=arc-20160816;
        b=tzpYBGQ0x0PchGQ0DIJNgjurqVJaLqnoSMvHRMDrmTV1tC0m5s8/gk+3zJpu5whdx1
         zmZqoZmSUHpWVI8m76jk9PJzamg20FYtCbmZUQKCg2UwNTUdTub4YjUvh2+idtdujAkI
         2MyqvkAF8Tp9QmcZlBnoAd0Z9Niaz2fOBqUGp87Yl6DpZOaW6AJt0q0TN+JAeNc0HZcj
         PJ2TMgY1aU2udbLt7NHc9N68xTaabNOBTt32ClpxRNCju4cXHXd43KhShvVGWKDFII3f
         fkhMzSxxsEH4BZNqJkP0euWgplwKRUg5cilBJflkppc1O1zMsdQXPQAR7SBLnODhbYYE
         nwvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=h+LQ3DsMYHHYU9pdZ68ThvQL2XeujHCWqfeKTgc0pFo=;
        b=JrJ2KO9GQU5p9H66JS3b4xADcnOe7+hZvV7ZqVockiFfxaKGnq0Knkpkj6D5g1Lti2
         FnVvGhR3cuKi5C5yMlo7PM8QKpTAueR0EjltHRNBTlXk2xHpbfenPS0LAn/cJaxdQTHe
         ugwBKl+4eyQ73W5C2gsMN7nlVOmaW86qjK52i2JCuD6RrPl2tDSeYYMl63OeE0ogMs1a
         wtXtGR4saa5jbt4rtpc1IUEqQyOiZrAZtBNA3eOuWDOzPOhLzkQs4L/6H09E0YEnYOTj
         WZ+EJ8yV2xI2alSj+CaW3TewbamdyBrQ6N5o0RYQlSSAC1Es+jE3NK9XCegQNeE4YWQA
         Nt9g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=D+sDiHEX;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-03.nifty.com (conssluserg-03.nifty.com. [210.131.2.82])
        by gmr-mx.google.com with ESMTPS id b14si339008pjg.2.2021.08.19.01.12.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Aug 2021 01:13:00 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) client-ip=210.131.2.82;
Received: from mail-pg1-f178.google.com (mail-pg1-f178.google.com [209.85.215.178]) (authenticated)
	by conssluserg-03.nifty.com with ESMTP id 17J8CQEZ002126
	for <clang-built-linux@googlegroups.com>; Thu, 19 Aug 2021 17:12:26 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-03.nifty.com 17J8CQEZ002126
X-Nifty-SrcIP: [209.85.215.178]
Received: by mail-pg1-f178.google.com with SMTP id 17so5138797pgp.4
        for <clang-built-linux@googlegroups.com>; Thu, 19 Aug 2021 01:12:26 -0700 (PDT)
X-Received: by 2002:a65:6459:: with SMTP id s25mr13060911pgv.7.1629360745663;
 Thu, 19 Aug 2021 01:12:25 -0700 (PDT)
MIME-Version: 1.0
References: <20210819005744.644908-1-masahiroy@kernel.org> <20210819005744.644908-11-masahiroy@kernel.org>
 <202108182348.715797A@keescook>
In-Reply-To: <202108182348.715797A@keescook>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Thu, 19 Aug 2021 17:11:49 +0900
X-Gmail-Original-Message-ID: <CAK7LNATXYSdGx2rg=-mHd0_RAiJLUSKob8ybCD6koGDGsXhSZQ@mail.gmail.com>
Message-ID: <CAK7LNATXYSdGx2rg=-mHd0_RAiJLUSKob8ybCD6koGDGsXhSZQ@mail.gmail.com>
Subject: Re: [PATCH 10/13] kbuild: build modules in the same way with/without
 Clang LTO
To: Kees Cook <keescook@chromium.org>
Cc: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Sami Tolvanen <samitolvanen@google.com>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Michal Marek <michal.lkml@markovi.net>,
        Nathan Chancellor <nathan@kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=D+sDiHEX;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.82 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

On Thu, Aug 19, 2021 at 3:59 PM Kees Cook <keescook@chromium.org> wrote:
>
> On Thu, Aug 19, 2021 at 09:57:41AM +0900, Masahiro Yamada wrote:
> > When Clang LTO is enabled, additional intermediate files *.lto.o are
> > created because LLVM bitcode must be converted to ELF before modpost.
> >
> > For non-LTO builds:
> >
> >          $(LD)             $(LD)
> >   objects ---> <modname>.o -----> <modname>.ko
> >                              |
> >           <modname>.mod.o ---/
> >
> > For Clang LTO builds:
> >
> >          $(AR)            $(LD)                 $(LD)
> >   objects ---> <modname>.o ---> <modname>.lto.o -----> <modname>.ko
> >                                                   |
> >                                 <modname>.mod.o --/
> >
> > Since the Clang LTO introduction, ugly CONFIG_LTO_CLANG conditionals
> > are sprinkled everywhere in the kbuild code.
> >
> > Another confusion for Clang LTO builds is, <modname>.o is an archive
> > that contains LLVM bitcode files. The suffix should have been .a
> > instead of .o
> >
> > To clean up the code, unify the build process of modules, as follows:
> >
> >          $(AR)            $(LD)                     $(LD)
> >   objects ---> <modname>.a ---> <modname>.prelink.o -----> <modname>.ko
> >                                                       |
> >                                 <modname>.mod.o ------/
> >
> > Here, 'objects' are either ELF or LLVM bitcode. <modname>.a is an archive,
> > <modname>.prelink.o is ELF.
>
> I like this design, but I do see that it has a small but measurable
> impact on build times:
>
> allmodconfig build, GCC:
>
> make -j72 allmodconfig
> make -j72 -s clean && time make -j72
>
>     kbuild/for-next:
>         6m16.140s
>         6m19.742s
>         6m15.848s
>
>     +this-series:
>         6m22.742s
>         6m20.589s
>         6m19.911s
>
> Thought with not so many modules, it's within the noise:
>
> defconfig build, GCC:
>
> make -j72 defconfig
> make -j72 -s clean && time make -j72
>
>     kbuild/for-next:
>         0m41.579s
>         0m41.214s
>         0m41.370s
>
>     +series:
>         0m41.423s
>         0m41.434s
>         0m41.384s
>
>
> However, I do see that even LTO builds are slightly slower now, so
> perhaps the above numbers aren't due to the added $(AR) step:
>
> allmodconfig + Clang ThinLTO:
>
> make -j72 LLVM=1 LLVM_IAS=1 allmodconfig
> ./scripts/config -d GCOV_KERNEL -d KASAN -d LTO_NONE -e LTO_CLANG_THIN
> make -j72 LLVM=1 LLVM_IAS=1 olddefconfig
> make -j72 -s LLVM=1 LLVM_IAS=1 clean && time make -j72 LLVM=1 LLVM_IAS=1
>
>     kbuild/for-next:
>         9m53.927s
>         9m45.874s
>         9m47.722s
>
>     +series:
>         9m58.395s
>         9m53.201s
>         9m56.387s



I have not tested this closely, but
perhaps this might be the cost of $(AR) t $<)

In Sami's implementation, *.symversions are merged
by shell command.
Presumably, it runs faster than llvm-ar.
Instead, it has a risk of Argument list too long
as reported in [1].

[1] https://lore.kernel.org/lkml/20210614094948.30023-1-lecopzer.chen@mediatek.com/


Anyway, when I find a time,
I will look into some bench mark.




>
>
> I haven't been able to isolate where the changes in build times are
> coming from (nor have I done link-phase-only timings -- I realize those
> are really the most important).
>
> I did notice some warnings from this patch, though, in the
> $(modules-single) target:
>
> scripts/Makefile.build:434: target 'drivers/scsi/libiscsi.a' given more than once in the same rule
> scripts/Makefile.build:434: target 'drivers/atm/suni.a' given more than once in the same rule


Ah, right.

I also noticed needless rebuilds of prelink.symversions.

In v2, I will fix as follows:


index 957addea830b..cf6b79dff5f9 100644
--- a/scripts/Makefile.build
+++ b/scripts/Makefile.build
@@ -438,6 +438,8 @@ cmd_merge_symver =                                  \
 $(obj)/%.prelink.symversions: $(obj)/%.a FORCE
        $(call if_changed,merge_symver)

+targets += $(patsubst %.a, %.prelink.symversions, $(modules))
+
 $(obj)/%.prelink.o: ld_flags += --script=$(filter %.symversions,$^)
 module-symver = $(obj)/%.prelink.symversions

diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index f604d2d01cad..5074922db82d 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -107,8 +107,8 @@ real-dtb-y  := $(addprefix $(obj)/, $(real-dtb-y))
 subdir-ym      := $(addprefix $(obj)/,$(subdir-ym))

 modules                := $(patsubst %.o, %.a, $(obj-m))
-modules-multi  := $(patsubst %.o, %.a, $(multi-obj-m))
-modules-single := $(filter-out $(modules-multi), $(filter %.a, $(modules)))
+modules-multi  := $(sort $(patsubst %.o, %.a, $(multi-obj-m)))
+modules-single := $(sort $(filter-out $(modules-multi), $(filter %.a,
$(modules))))

 # Finds the multi-part object the current object will be linked into.
 # If the object belongs to two or more multi-part objects, list them all.








-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNATXYSdGx2rg%3D-mHd0_RAiJLUSKob8ybCD6koGDGsXhSZQ%40mail.gmail.com.
