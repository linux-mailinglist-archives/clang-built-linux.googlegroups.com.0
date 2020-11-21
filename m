Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBBEM4L6QKGQEMZXD6MA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63b.google.com (mail-pl1-x63b.google.com [IPv6:2607:f8b0:4864:20::63b])
	by mail.lfdr.de (Postfix) with ESMTPS id B40CA2BBC98
	for <lists+clang-built-linux@lfdr.de>; Sat, 21 Nov 2020 04:14:15 +0100 (CET)
Received: by mail-pl1-x63b.google.com with SMTP id g11sf1093628pll.2
        for <lists+clang-built-linux@lfdr.de>; Fri, 20 Nov 2020 19:14:15 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605928453; cv=pass;
        d=google.com; s=arc-20160816;
        b=KohtV+z5oJrAoQI17wtubYSsoaZyjf8JF5nhA8w74gB7eDfaCP7SDc4G42RIYKgKKK
         edfN2q0Uz6BmnSW0/mVRzawKURpL+Qrp5E6MpJ8JovDd7WYzfcemLZ4j5ZHuaIebL4qD
         yzJ/hn447fORMlX5C8zpFBlJKZtfCpelyaP2vv6TPczGqFcIbo8XT1Nw5aZlgLVh++Lz
         IkXs3zSYe6jQim2028nkTL98PwJnLFAN9+84tIgrSfolHKTHOm40nuTrAv1eMAP9rxck
         GmatMpOfZWGjTBed9fIALGPsK7VK4KxriIhYbvHxgBOXW1X252LPGZIPNidMI2km4vOl
         YMGQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=rzbMP+fwwFODTcGlodh+kJLSTDxRo4LB7rDm8P0csRQ=;
        b=luDGlB6fu60ao8oCCGmGKlVJm3NTMLXJTtaQEstcHNxWAc/uyuFy3jCjpYSHS6GV1f
         sTtlO8Z6YRC7ytBqPsbzovM2vdDXs6d0RNptksrPCm/EfTzC/vL+T3ls3+NeasALQKCr
         OYEAIVDVUyjtyHelexNhO99TMU13eSoBcIzZVla8VRVJs4qY7CBzinIMc5urFruvtFiT
         SKFgWksvfNxXtHb6AwvoEuMD9YBOlGn4fB5vQ15XA0Bpzh+lTblnmCzAU2oYfr0tfZ7V
         aBT/2fj1ZWOHR5qPcg4IMtZb/QSuMPls1CIxu5eyrkBbgKkb/tzPDwJUvbNeRweV7XVR
         q/1Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="gsNR/Cpm";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=rzbMP+fwwFODTcGlodh+kJLSTDxRo4LB7rDm8P0csRQ=;
        b=tUNBeSFsT83Q7raOCpRgkrGD6HcjSe1vIFn0SvqV3jwEX4kDQ1oGnqTGC+cKMGez82
         IwDOHo7xaMezxouj/wC1k4y0q5wx0A5ogWKv8QqUyw39scjZZue2iTicbLuK6YIG78jR
         SpVhjjs6CXxw+yxQmzldTNEcAgfKRpHZQTO5lJuX44u6OQTtPYjmw/TW+Uk6J1cOLUdJ
         Ff0m9eJ/0oIV0Cfjfl84OoP85o6ZdsuH4/IG/zV9smV98OcYo21Edln7lL5jiNlY+arz
         HAcb6iJ00WSaRrpLO/oJbE53cMbq8Y1QLI7uJYL9jiMZQg9f5oGnug3pTER3eYlOLJob
         YMoA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=rzbMP+fwwFODTcGlodh+kJLSTDxRo4LB7rDm8P0csRQ=;
        b=tZ0gRl2f46y1GqcTP1zdniptDfdWCAe2pe3VPRsxPdMBl2GHdoXRXMlA9pRqnm0HxS
         JRd2TjbZ3kHxD1g8LnLgUYpo98HrOwez57AF0wcdTiKcT1VUiYfXvm2OwYwZtl2Vmpyo
         Zuh2lAe//Xl1/Yiz5Eo366/EhmK7HW/Urp5I4oZMNPIQfpo5IKXAhe0tA6IqmAo+YCkD
         bwCWessB0ovwj9Mk0AfwuddhrEYLDwJRT2Vj8bfpEKJtXP6Ao/HZWmADWlXOYZdJYsMx
         MZmLauyz4bXtWrMpzHx9w2MjQew599B+3OX6odh+kvIIOC9c9/75kRKkgKpZUPKxSgdp
         oS3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=rzbMP+fwwFODTcGlodh+kJLSTDxRo4LB7rDm8P0csRQ=;
        b=VgpmbuUPOTKEUgRmbM7/JhqAevOVVDfWabpDmXivscTSrqEUkiIRh14ahIFZ4gZqpe
         x9OnItfNlIUPHDeEzElcfOclZmLZEW1j8TDD6unPg7wrCsvbPjKbxTBDK9/dY56Y5f1l
         REcZOZIUAmhrvddeSe71H44311Z2G/JHHsys68MkIiutiB98Pk5eoi5xidAhnBnaC3OV
         JnSn8ogvBqK5k1+wVcEJ4PihXZQ581QYZuTvVIfvErFAhvFrDKeES+rIHbHeSvV1LLm/
         4vbECuCKVl6QmC3QNDkQf4qrGOoScriT8rBwi7eNEzbFevAtangPMTehnvOmKcTDTaQQ
         yESQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532zumUHzCBGEIEJCNdvLHRxEMJvc03QgkIgcvBmxFw47Vha11i4
	kBmaVFH1LdKRvwFFXCDSnIw=
X-Google-Smtp-Source: ABdhPJxB9cXtKuNRifxFKM0TXv8AZ1QXKXAXzzIwRPVPhGiAzvAbiDjYQuiQxkPJ/qODkOD+/NFPlw==
X-Received: by 2002:a63:6585:: with SMTP id z127mr20575101pgb.210.1605928453104;
        Fri, 20 Nov 2020 19:14:13 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:b187:: with SMTP id s7ls3997259plr.3.gmail; Fri, 20
 Nov 2020 19:14:12 -0800 (PST)
X-Received: by 2002:a17:90a:2e10:: with SMTP id q16mr13962460pjd.183.1605928452512;
        Fri, 20 Nov 2020 19:14:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605928452; cv=none;
        d=google.com; s=arc-20160816;
        b=EKOK0YRE7dBwmokgszc7qFVsf6EN5Y/bQXusV5ivzW5MTt7XUCGgZqxGuG/fhHFkF9
         BQr/Z434u227Ts3FoC8ImP4T6G8K6A9rjZjrBJwvafnTSTulYdQTqKJYg/Qs58IPSuH0
         PpKXkoYv+ePzaSz+X9u5Kg6X4Oz//mfRuYznA2NtyzmaKPUlViPVAOcfNJL1ACoD8Mdm
         1OTBRdNdTBMv0rhwgsxcrWcEQjncCYbywKbmephbigRTm0XxvWLlWRx1TBXsPPk658pA
         njUoFQ7Ve31yYT7qlGWmcRFmA6fRGa2oUSXQ4yLrmasJ5Ncs2mtNuYb8CyFtLJABKQ9T
         LpoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=MnceUBKO5CKDULZmr15ARJRXunPRBIoWz0MuHJiULrg=;
        b=rUDw3oeNwqIHfC1nqpiIVw2PSJKQ8Zya5X/Y4COvvh/fMYtky/qDYTGjTC4fRLFZFI
         9mErwEZRlfcJxQHy4PNqnYISYwkop0gbmcKdXi/2u2jrJ+muePKsUpjzzTlN0PpxhJzm
         egyhXs2wwfiKwBayJB8p2GQTYniYgbsfOL6J7Ud2sogT3pcKLNq6v0VS42QskY67B6xH
         YuHWDj/3p18UOy/lZxfUkG4S2EM7XxdKYAGBnsXHPEOK3csPOHNKlDfEF/LS69/7VL4I
         9/tP63fOnWPuPirH+tEiY38cxvnW2vBHEiTbbBNi8xqupqM7yxlFmbkyXLpYO2JNAEQU
         5D1Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="gsNR/Cpm";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qt1-x842.google.com (mail-qt1-x842.google.com. [2607:f8b0:4864:20::842])
        by gmr-mx.google.com with ESMTPS id 80si394482pga.5.2020.11.20.19.14.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Nov 2020 19:14:12 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) client-ip=2607:f8b0:4864:20::842;
Received: by mail-qt1-x842.google.com with SMTP id 7so8777259qtp.1
        for <clang-built-linux@googlegroups.com>; Fri, 20 Nov 2020 19:14:12 -0800 (PST)
X-Received: by 2002:a05:622a:1cd:: with SMTP id t13mr19064421qtw.39.1605928451613;
        Fri, 20 Nov 2020 19:14:11 -0800 (PST)
Received: from ubuntu-m3-large-x86 ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id o9sm3406683qte.35.2020.11.20.19.14.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Nov 2020 19:14:10 -0800 (PST)
Date: Fri, 20 Nov 2020 20:14:09 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Ard Biesheuvel <ardb@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Steven Rostedt <rostedt@goodmis.org>, Will Deacon <will@kernel.org>,
	Josh Poimboeuf <jpoimboe@redhat.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Kees Cook <keescook@chromium.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Kernel Hardening <kernel-hardening@lists.openwall.com>,
	linux-arch <linux-arch@vger.kernel.org>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	LKML <linux-kernel@vger.kernel.org>,
	PCI <linux-pci@vger.kernel.org>
Subject: Re: [PATCH v7 00/17] Add support for Clang LTO
Message-ID: <20201121031409.GA2282710@ubuntu-m3-large-x86>
References: <20201118220731.925424-1-samitolvanen@google.com>
 <CAKwvOd=5PhCTZ-yHr08gPYNEsGEjZa=rDY0-unhkhofjXhqwLQ@mail.gmail.com>
 <CAMj1kXEVzDi5=uteUAzG5E=j+aTCHEbMxwDfor-s=DthpREpyw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAMj1kXEVzDi5=uteUAzG5E=j+aTCHEbMxwDfor-s=DthpREpyw@mail.gmail.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="gsNR/Cpm";       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::842 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Fri, Nov 20, 2020 at 11:29:51AM +0100, Ard Biesheuvel wrote:
> On Thu, 19 Nov 2020 at 00:42, Nick Desaulniers <ndesaulniers@google.com> wrote:
> >
> > On Wed, Nov 18, 2020 at 2:07 PM Sami Tolvanen <samitolvanen@google.com> wrote:
> > >
> > > This patch series adds support for building the kernel with Clang's
> > > Link Time Optimization (LTO). In addition to performance, the primary
> > > motivation for LTO is to allow Clang's Control-Flow Integrity (CFI) to
> > > be used in the kernel. Google has shipped millions of Pixel devices
> > > running three major kernel versions with LTO+CFI since 2018.
> > >
> > > Most of the patches are build system changes for handling LLVM bitcode,
> > > which Clang produces with LTO instead of ELF object files, postponing
> > > ELF processing until a later stage, and ensuring initcall ordering.
> > >
> > > Note that v7 brings back arm64 support as Will has now staged the
> > > prerequisite memory ordering patches [1], and drops x86_64 while we work
> > > on fixing the remaining objtool warnings [2].
> > >
> > > [1] https://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git/log/?h=for-next/lto
> > > [2] https://lore.kernel.org/lkml/20201114004911.aip52eimk6c2uxd4@treble/
> > >
> > > You can also pull this series from
> > >
> > >   https://github.com/samitolvanen/linux.git lto-v7
> >
> > Thanks for continuing to drive this series Sami.  For the series,
> >
> > Tested-by: Nick Desaulniers <ndesaulniers@google.com>
> >
> > I did virtualized boot tests with the series applied to aarch64
> > defconfig without CONFIG_LTO, with CONFIG_LTO_CLANG, and a third time
> > with CONFIG_THINLTO.  If you make changes to the series in follow ups,
> > please drop my tested by tag from the modified patches and I'll help
> > re-test.  Some minor feedback on the Kconfig change, but I'll post it
> > off of that patch.
> >
> 
> When you say 'virtualized" do you mean QEMU on x86? Or actual
> virtualization on an AArch64 KVM host?
> 
> The distinction is important here, given the potential impact of LTO
> on things that QEMU simply does not model when it runs in TCG mode on
> a foreign host architecture.

I have booted this series on my Raspberry Pi 4 (ARCH=arm64 defconfig).

$ uname -r
5.10.0-rc4-00108-g830200082c74

$ zgrep LTO /proc/config.gz
CONFIG_LTO=y
CONFIG_ARCH_SUPPORTS_LTO_CLANG=y
CONFIG_ARCH_SUPPORTS_THINLTO=y
CONFIG_THINLTO=y
# CONFIG_LTO_NONE is not set
CONFIG_LTO_CLANG=y
# CONFIG_HID_WALTOP is not set

and I have taken that same kernel and booted it under QEMU with
'-enable-kvm' without any visible issues.

I have tested four combinations:

clang 12 @ f9f0a4046e11c2b4c130640f343e3b2b5db08c1:
    * CONFIG_THINLTO=y
    * CONFIG_THINLTO=n

clang 11.0.0
    * CONFIG_THINLTO=y
    * CONFIG_THINLTO=n

Tested-by: Nathan Chancellor <natechancellor@gmail.com>

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201121031409.GA2282710%40ubuntu-m3-large-x86.
