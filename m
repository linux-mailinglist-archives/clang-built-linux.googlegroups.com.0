Return-Path: <clang-built-linux+bncBDYJPJO25UGBBWVYZ73QKGQEBVYVPCA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93a.google.com (mail-ua1-x93a.google.com [IPv6:2607:f8b0:4864:20::93a])
	by mail.lfdr.de (Postfix) with ESMTPS id 86E812096E0
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Jun 2020 01:06:03 +0200 (CEST)
Received: by mail-ua1-x93a.google.com with SMTP id b6sf350260uap.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 16:06:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593039962; cv=pass;
        d=google.com; s=arc-20160816;
        b=QbV9vdMzKDse3BqUVaWt00HBZs9CCD8tppkhAkEFGhIPLwGjQOiB6v2vJ13finEwNI
         DdYpuiVmmJlQIZwjSZsd5BHCLTyCIgqBwooTBGkK2gWuD7oVKH75jr1TCwXJOG2wqaiL
         bctMtmBVP2M+qQYjI524gUQT4uGxGc3JDIFk6ZoHB+49wtWhVI1nSgmyyHUwcbcrR2U0
         YMgCPTldDP28BBaYnRqYKfqAEx9EQcoaRSIbUvApbdHnC76Bo/HDxafC+iI64B7wppv8
         ufPQbAoYyXdCXVXtM2HDkDK42f4YcicAhNqomEst5jvxEhRJcoOwcrs/LN8FQNc+W2ht
         DJjg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=nx/3eOBis4y4JA3WWzQ3fWDt46pOKcOMKTYeSdNfOg4=;
        b=oDFA4yLqTaxAwVxy6ZRVf9qXUhe1jRnkEjUKqBKZEDP/6PHculKzoPpxjAaqQ5ZwsW
         4FEhwLNXYDSW2zp3L4VE8cgPmKtXO1Q31PE/it2XRe15UUOVFbr9jW70TVbkJubXGJIf
         nwG7sfnI9bW1q9AIpHWMVK9GOu7fVF70nHXlFqGtBtlAfV73HK1rRlVdR+QPE3RKTDLC
         wuwXnV978CjlMQBmTUc8Re7VS8UcNisyeEQyuFio7VfsBNkZnr5rPU1X1kPEjpaNIZJ0
         DNTHYvkk6Wbzi7Zf5jMShNOgggRpMXHEHOmqboT+llaqR5B39vxwO+RRLGiAxR/XAAwm
         CT5w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="v4eMG/3r";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nx/3eOBis4y4JA3WWzQ3fWDt46pOKcOMKTYeSdNfOg4=;
        b=OOZwQYk7x/kvGMyiOFEvf8ZUVAnp3QLL4WqPA8rKy4c777MKIQhCbcoDPk7RN9ghHM
         vyQNLaCzGuRVinP+sfBV5iwra52yS6SsVcVJhxl2Bm/lNoo9J3H5oHSNf1XF5bDGDYN/
         GhVWraKwV7h9x4/Nrfac5FEYwTR1M7Abm6MvoriuBxEMsZA7EuAQDvSsLNY4wiMUnUbt
         YJsTw+6oqKwWN232amBHdK5G5XUEq+ty5vMJfZjtrT3JtGJu76TKU5dtHQB+tbBVtZxs
         m38sfDzc59+BMbcM0oFJq0uhG15/Sb6qdp37TQRAyWtpyTNMEfeftZUdke5Ch+QFG05k
         Aqew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nx/3eOBis4y4JA3WWzQ3fWDt46pOKcOMKTYeSdNfOg4=;
        b=JO4eneHOptEpln3tym7bi2HYqtsh2nJaGpQ6bcgVECxTlXfRH0I0GZJHtqlxeeZQW/
         S6rjtJKOtoHXgjMsdeehB8y5UjfIZyerHeeitLH4hs6w96VCh/Q86HZGOJCjcyyFOhCc
         ZlH0ITGCFmtMtzQn2ySJ6eXFxbAu93prwIf0bfMWXUeuHpLKdIJkM/eqqe/Fwc/6ih1k
         /4o4YJK9utIjC7yzoMks3YHTbojcxVBYW6WMrVMy6r6hlZPPn2m315a8kjnrqtYr53rz
         caVXMIRxQlutSwKWvZjDbhHviX721DvzPNWf3KHzoAmoB4+qShOBy8hFrfvSD14uhrjP
         kNww==
X-Gm-Message-State: AOAM530Kd3RHCbFo7sz6VxxRSBdsxzmqjsZF2po7xSQcZ38kNS18EIWR
	mj2zhmrJLZcmTOGkK6EnreQ=
X-Google-Smtp-Source: ABdhPJzHkyKLEKmIv1mkVNzT1G23gKx1rtFGhx4vMARHU85UEfvK5ez8ciA53bnOKUITUpzXmt6jsA==
X-Received: by 2002:a67:7c94:: with SMTP id x142mr7243845vsc.64.1593039962436;
        Wed, 24 Jun 2020 16:06:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:1c01:: with SMTP id c1ls186069vkc.7.gmail; Wed, 24 Jun
 2020 16:06:02 -0700 (PDT)
X-Received: by 2002:a1f:270c:: with SMTP id n12mr15061348vkn.65.1593039962151;
        Wed, 24 Jun 2020 16:06:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593039962; cv=none;
        d=google.com; s=arc-20160816;
        b=SD6RC+Hky5OY8XycnLqR6XS1iucrEf6iX8nRrRrqo4UVB2JVIWXNXWsrv55hkTqMxV
         xU+wPg71V7zyTwxcffqRUgRLElbws43nlR7X6mOPzhanphsbBKfcC13ggEoWmWkQk1O4
         Z5nOT7mDjwpSvTTSHMR8/R5qEPypv7QLkbgm4FQvDHofGT+4KnWXAJ2zw7Ie7+dNHtvR
         xWiV4IGPtNj4MD2RQJau2DLfWKzQ6g/aR3it3hnmh97cyoww59mItY97M1n+pAtG3Kt6
         nUhzlIE1Y6alPn6vXfUZGQWpVSj8j0/V4NuFrD/cbwgpcBT36hXZTai/2PkNMWwFZG7C
         KJyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=shst53ZJE1d+vIhz2clceIGi2VB/auhmYdgL62EAsJA=;
        b=epLqjm72Ln3RwwJEfaqjmqy2fpGUT54FNAcVQvfFpvMaG6bcRNtcnmTmwzVq1fjshy
         RW8RPQPcb+m7y6f0VM8/n4/L/lGrNoD1gEd/RvBsp/J56lCFzBC3+DJCEO+TDnasiY+d
         06IKVd3X8SM81tl9BTgznq6B2p6ISh4R2BaK+w1c0YNBPM0238OdvSJccTEC/+bXxYf8
         qTuCQPyDgd3ygFzxtjsPhg3SfvUJKoxrePKaKcCFAmWhyvHVyWNNxhaTVPxBMzuq3pBf
         DhZfL4J8EWYx1Fp7xh9xAClMMIQUVpIAq7NliWfgXmBZprcp6mOFGxpKSxsokkaS7Lfk
         zblQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="v4eMG/3r";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com. [2607:f8b0:4864:20::1043])
        by gmr-mx.google.com with ESMTPS id t63si130473vkt.2.2020.06.24.16.06.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Jun 2020 16:06:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) client-ip=2607:f8b0:4864:20::1043;
Received: by mail-pj1-x1043.google.com with SMTP id b92so1989532pjc.4
        for <clang-built-linux@googlegroups.com>; Wed, 24 Jun 2020 16:06:02 -0700 (PDT)
X-Received: by 2002:a17:902:fe8b:: with SMTP id x11mr30115455plm.179.1593039960944;
 Wed, 24 Jun 2020 16:06:00 -0700 (PDT)
MIME-Version: 1.0
References: <20200624203200.78870-1-samitolvanen@google.com>
 <20200624203200.78870-18-samitolvanen@google.com> <CAKwvOdnEbCfYZ9o=OF51oswyqDvN4iP-9syWUDhxfueq4q0xcw@mail.gmail.com>
 <20200624215231.GC120457@google.com>
In-Reply-To: <20200624215231.GC120457@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 24 Jun 2020 16:05:48 -0700
Message-ID: <CAKwvOdnWfhU7n0VfoydC7epJPrj+ASZzyNRpBCNuvT_5E+=FcQ@mail.gmail.com>
Subject: Re: [PATCH 17/22] arm64: vdso: disable LTO
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Kees Cook <keescook@chromium.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	linux-arch <linux-arch@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	linux-pci@vger.kernel.org, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="v4eMG/3r";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043
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

On Wed, Jun 24, 2020 at 2:52 PM Sami Tolvanen <samitolvanen@google.com> wrote:
>
> On Wed, Jun 24, 2020 at 01:58:57PM -0700, 'Nick Desaulniers' via Clang Built Linux wrote:
> > On Wed, Jun 24, 2020 at 1:33 PM Sami Tolvanen <samitolvanen@google.com> wrote:
> > >
> > > Filter out CC_FLAGS_LTO for the vDSO.
> >
> > Just curious about this patch (and the following one for x86's vdso),
> > do you happen to recall specifically what the issues with the vdso's
> > are?
>
> I recall the compiler optimizing away functions at some point, but as
> LTO is not really needed in the vDSO, it's just easiest to disable it
> there.

Sounds fishy; with extern linkage then I would think it's not safe to
eliminate functions.  Probably unnecessary for the initial
implementation, and something we can follow up on, but always good to
have an answer to the inevitable question "why?" in the commit
message.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnWfhU7n0VfoydC7epJPrj%2BASZzyNRpBCNuvT_5E%2B%3DFcQ%40mail.gmail.com.
