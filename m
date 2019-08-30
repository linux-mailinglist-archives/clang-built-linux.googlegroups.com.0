Return-Path: <clang-built-linux+bncBDYJPJO25UGBBFFDU3VQKGQEKYXNEKA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43c.google.com (mail-pf1-x43c.google.com [IPv6:2607:f8b0:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B7D9A3F81
	for <lists+clang-built-linux@lfdr.de>; Fri, 30 Aug 2019 23:13:58 +0200 (CEST)
Received: by mail-pf1-x43c.google.com with SMTP id v134sf6306661pfc.18
        for <lists+clang-built-linux@lfdr.de>; Fri, 30 Aug 2019 14:13:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567199636; cv=pass;
        d=google.com; s=arc-20160816;
        b=tTmE0INp3HI9TKwhT//QEak3gdZLIbQ3SaNIK4/BF8Y/WxQVczJFCFMgFkH20+ci5W
         CeUEowqIVjRq+4EhfbRJB0qWx1kcK/MtJVvQ2ve5NnVjdDREg3hdIbsUDuIdDbzNGx+S
         RDkMhrSaDeglry4VoN9SuzG2sFAqKyvNa2U77RhD7le2+3B4G4+ibJAvs6PuYdqG4k6b
         EnWgfmjLBH9tlgP6thqY+ALqds3UtJkQOssJ3unVWVPhor28lnvRECwjCLIiqP0JI8gS
         6HfkoodqEBZymChW09ztGZU72qOyBLG/E3xEFAKBBmmgWsYtiA/7QjDYfOiQuQMoowVd
         dM4g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=rokxPWB0BEaKRr0KkS2mXNtm8/yHJpUFfkYdh2sXSs0=;
        b=BUjuJtfHhk2ARUy2ZUbKTc77aCXJM+aTcJrUCrqn3uRxaIjxU031J53cxsxN5Ttf8Q
         GkRnvYfNnIMOXFiM5Z/PZwV+99UZD0mJm2gEHG4XWKwrdNj5r/18qbjJTgao+0a71aRL
         ejcyVbG0OUob9XhKbxFw0Qq30lPfxm0Qo82O+xtnphaIyjq5+LCkqyOYj44KWaElK91N
         KdA7adbJaMSHM0kKeUqoZbl3Cos8CJWWMcGbat3RahPl8h/qUAp+JRRp3fbMNQop3ckQ
         eM3HQuAJNZRwbrDgf/71xe2XLPEXQZoxaHGgytt/2JDSsQ6oisLgIzZ/xH0REs8q2i9x
         XQ3g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=EW99Eqkb;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rokxPWB0BEaKRr0KkS2mXNtm8/yHJpUFfkYdh2sXSs0=;
        b=K7XxqzGQjj9Ru3HNTZVZIZ2IsuaM/hvkrUEC/ifQbithWtMToPoR3eBD7wNQVuuGnb
         DnLRA328j8JSfC3hxJ1UAaGEAFFNjRautBkYeSZzeKTVu5o7O4wpnUIZS9/7IVjGXjHi
         iyjrTUSyBIFZLPO52BMi6KEtNpwDua/NJzAGsDbZCd1tY4pkrZfRXzpAuzOEp3q6ePmw
         9mhE8VGqoi/l4MqEV8XEINWk7cQod7K7c0nddKoaHoGcyYQeosNDTfnm9q8AbyJfpm0t
         ViSXdidhpcywXE57l0NNGLLDQkv7CE3M138oGWGyz3ZkT3yh7GQLJ75tuIW2zTAl+XZq
         g0BA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rokxPWB0BEaKRr0KkS2mXNtm8/yHJpUFfkYdh2sXSs0=;
        b=r8hfScue44KSXqARlNKgJTw7lUc+DTKBNCvvCdi1C5IikmKItlgh4oXT1Mq0UvjZOH
         t+cM0u3AFbpMSHxXP2evqCa/FL+7fCBmG8uxx7EfbeGehBK6z7Pl4TQQWUXYy2Nw/D1W
         QzIzwMODbFKQb1PpspigDfkjfMVd/9pp9YtTGQs1OR/FjlcsPLR4lzeE6Jia6O0fVmza
         zVKlsFWsMtk7KgSt/txmQTHR4sbj8cr/0I8oDS/1vkHTvm5jYzLAEw3VX7pKPi5wP8D0
         +3oaKATMWX5jm2ZzzlUnb/U1kt9OmNLZtifT4kMvr4VmtAFqr+et+JXTO5y+/vQsPYr+
         pndw==
X-Gm-Message-State: APjAAAWFulWUVsgy81+OayF6sRQHjinMEe4sxady7OqtkYmiTMqzRRTi
	3pttBV7wyoEZJtuCuTR0mEo=
X-Google-Smtp-Source: APXvYqylLcOBaB0iQDzTdl9ajGz0JxE1dsxmA3Am88nVh4J4p9tKJCiut/SX3DHnM5WSRC4/FZpblw==
X-Received: by 2002:a62:31c3:: with SMTP id x186mr19886849pfx.97.1567199636654;
        Fri, 30 Aug 2019 14:13:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:e903:: with SMTP id j3ls2386409pfh.13.gmail; Fri, 30 Aug
 2019 14:13:56 -0700 (PDT)
X-Received: by 2002:a62:76d5:: with SMTP id r204mr20058977pfc.252.1567199636381;
        Fri, 30 Aug 2019 14:13:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567199636; cv=none;
        d=google.com; s=arc-20160816;
        b=K0E52AwiW2yJcM4bG/bkKN/IxATJgIL04JRcIBWadHVl7ESCKPCU7jyOktvo6QWD1x
         y7KVXDYgFXkwMPFOl8cBxW/xKOIp7UDoMJLBRMM5wT/sDfOcZ0RuN1Gqy119t2umUAhL
         c89j3yRYc3ys/xXIuzXN3Eb7sJuoUUE+1K0AJhRR7/lGZIOOyome/uae+0T/T+X0Y7XE
         R1Wq+r2Tpr1LXOls63kjVhH6+Flnd0LQr9seXMaoWRnicNpUY45ZPdEmgIp7RZuNWeTS
         j0Vpa1NR8W18WF/BJ2M53tqEB/+NXcd5ItxgW8ofPTZyNKIXYfYXkei9dtjlX8Bt9JHL
         MEow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=1J0sxNta1Y7TX28deVqyjMgnkCtYfR2j9BgKqBFiKOI=;
        b=U35OCI7xUCfYObMBcuEiJUnnU8xjdMLqROzjABsA98+Sf288u+T9VTBEScyCWInMAz
         Jmp+dQtzsoA2D3nukk5gGTeodl0sZk28tXKfIv0ZO6sK6CC5/h7IfxMpBJU9w8Got8yL
         smCZncooeMhPTZ1I3p8w69Bcyj4joxf3/dAplHlC4tcAoKNF+hsOUUzNk2dTbVlt64pI
         FuZTCe2m1fJmJYTpyZTf6n0Iv+bqAkfZI7wwSq1g4D0rGa3jf++IaT+e2Lz5mb2nV+az
         P+d4/Dy/1+x/fBvczDbQ7jL1RhgHQGbZVwhIib5uTSr40W0JDy/CrhLooSV8YYC4FR0Z
         ERQg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=EW99Eqkb;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id 64si239982ply.2.2019.08.30.14.13.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Aug 2019 14:13:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id n190so4149997pgn.0
        for <clang-built-linux@googlegroups.com>; Fri, 30 Aug 2019 14:13:56 -0700 (PDT)
X-Received: by 2002:a63:6193:: with SMTP id v141mr3690361pgb.263.1567199635468;
 Fri, 30 Aug 2019 14:13:55 -0700 (PDT)
MIME-Version: 1.0
References: <20190829062635.45609-1-natechancellor@gmail.com>
 <CAKwvOdkXSWE+_JCZsuQdkCSrK5pJSp9n_Cd27asFP0mHBfHg6w@mail.gmail.com>
 <20190829193432.GA10138@archlinux-threadripper> <885bb20c11f0cb004e5eeda7b0ca6d16@agner.ch>
 <CAKwvOdm-9T5Mmys93VMK8HLUgPJa2HOpcmG96SAvH2EGLA=3Nw@mail.gmail.com> <20190830172824.GA119107@archlinux-threadripper>
In-Reply-To: <20190830172824.GA119107@archlinux-threadripper>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 30 Aug 2019 14:13:44 -0700
Message-ID: <CAKwvOdksu_L+e52awkd=ffkaasCZeBjKcFU4nvU7q7reEzF2WA@mail.gmail.com>
Subject: Re: [PATCH] ARM: Emit __gnu_mcount_nc when using Clang 10.0.0 or newer
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Stefan Agner <stefan@agner.ch>, Russell King <linux@armlinux.org.uk>, 
	Arnd Bergmann <arnd@arndb.de>, Matthias Kaehlcke <mka@chromium.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=EW99Eqkb;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544
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

On Fri, Aug 30, 2019 at 10:28 AM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> On Thu, Aug 29, 2019 at 01:57:35PM -0700, Nick Desaulniers wrote:
> > On Thu, Aug 29, 2019 at 1:21 PM Stefan Agner <stefan@agner.ch> wrote:
> > >
> > > On 2019-08-29 21:34, Nathan Chancellor wrote:
> > > > On Thu, Aug 29, 2019 at 10:55:28AM -0700, Nick Desaulniers wrote:
> > > >> On Wed, Aug 28, 2019 at 11:27 PM Nathan Chancellor
> > > > I will test with or without CONFIG_AEABI like Matthias asked and I will
> > > > implement your Kconfig suggestion if it passes all of my tests. The
> > > > reason that I did it this way is because I didn't want a user to end up
> > > > with a non-booting kernel since -meabi gnu works with older versions of
> > > > clang at build time, the issue happens at boot time but the Kconfig
> > > > suggestion + cc-option should fix that.
> Disabling CONFIG_AEABI does not work with clang, I get a ton of failures
> around undefined references to __aeabi_idivmod and __aeabi_uidivmod. I
> don't think this is worth looking into given that CONFIG_AEABI is not
> selectable when CONFIG_CPU_V6 or CONFIG_CPU_V7 is selected, which is
> what we primarily care about.. We currently build and boot
> multi_v5_defconfig but it has CONFIG_AEABI set in it. As a result, I
> don't think we need to care about it with this patch.

The plan of record is to never support !CONFIG_AEBI (ie OABI) w/
Clang. See also my commit currently in linux-next:
ARM: 8875/1: Kconfig: default to AEABI w/ Clang
https://github.com/ClangBuiltLinux/linux/issues/482
so !AEABI is a moot point.  If we ever changed our minds, then yes we
should additionally guard on !CONFIG_AEABI, but I feel like that's a
highly unlikely scenario at this point.

>
> This diff would also solve the issue without the need for the version
> check in the Makefile, as it is the combination of -meabi gnu and -pg
> that causes the boot issue and -pg gets added when
> CONFIG_FUNCTION_TRACER is enabled. Would that be preferred? I do not
> think adding cc-option is necessary given that we know GCC universally
> does not support this flag; there is no point in adding a small penalty
> with cc-option to either compiler.
>
> Cheers,
> Nathan
>
> ================================================
>
> diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
> index a98c7af50bf0..440ad41e77e4 100644
> --- a/arch/arm/Kconfig
> +++ b/arch/arm/Kconfig
> @@ -83,7 +83,7 @@ config ARM
>         select HAVE_FAST_GUP if ARM_LPAE
>         select HAVE_FTRACE_MCOUNT_RECORD if !XIP_KERNEL
>         select HAVE_FUNCTION_GRAPH_TRACER if !THUMB2_KERNEL && !CC_IS_CLANG
> -       select HAVE_FUNCTION_TRACER if !XIP_KERNEL
> +       select HAVE_FUNCTION_TRACER if !XIP_KERNEL && (CC_IS_GCC || CLANG_VERSION >= 100000)
>         select HAVE_GCC_PLUGINS
>         select HAVE_HW_BREAKPOINT if PERF_EVENTS && (CPU_V6 || CPU_V6K || CPU_V7)
>         select HAVE_IDE if PCI || ISA || PCMCIA
> diff --git a/arch/arm/Makefile b/arch/arm/Makefile
> index a43fc753aa53..23c2bf0fbd30 100644
> --- a/arch/arm/Makefile
> +++ b/arch/arm/Makefile
> @@ -115,6 +115,10 @@ ifeq ($(CONFIG_ARM_UNWIND),y)
>  CFLAGS_ABI     +=-funwind-tables
>  endif
>
> +ifeq ($(CONFIG_CC_IS_CLANG),y)
> +CFLAGS_ABI     +=-meabi gnu
> +endif

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> +
>  # Accept old syntax despite ".syntax unified"
>  AFLAGS_NOWARN  :=$(call as-option,-Wa$(comma)-mno-warn-deprecated,-Wa$(comma)-W)
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdksu_L%2Be52awkd%3DffkaasCZeBjKcFU4nvU7q7reEzF2WA%40mail.gmail.com.
