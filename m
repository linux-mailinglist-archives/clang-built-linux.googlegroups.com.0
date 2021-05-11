Return-Path: <clang-built-linux+bncBDYJPJO25UGBBYUY5OCAMGQE7Y7NZPQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x540.google.com (mail-ed1-x540.google.com [IPv6:2a00:1450:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id 56E3B37AE74
	for <lists+clang-built-linux@lfdr.de>; Tue, 11 May 2021 20:26:43 +0200 (CEST)
Received: by mail-ed1-x540.google.com with SMTP id d18-20020aa7d6920000b0290388b4c7ee24sf11491505edr.12
        for <lists+clang-built-linux@lfdr.de>; Tue, 11 May 2021 11:26:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620757603; cv=pass;
        d=google.com; s=arc-20160816;
        b=dtc99TdC/83qpyyKtow2EronFBHczborrUfkNj0gQcRUGKOVRZOOV3olhL74L+AhmD
         5z08W2/a4XY8dqoUELaVvQX0s5HKz996umD5Rx0wifZFCpr+TPvw/yAKC39Qxhxn8WPQ
         CloZTwgqjEPil8xwtZLoRTCFwMjEqjhyDC4wKTuOKu0wQumMryMi1sUeOvlHZ3y9FJtJ
         WpU8NsTdJo9n01FT0DY3TaRHBnFQVhFVcQnU+r6GTCDBmC3I2yqH5hEFT3HVwp70OiPi
         OdM6v68Vf28Y5R1RmTfBl8rB3SRz8zoI5hPuGp9R1ISlKn9EKykOV72hO6EXVIJ4s9Ip
         cgIw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=BPtyoQquBaLhdhsJj47XZsbYDazWJZGQmUZLCW1slB0=;
        b=ijv3/nQSu3l0ToPKlpAdIp5z+r4D8EWPciUNiEQczO/5mIoGvJBMgzwWRjW4aSwZKo
         2ZSHhTNzt/DMNWckZhoPgcyg8JinhGio3XA+qBgLyPhRID4QHU6ELljSCYUJIWDBwedI
         loNbyC9pvVcPQg/OvI8JPqTl8Py4iCZGiQ9uZKwa5nRh22ecryPBYrZKco8vOH+qgPyA
         nE3Z6RaIbL1Xcbl9UdPk5FCVxP7yJEZ0BZ1NZ/lWY3uku12IDUIih9NQidhlYglWnHkj
         G9epPm17o7TsVP1Mwvb9CVkPkK9PXFGUxfR5Hex3TIwIFivXi9o/9T8nW+pa6ivAZcjL
         DyRA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=rPLtW+eS;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::129 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BPtyoQquBaLhdhsJj47XZsbYDazWJZGQmUZLCW1slB0=;
        b=luWytR4Oe0cFPXbo3++JrjbIwyrPBw7KOL6+/JypAn9TdgfvZc3n6jY/Ezgsdmv5OV
         97/+srGLcQS8iXCW2/5tRS3gsj6givcCz0fJYL8ttRZBAb4yiky7ef9aPZgeTjSaELqf
         GLSlIvkRlxQmlOXPyKH34HKGqkuE3oCZT1Kfm3naza7UECCQ7DWhkec3mmsSbbhRDiDM
         iH9jlW53q+U98ZN0T0CfPfWJxj4FFe96Wj26caVsU7fTv+nUHvnqvu3TUra8Dpu4pHlH
         PGOfOSCttks2iQ0gsxL2/2bNS18P2MGxFfgY87OJqDaIv8mfwyKw9418No8YF+kU1rDK
         ieGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BPtyoQquBaLhdhsJj47XZsbYDazWJZGQmUZLCW1slB0=;
        b=BUmlHq9f0En+ZSdb0vT/6Rgh6HOLJQy7ni6/RkowNkIs5jOdQMs+Q7pcClciEAKt0L
         eHbXnsqHKQaZWE5TalsiwW1yAVlrOR1GwuCh6yh2RmFl5YzuX2N2EvWbHNIIVqCcIDMI
         ImNzvTuUqCU2sOtduqtn89qlqs1M6/zeG7uAk0PZC4C4d/u8YTSn2DY3ba0lFOFo4eOP
         SJb32drJyHXO3fHYnL9n04/ejxPlULVeRAZgJxaMxjC9tu5VH39ThQVvfhOKRSgWcpXN
         +URdS4A/ueJoEqlr8rzKDR9hia+21/SpXk0yDW6d6eJsUXbQnH/7MaIPzBSkMp9YzQfr
         NSng==
X-Gm-Message-State: AOAM532HgrgaJ25DNgRWiDjWpjoR2vJzUCZp7ce5Hx/CHCyYgwwAbZwC
	aGocqigyLFroDv7oN07yHig=
X-Google-Smtp-Source: ABdhPJxQorb/Ef5UkVnG7WtdPdrGYXkmxViCSD7TmUuQkjWRqp+pllwm5Ub2VHdCsc+KHLazD5l00A==
X-Received: by 2002:a17:907:9612:: with SMTP id gb18mr33440734ejc.408.1620757603035;
        Tue, 11 May 2021 11:26:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:560d:: with SMTP id f13ls8651523ejq.1.gmail; Tue, 11
 May 2021 11:26:42 -0700 (PDT)
X-Received: by 2002:a17:906:87cc:: with SMTP id zb12mr33806636ejb.138.1620757602128;
        Tue, 11 May 2021 11:26:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620757602; cv=none;
        d=google.com; s=arc-20160816;
        b=X1TvCX7ZhhgPbayP/mZHoqmzJVLkfxGMTsXL0TK8jJbq79eviHQeVHNMraL8UVWLVA
         n1y+mStHRjpAI9+2mdsYHaOFA4AG+O3GP6dIB3JlB0ZIk0K/1tH/0UzXNX5Gb9j5aLIU
         Pab7EJBlyn3BLZZRLVvbbR52A1MKmNcmRusJdnX0GYHVplACLXfbrJ5RXsv7zRv/2X12
         y+D26Mpbzc6AhOiTmwKuNWGOcMhRrRmSXNEH0uqIFaLW6YIiPsjuol8tNdBwzeWa/GuP
         xTSzkz817pK6K8hK+OdRjhgQNgOnwVwbOpj51/Ti2oS7ahWhgGAKkfwx/8cGVhBrA59U
         +ZBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=xhZvq9NigfldJZ4Wc+DFOgWX9q8/F8c7ps2aCL3SG2g=;
        b=g0315Ti2d4FqdyCSlZ0M3TK98jCqlYY5m8YTa+riRIXFT10ikpTfUpTL7VMaYINP1m
         JQ+exzA7RgPRsMPBBsa9cKA8kqz5k1kn0QColRtRxob11vvrcANWOfPOaDFvuZ7oYId2
         hSuF2oXB3YlQ2Hsz6Vqg+Xay9niJejiIRle/xMSpXr56t30aG4A640om33nMVqQoXpm7
         ggtwOQUxv6BnnmfTv/RqpfRnqlmydr0x6KKWhgEs7vECSQfGnB8zmzBTsmzxVvnwQQxO
         P5TVV6v7EhoWzO+O/kmdXY/+KyvKVg93bJhJZk7P7WABFJdphy3UBefxkL1TMb4zY1mF
         WDjw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=rPLtW+eS;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::129 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com. [2a00:1450:4864:20::129])
        by gmr-mx.google.com with ESMTPS id cc21si510180edb.2.2021.05.11.11.26.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 May 2021 11:26:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::129 as permitted sender) client-ip=2a00:1450:4864:20::129;
Received: by mail-lf1-x129.google.com with SMTP id i9so23458933lfe.13
        for <clang-built-linux@googlegroups.com>; Tue, 11 May 2021 11:26:42 -0700 (PDT)
X-Received: by 2002:a19:ac09:: with SMTP id g9mr22064527lfc.547.1620757601606;
 Tue, 11 May 2021 11:26:41 -0700 (PDT)
MIME-Version: 1.0
References: <202105010813.KwuE0a5t-lkp@intel.com> <CAKwvOdnQ+hiGxfsG5VeJO4qGqfRPvf=Mp7TRgjKzZnTspZjntA@mail.gmail.com>
 <CAKwvOd=0_KbumyVLS2dn2DiKes50oG3te4Cd4aTAxnc5moERuw@mail.gmail.com> <20210511140712.GA24463@lpieralisi>
In-Reply-To: <20210511140712.GA24463@lpieralisi>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 11 May 2021 11:26:30 -0700
Message-ID: <CAKwvOdkS87-zgPyfxPFyXFFo+rs3ijp9LR4emzzfcUVP4p8sEw@mail.gmail.com>
Subject: Re: arm-linux-gnueabi-ld: warning: orphan section `__cpuidle_method_of_table'
 from `arch/arm/mach-omap2/pm33xx-core.o' being placed in section `__cpuidle_method_of_table'
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Arnd Bergmann <arnd@kernel.org>, 
	Arnd Bergmann <arnd@arndb.de>, Arnd Bergmann <arnd@linaro.org>
Cc: Kees Cook <keescook@chromium.org>, Daniel Lezcano <daniel.lezcano@linaro.org>, 
	kbuild-all@lists.01.org, LKML <linux-kernel@vger.kernel.org>, 
	Ingo Molnar <mingo@kernel.org>, kernel test robot <lkp@intel.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, khilman@kernel.org, 
	robherring2@gmail.com, Catalin Marinas <catalin.marinas@arm.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=rPLtW+eS;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::129
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

On Tue, May 11, 2021 at 7:07 AM Lorenzo Pieralisi
<lorenzo.pieralisi@arm.com> wrote:
>
> On Thu, May 06, 2021 at 12:09:46PM -0700, Nick Desaulniers wrote:
> > + folks from commit 449e056c76cc ("ARM: cpuidle: Add a cpuidle ops
> > structure to be used for DT")
>
> Hi Nick,
>
> I thought this patch was meant to be merged upstream to fix it:
>
> https://lore.kernel.org/linux-arm-kernel/20201230155506.1085689-1-arnd@kernel.org
>
> I can add a review tag to it but I don't think that's necessary, just
> let me know please.

Ah right, thanks for the reminder.  Arnd?

>
> Thanks,
> Lorenzo
>
> > On Thu, May 6, 2021 at 12:05 PM Nick Desaulniers
> > <ndesaulniers@google.com> wrote:
> > >
> > > On Fri, Apr 30, 2021 at 5:11 PM kernel test robot <lkp@intel.com> wrote:
> > > >
> > > > Hi Kees,
> > > >
> > > > FYI, the error/warning still remains.
> > > >
> > > > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
> > > > head:   65ec0a7d24913b146cd1500d759b8c340319d55e
> > > > commit: 5a17850e251a55bba6d65aefbfeacfa9888cd2cd arm/build: Warn on orphan section placement
> > > > date:   8 months ago
> > > > config: arm-randconfig-r024-20210501 (attached as .config)
> > > > compiler: arm-linux-gnueabi-gcc (GCC) 9.3.0
> > > > reproduce (this is a W=1 build):
> > > >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> > > >         chmod +x ~/bin/make.cross
> > > >         # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=5a17850e251a55bba6d65aefbfeacfa9888cd2cd
> > > >         git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
> > > >         git fetch --no-tags linus master
> > > >         git checkout 5a17850e251a55bba6d65aefbfeacfa9888cd2cd
> > > >         # save the attached .config to linux build tree
> > > >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-9.3.0 make.cross W=1 ARCH=arm
> > > >
> > > > If you fix the issue, kindly add following tag as appropriate
> > > > Reported-by: kernel test robot <lkp@intel.com>
> > > >
> > > > All warnings (new ones prefixed by >>):
> > > >
> > > > >> arm-linux-gnueabi-ld: warning: orphan section `__cpuidle_method_of_table' from `arch/arm/mach-omap2/pm33xx-core.o' being placed in section `__cpuidle_method_of_table'
> > > > >> arm-linux-gnueabi-ld: warning: orphan section `__cpuidle_method_of_table' from `arch/arm/mach-omap2/pm33xx-core.o' being placed in section `__cpuidle_method_of_table'
> > > > >> arm-linux-gnueabi-ld: warning: orphan section `__cpuidle_method_of_table' from `arch/arm/mach-omap2/pm33xx-core.o' being placed in section `__cpuidle_method_of_table'
> > >
> > > Filed: https://github.com/ClangBuiltLinux/linux/issues/1372 (though
> > > this isn't specific to clang).
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkS87-zgPyfxPFyXFFo%2Brs3ijp9LR4emzzfcUVP4p8sEw%40mail.gmail.com.
