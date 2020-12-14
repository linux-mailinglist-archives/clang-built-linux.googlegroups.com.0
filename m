Return-Path: <clang-built-linux+bncBDYJPJO25UGBB3XM377AKGQEJG7KPNQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf40.google.com (mail-qv1-xf40.google.com [IPv6:2607:f8b0:4864:20::f40])
	by mail.lfdr.de (Postfix) with ESMTPS id AB7B32DA424
	for <lists+clang-built-linux@lfdr.de>; Tue, 15 Dec 2020 00:34:07 +0100 (CET)
Received: by mail-qv1-xf40.google.com with SMTP id 12sf12971679qvk.23
        for <lists+clang-built-linux@lfdr.de>; Mon, 14 Dec 2020 15:34:07 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607988846; cv=pass;
        d=google.com; s=arc-20160816;
        b=zdJgfwN2Qwih0YIrHI37l1cMnZuxXYCuPn5dEOI8jGEOMoB5xHKsJ8lJP6yHKE/eSZ
         KHvWbFo1FZXl+NqQjB1iqzhdBqmxkGDIdFjTgX5Zq/NuoHHA1S4FanXGTdbMjboDldFS
         RQDUtCnBpFzW6NVGM5SIAUEZLQoNQgYCT7YNbB7R7djgoL0Sh5xiIBrLhBAzQPm9uwbt
         wWaMbdxVa+LAmjFC/iIzXiDshbet1MaEuvRHcsVBYfpfaRT1TOPloaYELDLwYM3RyimL
         TkJGUkPWzxyEcrzBUVxQYRhGEomlANsOnUPmsQ3DcBTQzggpf71/zSdSG8843kxjTkb1
         aeBg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=cnbFFPtlMDbpj1e/u0E1wHBxZjXc59qJxDGvq33idKE=;
        b=f3GUTLgw0MOj90/TFBopApzCMYO+FphAUzZdL/7OLaS635oyE377y5CJmalAV9Ihk1
         cdVnBGuRTcSIt17AEGvtXeYTNa9fmWEkqv9ivyamf5yzjt26mRLT8gxMVNEGYZkRxrnu
         p04zmxxK+ROIJxsTY0x2itAcr3OT13wEoIQFDJbmTWR77uMM63ivd5oju+WMkQwq+Wos
         7qNjh4mQYmqjXg1W63nBtwoZZPptA3mBUm45QVU8fdW8Wa2/PhdakLYLliIiIbNkFlSK
         yz/hbLUkjD2l7HQ1NoZCvTXNPONt6XaBUrxMoFm27hIuaZsOheMAxYJtZsnKUvGQdrqq
         tNfw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=N2wdFH+3;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cnbFFPtlMDbpj1e/u0E1wHBxZjXc59qJxDGvq33idKE=;
        b=H2+XOHJsdtWkcq+jd5TmuAthKo4vMR8w8UtOq1c6smuh8ZAN/fu06ZjVATlcKchuMR
         dQatdQstKdnGi/MjSdP2Brlq+VnpYb0LtI/ok8YxDmzPtRwpJFE5LJiEY6g6qcnc92v5
         uEGOWwQdt38VYM/Gch8cKQ92AolrYJMwrnOWcVO+beJ6gdSTnU2do5/6WOeLDeqi9sSL
         1w6pshWe1rcJ05D48eIXskKM9MFyvm9mPumFRH0tykjPWpZLef3ORW1pvBXOxcURAKye
         Tsanz8tSIIZ2UBm+I8B4b3T2DKgzlce0fTAM03yOnhKiublPj2snq4GzKaTYcSQ8R5LH
         O9IQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cnbFFPtlMDbpj1e/u0E1wHBxZjXc59qJxDGvq33idKE=;
        b=FieUAjf1TAHEni41PC9CCyzZajV1YGOUHpGKdAfBaF0OFg9tWxOxgcr03/iLmS2Gkm
         NDAVspkedK/vXogEtog/9WbrvkCbtP1odrj6jhEY+93AHuZZJ5Nr6yvoafTK+M/GdSQ1
         C/m30Wvn+DXIQ5Z7+iR7PCSvSgo7SkppmUU505c+WY4H1mHnS5It9I4vlo10U6D6YFQn
         VH7snJcZpGcxmVl5arkEu742kpGvLR+a4/eY9+AUEEdxoC0e7VhD7J+NUw2Vao0TuU1p
         P57YEVae7hPQIlbYxGTkxFUX97Vm/49xJDYbbGo+n0AJBiELMkgC05PuhpvHr/kiax0y
         31mg==
X-Gm-Message-State: AOAM532i8brCFrbuK+50/gXJSjbQlW4U+yBRb8jseicMdic3pANpQggc
	a4pNfDugyEgKIkpRgT8HFDw=
X-Google-Smtp-Source: ABdhPJxsCBxEQ1/+sTW67CruqQ/OK0xkyVPiZwa/Wa123VlFO25Sm1Ycx6uIg82RXH02CkblbNJ76Q==
X-Received: by 2002:a37:6f07:: with SMTP id k7mr36196938qkc.423.1607988846576;
        Mon, 14 Dec 2020 15:34:06 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6214:20ea:: with SMTP id 10ls4247127qvk.2.gmail; Mon, 14
 Dec 2020 15:34:06 -0800 (PST)
X-Received: by 2002:ad4:4a70:: with SMTP id cn16mr3725789qvb.38.1607988846071;
        Mon, 14 Dec 2020 15:34:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607988846; cv=none;
        d=google.com; s=arc-20160816;
        b=NFBlshhnRFXVdKPZ/FRujGe6geaYhRnjZLcRAfpS/GDocEYl8LlzUt6hN26CJiyR9D
         rh8HKPxwAX46/Q4ForZiujkKdl7QzU4Q1hbdK4PmVYYdlIPjq+LjdJtACgK8NhwDoAIX
         tyadvgqIGUn+r/P1BupwmxdIvy9dwJkRkcZUNcofSzK8NEYSuCfo/Y8gOUpGexRsfqTb
         sue02VINTvUq+7r7Bt2txTiAxtXQ6mhWCNCIvOJGOn/uOAoBuwMAQYQWra++rHJEmGT+
         DjROiiHAtxxEMzkLm/W4uCsQwfBfD4Gje/p+ARL2uzyAmmFJhGHuE+RN7rem1oqiNGpn
         aDLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=vTHaU4vUZHFQDmOjKt/sYCJqlEwq0LLonv48w3qyuBE=;
        b=mbKOBA4Ly6wiyee/EvQezRxPapi3gI/YweUI6c/w0lBZD/QHpmQ1IRf2w01EiRqsvQ
         HTQoZyQ56m0eYvaeh99BQYvojUEPcxqv0zChLA6xc4tYSQc8Y1oSNt0TIBXwm1uMl2PS
         0kk2suMJHsOgG7PdAAshw7dbPSflRwSTpz5RopaxMhmqF9VX2FlbpckrWdgaOMDILzuY
         a9nH3Q6ZCtMlflMPdWF694y1Xm+zoWMoPPmiyqyrJzVMKQcTtUOjp7n2LyVrMXJRLv9Q
         96B8vmesGTm3P8YScmnITQH6YtWeyXx60Lfz73X3ToziZ5Jn3VZCvXMq+spPkHuRcVl8
         6D5w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=N2wdFH+3;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id z94si1363200qtc.0.2020.12.14.15.34.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Dec 2020 15:34:06 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Received: by mail-pg1-x541.google.com with SMTP id i7so2221296pgc.8
        for <clang-built-linux@googlegroups.com>; Mon, 14 Dec 2020 15:34:06 -0800 (PST)
X-Received: by 2002:a63:a902:: with SMTP id u2mr26905202pge.263.1607988845055;
 Mon, 14 Dec 2020 15:34:05 -0800 (PST)
MIME-Version: 1.0
References: <20201016175339.2429280-1-ndesaulniers@google.com>
 <160319373854.2175971.17968938488121846972.b4-ty@kernel.org>
 <CAKwvOdnYcff_bcWZYkUC5qKso6EPRWrDgMAdn1KE1_YMCTy__A@mail.gmail.com> <20201214231827.GG8873@bubble.grove.modra.org>
In-Reply-To: <20201214231827.GG8873@bubble.grove.modra.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 14 Dec 2020 15:33:53 -0800
Message-ID: <CAKwvOdkP8vHidFPWczC24XwNHhQaXovQiQ43Yb6Csp_+kPR9XQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: link with -z norelro regardless of CONFIG_RELOCATABLE
To: Alan Modra <amodra@gmail.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>, kernel-team <kernel-team@android.com>, 
	Will Deacon <will@kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	Peter Smith <Peter.Smith@arm.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, "# 3.4.x" <stable@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, Ard Biesheuvel <ardb@kernel.org>, 
	=?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>, 
	Quentin Perret <qperret@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=N2wdFH+3;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541
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

On Mon, Dec 14, 2020 at 3:18 PM Alan Modra <amodra@gmail.com> wrote:
>
> On Mon, Dec 14, 2020 at 01:44:06PM -0800, Nick Desaulniers wrote:
> > aarch64-linux-gnu-ld: warning: -z norelro ignored
> >
> > So we set the emulation mode via -maarch64elf, and our preprocessed
>
> The default linker emulation for an aarch64-linux ld.bfd is
> -maarch64linux, the default for an aarch64-elf linker is
> -maarch64elf.  They are not equivalent.  If you choose -maarch64elf
> you get an emulation that doesn't support -z relro.
>
> Now I don't know why the kernel uses -maarch64elf so you shouldn't
> interpret my comment as a recommendation to use -maarch64linux
> instead.  That may have other unwanted effects.

Cool, thanks for the context.  The kernel currently has:

arch/arm64/Makefile:
...
ifeq ($(CONFIG_CPU_BIG_ENDIAN), y)
...
# Prefer the baremetal ELF build target, but not all toolchains include
# it so fall back to the standard linux version if needed.
LDFLAGS                += -EB $(call ld-option, -maarch64elfb, -maarch64linuxb)
...
else
...
# Same as above, prefer ELF but fall back to linux target if needed.
LDFLAGS                += -EL $(call ld-option, -maarch64elf, -maarch64linux)
...

Then
$ git log -S maarch64elf arch/arm64/Makefile
provides more context:
1. https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=c931d34ea0853d41349e93f871bd3f17f1c03a6b
2. https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=96f95a17c1cfe65a002e525114d96616e91a8f2d
3. https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=38fc4248677552ce35efc09902fdcb06b61d7ef9

So it seems more that the kernel is relying on whichever emulation
targets are supported in local distros, not necessarily the semantic
differences between the two.  Since the kernel might be linked as
either, I'll send the patch described in my last post to add `-z
norelro` just when linking with LLD, since it sounds like it's only
possible to specify when -maarch64linux/-maarch64linuxb is used, which
is unlikely.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkP8vHidFPWczC24XwNHhQaXovQiQ43Yb6Csp_%2BkPR9XQ%40mail.gmail.com.
