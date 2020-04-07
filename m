Return-Path: <clang-built-linux+bncBDYJPJO25UGBBXX6WP2AKGQE57TDFLQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83d.google.com (mail-qt1-x83d.google.com [IPv6:2607:f8b0:4864:20::83d])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B97D1A183C
	for <lists+clang-built-linux@lfdr.de>; Wed,  8 Apr 2020 00:31:59 +0200 (CEST)
Received: by mail-qt1-x83d.google.com with SMTP id x56sf2413147qtc.10
        for <lists+clang-built-linux@lfdr.de>; Tue, 07 Apr 2020 15:31:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586298718; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZTY4IHcRcq9ybRaj/pw6tUGMOYLvrUzjy9mHPJt3S873j5UinXvmIQ85uLIwEAeXam
         PWmXJYbctIDXJaz2POTNTCb41PZaq+f0oU8p8TF9bGJEfp9KXbWla50kf0g2q4VkWrBN
         dmze2ggxjqSPvbZxlKj3iPH0x5T7JffsuDHeLz1c1l9mdq4ZYizfErFFUgmRphMPXmQm
         xzGck161mqzL6MlQw7qAGf7tY32hEAfIdbC7Aqj2xF1osozbAeDADHolPpMuQZv8QKAd
         bMQ0ziI93FwmEdxZhpZkTpjDzNA9wU6lJ68NcK3VL0a3CMRBKC1bVKNCQkAve16A7qOv
         4n3w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=YW681DBo+cbmtUtZDflANmq37ocDRL+/2DSpe996eU8=;
        b=RPUumH/ow6y8rFduj3aCsz4+8KoIsxEasKJOxGH+aHIc/UgAYTo3cukvJ4ZuVE0W4v
         gDljURHF2bGYtyEEoS11MCL12sPmb3XBostirmQ2Cjwu4ONsZPvD24NM7FLyGy02Iy+l
         jbDAM4gsnOzXEvpINyMAdxCBaNxb2Lnc1ssR6AcE2E+xzOzabppai9LtS7f8LzGYqQ7v
         IvS+1U/pO79sYhRubaTwRJceJiaMAZpLL36S3/SuR7JAhvmQCslrMR+3hozWPLpV5ap5
         c8NZjVwD20TijWCtzMzlNUk+wYtkfgfA0IB9ZCHsl2MUpK60W4vpqE3EYC8CK9JaMSWn
         FYFg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="E/4CNB6j";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=YW681DBo+cbmtUtZDflANmq37ocDRL+/2DSpe996eU8=;
        b=h4PJi+/HF7kNLQC0RFJSzFkJUAS9w5oe8f7ACvhFJ2Eg84OottcjYEIMGr+VKfS31M
         WDCezntr3g1sUgK00KoxcXRl1nxIlqMF2Bcfo/8AkbZZT1Ma76s02Vl88NXGoBfbjYYl
         cMDd2VS2KEq68B0+ErRY3ImCSJpIRaYbpF47+onMUELSo6r2NNibVg4t32rRNWaAiEkx
         6E/CFeuLXqoKmyWJ3/JBoscv5kTZ5YxnrRH8ESR4bwOdanEgWG4vdzG0sTATG8L0Usd+
         WBCpi/3RyJ/rvM8QJZp/L8CHo2rBg4S3JZh7pArVZn+O+HJtCAMH3hTnb6u6ymD77/0y
         PMsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=YW681DBo+cbmtUtZDflANmq37ocDRL+/2DSpe996eU8=;
        b=b5kPh3Nkl2pu30Ewx/fBVmFF/raU5EycFPR2UgqB1IsCJM06lOsGx868SsYn93ntfn
         41SF7sKB5SUOt8RuSiJOzcl1+4j0Z1W1Ohj5CIZGMHTcVMPsUZHXRiiP6nG4OXZ2tAI5
         nRU9HBKfutWWYLHkbAycBoD4lIgk0UqWL/nTUGFbJ2KjVU+vXjMn20xi3R1VNEdagG8I
         2wN683xhWBcqIHqxUO+0HEOwzhWJzH/JCPpWRgt3bJIMmIvN5FWUmUg1JjS+WrL5JS8E
         xwP2SgLQqkWWli1nJr8XlM17Olzis7K5rlJqfvjDv5paGlvr3Lu8hPmOeJ/QnoM7ShM0
         SStg==
X-Gm-Message-State: AGi0PuadYSJJduyCTkZ1i7bCrVeKYiB2dxuKZ/IMRDsSbnTgMZKtashe
	l+sE7dHp4fwq/fJRrS0bbR4=
X-Google-Smtp-Source: APiQypLOMfv/1FGwrxOtR1HMAT65hpXlY4s/p3oo2T9C2bYgiOtM4Em4f/c59dHfk5ci0RPqrwPeAg==
X-Received: by 2002:a0c:ea42:: with SMTP id u2mr4542170qvp.226.1586298718247;
        Tue, 07 Apr 2020 15:31:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aed:34c6:: with SMTP id x64ls1582965qtd.5.gmail; Tue, 07 Apr
 2020 15:31:57 -0700 (PDT)
X-Received: by 2002:ac8:4254:: with SMTP id r20mr4489716qtm.44.1586298717821;
        Tue, 07 Apr 2020 15:31:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586298717; cv=none;
        d=google.com; s=arc-20160816;
        b=xKkgKEprH0ODT3ng8EiFMDAFi8vALOPlOPatw3lCDF0ZocY9Mtlt5jifoZZ/yoA6ka
         fck9J/ULeGX5O98xTAtXerhMdpADBTC2Wdy+DdR5U45EoGTnQWwYdYqWs72uIDZJI6jY
         lBVeoUuInIGUODI9sv7x5F/d3OiBqrpU/Ofz1/XfjblzJa57vkNksjFNUUbV4gmGxUpy
         SC74WbeLyWf4l/hqJLvWmcnsuHy1o3zeWwDylxR6CdywUyBxt41y1nJACd8C+H2K/T2e
         94eevT3F2fgn8dIryIuFKlnU/EPuf6bxJKkMCxkW4HZFXcwX6Im3pLujiueJ/+DN5zhh
         flww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=qO6Gs/+ghdNmMtlex3NyMgewM+o4zRjcI5tZj5v3DvQ=;
        b=zg4WoxNGMkcYJue7VGuLo1O/Curov8s5nOIyG1mPtczIJkl9jEvQ6hhIpiadbMpavD
         TfwMneAX9/R+FrkmLI1JOtlJCV6aB3+bobCe1nZN/D29iCu+tMgOt9mMnlCsKMX41WJG
         5P0MRxb1h4xFU0BDK0Gl8w4a6dvBaoTrX2yVYuU31+t2EIzxTqObhIqRmrSTD+jM58ku
         JXXA6iZoboiCzOWNYhHi/NO4YQHpeVC9TjI0xi2Pd9WSoKV1zOQOLs8oyBVwumpBBPom
         SACxzPPoMSzEHl/PySHWeX0uiKYn9wwnqKeayWJz6bVK87+bR8EKeQJjLOVGcHfEBjo/
         suKg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="E/4CNB6j";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id s26si232798qtq.0.2020.04.07.15.31.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Apr 2020 15:31:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Received: by mail-pl1-x641.google.com with SMTP id t4so1757822plq.12
        for <clang-built-linux@googlegroups.com>; Tue, 07 Apr 2020 15:31:57 -0700 (PDT)
X-Received: by 2002:a17:90b:3783:: with SMTP id mz3mr1720959pjb.27.1586298716554;
 Tue, 07 Apr 2020 15:31:56 -0700 (PDT)
MIME-Version: 1.0
References: <29b5043db9a51ef7a0cb6e3a8c69c91e36045cd6.1585944770.git.mirq-linux@rere.qmqm.pl>
 <202004050928.d6QhVcsQ%lkp@intel.com> <CAKwvOdm5BhMdAmXR0gCLntkbvF7ajaNoWoHVCCio1CqbGzS6aQ@mail.gmail.com>
 <20200407195546.GA744@qmqm.qmqm.pl> <CAKwvOdnSgp5fL1B1S02haeEDBTfyHjmMFvGZd+LA3j7BoSLsLw@mail.gmail.com>
In-Reply-To: <CAKwvOdnSgp5fL1B1S02haeEDBTfyHjmMFvGZd+LA3j7BoSLsLw@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 7 Apr 2020 15:31:44 -0700
Message-ID: <CAKwvOd=mnCaFS2-4gSn+oGHtiZu-wObo4_LzN74fPNDyO0eegA@mail.gmail.com>
Subject: Re: [PATCH v3 07/11] power: supply: core: tabularize HWMON
 temperature labels
To: =?UTF-8?B?TWljaGHFgiBNaXJvc8WCYXc=?= <mirq-linux@rere.qmqm.pl>
Cc: kbuild test robot <lkp@intel.com>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Andrey Smirnov <andrew.smirnov@gmail.com>, Guenter Roeck <linux@roeck-us.net>, 
	Sebastian Reichel <sebastian.reichel@collabora.com>, LKML <linux-kernel@vger.kernel.org>, 
	linux-pm@vger.kernel.org, Ilie Halip <ilie.halip@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="E/4CNB6j";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641
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

+ Ilie

On Tue, Apr 7, 2020 at 12:57 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Tue, Apr 7, 2020 at 12:56 PM Micha=C5=82 Miros=C5=82aw <mirq-linux@rer=
e.qmqm.pl> wrote:
> >
> > On Tue, Apr 07, 2020 at 11:13:50AM -0700, Nick Desaulniers wrote:
> > > On Sat, Apr 4, 2020 at 6:53 PM kbuild test robot <lkp@intel.com> wrot=
e:
> > > >
> > > > Hi "Micha=C5=82,
> > > >
> > > > I love your patch! Perhaps something to improve:
> > > >
> > > > [auto build test WARNING on power-supply/for-next]
> > > > [also build test WARNING on hwmon/hwmon-next linus/master v5.6 next=
-20200404]
> > > > [if your patch is applied to the wrong git tree, please drop us a n=
ote to help
> > > > improve the system. BTW, we also suggest to use '--base' option to =
specify the
> > > > base tree in git format-patch, please see https://stackoverflow.com=
/a/37406982]
> > > >
> > > > url:    https://github.com/0day-ci/linux/commits/Micha-Miros-aw/ext=
ensions-and-fixes/20200405-044024
> > > > base:   https://git.kernel.org/pub/scm/linux/kernel/git/sre/linux-p=
ower-supply.git for-next
> > > > config: x86_64-randconfig-b002-20200405 (attached as .config)
> > > > compiler: clang version 11.0.0 (https://github.com/llvm/llvm-projec=
t 62f3a9650a9f289a07a5f480764fb655178c2334)
> > > > reproduce:
> > > >         wget https://raw.githubusercontent.com/intel/lkp-tests/mast=
er/sbin/make.cross -O ~/bin/make.cross
> > > >         chmod +x ~/bin/make.cross
> > > >         # save the attached .config to linux build tree
> > > >         COMPILER=3Dclang make.cross ARCH=3Dx86_64
> > > >
> > > > If you fix the issue, kindly add following tag as appropriate
> > > > Reported-by: kbuild test robot <lkp@intel.com>
> > > >
> > > > All warnings (new ones prefixed by >>):
> > > >
> > > > >> drivers/power/supply/power_supply_hwmon.o: warning: objtool: pow=
er_supply_hwmon_read_string() falls through to next function power_supply_h=
wmon_write()
> > >
> > > I'm guessing this is from the unreachable:
> > > https://github.com/0day-ci/linux/commit/b8b2d14ca46ca54257f55c9af58ea=
25695b9ee36
> > > I'll need to play with this some more as I couldn't reproduce with a
> > > simplified test case, but looks like a compiler bug.  Filed
> > > https://github.com/ClangBuiltLinux/linux/issues/978 for me to track.
> >
> > Hi Nick,
> >
> > Just guessing: have you tried adding another unrelated function to the
> > testcase? I would expect that 'fall through to next function' needs
> > some other function to match.

See Ilie's suggestion:
https://github.com/ClangBuiltLinux/linux/issues/978#issuecomment-610633039


--=20
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKwvOd%3DmnCaFS2-4gSn%2BoGHtiZu-wObo4_LzN74fPNDyO0eegA%4=
0mail.gmail.com.
