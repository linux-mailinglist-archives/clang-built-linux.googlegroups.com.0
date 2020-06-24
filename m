Return-Path: <clang-built-linux+bncBD63HSEZTUIBBR7DZX3QKGQELY5HHEI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103e.google.com (mail-pj1-x103e.google.com [IPv6:2607:f8b0:4864:20::103e])
	by mail.lfdr.de (Postfix) with ESMTPS id C8A52207768
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 17:31:20 +0200 (CEST)
Received: by mail-pj1-x103e.google.com with SMTP id m63sf1730586pje.8
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 08:31:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593012679; cv=pass;
        d=google.com; s=arc-20160816;
        b=dcW8jJUfo78jEoW69SNpaHbn2MzMPA6d5AgwmijYw5eAZWH5J/dsJbrdgY7E/Y6N3y
         tkRAa6bnGZXCUW/zY51G9WJacm4fHJiAmYzz+qlwfSy+fzWELklVKb+TTafWNerPbZzs
         U5twrIYeL4ZEeyAFFbW2Ph2UogEgFjM6IrqQrluHFlB5XIw8tAChiYs19+vXetYohWVH
         FLXhy8T6HJax+S9Zh7uRXPuL4cMbd8rLdZRFlRrC+Mjos7AgFu0ruHu/Fb/6ndOxX6HG
         QbyKUCj+kv2DcMCHSNo0zghxOhCTMwKJPDcfb+VCdv5PcDlWWrg5MHGjpXD46NXEeT7v
         rnrg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=ecquHcCpTA1fZYde7gCgxTr6KsrfOnzkwM4f6+jtR7g=;
        b=AI9KMKpFYt03mNiSnY3O1Y73dT5u/vmZsfX8dgEv8VKaAopQ7AeLSRdHxgX4a7YZjL
         VQr5F2kJPg2yBdGVUMBqPg3Zl9DNWh/1+NFgEQh5tsCPgToPd6ZyUBI82QalolfRAqCA
         nE0T8asZ4hNG0atif5L2Unw79UdIog8olvb9rZQAQ7k5om2ZTAuZ/Y21qwAMeXIbMnCC
         qvQKayvT0Uq7WY69Rm/idSCt24FGqY5l98xPQNWTAdBCLCFLfWPvfJQ/1NPYE1ZJMg8g
         sb92wrYEmbmHYvRdFTrAONEEQZa4XDHUu7lz+Hz63s23V5XiNRt9rR1X2beQf0azZDIz
         JX3A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="1/gbox5R";
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ecquHcCpTA1fZYde7gCgxTr6KsrfOnzkwM4f6+jtR7g=;
        b=P00WoT58zAfxvNIQ4tFjjL0S2fpqM5lW5bODKqCoQayTX95hdZmhPdC89aKKvFm4ch
         X7JrOeulL8pN1BDfc03QfEHP77lCTy0C2K3f1xhP0pwbgYnBPJoJvhyqfTar2ZWUfhHx
         kAzPNRRksB1SBcwe9CXg9wgIu6z3tTvE6wWvPAi7rfmWSnT/3kbJp34gPRBAUGeLOZgw
         asLytYC4SUGQXMKpzPUJXWRH+Zcb7o4yh1UOy8k44TUjv9k31L7NA7D6DmX+Y1I7MxTr
         deoqeop3nSEL+/tikpB1A5lMooE9iwB08jqqzL4+8eF1Kl/F3T/zlz6LOC6A5VlBAwuW
         Rx9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ecquHcCpTA1fZYde7gCgxTr6KsrfOnzkwM4f6+jtR7g=;
        b=QZBdbws5PPya/w+vXSo5fncr4fqPMd7VqvcuGwWIBS2j1ggG0VapTlLRwgenOEmVRg
         vePLLhzebIzNpw+QnfNMvKCsBCfohn49na/hfXcPXNMNm/+NbQHPvaxpokAaFnsjTUQV
         25oMJXLVo0wiB25caEtlcU/VyfPCJYwnr22ECKMNPA6wJ2/YMBtWDAwftcEWiXx+698u
         KTmejY8R+2ihpVqPwvVpGEEXBHyUq5e6Vo27tYryYy3OSQwMkrqO/BoP6is13FNkIibz
         GqH939drGT62iv2GpQcSGvG/z/hgSGjT70PnPwJi2luA+5Oaq+tNuXgS9WszxwYbL4D3
         7b6A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530ee/YJ8EgqioZaqPnuVVJgA3txhJ9Fz2E8JM7TlPR0bkqZ5fsC
	6oKOVTjAEI/qweAavktObcs=
X-Google-Smtp-Source: ABdhPJw1elXbq3C7wWOo79qheq0C6oCTZmKY0DJh1+XVR+3z6J6udLf8WvqX8l6d3QDy2LBFs1BirA==
X-Received: by 2002:a17:902:8681:: with SMTP id g1mr28155144plo.161.1593012679256;
        Wed, 24 Jun 2020 08:31:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:384c:: with SMTP id nl12ls1175079pjb.2.canary-gmail;
 Wed, 24 Jun 2020 08:31:18 -0700 (PDT)
X-Received: by 2002:a17:90a:c695:: with SMTP id n21mr31013415pjt.206.1593012678872;
        Wed, 24 Jun 2020 08:31:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593012678; cv=none;
        d=google.com; s=arc-20160816;
        b=ncPuoIdYKicYqvL5lQnIU0zzZv6uwigNsEBwuKuxx/sBQFNEYp37LD7p2QRupxZXms
         6dN9HTGD/fVtC6GN1cKBZ1bYVSGPyC6VmNgmCNjF4w6XDxBRvJCTHpGUM7DeFf6Nahxd
         LM616Vd9T6L33rIVpqsywnD8GWoEitflh7UXALlLXRz12yjNg8R8cmr1AaWjd8zFH++E
         wLL0FsYPub9qY5seUDpU/bOLmQlHb8pmi6v6d2tOoaD9zlAIoeZ7l1FYJGuYYbZeX3as
         pdCPR7ii1K8Y7pIgJadSh4ZLWv2132hH2gp2ZbQy5aR1wY0V3SUvyyJT9uhaAaZX/Ehz
         4dbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=/XOHUfqgbkJQ/VFuvcNxNCzM8LEt5wElAfbZZ/I0QOw=;
        b=NnNzD+5Ow4GZ+lmNsRS5q6+ea2Jfj1vbD9V66hs6Q9sKoKcrHwqiMArNvdBMl2zD4b
         kVHQzzYROkNrynPpzeHCMqxeNdu1OrwCjCurG8LxPunY3WXQVAuP4LM8V+slhp65rCS4
         CX/8lF+x9rxEBabz+YFEvlpj4jfDrAOnVBbaBRpVJkgCZ6fvZ72ipeMdDTg3DDG02EP3
         kgUamix74hEOziOfUBcw1h9SsKBdvPasfPYWyOAIXHUgrGbmhd29LI9aSzCpYZ/ySQz3
         MmnpJqKU9PBrocj72r8wmwVjkpj12FB4BSwDgz0c+fukpDqU2sh2/QuErF5tvUbn8Xsm
         CEWQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="1/gbox5R";
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id u2si1112699plq.0.2020.06.24.08.31.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Jun 2020 08:31:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from mail-oi1-f181.google.com (mail-oi1-f181.google.com [209.85.167.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 8B795206FA
	for <clang-built-linux@googlegroups.com>; Wed, 24 Jun 2020 15:31:18 +0000 (UTC)
Received: by mail-oi1-f181.google.com with SMTP id s10so1935468oih.10
        for <clang-built-linux@googlegroups.com>; Wed, 24 Jun 2020 08:31:18 -0700 (PDT)
X-Received: by 2002:aca:b241:: with SMTP id b62mr19630758oif.47.1593012677928;
 Wed, 24 Jun 2020 08:31:17 -0700 (PDT)
MIME-Version: 1.0
References: <20200624014940.1204448-1-keescook@chromium.org>
 <20200624014940.1204448-4-keescook@chromium.org> <20200624033142.cinvg6rbg252j46d@google.com>
 <202006232143.66828CD3@keescook> <20200624104356.GA6134@willie-the-truck>
 <CAMj1kXHBT4ei0xhyL4jD7=CNRsn1rh7w6jeYDLjVOv4na0Z38Q@mail.gmail.com> <202006240820.A3468F4@keescook>
In-Reply-To: <202006240820.A3468F4@keescook>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Wed, 24 Jun 2020 17:31:06 +0200
X-Gmail-Original-Message-ID: <CAMj1kXHck12juGi=E=P4hWP_8vQhQ+-x3vBMc3TGeRWdQ-XkxQ@mail.gmail.com>
Message-ID: <CAMj1kXHck12juGi=E=P4hWP_8vQhQ+-x3vBMc3TGeRWdQ-XkxQ@mail.gmail.com>
Subject: Re: [PATCH v3 3/9] efi/libstub: Remove .note.gnu.property
To: Kees Cook <keescook@chromium.org>
Cc: Will Deacon <will@kernel.org>, Fangrui Song <maskray@google.com>, 
	Catalin Marinas <catalin.marinas@arm.com>, Mark Rutland <mark.rutland@arm.com>, 
	Peter Collingbourne <pcc@google.com>, James Morse <james.morse@arm.com>, Borislav Petkov <bp@suse.de>, 
	Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, 
	Russell King <linux@armlinux.org.uk>, Masahiro Yamada <masahiroy@kernel.org>, 
	Arvind Sankar <nivedita@alum.mit.edu>, Nick Desaulniers <ndesaulniers@google.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Arnd Bergmann <arnd@arndb.de>, X86 ML <x86@kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	linux-arch <linux-arch@vger.kernel.org>, linux-efi <linux-efi@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ardb@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="1/gbox5R";       spf=pass
 (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=ardb@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Wed, 24 Jun 2020 at 17:21, Kees Cook <keescook@chromium.org> wrote:
>
> On Wed, Jun 24, 2020 at 12:46:32PM +0200, Ard Biesheuvel wrote:
> > I'm not sure if there is a point to having PAC and/or BTI in the EFI
> > stub, given that it runs under the control of the firmware, with its
> > memory mappings and PAC configuration etc.
>
> Is BTI being ignored when the firmware runs?
>

Given that it requires the 'guarded' attribute to be set in the page
tables, and the fact that the UEFI spec does not require it for
executables that it invokes, nor describes any means of annotating
such executables as having been built with BTI annotations, I think we
can safely assume that the EFI stub will execute with BTI disabled in
the foreseeable future.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMj1kXHck12juGi%3DE%3DP4hWP_8vQhQ%2B-x3vBMc3TGeRWdQ-XkxQ%40mail.gmail.com.
