Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBZELVT2AKGQEH6XPCZQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x337.google.com (mail-wm1-x337.google.com [IPv6:2a00:1450:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id 633AB19F39B
	for <lists+clang-built-linux@lfdr.de>; Mon,  6 Apr 2020 12:35:17 +0200 (CEST)
Received: by mail-wm1-x337.google.com with SMTP id p18sf4737034wmk.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 06 Apr 2020 03:35:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586169317; cv=pass;
        d=google.com; s=arc-20160816;
        b=vL0XeNMX9NCp3LnJ3Ru9u9YDH2J+3Tfaa5kdbnqAi+fYmtuvfR+LepQABPBTM6fSjC
         ex9nPmB7HBAK2RkSBmbB5T2er9lF14TwPP5P8B9XOlqRFpptxLL91Gdpb+tgSXcUvDnU
         pQ8f0FR6XBJHeKfxdjkrkIQ9RU5vabVqms4OLTk7Nf0+c2zO0oSnaRbRT+qpsBdE+pvp
         poVTPOhzVA+CIvgyaGzLe23a71WCKTwfylAhyFQenuF2CZVrfwUC8KKtdwn2sc4+/+wC
         7G6s970fo0zrsGD0xz7G+nH/RFwa5Fx8+AmF0hADJv+h5O7qAS1paMtoZZwD+jy06e6b
         7LOA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=lxb5s1VmXDSqozZvL5Vl5a79qr4YKew4BQoVX/RbW4g=;
        b=m1td9qAQUN/jyIePiwBOtI1D19bQ0z86z6nUWkwzis4gJaXldL6u8tjocXQMK//k8s
         XNLH7dlwnYIdP31rJy/C0jkgW57IA3MEiyqbfhQPGaP5Wttq3AGCbDVXsbr40Xz6yhJL
         5GbjT/+r+tQvpkbdg+W/pKgrS8ad7iZNFgZP9VFjTUKPcIY8ZYJ0TP8fxQ1WG663K5Du
         qWvDFMEQ3r/3frl4Er/NSJo0zbXzh9YOBLKnX6ckdYC4BgMA8pH1C12BWhRrFeLEOMt8
         gR+/d98/yRbm/0FVntMIz6Qzzfys4pl+a3WhsFv/7m48LG8GS6m3xUoI0mu0TDDuB8Xl
         /lcQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KkHcB8mI;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=lxb5s1VmXDSqozZvL5Vl5a79qr4YKew4BQoVX/RbW4g=;
        b=tlO0ytya9rSIikHL12QXAM+F/2fJSQdoEGF0EO8ozyRl3shMIX1UqczlDP5Lm6Ux8F
         It7mQC95hZDZ+/DvzUoqzcOw1C69ARxwiTak/lx3CKfxobbV5CA4+7wpCpqZdDeFclpr
         8K9dny1H9LbWOnxnvs3777Ew00BseVTXHkmWbfWImCZXxmZ7jBRBQ/VovyWREXNWe4Ch
         ke1+SK9/bDDnbL2CvYRwcMER8ptBDRg0Cv3e22BIQMxx2nRPabpf5YrA3IQFmSQTqBCe
         zGXbfuGQ6ETO6oeHRhCi9DXELcuNizoM1OT7ElfhFXqRR0eSKG2EVWJlspyb7OWLR88S
         J9Bg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lxb5s1VmXDSqozZvL5Vl5a79qr4YKew4BQoVX/RbW4g=;
        b=AIe83p65bP58WTG/hx9oFSgKSXPFQyRpMQduqKAF5qtVW1Fg5RLe72YY9PxAVMvKQl
         eHZwldlYhmIjw9trK2PRahyu/IbJU/uk6J+/7ASSSEBUHVSriuQTqVcL2xduRT1Oi3LF
         Olck46ku/HAifR5AdHh+78orawCo1YT0+TgpskY0ggJ/tMPpkXdHAiWxHX5nfZ5yC7gZ
         YBE5qH62LHMkPLLl6fgOVhpXPnFnXnfG1wKzSa4NJgGyI1OFeZTsQwxHO02JcFvWbLDq
         BCWcnebZymfKUMQ7Rw7DhZhbI2n26lAaEM2kVvCf67Mr/vXG4zTqCEaB4J+0WPIKQfen
         HNJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lxb5s1VmXDSqozZvL5Vl5a79qr4YKew4BQoVX/RbW4g=;
        b=DgHm/QKC1J7kayVhXsCyjiDgKw1j5GRI/uxtzO52bFbMQtUfJp5axEvW3vGxtvF46k
         fwdu7A8gOdVsM5c7+1cfruSgwqpLFbLSVZbxvaNqXEuWjmxo5tgxivqMnsgvLkpV3vb0
         SKlqoiYO7cibWiyZD7ltoiH0Gyp3uK/L0LSVQ/maBYKq2+Q+jaVbKXcSErhv33tDQwwC
         lbgJeXWN4bc3kQHPohS9hDW/dk7rKC7yyDLuYeZlEReG4Q6k43sS5UAl3SCciJE8mAec
         8EteZ3rRbFBTYTivUT6bfl2fMqwjO1i29OPHXmYA6d2C5VprP1yguLARdYqS0C9e/Rh5
         RI6Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuaQFEE6DIaPk4EBtLkUDwdsUZQTtOsf9wvfmy985Tp2eKdD6fZv
	7Hkd6d9YOsYGmuHdnatt088=
X-Google-Smtp-Source: APiQypIiBSdUJp90Kui4nG5VOcY5j0mF6OenMj+p9dNJg4Gi66oAXsH7qevkoHkZ2+KJjXIvSka29A==
X-Received: by 2002:a1c:2c41:: with SMTP id s62mr21770405wms.188.1586169316928;
        Mon, 06 Apr 2020 03:35:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:f2cf:: with SMTP id d15ls6295934wrp.8.gmail; Mon, 06 Apr
 2020 03:35:16 -0700 (PDT)
X-Received: by 2002:adf:ec87:: with SMTP id z7mr2187255wrn.415.1586169316310;
        Mon, 06 Apr 2020 03:35:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586169316; cv=none;
        d=google.com; s=arc-20160816;
        b=OSMiXsoZo1lTX/Xw3U1rbOGFETNxJX0/5uzYP0Z8UI6HQLCi9jzcfgx3ntphVrskvI
         Dp+g84V5A2uTSDNhiQxDx554zEun81lUMvlcX2I0qadLBygZpr1rw50wIk0QCvUJKsbB
         LSalbMfwOnkUD+/oNHDNhGmdyGkEz5T4kQE4TDrxHYb8tYmYoYHvkqMTYixczfi3W7/Z
         vZp3Dshbn32PuSCPWviAhRRIlp51TEltpYov8YsZbx5MFU/8sXLDSn1Hb3y70noPM3ag
         za1yex72vDUDuS362ifb17XQLlmUpVRfi2KZl3YIrFPWt89Q3ZDn267keDNb0vhJhEHR
         ZBlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ll9SSeRS7TM8pDXinZRrkXHz1Y8CIP/AsFc3Eg3lKHU=;
        b=YRz8+ojNNGJjRT1Mwlz34ha1py5ikyCq4fHq/GlvINt2iSOp0IHgKYNu1EE/gSOi6t
         N4KNDnQbBhVHUfc9S0D002ADYxK/hSkwfeizUtvQomFk7FN6hH3uAVM7FnL2dx0AgR3/
         g8PxInBcaJxUgxHMj88+0C1KLenIFDH4oucajmiyibZU7dXv5USjIO/DSEaYFcSoPLyv
         R49GO+VGvtX6N5g+qUYRaF5RnMoX1xsIyuY0gwneNpNhdCiasvCY718PtpmO/DWgX5ab
         DCDAGGl57MJumEgdbILYDAdshxkoSOYBmLqvQWoqtltumTzbSiNq39i7Qa5hKhtIYHaM
         XAuA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KkHcB8mI;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com. [2a00:1450:4864:20::443])
        by gmr-mx.google.com with ESMTPS id v11si516820wrq.4.2020.04.06.03.35.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Apr 2020 03:35:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) client-ip=2a00:1450:4864:20::443;
Received: by mail-wr1-x443.google.com with SMTP id a25so16841562wrd.0
        for <clang-built-linux@googlegroups.com>; Mon, 06 Apr 2020 03:35:16 -0700 (PDT)
X-Received: by 2002:adf:b64f:: with SMTP id i15mr4196654wre.351.1586169315956;
 Mon, 06 Apr 2020 03:35:15 -0700 (PDT)
MIME-Version: 1.0
References: <202004020117.6E434C035@keescook> <CA+icZUW0R9LDGJ1YjJAB2oWkcEQxCO79xYmdVEoh=P8Fy_AL1A@mail.gmail.com>
 <CA+icZUVowLVpAxiWw=FJHfQ38KtU7AXXkVnw46D2XLM41-NCEA@mail.gmail.com> <CAK7LNAQ6ji3=2+7R1DL7eFveH7L7No6e3XkqfqgiH5QFyQj==A@mail.gmail.com>
In-Reply-To: <CAK7LNAQ6ji3=2+7R1DL7eFveH7L7No6e3XkqfqgiH5QFyQj==A@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Mon, 6 Apr 2020 12:35:35 +0200
Message-ID: <CA+icZUV3rhvmBv91KMKCgvGSvJUoWDVfaV+08eC-kTMdThRn6w@mail.gmail.com>
Subject: Re: [PATCH] kbuild: mkcompile_h: Include $LD version in /proc/version
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Kees Cook <keescook@chromium.org>, Michal Marek <michal.lkml@markovi.net>, 
	Thomas Gleixner <tglx@linutronix.de>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=KkHcB8mI;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::443
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

On Sun, Apr 5, 2020 at 3:56 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> On Sun, Apr 5, 2020 at 8:23 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> >
> > On Thu, Apr 2, 2020 at 4:24 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> > >
> > > On Thu, Apr 2, 2020 at 10:18 AM Kees Cook <keescook@chromium.org> wrote:
> > > >
> > > > When doing Clang builds of the kernel, it is possible to link with
> > > > either ld.bfd (binutils) or ld.lld (LLVM), but it is not possible to
> > > > discover this from a running kernel. Add the "$LD -v" output to
> > > > /proc/version.
> > > >
> > > > Signed-off-by: Kees Cook <keescook@chromium.org>
> > >
> >
> > Please feel free and add:
> >
> > Reviewed-by: Sedat Dilek <sedat.dilek@gmail.com>
> > Tested-by: Sedat Dilek <sedat.dilek@gmail.com>
>
>
> Thanks.
>
> I collected all Reviewed-by and Tested-by.
>

How to test scripts/mkcompile_h?

I did:

$ cd /path/to/linux

$ head -10 scripts/mkcompile_h
#!/bin/sh
# SPDX-License-Identifier: GPL-2.0

TARGET=$1
ARCH=$2
SMP=$3
PREEMPT=$4
PREEMPT_RT=$5
CC=$6
LD=$7

$ scripts/mkcompile_h include/generated/compile.h x86_64 SMP "" ""
clang-10 ld.lld-10
  UPD     include/generated/compile.h

$ cat include/generated/compile.h
/* This file is auto generated, version 1 */
/* SMP */
#define UTS_MACHINE "x86_64"
#define UTS_VERSION "#1 SMP Mon Apr 6 12:29:53 CEST 2020"
#define LINUX_COMPILE_BY "dileks"
#define LINUX_COMPILE_HOST "iniza"
#define LINUX_COMPILER "clang version 10.0.0-2, LLD 10.0.0"

This is with clang-10 and ld.lld-10 from Debian/unstable:

$ clang-10 -v
clang version 10.0.0-2
Target: x86_64-pc-linux-gnu
Thread model: posix
InstalledDir: /usr/bin
Found candidate GCC installation: /usr/bin/../lib/gcc/x86_64-linux-gnu/10
Found candidate GCC installation: /usr/bin/../lib/gcc/x86_64-linux-gnu/8
Found candidate GCC installation: /usr/bin/../lib/gcc/x86_64-linux-gnu/9
Found candidate GCC installation: /usr/lib/gcc/x86_64-linux-gnu/10
Found candidate GCC installation: /usr/lib/gcc/x86_64-linux-gnu/8
Found candidate GCC installation: /usr/lib/gcc/x86_64-linux-gnu/9
Selected GCC installation: /usr/bin/../lib/gcc/x86_64-linux-gnu/10
Candidate multilib: .;@m64
Candidate multilib: 32;@m32
Candidate multilib: x32;@mx32
Selected multilib: .;@m64

$ ld.lld-10 -v
LLD 10.0.0 (compatible with GNU linkers)

Thanks.

- sed@ -

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUV3rhvmBv91KMKCgvGSvJUoWDVfaV%2B08eC-kTMdThRn6w%40mail.gmail.com.
