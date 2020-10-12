Return-Path: <clang-built-linux+bncBCS7XUWOUULBBB4SSP6AKGQEWOSWT4Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63f.google.com (mail-pl1-x63f.google.com [IPv6:2607:f8b0:4864:20::63f])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A18528C3F1
	for <lists+clang-built-linux@lfdr.de>; Mon, 12 Oct 2020 23:22:17 +0200 (CEST)
Received: by mail-pl1-x63f.google.com with SMTP id h20sf12726066plr.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Oct 2020 14:22:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602537736; cv=pass;
        d=google.com; s=arc-20160816;
        b=0pl4Eh4BA0O3Cp43hAoQTT3L3VZhZuh8hEkyppFSkqx09QQqa/uZcqosJsiLq5juDz
         JHVIXVOD1QiK9TpnsFZGK0xg0yCEzOs9rt8doGwpL5xxOUnN4+q/eeDvO1Ssox7VZo4M
         g6YNUQ9zY2+84/jrnnJJ43TGdLXci9DfUCySguGdfGp2sotu3bSuA0jPh7JwbNcWn++p
         6paIcP6dlI11sDyVQeQW/2td4SMXffbfCo4ArTpo8KgorzF/nMKZVdZFoWhBETQezyzy
         znCZSC3wZTvNpema6MToeb6tOd7MmMf39xiZl1znMi81YrUpkU8aYldNMqE+Xg168Az8
         IKlw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=fJsebtxeh4RqeQWlATnBLRdeKOcRFEQ8gCXYGA1d0K8=;
        b=w7d2h5PNC57p8Hd0M1oXRXfSgAzu9PbA+TrcsWFRmfI7OmWXZwhz5Pb4VSFcJXn0Ev
         mmmnE17PFIkF8Dx+JEGvfYzJ6h2sGVFalmZLJTTRLsw1g8Xfu/xdUV1ywlT1e7PLDRTL
         Iq5K8wfokiVBHJFWjNHlNyKpZmTmytVXcJIkSAz0LXZ8PbyF/aQby3G343el5pPa+5Uj
         w9V91M6LbMs3xk/n1nlSfvs3Pp++It/vSQHdWVVhgKUIDtFltBoZEhEYgrXIsWkEHUul
         gQfcb0FILKYh/O541VJTImCSM1+JumVWRg/ytgeF6JYUjmcGqhxybL4uRTgjbG94njSl
         4grg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=K0BT6MdA;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=fJsebtxeh4RqeQWlATnBLRdeKOcRFEQ8gCXYGA1d0K8=;
        b=a8a1bfnZzLGXap7BfS2NbTpaUYsK3B1wXm5JjAYexdNQP0YVTM7oM9RKp6nP1GHm20
         2ZpJahNIHf9Cps5a6TnqorM4zn5EUwnLQWsjg82ALU2AxghniJrhimESEHQ+c8/i4Wet
         d2uo/1QHKIpi30hjsCnKyUZ5P3AZPzm43oVsZBGix3FSx4MRSHboirgj8552dq4b/0SX
         MIa2uXyCLVELzXqNIKmQ1r0q9mPR1oQOYq+nPbOqcuWLjnu4yWVAJyi5PD0ahzTte1Rs
         9rBYdWSQvhfOsZteI1QP0veZUkj90C+3T0KYvjthKlYa/PDluo81ZQiaIoLRDGorwbJz
         xErw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=fJsebtxeh4RqeQWlATnBLRdeKOcRFEQ8gCXYGA1d0K8=;
        b=GSGnYJisIv8haYz1WC2g8aVfsqErs96VddDIiAGCh+MOAoxW5/9emxpsEAI0JrcoYO
         7w0Vw6r0XuCP5W9psnNqaFZINFJ7mfsQcVP28Jxign9nqhXeNTRahWoiXtCumT/hZ2LG
         ebRkWdqZoxDJjB+Rga56sqdbnlExZ3Vz6/8u1R2kl7JhbK8lUHS1wzoOerDjTX95mMp0
         BxjAFSFrcsYHQNJxQmLR8ROlWGcj+WiSKaGoCX+NQL5OopaR+ndOt74oUSCpbJX6d68C
         RJtoqSaTVgEAHAR3pernGqjwUhabR5PXpcgLvh3mHhayC4JURqLthyl2a6itz2jaIF8V
         0KdA==
X-Gm-Message-State: AOAM5326azSAnf9Rcbmei1ZV5eNuNqjX0pC7V5mZJZnBabqJ6mVH53yz
	h7BkI3PrgqrQW+GsWV70bCk=
X-Google-Smtp-Source: ABdhPJxga0PzWbLS7tskvHNA+kELL4RAnK/bUsXK1unE1Tok0QHw0+xVGyjadee544S+981tS+RJLw==
X-Received: by 2002:a17:902:b70a:b029:d2:6391:a80f with SMTP id d10-20020a170902b70ab02900d26391a80fmr25291468pls.0.1602537735881;
        Mon, 12 Oct 2020 14:22:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:bc0c:: with SMTP id w12ls10022769pjr.2.gmail; Mon,
 12 Oct 2020 14:22:15 -0700 (PDT)
X-Received: by 2002:a17:902:7604:b029:d4:d6d6:5d10 with SMTP id k4-20020a1709027604b02900d4d6d65d10mr8749228pll.80.1602537735262;
        Mon, 12 Oct 2020 14:22:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602537735; cv=none;
        d=google.com; s=arc-20160816;
        b=yLNpH/4bGw7zEQ0DwGqD8KJhr0K5ziYiBLjHgapQJiQiy7+ixTaNfbyie7O44saD+q
         cPKJePSAu+MXB4qaPqfFF97EfveHEsfVHivaw90PKI08/It7G2I2l3LFKUr5WbtlChXZ
         iOvN819QSVXJvd4TLEMd6fluoFRXfm40Q3SyhUkwqa919vr+H3Ckt+oUoHKa1YEYyP+w
         MFRpqBtK3VVFYjyg0uxHN8hXr77EVzFjeUTExyR7SMqei5i4FtSMwOfFLGNM4CoOxSVf
         qtJK9iyq7UAIqyP61obqd9iyv+81rw0HHg4NEF5lFrt9tj/ms18ysD2z8aJoNqfJ6Gwf
         6u4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=1m/Wtp4bLQJzWJzF+98Mz8HCrTCEeB/aePRJpnsfT8Q=;
        b=r0flA5X+7PqpnkGApCtIqxpnD4+e5Kre8V+auV2BbNw4sPzF0r+KoRHcgkxnWDLb+B
         f2+JC5OIZUlFhbJKKe1HW18swN1TmSW6MOhTOg9F7aLGd5nyZrSc72QZjua2oSP5iA/+
         pwr+cIA1RzkYDw0sexF9NBsKRFskArSZRWAKjZiqA3pFPJ5h3kfcXokgjsCoH9jzc1Pr
         JfeCbxsYr8qpPe1hGb7izmC7nIYsUa04RaQzzP/W1QpBbPH0I3yt3RD0UnM9TUmrbfo2
         Wra46wA/aNqU3JUNugk3iFdCcIgSi7StyqM/9s6nV6r2YJis4te17tjWR8GvPdDcs0Im
         NorQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=K0BT6MdA;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id hi16si1053957pjb.1.2020.10.12.14.22.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Oct 2020 14:22:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Received: by mail-pl1-x644.google.com with SMTP id d23so9381412pll.7
        for <clang-built-linux@googlegroups.com>; Mon, 12 Oct 2020 14:22:15 -0700 (PDT)
X-Received: by 2002:a17:902:c1d2:b029:d3:ea72:cdec with SMTP id
 c18-20020a170902c1d2b02900d3ea72cdecmr25764756plc.47.1602537734750; Mon, 12
 Oct 2020 14:22:14 -0700 (PDT)
MIME-Version: 1.0
References: <20200928224854.3224862-1-natechancellor@gmail.com> <CAKwvOd=+98r6F4JjrPEoWX88WQ=B-KMRP2eWojabLk6it3i5KA@mail.gmail.com>
In-Reply-To: <CAKwvOd=+98r6F4JjrPEoWX88WQ=B-KMRP2eWojabLk6it3i5KA@mail.gmail.com>
From: =?UTF-8?B?J0bEgW5nLXJ1w6wgU8OybmcnIHZpYSBDbGFuZyBCdWlsdCBMaW51eA==?= <clang-built-linux@googlegroups.com>
Date: Mon, 12 Oct 2020 14:22:03 -0700
Message-ID: <CAFP8O3J_Yn8SVD8RR=P5qv=NjdLT0s6JQQM8gWFU-2n0=b1uZg@mail.gmail.com>
Subject: Re: [PATCH] arm/build: Always handle .ARM.exidx and .ARM.extab sections
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>, Kees Cook <keescook@chromium.org>, 
	Ingo Molnar <mingo@kernel.org>, Russell King <linux@armlinux.org.uk>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, kernel test robot <lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=K0BT6MdA;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::644
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: =?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>
Reply-To: =?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>
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

On Mon, Oct 12, 2020 at 2:11 PM 'Nick Desaulniers' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
>
> On Mon, Sep 28, 2020 at 3:49 PM Nathan Chancellor
> <natechancellor@gmail.com> wrote:
> >
> > After turning on warnings for orphan section placement, enabling
> > CONFIG_UNWINDER_FRAME_POINTER instead of CONFIG_UNWINDER_ARM causes
> > thousands of warnings when clang + ld.lld are used:
> >
> > $ scripts/config --file arch/arm/configs/multi_v7_defconfig \
> >                  -d CONFIG_UNWINDER_ARM \
> >                  -e CONFIG_UNWINDER_FRAME_POINTER
> > $ make -skj"$(nproc)" ARCH=3Darm CROSS_COMPILE=3Darm-linux-gnueabi- LLV=
M=3D1 defconfig zImage
> > ld.lld: warning: init/built-in.a(main.o):(.ARM.extab) is being placed i=
n '.ARM.extab'
> > ld.lld: warning: init/built-in.a(main.o):(.ARM.extab.init.text) is bein=
g placed in '.ARM.extab.init.text'
> > ld.lld: warning: init/built-in.a(main.o):(.ARM.extab.ref.text) is being=
 placed in '.ARM.extab.ref.text'
> > ld.lld: warning: init/built-in.a(do_mounts.o):(.ARM.extab.init.text) is=
 being placed in '.ARM.extab.init.text'
> > ld.lld: warning: init/built-in.a(do_mounts.o):(.ARM.extab) is being pla=
ced in '.ARM.extab'
> > ld.lld: warning: init/built-in.a(do_mounts_rd.o):(.ARM.extab.init.text)=
 is being placed in '.ARM.extab.init.text'
> > ld.lld: warning: init/built-in.a(do_mounts_rd.o):(.ARM.extab) is being =
placed in '.ARM.extab'
> > ld.lld: warning: init/built-in.a(do_mounts_initrd.o):(.ARM.extab.init.t=
ext) is being placed in '.ARM.extab.init.text'
> > ld.lld: warning: init/built-in.a(initramfs.o):(.ARM.extab.init.text) is=
 being placed in '.ARM.extab.init.text'
> > ld.lld: warning: init/built-in.a(initramfs.o):(.ARM.extab) is being pla=
ced in '.ARM.extab'
> > ld.lld: warning: init/built-in.a(calibrate.o):(.ARM.extab.init.text) is=
 being placed in '.ARM.extab.init.text'
> > ld.lld: warning: init/built-in.a(calibrate.o):(.ARM.extab) is being pla=
ced in '.ARM.extab'
> >
> > These sections are handled by the ARM_UNWIND_SECTIONS define, which is
> > only added to the list of sections when CONFIG_ARM_UNWIND is set.
> > CONFIG_ARM_UNWIND is a hidden symbol that is only selected when
> > CONFIG_UNWINDER_ARM is set so CONFIG_UNWINDER_FRAME_POINTER never
> > handles these sections. According to the help text of
> > CONFIG_UNWINDER_ARM, these sections should be discarded so that the
> > kernel image size is not affected.
>
> My apologies for taking so long to review this.
>
> I have a suspicion that these come from forcing on configs that
> Kconfig/menuconfig would block, and aren't clang or lld specific, yet
> are exposed by the new linker warnings for orphan section placement
> (good).  That said, we definitely have OEMs in Android land that still
> prefer the older unwinder.
>
> From https://developer.arm.com/documentation/ihi0038/b/ (click
> download in top left), section 4.4.1 "Sections" has a note:
>
> ```
> Tables are not required for ABI compliance at the C/Assembler level
> but are required for C++.
> ```
>
> Review-by: Nick Desaulniers <ndesaulniers@google.com>
> Tested-by: Nick Desaulniers <ndesaulniers@google.com>
>
> Please submit to:
> https://www.arm.linux.org.uk/developer/patches/add.php
>
> >
> > Fixes: 5a17850e251a ("arm/build: Warn on orphan section placement")
> > Link: https://github.com/ClangBuiltLinux/linux/issues/1152
> > Reported-by: kernel test robot <lkp@intel.com>
> > Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> > ---
> >  arch/arm/kernel/vmlinux.lds.S | 4 ++++
> >  1 file changed, 4 insertions(+)
> >
> > diff --git a/arch/arm/kernel/vmlinux.lds.S b/arch/arm/kernel/vmlinux.ld=
s.S
> > index 5f4922e858d0..a2c0d96b0580 100644
> > --- a/arch/arm/kernel/vmlinux.lds.S
> > +++ b/arch/arm/kernel/vmlinux.lds.S
> > @@ -40,6 +40,10 @@ SECTIONS
> >                 ARM_DISCARD
> >  #ifndef CONFIG_SMP_ON_UP
> >                 *(.alt.smp.init)
> > +#endif
> > +#ifndef CONFIG_ARM_UNWIND
> > +               *(.ARM.exidx*)
>
> I don't think we need the wildcard, as without this line, I see:
>
> ld.lld: warning: <internal>:(.ARM.exidx) is being placed in '.ARM.exidx'

We may need the wildcard if there are -ffunction-sections builds.
In clang, .ARM.exidx* cannot be removed even with -fno-unwind-tables
-fno-exceptions.

> though I do see binutils linker scripts use precisely what you have.
> So I guess that's fine.
>
> I guess we can't reuse `ARM_UNWIND_SECTIONS` since the ALIGN and
> linker-script-defined-symbols would be weird in a DISCARD clause?
>
>
> > +               *(.ARM.extab*)
> >  #endif
> >         }
> >
> >
> > base-commit: 6e0bf0e0e55000742a53c5f3b58f8669e0091a11
> > --
>
>
> --
> Thanks,
> ~Nick Desaulniers
>
> --
> You received this message because you are subscribed to the Google Groups=
 "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an=
 email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgi=
d/clang-built-linux/CAKwvOd%3D%2B98r6F4JjrPEoWX88WQ%3DB-KMRP2eWojabLk6it3i5=
KA%40mail.gmail.com.



--=20
=E5=AE=8B=E6=96=B9=E7=9D=BF

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAFP8O3J_Yn8SVD8RR%3DP5qv%3DNjdLT0s6JQQM8gWFU-2n0%3Db1uZg=
%40mail.gmail.com.
