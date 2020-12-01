Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBX7VS37AKGQE3DZOOEQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3d.google.com (mail-yb1-xb3d.google.com [IPv6:2607:f8b0:4864:20::b3d])
	by mail.lfdr.de (Postfix) with ESMTPS id F3C132C95E5
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Dec 2020 04:39:12 +0100 (CET)
Received: by mail-yb1-xb3d.google.com with SMTP id h9sf792399ybj.10
        for <lists+clang-built-linux@lfdr.de>; Mon, 30 Nov 2020 19:39:12 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606793952; cv=pass;
        d=google.com; s=arc-20160816;
        b=jjpGQxOT041eKT1fmaZV1SxFgHr/EhuTMidLozCD2uPzEcSe05lr6/lKtyKmCvBaSV
         Qnp3XM2PCfuLjl6Q9kJQUi20OMDr4rGTkgDgO4wZml+1PGAdJ/M+Rdsr3vF3OIq5ZWGI
         HWK2j1pQ6PJ8jpJ/hfFqtfJbRCNUPRWO3VuCC00Ufe4GyXpgtU0LZPTkeN/FsDFlFYoO
         6/0EG4BgzTW+TuDVokp8vJkfE1hPUC1S8hfplDzXP2BQUo43tJcl+bISZM3Q3rFociX7
         KUo9vwKAPi1w7yQYhUYgK9jkCQLgEq8gAGsGSbbB9fLJlowL2Li3BT6OK+37oly8VH3X
         Od3w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-filter:sender:dkim-signature;
        bh=R68ejaHbupx6jCy+llCIz14FWjEBntH78gutMF/wJvQ=;
        b=W2YVYGGxfw4EGfkY2oOK34Lwkb56a5ufp/vDwGB8f/l7aUG2Gdwf84B3tlsfFbU2JB
         0maMmu8biuq3+KoOlZFS5skXO1zOH7E3myXCoLqsz2TY/HeXY/MvwX8YPm1H0eabJGuY
         3rs5S7eOXOhq7MQlZCY/Zxovfo6SE0QQcfDUfVkD1Bv0weiqYVCIDLHVtHIyP/xEQMtu
         Np+n2fZ7kWE3jAnRUV13Xhg7ZNi8W18d97m9jPn0Od1wNS+KDouxHVQMMObasSJOMG2B
         5MQ0Iue+JiPwuZti5HvJpRYCsmYEh5GtzVreo5klQ3KXhN6UrVdre0u9mH/iJ9VEq6Xw
         gB1A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=HKzTzrV5;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=R68ejaHbupx6jCy+llCIz14FWjEBntH78gutMF/wJvQ=;
        b=P8/izkWvhkOTWwfpfZNF6v19oGyBqRdbr993vwhB1I2Im/h0cUHsQuDsIkXgA01q2A
         C6AXb/f8K5nmto+DIfM3Ob//osMFanXgeCojfw8GdD+YpU2L5fAn37TxHKZCTbpJ4/my
         A+OYR18utRG0ju5SkKx8VLeXx5RQskqPTZtjwMswKnFVB+6rcsTXvtEzlYpXr8a5vtq1
         uHy5f/ErsUQbhGMPdid+ccip0cWGzww6QU7jz5eki2cHk2QnnFGF5TTzFThVfJcElHdS
         OzpSFNVTH1ro1XYgMgBYWDEzijEluqQwmSUKMsqwr05J0pboQJLgGPODsDfO1ETmaPQq
         dNSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=R68ejaHbupx6jCy+llCIz14FWjEBntH78gutMF/wJvQ=;
        b=hMDRpOnq/iksz1diEEqPkzgHlIorF7s3RYk7mWkT6a8kZF5RbQXbdAM0sUG/575ckL
         +JaDhBrV1/QTS1VPAIWVoyOC3kKm8XJiVgEZOQg+htB5Xss3NZXvmRsBbONHRmsTyoI9
         A5oD5QVqdoNfyknGxlLn5MyAPXWUE1FpnkkgpB2JHkYvJxmk0h94kst8xS2Pb78ADDI7
         uaYKgstYAY0BC7LE1DozgSAKK0zWzT8A6hIIpO4i+D3hBiuxv2CPTs+f62gS3JXZfYAE
         lH6tqM7UAJ/E9VCsNYA0xdPxHTBRnAqgrFFEopb2Xcg7l3NvthPGI6nBOvlTTrbkolke
         5QFw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532JVbvJQ7jFeBV+65sBrT74B2EkCpaz3AAkx5QUTRiOmDhicH4I
	qvcEHr6jR1uW8c7sWKppGl0=
X-Google-Smtp-Source: ABdhPJy0Wrc+miJiA7vMRi53aswpiE0MqNvtGroa+LFalgl1XuNSz2zcr9m4BO7f8zao91RwgyjaSg==
X-Received: by 2002:a25:7453:: with SMTP id p80mr1160891ybc.31.1606793952068;
        Mon, 30 Nov 2020 19:39:12 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:344b:: with SMTP id b72ls316177yba.1.gmail; Mon, 30 Nov
 2020 19:39:11 -0800 (PST)
X-Received: by 2002:a25:d88:: with SMTP id 130mr852183ybn.469.1606793951539;
        Mon, 30 Nov 2020 19:39:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606793951; cv=none;
        d=google.com; s=arc-20160816;
        b=BMVn/WNSRqb3mR+C3MqIInbK0bSpdyO9BA5/nbd3K4OXAzZwCKlZdKKoRT4KSevB0l
         3kEkE6oo80XfUgjSUwYNS/i9x69aAlqdDEpBE7nEu7wnmGfgaD71yuSljJKu16CHewXC
         TJ26UiUkuqfSg5/eTEWtrNKqmSE2iAyd+95TvQUwkUDtvdH4wsWBcJDmaeEiTNh9apjW
         6vDSWAcGi/us28Yt59NrSxXGXSzLC6CThDhA4yP23BlHCkAYAf1F3xEgBvYjCjPNSgEO
         11xS/PTWSieEEK1lp3A6YqL/uRA6s+MsOoZNlfzdWNJRL1WsbjN6KXCUC94X03i4RlMS
         z0Tw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature:dkim-filter;
        bh=klnIxU/X1XewPCmJJ5YCEqINrZ5cJIhv7zjgLd01Ez0=;
        b=dlx5AI1254EIe1q0lI9Kbb9eqOIfTxppNnJtKpSrPv7pd0nfqwAFUBdFeBzSxMaAbZ
         A2oHn/QjxIQIcoUOn/ZtqVBoJJpI0mglJI83mvMVe2wv4c9qfAT5Q1Kdn0zed+6mN9i1
         BySBVvXHjUu62bIBEwCa52FKqr0qDCMoaNYvbi/Hc6sIEV/5svSv6x5WrsEAHGQm9qpd
         68cVlC5X+jjIrMrUKrpAVq7RkBAzI0vOEbcDWjN0/0vf4MopRibvLshb1f6XxbixPWAU
         CUI7NoGcqTnpZ/FSh87PTlwWyQpkih9mu/aw4By9XRjJM2ktKWNgaNR+3n7yfGNfl6st
         kpJQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=HKzTzrV5;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-05.nifty.com (conssluserg-05.nifty.com. [210.131.2.90])
        by gmr-mx.google.com with ESMTPS id u13si33540ybk.0.2020.11.30.19.39.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 30 Nov 2020 19:39:11 -0800 (PST)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) client-ip=210.131.2.90;
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com [209.85.214.173]) (authenticated)
	by conssluserg-05.nifty.com with ESMTP id 0B13csbq025150
	for <clang-built-linux@googlegroups.com>; Tue, 1 Dec 2020 12:38:55 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-05.nifty.com 0B13csbq025150
X-Nifty-SrcIP: [209.85.214.173]
Received: by mail-pl1-f173.google.com with SMTP id u2so330404pls.10
        for <clang-built-linux@googlegroups.com>; Mon, 30 Nov 2020 19:38:55 -0800 (PST)
X-Received: by 2002:a17:90a:5905:: with SMTP id k5mr651001pji.198.1606793934218;
 Mon, 30 Nov 2020 19:38:54 -0800 (PST)
MIME-Version: 1.0
References: <CAK7LNAST0Ma4bGGOA_HATzYAmRhZG=x_X=8p_9dKGX7bYc2FMA@mail.gmail.com>
 <20201104005343.4192504-1-ndesaulniers@google.com> <20201104005343.4192504-4-ndesaulniers@google.com>
 <CAK7LNAT5MQqUddv+QbFu5ToLBK3eUPArHSBR=5AOS3ONtMqKaw@mail.gmail.com> <CAFP8O3Ki9HoqcV450fn29fBOWAbmuGAdB6USLz8pGsW4Vzf7sg@mail.gmail.com>
In-Reply-To: <CAFP8O3Ki9HoqcV450fn29fBOWAbmuGAdB6USLz8pGsW4Vzf7sg@mail.gmail.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Tue, 1 Dec 2020 12:38:16 +0900
X-Gmail-Original-Message-ID: <CAK7LNAS_hxevOS7hKxepyCBVU-4j87Yf5Y8DB6mFq+4xuaz3AA@mail.gmail.com>
Message-ID: <CAK7LNAS_hxevOS7hKxepyCBVU-4j87Yf5Y8DB6mFq+4xuaz3AA@mail.gmail.com>
Subject: Re: [PATCH v2 3/4] Kbuild: make DWARF version a choice
To: =?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
        Jakub Jelinek <jakub@redhat.com>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        linux-toolchains@vger.kernel.org,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Nathan Chancellor <natechancellor@gmail.com>,
        Sedat Dilek <sedat.dilek@gmail.com>, Dmitry Golovin <dima@golovin.in>,
        Alistair Delva <adelva@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=HKzTzrV5;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

On Tue, Dec 1, 2020 at 5:27 AM 'F=C4=81ng-ru=C3=AC S=C3=B2ng' via Clang Bui=
lt Linux
<clang-built-linux@googlegroups.com> wrote:
>
> On Mon, Nov 30, 2020 at 10:05 AM Masahiro Yamada <masahiroy@kernel.org> w=
rote:
> >
> > On Wed, Nov 4, 2020 at 9:53 AM 'Nick Desaulniers' via Clang Built
> > Linux <clang-built-linux@googlegroups.com> wrote:
> > >
> > > Modifies CONFIG_DEBUG_INFO_DWARF4 to be a member of a choice. Adds an
> > > explicit CONFIG_DEBUG_INFO_DWARF2, which is the default. Does so in a
> > > way that's forward compatible with existing configs, and makes adding
> > > future versions more straightforward.
> > >
> > > Suggested-by: Fangrui Song <maskray@google.com>
> > > Suggested-by: Masahiro Yamada <masahiroy@kernel.org>
> > > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> > > ---
> > >  Makefile          | 14 ++++++++------
> > >  lib/Kconfig.debug | 19 +++++++++++++++----
> > >  2 files changed, 23 insertions(+), 10 deletions(-)
> > >
> > > diff --git a/Makefile b/Makefile
> > > index 75b1a3dcbf30..e23786a4c1c7 100644
> > > --- a/Makefile
> > > +++ b/Makefile
> > > @@ -826,12 +826,14 @@ else
> > >  DEBUG_CFLAGS   +=3D -g
> > >  endif
> > >
> > > -ifndef LLVM_IAS
> > > -KBUILD_AFLAGS  +=3D -Wa,-gdwarf-2
> > > -endif
> > > -
> > > -ifdef CONFIG_DEBUG_INFO_DWARF4
> > > -DEBUG_CFLAGS   +=3D -gdwarf-4
> > > +dwarf-version-$(CONFIG_DEBUG_INFO_DWARF2) :=3D 2
> > > +dwarf-version-$(CONFIG_DEBUG_INFO_DWARF4) :=3D 4
> > > +DEBUG_CFLAGS   +=3D -gdwarf-$(dwarf-version-y)
> > > +ifneq ($(dwarf-version-y)$(LLVM_IAS),21)
> > > +# Binutils 2.35+ required for -gdwarf-4+ support.
> > > +dwarf-aflag    :=3D $(call as-option,-Wa$(comma)-gdwarf-$(dwarf-vers=
ion-y))
> > > +DEBUG_CFLAGS   +=3D $(dwarf-aflag)
> >
> > This changes the behavior.
> >
> > For the Dwarf-2 case,
> >
> > Previously, -gdwarf-2 was passed to $(CC),
> > so the debug info was generated by gcc.
> >
> > Now, -Wa,-gdwarf-2 is passed to $(CC).
> > -gdwarf-2 is handled by GNU as.
> > So, the source info points to /tmp/<hash>.s
> > instead of the original .c file.
> >
> >
> >
> > Handling the Dwarf capability is very complicated.
> >
> > Are you still working for v3?
> >
> >
> >
> > > +KBUILD_AFLAGS  +=3D $(dwarf-aflag)
> > >  endif
> > >
> > >  ifdef CONFIG_DEBUG_INFO_REDUCED
> > > diff --git a/lib/Kconfig.debug b/lib/Kconfig.debug
> > > index 83a860126897..03c494eefabd 100644
> > > --- a/lib/Kconfig.debug
> > > +++ b/lib/Kconfig.debug
> > > @@ -256,14 +256,25 @@ config DEBUG_INFO_SPLIT
> > >           to know about the .dwo files and include them.
> > >           Incompatible with older versions of ccache.
> > >
> > > +choice
> > > +       prompt "DWARF version"
> > > +       help
> > > +         Which version of DWARF debug info to emit.
> > > +
> > > +config DEBUG_INFO_DWARF2
> > > +       bool "Generate DWARF v2 debuginfo"
> > > +       help
> > > +         Generate DWARF v2 debug info.
> > > +
> > >  config DEBUG_INFO_DWARF4
> > >         bool "Generate dwarf4 debuginfo"
> > >         depends on $(cc-option,-gdwarf-4)
> > >         help
> > > -         Generate dwarf4 debug info. This requires recent versions
> > > -         of gcc and gdb. It makes the debug information larger.
> > > -         But it significantly improves the success of resolving
> > > -         variables in gdb on optimized code.
> > > +         Generate DWARF v4 debug info. This requires gcc 4.5+ and gd=
b 7.0+.
> > > +         It makes the debug information larger, but it significantly
> > > +         improves the success of resolving variables in gdb on optim=
ized code.
> > > +
> > > +endchoice # "DWARF version"
> > >
> > >  config DEBUG_INFO_BTF
> > >         bool "Generate BTF typeinfo"
> > > --
> > > 2.29.1.341.ge80a0c044ae-goog
>
>
> We can bump -Wa,-gdwarf-2 to -Wa,-gdwarf-3 since GNU actually emits
> DWARF v3 DW_AT_ranges (see
> https://sourceware.org/bugzilla/show_bug.cgi?id=3D26850 )
> This can avoid the `warning: DWARF2 only supports one section per
> compilation unit` warning for Clang.


I am not a DWARF spec expert.

Please teach me.

In my understanding, "DWARF2 only supports one section ..."
is warned only when building .S files with LLVM_IAS=3D1

If this is due to the limitation of DWARF v2, why is it OK to
build .c files with LLVM_IAS?



>
> Deleting -Wa,-gdwarf-2 also sounds good to me if people can verify
> their debugging experience is not regressed (I believe it is useless).
>
>
> --
> =E5=AE=8B=E6=96=B9=E7=9D=BF
>
> --
> You received this message because you are subscribed to the Google Groups=
 "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an=
 email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgi=
d/clang-built-linux/CAFP8O3Ki9HoqcV450fn29fBOWAbmuGAdB6USLz8pGsW4Vzf7sg%40m=
ail.gmail.com.



--=20
Best Regards
Masahiro Yamada

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAK7LNAS_hxevOS7hKxepyCBVU-4j87Yf5Y8DB6mFq%2B4xuaz3AA%40m=
ail.gmail.com.
