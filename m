Return-Path: <clang-built-linux+bncBDHYDDNWVUNRB4M4X2BAMGQEKNBSE4Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3d.google.com (mail-io1-xd3d.google.com [IPv6:2607:f8b0:4864:20::d3d])
	by mail.lfdr.de (Postfix) with ESMTPS id C695933C25A
	for <lists+clang-built-linux@lfdr.de>; Mon, 15 Mar 2021 17:42:26 +0100 (CET)
Received: by mail-io1-xd3d.google.com with SMTP id s6sf7990764iom.21
        for <lists+clang-built-linux@lfdr.de>; Mon, 15 Mar 2021 09:42:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1615826545; cv=pass;
        d=google.com; s=arc-20160816;
        b=ktG0C134vuo+qEZs3m3lk2BNSNuwKeDrSM5x1IcsKcmmsnmZv9ngVWEzSnRpwKYO0+
         BD8syEfhTEHYeKVLX9O0XhgbjhUfNEn9gkNXL3zKEhkNKug+Jd9KIf/Hix6JiZlRQgpo
         a1kq5QxGp73q5IoRPSzIJMg4xfMkjDTV700kkruuULcfJBVCsnuYFeQi//j5wC7t5V77
         6Jaz+wBRBFdrdzA5b035jgioL/CWEmTCj478fSy1/3yvubiw1WPxsxNYtvAZk3tdDi2O
         vBRrJl+MqQUU8UD8yCUoSzB3j4D6Qr2OrAS/HXXuzjLrrbYQjE5M1u2z7yKOn3JZ1guZ
         1ziQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=MFPFmAhhljDjqlfEkLx0ShXNavR1W3ZpmSteKLE8O0U=;
        b=yPW52FxmtdZU6kgUPUVs7twAJ0wCwmIN2pZxOIoLsasqImIxNA8uD/gQb3OdI3zNGp
         bAlT6uGxD9rA1JwZZ7JrRogHRKZhcJVdEWdCPuZFAlbNJUcmz5nXd5JG9akvLS4uIY9o
         IHJSwzUJnWt0g9DhYnpnUFjvOFXqkq0vgzjUEZUb2QIbldHGyAg9rGSSwXF2qnf2KThl
         Q6/BHqgqhpQdENO21HiOg9JikmUasqFQ7Ri/AmCQnxHeuDP48zevn8HQO7rBIcM7CddG
         ETNj5TZMCiGGakTRnqpqFvM7OfhqCBoyYWUjEGFHnXedSA9+FwA3p2fdcYClPqoYOM9w
         hz5w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pS8R6CQk;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2e as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=MFPFmAhhljDjqlfEkLx0ShXNavR1W3ZpmSteKLE8O0U=;
        b=gSAoNntgaaaXHGNnwNVDEbSraWFE3F6LUFLVP709CoxcKxq8GEBpKtE7HPryJqqeOj
         1a0Ku7kn/PqP/dTWJtrmZ3hX/P4avNtoAMRNegNcy6ME80ryT6IHFgI6fXSmJsvES5/0
         t+TrwwtZvJc7olQftwRwGVDnbf88XZej7ROCO/DMGSi/5Pyj4xrVIosxf1fNyi9qhi3b
         OES4YP7+DaOiTPqaTvPvO1tgl9UfOWCKhb6Z34e1L796Euf/RJv9H8qjrbX7lhBEXdWh
         pwD/Y7Niqnzr6ncTczCtRJeOIhqQian/WK+chtTGkzQa7hlBZEJy3yCg1RK4pS1SYMBw
         FmDw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MFPFmAhhljDjqlfEkLx0ShXNavR1W3ZpmSteKLE8O0U=;
        b=Hdbjt9w0JsY5Pw6Ly2tgx9C0d3fLXEyIbddZOd7YdK7EqgzSBT8U7JhSMFGqaLfaEk
         heU8fyqCbxiLR23I/UoHrn0UmURNqnOonqtdUtKQLUA/splXugUpi6NZyF9zHehJ1Nzw
         4L1fPxQ+EN4jJx67P7dIow+n9czcSgFwn+zVDqA0jx5D0n1j69MQvAITpASzTkNvcesJ
         Tmf/27LnH3y+agP+wYWmm12k99YhTAz2YBcF5h3W1PtIQHUayU1Yf7D84pMS5yxGOdgu
         QW2aQXRHY2fMeJ3zmJrpJFkx2LsPDIm/2hXRP6u6Mm+2JavXoeiciIFFb2T6BJzWcYEA
         c+EA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MFPFmAhhljDjqlfEkLx0ShXNavR1W3ZpmSteKLE8O0U=;
        b=mmyF17RXd2H2EwEDX0skCiNuZngUkJapzCVAmjM3IU6sdr4CeLi2uwXSfbu20M2Bw9
         ldLahFYfJp4/LXg3xjzP6xNNPo/QV/dRZGmytnsP+NZJztKaAvHEkGvNvh6FeAmGCo/k
         vfjsla8YpyWcdyxt/dB2hPQ7/mcZpfRMW9qSZ/RaqDaIeIZ8+7JrF04q5lnPSQ/RXeaR
         X8pWAKcJr6l4+8DNwXNPboljPPvnrCicXFWOrtBgbhYKdaBG55RLC90dO2OzxpSkKnV/
         sFRoQWR2wEfTyCmZwlzNjGf1g1cWsiQLIsedPczhKqjA61LB3ZxJ0d+8i3Of3OW02xgK
         k1tw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531ELBvXi6ysf6EUAsNTc9x3O5eH9S4CbA5FHcg5kdXvTCar70wQ
	mV+MWHLLgww79VLjlfGDr3g=
X-Google-Smtp-Source: ABdhPJyjL1Gcq2fy5vi/HKdnez+kfHp1HzG6pRq2jpkObenygLedXcifLxZ6J9nKJPoZrrkqrE//XQ==
X-Received: by 2002:a92:ce84:: with SMTP id r4mr404323ilo.112.1615826545468;
        Mon, 15 Mar 2021 09:42:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6602:26c6:: with SMTP id g6ls2357281ioo.5.gmail; Mon, 15
 Mar 2021 09:42:25 -0700 (PDT)
X-Received: by 2002:a05:6602:2e82:: with SMTP id m2mr351745iow.70.1615826544993;
        Mon, 15 Mar 2021 09:42:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1615826544; cv=none;
        d=google.com; s=arc-20160816;
        b=HIAFTjhb8rw5pgDUCihWxqkXfV4zWcJUy9lGHO6GTKXz17oVSX0E2T8QLef7PCwbQ2
         epSk84QHGTJhQCgpUwMvMkJpqLNRCDnwMEZE7n3uLx7wbubSX0z5cFfUmfbxFG8wGEb0
         g5QXgJBqfq2PjM+rvcVrqcEsaQYFw7vefFoiLC7egcX/9L4ka+RqPkWtVMPggtip+PX3
         e6rjK2dtRisZNsS1/bs/EUvQk836gEuueP+i6+2qEKk+4UKsWDNkgLKwQP6JlpvER/kf
         TCXfZ/VeJJxnDdNCZOxcAJ8tbIVSgPL7VxA15aj7FnLHBfwjLX9Xw86vE1f6/YNlysw4
         h+tQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=suo82Wm7Q2Ni3L8PUnv9EFjW8tqvE9ayUdLNwJVj7+c=;
        b=X45Nfqg5Mo8zXSlkoMY8QTYEnV6403+EAbiywH2gTmFBmdsldbOfJMO4rsQsdJE4yU
         eIZJSpT3RNZHuVa+BmSTNxrER0vB/Yc8Vypzd4fjaarUzgkXXQSg40Wu7X7+tOyD5DcS
         Yu+PnJOeU30WBD24hfNasoQJzt/kCFknufHxum7OBTZkP9YC8MGeYlbp6EeeGw9QmrGj
         LtPauleET1hZH8LU+El5LK44aZwhinuwVlBE6J7gnne08c43WTzmRES9EiF7ayBuJvAZ
         EQMHLwq0aAcgo826BYwWJLbI1oD2O1F9vYgP0rF53ahtC9CfaN7LIJNVf58YMecl02cd
         3Ovg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pS8R6CQk;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2e as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd2e.google.com (mail-io1-xd2e.google.com. [2607:f8b0:4864:20::d2e])
        by gmr-mx.google.com with ESMTPS id c2si909809ilj.4.2021.03.15.09.42.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Mar 2021 09:42:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2e as permitted sender) client-ip=2607:f8b0:4864:20::d2e;
Received: by mail-io1-xd2e.google.com with SMTP id m7so15019672iow.7
        for <clang-built-linux@googlegroups.com>; Mon, 15 Mar 2021 09:42:24 -0700 (PDT)
X-Received: by 2002:a02:9a0a:: with SMTP id b10mr10259501jal.132.1615826544698;
 Mon, 15 Mar 2021 09:42:24 -0700 (PDT)
MIME-Version: 1.0
References: <20210302210646.3044738-1-nathan@kernel.org> <20210309205915.2340265-1-nathan@kernel.org>
 <CAK7LNAQ6goFdV=HuCdiCsr-PSUGxtafHZAa=p=96ieFyFHL8yg@mail.gmail.com>
In-Reply-To: <CAK7LNAQ6goFdV=HuCdiCsr-PSUGxtafHZAa=p=96ieFyFHL8yg@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Mon, 15 Mar 2021 17:41:47 +0100
Message-ID: <CA+icZUVRyEGnLnRBiZjmZqmvCLkR8AZR8tihho83Lrr_F9A2BA@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] Makefile: Remove '--gcc-toolchain' flag
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Nathan Chancellor <nathan@kernel.org>, Michal Marek <michal.lkml@markovi.net>, 
	Nick Desaulniers <ndesaulniers@google.com>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Fangrui Song <maskray@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=pS8R6CQk;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2e
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

On Mon, Mar 15, 2021 at 5:22 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> On Wed, Mar 10, 2021 at 5:59 AM Nathan Chancellor <nathan@kernel.org> wrote:
> >
> > This flag was originally added to allow clang to find the GNU cross
> > tools in commit 785f11aa595b ("kbuild: Add better clang cross build
> > support"). This flag was not enough to find the tools at times so
> > '--prefix' was added to the list in commit ef8c4ed9db80 ("kbuild: allow
> > to use GCC toolchain not in Clang search path") and improved upon in
> > commit ca9b31f6bb9c ("Makefile: Fix GCC_TOOLCHAIN_DIR prefix for Clang
> > cross compilation"). Now that '--prefix' specifies a full path and
> > prefix, '--gcc-toolchain' serves no purpose because the kernel builds
> > with '-nostdinc' and '-nostdlib'.
> >
> > This has been verified with self compiled LLVM 10.0.1 and LLVM 13.0.0 as
> > well as a distribution version of LLVM 11.1.0 without binutils in the
> > LLVM toolchain locations.
> >
> > Link: https://reviews.llvm.org/D97902
> > Signed-off-by: Nathan Chancellor <nathan@kernel.org>
> > ---
> >
> > v1 -> v2:
> >
> > * Improve commit message (add history behind flag and link to Fangrui's
> >   documentation improvement).
>
>
> Both applied to linux-kbuild. Thanks.
>

Sorry for being pedantic: This misses my Tested-by#s (see [1]).

Tested-by: Sedat Dilek <sedat.dilek@gmail.com> # LLVM/Clang v13-git

AFAICS v2 changes some comments in the commit only but not code?

- Sedat -

[1] https://marc.info/?l=linux-kernel&m=161480031518629&w=2
[2] https://git.kernel.org/pub/scm/linux/kernel/git/masahiroy/linux-kbuild.git/commit/?h=kbuild&id=d4aa405bc9cd506532f075456645716cdd1739c1

>
>
>
>
> > I did not carry tags forward so that people could re-review and test.
> >
> >  Makefile | 4 ----
> >  1 file changed, 4 deletions(-)
> >
> > diff --git a/Makefile b/Makefile
> > index 31dcdb3d61fa..182e93d91198 100644
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
> > base-commit: a38fd8748464831584a19438cbb3082b5a2dab15
> > --
> > 2.31.0.rc1
> >
>
>
> --
> Best Regards
> Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUVRyEGnLnRBiZjmZqmvCLkR8AZR8tihho83Lrr_F9A2BA%40mail.gmail.com.
