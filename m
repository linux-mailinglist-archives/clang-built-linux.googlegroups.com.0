Return-Path: <clang-built-linux+bncBDT2NE7U5UFRB4HRWGEAMGQE4ZSBHGQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3f.google.com (mail-yb1-xb3f.google.com [IPv6:2607:f8b0:4864:20::b3f])
	by mail.lfdr.de (Postfix) with ESMTPS id CFB8E3E1F82
	for <lists+clang-built-linux@lfdr.de>; Fri,  6 Aug 2021 01:49:05 +0200 (CEST)
Received: by mail-yb1-xb3f.google.com with SMTP id t101-20020a25aaee0000b0290578c0c455b2sf7739501ybi.13
        for <lists+clang-built-linux@lfdr.de>; Thu, 05 Aug 2021 16:49:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628207345; cv=pass;
        d=google.com; s=arc-20160816;
        b=d22vNQ0XmTNIBTMzrDYerQzyCjP9dRB+0jK+tDMT5NcwjZFc/PlW64niAS3Y/YZqXN
         iL/HFmyO0AseBu1+MC3aKsX2SArwj91MBuYILU5PnCP16xtR/TMQhy+EKHTytD3suH7V
         Pd9mKNLsZhVcNqQvEJcOUzyCJ8ogYZ+DWOxBUQ5NNtzpqeXjZyFofAgJFJ/Wig8IYDKE
         0GN/Zoy8Tzxsdq6HWh7y6y80LX3bEYX8mM+ky3ivs1A6fJxkNg9Obnsh71xbar3kRDZV
         DwYo/doTGzxY8k+EVgj0eoXawxOO2tG062IhqY9vld7rM9tyrnQHBlZcEE6zwTxjhlSR
         XQVw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=N4EtpcEvv3KdywNSzca5OdQ0nszrJjOswGd6T3I7jwM=;
        b=hik+V076YW7tWcM6IOHkHCEk26igUKMHlBfnCqkrgq6hxtRSqpI4olDrDJcvRYryFx
         tkGpGOMVhR8TD7pB+Jh0B1t4EfS/hcTv3IW2e6Mjv3m2KHb3ptVToyoNN/4TOd15LHZj
         YtOf6YwtZJe6qdr4N6zr3egGyyNIB7L1NaD+gDf8wGMGrOMwDZUTXPW84gHNCg/otawF
         Rh0ELTCvPIcb0KYpsLR47n7Fyrl7cvQYSjwCPPeDVtYB5X+5CJ8LfU1scZsf14c0pzyr
         GEV7aoCIJ2xUSnlBiMFcuZ9nt1Gr/fYZ8ayA555pDGNo91C/cU0BoIwZ2U5/W47P/idX
         tH9A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=pArzsqgv;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=N4EtpcEvv3KdywNSzca5OdQ0nszrJjOswGd6T3I7jwM=;
        b=QEiLK8SeGxlqP0okZ0xyMUfrfv3Jx7+x+FTlE62cUJQ29FK59V0uTqXUY/S/8/hTkB
         XgdT2HmkSqVyqUDN61T/6TbTNKi6eQT67NsG1PpRZX8vz4bnLYfNEQJ4CVBESdg2a4Fk
         dSLEbMBX5b3vqdhRMjMwDZFsPkkTncWt0XO5tyH+JQnrWjvRThr5XEFJ7TdJS+LzVJ42
         Svh0miv+IQAXzyN0yk7HECtkd8MHpd37Gf5tSlHPFNLjnTsT8VURlinBYvpzh8cikWOT
         Da0Vi1y/1836k67XAIzxRHu6fDnfYEpCfzq/1E45wvxh7jaoQkpLbnJFrKj1gCwqGK7X
         X0Sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=N4EtpcEvv3KdywNSzca5OdQ0nszrJjOswGd6T3I7jwM=;
        b=a0glBUAKZYb2sOaGfdeMYrS++SVmE79nNKXdx+UwRlMtwUw1zASH3skHHx6Ixjmyj6
         iUzRfeLq2V3Vg6w+hV/RWIuniDC+jRUzi+5p3kdipFC3e/V+Cv1VPalSgQ+g+DyxSawy
         m+jMPT6FsIMoiBdQBBRUKJJIhQDmuikIjekxAtdkSECX9GTQ+ioMu2vyk8aEz1st8trH
         HQpltAyCm4ifWxxkiQUlPQ2nf4zIY0CuQ5HcaSIBp9o48EsiWrCFslJLPYqDx+uOkLOS
         cznmlviuDNptcbBJuLV3KWQznjX+BA4pyXPi2A3wMBBD9hlbMmx175B5jmpddqAYj/Tw
         KUkQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530XAyYXedT+NwKWtJtnoo4WmxvzbrZAgAarojo9oczVtKphCGj2
	exsoukKRBpRod63jhI1VOfs=
X-Google-Smtp-Source: ABdhPJx6ve+URR7CGEsyXg8seWGPqHa012KMI4ozjm/PBvu7aYwlOxdnPGbEPO4CFvUyHsLYxuiUTw==
X-Received: by 2002:a25:684d:: with SMTP id d74mr9441593ybc.288.1628207344875;
        Thu, 05 Aug 2021 16:49:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5b:d4a:: with SMTP id f10ls3536346ybr.6.gmail; Thu, 05 Aug
 2021 16:49:04 -0700 (PDT)
X-Received: by 2002:a25:18a:: with SMTP id 132mr8949213ybb.123.1628207344293;
        Thu, 05 Aug 2021 16:49:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628207344; cv=none;
        d=google.com; s=arc-20160816;
        b=KWwOzDyStV9qRjqbAK4waaV22SIRs4iSMJ5ToGQa/kxT9E2Ed1VM+2kz/XyzvrWTwe
         arb9pFFv8fokLAjLKkjWKFY0sqIGN5Z9ZS5WPbnoLjvspuqw3nnR0TsoOxfsi8f0Dk6U
         M1oo9vI5NqsMJs4Die48gUmCJjTEHZC4//3otP/dzx3R6TukxHNmD9qq85YGnKz+Glto
         w22VP53mwjtbkD/f6FpB2Ab56oR7EfDJouPv95KRHXa8hpa4chffv+6jrf5lgb56tT9d
         taHiDUGmECh2E1EwwfmtjWvihD5yfykunfZZ56pXZpVqpwzmgGzi3FzfPIyOG1sJi2TY
         V8nA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=SRKkmpg2Ytr+z2oFhQunvdIzg5lvK7e7ZfnBXDllOFI=;
        b=fwf9/MwC9E/Nfe8RfVuVedYwDrPauAPrpfCI/Lh7TRWwyqg4RWlscYB4e+Sr8xi85j
         l/X7pA46DSVjpx73q16/z+aKOPzfwVyo89DTgxBLepjH2bMgtGkBIDSFYfiAC/7Vn2I8
         kRVfbPmlp3BXUmHKmCIH8b+W9mW47xoLRHuf8GHNvXhnStnnK4ZN2vnNm97xqbfOpEqK
         B+W7C0cq+/+NY8Yp8Fesw1i3aYpR/e5iQe73G77cebgSJA+vwrI0VtJVIsrZ2naUL7JI
         unCdqLb6UtBhplK7EVVEAPeJvszBuY13Ewn0hL/15+FlVDcVGfddxh/ezvNksd/x9MfO
         3JPg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=pArzsqgv;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-03.nifty.com (conssluserg-03.nifty.com. [210.131.2.82])
        by gmr-mx.google.com with ESMTPS id q62si357284ybc.4.2021.08.05.16.49.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 Aug 2021 16:49:04 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) client-ip=210.131.2.82;
Received: from mail-pj1-f54.google.com (mail-pj1-f54.google.com [209.85.216.54]) (authenticated)
	by conssluserg-03.nifty.com with ESMTP id 175NmjsG002232
	for <clang-built-linux@googlegroups.com>; Fri, 6 Aug 2021 08:48:45 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-03.nifty.com 175NmjsG002232
X-Nifty-SrcIP: [209.85.216.54]
Received: by mail-pj1-f54.google.com with SMTP id j1so12857391pjv.3
        for <clang-built-linux@googlegroups.com>; Thu, 05 Aug 2021 16:48:45 -0700 (PDT)
X-Received: by 2002:a65:6459:: with SMTP id s25mr247411pgv.7.1628207324577;
 Thu, 05 Aug 2021 16:48:44 -0700 (PDT)
MIME-Version: 1.0
References: <20210802234304.3519577-1-ndesaulniers@google.com>
 <CAK7LNATWm94K=UcSNn88PyPST38rfe_31vLLpDf=ERPnKnBvVA@mail.gmail.com> <CAKwvOdkVuzD68bQuAWS7fS0tat_wdR0bxb=Eh=Te84RtoRgZ8g@mail.gmail.com>
In-Reply-To: <CAKwvOdkVuzD68bQuAWS7fS0tat_wdR0bxb=Eh=Te84RtoRgZ8g@mail.gmail.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Fri, 6 Aug 2021 08:48:07 +0900
X-Gmail-Original-Message-ID: <CAK7LNATJRTD7dowBosb1-560C6-NxoorjxAYMzV5SZPd35GAtg@mail.gmail.com>
Message-ID: <CAK7LNATJRTD7dowBosb1-560C6-NxoorjxAYMzV5SZPd35GAtg@mail.gmail.com>
Subject: Re: [PATCH] scripts/Makefile.clang: default to LLVM_IAS=1
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Nathan Chancellor <nathan@kernel.org>, Khem Raj <raj.khem@gmail.com>,
        Michal Marek <michal.lkml@markovi.net>,
        Jonathan Corbet <corbet@lwn.net>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        "open list:SIFIVE DRIVERS" <linux-riscv@lists.infradead.org>,
        Matthew Wilcox <willy@infradead.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=pArzsqgv;       spf=softfail
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

On Fri, Aug 6, 2021 at 3:40 AM Nick Desaulniers <ndesaulniers@google.com> wrote:
>
> On Thu, Aug 5, 2021 at 8:16 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
> >
> > On Tue, Aug 3, 2021 at 8:43 AM Nick Desaulniers <ndesaulniers@google.com> wrote:
> > >
> > > diff --git a/Makefile b/Makefile
> > > index 444558e62cbc..b24b48c9ebb7 100644
> > > --- a/Makefile
> > > +++ b/Makefile
> > > @@ -845,7 +845,7 @@ else
> > >  DEBUG_CFLAGS   += -g
> > >  endif
> > >
> > > -ifneq ($(LLVM_IAS),1)
> > > +ifeq ($(LLVM_IAS),0)
> > >  KBUILD_AFLAGS  += -Wa,-gdwarf-2
> > >  endif
> > >
> > > diff --git a/arch/riscv/Makefile b/arch/riscv/Makefile
> > > index bc74afdbf31e..807f7c94bc6f 100644
> > > --- a/arch/riscv/Makefile
> > > +++ b/arch/riscv/Makefile
> > > @@ -41,7 +41,7 @@ endif
> > >  ifeq ($(CONFIG_LD_IS_LLD),y)
> > >         KBUILD_CFLAGS += -mno-relax
> > >         KBUILD_AFLAGS += -mno-relax
> > > -ifneq ($(LLVM_IAS),1)
> > > +ifeq ($(LLVM_IAS),0)
> > >         KBUILD_CFLAGS += -Wa,-mno-relax
> > >         KBUILD_AFLAGS += -Wa,-mno-relax
> > >  endif
> >
> >
> >
> > Please drop these two hunks.
> >
> > I will apply my patch instead.
> > https://lore.kernel.org/patchwork/patch/1472580/
>
> Sure.  Will send a v2 with Matthew's suggestion as well.
>
> > When we negate a flag that is enabled by default,
> > which is a common way?
> >  - set it to '0'
> >  - set is to empty
> >
> >
> > So, I was wondering if we should support
> > not only LLVM_IAS=0 but also LLVM_IAS=.
> >
> > What do you think?
>
> LLVM_IAS= looks weird (so I agree with Khem's response), but if it's
> common/expected then maybe if there's a way to write a concise check
> for either =<blank> or =0?  I don't feel strongly about how it's
> specified to disable the integrated assembler, but let's sort that out
> _before_ I send a v2.
>
> How can you tell the difference between `make CC=clang` and `make
> CC=clang LLVM_IAS=`? (maybe that doesn't matter here, as either imply
> "don't use clang as the assembler when compiling with clang")


$(origin LLVM_IAS) knows the difference.

make CC=clang            ->  $(origin LLVM_IAS) is 'undefined'
make CC=clang LLVM_IAS=  ->  $(origin LLVM_IAS) is 'command line'
LLVM_IAS= make CC=clang  ->  $(origin LLVM_IAS) is 'environment'




The following patch makes both LLVM_IAS= and LLVM_IAS=0
work for disabling the integrated assembler.



@@ -22,6 +22,9 @@ else
 CLANG_FLAGS    += --target=$(notdir $(CROSS_COMPILE:%-=%))
 endif # CROSS_COMPILE

+# The integrated assembler is enabled by default.
+LLVM_IAS ?= 1
+
 ifeq ($(LLVM_IAS),1)
 CLANG_FLAGS    += -integrated-as
 else






But, I am not pretty sure if it is a good idea...

Perhaps, it is better to require LLVM_IAS=0
as Khem mentioned.


Another way for avoiding ambiguity is, perhaps
LLVM_IAS_DISABLE=1 instead of LLVM_IAS=0.


-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNATJRTD7dowBosb1-560C6-NxoorjxAYMzV5SZPd35GAtg%40mail.gmail.com.
