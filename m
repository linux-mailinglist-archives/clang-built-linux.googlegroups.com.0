Return-Path: <clang-built-linux+bncBDYJPJO25UGBBMFWWP2AKGQE2BLQWAA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13f.google.com (mail-il1-x13f.google.com [IPv6:2607:f8b0:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id 32B581A1651
	for <lists+clang-built-linux@lfdr.de>; Tue,  7 Apr 2020 21:57:38 +0200 (CEST)
Received: by mail-il1-x13f.google.com with SMTP id b14sf4422645ilb.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 07 Apr 2020 12:57:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586289457; cv=pass;
        d=google.com; s=arc-20160816;
        b=v5pLq3jM1GqMLPkdLwqQWNEKy6VTQEy/64/HQE554VjgI1gERdsny31lN+ngPOeeXL
         T5bYKVB4JqeCO4l/pWKYQmywP4gDODzf3qYPtjp69wYxPE2JR3oKWX9owzztWamm4Pi/
         msq+HKL6E4NzFDfqwzrkLUsq1MZzsQ8mptIiWShUnyVjb6B74BVnJvKYjFI4wCyKkM7V
         XYf0To//uDdFuYO/e0JDo2x6OYxVDOFX8HZcI1e2WRx7GNHlMLOt79Li122/FAnRhH/N
         wZnYgvPv6O2+X1Hc6xWDps0ZNjRRAEvw4Nh2cTuB9avY2ByjyHWHap9gJV26BULbA+br
         fTTw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=hn5zgvjkOxhM41nBfeCEUlmptuJ4sH1EGkJ26GzQ0ZI=;
        b=DdiYdYUY/YVFQCZwt0Up7nXy4gC9Tc41SbfpL2yuq2wkaVp7W//RDCv5ajPLE7fYV4
         G3XzXsS1mODtZ4/tC3jGbhuDbHxUx+kvMjX8TKVJkXoaAftxfGp3/gEf69/jgSF50NmP
         aoQiSAYUxBVUoKCaQ61ANP4L8e3pF3uBJsf8/0Rtl+Gs/7RdXQoGmTZSt9QdQXruQK+X
         mzp/gepBZokXPjIPxyi63won1Tdbaiavipc05Wid7tKAOjfqO3XcZXNFeilUzO3P5ytO
         9I8gotdtgSC5n8ugESOf3Iw8sW2dqlJJ61B6IqWDKuVyBb9umiWO+pLZ+FPWJUIXfd9s
         9Oeg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=CQE9Dcfh;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=hn5zgvjkOxhM41nBfeCEUlmptuJ4sH1EGkJ26GzQ0ZI=;
        b=DS0ZrSVjei56hmyNsDmXgrX2D/bUxtDPV2q0P++MWmD7wFmOtu8QJzwXa9qhsYnJEy
         X07uZswrRzWiaVax5ve/jCQdF15IWo/idOwf+NdL8NMPw0NWk1KV3BPNWmw7dkOMWSjx
         8FtwYsTvCAJUkdN1L6MK21EE9ONTLagt8CjZpwXLMrckHXa3nb6WZ1AUcu9uROslex5U
         /kYnBTo8qcULI56X5Y64weSQKVGvA5cHUVtPwFcLSItq2z+kexcp+taRd16o3JvGPKcO
         Pw8wJvtE561b4wMe8P2zInnSOAI2PZwPI2lJxERuTZaTv5lmn1gt8ns4aFxWgNZps6VF
         6seQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=hn5zgvjkOxhM41nBfeCEUlmptuJ4sH1EGkJ26GzQ0ZI=;
        b=pakClpxzbcE5eU1kmwKRGNcnQe63vkSzNqVMyEWoxEySAc5bPa1/ghF7PmxuksyxMq
         tzoXBkP+xzZGmWP9nQp+gDOch345I20SrS6x0VqOLiAvcwIE7w7pcPmI6GZl+AUPCW/J
         X5oYCZ3ITZJ/Jwe7/N6fASi1arHaDD1ELZqXzfmAPgkQMuwfm31I2/CyemPGYsgMnic8
         IXnr6Rr3fQBTSs7yKzp4b6T1uQxsfb9v/hcXPKEzQMvQBuJ0drKRfMbMzFqgoo2ij0GZ
         TFuD9v2rC0xYFTSAA4UuRFpimKoqf0d4ypWTI544d/2VjY9QEw8ds7cO0UaeGlrnvaPk
         8d6w==
X-Gm-Message-State: AGi0Pub3/Qmr1DyGO7wSXOLsigoJ5DdJTETWBkinQyHaZRyhRqbBG45H
	8LvGz8SZY3U0rK18A6cVF7w=
X-Google-Smtp-Source: APiQypLuDLLPOhT9gAhLrN+SY5u+UwIqrnkAhU9vSS3i9fBqakilNxnQn2N/FWcBQsjJEmO6tO7ruA==
X-Received: by 2002:a6b:3111:: with SMTP id j17mr3846171ioa.17.1586289456228;
        Tue, 07 Apr 2020 12:57:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:1e6:: with SMTP id t6ls1048329jaq.2.gmail; Tue, 07
 Apr 2020 12:57:35 -0700 (PDT)
X-Received: by 2002:a02:c725:: with SMTP id h5mr3541652jao.13.1586289455677;
        Tue, 07 Apr 2020 12:57:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586289455; cv=none;
        d=google.com; s=arc-20160816;
        b=dk9vqn50y0SF6c62GfqffKZzrDcFu74KtTkBaPd6ZLNv60Ho7ePM/TGL1E6pUyOgCN
         beNEMqzhCPtlenFmblHWjIObhgPh7I3ht2Zz0OyJMw6w3XWqDihVP7Px/wAbhAOWpN/9
         YXdwV7iaf49qz/jy0F/Az0ddyteUV/khGd+XW7KpL0yqDuzhs/sYgQx/Bpg5rfNzpygt
         IMvgoDb6B0GRERf/B7L8whfVZoYUtrRQ3qM4BJVNhYEPY46EKk2+Rqlkp0VMehoirioN
         pcb8U47U1VgsVd5bPDKReyJoT6/aAXbIwBlHo57fio+F10H+hJjLWxTMm4levnLJ5KqG
         MvWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=v/v3EOCeKlH1yy1lBBdbnJgt8NXsE7ukja0JvSrCQjQ=;
        b=Bde+b4BaWOrSX6J/jDuD7u6X9SOxLt/lf1mjtAEAvjME1yZSOEd86gNiHJ4TGilJXr
         myOWJaaL16NjDvH5GbqlJUSBmBhBHiY1vNvxd6GKdZvaNnw5C8rx6CfZ/GpdbTBHLiWt
         ZgbPdKMwbaX8EqaaRsvuJOdU3bzcuhxSgataufYyYMg6H3jTPK1gGfgR96mhWdJNDcaA
         g0zSUugUzYSFj/4bPhN+6Om5YycLAe/Gm4S4ZLeW6nGL+wJlfpr4u/YmsxpLHYqDESUM
         Gu05mfsE1MzQa67UlecuZiyinUB4v+qGSPq4+w565aRI5ytCTiioMuOOipxA41DKXZHI
         NU1g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=CQE9Dcfh;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id k88si293079ilg.1.2020.04.07.12.57.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Apr 2020 12:57:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Received: by mail-pg1-x543.google.com with SMTP id c23so2235674pgj.3
        for <clang-built-linux@googlegroups.com>; Tue, 07 Apr 2020 12:57:35 -0700 (PDT)
X-Received: by 2002:a05:6a00:42:: with SMTP id i2mr4102001pfk.108.1586289454742;
 Tue, 07 Apr 2020 12:57:34 -0700 (PDT)
MIME-Version: 1.0
References: <29b5043db9a51ef7a0cb6e3a8c69c91e36045cd6.1585944770.git.mirq-linux@rere.qmqm.pl>
 <202004050928.d6QhVcsQ%lkp@intel.com> <CAKwvOdm5BhMdAmXR0gCLntkbvF7ajaNoWoHVCCio1CqbGzS6aQ@mail.gmail.com>
 <20200407195546.GA744@qmqm.qmqm.pl>
In-Reply-To: <20200407195546.GA744@qmqm.qmqm.pl>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 7 Apr 2020 12:57:23 -0700
Message-ID: <CAKwvOdnSgp5fL1B1S02haeEDBTfyHjmMFvGZd+LA3j7BoSLsLw@mail.gmail.com>
Subject: Re: [PATCH v3 07/11] power: supply: core: tabularize HWMON
 temperature labels
To: =?UTF-8?B?TWljaGHFgiBNaXJvc8WCYXc=?= <mirq-linux@rere.qmqm.pl>
Cc: kbuild test robot <lkp@intel.com>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Andrey Smirnov <andrew.smirnov@gmail.com>, Guenter Roeck <linux@roeck-us.net>, 
	Sebastian Reichel <sebastian.reichel@collabora.com>, LKML <linux-kernel@vger.kernel.org>, 
	linux-pm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=CQE9Dcfh;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543
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

On Tue, Apr 7, 2020 at 12:56 PM Micha=C5=82 Miros=C5=82aw <mirq-linux@rere.=
qmqm.pl> wrote:
>
> On Tue, Apr 07, 2020 at 11:13:50AM -0700, Nick Desaulniers wrote:
> > On Sat, Apr 4, 2020 at 6:53 PM kbuild test robot <lkp@intel.com> wrote:
> > >
> > > Hi "Micha=C5=82,
> > >
> > > I love your patch! Perhaps something to improve:
> > >
> > > [auto build test WARNING on power-supply/for-next]
> > > [also build test WARNING on hwmon/hwmon-next linus/master v5.6 next-2=
0200404]
> > > [if your patch is applied to the wrong git tree, please drop us a not=
e to help
> > > improve the system. BTW, we also suggest to use '--base' option to sp=
ecify the
> > > base tree in git format-patch, please see https://stackoverflow.com/a=
/37406982]
> > >
> > > url:    https://github.com/0day-ci/linux/commits/Micha-Miros-aw/exten=
sions-and-fixes/20200405-044024
> > > base:   https://git.kernel.org/pub/scm/linux/kernel/git/sre/linux-pow=
er-supply.git for-next
> > > config: x86_64-randconfig-b002-20200405 (attached as .config)
> > > compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project =
62f3a9650a9f289a07a5f480764fb655178c2334)
> > > reproduce:
> > >         wget https://raw.githubusercontent.com/intel/lkp-tests/master=
/sbin/make.cross -O ~/bin/make.cross
> > >         chmod +x ~/bin/make.cross
> > >         # save the attached .config to linux build tree
> > >         COMPILER=3Dclang make.cross ARCH=3Dx86_64
> > >
> > > If you fix the issue, kindly add following tag as appropriate
> > > Reported-by: kbuild test robot <lkp@intel.com>
> > >
> > > All warnings (new ones prefixed by >>):
> > >
> > > >> drivers/power/supply/power_supply_hwmon.o: warning: objtool: power=
_supply_hwmon_read_string() falls through to next function power_supply_hwm=
on_write()
> >
> > I'm guessing this is from the unreachable:
> > https://github.com/0day-ci/linux/commit/b8b2d14ca46ca54257f55c9af58ea25=
695b9ee36
> > I'll need to play with this some more as I couldn't reproduce with a
> > simplified test case, but looks like a compiler bug.  Filed
> > https://github.com/ClangBuiltLinux/linux/issues/978 for me to track.
>
> Hi Nick,
>
> Just guessing: have you tried adding another unrelated function to the
> testcase? I would expect that 'fall through to next function' needs
> some other function to match.

I was throwing the test case linked into godbolt and looking at the
generated assembly.  It contained no jumps, only movs and conditional
movs.  Thank you for the suggestion.


--=20
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKwvOdnSgp5fL1B1S02haeEDBTfyHjmMFvGZd%2BLA3j7BoSLsLw%40m=
ail.gmail.com.
