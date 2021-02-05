Return-Path: <clang-built-linux+bncBD52NTUX6UGBBWH56SAAMGQECDANX7I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x340.google.com (mail-wm1-x340.google.com [IPv6:2a00:1450:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id B1B31310B54
	for <lists+clang-built-linux@lfdr.de>; Fri,  5 Feb 2021 13:49:28 +0100 (CET)
Received: by mail-wm1-x340.google.com with SMTP id 5sf2963413wmq.0
        for <lists+clang-built-linux@lfdr.de>; Fri, 05 Feb 2021 04:49:28 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612529368; cv=pass;
        d=google.com; s=arc-20160816;
        b=X6psULLurV4bmnvkA5t5qJs2aUjvOiyAneODBurC0S9DNa20/FcS8CwNAlJiA91rYd
         n0LoX9SzvDPkZFmUI7RJ55Z/TgNDY5FulbFy3DOelKJ90PG/Dg0pCHpjD9cgJrSJdaCm
         g18PoHtWztZncDF/LK7K2y2ORmGqjqIAbA37HNYwPP/etFMytrzPLX2sUdmc+wECtFaD
         5d86WK7qVp6oj+FQ5bodMRJ+m8hf6o8tCuQxf6cCFewLUmdDUb2PknPULE7HPP+b1hO2
         gahbZhQaB0+6ws2BwAh8vzsjAkDtBa2b1vSHBoV4zxTv4D6GHmnLp5qF2uBFTBn5ME/8
         CPEg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :date:cc:to:from:subject:message-id:sender:dkim-signature;
        bh=st1vzZL4TL9UJACVYbfZ72yGFtSg3MuVziybK0yNHZM=;
        b=gjX8PzOqirL+qacRLngOooiiR4tD57ghpaH0Dpo/9kgmtiu58SrCdvhH4cHYzncW74
         PodyMdn4kIUfnjC0auA4jTH0aUMPigmOG62dcZgfdf9SvMEdm4lMmObQT8P8YMRZMIGJ
         j/jwp6jfFsRj9bg5Iuizx7Igqx4MHjBsrWsifyLMGAN0AS1ihWGvvBmlJoMluRKcAgJl
         /8bw1zZCQFBNS3c2GxufVl/mjm9JK1VDMeWEorlZLlS2ai/pwUL26/lNqrWgnczbSGCh
         KIIChUVcUFcuNdAdcORLIY7X1S+SeZrgZ97zrqMJpVtX+i9xm7uAbEUAl1QJzZf+u2Og
         kgsw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of mark@klomp.org designates 212.238.236.112 as permitted sender) smtp.mailfrom=mark@klomp.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=st1vzZL4TL9UJACVYbfZ72yGFtSg3MuVziybK0yNHZM=;
        b=IddXzTXEnJEx7YUGvejZZaCcad9Ok/OF+wea06vuePmmJ7YwZwkiYUK3Gy6j49P/Ax
         D+tMj0d6yNusNZPt/NmRBx6iazbanuOrxmmj+Q8eL6TZFcthlMBc3hxVtru+0J3olLu7
         arDn3gNo3JTJ3r0W9U1RcKuVZhSWSLW9wFa9aJR0aR1NrxctPegyc8hOw6d4bwNmluRv
         ibhNw6cQgZJrK7AtyZ3FPaK3rDaO5+7o42vaBiSTvKJyA/xKB7KPnnxypBm/HfZwx0fA
         cUggHKJcVARNJl6fKRoQ3ZL/YnVtEk+wBPF0mqn+3UqEK+BYzyHnYhBIOSTWnC2yGLrV
         m0Dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=st1vzZL4TL9UJACVYbfZ72yGFtSg3MuVziybK0yNHZM=;
        b=t5FM9IVsSFfNRyC0q1MBxok4PfHBsCnxgI/NcjoN6GK6OTLbkN/SfDlk8Et9zZsGPc
         LxSgq9hTJteTfREYXE9F4hPod75HViL+QQY2Mh0kXBGBEc1q5djS2Z8flR9C/YUHXTrh
         CTrfq1GXuNWxvjJZlA81Wny9INGr6P8N+9PjTcn40mgE/T7y1yaIAZLJjdNSVPppOuro
         VzGTGpy7joLEs1Q7mO+5OVKZw0Q+KAkGUfDnlFHb84DfBGXYhRI4PzWZX2vMwIndpcPa
         MDVME1hxexUKdMc6vO2+anIWlLSNMrgyhxpHV+h5wrK0aUOTTwcJrwbSk+ZJG7Qb0O1V
         P2gg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531mpqH2dml/CBefe/1S6LZnOBn+N1sQ2+fqJwPuZ9Hq0J3/yBiB
	T850rLnmPr/pyjJIkmorW/Q=
X-Google-Smtp-Source: ABdhPJxPv4kSIjgH0R30rZumffAy32/p/avYgpEqDtIxMsK+dwa/g27hev4ANuepkJ8GHGmZhXxxDQ==
X-Received: by 2002:a1c:7f93:: with SMTP id a141mr3498156wmd.105.1612529368332;
        Fri, 05 Feb 2021 04:49:28 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:fd09:: with SMTP id e9ls144071wrr.0.gmail; Fri, 05 Feb
 2021 04:49:27 -0800 (PST)
X-Received: by 2002:a5d:4204:: with SMTP id n4mr5035682wrq.196.1612529367312;
        Fri, 05 Feb 2021 04:49:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612529367; cv=none;
        d=google.com; s=arc-20160816;
        b=KAEkaoOUXRYQ7+kqqlvHL83N8hVm0485o0Rm7Dbyf51FCzpTlAmB6Xl790VMAthY/s
         nm8U8JXztj3+ZuveOuc4uxO3mf05PRxzVJcercZlOkyZ7YfdxH/Cv5fxU7nvAxZ41nJd
         LmUUpt/SKhaK4/egce2GcTtMYZoWzGx8yW3wsUbhibN3OoEYSVc0a7LDcICZp48MAySe
         zWHnQSuypptOO56afQjz6GqnNUSW4+wtnUmWsR6S1ARNSndRfVOm8gMhbZA03xUT0zqM
         glB7k6P40pr/Zdzyy05HkXc6RA9Wl6l3I3HgOSE+f8B6a1k8tomDSiKLFVDkBzGtDzin
         KVzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:references:in-reply-to:date
         :cc:to:from:subject:message-id;
        bh=MYc7QEeP7ey4VRu5jG4ch4v+GXqopVaZSSWR24dRUFk=;
        b=v0jKY6aRITMj8WI978Y3oT8/5/nLcRd4JSRVwQ0yJs59ahYq1o4HyURB9R7Fdn8OkH
         kSOOfQJxDbMUTcvQQu5UEr4xsNVBkrPL5KhDiQBGUB6yA1a1+kVRAwfaiiPm1WgBceQq
         oDfNbH5CaWuE0ObGuZ8dZuU76Iehid0OWMAsT/bnJ0ghCnYpLggqR4XGxAx64BOPYcmX
         wuJ6WEIgPzr8p1HIe5vld0JhPzQxDwtctybxiYWSyp4KecbNnK6dN/qdX5KYTcz0gEp3
         UbHOXPVDDULevA32olvFd3Gl/XAIvJAXJipAS4NvHDA4MJMRz91ljVpj9P7uvHlG4hJS
         NVFQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of mark@klomp.org designates 212.238.236.112 as permitted sender) smtp.mailfrom=mark@klomp.org
Received: from gnu.wildebeest.org (wildebeest.demon.nl. [212.238.236.112])
        by gmr-mx.google.com with ESMTPS id q81si529730wme.0.2021.02.05.04.49.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 05 Feb 2021 04:49:26 -0800 (PST)
Received-SPF: pass (google.com: domain of mark@klomp.org designates 212.238.236.112 as permitted sender) client-ip=212.238.236.112;
Received: from tarox.wildebeest.org (tarox.wildebeest.org [172.31.17.39])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by gnu.wildebeest.org (Postfix) with ESMTPSA id 7CA5430278CD;
	Fri,  5 Feb 2021 13:49:25 +0100 (CET)
Received: by tarox.wildebeest.org (Postfix, from userid 1000)
	id 3300D4000D37; Fri,  5 Feb 2021 13:49:25 +0100 (CET)
Message-ID: <8696ef2e86c5d8078bf2d2c74fb3cbbecbd22c83.camel@klomp.org>
Subject: Re: [PATCH v7 1/2] Kbuild: make DWARF version a choice
From: Mark Wielaard <mark@klomp.org>
To: Nick Desaulniers <ndesaulniers@google.com>, Masahiro Yamada
	 <masahiroy@kernel.org>
Cc: Nathan Chancellor <natechancellor@gmail.com>, Andrew Morton
 <akpm@linux-foundation.org>, Sedat Dilek <sedat.dilek@gmail.com>, LKML
 <linux-kernel@vger.kernel.org>, clang-built-linux
 <clang-built-linux@googlegroups.com>, Linux Kbuild mailing list
 <linux-kbuild@vger.kernel.org>, linux-arch <linux-arch@vger.kernel.org>, 
 Jakub Jelinek <jakub@redhat.com>, Fangrui Song <maskray@google.com>,
 Caroline Tice <cmtice@google.com>, Nick Clifton <nickc@redhat.com>,
 Yonghong Song <yhs@fb.com>, Jiri Olsa <jolsa@kernel.org>, Andrii Nakryiko
 <andrii@kernel.org>, Arnaldo Carvalho de Melo <acme@kernel.org>, Arvind
 Sankar <nivedita@alum.mit.edu>, Nathan Chancellor <nathan@kernel.org>,
 Guenter Roeck <linux@roeck-us.net>
Date: Fri, 05 Feb 2021 13:49:24 +0100
In-Reply-To: <CAKwvOdmHM8srtLaEy+L_XGzO9TBbhP3csQNAhUTH_TmeDePkDQ@mail.gmail.com>
References: <20210130004401.2528717-1-ndesaulniers@google.com>
	 <20210130004401.2528717-2-ndesaulniers@google.com>
	 <20210204103946.GA14802@wildebeest.org>
	 <CAKwvOdm0O8m_+mxy7Z91Lu=Hzf6-DyCdAjMOsCRiMmNis4Pd2A@mail.gmail.com>
	 <20fdd20fe067dba00b349407c4a0128c97c1a707.camel@klomp.org>
	 <CAKwvOdmT4t==akMN7eHWgD_XdpN--PLpUj8vgujGJ4TpREvteQ@mail.gmail.com>
	 <42d2542d4b7f9836121b92d9bf349afa920bd4cd.camel@klomp.org>
	 <CAKwvOdmHM8srtLaEy+L_XGzO9TBbhP3csQNAhUTH_TmeDePkDQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.28.5 (3.28.5-10.el7)
Mime-Version: 1.0
X-Spam-Flag: NO
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham autolearn_force=no version=3.4.0
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on gnu.wildebeest.org
X-Original-Sender: mark@klomp.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of mark@klomp.org designates 212.238.236.112 as permitted
 sender) smtp.mailfrom=mark@klomp.org
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

Hi Nick,

On Thu, 2021-02-04 at 14:06 -0800, Nick Desaulniers wrote:
> On Thu, Feb 4, 2021 at 12:28 PM Mark Wielaard <mark@klomp.org> wrote:
> > I believe so yes, we did a mass-rebuild of all of Fedora a few weeks
> > back with a GCC11 pre-release and did find some tools which weren't
> > ready, but as far as I know all have been fixed now. I did try to
> 
> Congrats, I'm sure that was _a lot_ of work.  Our toolchain folks have
> been pouring a lot of effort over getting our internal code all moved
> over, and it doesn't look like it's been easy from my perspective.
> 
> > coordinate with the Suse and Debian packagers too, so all the major
> > distros should have all the necessary updates once switching to GCC11.
> 
> That's great for users of the next Fedora release who can and will
> upgrade, but I wouldn't assume kernel developers can, or will (or are
> even using those distros).

And that is fine, then they will probably also not run GCC11 yet when
it gets released. GCC11 (and Fedora34) will not be released for another
2 months. By then I hope all issues found have made it into upstream
releases.

> My intent is very much to allow for users of toolchains that have not
> switched the implicit default (such as all of the supported versions
> of GCC that have been released ie. up to GCC 10.2, and Clang; so all
> toolchains the kernel still supports) to enjoy the size saving of
> DWARF v5, and find what other tooling needs to be updated.

Which seems a good thing. No complaints about making it easier to
experiment with DWARFv5 for such older compiler releases.

> Does no one test linux kernel builds with top of tree GCC built from
> source?

Fedora rawhide (f34) builds rc kernels against GCC11 ToT now:
https://koji.fedoraproject.org/koji/packageinfo?packageID=8

>   Or does that require "updating their other toolchain tools?"
> If I build ToT GCC from source, do I need to do the same for
> binutils-gdb in order to build the kernel?  Pretty sure I don't.

It isn't required, but then GCC won't produce full DWARF5 (e.g. line
tables are then still emitted as DWARF4).

> https://bugzilla.redhat.com/show_bug.cgi?id=1922707 and
> https://bugzilla.redhat.com/show_bug.cgi?id=1922698 look like user
> reports to me, but hopefully some CI system reported earlier that
> builds of the Linux kernel with GCC 11 pre release would produce the
> warnings from those bug report.  Otherwise it looks like evidence that
> users "are going to upgrade to GCC11 without updating their other
> toolchain tools."  In the case of pahole, they could not, because
> fixes were not yet written.  "Just upgrade" doesn't work if there's no
> fix yet upstream.  (pahole is reported fixed for that specific issue,
> FWIW).

So those are users that are participating in the Fedora rawhide
experiment with the GC11-prerelease. That are precisely the bug reports
we need to make sure we caught all issues before the final release. I
don't think that is any different from users trying out rc kernels and
finding issues that are then fixed.

> > > I don't doubt a lot of work has gone into fixing many downstream
> > > projects and then when building everything from ToT that there are no
> > > issues with DWARF v5.  The issue is getting upgrades into developers
> > > hands, and what to default to until then.
> > 
> > I would suggest you simply default to what you already do when the
> > compiler is given -g. Just like you do already for the implicit default
> > -std=gnuc*. Once GCC11 is actually released and people upgrade their
> > toolchain to use it the tools will be ready and in developers hands.
> 
> Hmmm...thinking about this more over lunch.
> 
> I think the linker script additions for the new DWARF v5 sections are
> most important.  There's no need to hold those hostage over what we do
> with the configs. They are orthogonal, and can go in first.  There's
> already one section in the linker script already related to v5, and we
> know that DWARF v5 is coming, so there's no reason not to just add
> them.  That would resolve
> https://bugzilla.redhat.com/show_bug.cgi?id=1922707.

Yes, that patch seems fine without any of the other config changes. It
would be nice to see that go in.

> For configs, today the kernel has an explicit opt in for DWARF v4
> called CONFIG_DEBUG_INFO_DWARF4.  When it was introduced, I suspect
> DWARF v2 (or v3) was the default, so it let kernel developers opt in
> to newer versions (say, for testing) than what was the implicit
> default version.  With the advent of DWARF v5 and toolchains moving to
> producing that by default, maybe there is still a place for
> CONFIG_DEBUG_INFO_DWARF4, but as a way to opt in to older versions.
> Your installed version of pahole or binutils is too old for DWARF v5?
> Great, CONFIG_DEBUG_INFO_DWARF4 is your friend until you can update
> your tools.  CONFIG_DEBUG_INFO_DWARF4 becomes "opt backwards" rather
> than it's original "opt forwards" (if that makes sense).
> 
> One small issue I have with that is that it doesn't help users of GCC
> 5 through 10.2 (or clang) opt into DWARF v5 (to test, or for the size
> savings) similar to the original intent of CONFIG_DEBUG_INFO_DWARF4.
> That was my intent with this series; to opt into new versions so we
> can begin testing them and finding kinks in other tools.  It was not
> intentionally to hold back compilers once they upgrade their default
> versions, even if I still think explicit is better than implicit.  And
> it would be nice to have the framework to continue to do so for v6
> someday.
> 
> So opting in to v4 explicitly provides a "pressure relief valve" for
> developers that don't have the latest tools.  Opting into v5
> explicitly allows for testing of those tools with the latest DWARF
> version (and size savings that are worthwhile) for folks with older
> GCC and Clang.
> 
> What are your thoughts on this?

Yes, being able to opt into DWARF4 if you have some newer tools like
GCC11 that already default to version 5, but not others, like an old
pahole release that doesn't handle version 5 yet would be nice to have.
But I don't think that is a very likely scenario given that pahole (and
binutils) already got a new releases and GCC11 won't be released for a
couple of months yet.

Likewise having the option to opt into DWARF5 even though some of the
tools don't default to (or fully support) DWARF5 yet seems a good idea.
Just for users to see whether that works with all their tools.

> What if I modified the config to have 3 options:
> 1. (default) CONFIG_DEBUG_INFO_DWARF_VERSION_DONT_CARE (I'm open to a
> better color for the bikeshed). Does not set a -gdwarf-*.  This is the
> status quo today when you build the kernel.  You allow toolchain
> developers to decide your fate. If that makes you unhappy, congrats,
> you have the below options.

My color of the bikeshed would be
CONFIG_DEBUG_INFO_DWARF_TOOLCHAIN_DEFAULT.

> 2. CONFIG_DEBUG_INFO_DWARF4 (the ship has already sailed on the name
> here, sorry) Explicitly sets -gdwarf-4. Use this if you have a good
> reason not to upgrade to the recommended -gdwarf-5.  We might
> disappear this option soon. (already exists in tree today, and doesn't
> need to be removed; instead repurposed)
> 3. CONFIG_DEBUG_INFO_DWARF5 Explicitly sets -gdwarf-5.  Use this if
> you would like to opt into a newer version than what's provided by
> default.  Provides significant size savings over DWARF v4. Avoid if
> you have broken shit you can't upgrade for whatever reason?
> 
> Then I think everyone can be happy? Toolchain vendors can to continue
> pursuing updates of implicit default dwarf version (aggressive, but
> necessary force adoption, perhaps), BTF/pahole/binutils users can
> downgrade until they have the necessary updates, and developers with
> older GCC and clang can opt in new features without having to upgrade
> the toolchain's implicit default (since that requires significant work
> for other codebases, but is making progress) and still realize the
> binary size savings.

That would certainly make me happy :)

Thanks,

Mark

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/8696ef2e86c5d8078bf2d2c74fb3cbbecbd22c83.camel%40klomp.org.
