Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBNFW3T5QKGQEYN74ROQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x63a.google.com (mail-ej1-x63a.google.com [IPv6:2a00:1450:4864:20::63a])
	by mail.lfdr.de (Postfix) with ESMTPS id 29CFD281223
	for <lists+clang-built-linux@lfdr.de>; Fri,  2 Oct 2020 14:21:09 +0200 (CEST)
Received: by mail-ej1-x63a.google.com with SMTP id qn7sf603237ejb.15
        for <lists+clang-built-linux@lfdr.de>; Fri, 02 Oct 2020 05:21:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601641269; cv=pass;
        d=google.com; s=arc-20160816;
        b=OxNuQe+1QT9l42W7WQ/gKsStuD34vVAEsNk8yyZSwBV3mOfqKm9s6DTIaqWi+dv2WD
         TPICWIIoo2w8mPGStcFw+dJxyODlI0RSpRdMrjGwGa/EIZ0SNvkdA+9cuquTs6IT90nO
         7ZhbNoX/eLUAhO2qp+ZLlpBaz+C8UOlpH9+GgDlAqrXYJIbQS5aQG/q/crfcAdsShoVg
         Bx84VOP4ajkYT4oDhYaYSAQUT4G/4FGHji9WgSUh8Hty1Mwzwji+eEeBA94AFldKpmTP
         cb2cU7+/372rNQBZtLzFDV5qtsYG3VhwPRY+yTNh60JNe7spR5XQ//ZIzdeyGP0LeZw4
         NBCg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=0Da2KbuOCwIYUz2THSqJ+j5kSxEi18WyLSAyjS9S4zc=;
        b=RwaRll5VAGB5ENSnXUHmsekpqpA2oKJD+qUC/yk7TgeKec1POYWXHRXrmZJSxPuAHL
         b0GXiDkS7/9qy6bRVwEoXUDX2twHYblu7UuGuMSTWKGYCFUHjx8eu82QbFu03I/Uqn4B
         9icHLcWH/KfbBELw33mq5Nr6ScBmr50m5FjtaaDC6UG38Cq3wsKy97fmhddj/0cNGiJn
         4tulPnm2uqr06eXliL9qak9Cke5tnfgSotw5z8cl2N7olq3zyoLYk4NLB14VZRsTvfr2
         08Gf2c2uOEi4tPbS+7vrnmRJaSAD9UZ4HthqFW3SpC5csovrKlETTGuUkDJ3OyIYeV51
         UnPg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.13 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0Da2KbuOCwIYUz2THSqJ+j5kSxEi18WyLSAyjS9S4zc=;
        b=eEgizt/oVXhB08oZwtKkxGZhUVjtxVFLPagQKndjsqBskbamwKQvH3iaXQzF9n+i5J
         E5YkFaGcDkgHsbaN9UkSNn2z7ac75n8jBqtTxR+O5elF0wYyA5AMLDUxGp4hB3XYLwGu
         jOa7V+gphskL7z84Xd4Fb31FcsrUiQ2yQctl7+mUvm0LOrdqlCOaz7C5DB72pYTriS4P
         WEer79EaB//q0kOzSexleXn+u6TWqJOg2gelurwauG0O82SVRMy5SfH6Sta3G2Lh7zg2
         ZQDfPo0o1B3FEKox9FBBMorORV40RZl1T2qySUR70Tasl6AakYPREfKgYR7pAoJG6Ziz
         jOBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0Da2KbuOCwIYUz2THSqJ+j5kSxEi18WyLSAyjS9S4zc=;
        b=F3jmPiQA6l+3m4Zk5zC2QfLC/LWFPeXAQPc5vVX3HEmrpJ/nAakLiDUB/BWL0HHRcV
         HIVli7tiQf3xsZUcfvQlFxVhuNGFsBPbe7nt3xz8VqcUfh6Pltp2cCE18f8hYGZ+icCd
         HzHC8hUQ6FjL6I/jPSmWrT57ng3QM05tHHVr1BlwDTHvIuCfnP+f3Y8UojydU+RNe+nH
         Ihk1Gozflvpp6xlPXh3yVTMQkro4Zkgg+gYIhoXkWblc23b9SFiM1dYj1HN9q4v+mxKG
         n8BqNgQLB+NcMlEMEMGQ9tXI+JYOSqAo1tfvhcIRkKihPxHNtrDkj7iqAEePcA0s4Cvi
         MzXQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532HWiokEX9He9/Rz0aKstTmrW38bSFlOnS9ymovWPohkyd//Ylw
	Eq51PIZBqA3p+CRJXU0czjc=
X-Google-Smtp-Source: ABdhPJyyH4cGrwfmMKuIj/u3aq1aVTJ0xjzKN8kfgU/zdUihQtFEKMFDGXuDbsvi5gUFRMQPqfWSYw==
X-Received: by 2002:a17:906:b146:: with SMTP id bt6mr1923871ejb.287.1601641268870;
        Fri, 02 Oct 2020 05:21:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:4904:: with SMTP id b4ls632713ejq.9.gmail; Fri, 02
 Oct 2020 05:21:08 -0700 (PDT)
X-Received: by 2002:a17:906:a4b:: with SMTP id x11mr2101835ejf.368.1601641267970;
        Fri, 02 Oct 2020 05:21:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601641267; cv=none;
        d=google.com; s=arc-20160816;
        b=jwxqR3K4AFlHtUk210Bsdo7sbaGw4nXSRSV9la8JXOcLj1Ljs8i32K/KtO2Ym1ebzL
         QOod7MtTxA90oIMhJrgTKzl5RfZqtdtqLqkjzhDcvYNsWps9hp3DwVc2Umy64QbeCMcZ
         aGZxX2JD/t19vPD1HUGC796Z3DEQNlenj7tWAH8kZqo7wJwZjkq9R4fiGhIy/zcjIcpC
         NO1GvlRNpH/9ibX+b3ky+Jz7g66wMHTlZPGESPIz6WTuiy58MtUH4XTsR9O2bKwJN3km
         uO5o1GHnoiGfdaczk45Kui9yZ2W6B7jF0fVqjI1rYCDwOOAtZjDC0fYnd5p+qcKfz0Qt
         hqcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=QxpbIv1muctDNnnW3UoEJcsKCZnuLEgtFkAybTsPvAs=;
        b=cpV5Xolt9Eqq5jmG+lgcl9gkaruAWVUCrgDOUI0cPz50TkgxIyQYVyBSGXW0K1+1QO
         45btzooe3ZsFknZVQvS8eGFCsxdKA477uFaLfVLidVbZv1FsHncxRMYg64nf6E9VA5UQ
         msCnII0KIcsavmcoSL7jJ9QMzh/p9y6vNeItGS4u+dmX2HikqfZTpUcWPe4TXSjdCINl
         wHu3goDDIMiafxpDQLv8CxdYqS4lJSUGnurkRGXtzFZbaCa1OdFGHbKuf9AfepLER3sd
         G3k5FsNt1JUMFOJsBA7uGwnNDad9ZNKD9yqn0kPO9LNrPc/6xZCvB4Vae4T1hAn2Makh
         t3+A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.13 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.13])
        by gmr-mx.google.com with ESMTPS id dk15si46532edb.2.2020.10.02.05.21.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 Oct 2020 05:21:07 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.17.13 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.17.13;
Received: from mail-qv1-f52.google.com ([209.85.219.52]) by
 mrelayeu.kundenserver.de (mreue106 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1Mbj7g-1kyCZp1Gko-00dI0H for <clang-built-linux@googlegroups.com>; Fri, 02
 Oct 2020 14:21:07 +0200
Received: by mail-qv1-f52.google.com with SMTP id j3so631628qvi.7
        for <clang-built-linux@googlegroups.com>; Fri, 02 Oct 2020 05:21:07 -0700 (PDT)
X-Received: by 2002:ad4:4594:: with SMTP id x20mr1871401qvu.4.1601641266141;
 Fri, 02 Oct 2020 05:21:06 -0700 (PDT)
MIME-Version: 1.0
References: <20201001011232.4050282-1-andrew@lunn.ch> <20201001011232.4050282-2-andrew@lunn.ch>
 <CAKwvOdnVC8F1=QT03W5Zh9pJdTxxNfRcqXeob5_b4CXycvG1+g@mail.gmail.com> <20201002014411.GG4067422@lunn.ch>
In-Reply-To: <20201002014411.GG4067422@lunn.ch>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 2 Oct 2020 14:20:50 +0200
X-Gmail-Original-Message-ID: <CAK8P3a0tA9VMMjgkFeCaM3dWLu8H0CFBTkE8zeUpwSR1o31z1w@mail.gmail.com>
Message-ID: <CAK8P3a0tA9VMMjgkFeCaM3dWLu8H0CFBTkE8zeUpwSR1o31z1w@mail.gmail.com>
Subject: Re: [PATCH net-next v2 1/2] Makefile.extrawarn: Add symbol for W=1
 warnings for today
To: Andrew Lunn <andrew@lunn.ch>
Cc: Nick Desaulniers <ndesaulniers@google.com>, netdev <netdev@vger.kernel.org>, 
	David Miller <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>, 
	Masahiro Yamada <masahiroy@kernel.org>, Michal Marek <michal.lkml@markovi.net>, 
	Rohit Maheshwari <rohitm@chelsio.com>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Provags-ID: V03:K1:KoYLtsX4fnYxdZeojmGZnGZHFzF9lF61K7tPcMMLZorpymqlh8x
 EOPZ4I5YAWyz9nzB1ahqKBQG3UPDchGK1ig83UvV3zrigZ23+f06sbTPmwqD9xml16H+uHn
 9hK6vU+3zmGtCsBV0NTmdhSucsPwnQb/p2NXdqEC2aWoZlhiwdokzuGPfSKaMYMjGLO7MRj
 VAr4UI5mbEH5kqAe8J2mQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:dgDVbMVpXLk=:Vsv6BqCWh0/GjTYx59ag52
 uAMxoCGozLgfd85NwbO76PKqIyZN2wwrOpaM7JsyTS8yG7ObRWIGNoofpcoH0VJlCwSq05sYV
 rav64Nm+C0XSpQyMoLbyLXahq+tg/myRIORxdaZTg5Gh/vxuHeozE/UeUkvEFSr8U0pfLpW43
 kP2/3/mmPHwAz+0lado+OwofDMr3SaZ1fWrRxX178d0/V40a9UIkrj1h/6pbOsCTeEUIo35Ym
 nOovsOg+mLvjfK4k7AFLXv0U7ckE7/DvqdcKApkObruef4l1XNUEID6v/Lhqlqb9+HFN3JVcH
 7F45zoXUBDVhF2dcj72nb8NhVTir8w5Gvow4ucaeAJBP5ThWtCqNOHzIT+QLkKOjHjz/f461D
 +41KBa/cZ99Xm2s2XhRWmwqUHmZFKiadU2uCE/2yohPeWutyyHX+A5YiJSXMxvaO2KUZxJahL
 hPVJpTZwjgc23hoyh3j0xJazPIHKGavygcAtqFnHiabVlVnXV2Z2yDLu1uRAO9C1yDLyB+SqS
 LsC2stt1kZfNboU12Wslea64ECDTcEVavel4XBgM6Eb+f5I/0LWXUYfZRqLCUmAyBFK2MMfvW
 dtCngibFynL0wRLVfrR18M/3B7UsRUj5YnyOL1qiBJfvzlghw58AjNzouh9cxQY7w6N3wbE8f
 huaG7X1jgeVd7sk3GkYQbTXDL8IuTMIvvOKlgijAdA/VWCyGQv6MNpe2h4m2wi2JUh8MJjxgh
 fxUov7VQudEU3oNWGYo8bf1jva9fhlIpGKVeVFSysx3mD0ers2y3sVQJftCJlLzR8OyVbXEaL
 PmK49F2+LQZN87bCFb0KMewWnRqn2UFnCCHyNdzvJRglxTbYWDDtuOtB31c2p8+0bqzSNpO
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 212.227.17.13 is neither permitted nor denied by best guess
 record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
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

On Fri, Oct 2, 2020 at 3:44 AM Andrew Lunn <andrew@lunn.ch> wrote:
> On Thu, Oct 01, 2020 at 04:09:43PM -0700, Nick Desaulniers wrote:
> > On Wed, Sep 30, 2020 at 6:12 PM Andrew Lunn <andrew@lunn.ch> wrote:
> > >
> > > There is a movement to try to make more and more of /drivers W=1
> > > clean. But it will only stay clean if new warnings are quickly
> > > detected and fixed, ideally by the developer adding the new code.

Nice, I think everyone agrees that this is a good goal.

> > > To allow subdirectories to sign up to being W=1 clean for a given
> > > definition of W=1, export the current set of additional compile flags
> > > using the symbol KBUILD_CFLAGS_W1_20200930. Subdirectory Makefiles can
> > > then use:
> > >
> > > subdir-ccflags-y := $(KBUILD_CFLAGS_W1_20200930)
> > >
> > > To indicate they want to W=1 warnings as defined on 20200930.
> > >
> > > Additional warnings can be added to the W=1 definition. This will not
> > > affect KBUILD_CFLAGS_W1_20200930 and hence no additional warnings will
> > > start appearing unless W=1 is actually added to the command
> > > line. Developers can then take their time to fix any new W=1 warnings,
> > > and then update to the latest KBUILD_CFLAGS_W1_<DATESTAMP> symbol.
> >
> > I'm not a fan of this approach.  Are DATESTAMP configs just going to
> > keep being added? Is it going to complicate isolating the issue from a
> > randconfig build?  If we want more things to build warning-free at
> > W=1, then why don't we start moving warnings from W=1 into the
> > default, until this is no W=1 left?  That way we're cutting down on
> > the kernel's configuration combinatorial explosion, rather than adding
> > to it?

I'm also a little sceptical about the datestamp.

> Hi Nick
>
> I don't see randconfig being an issue. driver/net/ethernet would
> always be build W=1, by some stable definition of W=1. randconfig
> would not enable or disable additional warnings. It to make it clear,
> KBUILD_CFLAGS_W1_20200930 is not a Kconfig option you can select. It
> is a Makefile constant, a list of warnings which define what W=1 means
> on that specific day. See patch 1/2.

It won't change with the configuration, but it will change with the
specific compiler version. When you enable a warning in a
particular driver or directory, this may have different effects
on one compiler compared to another: clang and gcc sometimes
differ in their interpretation of which specific forms of an expression
to warn about or not, and any multiplexing options like -Wextra
or -Wformat may turn on additional warnings in later releases.

> I see a few issues with moving individual warnings from W=1 to the
> default:
>
> One of the comments for v1 of this patchset is that we cannot
> introduce new warnings in the build. The complete tree needs to clean
> of a particularly warning, before it can be added to the default list.
> But that is not how people are cleaning up code, nor how the
> infrastructure is designed. Those doing the cleanup are not take the
> first from the list, -Wextra and cleanup up the whole tree for that
> one warnings. They are rather enabling W=1 on a subdirectory, and
> cleanup up all warnings on that subdirectory. So using this approach,
> in order to move a warning from W=1 to the default, we are going to
> have to get the entire tree W=1 clean, and move them all the warnings
> are once.

I think the two approaches are orthogonal, and I would like to
see both happening as much as possible:

- any warning flag in the W=1 set (including many things implied
  by -Wextra that have or should have their own flags) that
  only causes a few lines of output should just be enabled by
  default after we address the warnings

- Code with maintainers that care should have a way to enable
  the entire W=1 set per directory or per file after addressing all
  the warnings they do see, with new flags only getting added to
  W=1 when they don't cause regressions.

There are more things that we might want to do on top of this:

- identify additional warning flags that we be good to add to W=1

- identify warning flags that are better off being turned into errors,
  like we do with -Werror=strict-prototypes

- Fix the warnings in W=2 that show up in common header files,
  to actually make it realistic to build specific drivers with W=2
  and not have interesting issues drowned out in the noise.

- ensure that any warning flag we turn *off* in W=1 or by default
  is turned on again in one of the higher levels

> People generally don't care about the tree as a whole. They care about
> their own corner. The idea of fixing one warning thought the whole
> tree is 'slicing and dicing' the kernel the wrong way. As we have seen
> with the recent work with W=1, the more natural way to slice/dice the
> kernel is by subdirectories.

I do care about the tree as a whole, and I'm particularly interested in
having -Wmissing-declarations/-Wmissing-prototypes enabled globally
at some point in the future.

        Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a0tA9VMMjgkFeCaM3dWLu8H0CFBTkE8zeUpwSR1o31z1w%40mail.gmail.com.
