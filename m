Return-Path: <clang-built-linux+bncBD52NTUX6UGBBV5R6GAAMGQEPU7NAHI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x339.google.com (mail-wm1-x339.google.com [IPv6:2a00:1450:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id 3577430FE28
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Feb 2021 21:28:08 +0100 (CET)
Received: by mail-wm1-x339.google.com with SMTP id q24sf2583232wmc.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 04 Feb 2021 12:28:08 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612470488; cv=pass;
        d=google.com; s=arc-20160816;
        b=zBNqL/B3fdZ2O9tnZSzQrvAmA1RlwO7e2TSbRS3Mg/Y3U8YJCZcBPX7Civg3dKBZSu
         6Fk4o0xsaRI/yKecNmt4Nl3VhiJ4xsu9YIRXtZHCLk3k0XavzY55ieGlcpQYX852YlN6
         MO5nprHSYjEyUpeNToTEMX4956M2Rj5fBSZvp5H+scHpsqlr4mIfzfosUhi58YKnTLRS
         6TJQ2UrGzvsWAEH/k59QlIIZThXcI+JyfbQezoQjsj8Ukf5Yq/qhLlEwcN3Qz3OkmMiu
         l0WO7+ySxAiF2Bjn/3fPMurNdUVFOvxpYdMkeuX8ssQ33ORgWKy7gCgD+SU9Q2nM8MrU
         7ucw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :date:cc:to:from:subject:message-id:sender:dkim-signature;
        bh=ugfdU28KZT9zM0fv70P44Yqk3cDk0B4e9nmMS+SRjUQ=;
        b=oSQs6YhQXxnPdgYCvWkLwwlCLL4hhTVn5Yz9asz/GLnUHVq4W9ysXWyPs0dn+cfg0r
         g0YFXiKh4zlNjrK/XnvFwriRHEJC1iVID+7Q9YPcMzdvyi9l7UjQI0QAeAEK2OGICK3+
         7KFa1iYZ5yY2SdE9xa8pJE9AjpxskHagLuqlOA878N2kFuRWhAf71Hy3Exewx5erjhAj
         uvYWto8y5/727B7XDtQkRpmENXsniaouTs7M5xVIu9tz4JzkRFRnzTBLm79bmXaALHC7
         MlDx6A8J/pCvbBuJls8I3n9jdeP1CS/iAxPtd0y3xC4/5ues8AQIXoFZzGA6yy4SQZV0
         Qx5w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of mark@klomp.org designates 212.238.236.112 as permitted sender) smtp.mailfrom=mark@klomp.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ugfdU28KZT9zM0fv70P44Yqk3cDk0B4e9nmMS+SRjUQ=;
        b=E4yjBG2Qb7w/kJZTy0vebdnL599lQ5OJexfOR5zZFVJSsZSx3/HN6W3GIQbb2kNgk+
         s0kdtcUbsnCfkXTdLTONekEEgmI8NSG0lZtWhqklj4dAjNfFPoXOBCrYvhNx3f3X9htg
         e1y8OgyrJ6KrdnawjVCSJSfsrGHXCs7JlOrQA+PO3hVoWT+Z+RidhbZSXgwUGiWcNV5E
         N+b35aUYkew+JiWkTsRW5607knhdgjGd2yAUkZluMv1x6pzJ7gNAqiAezEyOhB/SBLca
         8lJZPJ709NitbAQAXGJTWNvdm2BvMgzpUBU8r6IlMchBLWsiPQdnjead02h2tUuWMJrl
         KdBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ugfdU28KZT9zM0fv70P44Yqk3cDk0B4e9nmMS+SRjUQ=;
        b=UHSqzyWxB3qwhRvZnCXwvKrWocSi4JAyiYP/eN18dEdhrLbdKLDL8/p/SV2mwuzo3w
         t6/5WhiqgwjqFQaNhtFb9ybK1WJ6OzT43JfrgNro3/aShbqNjIVMvDHV6ZWDItIqff1A
         SCcKcxMUBOP1aJgcKkPFfOgkFAVB5wdpdK26XhZTnOw5QKAKUDaG42HKO++EM8WYHon5
         jFIGx7hAOcR7GpTiT67bPG8Mo3v4gblms6LxPbyt4WdYhTv6oqP4xaVvsUCmd7McdMuZ
         8LVOxDOLHIJajtrFrKbLgU7BjVUlcZVpXeom4KF8FX4kVXJP/MD0Xs7UQLEYryCLwzwQ
         GtLg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531iEmEKR7UleuRkYVqzAYredzBkbTwuJUYxkoAFpbmgd7fIt/Wi
	EmH1EsZpp4guvzrrLIwvF38=
X-Google-Smtp-Source: ABdhPJxfzr6afmai7XnAq/1II9LdicRPEHW859TBT+SBBGJM0TCXUgHTikZ7DuGSxz4aWYr6bSI5Yg==
X-Received: by 2002:adf:e984:: with SMTP id h4mr1191803wrm.247.1612470487935;
        Thu, 04 Feb 2021 12:28:07 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:60c2:: with SMTP id u185ls3185193wmb.2.gmail; Thu, 04
 Feb 2021 12:28:07 -0800 (PST)
X-Received: by 2002:a1c:2d0b:: with SMTP id t11mr745936wmt.109.1612470487141;
        Thu, 04 Feb 2021 12:28:07 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612470487; cv=none;
        d=google.com; s=arc-20160816;
        b=Hx2fTskKvuN9931Q2HoT5V+kPnfBTpOpnafq3eNNFipg+IoRD5uvCC+CZPIfDziWuF
         yTR6Wcu0mh1l2kwJxLt/Kn6Nrwbna0N6+7OruO/kJTzru5ZbDvQ/SFeUx+s/g6ak8wVu
         wLhq1owpbZ/zg1OH+5R2DfaexSXROYOMTVN1QImh3flUD/94bTbl0GGOMXnyfBSlUfu9
         Gx2BMMtBjNxL/h5jpVZeg75j8Wcg9z8ocrs+3awYWIuVxiYQxxqOunpYV9BfbVyU+5km
         s7Nw7V4nXw351VpX6joqNsUK/ENCqdmEasBdNbFAa5+1SuCVrlcqsXGVs2sqqqCbEEZy
         zchg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:references:in-reply-to:date
         :cc:to:from:subject:message-id;
        bh=+yKNFGLaIUbolWXytx/9U1col7JuuUZJs4tHoIkx4C4=;
        b=OaH8/RCQdsUckxC41lcJ6O+uCRtT49hrGa7NyBVwV/KpbTbSO/7DsXnVyipGNJUmkF
         tCdk+S/nTOGB4VcrmJN2c6o3KFivqjxBP920Okv+nddvi8wqri/RP5gpXn8dZif5QgGY
         Sq1Z+lUSMk14V0q+XmqZPHo8V0sLSWWMvpE0rMGOW51CIub7+IElK8q812VnBU4qQ63M
         SJN6TjZEU1y1qgB0W5kDB9WiFmiSKrQIkYEplQX9nfWVLpnnuwROWvp0EctDu53FHWd0
         Ps/2+oxqJFhqB8B319jo4ygHiQJmZmjeweEQmBnESlcijS7Oo+drJSSjzBLA/+NPjnNA
         hk7g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of mark@klomp.org designates 212.238.236.112 as permitted sender) smtp.mailfrom=mark@klomp.org
Received: from gnu.wildebeest.org (wildebeest.demon.nl. [212.238.236.112])
        by gmr-mx.google.com with ESMTPS id b5si270667wrd.4.2021.02.04.12.28.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 04 Feb 2021 12:28:06 -0800 (PST)
Received-SPF: pass (google.com: domain of mark@klomp.org designates 212.238.236.112 as permitted sender) client-ip=212.238.236.112;
Received: from tarox.wildebeest.org (tarox.wildebeest.org [172.31.17.39])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by gnu.wildebeest.org (Postfix) with ESMTPSA id 0C55230278CD;
	Thu,  4 Feb 2021 21:28:05 +0100 (CET)
Received: by tarox.wildebeest.org (Postfix, from userid 1000)
	id D4F1840C9DA3; Thu,  4 Feb 2021 21:28:05 +0100 (CET)
Message-ID: <42d2542d4b7f9836121b92d9bf349afa920bd4cd.camel@klomp.org>
Subject: Re: [PATCH v7 1/2] Kbuild: make DWARF version a choice
From: Mark Wielaard <mark@klomp.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Nathan Chancellor
 <natechancellor@gmail.com>, Andrew Morton <akpm@linux-foundation.org>,
 Sedat Dilek <sedat.dilek@gmail.com>, LKML <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>, Linux Kbuild
 mailing list <linux-kbuild@vger.kernel.org>, linux-arch
 <linux-arch@vger.kernel.org>,  Jakub Jelinek <jakub@redhat.com>, Fangrui
 Song <maskray@google.com>, Caroline Tice <cmtice@google.com>, Nick Clifton
 <nickc@redhat.com>, Yonghong Song <yhs@fb.com>, Jiri Olsa
 <jolsa@kernel.org>, Andrii Nakryiko <andrii@kernel.org>, Arnaldo Carvalho
 de Melo <acme@kernel.org>, Arvind Sankar <nivedita@alum.mit.edu>, Nathan
 Chancellor <nathan@kernel.org>
Date: Thu, 04 Feb 2021 21:28:05 +0100
In-Reply-To: <CAKwvOdmT4t==akMN7eHWgD_XdpN--PLpUj8vgujGJ4TpREvteQ@mail.gmail.com>
References: <20210130004401.2528717-1-ndesaulniers@google.com>
	 <20210130004401.2528717-2-ndesaulniers@google.com>
	 <20210204103946.GA14802@wildebeest.org>
	 <CAKwvOdm0O8m_+mxy7Z91Lu=Hzf6-DyCdAjMOsCRiMmNis4Pd2A@mail.gmail.com>
	 <20fdd20fe067dba00b349407c4a0128c97c1a707.camel@klomp.org>
	 <CAKwvOdmT4t==akMN7eHWgD_XdpN--PLpUj8vgujGJ4TpREvteQ@mail.gmail.com>
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

On Thu, 2021-02-04 at 12:04 -0800, Nick Desaulniers wrote:
> On Thu, Feb 4, 2021 at 11:56 AM Mark Wielaard <mark@klomp.org> wrote:
> > I agree with Jakub. Now that GCC has defaulted to DWARF5 all the
> > tools
> > have adopted to the new default version. And DWARF5 has been out
> > for
> 
> "all of the tools" ?

I believe so yes, we did a mass-rebuild of all of Fedora a few weeks
back with a GCC11 pre-release and did find some tools which weren't
ready, but as far as I know all have been fixed now. I did try to
coordinate with the Suse and Debian packagers too, so all the major
distros should have all the necessary updates once switching to GCC11.

> > more than 4 years already. It isn't unreasonable to assume that people
> > using GCC11 will also be using the rest of the toolchain that has moved
> > on. Which DWARF consumers are you concerned about not being ready for
> > GCC defaulting to DWARF5 once GCC11 is released?
> 
> Folks who don't have top of tree pahole or binutils are the two that
> come to mind.

I believe pahole just saw a 1.20 release. I am sure it will be widely
available once GCC11 is released (which will still be 1 or 2 months)
and people are actually using it. Or do you expect distros/people are
going to upgrade to GCC11 without updating their other toolchain tools?
BTW. GCC11 doesn't need top of tree binutils, it will detect the
binutils capabilities (bugs) and adjust its DWARF output based on it.

>   I don't have specifics on out of tree consumers, but
> some Aarch64 extensions which had some changes to DWARF for ARMv8.3
> PAC support broke some debuggers.

It would be really helpful if you could provide some specifics. I did
fix some consumers to handle the PAC operands in CFI last year, but I
don't believe that had anything to do with the default DWARF version,
just with dealing with DW_CFA_AARCH64_negate_ra_state.

> I don't doubt a lot of work has gone into fixing many downstream
> projects and then when building everything from ToT that there are no
> issues with DWARF v5.  The issue is getting upgrades into developers
> hands, and what to default to until then.

I would suggest you simply default to what you already do when the
compiler is given -g. Just like you do already for the implicit default
-std=gnuc*. Once GCC11 is actually released and people upgrade their
toolchain to use it the tools will be ready and in developers hands.

Cheers,

Mark

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/42d2542d4b7f9836121b92d9bf349afa920bd4cd.camel%40klomp.org.
