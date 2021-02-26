Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBJUO4OAQMGQEIB5EH7I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x437.google.com (mail-pf1-x437.google.com [IPv6:2607:f8b0:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id BA4B93260C4
	for <lists+clang-built-linux@lfdr.de>; Fri, 26 Feb 2021 11:02:15 +0100 (CET)
Received: by mail-pf1-x437.google.com with SMTP id a24sf3044966pfn.6
        for <lists+clang-built-linux@lfdr.de>; Fri, 26 Feb 2021 02:02:15 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614333734; cv=pass;
        d=google.com; s=arc-20160816;
        b=T1/FjJTKeM06bjh+byzzKyN69FB/Ls+fDuLli262ZpR314oOdUeqi4znPJyRxZCP47
         2Wp89GSvwMOBtxXR/bDOM0JMRoo1+sQ/YGpJTPCP1gmgL3puQnPxC7oT/6sLR64MmUnc
         ymPb0aOAOssTLGeZ4+gTbdaSZSdWQw7cdOn8S36FCrKTpG4ExxNRH9Oit06LCKw8JvFf
         ow38IJiIxxHqSriz1rYMJVxtcgoqM/jXg5mbhQkXmlA0JeiV8E4X2CTnVLytFKSC9aAc
         R7arcTgkS4Qc+IeFAmAI5oOxQJN2N7J4aj2TNCOnu5cf7RQihvh0LgGMCTckScMwOe+0
         6aIg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=+caF/YNRp8ix05/Dx6nod+R6CW8CdJMGu+gIt+xs+z0=;
        b=mt95qtt2C47kGa3oU2mdISO/OLJz9GwPWd9BbdSYTzeJaEIqp1mx/Y2RrzxJKEU8BZ
         d/SeJ7UcogTPc72fg2CLy3uFI/457bAlfV9B21K6BoWbkr8nPn3Er2Ew979Lmup512T3
         xtdJCowloyiXaxqn65EaNishSOrA191Tpl7PHDvLWqNyT/LdnT6l7KT77QANTfd01GQ7
         ur1XZj9CI25bmhXxCp70i5Fk9PBijRDBksp8SyNQ4Lynqq4LY/xDzP0Ma7y3atkQLbDN
         Hd1leWCxHlD0/EO6oxnLorlyo+UOT80Ao/wz2+8vxQNoYTDWx3KtO7WUfpPOEKN1TIrA
         OqKw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="QF5cz/JC";
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2a as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+caF/YNRp8ix05/Dx6nod+R6CW8CdJMGu+gIt+xs+z0=;
        b=jrfPttYMx4ARwGGqnDAIDj2x4rtIIRmMa0de6F8OJlK0J4mgR6Vh/nZd/WB+TJmtRw
         fFqVFFSGvrTobDLlGiVP6jbdYxnvUwLLFvK5wBXf0DA8JXPLaPd8Qh3OV2eoRBkKIMQj
         NbtjhJ/HRUIwJ6GSbfTHwz/wor2yzUeEW8BPA889SQuXKITgdtdv05n8bmdX5NmbmCYZ
         lTK5XL/POONemHA4qF5wui6YArMQVvWxvMsdiKwY3bwjwLlDY9wVMzGAJMMXV8dEy41y
         Pa6yTbUMZ+ozgcQJlAVXYJ7DQtOMYQkBGtL6W78qUD6Z3a/4LGb63iQqpVG8Y/Ve4H0F
         oo/A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+caF/YNRp8ix05/Dx6nod+R6CW8CdJMGu+gIt+xs+z0=;
        b=dy9GozD/M/NdE1M+NSzukrobnCL5z1mWntVL01j9OuZVmbgbxQwTyfhRuH9dDOKY24
         DBCif0Thv9t1/hU9ElZporWZ0YOWnBV6IEp09yPZR9bzzgh46nSaY6L5+qVSe8KlhP6Y
         qYhTyxdVfSHbOSSIzLxjoJ5Fge4ZHKSLXLFHg17qEX2Q6vOFIA/M8SyypZ22dTps/ESt
         YWbn8xq/0be8t5VCgunRudGccOW/mOINqwnXPo0r3LM2pWCy7SzVDOzsijihSluT5S13
         Whjo9o3oMYZ7z2HhwoKCls4vrv31RfR5Ec6zFuuwFi9M+mewxBd4U19qJqBP0fkFeFh3
         crog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+caF/YNRp8ix05/Dx6nod+R6CW8CdJMGu+gIt+xs+z0=;
        b=aZsKKvMnjc0ybTgzulnrZJr/hkw/dJOAp2+aXhg6mfJLTJ6lUU4A06NB2KOLfs965d
         U2kI1jSKArEPv3NqeV/oNsE5IG8NQevh9gRyhwMBAUWo0htMf/CP40HhTCkZjJRwwuoS
         KERse+rtZt3RzKaruT5n08AlHJjsnY6T2VRz2o5ertv1Dr3a4OtVn+M67rcvmEbhj5v8
         rexqE0PIcA66m4tHxylFBf1qm4aZiarDaO4x+DIYDk1Fp1kDe8Lm/v1O0oaV6wDYFZoU
         qQJnYvLzEOKaE0zh3guyKeb0fpXXfbN/DaT7iP5NPius021LMRJuuYoihu8fwXcuP3vp
         xxsA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530KaurcvoQI87g2hFSBG5Vjf6jGOZ8UuM25dAVNgDujOREw7t36
	G2wbnWExnOldbyrXm+NAK+I=
X-Google-Smtp-Source: ABdhPJwWhTYUIknmRQDeXRekOTa8hzUTNq132w50wCMn86kKEtAIInwXBfMZdjOJLbV8dKXe8/1MMw==
X-Received: by 2002:a17:902:e54e:b029:de:8c70:2ec4 with SMTP id n14-20020a170902e54eb02900de8c702ec4mr2655781plf.56.1614333734389;
        Fri, 26 Feb 2021 02:02:14 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:953:: with SMTP id dw19ls737080pjb.1.canary-gmail;
 Fri, 26 Feb 2021 02:02:13 -0800 (PST)
X-Received: by 2002:a17:902:8209:b029:e3:2c17:73a9 with SMTP id x9-20020a1709028209b02900e32c1773a9mr2370942pln.23.1614333733811;
        Fri, 26 Feb 2021 02:02:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614333733; cv=none;
        d=google.com; s=arc-20160816;
        b=q3bB/+/RINvXB/WRALKsRT+qmTvR/atR+i+4qIVZyNrvVEu86TtHQ6pJqP7Ih+CxPD
         dz/JUGrwZaPyHJFmG0y3jsWBO3PgmmRZQI8uCizN2pwXAgXUPfhJnfsDe26gHlzZ+3wi
         BGWpmIzyM30Be5a8KgoTK021Yh2bKO1FJSe5I13Tz/86XSLihUNBG8+3SARFJt3cAple
         E/RauklgSut8R0IdDMqptBbf0k7p6zLHN9UNZis8H62X2anCASCejEReYX+sMxIg4f+G
         6G8+o5ygtJSFSo2eWUjH2XTUdEEzwhOEKbINzyrJV+htI9AcNTZqc5ecXv4Fywi3NkA+
         gqQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=OZXwVNbXZV4lI1LIGmmW/Kxp49zjuh7sF9Qwivelrog=;
        b=RhcmreUWHp708qhd7WdqNbmQ7S2APMVyb7oE7o241QoRYl1hTDpysy59wHKWErPadj
         sETMPmDtwV65JLupzWsQXTyayFZkCawl7GZMkRnfC92yNQ6DitzTMb0/EAQ26KCtFSlY
         kDppfYUHXp5GjZdYIbOavB/hMsduXhmRkKXmBYY9a6U32wSkvE1P/oFG4jSVnsGn2LGj
         0QJUzDNcbyPwHefUO5o+2EYLii3va60lFdWDSyP6h/1+gyFi87uspX2ghdzjxZzRXSb0
         xHzPuJR0Lv8yWUr8wSGTy+P4m7Os4BPp0dfUJqcU+tqOcQxQl8p2b40VJBWWlSO9B25k
         ZwLw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="QF5cz/JC";
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2a as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd2a.google.com (mail-io1-xd2a.google.com. [2607:f8b0:4864:20::d2a])
        by gmr-mx.google.com with ESMTPS id g7si508791pju.3.2021.02.26.02.02.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 Feb 2021 02:02:13 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2a as permitted sender) client-ip=2607:f8b0:4864:20::d2a;
Received: by mail-io1-xd2a.google.com with SMTP id p16so9074542ioj.4
        for <clang-built-linux@googlegroups.com>; Fri, 26 Feb 2021 02:02:13 -0800 (PST)
X-Received: by 2002:a5d:9c4e:: with SMTP id 14mr2066351iof.57.1614333733229;
 Fri, 26 Feb 2021 02:02:13 -0800 (PST)
MIME-Version: 1.0
References: <20210225112122.2198845-1-arnd@kernel.org> <CA+icZUUDnKBxkfgOVYDdpA29GnLUTT22mqRNyxQeYmay044ejg@mail.gmail.com>
 <CAK8P3a1QmS6g3cHTR93wWPkKs8vaP6RJEb8nZbTMLX+xphLJRw@mail.gmail.com>
 <CA+icZUW9Hzm_ZZtLiJu8pVeOmYJMOaXkV4Om_u4yZKYRVWNddA@mail.gmail.com> <CAK8P3a0cyAYqdPg_OoaVVY2Gjn=vtwAyfsVPjZ5qYddiOOc-eA@mail.gmail.com>
In-Reply-To: <CAK8P3a0cyAYqdPg_OoaVVY2Gjn=vtwAyfsVPjZ5qYddiOOc-eA@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Fri, 26 Feb 2021 11:02:01 +0100
Message-ID: <CA+icZUWYR0MWRmzV+6rLKzUQUS8WRjF521iNVXk4w2fJk=NVJQ@mail.gmail.com>
Subject: Re: [PATCH] [RFC] arm64: enable HAVE_LD_DEAD_CODE_DATA_ELIMINATION
To: Arnd Bergmann <arnd@kernel.org>
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Arnd Bergmann <arnd@arndb.de>, Kees Cook <keescook@chromium.org>, Mark Brown <broonie@kernel.org>, 
	Vincenzo Frascino <vincenzo.frascino@arm.com>, Geert Uytterhoeven <geert+renesas@glider.be>, 
	Kristina Martsenko <kristina.martsenko@arm.com>, Ionela Voinescu <ionela.voinescu@arm.com>, 
	Mark Rutland <mark.rutland@arm.com>, Andrew Scull <ascull@google.com>, 
	David Brazdil <dbrazdil@google.com>, Marc Zyngier <maz@kernel.org>, Ard Biesheuvel <ardb@kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="QF5cz/JC";       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2a
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Fri, Feb 26, 2021 at 10:51 AM Arnd Bergmann <arnd@kernel.org> wrote:
>
> On Fri, Feb 26, 2021 at 10:05 AM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> > On Fri, Feb 26, 2021 at 9:14 AM Arnd Bergmann <arnd@kernel.org> wrote:
> >
> > > > BTW, is CONFIG_LD_DEAD_CODE_DATA_ELIMINATION=y setable for x86 (64bit)?
> > > > ( Did not look or check for it. )
> > >
> > > No, in mainline, HAVE_LD_DEAD_CODE_DATA_ELIMINATION is currently
> > > only selected on MIPS and PowerPC. I only sent experimental patches to
> > > enable it on arm64 and m68k, but have not tried booting them. If you
> > > select the symbol on x86, you should see similar results.
> > >
> >
> > OK, i see:
> >
> > $ git grep HAVE_LD_DEAD_CODE_DATA_ELIMINATION arch/mips/
> > arch/mips/Kconfig:      select HAVE_LD_DEAD_CODE_DATA_ELIMINATION
> >
> > $ git grep HAVE_LD_DEAD_CODE_DATA_ELIMINATION arch/powerpc/
> > arch/powerpc/Kconfig:   select HAVE_LD_DEAD_CODE_DATA_ELIMINATION
> >
> > So, I need to add this to arch/x86/Kconfig.
> >
> > You happen to know if changes to arch/x86/kernel/vmlinux.lds.S
> > (sections) are needed?
>
> No idea. I'm still debugging a possible regression on arm64, but both
> issues I found for arm64 are specific to that architecture and won't
> happen on x86. It's likely that something else breaks though.
>

My first experiences with gc were with the freetz project (mips
embedded router) and don't ask me what GCC version.

I will try with gc + trim + cfi later after my current build has finished.

> > Last question:
> > The last days I see a lot of fixes touching inlining with LLVM/Clang v13-git.
> > What git tag are you using?
> > What are your experiences?
> > Pending patches (kernel-side)?
> >
> > I use:
> > $ /opt/llvm-toolchain/bin/clang --version
> > dileks clang version 13.0.0 (https://github.com/llvm/llvm-project.git
> > c465429f286f50e52a8d2b3b39f38344f3381cce)
>
> This is what I have on the build box:
> Ubuntu clang version
> 13.0.0-++20210223104451+ebca13c66504-1~exp1~20210223095200.234
>

Distro-clang takes much longer here.
Selfmade stage1-only LLVM toolchain compiles here 10% faster.
cfi takes approx. 20% longer.
With trim + gc I suppose it will take much longer.

Let me test.
Will report later.

- Sedat -

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUWYR0MWRmzV%2B6rLKzUQUS8WRjF521iNVXk4w2fJk%3DNVJQ%40mail.gmail.com.
