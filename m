Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB36GT77AKGQE4V7HXCQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23f.google.com (mail-oi1-x23f.google.com [IPv6:2607:f8b0:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id 17C482CC601
	for <lists+clang-built-linux@lfdr.de>; Wed,  2 Dec 2020 19:56:49 +0100 (CET)
Received: by mail-oi1-x23f.google.com with SMTP id n203sf1525083oif.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Dec 2020 10:56:49 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606935408; cv=pass;
        d=google.com; s=arc-20160816;
        b=FE6pdvaaVPusaojGq2fNFBho68duRqYNnZZxXjsnKLN23Vc4s0qbxTVTdK+cNTdkUM
         1O63DUQLDmF9+g4PPIAeIrch2ULg+TQEaYHzCx429CQKgTODP7leTXK2sdCVzTowZ66t
         /yer8/s2CG8IuKAbOvidya49F0u0UXGFzrJfs5eO8ujZvuPsfRrS3TzkGJlzgExEDSev
         IrgvX4Wo5zdNy080xm7hxM1uQ9si5oO3RjwoZ6jGZ9EGKRbvJRhzz7Kh2rDkBLxo90HO
         3dehG+ZTAqh4v6UmnJWlZMT992I2HD1HZyL/eEV4rHFnUZUFunJ56iJ6K5IyVVNoLF9+
         YgHA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=EvQvIl4XoHw/Js3J1ts3RW3lGLKO2DquSsG6eh4+OPU=;
        b=JnZXHjDFGn/xAlcb+k1fp7fhbJ0dCR2ZGh9psQmTehQkYT5VPHVFKiN4Ag5uY5Iqw3
         N4RGQRqk/z21d1sD8CyoAGGLfXfShf0FfrF4UwKH+qqZa++pJbjkU5h6uScD4Yn+c/iU
         GLLYc+aBE1Wn2mXPxD/LcR7A8H+3z1VgG64u7lfHRX8kBeHxjZEwRHOK0NOgXSpD89zc
         NPFz/p9OxILNBSrKgMMiZ7RUEqVieAWH73BaGoZnxMvvw/k3e77+txen1fe8JoFM3Kwv
         ae57CkLZlKImv55vEj6yCtT4UNBz6KLVVjOfVmvgSiydiqxodNcikTqduW5Ir6RrydXo
         ysgw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Cu7Xt7Qn;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=EvQvIl4XoHw/Js3J1ts3RW3lGLKO2DquSsG6eh4+OPU=;
        b=LjiAD4ftU+VHkbdyyMGzN9Az8io8q33a7mUR3yfAEKzRCgriqO6+0jLJNRSeQgxI+j
         SAhzx+2f+xc2mIgP2yYa1U6/5Ar5ExZS9ruyomVr3PkdzlQ801oImKo9SqanLzDSVzDN
         vA3I2zRytSF+rthtbgn/39WiEh0GVfs+d8yKfd10Q3cOW+9LQKpXvSHzQRJqK1q685Al
         Obgf3PH8mSnH9WcM1qEpsaU/s2dTU3cE64YrCi6e/vGApAv4AIYBESCxlS7cB4FxSKij
         4RX9UrD3b7/T9Doqc4kUKaT12VwNCx1K0+LuHQxqPHJ79DZmx5xfI3V651pF5i+E/pGH
         NZNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=EvQvIl4XoHw/Js3J1ts3RW3lGLKO2DquSsG6eh4+OPU=;
        b=eodbLkSpelkqop4WudB86jDwTyQRww6zKrGhaf9wCVk3fiPo/10SDIjlcHR1wXk0B6
         MicUc55F+21MEUtzBaVKno06VR763Dn1bgQrM1XqWnGS5gE1vBuXRPurIIAChvdb8UJ6
         pBhLS+bJVgR1aC6E5PC5d0/IWknVW2R7bnpb6uwpHqHYuMtwfo6oOVfuGOXNZ8k+KWaK
         8FmVoCtOxvhrdku2Gy+Wt0lsH9o5IXqmTPQQ8ozqO+NM2pqiHjqcLseV+rSmruM4Wl4l
         xH2f8QrO05tH6gUhMExHgUvTXApUtw4N8CaFUItN4KF6+vXdmDSmlYz3gOoHbDXavNCq
         WYgA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532eig5bHCHlbjFRbuqSMymF1Clcru4oX9v56S4XIIjiAaSNM3JW
	WQnTSSbuIc6+EGOljrL8loM=
X-Google-Smtp-Source: ABdhPJzgZflKUIyv55/LmHQJFwb8oQMWnCKYLv4CZLug4DOcJD3AebK8pBEXnl7R/zIq3cdxFWoWAg==
X-Received: by 2002:aca:510c:: with SMTP id f12mr2667755oib.72.1606935408004;
        Wed, 02 Dec 2020 10:56:48 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1f1b:: with SMTP id u27ls703279otg.5.gmail; Wed, 02
 Dec 2020 10:56:47 -0800 (PST)
X-Received: by 2002:a9d:3782:: with SMTP id x2mr2934112otb.307.1606935407622;
        Wed, 02 Dec 2020 10:56:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606935407; cv=none;
        d=google.com; s=arc-20160816;
        b=qF4AIPKTNtzYSRaFnXsQZMqAmaWGcc2Vjav2FrqZIVxZLvdqLGWj1bjp/kARm06aOp
         kEzelZPwEg6lRCaSz3zLKCe/krl3HGeUCyjX5bptBnJa2BB+4xtjbBTf8yjef8IMKdE5
         w2QSA0ty5jBI7spJPEuZpFJ7dOy4NmtcEwNkXUb88GKExjqm1RCrYKtoxUkceHEoZiym
         T+2buVY2UtnVOw8KBj49Wtj6moWmNJEW5SoYG7lXwu3cAqc8MHFPSexKvbG5X6kCAoQ3
         mcxN78Bep1mvY0ee3PLadoJ5//nl/Px512n49cGGYLtPbgR3UaxhfY0kSCohwTTQi2r6
         +i2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=2df0cgPfG2SAK1g7NT0O8N+0jOgAdMPH5rFcEcsmtzM=;
        b=SOLxsJajxTg7xT3cMhqUqSUzQx5JsYOPzj8ivn/SOn9LB6QaEWLYxKiILtm1uyY4oI
         HLHwZWlReEbTyakqA1Rc85X4qnS2z29o3CMb6iHbnElT3vsBIsBl6+KgQ90rGjUwwYFC
         9CzxPZ6Tcw81qO0F0qCbJAbJmHJso11zZLNhnchYaEe2xL6ZOEXzmwRhQDmMlnwQlDMz
         x3WdvWbdPNKv8tLuUZ4uDhYqpltGEU2TsKUMYa7si/5cnr+vNBPOo7hSYjBg50eRGfzj
         EdggSjImBA785cYCmRKfHFBzVJ9AMVm6DfVZNMjjCuEXuEoxNJEvcP8PHZEtUY4fOPHt
         REyQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Cu7Xt7Qn;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id k134si208528oib.5.2020.12.02.10.56.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Dec 2020 10:56:47 -0800 (PST)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id o5so1641309pgm.10
        for <clang-built-linux@googlegroups.com>; Wed, 02 Dec 2020 10:56:47 -0800 (PST)
X-Received: by 2002:a63:f308:: with SMTP id l8mr1179038pgh.68.1606935406993;
        Wed, 02 Dec 2020 10:56:46 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id u3sm512394pfu.47.2020.12.02.10.56.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Dec 2020 10:56:45 -0800 (PST)
Date: Wed, 2 Dec 2020 10:56:44 -0800
From: Kees Cook <keescook@chromium.org>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Michal Marek <michal.lkml@markovi.net>,
	Russell King <linux@armlinux.org.uk>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	Michael Ellerman <mpe@ellerman.id.au>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	LKML <linux-kernel@vger.kernel.org>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	"kernelci . org bot" <bot@kernelci.org>,
	Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v2 2/2] kbuild: Disable CONFIG_LD_ORPHAN_WARN for ld.lld
 10.0.1
Message-ID: <202012021056.3EA0BBFDD@keescook>
References: <20201113195553.1487659-1-natechancellor@gmail.com>
 <20201119204656.3261686-2-natechancellor@gmail.com>
 <CAKwvOdkPgwL8H4EGF6=-VuxTdmxA8JHhGbLHVYcLJj9MmAvW=g@mail.gmail.com>
 <202011241421.A2F3062A70@keescook>
 <CAK7LNAR=_+1K7EtpvGzgyM+ans-iNOT0PBXdLRApnsyAzakQ3w@mail.gmail.com>
 <202012011255.9D677ED3@keescook>
 <CAK7LNAQGqcCBBFbKwe_eTuBqtNwDn_q8c0nPBJVsEoHP6F+aKA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAK7LNAQGqcCBBFbKwe_eTuBqtNwDn_q8c0nPBJVsEoHP6F+aKA@mail.gmail.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=Cu7Xt7Qn;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::542
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

On Wed, Dec 02, 2020 at 11:37:38AM +0900, Masahiro Yamada wrote:
> On Wed, Dec 2, 2020 at 5:56 AM Kees Cook <keescook@chromium.org> wrote:
> >
> > On Tue, Dec 01, 2020 at 10:31:37PM +0900, Masahiro Yamada wrote:
> > > On Wed, Nov 25, 2020 at 7:22 AM Kees Cook <keescook@chromium.org> wrote:
> > > >
> > > > On Thu, Nov 19, 2020 at 01:13:27PM -0800, Nick Desaulniers wrote:
> > > > > On Thu, Nov 19, 2020 at 12:57 PM Nathan Chancellor
> > > > > <natechancellor@gmail.com> wrote:
> > > > > >
> > > > > > ld.lld 10.0.1 spews a bunch of various warnings about .rela sections,
> > > > > > along with a few others. Newer versions of ld.lld do not have these
> > > > > > warnings. As a result, do not add '--orphan-handling=warn' to
> > > > > > LDFLAGS_vmlinux if ld.lld's version is not new enough.
> > > > > >
> > > > > > Link: https://github.com/ClangBuiltLinux/linux/issues/1187
> > > > > > Link: https://github.com/ClangBuiltLinux/linux/issues/1193
> > > > > > Reported-by: Arvind Sankar <nivedita@alum.mit.edu>
> > > > > > Reported-by: kernelci.org bot <bot@kernelci.org>
> > > > > > Reported-by: Mark Brown <broonie@kernel.org>
> > > > > > Reviewed-by: Kees Cook <keescook@chromium.org>
> > > > > > Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> > > > >
> > > > > Thanks for the additions in v2.
> > > > > Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
> > > >
> > > > I'm going to carry this for a few days in -next, and if no one screams,
> > > > ask Linus to pull it for v5.10-rc6.
> > > >
> > > > Thanks!
> > > >
> > > > --
> > > > Kees Cook
> > >
> > >
> > > Sorry for the delay.
> > > Applied to linux-kbuild.
> >
> > Great, thanks!
> >
> > > But, I already see this in linux-next.
> > > Please let me know if I should drop it from my tree.
> >
> > My intention was to get this to Linus this week. Do you want to do that
> > yourself, or Ack the patches in my tree and I'll send it?
> 
> I will send a kbuild pull request myself this week.

Okay, thanks! I've removed it from my -next tree now.

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202012021056.3EA0BBFDD%40keescook.
