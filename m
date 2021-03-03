Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBUNX72AQMGQENMBWRBA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x438.google.com (mail-pf1-x438.google.com [IPv6:2607:f8b0:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id A005E32B894
	for <lists+clang-built-linux@lfdr.de>; Wed,  3 Mar 2021 15:23:14 +0100 (CET)
Received: by mail-pf1-x438.google.com with SMTP id s18sf15912075pfe.10
        for <lists+clang-built-linux@lfdr.de>; Wed, 03 Mar 2021 06:23:14 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614781393; cv=pass;
        d=google.com; s=arc-20160816;
        b=cC8ekrO/Q68/KGei81e/rROu2F0WPLDQmikhmYTMoNBnCYeol9SCtH6cYphGilyw4S
         JuOuc7Sk3SP0K48yH+OlKDCkaig7LbBaF0uT79wguWy71XgS6uHpJnA9Z35bwtiYZLEQ
         M8uIQ6M3z5ux38hha7Nix1pLvtPVSYKJlNgnDKOz/lWZg/dj31qR/yrU9Aic90nKdg1C
         nRueKl1XW04LHB2X+i03uV8Us2RRcUd+7EGqbGc2eOnjNw6X1G4gQWn/05zUrR6OKI50
         Jw/h9PfvoeRcSrzAOEt2kC1IJVhychl0GtP3NAfBOkuhqY6HuH2Yk5y8jLMK0p1rnisZ
         zMvA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=k6Nvg+0dMNCQ0YGNxcVCL9tiyAT8PlFaYbqWjS8om20=;
        b=j+xl14H9EhIZ5hSMr3C3EGv2Q7Z0P2EiLMeud3I5dW4f9v/4c73Bo6O3azPeKWPKoE
         04wV8bDl+GCsNKD7sn9g6YkMmGq4CNCjPdcEzQMqzT61I8yXviMUAK4t6NyYCaqtNVgF
         RNlkSxkSbY0ieD3VStcTcqE6L2bm3n551073xQ9e41pqvqgE5KrXK3iJ4W2GxEieeiIV
         aTB2W3GO7UGX5Out83UTxiFknLXx/WymADXFOofTPVe5MXj5ElIYBG6KghPi2krPhdKz
         VZcpZlD94GfZQVoGSn0xn0l2rUtBhopMZLxgi3eAt5blguw6B7UEC1b99JOcB82126bT
         R9IQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nHkmQZrZ;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d30 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=k6Nvg+0dMNCQ0YGNxcVCL9tiyAT8PlFaYbqWjS8om20=;
        b=lhC/ZA3c2qooJPSoZyjs5h1eruWjrdGqy4gIkZYLQUaO6za3B7MSiLPD+haaxPQK+K
         Ehd3u0McKOwGqGCKu1r3jJ0CkDP+MtKjE4jJWgODmrFdU8OUtq82xxpOyiU0R+39MJwp
         Wx7NMNCMzDRAe6q6CUO6VtzFyj0Nx+PIABL++ItJ/yvdhR2lNzPxwpRVV1ymxeQ7Ultv
         PaHhzO/G4Wu4MAQqlqFMG4h1sbxGGZriGAcZY88a3jDbV6MMI8Vt21kBMcLv9Fzl9zN/
         lycTtGVNb5+ckmpns4z8i1YMa8PRnLhm5UGOHP4p+E2eIySBrjz6rtRC+pds4YzejrLv
         paLA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=k6Nvg+0dMNCQ0YGNxcVCL9tiyAT8PlFaYbqWjS8om20=;
        b=bV6Na5uCQ/qxIn/yDQ77zKSaVpiWXf0Br8H2CkB0fJBDcg1YzCsQ8T2deAakD/SAhR
         nUgfco3cMeFrPudTnx3U8LwuZqn/Xj7saO12BIYAReUlwTi8pbUvDloFY5+X2og40kFP
         5JN2fYurmftcKg5m5XM7JRB/tb3xCmQde5i3EQeK5+N64MoG7j2xnPS21Qg5cU7Dzz3y
         6G3WqGkYlJqVFt+7o1fDp3QLknTJE3hp0BWVu9YdoQhqk6DsznlFlhefCgp7dqWFv/I7
         s51N8wazeoiurgnV3viF7/ZhVO0aaj/9mL+PMQ1SCLerPAOzSflN2rZTySppIjaQInfo
         o0EA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=k6Nvg+0dMNCQ0YGNxcVCL9tiyAT8PlFaYbqWjS8om20=;
        b=bGKiExmda8gwZZMeNuNVaKaSqCa93H0B5DISpSYsoD92NgGVV8JMybqr/CY9DlXXNk
         bJj+e1jL5Y5Jgf9CPMfT+Gi1+YyQRLbD3YbLS67NxNj9aac3OSPPgV0NCE/g8H48aNA2
         jk/ceUZeGF1gHv1s0XQh47UTW80nvUnJVFzMpmrVZdsnxQ//WieAjnyX5poRTkfIZSYH
         hUvsJEZB5I9CPJmflod3mDfKL8AJFdrttgoIqxRBAF2MjtF9Q2GOfogs7PcsjXM+x5ky
         /GSwbLDUVKXxrwZc1Cp0m99oN7oriqIzUOqi/H1r/3QqJojRo8JoivD3XjQCWx2wyhbw
         wDzA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532djxLbsoqkgmhzQRd4K0ZmcxdbWgFyDzrScK4+cGwrdkdnKwnZ
	UFmnNWvDY/+tVG4+o5Rkdus=
X-Google-Smtp-Source: ABdhPJw9IsNmEboXP7MMPnqbhagR10UhXZmOYXFzyWSMAtU30e47484Fdpc0ekCFtiSOkLoO4YB5DQ==
X-Received: by 2002:a17:902:8b89:b029:e3:dbc0:bc4c with SMTP id ay9-20020a1709028b89b02900e3dbc0bc4cmr24424385plb.5.1614781393279;
        Wed, 03 Mar 2021 06:23:13 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:6902:: with SMTP id j2ls1160849plk.10.gmail; Wed, 03
 Mar 2021 06:23:12 -0800 (PST)
X-Received: by 2002:a17:902:464:b029:e2:ebb4:9251 with SMTP id 91-20020a1709020464b02900e2ebb49251mr2928035ple.29.1614781392678;
        Wed, 03 Mar 2021 06:23:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614781392; cv=none;
        d=google.com; s=arc-20160816;
        b=ZDH/XA3/9yZGVhEJj0cYO61ZbMdnKxserHozsUt9CRvYVYZtScx0V6RfVx0ruNYd8F
         Si24t0jClJdG4mLTFEL82OWYe6qHnsgle/bxW/FVOO0AMpBesGFf57L6b2Mqwrfk18s/
         Q0YkwB/HAnJ7pqU7tH7+6RLn+yRjEPjYzTggiuRdoaHJS08OYm0wRAO47ITh9pm7camW
         WXWjOZj0En6LHVKuPXOLsrs6Tw1KCpLEGkU/592Q7RpgJf8MiyT+ASY1Rc0abKU6YXUn
         zODEXF/WVUZPrcJa2gN4oAvtZfiDZzjMx3+TNX4wUTwPLCS2Ocfx2nayatjvwjhsTJco
         7vhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=qTLKl4WRx8k2U5ZCH5+kS1apZMNxgxTKeDKtO94gMy4=;
        b=nify21zRxoPvKuZEvPhH8N0N9HGzQ1pZ1F85ZCFx6pVta6NpKKLJ9pWmjOA9Dn0mIR
         PN0eBd+Kscr4eWYx9mCz707whOdRP/uznqBVi+m+UUcvO8bI/E6GqRhjecG9TWZRYaDi
         Dlvc8c5Qr1Kt6r3MHSrZHuoXrJTvwBatWSzBuOvbIG/YGbdylwA0Qg5WdePgf8epMfQt
         RIYRuCHqdIdnbwWFfcAqYZuBp5Aqs90J3p6osPQTeoyibY+i2fJFV1Ld//36YzOj4OOt
         k+E3eQCEgLGkpaUSIfJLMTTxZgrCiR9cQgbfsAkOYwo+0Tb5/OLZlCS/0P1QxxXZVCfH
         g5iA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nHkmQZrZ;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d30 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd30.google.com (mail-io1-xd30.google.com. [2607:f8b0:4864:20::d30])
        by gmr-mx.google.com with ESMTPS id m2si830188pfk.0.2021.03.03.06.23.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Mar 2021 06:23:12 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d30 as permitted sender) client-ip=2607:f8b0:4864:20::d30;
Received: by mail-io1-xd30.google.com with SMTP id u8so25805371ior.13
        for <clang-built-linux@googlegroups.com>; Wed, 03 Mar 2021 06:23:12 -0800 (PST)
X-Received: by 2002:a02:9a0a:: with SMTP id b10mr8435021jal.132.1614781392157;
 Wed, 03 Mar 2021 06:23:12 -0800 (PST)
MIME-Version: 1.0
References: <20210302210646.3044738-1-nathan@kernel.org> <CA+icZUWKZ+vVTqSkPP0D8MMWuZkNzL1zpm+EkWrNSMM-5H3d1w@mail.gmail.com>
In-Reply-To: <CA+icZUWKZ+vVTqSkPP0D8MMWuZkNzL1zpm+EkWrNSMM-5H3d1w@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Wed, 3 Mar 2021 15:22:36 +0100
Message-ID: <CA+icZUWqhEJwWs+KJJgDxHYGb+L=yd264hV=LRAzPPipLaMMnQ@mail.gmail.com>
Subject: Re: [PATCH 1/2] Makefile: Remove '--gcc-toolchain' flag
To: Nathan Chancellor <nathan@kernel.org>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Michal Marek <michal.lkml@markovi.net>, 
	Nick Desaulniers <ndesaulniers@google.com>, linux-kbuild@vger.kernel.org, 
	linux-kernel@vger.kernel.org, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, Behan Webster <behanw@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=nHkmQZrZ;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d30
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

On Wed, Mar 3, 2021 at 4:25 AM Sedat Dilek <sedat.dilek@gmail.com> wrote:
>
> On Tue, Mar 2, 2021 at 10:07 PM Nathan Chancellor <nathan@kernel.org> wrote:
> >
> > This is not necessary anymore now that we specify '--prefix=', which
> > tells clang exactly where to find the GNU cross tools. This has been
> > verified with self compiled LLVM 10.0.1 and LLVM 13.0.0 as well as a
> > distribution version of LLVM 11.1.0 without binutils in the LLVM
> > toolchain locations.
> >
> > Signed-off-by: Nathan Chancellor <nathan@kernel.org>
>
> [ CC Behan ]
>
> Hahaha, that is a change of a very early commit in times of the
> LLVM/Clang Linux-kernel development.
> So-to-say a historical change :-).
>
> I will try this patchset later with latest Linux -v5.12-rc1+ and my
> custom patchset.
>

I tested these two patches in my build environment.
So far no issues.
NOTE: I have not tested the combo: Clang and GNU AS.

Tested-by: Sedat Dilek <sedat.dilek@gmail.com> # LLVM/Clang v13-git

- Sedat -

> > ---
> >  Makefile | 4 ----
> >  1 file changed, 4 deletions(-)
> >
> > diff --git a/Makefile b/Makefile
> > index f9b54da2fca0..c20f0ad8be73 100644
> > --- a/Makefile
> > +++ b/Makefile
> > @@ -568,10 +568,6 @@ ifneq ($(CROSS_COMPILE),)
> >  CLANG_FLAGS    += --target=$(notdir $(CROSS_COMPILE:%-=%))
> >  GCC_TOOLCHAIN_DIR := $(dir $(shell which $(CROSS_COMPILE)elfedit))
> >  CLANG_FLAGS    += --prefix=$(GCC_TOOLCHAIN_DIR)$(notdir $(CROSS_COMPILE))
> > -GCC_TOOLCHAIN  := $(realpath $(GCC_TOOLCHAIN_DIR)/..)
> > -endif
> > -ifneq ($(GCC_TOOLCHAIN),)
> > -CLANG_FLAGS    += --gcc-toolchain=$(GCC_TOOLCHAIN)
> >  endif
> >  ifneq ($(LLVM_IAS),1)
> >  CLANG_FLAGS    += -no-integrated-as
> >
> > base-commit: 7a7fd0de4a9804299793e564a555a49c1fc924cb
> > --
> > 2.31.0.rc0.75.gec125d1bc1
> >
> > --
> > You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210302210646.3044738-1-nathan%40kernel.org.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUWqhEJwWs%2BKJJgDxHYGb%2BL%3Dyd264hV%3DLRAzPPipLaMMnQ%40mail.gmail.com.
