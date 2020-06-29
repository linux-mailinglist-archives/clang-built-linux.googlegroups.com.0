Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBUUS5H3QKGQEVWMAJIQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd40.google.com (mail-io1-xd40.google.com [IPv6:2607:f8b0:4864:20::d40])
	by mail.lfdr.de (Postfix) with ESMTPS id 7820020D5F6
	for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jun 2020 22:04:35 +0200 (CEST)
Received: by mail-io1-xd40.google.com with SMTP id l13sf11682031ioj.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jun 2020 13:04:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593461074; cv=pass;
        d=google.com; s=arc-20160816;
        b=znF3P0whSl6/lAvSJMJ9b6LZjxfdnvuTWSl5Rwh8dkIa+vDarSyDdjzuDywiqna3b4
         tmo82sSzR/NCFDlgLJUH/wfb2bJ2bnc/pkFEr8ze2Ft+GarmJm9H5Yr128OTtZ+449Nw
         L2+O3Ej3Mn+/4OJcFyAIwSE7KMfCsgiC6cHQm56L8pj8M2Z3QgwY6A5mgkeNaOxuVNYJ
         0qyriM2+K+bW0XG3gR82dMqSROFsEu/mdzlWUUvZMNjMg79pE92jGcwKfhL9nMZB4xq0
         TbfQSts8ocfTXev37m3xHUAcnjp+82fmD0n32ZNfejgRmaZCCpdsVP9KysrOOd+J9Avq
         T7wQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=nBryIqhjPYeDQGy6DGx+zXbtq3e3ZJJ8r/EnYpcGGuY=;
        b=JXs+n0d5crEGnhp9i/1PE+L3u/RMinrK5/lCuJVPzfJrJRmt2BN2n8pADWEQM/VibK
         WrFq46WHavc1Wtv+Fezp/LjQhxx7CSEZqcMez1ZmqXD3gFHvc5gtrodeddGE7hcuBG1s
         XRKrL/S7GDY1C59qwTsJzdtFPypi/gx638Jq7Q98f5rL3gmt0V8xy2rsfhuwZyZqXRYB
         qklvKuaW98hpzRWXBgW5915u+H0ZgbSIynhjWn1mXZDIRskM3hS6V+FIPs1fd9s0x4vN
         yhVfihfM4HEVNUY0uRt9PTPqC+zwvgKlLxIIrI8yGnYi4RaYqD5pxv1lQ8Z05zB0mDHk
         9NhQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=iyegTPlb;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=nBryIqhjPYeDQGy6DGx+zXbtq3e3ZJJ8r/EnYpcGGuY=;
        b=HQGYruKHW0eeOT2jdJcea27RxdVjVkZdp7boqeaSes6Mg1fE4t9ZomzdA5s7gbI3BU
         YNGNT9PZvJ8jMBUQ9PtffC8qTApO0m9XxopQ8LDSylA3XdBhYujQucUb837ZrjFdNghN
         yoxpMCKrFs5beGk8op7WDFNo9dwbr9cd9Aphc1T/XIFkvq6SsGGHlEroCSE8waozNcDK
         8j6lTV8Nc1BeDwdgVR/fvvXUFdDUzjxoHzZPyf7DZYxxB7pIcPt75BxnW8vE5CPxWEc5
         TaE7R9UC4i+1aAF2KKgMFmxjL/mSA5foJErIoe7waKYMQG2vcyuxzqmqdZQ6lEUUjUsB
         eDbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=nBryIqhjPYeDQGy6DGx+zXbtq3e3ZJJ8r/EnYpcGGuY=;
        b=tW58+1Cu+/iV3S0Jy8YN45IelJPyCFM43OvUMJxgMPLWnmJJCrWSXqvYg8O4f+/J0g
         nI5/VXuCv6FTa5gdgDIf2pek1PXsdvjqI9iP26Ad0nl+nBhFNoWmGdJhCmW/pzwFGCpY
         eHSorhk3VMeME/uZRw23OEFvwUATJe3gHo5RHn3ckfR5fF4TLEN4wBnyBTK5cFhBPGSK
         pqu/wgUjBhJOZT9FiaZwnHKoipM5P7r4BLHvNEgQWrO1SgD7Ay+Cf6l4rEw1333F4Fpe
         sXTwNtay0v9CGDKtZM6B4dT3CYNH5GR3nS7vSY1s0t45sdZ33/f+3Viil5klBgyoIgrZ
         JuQA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533fOkOCnx4+6JpldQIYzX5y6zfP/10vDr0kegmGn5eZ+osovTQP
	swn3eEGR2p+tqaFN36obQVI=
X-Google-Smtp-Source: ABdhPJxhtqqF4dB7rdTCn4/9aOLMEyLecUESq6FMQE4LGjUQEHcN2ZPEwowKTkhmBq+SJneT8uCrWw==
X-Received: by 2002:a6b:7c02:: with SMTP id m2mr1918640iok.49.1593461074358;
        Mon, 29 Jun 2020 13:04:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:3b07:: with SMTP id c7ls104524jaa.9.gmail; Mon, 29 Jun
 2020 13:04:34 -0700 (PDT)
X-Received: by 2002:a05:6638:168e:: with SMTP id f14mr13367198jat.64.1593461073990;
        Mon, 29 Jun 2020 13:04:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593461073; cv=none;
        d=google.com; s=arc-20160816;
        b=T7T3QyK0sCB4Zzaok7ZXLS4lkXTx0sjVeNeZbbQv07hQ9KeaVbnf1vcpxQVJ+KVI9Y
         ZX3RTHdj2htHnTGcnv6mbRa2TEJz1i7OI6W/YFnbEfgkZjRZFxBZH/S0Kp+yfi1XGFRO
         7X4AfHo4M1wE+wkSDFAkGG+0b8MYobvxsTPWH8dm/CdOxTnnV0SOblZSStMyso8iWZVs
         mBmcuztFwyHq5vA2OplwWxBm4inyL098NcLvmnxtQL9QCGKXtG5pU1rWrPl/1eWxWu0b
         7eV/L02PBgZ4YdnFIO+0oXYq+iFM0/SA9Cl41Sh4Znon8+qcwZsv4JTIBQ2WpMgIOUch
         KjCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=dTLUsyi9EoNBvYop+SAQkhC6GYIREzqCPpDVHlef0N4=;
        b=Bmcud8x9rywLJ3FVIbRSi6lAKbkBKQgtOuABuOpdKhLaHedt8qVCLlZnPn0TiD4/Qs
         SKjEvStkRj4EmFcWggVSi6fBSI78rEfjGgrJV/j085gVOSoVZdOlQbxgkV5YzSSOmfw+
         I4y6KoQwL/RnHnDXM60shIqa7Z5Q/9ukE+UnyhH6ZhdRQdSFLI3P248n3T5+HZfafVPY
         y116+F398Gp5F0y3gOM16q6U8YxmqbTuD3zeHy0MxgY6BqvGiHsVGxlKV3/94HlaboYy
         dVb6a4V0aTKo6oM07c0cjMuN52k5/iP7mlthELoYkegtq2v+5P+R6tnr6jk1PXJ33GHT
         SRLQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=iyegTPlb;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id b2si86940ile.1.2020.06.29.13.04.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Jun 2020 13:04:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id f9so8370744pfn.0
        for <clang-built-linux@googlegroups.com>; Mon, 29 Jun 2020 13:04:33 -0700 (PDT)
X-Received: by 2002:a63:4c08:: with SMTP id z8mr11413821pga.201.1593461073426;
        Mon, 29 Jun 2020 13:04:33 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id h130sm446526pfe.200.2020.06.29.13.04.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Jun 2020 13:04:32 -0700 (PDT)
Date: Mon, 29 Jun 2020 13:04:31 -0700
From: Kees Cook <keescook@chromium.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Will Deacon <will@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Peter Collingbourne <pcc@google.com>,
	James Morse <james.morse@arm.com>, Borislav Petkov <bp@suse.de>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>,
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
	LKML <linux-kernel@vger.kernel.org>, Joe Perches <joe@perches.com>
Subject: Re: [PATCH v4 08/17] arm64/mm: Remove needless section quotes
Message-ID: <202006291301.46FEF3B7@keescook>
References: <20200629061840.4065483-1-keescook@chromium.org>
 <20200629061840.4065483-9-keescook@chromium.org>
 <CAKwvOd=r6bsBfSZxVYrnbm1Utq==ApWBDjx+0Fxsm90Aq3Jghw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOd=r6bsBfSZxVYrnbm1Utq==ApWBDjx+0Fxsm90Aq3Jghw@mail.gmail.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=iyegTPlb;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::441
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

On Mon, Jun 29, 2020 at 12:53:47PM -0700, Nick Desaulniers wrote:
> On Sun, Jun 28, 2020 at 11:18 PM Kees Cook <keescook@chromium.org> wrote:
> >
> > Fix a case of needless quotes in __section(), which Clang doesn't like.
> >
> > Acked-by: Will Deacon <will@kernel.org>
> > Signed-off-by: Kees Cook <keescook@chromium.org>
> 
> Yep, I remember bugs from this.  Probably should scan the kernel for
> other instances of this.  +Joe for checkpatch.pl validation.

I think the others are safe because they're in macros:

$ git grep -4 '__section("'
include/linux/compiler.h-# define KENTRY(sym)                                           \
include/linux/compiler.h-       extern typeof(sym) sym;                                 \
include/linux/compiler.h-       static const unsigned long __kentry_##sym               \
include/linux/compiler.h-       __used                                                  \
include/linux/compiler.h:       __section("___kentry" "+" #sym )                        \
include/linux/compiler.h-       = (unsigned long)&sym;
--
include/linux/export.h-#define __ksym_marker(sym)       \
include/linux/export.h: static int __ksym_marker_##sym[0] __section(".discard.ksym") __used
--
include/linux/srcutree.h-# define __DEFINE_SRCU(name, is_static)                                \
include/linux/srcutree.h-       is_static struct srcu_struct name;                              \
include/linux/srcutree.h-       struct srcu_struct * const __srcu_struct_##name                 \
include/linux/srcutree.h:               __section("___srcu_struct_ptrs") = &name


> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

Thanks!

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202006291301.46FEF3B7%40keescook.
