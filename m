Return-Path: <clang-built-linux+bncBD7LZ45K3ECBBBNPY75AKGQEHA67ODQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53c.google.com (mail-ed1-x53c.google.com [IPv6:2a00:1450:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id BC08625D106
	for <lists+clang-built-linux@lfdr.de>; Fri,  4 Sep 2020 07:58:29 +0200 (CEST)
Received: by mail-ed1-x53c.google.com with SMTP id z11sf2273052edj.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Sep 2020 22:58:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599199109; cv=pass;
        d=google.com; s=arc-20160816;
        b=DLui4xWXm7CBv49rPIc20JpRSVBHPQlFxd84SGiUXK5yRlHz/8JDZVbL5Q0jxslFV1
         RexOwHZcxRWP7COuep+PovH/kDmbnbTe0gOxvMF0uISMG1gTMHAHzPC97pBiLjg8b+4O
         klmyULZHttzGJ/xaC4Yt8WYaBKBvJLer1pzlrXTtHiQmG+vwRqK4dxkFqY/DBve7VxQf
         XsHddEOAXr7ghWpuQZQQdELCbpU7ZpM5bn3jcj/ZWmTgTihNs/PXNPi6Algpjkx89xJi
         w8rTsvdtPsqOVpnY240e2ULQRcyfatvptXze7Te2nqdSLoyzsAZbXFSgPDcrNK4o+JhO
         1tBA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=bnwsFgJpugO/sHYNYxEHavn5XD4ZRqgyThoUsSJTnhM=;
        b=zwHwTic/gPb3L889HGJLo6KrYmudKuVumwuQOvR3akr3YIUYOVxvehxOFO7DtLVX/w
         jGGdZ7MbyuvRM0ZJVe7bmgLR70sVK8uSVEiYDrGZ/uAYB98XlgxOkMPcnLTy8fT3jNoX
         5bnhDqK01G+5Yr/+UEet4TwfKrq+h+GtjX9M4camUOYAJN4/uITyU1uyQhVeo1RGsTd0
         vEQLk0l9bP6jS3GFjHqFPdA/ZPBFuwkonYmgjZZvGlZcipMxvNrX27HlKIXUnXZx7Hvx
         SGjU6q2Xo0YsUKEw2iN4k/38xoWzopkkyVJmtNJvLZ/OUr2tdymyUIOdIVQYyg1XYDDC
         82Xg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=INFYiCzm;
       spf=pass (google.com: domain of mingo.kernel.org@gmail.com designates 2a00:1450:4864:20::544 as permitted sender) smtp.mailfrom=mingo.kernel.org@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=bnwsFgJpugO/sHYNYxEHavn5XD4ZRqgyThoUsSJTnhM=;
        b=U6LjWqUiXCLtO3jB6sEEBTrE/VcuGELLQj5ngUCI01KBEGOSUGgCuaoeXQNEpKsyXB
         2E8QRTUo3HXTK28cLr/5XGaFwXnBGLnlDQ2XU4/TUujA8e5xNhlj4crne+yKj1r81oLD
         O9LPwqgzkCsSXlSYFrsXoKBSfM3e3ELKtzurqMATl9q2WUPROPK3CvPCFPZ1O336Q4xn
         k2NcvhRHqMwFkXh8ELKvy3ygACa0uVDwJSWwxiWtj2eJeI2jw6P+HsZtwUrtacWFrI81
         L58pzEBNw5e+5O7/KZtAUpnF+Y7p4vM2KRnS05ld3sqKmuVZNP/2hIkWhk4EjIokO2Y3
         bFug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=bnwsFgJpugO/sHYNYxEHavn5XD4ZRqgyThoUsSJTnhM=;
        b=XoX5ReX3Kik7SE9+ZPyKnnRyuyrz6fdmX4VcFginy79jFV2c6srY6QTu8tLol3c1Kd
         3psfWibON2vzKUlSTFMtnWkRbHZlM6ypA/9p3Mi4JwtYkMdYrrkd7WYUnout1CrlzeZH
         kGX8wPs2VoYQgvyEb7Nxaon0fE1izIIjS84PWAuYUoFoX0pCf1v7U+8DHILNeIyKkGHX
         MoBGLkMNUZVczVs/wWRPoiAh+9z0yP9yhzLv9aSi0yNNT9x92rQ+JCqTQuOGfUkEQAaH
         oqUp3UMaNEcDaqbYwBP21KWz1lz13wafYte25Q3Ryyfh3BdN1VizEk4BgT1dvJ05vFfa
         kiNQ==
X-Gm-Message-State: AOAM533bx4czGFklbNp3yxCmf+may0UHw4Z8uBRT7ti58AoX5BWRwHoI
	sL5rpyh07f2H11Er3BRDHM8=
X-Google-Smtp-Source: ABdhPJwhbVNeCzLOfXEaMSBPz0L9VucJQkxQrfHd52N1rLgNluLTzShe1K9c2j3aF7BSCwphEmTr0w==
X-Received: by 2002:a05:6402:456:: with SMTP id p22mr6654608edw.177.1599199109491;
        Thu, 03 Sep 2020 22:58:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:547:: with SMTP id k7ls292888eja.7.gmail; Thu, 03
 Sep 2020 22:58:28 -0700 (PDT)
X-Received: by 2002:a17:907:214e:: with SMTP id rk14mr6038006ejb.171.1599199108692;
        Thu, 03 Sep 2020 22:58:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599199108; cv=none;
        d=google.com; s=arc-20160816;
        b=cRev8EhgL2wnUORhIkb7vMeEdNt4XZ/7nb/ALCHF0VY4Xc0jQCAxSEJTH4fv9qoozV
         Uj9eaEtZdbQlQCzknP6hF63axfR8oQ/qOZM9n8OyXdeZBQgVw4gSEZ33pJmgt+xpubK/
         3j93CQfgruUDqVOtDK2MXb9p+7wTSGAueS4CUH6urTiEEhKyqGZmPuN/raexocxKZKXN
         5nPhBEdlQwQnConjugOlZD886SNUaviuIVsaGYJTw9DAiOgWeICV06ldmAESb/cmzGGX
         OMFygPQtp0jVYiaFSRUVRTPsWlIVUWYWH/BLy3dWjRaK+8YV3BhYhfUqprgajEYdrj2k
         ve3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:dkim-signature;
        bh=86/hDza+7M+cBpbx4SYN2mNKlPBD4Khd4N7abYdp5es=;
        b=FbAg+mPVvEqcIx/AbeoSgeaJEcsGpEpjnTPRBJpEjLO6VNCxagEsTcHCZ+b4ukkiFF
         4LRmgu0GMtG/GThLRFNyZ17qzIrGDwwBl2RrhiIBXyYAiU3WLPUyAGG7L1IrybHwXTk4
         L5WwTN3outcF1VbBFFzkEgGVO3dzeDNYVJyOO0144L+ibVV4SZH/V/16vDNmF8EPxS1i
         wIJgkunE57bNTDoB/3UXjnszA53ZlK7V2y8UZth/xtPX5Iqh1ssnMKseAOgytsYUyrP1
         /ktp5jsyU+neR4Ufp9PqIMfMenYTWbkXEADvlZKUU0i4Z5dgtVVN1jsab5hu840DdNsq
         /GRw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=INFYiCzm;
       spf=pass (google.com: domain of mingo.kernel.org@gmail.com designates 2a00:1450:4864:20::544 as permitted sender) smtp.mailfrom=mingo.kernel.org@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail-ed1-x544.google.com (mail-ed1-x544.google.com. [2a00:1450:4864:20::544])
        by gmr-mx.google.com with ESMTPS id dk15si258097edb.2.2020.09.03.22.58.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Sep 2020 22:58:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of mingo.kernel.org@gmail.com designates 2a00:1450:4864:20::544 as permitted sender) client-ip=2a00:1450:4864:20::544;
Received: by mail-ed1-x544.google.com with SMTP id b12so4910180edz.11
        for <clang-built-linux@googlegroups.com>; Thu, 03 Sep 2020 22:58:28 -0700 (PDT)
X-Received: by 2002:a50:fd19:: with SMTP id i25mr6926242eds.142.1599199108527;
        Thu, 03 Sep 2020 22:58:28 -0700 (PDT)
Received: from gmail.com (563BA415.dsl.pool.telekom.hu. [86.59.164.21])
        by smtp.gmail.com with ESMTPSA id c8sm5158129ejp.30.2020.09.03.22.58.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Sep 2020 22:58:27 -0700 (PDT)
Sender: Ingo Molnar <mingo.kernel.org@gmail.com>
Date: Fri, 4 Sep 2020 07:58:25 +0200
From: Ingo Molnar <mingo@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>,
	Kees Cook <keescook@chromium.org>
Cc: Kees Cook <keescook@chromium.org>, Borislav Petkov <bp@suse.de>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Peter Collingbourne <pcc@google.com>,
	James Morse <james.morse@arm.com>, Ingo Molnar <mingo@redhat.com>,
	Russell King <linux@armlinux.org.uk>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	linux-arch <linux-arch@vger.kernel.org>,
	linux-efi <linux-efi@vger.kernel.org>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	LKML <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v7 0/5] Warn on orphan section placement
Message-ID: <20200904055825.GA2779622@gmail.com>
References: <20200902025347.2504702-1-keescook@chromium.org>
 <CAKwvOd=r8X1UeBRgYMcjUoQX_nbOEbXCQYGX6n7kMnJhGXis=Q@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOd=r8X1UeBRgYMcjUoQX_nbOEbXCQYGX6n7kMnJhGXis=Q@mail.gmail.com>
X-Original-Sender: mingo@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=INFYiCzm;       spf=pass
 (google.com: domain of mingo.kernel.org@gmail.com designates
 2a00:1450:4864:20::544 as permitted sender) smtp.mailfrom=mingo.kernel.org@gmail.com;
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


* Nick Desaulniers <ndesaulniers@google.com> wrote:

> On Tue, Sep 1, 2020 at 7:53 PM Kees Cook <keescook@chromium.org> wrote:
> >
> > Hi Ingo,
> >
> > The ever-shortening series. ;) Here is "v7", which is just the remaining
> > Makefile changes to enable orphan section warnings, now updated to
> > include ld-option calls.
> >
> > Thanks for getting this all into -tip!
> 
> For the series,
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
> 
> As the recent ppc vdso boogaloo exposed, what about the vdsos?
> * arch/x86/entry/vdso/Makefile
> * arch/arm/vdso/Makefile
> * arch/arm64/kernel/vdso/Makefile
> * arch/arm64/kernel/vdso32/Makefile

Kees, will these patches DTRT for the vDSO builds? I will be unable to test 
these patches on that old system until tomorrow the earliest.

I'm keeping these latest changes in WIP.core/build for now.

Thanks,

	Ingo

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200904055825.GA2779622%40gmail.com.
