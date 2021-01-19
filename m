Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBNGZTSAAMGQEC43TATQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73c.google.com (mail-qk1-x73c.google.com [IPv6:2607:f8b0:4864:20::73c])
	by mail.lfdr.de (Postfix) with ESMTPS id 216DF2FBFA2
	for <lists+clang-built-linux@lfdr.de>; Tue, 19 Jan 2021 20:02:14 +0100 (CET)
Received: by mail-qk1-x73c.google.com with SMTP id s66sf21147162qkh.10
        for <lists+clang-built-linux@lfdr.de>; Tue, 19 Jan 2021 11:02:14 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611082933; cv=pass;
        d=google.com; s=arc-20160816;
        b=BAzX2+D+R5LBhe5AWM2/jaVjwyZrJ4JoFY2PpgdnQqoZc4cjhq7IbrUzTK6twH+yKr
         mG7TMqfU30jNCk+rj2x8ravn7PhfxAsQMP9ZL0JDD5u+/RmVqk0DbZSkh96RAb11YHQU
         s1W6GFq1hp67MxUUeIuROmd80Y9oNVp4r2MC5RMwWHO+PEZZunlG8jw9AHTxk4Zb2e7I
         Bp+vh43qa14A85UFMUK6J9Ego2rwgwf1R4WbOkGxZfac3iXYVERsdasf7qvsFgIIADqN
         Uvm6HEmfVi2+5HEq4UT0+7uaMxS/QzfBV9VWN4RwUBP9WRWzfH0N+6Zm8BgQ/SfsX2lQ
         Va8w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=ABrj2hvR5Xy7KEV/smmdO3hRsUP+QyI+z0ZVzdQO7JI=;
        b=KgNOG5dmTLRsdX4VYcCNhNAfnYnFsBQoJBWhS5t0AHXgvGTtdiuDGKjtSfWh8Ghat3
         h1mW0AUsJefkjiT9iiDhMzW6r7nw0/uP++B5KIBfp97OE6xPyo+W22noxN8TQ3PMYHJZ
         hA2p6PIKTY+CSsIx7Bx9Nz37U9iYAbGrwVBirI2ycPxDxB24amLRH8l/4wiP0VSaKVaD
         7EceCtxS7HGMBiguo8wgNhXi9QABeB68n6R69fstgtjx0IEPYCXG68CItKVGHFdOtlsX
         RSR6p2shrrnjveUKpm/OiOnE2cvEN2wAwgS3gsWHP4h+RQkOm6qh7KslkgzwDhacUXaH
         pjvw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=PDRabLSk;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ABrj2hvR5Xy7KEV/smmdO3hRsUP+QyI+z0ZVzdQO7JI=;
        b=NbBr2wH5X5xhyhaWuFKcKCxl0zjZWs4BfOg/ZmB1Mf3qlAhMZ/C+ZmwbhswcM2dp0G
         pwLCygg4CMzXA70byu3LX3inxtzhBh/haKEmvU/Tf/OHTFlG6iCQvIDLT4rNpfusniVe
         f7mfWWuo/Wn2zFpPYsdOfyXx87bSI7falMqnUK5abbHoOMAn5ZRVyp4F6trE5vMBaldd
         i3onc7/lXZshXo8MvPv4VntLOQqIudcOyKW3+lclWhgFkgNDFM0HSeWEB7+b5I66bI5x
         C37c0BaTOVQC/OLtw/djGPrptRDWD3RqSRhejWUEKfFcRYMThCSKLOV51qd+MV3Xfiwq
         /ufQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ABrj2hvR5Xy7KEV/smmdO3hRsUP+QyI+z0ZVzdQO7JI=;
        b=uRApv2GtRnOklBBs6nTO982VO4nlBr/hMIWEUCEDxx6Osdd/CimKvD9Et8nxkzZ3Tt
         RVa3/XAr+GO13p6FH/9GNuHlVA5iMCRmK0wYVkQk3xAZvAzlxatk1Z0fLZqcNeOpdgue
         34kDga2YA5EcLE42LlEhw7F0ZvEFxW04KR5ZCO0zW/m/Ps9NZdA54pSWgsS22wgx1boy
         sMl1ODLQLRfyy0Nb7xjRFWh3T9ToNbzpDMYyM+BskXz4hverXwD/Vlvdq1/fsXLUos01
         f0Qf+9m+QdNLASie3mwJXtrwLcJqCGJeaPovWcb437y+fxNIL40+sYBNrqegrhQzyT0A
         LQvg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533DEp8JdesQJgRQhR6fZzwZPHY+oU8EOrWwCjEC83DKe+1oqjCX
	jIQ3HaKcIBqwbyuhzKK8QgY=
X-Google-Smtp-Source: ABdhPJwFBYO5EY2hODKaHY5Ap5kJTekpDz2u8QdaeNa4MYy3Ejtgc3w5MmVKctFPPRlMrK68cys+Ow==
X-Received: by 2002:a37:d13:: with SMTP id 19mr5938937qkn.93.1611082932891;
        Tue, 19 Jan 2021 11:02:12 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ae9:edd6:: with SMTP id c205ls11438723qkg.10.gmail; Tue, 19
 Jan 2021 11:02:12 -0800 (PST)
X-Received: by 2002:a37:9a4a:: with SMTP id c71mr5936663qke.56.1611082932526;
        Tue, 19 Jan 2021 11:02:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611082932; cv=none;
        d=google.com; s=arc-20160816;
        b=zUj+iBZ7wG6uzdgyR4e2op9Bl5BMNSWg8dbfUUazLTIAIGr3gi6G7F/iX5d93ORdrO
         gbItifdc1stYFEvgdzafU/T2fyBDiVCRayXzLUO8B9UKfkaZU4I6Iu7i5Zp/YhGrWhAP
         VkVOf9Ytr6wPAQuQHJgktxjVWEuE282Xy3H4DMIRjL++4ZBlkrgXwPZdp1w/8ELQ/fd+
         B1RB0Ycl7CJSx1L7sbM/nIrXw3kI5ZrClXz347n4LTBS/2zrNcT1cxQxMNN0qUbicBSx
         ew47CuxNel5lXs+xjaefhhveXjLJXHW9OCeFBM3RcFhkQbAdbgv+MmzoukZP3L3fCJHx
         2rqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=zI6GU7mXkcWDxGjtKMV8O8z/yEmOhQ9tFNXqxOpXbBs=;
        b=fbfZZyVdqRsnxLZ+MXPNJPi+w/85SDg5rgLqZaUA4COQ312SmSjac2/Yg5jVoWliEX
         SsMB7VrLIabtycc08hIVVE1i5U5WDou5bL2piZUEs+sztXKcev6vG9Vn1Q85665oe1Qf
         pOWDKYgss+O7kZRPmIKzFsotRDm4wH3Yxqj8b4vkC+AGZoMcnsDKzSG29ACK9SLleWoK
         0FW3LN0ECjALINpypGStHXgEEihuZlefdLK7pdgEy4nKniLvJOUyy6eNWGzPqM15Tdv3
         Q2VhFsN0+bnZTO3WaN2IPIME0daNEBVzsivhlrLct9nQEinZ0GDUWEXCyjUaYAsaRuzY
         uQ5A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=PDRabLSk;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-03.nifty.com (conssluserg-03.nifty.com. [210.131.2.82])
        by gmr-mx.google.com with ESMTPS id p6si2338827qti.1.2021.01.19.11.02.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Jan 2021 11:02:12 -0800 (PST)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) client-ip=210.131.2.82;
Received: from mail-pj1-f54.google.com (mail-pj1-f54.google.com [209.85.216.54]) (authenticated)
	by conssluserg-03.nifty.com with ESMTP id 10JJ1vbs002477
	for <clang-built-linux@googlegroups.com>; Wed, 20 Jan 2021 04:01:57 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-03.nifty.com 10JJ1vbs002477
X-Nifty-SrcIP: [209.85.216.54]
Received: by mail-pj1-f54.google.com with SMTP id p15so513608pjv.3
        for <clang-built-linux@googlegroups.com>; Tue, 19 Jan 2021 11:01:57 -0800 (PST)
X-Received: by 2002:a17:902:ed93:b029:de:84d2:9ce1 with SMTP id
 e19-20020a170902ed93b02900de84d29ce1mr6162056plj.47.1611082916634; Tue, 19
 Jan 2021 11:01:56 -0800 (PST)
MIME-Version: 1.0
References: <20201203125700.161354-1-masahiroy@kernel.org> <b9b17126-9af5-2f73-526e-91bb9fd27f71@samsung.com>
 <CAK7LNART2qQBY7Vc8rhMiXS_Fwty7qpWjwwfPrUegTb-gjy6sA@mail.gmail.com>
 <9f959875-1a30-b1a1-b626-3805e24a6df3@samsung.com> <e5b06d9a-9b24-2440-e0c2-8bf7095eccd9@nvidia.com>
 <25030057-86b1-5619-25fd-acfa0728b850@samsung.com> <4ab4f62f-8b37-01e1-f81c-270155b13a51@nvidia.com>
 <7e691a61-bf4b-0594-8d6d-36d62a5def0b@nvidia.com> <CAHk-=wjjiYjCp61gdAMpDOsUBU-A2hFFKJoVx5VAC7yV4K6WYg@mail.gmail.com>
 <95ce88c6-59bd-55b9-9299-51fa20aeb95c@nvidia.com> <YAcbZRViwlAwl62q@ulmo>
In-Reply-To: <YAcbZRViwlAwl62q@ulmo>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Wed, 20 Jan 2021 04:01:19 +0900
X-Gmail-Original-Message-ID: <CAK7LNATf6DEyk=SPouHDO6f4Na0bm3HY7_7Cn4Quq6weg_6uFA@mail.gmail.com>
Message-ID: <CAK7LNATf6DEyk=SPouHDO6f4Na0bm3HY7_7Cn4Quq6weg_6uFA@mail.gmail.com>
Subject: Re: [PATCH] gcc-plugins: simplify GCC plugin-dev capability test
To: Thierry Reding <thierry.reding@gmail.com>
Cc: Jon Hunter <jonathanh@nvidia.com>,
        Linus Torvalds <torvalds@linux-foundation.org>,
        Marek Szyprowski <m.szyprowski@samsung.com>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Kees Cook <keescook@chromium.org>, Emese Revfy <re.emese@gmail.com>,
        linux-hardening@vger.kernel.org,
        Nathan Chancellor <natechancellor@gmail.com>,
        Nick Desaulniers <ndesaulniers@google.com>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        linux-tegra <linux-tegra@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=PDRabLSk;       spf=softfail
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

On Wed, Jan 20, 2021 at 2:48 AM Thierry Reding <thierry.reding@gmail.com> wrote:
>
> On Fri, Dec 18, 2020 at 08:33:37PM +0000, Jon Hunter wrote:
> >
> > On 18/12/2020 17:54, Linus Torvalds wrote:
> > > On Fri, Dec 18, 2020 at 7:33 AM Jon Hunter <jonathanh@nvidia.com> wrote:
> > >>
> > >> However, if you are saying that this is a problem/bug with our builders,
> > >> then of course we will have to get this fixed.
> > >
> > > This seems to be a package dependency problem with the gcc plugins -
> > > they clearly want libgmp, but apparently the package hasn't specified
> > > that dependency.
> > >
> > > If this turns out to be a big problem, I guess we can't simplify the
> > > plugin check after all.
> > >
> > > We historically just disabled gcc-plugins if that header didn't build,
> > > which obviously meant that it "worked" for people, but it also means
> > > that clearly the coverage can't have been as good as it could/should
> > > be.
> > >
> > > So if it's as simple as just installing the GNU multiprecision
> > > libraries ("gmp-devel" on most rpm-based systems, "libgmp-dev" on most
> > > debian systems), then I think that's the right thing to do. You'll get
> > > a working build again, and equally importantly, your build servers
> > > will actually do a better job of covering the different build options.
> >
> >
> > Thanks. I have reported this issue to the team that administers the
> > builders. So hopefully, they will install the necessary packages for us
> > now.
>
> Just to close the loop on this, the builders now have libgmp-dev and
> libmpc-dev packages installed and the builds are passing without the
> workaround we had used.
>
> Thierry


I was slightly concerned about your question:

"In case where CC != HOSTCC, it's possible that CC was not built against
the same version of GMP/MPC as HOSTCC. And even HOSTCC might not
necessarily have been built against the versions provided by libgmp-dev
or libmpc-dev. I'm not overly familiar with GMP/MPC, so perhaps if these
headers are reasonably stable, this is not all that important. But if it
is, then which version of GMP/MPC do we need? The version that CC was
built against, or the version that HOSTCC was built against?"



I do not have a good insight about this.

I am not sure if it is perfectly OK to
use gmp.h from HOSTCC when it was not bundled with CC.

The version difference might not be a significant issue, though...





-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNATf6DEyk%3DSPouHDO6f4Na0bm3HY7_7Cn4Quq6weg_6uFA%40mail.gmail.com.
