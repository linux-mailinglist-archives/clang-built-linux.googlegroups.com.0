Return-Path: <clang-built-linux+bncBD4LX4523YGBBSGVXT6QKGQEF6CEGLA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53e.google.com (mail-pg1-x53e.google.com [IPv6:2607:f8b0:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id E16F52B2A2A
	for <lists+clang-built-linux@lfdr.de>; Sat, 14 Nov 2020 01:54:33 +0100 (CET)
Received: by mail-pg1-x53e.google.com with SMTP id e3sf6733289pgu.1
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 16:54:33 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605315272; cv=pass;
        d=google.com; s=arc-20160816;
        b=VDteJulOMZ4YlmiRol2fZLYl92c5fDyfouFWyGP/cUhAcYAWrKAuLwsqoxUAKC9u8c
         tFnXQ8jdlEHOvu/sufRsy8HoP9LywiLYn3R8/LJJdokXW+BUizMryvRzPJJsGJKa5SqK
         D67f5iwPT/tSrlsvT7LXL3PCL44C00yB0Mwo9Oc6Z+rtIpqKasMNLhtPzN5HJFqOZtVH
         Y4Foyp8zgiVJm1HksFRDovQXidnCR9lo/adYdMGpN6x5VTsHAGAVbF34t1DkggQrNJMb
         HBg62+qiorgSBlgl9L2UDgbsp2gbbKqLASUuuVH1lvwvQGyCbWItamrVDsaPlJgo0edK
         E8Og==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=D4gka3CKT/4P0cQhhZE4dwcwWtH/lqhM0zmKhPvU054=;
        b=j5/E8rlYegPtiYf+YXEMrjEDcJTgfywA4ac6A6Y0+YbD1MTl3wNElca533Tv5P00Xu
         E0xswCdteylG+2dHY4NKtiGi4IO1fhwHCRuiMg8QN65O4l6zKylXCwIf0RY6vtAuvIRn
         5EO80SUzjp5nAJZxUyEqoI2KRjEhc4aSds1xvnn+9iI6/3LplV7NTYtq20OjVVuUAJML
         24nnfCVs6hTbrClrFrYjQ/CvpsDamhTv/OVeNPXluu47cN7GDT/n5k9Iq7joTBhxNXzV
         9NC3BLw2zIV1PVfUNEe+T//iWp0vpcDXErIhA3BrP1fzLQdYeTTVwM6jT0dQqW1N2BdW
         LpfA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=D4gka3CKT/4P0cQhhZE4dwcwWtH/lqhM0zmKhPvU054=;
        b=qtSunLuVmd5hQibYJaGNQzUnenB+g76PinuxJNXIDDL5Cy/pPJYYeRUFqRMygv+FzN
         crnu1tL+TYxrQ5uRwW751L/ZNqdwT2Xh4svG6m1YU2591JJpwuxM5AuviujJURn+udXA
         7yg78oe73jG9dV1A7SEiXE8m7rj9yvcZ3oJofAz/LMF+zgkhdFLbNFh97Y/NcNuHmaq6
         f05saEuwtJpU6EjP1Mnw0WCZuIdDY0G5j4Xiaw9cAf0gT3y/x4deItFIgWAw97/m12Ex
         RAuSjXPl2YhX0nmlQm0ep7Pb+W92mWST5Zl6GnXEgGoZYofWJottDwb03TLOSYVq3S//
         MbIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=D4gka3CKT/4P0cQhhZE4dwcwWtH/lqhM0zmKhPvU054=;
        b=f/+JnHGiYOIsC4iLRN+bY52JNXuXJdSBLq+rAWlbDsJJJn0vyzH9nHWW5S+Wpuwi1U
         USgeNm53ueOE4aLJusIw52MbezY4edrrOcvtAEJQQHAhVuzB6TVtkX0Z798rk+sb/iJv
         VpYZC13w5SLRcymtRMp7lcxBpbkej3vpjvm/ZEK1k8pzv2LpAvrhAAXjpRcFKYbxrdlI
         B2II927FivX4nWw12X6Y/dk+cp8aQK6OZ2F4LDWwWD1WbWv1Y4N3yBJ+6NbhExeuj/X6
         OBV+X/8M7S270KDXKfOhVGRjBqjfvylZsbRobXSuX2lBj2hZdhcifbQcGuYR3zgpptFi
         GrWA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531A5HaA7NRMo2IwARcjTzQhhOQN4+VEVdv2ndxW6+yyPA8ZkM6Y
	XjQ0M6JYsYBl77D17cVKNpA=
X-Google-Smtp-Source: ABdhPJxOCV54wYM6jHhmp0r4JL7E0Ax9ZOf2PXyXOA0SG2933N8nySdr/+RGUs8YNb/ws1pOkUoLbQ==
X-Received: by 2002:a17:902:ed52:b029:d7:d0af:f89f with SMTP id y18-20020a170902ed52b02900d7d0aff89fmr4464534plb.26.1605315272645;
        Fri, 13 Nov 2020 16:54:32 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:bd8d:: with SMTP id q13ls3791836pls.0.gmail; Fri, 13
 Nov 2020 16:54:32 -0800 (PST)
X-Received: by 2002:a17:902:328:b029:d7:eba5:83ce with SMTP id 37-20020a1709020328b02900d7eba583cemr4282132pld.57.1605315272092;
        Fri, 13 Nov 2020 16:54:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605315272; cv=none;
        d=google.com; s=arc-20160816;
        b=lXZ1DizWRfcAlABHVxubex6+57a9qUGTedC3772Pa+aSpGQfmlFuoly4Jkk1mW3LVR
         Iz1AsrWYddDU35BhG+PuoJvc++SzTECUmdX7LAetru6T5hfSVwubWAhooLhwTtPgYKxk
         k2/9ttgncNoLH9g1Wg3dwqjhCZp4p6dX9V6dUkUgNKKo6F7kmlW+l2zXKGARPNWsS5AA
         npjsAXLqYns16cSGRVJMv5N3yTe0sQ/wge+USUVnXI8b11zBLYI3CSnb3/wn8yfZiidD
         eIhbBz/iFXUlUNMpu+9ovuyaWgLgiuUwwV8hkwwTInvlZxmtNFkpYsAtzFK6gMy1Vubh
         T+7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date;
        bh=AG86WGIeSc92p6J9wlCWQbwMqZAMUkA6XIBm3FJlES0=;
        b=YTeVxk2Oq+Rf4NbbjWggJ2yEx7JMaK7yKcpZbAqEUXhfZKHHZG6h9IM/+xTpTPOeX/
         0CoCadETyPk6P+d1sBYwveXjvzfKq/W/xLgLaGHxaknPDGZ7MXRejxIZdRJXX7FDjkob
         PBauaiN/4tqTzloLfSISrTnM+rO/l6bOEboBLMVaP9A/lpkNUs3veKt+wquWnFt8MD+M
         DvmssPVm6AcvM5eKO/5KZi2VgbPOlihdfBLEgZarmgGJtx9qXlZ7eur2Ueaq88REWLp3
         yydOVsotagE1TdK1Dw/DaSEjiCRBKJIpIBjpTyxLmikDqDHIL6PM4MSNLiGAN4/bQT7C
         dlbQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
Received: from gate.crashing.org (gate.crashing.org. [63.228.1.57])
        by gmr-mx.google.com with ESMTP id o24si746297pjt.3.2020.11.13.16.54.31
        for <clang-built-linux@googlegroups.com>;
        Fri, 13 Nov 2020 16:54:32 -0800 (PST)
Received-SPF: pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) client-ip=63.228.1.57;
Received: from gate.crashing.org (localhost.localdomain [127.0.0.1])
	by gate.crashing.org (8.14.1/8.14.1) with ESMTP id 0AE0oGe8007957;
	Fri, 13 Nov 2020 18:50:16 -0600
Received: (from segher@localhost)
	by gate.crashing.org (8.14.1/8.14.1/Submit) id 0AE0oFOi007956;
	Fri, 13 Nov 2020 18:50:15 -0600
X-Authentication-Warning: gate.crashing.org: segher set sender to segher@kernel.crashing.org using -f
Date: Fri, 13 Nov 2020 18:50:15 -0600
From: Segher Boessenkool <segher@kernel.crashing.org>
To: =?utf-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>
Cc: Alan Modra <amodra@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>,
        Nathan Chancellor <natechancellor@gmail.com>,
        Michael Ellerman <mpe@ellerman.id.au>,
        Linus Torvalds <torvalds@linux-foundation.org>,
        Arnd Bergmann <arnd@kernel.org>, Brian Cain <bcain@codeaurora.org>,
        kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        LKML <linux-kernel@vger.kernel.org>,
        Masahiro Yamada <masahiroy@kernel.org>,
        linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
        Christophe Leroy <christophe.leroy@csgroup.eu>
Subject: Re: Error: invalid switch -me200
Message-ID: <20201114005015.GZ2672@gate.crashing.org>
References: <202011131146.g8dPLQDD-lkp@intel.com> <CAFP8O3LpSmxVnjHfQAN455k1ZRg3PbgZYhWr030evCq1T10k=Q@mail.gmail.com> <20201113190824.GA1477315@ubuntu-m3-large-x86> <CAKwvOdkEtTQhDRFRV_d66FyhQBe536vRbOW=fQjesiHz3dfeBA@mail.gmail.com> <20201113200444.GA1496675@ubuntu-m3-large-x86> <CAKwvOdkBSGPaKmQY1nERVe4_n19Q=MUtuwdond=FJAAF9N9Zhg@mail.gmail.com> <20201114002037.GW2672@gate.crashing.org> <CAFP8O3+NowYwhMAywd=R23HgOYnroWV9ZRkdyAejd08qsOF=6w@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <CAFP8O3+NowYwhMAywd=R23HgOYnroWV9ZRkdyAejd08qsOF=6w@mail.gmail.com>
User-Agent: Mutt/1.4.2.3i
X-Original-Sender: segher@kernel.crashing.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as
 permitted sender) smtp.mailfrom=segher@kernel.crashing.org
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

On Fri, Nov 13, 2020 at 04:37:38PM -0800, F=C4=81ng-ru=C3=AC S=C3=B2ng wrot=
e:
> On Fri, Nov 13, 2020 at 4:23 PM Segher Boessenkool
> <segher@kernel.crashing.org> wrote:
> > On Fri, Nov 13, 2020 at 12:14:18PM -0800, Nick Desaulniers wrote:
> > > > > > Error: invalid switch -me200
> > > > > > Error: unrecognized option -me200
> > > > >
> > > > > 251 cpu-as-$(CONFIG_E200)   +=3D -Wa,-me200
> > > > >
> > > > > Are those all broken configs, or is Kconfig messed up such that
> > > > > randconfig can select these when it should not?
> > > >
> > > > Hmmm, looks like this flag does not exist in mainline binutils? The=
re is
> > > > a thread in 2010 about this that Segher commented on:
> > > >
> > > > https://lore.kernel.org/linuxppc-dev/9859E645-954D-4D07-8003-FFCD23=
91AB6E@kernel.crashing.org/
> > > >
> > > > Guess this config should be eliminated?
> >
> > The help text for this config options says that e200 is used in 55xx,
> > and there *is* an -me5500 GAS flag (which probably does this same
> > thing, too).  But is any of this tested, or useful, or wanted?
> >
> > Maybe Christophe knows, cc:ed.
>=20
> CC Alan Modra, a binutils global maintainer.
>=20
> Alan, can the few -Wa,-m* options deleted from arch/powerpc/Makefile ?

All the others work fine (and are needed afaics), it is only -me200 that
doesn't exist (in mainline binutils).  Perhaps -me5500 will work for it
instead.


Segher

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20201114005015.GZ2672%40gate.crashing.org.
