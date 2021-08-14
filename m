Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBEV33SEAMGQEWMCVXTI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103c.google.com (mail-pj1-x103c.google.com [IPv6:2607:f8b0:4864:20::103c])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BEB63EBF5A
	for <lists+clang-built-linux@lfdr.de>; Sat, 14 Aug 2021 03:34:12 +0200 (CEST)
Received: by mail-pj1-x103c.google.com with SMTP id o23-20020a17090a4217b02901774c248202sf11881595pjg.9
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Aug 2021 18:34:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628904851; cv=pass;
        d=google.com; s=arc-20160816;
        b=jM4MDbyypzXQ7GZmsmjWnWzc8eLJoXIKlBX+OcOAz739/xXwtXrye+czcfyKVQCKP7
         MYB2yJi0LNt59N4iQdlyubk4BLva/sBkLcDymCIzJjbX3tu7RGKMK87waB829IK1BJGR
         9iKOAjRmrwtrYE5+LLfLUCNHo0qxCVMljGd/rAqLKtlBz/NEtX06ekWDFchWvEXdSDP+
         oLhjeAgvAnSoaOQdx/+ZmV8mq7c09Y60HWZz4iQbLuUSH6lAKjqrDJGUVQKX54I0OvGu
         1QxMDQg3MrVsG79GK5vx0tAWPP2H4jO34bg1uK5QudKyH4d+zNUrGsGy7HFuvxh0oK7+
         Stgg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=34HBtF4Sxtiiw7cl/OuokXGMWeb4PnYtVwvibzILVg4=;
        b=KNOdyYBqUKUdAfJEI3HSM507qYnqr1G1ZUtGpeF3I0ktlwTcx2kM9aj8WFGF3hxw87
         TC74wOCd3TkwcEXZiVtJLU18wWzU0IRkwryu+mgA3mrRUtpNnK6cBIEFXDqo3OFBXr1J
         v7KQGz5L430lnLFwS190wVLcm7DzVMhgRk8rrQi24vGuqvWII092eKfCsXr55vlyj9Vg
         VWMLZ3eMAxeIfwpz29B7W8brPiwDbZ2ysvR6+isPedkWBoFXwhanitQPFqbpwO4mNt6L
         LZ+t6AoyJIouj2da9BYwTIzM8fkWa5qWVq0K8CVzzO54Ne9IxxAoczDpraDuH0Fbv2BI
         XYTg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=Xvhp4Aqk;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.81 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=34HBtF4Sxtiiw7cl/OuokXGMWeb4PnYtVwvibzILVg4=;
        b=EAlL7yu2zkT6Ib49KV/D8ZiDZv1UMMyM2l4J6gRPDWOIzUA+Tw4I9ZYJBJUi2HvAWj
         +1blqO4Kms/TmINrMFzDUXBZlZ4hRsNEiUZfHX4E5xSmwjZWguw1nBQuREe+PfNDmReP
         HeyeXZqDcXep4q+cohjmWA0hIzc0LdVWwcHsC9aOtDLXQhxqWed1T1HGJsZ6NydSsUro
         MyNBOoJtNZJNOks80sLYJFo5+gBVIdfZ44mBVbZxVv2b0jN6WVVvj1eZ1Q0DOBmL6I/r
         ERDGmy4tsWzRAQ9q6766KM3tvEyyoODCbe6Ax5idTVTbBr6G7D5taSV/Ro2987u1QNAs
         fORw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=34HBtF4Sxtiiw7cl/OuokXGMWeb4PnYtVwvibzILVg4=;
        b=IeGeh+b7fMc6nTQi7JA79I+bVQwVlJ1d1RWIGdDU1Q9nB1qM6E2yw7en567UqqXMhu
         Dt+vFL5bQqr1ZuDnguh3MFoY7eKILw+rb2i2PzBl5PgUoL5T1yq2D95kyClni4KGJ+ds
         pivv3uZc8nbNhRLmitr+SJOd7Ideu/o6LTWN0hv3Sz3cIdYzTvp1qN34spnr43JarV7x
         SELhAl3b5QgXJXwZPERswfjGiCXkuBWfV7cFmS4tqpEQu7FPoJVqWu/jan+3gniByiZK
         t6uVa+kIzGvsipU9G4PbEM2HRQKfFqjBGS8wDjNH0dlmr0gPD3+4XBhxpxURc87szzI/
         m7vg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533lPGQcrp6x3PBnuSyC3M7CJOZyrSKO9JS00IaMoTGExTzFSiOc
	VRsc/49jtmbduxnOBGSsaJ0=
X-Google-Smtp-Source: ABdhPJzjRiYqOrkv7DovgyMFA1APrVKMwRyN5sKmd9W0VxIX6nEAj4Ku/M0qJRlqTl+SH+3yA112rw==
X-Received: by 2002:a17:90a:4383:: with SMTP id r3mr5237930pjg.223.1628904851011;
        Fri, 13 Aug 2021 18:34:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:d206:: with SMTP id o6ls1389696pju.2.canary-gmail;
 Fri, 13 Aug 2021 18:34:10 -0700 (PDT)
X-Received: by 2002:a17:902:e889:b0:12d:a686:394a with SMTP id w9-20020a170902e88900b0012da686394amr565691plg.57.1628904850410;
        Fri, 13 Aug 2021 18:34:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628904850; cv=none;
        d=google.com; s=arc-20160816;
        b=bEDl1O15ITzAC/caiPgze682tM/S6SCavRH1O0RSoLwmQb1WkkWQi8ZW6TR2lefEHf
         GGEri+oiuQkxpZQs4m9PRZR69CzcgETeb1d5BYt3yEcAP5xDvTjGjSqXLbi9F/nAzTTA
         jGxoyD6xJDD9FhG10Gog+LKPYYzm+8ylwmJfq8hWDr19a5l/x3zMvFTTL4/5YcmPBr1f
         mHgJ5X0CD5tGkA1U9072PdEdFIVnEl60ll0chxAwwM16T+ijnNcJ4aabOy6uh3G0MZU7
         SLPiKaw6NDSTG4diva/x9orMFGSHfGGgwhLP4YxWXhUpC95ysT8S48izDxrH3wK0GgKT
         XOOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=D1NrHp21TglzpTWQR4gc+oo0WJWxlE8wjDRqrZvWVYo=;
        b=TK/yvrD6b1ivKQE81aHb6vbm9e6oAJ5OPLEJeTU+XlfUHo7BpPCauxN+6k1gKEDeKD
         R7GT8wbhoMT0drPFo59SBSmdv9bvZfp76HrpVW01HnGQA32Ow2eWotCM3i9YaTxhixJB
         klfidavFy/XtWMdvC/9kTrRFvzNTiSVQjrsCX7MkG6YNpI3k6rGjtxMCiB329xkv5P5X
         3y1Ye8+weTElFxWBmrLOml2yn16AVk2Nl3tPpJrpRzJyVVVT7RbvGPFCEDqW8Fk5ZCtB
         gfQgUG03NM9BjBFj9cNV3qwh4BKzWLD5HBTmHaQ41APqaTc6/mncyYYUAW46KEpb7nok
         2ocQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=Xvhp4Aqk;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.81 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-02.nifty.com (conssluserg-02.nifty.com. [210.131.2.81])
        by gmr-mx.google.com with ESMTPS id p1si169496plo.3.2021.08.13.18.34.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Aug 2021 18:34:10 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.81 as permitted sender) client-ip=210.131.2.81;
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180]) (authenticated)
	by conssluserg-02.nifty.com with ESMTP id 17E1Xd75023030
	for <clang-built-linux@googlegroups.com>; Sat, 14 Aug 2021 10:33:39 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-02.nifty.com 17E1Xd75023030
X-Nifty-SrcIP: [209.85.214.180]
Received: by mail-pl1-f180.google.com with SMTP id b7so14250869plh.7
        for <clang-built-linux@googlegroups.com>; Fri, 13 Aug 2021 18:33:39 -0700 (PDT)
X-Received: by 2002:a17:90a:9314:: with SMTP id p20mr5339607pjo.87.1628904818637;
 Fri, 13 Aug 2021 18:33:38 -0700 (PDT)
MIME-Version: 1.0
References: <20210810204240.4008685-1-ndesaulniers@google.com> <YRMFTm3EJWRqwZkM@Ryzen-9-3900X.localdomain>
In-Reply-To: <YRMFTm3EJWRqwZkM@Ryzen-9-3900X.localdomain>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Sat, 14 Aug 2021 10:33:01 +0900
X-Gmail-Original-Message-ID: <CAK7LNASWmV2W4MG8UUMQ=BqsK72coqwXsWRZ7TQMKRrtQqP=qA@mail.gmail.com>
Message-ID: <CAK7LNASWmV2W4MG8UUMQ=BqsK72coqwXsWRZ7TQMKRrtQqP=qA@mail.gmail.com>
Subject: Re: [PATCH] Makefile: remove stale cc-option checks
To: Nathan Chancellor <nathan@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
        Michal Marek <michal.lkml@markovi.net>,
        Andrew Morton <akpm@linux-foundation.org>,
        "Paul E. McKenney" <paulmck@kernel.org>,
        Peter Zijlstra <peterz@infradead.org>, Miguel Ojeda <ojeda@kernel.org>,
        Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>,
        Vitor Massaru Iha <vitor@massaru.org>,
        Sedat Dilek <sedat.dilek@gmail.com>,
        Daniel Latypov <dlatypov@google.com>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=Xvhp4Aqk;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.81 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

On Wed, Aug 11, 2021 at 8:01 AM Nathan Chancellor <nathan@kernel.org> wrote:
>
> On Tue, Aug 10, 2021 at 01:42:37PM -0700, Nick Desaulniers wrote:
> > cc-option, cc-option-yn, and cc-disable-warning all invoke the compiler
> > during build time, and can slow down the build when these checks become
> > stale for our supported compilers, whose minimally supported versions
> > increases over time. See Documentation/process/changes.rst for the
> > current supported minimal versions (GCC 4.9+, clang 10.0.1+). Compiler
> > version support for these flags may be verified on godbolt.org.
> >
> > The following flags are GCC only and supported since at least GCC 4.9.
> > Remove cc-option and cc-disable-warning tests.
> > * -fno-tree-loop-im
> > * -Wno-maybe-uninitialized
> > * -fno-reorder-blocks
> > * -fno-ipa-cp-clone
> > * -fno-partial-inlining
> > * -femit-struct-debug-baseonly
> > * -fno-inline-functions-called-once
> > * -fconserve-stack
> >
> > The following flags are supported by all supported versions of GCC and
> > Clang. Remove their cc-option, cc-option-yn, and cc-disable-warning tests.
> > * -fno-delete-null-pointer-checks
> > * -fno-var-tracking
> > * -mfentry
> > * -Wno-array-bounds
> >
> > The following configs are made dependent on GCC, since they use GCC
> > specific flags.
> > * READABLE_ASM
> > * DEBUG_SECTION_MISMATCH
> >
> > --param=allow-store-data-races=0 was renamed to --allow-store-data-races
> > in the GCC 10 release.
> >
> > Also, base RETPOLINE_CFLAGS and RETPOLINE_VDSO_CFLAGS on CONFIC_CC_IS_*
> > then remove cc-option tests for Clang.
> >
> > Link: https://github.com/ClangBuiltLinux/linux/issues/1436
> > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
>
> Fewer pointless calls to the compiler is always a good thing :)
>
> Reviewed-by: Nathan Chancellor <nathan@kernel.org>
>
> Small comments inline.
>
> > ---
> > Note: It may be preferred to move the test for
> > -fno-inline-functions-called-once for DEBUG_SECTION_MISMATCH into
> > Kconfig. That one does seem relatively more reasonable to implement in
> > Clang.
> >
> >  Makefile          | 55 ++++++++++++++++++++++++++---------------------
> >  lib/Kconfig.debug |  2 ++
> >  2 files changed, 33 insertions(+), 24 deletions(-)
> >
> > diff --git a/Makefile b/Makefile
> > index 027fdf2a14fe..3e3fb4affba1 100644
> > --- a/Makefile
> > +++ b/Makefile
> > @@ -730,9 +730,10 @@ endif # KBUILD_EXTMOD
> >  # Defaults to vmlinux, but the arch makefile usually adds further targets
> >  all: vmlinux
> >
> > -CFLAGS_GCOV  := -fprofile-arcs -ftest-coverage \
> > -     $(call cc-option,-fno-tree-loop-im) \
> > -     $(call cc-disable-warning,maybe-uninitialized,)
> > +CFLAGS_GCOV  := -fprofile-arcs -ftest-coverage
> > +ifdef CONFIG_CC_IS_GCC
> > +CFLAGS_GCOV  += -fno-tree-loop-im
> > +endif
>
> Eliminating -Wno-maybe-uninitialized might warrant a comment in the
> commit message as I was initially confused then I realized that it is
> unconditionally added later.


Indeed.

Commit 78a5255ffb6a1af189a83e493d916ba1c54d8c75
could have removed -Wno-maybe-initialized
from CFLAGS_GCOV as well, but somehow it has been
left over here...


Comments in the commit log, or perhaps
splitting this as 1/2 will be less confusing.





-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNASWmV2W4MG8UUMQ%3DBqsK72coqwXsWRZ7TQMKRrtQqP%3DqA%40mail.gmail.com.
