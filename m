Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBHUUSP6AKGQEIRFAZQY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53f.google.com (mail-pg1-x53f.google.com [IPv6:2607:f8b0:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CF0C28C3FD
	for <lists+clang-built-linux@lfdr.de>; Mon, 12 Oct 2020 23:26:56 +0200 (CEST)
Received: by mail-pg1-x53f.google.com with SMTP id s4sf13097766pgk.17
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Oct 2020 14:26:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602538015; cv=pass;
        d=google.com; s=arc-20160816;
        b=pgXp9WrnvEJC8QmrCuLEsIk3CrBXuVhhSJDlNWf572TY4BF7MZ4s7Sn1bS/gBrtxLw
         GhOaKYueJBlahuTLJwb5bcT5CgImCQC072Th5gHOsGLOpT/TPa3eM29Yrc16kuIh36XB
         9VpNEAZ8l7FWbDUPJPCXQEbWieQR0088CkIb8I76gFYm4FjqPZc96pjykHL1ao90iU0P
         FBZpZ2m1cXWy5G0NOsqOybcXxezWTiTY5nzzOjRL3OsXU7B7NI4Z9beIlIVuLjAoVlp1
         cY3wlh9LU48WXPFc39fexOin7RwVa95ycZPuMSddiC6f3p2uki860Ez+YJ0qIb1OS7va
         WKqg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=LxYnRhs5VnPZRgiUGolkYN8L6JUkoIbPQPhOaMhee10=;
        b=JN9vOcRxCQB5/wyLlDL/ecjkh7WIcW13n7xSEozZ5+W85ZChUHudzBp5gSxpcPdCzZ
         K2vmSTm+dhajxZjB1iVPVuZVuwein3RBXX3tdnzPWU3Vw5Vio889OJNsE121BnuwHH/y
         JNk5swPu5t2j/acHqXUF+hrQVwPdv9gDvz+JFvwHdg3jFnEdn1S4xjsopIMoyQJpcJDP
         OugjeQvicJxUc1hBPP44Gc5LDMf8d3lzS293J6j0bufzFjTPD0oI00b73wT5KSRV+Y8a
         Dk/c1qqiGS+UlpoCvKYOU7x2TqtWuTG6cE0UbcZIYrb6b81M3mMmtFDHI56CuM1ubpQa
         Sn8Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=nuz+J7fb;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LxYnRhs5VnPZRgiUGolkYN8L6JUkoIbPQPhOaMhee10=;
        b=isHCNi7+HmZtk+J4Dt12lshb4nc29IuJZDOqKEXOvMaeEH7CT6wz9Z3GartC/h5kvK
         qG7OSDuVAYNzC07MfEG7Marvwvw+YK9KejYyr4yJAkkw8e+j/eLFJconQLT4ngBADGCs
         WrJjGWEbB3ocVU+jJA5zmi5IeQkd6aBHGyMfbqSTPQ3o7cIPGRZFTvXEBho/RJ/izwBf
         wEnBUs4I5nXJ/xhbw/wuqLkw0bc88WHX3BuVZ/tg2ZhU6vPtWZJxFpqmnoMmg2ENgap0
         Lkii4HsKRdeEhArFkn6XDFi+7JZjIkSrrWgcca9Pzzbj0zNtczopY8gZlLTExpDOrRUR
         gi5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LxYnRhs5VnPZRgiUGolkYN8L6JUkoIbPQPhOaMhee10=;
        b=qYRovXcuTbdzrCcfVZAKby62lklBSOG5EM7oVVNVhuvoGMkMzuIpOXOeUcJ2l2Jh0K
         u6vbSiNeAXPm8fiSuh1NWbUSUnQDlYPuxDJhlKFJUiT+lH2S/BKuQiaqPlWI5b0kJA3E
         8UBBThk0cpfqxqws47O/ct5AArud8lHduNj6iI2K/NsHRVgUAu2uHqAIwXnda3Yu+a1A
         H97AmMVaPTR4OE4Dq4gcGBJuVXvmQ6rQbEERUYvtHtk+y3jgtS0BeiFeKgUzY9rLxWRB
         NRBFuZQG8Y1Rqsx6WFMhjucjgvgSHMcwuQDcRtRZianV94wNTEW6vlTdmHEEvRF7U0Ip
         ue6w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531WB9DL+BMqCseHOB0gQafcuZnfMwZbFEY6kjCFKNhOp+yriUs6
	7exrJkjFLDI2dwyQGLX0zxQ=
X-Google-Smtp-Source: ABdhPJwfabTGtE+j+2tq33WMrg895mjmoW1iuHM8EfR3z+hagoUdrR5hKzs9Uls3Kg+jUKWmZs9BkA==
X-Received: by 2002:a17:90a:d983:: with SMTP id d3mr22034475pjv.144.1602538015123;
        Mon, 12 Oct 2020 14:26:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:b596:: with SMTP id a22ls8124531pls.7.gmail; Mon, 12
 Oct 2020 14:26:54 -0700 (PDT)
X-Received: by 2002:a17:902:be0c:b029:d2:8ceb:f39c with SMTP id r12-20020a170902be0cb02900d28cebf39cmr24577656pls.71.1602538014507;
        Mon, 12 Oct 2020 14:26:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602538014; cv=none;
        d=google.com; s=arc-20160816;
        b=j6hPzJwVhoLaKd23nhGLcno95D2/4N49QuM03siBnQyZI0ppsKF0P8kvNolOtm+qOw
         Pw2cBT5Dzg9kzoHB/8FazNhporJv8f/4Je2/Uoe+aJUNjIEtLSFverCpdnPB0tYB5c7S
         2a8CYAmkrA8Wo6i3K2AjEyvI04hI9b3gVzY+sjbDaXal2Jbv+dFIsyGT2Ppi9JjNU/6o
         b6bS9czv9Oqh03k0c2EiIGcF/nVfb5N+KMuAVWylWKDA/lV+yr/mZsfW5w98hUw7FYZ6
         kIJ+F1cGEp2s/ZT8Zrb8Z4vSW01z5Bw6HrJ1OaJbxjz/hA6TQaGsGnOd+/0ahfgq4Hcu
         R2/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=DshweHF2Lcb/utD4pDzDKL8NA4Ub2idEznn/U60w5+0=;
        b=SRnk2sXIyecgHXKxg6fKdh7N7I/38i4bL4DWtxaw/RT1H7J68VRxj0ML9pRyVbl64V
         tnADJohuuQnptuDcfdw2w0mB78p8FUHQord55HznWO9DWchu/+uyIUd06Vi7B5NJaCru
         jREz+IlQJJtLUifLu7p6c8u06+suD06Z6t22TAy1KP5R+nRLQghi0PGjEuMYlKr1B33K
         6DeNGhSIasP3YJ/eIbNivhYRSxktEfA07cOzY6a8g0Zt3TJw/rvysJ9TNXc0a7ZBZxsD
         IDGA/JsQjWnNOGqooEWg9v1wTNga7hb7k2JRwnLCub6CB+ejX39u3BfwUGPt6Thb3RKZ
         vyuQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=nuz+J7fb;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id m62si1330247pgm.2.2020.10.12.14.26.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Oct 2020 14:26:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Received: by mail-pf1-x443.google.com with SMTP id w21so14848000pfc.7
        for <clang-built-linux@googlegroups.com>; Mon, 12 Oct 2020 14:26:54 -0700 (PDT)
X-Received: by 2002:a63:f803:: with SMTP id n3mr14515274pgh.231.1602538014115;
        Mon, 12 Oct 2020 14:26:54 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id j24sm5270519pjn.9.2020.10.12.14.26.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Oct 2020 14:26:53 -0700 (PDT)
Date: Mon, 12 Oct 2020 14:26:52 -0700
From: Kees Cook <keescook@chromium.org>
To: =?utf-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Ingo Molnar <mingo@kernel.org>,
	Russell King <linux@armlinux.org.uk>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	kernel test robot <lkp@intel.com>
Subject: Re: [PATCH] arm/build: Always handle .ARM.exidx and .ARM.extab
 sections
Message-ID: <202010121426.A5FA5E59@keescook>
References: <20200928224854.3224862-1-natechancellor@gmail.com>
 <CAKwvOd=+98r6F4JjrPEoWX88WQ=B-KMRP2eWojabLk6it3i5KA@mail.gmail.com>
 <CAFP8O3J_Yn8SVD8RR=P5qv=NjdLT0s6JQQM8gWFU-2n0=b1uZg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <CAFP8O3J_Yn8SVD8RR=P5qv=NjdLT0s6JQQM8gWFU-2n0=b1uZg@mail.gmail.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=nuz+J7fb;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::443
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Mon, Oct 12, 2020 at 02:22:03PM -0700, F=C4=81ng-ru=C3=AC S=C3=B2ng wrot=
e:
> On Mon, Oct 12, 2020 at 2:11 PM 'Nick Desaulniers' via Clang Built
> Linux <clang-built-linux@googlegroups.com> wrote:
> >
> > On Mon, Sep 28, 2020 at 3:49 PM Nathan Chancellor
> > <natechancellor@gmail.com> wrote:
> > >
> > > After turning on warnings for orphan section placement, enabling
> > > CONFIG_UNWINDER_FRAME_POINTER instead of CONFIG_UNWINDER_ARM causes
> > > thousands of warnings when clang + ld.lld are used:
> > >
> > > $ scripts/config --file arch/arm/configs/multi_v7_defconfig \
> > >                  -d CONFIG_UNWINDER_ARM \
> > >                  -e CONFIG_UNWINDER_FRAME_POINTER
> > > $ make -skj"$(nproc)" ARCH=3Darm CROSS_COMPILE=3Darm-linux-gnueabi- L=
LVM=3D1 defconfig zImage
> > > ld.lld: warning: init/built-in.a(main.o):(.ARM.extab) is being placed=
 in '.ARM.extab'
> > > ld.lld: warning: init/built-in.a(main.o):(.ARM.extab.init.text) is be=
ing placed in '.ARM.extab.init.text'
> > > ld.lld: warning: init/built-in.a(main.o):(.ARM.extab.ref.text) is bei=
ng placed in '.ARM.extab.ref.text'
> > > ld.lld: warning: init/built-in.a(do_mounts.o):(.ARM.extab.init.text) =
is being placed in '.ARM.extab.init.text'
> > > ld.lld: warning: init/built-in.a(do_mounts.o):(.ARM.extab) is being p=
laced in '.ARM.extab'
> > > ld.lld: warning: init/built-in.a(do_mounts_rd.o):(.ARM.extab.init.tex=
t) is being placed in '.ARM.extab.init.text'
> > > ld.lld: warning: init/built-in.a(do_mounts_rd.o):(.ARM.extab) is bein=
g placed in '.ARM.extab'
> > > ld.lld: warning: init/built-in.a(do_mounts_initrd.o):(.ARM.extab.init=
.text) is being placed in '.ARM.extab.init.text'
> > > ld.lld: warning: init/built-in.a(initramfs.o):(.ARM.extab.init.text) =
is being placed in '.ARM.extab.init.text'
> > > ld.lld: warning: init/built-in.a(initramfs.o):(.ARM.extab) is being p=
laced in '.ARM.extab'
> > > ld.lld: warning: init/built-in.a(calibrate.o):(.ARM.extab.init.text) =
is being placed in '.ARM.extab.init.text'
> > > ld.lld: warning: init/built-in.a(calibrate.o):(.ARM.extab) is being p=
laced in '.ARM.extab'
> > >
> > > These sections are handled by the ARM_UNWIND_SECTIONS define, which i=
s
> > > only added to the list of sections when CONFIG_ARM_UNWIND is set.
> > > CONFIG_ARM_UNWIND is a hidden symbol that is only selected when
> > > CONFIG_UNWINDER_ARM is set so CONFIG_UNWINDER_FRAME_POINTER never
> > > handles these sections. According to the help text of
> > > CONFIG_UNWINDER_ARM, these sections should be discarded so that the
> > > kernel image size is not affected.
> >
> > My apologies for taking so long to review this.
> >
> > I have a suspicion that these come from forcing on configs that
> > Kconfig/menuconfig would block, and aren't clang or lld specific, yet
> > are exposed by the new linker warnings for orphan section placement
> > (good).  That said, we definitely have OEMs in Android land that still
> > prefer the older unwinder.
> >
> > From https://developer.arm.com/documentation/ihi0038/b/ (click
> > download in top left), section 4.4.1 "Sections" has a note:
> >
> > ```
> > Tables are not required for ABI compliance at the C/Assembler level
> > but are required for C++.
> > ```
> >
> > Review-by: Nick Desaulniers <ndesaulniers@google.com>
> > Tested-by: Nick Desaulniers <ndesaulniers@google.com>
> >
> > Please submit to:
> > https://www.arm.linux.org.uk/developer/patches/add.php
> >
> > >
> > > Fixes: 5a17850e251a ("arm/build: Warn on orphan section placement")
> > > Link: https://github.com/ClangBuiltLinux/linux/issues/1152
> > > Reported-by: kernel test robot <lkp@intel.com>
> > > Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> > > ---
> > >  arch/arm/kernel/vmlinux.lds.S | 4 ++++
> > >  1 file changed, 4 insertions(+)
> > >
> > > diff --git a/arch/arm/kernel/vmlinux.lds.S b/arch/arm/kernel/vmlinux.=
lds.S
> > > index 5f4922e858d0..a2c0d96b0580 100644
> > > --- a/arch/arm/kernel/vmlinux.lds.S
> > > +++ b/arch/arm/kernel/vmlinux.lds.S
> > > @@ -40,6 +40,10 @@ SECTIONS
> > >                 ARM_DISCARD
> > >  #ifndef CONFIG_SMP_ON_UP
> > >                 *(.alt.smp.init)
> > > +#endif
> > > +#ifndef CONFIG_ARM_UNWIND
> > > +               *(.ARM.exidx*)
> >
> > I don't think we need the wildcard, as without this line, I see:
> >
> > ld.lld: warning: <internal>:(.ARM.exidx) is being placed in '.ARM.exidx=
'
>=20
> We may need the wildcard if there are -ffunction-sections builds.
> In clang, .ARM.exidx* cannot be removed even with -fno-unwind-tables
> -fno-exceptions.

Does it need to be:

	*(.ARM.exidx) *(.ARM.exidx.*)
	*(.ARM.extab) *(.ARM.extab.*)

?

>=20
> > though I do see binutils linker scripts use precisely what you have.
> > So I guess that's fine.
> >
> > I guess we can't reuse `ARM_UNWIND_SECTIONS` since the ALIGN and
> > linker-script-defined-symbols would be weird in a DISCARD clause?
> >
> >
> > > +               *(.ARM.extab*)
> > >  #endif
> > >         }
> > >
> > >
> > > base-commit: 6e0bf0e0e55000742a53c5f3b58f8669e0091a11
> > > --
> >
> >
> > --
> > Thanks,
> > ~Nick Desaulniers
> >
> > --
> > You received this message because you are subscribed to the Google Grou=
ps "Clang Built Linux" group.
> > To unsubscribe from this group and stop receiving emails from it, send =
an email to clang-built-linux+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/ms=
gid/clang-built-linux/CAKwvOd%3D%2B98r6F4JjrPEoWX88WQ%3DB-KMRP2eWojabLk6it3=
i5KA%40mail.gmail.com.
>=20
>=20
>=20
> --=20
> =E5=AE=8B=E6=96=B9=E7=9D=BF

--=20
Kees Cook

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/202010121426.A5FA5E59%40keescook.
