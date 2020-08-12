Return-Path: <clang-built-linux+bncBDYJPJO25UGBB2OS2D4QKGQEGTN6XDY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63f.google.com (mail-pl1-x63f.google.com [IPv6:2607:f8b0:4864:20::63f])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E4EF242E1E
	for <lists+clang-built-linux@lfdr.de>; Wed, 12 Aug 2020 19:39:56 +0200 (CEST)
Received: by mail-pl1-x63f.google.com with SMTP id bc7sf2140668plb.4
        for <lists+clang-built-linux@lfdr.de>; Wed, 12 Aug 2020 10:39:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597253995; cv=pass;
        d=google.com; s=arc-20160816;
        b=pwSTRDo2yxBthCF+d+6EYD6AqBkvqarxKWLYBJogjCk2ZPne2omW30GcLSVeLjVKfi
         8p15wAmf3rBt9PtZXViRi0VzScXY2wsTfKesuR0TIC2SDQHG22wicsVwXiwEruDdwZgW
         xLiDO5OJ50pYPSqDLisMbi4OnZoEoP1ii2XU35xd4GJb6whJONPe1ZaH4qPoLB5MxWbq
         0LDCQn1r4XVgPVerjhYrTzdlu0d6MYjtfqDJelARKd7JwDDISDuXNIY7pSr70ZXSeLE1
         rnHw+b0MJ1gekJvY8SOaA5X/Ft+ACGBX+rzA28N0jMJnpZtNmVuLsKMpPmhwGxY9fte5
         +okA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=hx0cwIGO5KOYjEOreFKfVxhmuTgXSmrzYzGOzq8s1fY=;
        b=sIbYR/lm0V9KxuUVOZB3msacfcZXtVFgws7kwa6uEHRs44ISk1LfpcsYFB4JkaDjEW
         v99MjOEWjpcEHGS+QO1GCRjGqyqTH6QPDWq1EQx27EUH1/a9yri6xQnMtE42jrIAL74Z
         q3iq87Wo95Gvq7vUTxggiIzvcVW+e3jNHTHNGJ95i9L56qKPmf+GYNLGkHQ0NUzMkzyB
         +XkssEnFdBrmev//6Cux0W/DoTYqdn3PSTw5tI94BLaiGPnEgHuwDMhOTiAHli8KGv99
         dA72WSxBSL/gbszDeFd/Mw4w/9O3aLrLUk6pEA8E6vG+iOheU8HWqxiShxkRJq4OJ05Q
         hNyg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=aTw6NC1z;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hx0cwIGO5KOYjEOreFKfVxhmuTgXSmrzYzGOzq8s1fY=;
        b=ZH0WmjhKXU92wnu5YksbgGurnFf9p3INlehtRPaQJ7D09Hit0HG7QZ5SuqYfXiwVX5
         SlBVK5wnFjr6nUHR+MqX9MNkORh89CVdKcjg2Kq/3godQdYMGRBlAacbV3f41CTtF3DC
         jj1bAo4/Rq3xOkuLvvs79wTzjsTwE7S6iP4eJp7dR+FP/nRgar8TenRLllrihuNOe3MR
         fYtpqnu4rDN7GPaojlSbkBVS0nA9lEZX++4kmjsE1GJA2ePD0w3Q0KbFFRqbzNp1JLyz
         mJJWDNwmExUOmTzJ4g8STpQpo8virilmSlLvfBMQVYb5v4WS2RzcWWjrv1T+md9+c5tA
         o97A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hx0cwIGO5KOYjEOreFKfVxhmuTgXSmrzYzGOzq8s1fY=;
        b=lCuwiGyR7r2JF0gXuk7dlcdnXhgzej6y1wub5ilWj300KZNONFVyKjlFYoyKpp/JHj
         IXCthk2upGOO3d/2o4HFlrPI4c40j9Yt8pi/DhPQuz8eNvlSf2epv4CP7RVERpIINvg5
         b2AQGftKgZaEAFdTTntSSHWIVsLDNJrQTDZhANSA62Jhe3kmyuxZP1F46xVtuXMnwP3c
         5naw56bU14RIvOfZE1O+ZWcsfNg0bq253WALT5dchVhJz9A4VXk2QZH4VveVGSAqu8QE
         R9Wv1Bwk/1/+bx18R/M351zHqUVWrr2pCBOdkgtsOUHFfBMnltLlpx3s3EH4wsZE60lE
         j9wg==
X-Gm-Message-State: AOAM532pjr8V+ZFYKayJS2HvPunk+runp3cGj+sptlXEP9otOkCobkhh
	idjJLXLQ5ydUNnwlUVOgXOY=
X-Google-Smtp-Source: ABdhPJycy86WstKIxkYs+s/Do8lW5Ry/MOMrLCuaOodp0nu/Qn00UmNxYPJDlNLHZP80W6CHA21fkg==
X-Received: by 2002:aa7:9494:: with SMTP id z20mr579551pfk.55.1597253993892;
        Wed, 12 Aug 2020 10:39:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:7a84:: with SMTP id v126ls1057630pfc.11.gmail; Wed, 12
 Aug 2020 10:39:53 -0700 (PDT)
X-Received: by 2002:a63:6dc2:: with SMTP id i185mr248372pgc.190.1597253993140;
        Wed, 12 Aug 2020 10:39:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597253993; cv=none;
        d=google.com; s=arc-20160816;
        b=gBuZqt0X6J7qgmBj4sCUD1Uupmttr5TDjOodrjZdYLERlL68y3ZvA4URy+MsPAQwOe
         dd7jjtpMwXYlIkrb9HW2l4VzCqH+DvN3HC0qha1hEXPVkD4BuyKwJhKOI14zDiQ9Fb1u
         vd/JQRtYkq+UvK6g+bJf/zIofJVFdVweT6BYjlkk36Wgk/etytno2dzNbRD2lbVoLLNZ
         hl2dnUuprpbGVdK8HFXS/ueuLjYIatKF1g1owLhk8ktlTNVNygIEOYX1w/krujQMRLO7
         BcBTFQULqvGGeQ+j3ar5rJrJlJOjRxKskVSK1n9oLC1CXLidD9VIR5IQcDCvjTakEpKm
         Q3Mg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=M+nw0tzUCelBAby2tkOpTqz2VXzgt4Q4iLKx4BxN7dk=;
        b=njgojIXacP0hB67C93UOqB/mhjLe2QHIPsxChzx9t5L9rDcAGCL6D/uXDVAaQw+DO3
         uTtIm8qHcNZT973CFGk764yGveRDGNK3b6gSpnqekEA10GgaL6SosGXrP57KGsjilEPI
         JfscZjXl0NRt23qZ0BL457P02webQuKdIillNwhU9XG8MYPqq8dJ/d2czLxOr4y9NMbg
         V6NEHFfqErYAMTwMAOv0IdkBeS9m1WU4BSL1fCnk/kmAwU33fOfIuADLzvtE5u/eh6x0
         OQ9ORZXIvy8ZN3T61xPTzjb9T1lcxR4TbH7i8pD/g4T8BR1z7jiBnofhvUW4nVk5CRNK
         yrnA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=aTw6NC1z;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id bx1si349486pjb.1.2020.08.12.10.39.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Aug 2020 10:39:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id f193so1365263pfa.12
        for <clang-built-linux@googlegroups.com>; Wed, 12 Aug 2020 10:39:53 -0700 (PDT)
X-Received: by 2002:a62:8303:: with SMTP id h3mr586947pfe.169.1597253992588;
 Wed, 12 Aug 2020 10:39:52 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOd=ypa8xE-kaDa7XtzPsBH8=Xu_pZj2rnWaeawNs=3dDkw@mail.gmail.com>
 <20200811173655.1162093-1-nivedita@alum.mit.edu> <CAKwvOdnjLfQ0fWsrFYDJ2O+qFAfEFnTEEnW-aHrPha8G3_WTrg@mail.gmail.com>
 <20200811224436.GA1302731@rani.riverdale.lan> <CAKwvOdnvyVapAJBchivu8SxoQriKEu1bAimm8688EH=uq5YMqA@mail.gmail.com>
 <20200811234340.GA1318440@rani.riverdale.lan> <CAKwvOdn5gCjcAVHZ3jHU+q=mD5rmFAHpEyHyLf7ixtdaQ3Z-PQ@mail.gmail.com>
 <20200812004158.GA1447296@rani.riverdale.lan>
In-Reply-To: <20200812004158.GA1447296@rani.riverdale.lan>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 12 Aug 2020 10:39:41 -0700
Message-ID: <CAKwvOdnQu_6_NNtzFfxpjsxNzbj4JwENXntzMicOE6ZbUrBZqw@mail.gmail.com>
Subject: Re: [PATCH] x86/boot/compressed: Disable relocation relaxation for
 non-pie link
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, 
	Fangrui Song <maskray@google.com>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	e5ten.arch@gmail.com, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>, Masahiro Yamada <masahiroy@kernel.org>, 
	Ard Biesheuvel <ardb@kernel.org>, Kees Cook <keescook@chromium.org>, 
	LKML <linux-kernel@vger.kernel.org>, "# 3.4.x" <stable@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=aTw6NC1z;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441
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

On Tue, Aug 11, 2020 at 5:42 PM Arvind Sankar <nivedita@alum.mit.edu> wrote:
>
> On Tue, Aug 11, 2020 at 04:51:23PM -0700, Nick Desaulniers wrote:
> > On Tue, Aug 11, 2020 at 4:43 PM Arvind Sankar <nivedita@alum.mit.edu> wrote:
> > >
> > > On Tue, Aug 11, 2020 at 04:04:40PM -0700, Nick Desaulniers wrote:
> > > > On Tue, Aug 11, 2020 at 3:44 PM Arvind Sankar <nivedita@alum.mit.edu> wrote:
> > > > >
> > > > > On Tue, Aug 11, 2020 at 10:58:40AM -0700, Nick Desaulniers wrote:
> > > > > > > Cc: stable@vger.kernel.org # 4.19.x
> > > > > >
> > > > > > Thanks Arvind, good write up.  Just curious about this stable tag, how
> > > > > > come you picked 4.19?  I can see boot failures in our CI for x86+LLD
> > > > > > back to 4.9.  Can we amend that tag to use `# 4.9`? I'd be happy to
> > > > > > help submit backports should they fail to apply cleanly.
> > > > > > https://travis-ci.com/github/ClangBuiltLinux/continuous-integration/builds/179237488
> > > > > >
> > > > >
> > > > > 4.19 renamed LDFLAGS to KBUILD_LDFLAGS. For 4.4, 4.9 and 4.14 the patch
> > > > > needs to be modified, KBUILD_LDFLAGS -> LDFLAGS, so I figured we should
> > > > > submit backports separately. For 4.19 onwards, it should apply without
> > > > > changes I think.
> > > >
> > > > Cool, sounds good.  I'll keep an eye out for when stable goes to pick this up.
> > > >
> > > > tglx, Ingo, BP, can we pretty please get this in tip/urgent for
> > > > inclusion into 5.9?
> > > > --
> > > > Thanks,
> > > > ~Nick Desaulniers
> > >
> > > Another alternative is to just do this unconditionally instead of even
> > > checking for the -pie flag. None of the GOTPCRELs are in the
> > > decompressor, so they shouldn't be performance-sensitive at all.
> > >
> > > It still wouldn't apply cleanly to all the stable versions, but
> > > backporting would be even simpler.
> > >
> > > What do you think?
> > >
> > > diff --git a/arch/x86/boot/compressed/Makefile b/arch/x86/boot/compressed/Makefile
> > > index 3962f592633d..10c2ba59d192 100644
> > > --- a/arch/x86/boot/compressed/Makefile
> > > +++ b/arch/x86/boot/compressed/Makefile
> > > @@ -43,6 +43,7 @@ KBUILD_CFLAGS += -Wno-pointer-sign
> > >  KBUILD_CFLAGS += $(call cc-option,-fmacro-prefix-map=$(srctree)/=)
> > >  KBUILD_CFLAGS += -fno-asynchronous-unwind-tables
> > >  KBUILD_CFLAGS += -D__DISABLE_EXPORTS
> > > +KBUILD_CFLAGS += $(call as-option,-Wa$(comma)-mrelax-relocations=no)
> >
> > We'd still want it for KBUILD_AFLAGS, too, just to be safe. Maybe a
>
> KBUILD_CFLAGS gets included into KBUILD_AFLAGS, so this already does
> that.

Ah, right, just below it in the diff.

>
> > one line comment to the effect of `# remove me once we can link as
> > -pie` would help us rip off this band-aid in the future?  It's more
> > obvious that the added hunk can be reverted once -pie linkage is
> > achieved with the current patch; either are fine by me.  Thanks!
> >
> > >
> > >  KBUILD_AFLAGS  := $(KBUILD_CFLAGS) -D__ASSEMBLY__
> > >  GCOV_PROFILE := n
> >
> >
> >
> > --
> > Thanks,
> > ~Nick Desaulniers



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnQu_6_NNtzFfxpjsxNzbj4JwENXntzMicOE6ZbUrBZqw%40mail.gmail.com.
