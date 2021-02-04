Return-Path: <clang-built-linux+bncBDYJPJO25UGBBDPA6GAAMGQEV3MVVLY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3b.google.com (mail-oo1-xc3b.google.com [IPv6:2607:f8b0:4864:20::c3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 0525730FFDB
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Feb 2021 23:07:11 +0100 (CET)
Received: by mail-oo1-xc3b.google.com with SMTP id u9sf2376093oon.23
        for <lists+clang-built-linux@lfdr.de>; Thu, 04 Feb 2021 14:07:10 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612476430; cv=pass;
        d=google.com; s=arc-20160816;
        b=z05Y7v8mI0OIk2UYeZyaC9uCLPthrI09pwqsFPAbUqe2pwz3k1EWIQOuPP79i3VUox
         6B6b7SZKqJmO1FlC7F2qoTA5yxm09RwF0nCZjDjcELHp7wDcjm7XzxhziJuu0NbyBLdf
         ZtkBuS5YkaDyN2RwRa6tUVpsBMaaTgTOoAWz+/ugQy/+xubCT9c2zWaYgGg54NeaY4VW
         1CyJMuScI/N50ukMZsVyqHMBJY7pB8c3jLU/Mflzc909UymUQVKPdzK0qqAd3SMAxScT
         U5j5ZP9ji+RwjIW8QCizGEfot8Krm89L65wlIaxKEJ21ALrCVjg05pvrIFY/F0r6Pxre
         HLZg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=feq86zX+nj5XjovBbDw8QU52ED7zbKyO9fMf4S5Ea/A=;
        b=ZmY9N0os532y0CBeytkZk80aRgtt/YwZQhW4jw6YH4VROWZppU3yabRpTaqGW0fX6/
         iXnCt/+JaUxxKt0e8rjCbkLr+vd/L85VmdztSkqcKxwEsLmVduDZX1vC1LntcCnvNT4i
         RxaK3OEIDKarsiu0L54CidKK6NQunRTNuinJrANmI1T7FjQirYkUhZ6N6tvfnNFCiZ8Y
         Sfn/hi8ig5s4UQZBkTc4honJjutSr50C/JlC1FCj6oIO3ff126+uZr0FTIpsaTjA3VF8
         212v5hHZSP86gavdbUrTf4dUaTy6r/FLoperZAvgzAE1Bg9dh2PiJjjJypzSzHc5Wotv
         KHxA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=R7gA6WS1;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::634 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=feq86zX+nj5XjovBbDw8QU52ED7zbKyO9fMf4S5Ea/A=;
        b=KYg5e1CfE8ZyqiumpPdOU9sm/2+MjCSN7ZSjB2nGjDUpZ1eCiuVLacKYbmpaYVVGMi
         /f8H0UERcy5YuOcvjqXl2ywgiTNHOedCd+QDHFg/xCcOaf8l23NFe3TFRd0xLZXCp4nX
         toheSD2BM7GVygy59r/hgw54kLedu1PaVe+IY7P4eiBaRYZade29H/XFOdZQSbPKoSab
         p3bcIzoGk0/nk81PnV6EcSejigEmRiJ5iRgtxUPBVQhXaUZm00IYK0AWMUhfPKnDBB3T
         HG4W5tIPM4sh8Mw/DgdG2R7Ng7rUniysZ6e8xTrZGykoJ3u47ojOdO2zMsMUg8dsoP49
         TItQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=feq86zX+nj5XjovBbDw8QU52ED7zbKyO9fMf4S5Ea/A=;
        b=riBx6F2Y+3o/0daNh66wNY3T90r9SJlal3r3H7IzefusyxWuvqBAbq1jXVJTPl6GAf
         IMuYM+g8Z4wCYRg/vZJJ1tMdhhJzmY4GmBuTYzmRWm3MArQdhd4FZ6lRjMZNhXsdngvw
         JP6B1iJ1zg+bnm6xjLQxl8uBJM7mHaIUUq+NlzTVO+zAml/N0HBeypkvNNSYdZ/NNeTW
         fto1+Uc8/NIuRGwkmIXGGkA/IG2IZKa5t8IX76utNfdh0IWjB9rFlEdJhG0hELHyOFpP
         3cmwlW8XMEl6/Ik2tgxPgybbu2uIjKgekko/Pe6v+1J+/DzdxaKtHPfGejUnw7MPYmAC
         dQgg==
X-Gm-Message-State: AOAM530Y4Z+Z2e0aaPHjoW63D7sv8338n74rVojWLc78JjBYHA1cfYCB
	wmq/VgJ1SmL6mSytFzOUIns=
X-Google-Smtp-Source: ABdhPJwcOMvXDco1Mc3aCgSx7urZAa19I6S2HNxdqMrlT3bGdGZRQlNrtLmFk1lsCy4nXusIRYilFg==
X-Received: by 2002:aca:5a07:: with SMTP id o7mr1066992oib.166.1612476430033;
        Thu, 04 Feb 2021 14:07:10 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1e31:: with SMTP id t17ls1741810otr.3.gmail; Thu,
 04 Feb 2021 14:07:08 -0800 (PST)
X-Received: by 2002:a05:6830:2155:: with SMTP id r21mr1110331otd.15.1612476428171;
        Thu, 04 Feb 2021 14:07:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612476428; cv=none;
        d=google.com; s=arc-20160816;
        b=VKU2+pSsrBnSb/kBcvWEDjz5FurL+OvstVjyOBk353AuewzbaFI4Jh/g2hZVjwmKH+
         uANmGrs3G5uyi4xxq4NLkydSoEJbUuuYJttJpe8vb0vH2dDB+V5omtzUN1b+TEMRpOWv
         MFC+Kh1/rOGzXJe6IsI7Lqg937E6UZF+b2DAzZE2ViBKtmKxvEIlYdEa9+DNWRbMk+R0
         lroqo5HsQ+Bl8nRdrCefL7b9Kq5ti2TEXQVMIPiJPugPc1WYmV3KBmeNqYBdhDzcfzUP
         yi/5zvcyu89m31lXsL4Lgp0DUu/WVv4dkSSg0yn+9TOyPQVHBq+FFk/Gv5HtHVSlTaOR
         yyaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=05KyMluO6aBOS7rFTxbtbtvUcXwo64EwB2VZQ+hzSXY=;
        b=Kp4b0rQsBG4bJNAlHDqNnZDLcvbBribBYlEVWD71JJklBrRB/yO+D15bpqiCMwBt/N
         bDHtpaeXS0bZltzxcAk1IRTDg1mmjcV7zMF0E3EHNeVGchG5iMzchumJW0uc0dzZVGPa
         4Awng8pPhUj1TAERaMch6jwycXclts83ymOToM7EYgvfHIG25wAmNoDuzA9qJWKzMKoO
         tZqJYw2F+V/Mwc7gsedjgVnTu5MPqQefPjsQHysKEIzIF837NHDLHNrZmakIm0TFC0wF
         7EcbRvKq2McTfvMpZuFJDX92WjW6flRzoKkoXe+6grryJMMWd+/WfIs76iw3nK96icb9
         r20w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=R7gA6WS1;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::634 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x634.google.com (mail-pl1-x634.google.com. [2607:f8b0:4864:20::634])
        by gmr-mx.google.com with ESMTPS id r27si478732oth.2.2021.02.04.14.07.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Feb 2021 14:07:08 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::634 as permitted sender) client-ip=2607:f8b0:4864:20::634;
Received: by mail-pl1-x634.google.com with SMTP id d13so2515025plg.0
        for <clang-built-linux@googlegroups.com>; Thu, 04 Feb 2021 14:07:08 -0800 (PST)
X-Received: by 2002:a17:902:ed94:b029:de:8844:a650 with SMTP id
 e20-20020a170902ed94b02900de8844a650mr1357651plj.56.1612476427049; Thu, 04
 Feb 2021 14:07:07 -0800 (PST)
MIME-Version: 1.0
References: <20210130004401.2528717-1-ndesaulniers@google.com>
 <20210130004401.2528717-2-ndesaulniers@google.com> <20210204103946.GA14802@wildebeest.org>
 <CAKwvOdm0O8m_+mxy7Z91Lu=Hzf6-DyCdAjMOsCRiMmNis4Pd2A@mail.gmail.com>
 <20fdd20fe067dba00b349407c4a0128c97c1a707.camel@klomp.org>
 <CAKwvOdmT4t==akMN7eHWgD_XdpN--PLpUj8vgujGJ4TpREvteQ@mail.gmail.com> <42d2542d4b7f9836121b92d9bf349afa920bd4cd.camel@klomp.org>
In-Reply-To: <42d2542d4b7f9836121b92d9bf349afa920bd4cd.camel@klomp.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 4 Feb 2021 14:06:55 -0800
Message-ID: <CAKwvOdmHM8srtLaEy+L_XGzO9TBbhP3csQNAhUTH_TmeDePkDQ@mail.gmail.com>
Subject: Re: [PATCH v7 1/2] Kbuild: make DWARF version a choice
To: Mark Wielaard <mark@klomp.org>, Masahiro Yamada <masahiroy@kernel.org>
Cc: Nathan Chancellor <natechancellor@gmail.com>, Andrew Morton <akpm@linux-foundation.org>, 
	Sedat Dilek <sedat.dilek@gmail.com>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, linux-arch <linux-arch@vger.kernel.org>, 
	Jakub Jelinek <jakub@redhat.com>, Fangrui Song <maskray@google.com>, Caroline Tice <cmtice@google.com>, 
	Nick Clifton <nickc@redhat.com>, Yonghong Song <yhs@fb.com>, Jiri Olsa <jolsa@kernel.org>, 
	Andrii Nakryiko <andrii@kernel.org>, Arnaldo Carvalho de Melo <acme@kernel.org>, 
	Arvind Sankar <nivedita@alum.mit.edu>, Nathan Chancellor <nathan@kernel.org>, 
	Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=R7gA6WS1;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::634
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

On Thu, Feb 4, 2021 at 12:28 PM Mark Wielaard <mark@klomp.org> wrote:
>
> On Thu, 2021-02-04 at 12:04 -0800, Nick Desaulniers wrote:
> > On Thu, Feb 4, 2021 at 11:56 AM Mark Wielaard <mark@klomp.org> wrote:
> > > I agree with Jakub. Now that GCC has defaulted to DWARF5 all the
> > > tools
> > > have adopted to the new default version. And DWARF5 has been out
> > > for
> >
> > "all of the tools" ?
>
> I believe so yes, we did a mass-rebuild of all of Fedora a few weeks
> back with a GCC11 pre-release and did find some tools which weren't
> ready, but as far as I know all have been fixed now. I did try to

Congrats, I'm sure that was _a lot_ of work.  Our toolchain folks have
been pouring a lot of effort over getting our internal code all moved
over, and it doesn't look like it's been easy from my perspective.

> coordinate with the Suse and Debian packagers too, so all the major
> distros should have all the necessary updates once switching to GCC11.

That's great for users of the next Fedora release who can and will
upgrade, but I wouldn't assume kernel developers can, or will (or are
even using those distros).

Most recently, there was discussion on the list about upgrading the
minimally required version of GCC for building the kernel to GCC 5.1;
we still had developers complain about abandoning GCC 4.9.  And
Guenter shared with me a list of architectures he tests with where he
cannot upgrade the version of GCC in order to keep building them.
https://github.com/groeck/linux-build-test/blob/master/bin/stable-build-arch.sh
(I hope someone sent bug reports for those)

My intent is very much to allow for users of toolchains that have not
switched the implicit default (such as all of the supported versions
of GCC that have been released ie. up to GCC 10.2, and Clang; so all
toolchains the kernel still supports) to enjoy the size saving of
DWARF v5, and find what other tooling needs to be updated.

> > > more than 4 years already. It isn't unreasonable to assume that people
> > > using GCC11 will also be using the rest of the toolchain that has moved
> > > on. Which DWARF consumers are you concerned about not being ready for
> > > GCC defaulting to DWARF5 once GCC11 is released?
> >
> > Folks who don't have top of tree pahole or binutils are the two that
> > come to mind.
>
> I believe pahole just saw a 1.20 release. I am sure it will be widely
> available once GCC11 is released (which will still be 1 or 2 months)
> and people are actually using it. Or do you expect distros/people are
> going to upgrade to GCC11 without updating their other toolchain tools?

Does no one test linux kernel builds with top of tree GCC built from
source?  Or does that require "updating their other toolchain tools?"
If I build ToT GCC from source, do I need to do the same for
binutils-gdb in order to build the kernel?  Pretty sure I don't.

https://bugzilla.redhat.com/show_bug.cgi?id=1922707 and
https://bugzilla.redhat.com/show_bug.cgi?id=1922698 look like user
reports to me, but hopefully some CI system reported earlier that
builds of the Linux kernel with GCC 11 pre release would produce the
warnings from those bug report.  Otherwise it looks like evidence that
users "are going to upgrade to GCC11 without updating their other
toolchain tools."  In the case of pahole, they could not, because
fixes were not yet written.  "Just upgrade" doesn't work if there's no
fix yet upstream.  (pahole is reported fixed for that specific issue,
FWIW).

> BTW. GCC11 doesn't need top of tree binutils, it will detect the
> binutils capabilities (bugs) and adjust its DWARF output based on it.

Yes, I saw https://gcc.gnu.org/git/gitweb.cgi?p=gcc.git;h=6923255e35a3d54f2083ad0f67edebb3f1b86506
and https://gcc.gnu.org/git/gitweb.cgi?p=gcc.git;h=1aeb7d7d67d167297ca2f4a97ef20f68e7546b4c.
It's nice that GCC can tightly couple to a version of binutils. Clang
without its integrated assembler can make no such assumptions about
which assembler the user will prefer to use instead at runtime, and
without binutils 2.35.1 being widely available as we all would like,
leads to issues shipping DWARF v5 by default.

> >   I don't have specifics on out of tree consumers, but
> > some Aarch64 extensions which had some changes to DWARF for ARMv8.3
> > PAC support broke some debuggers.
>
> It would be really helpful if you could provide some specifics. I did
> fix some consumers to handle the PAC operands in CFI last year, but I
> don't believe that had anything to do with the default DWARF version,
> just with dealing with DW_CFA_AARCH64_negate_ra_state.

Yep, that's the one.  I suspect that the same out of tree consumers of
DWARF that did not see that coming will similarly be stumped when
presented with DWARF v5, but it's hypothetical, so not much of an
argument I'll admit.  I just wouldn't bet that an upgrade to DWARF v5
will be painless at this point in time, as evidenced by how much blood
has been poured into finding what tools out there were broken and
needed to be fixed.  I also recognize we can't drag our heels forever
over this.  It's not the intent of the patch series to do so.

> > I don't doubt a lot of work has gone into fixing many downstream
> > projects and then when building everything from ToT that there are no
> > issues with DWARF v5.  The issue is getting upgrades into developers
> > hands, and what to default to until then.
>
> I would suggest you simply default to what you already do when the
> compiler is given -g. Just like you do already for the implicit default
> -std=gnuc*. Once GCC11 is actually released and people upgrade their
> toolchain to use it the tools will be ready and in developers hands.

Hmmm...thinking about this more over lunch.

I think the linker script additions for the new DWARF v5 sections are
most important.  There's no need to hold those hostage over what we do
with the configs. They are orthogonal, and can go in first.  There's
already one section in the linker script already related to v5, and we
know that DWARF v5 is coming, so there's no reason not to just add
them.  That would resolve
https://bugzilla.redhat.com/show_bug.cgi?id=1922707.

For configs, today the kernel has an explicit opt in for DWARF v4
called CONFIG_DEBUG_INFO_DWARF4.  When it was introduced, I suspect
DWARF v2 (or v3) was the default, so it let kernel developers opt in
to newer versions (say, for testing) than what was the implicit
default version.  With the advent of DWARF v5 and toolchains moving to
producing that by default, maybe there is still a place for
CONFIG_DEBUG_INFO_DWARF4, but as a way to opt in to older versions.
Your installed version of pahole or binutils is too old for DWARF v5?
Great, CONFIG_DEBUG_INFO_DWARF4 is your friend until you can update
your tools.  CONFIG_DEBUG_INFO_DWARF4 becomes "opt backwards" rather
than it's original "opt forwards" (if that makes sense).

One small issue I have with that is that it doesn't help users of GCC
5 through 10.2 (or clang) opt into DWARF v5 (to test, or for the size
savings) similar to the original intent of CONFIG_DEBUG_INFO_DWARF4.
That was my intent with this series; to opt into new versions so we
can begin testing them and finding kinks in other tools.  It was not
intentionally to hold back compilers once they upgrade their default
versions, even if I still think explicit is better than implicit.  And
it would be nice to have the framework to continue to do so for v6
someday.

So opting in to v4 explicitly provides a "pressure relief valve" for
developers that don't have the latest tools.  Opting into v5
explicitly allows for testing of those tools with the latest DWARF
version (and size savings that are worthwhile) for folks with older
GCC and Clang.

What are your thoughts on this?

What if I modified the config to have 3 options:
1. (default) CONFIG_DEBUG_INFO_DWARF_VERSION_DONT_CARE (I'm open to a
better color for the bikeshed). Does not set a -gdwarf-*.  This is the
status quo today when you build the kernel.  You allow toolchain
developers to decide your fate. If that makes you unhappy, congrats,
you have the below options.
2. CONFIG_DEBUG_INFO_DWARF4 (the ship has already sailed on the name
here, sorry) Explicitly sets -gdwarf-4. Use this if you have a good
reason not to upgrade to the recommended -gdwarf-5.  We might
disappear this option soon. (already exists in tree today, and doesn't
need to be removed; instead repurposed)
3. CONFIG_DEBUG_INFO_DWARF5 Explicitly sets -gdwarf-5.  Use this if
you would like to opt into a newer version than what's provided by
default.  Provides significant size savings over DWARF v4. Avoid if
you have broken shit you can't upgrade for whatever reason?

Then I think everyone can be happy? Toolchain vendors can to continue
pursuing updates of implicit default dwarf version (aggressive, but
necessary force adoption, perhaps), BTF/pahole/binutils users can
downgrade until they have the necessary updates, and developers with
older GCC and clang can opt in new features without having to upgrade
the toolchain's implicit default (since that requires significant work
for other codebases, but is making progress) and still realize the
binary size savings.

--
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmHM8srtLaEy%2BL_XGzO9TBbhP3csQNAhUTH_TmeDePkDQ%40mail.gmail.com.
