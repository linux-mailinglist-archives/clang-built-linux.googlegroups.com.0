Return-Path: <clang-built-linux+bncBD63HSEZTUIBBFVUZ33QKGQECQR6EXY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43d.google.com (mail-pf1-x43d.google.com [IPv6:2607:f8b0:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id 95034207B6C
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 20:23:19 +0200 (CEST)
Received: by mail-pf1-x43d.google.com with SMTP id r12sf1979624pfr.16
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 11:23:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593022998; cv=pass;
        d=google.com; s=arc-20160816;
        b=H5zISsoyM9f+2tNO6SS+tEQv1r8pHLzqilyjs3VFWsTJR0vU18Gkva98DS8qGz6olx
         dhMLG5EUtW2S30J6KA7JMJ32hpju798BG8Q6wHCOfrKJb7OdyEr427oQEvVGS6nMVZcf
         TE+lRITLaqesCtu54Dj77s5gU6BreXbi+r3tIdvZ27bacOi3tF5aMoy7bptkAcwK3YCx
         6QSz588CombbWjWMwc7/yFakC3M1F2W4bGisXVQqGfin0DHqe1ydbmpg+fWV8gjIXohF
         Gj8le/mIeekEjB8nIAx1LKM10fvFTzxFFzSPs4mpQJUk6ziSmXRTQrFGvdHdELuCSlOU
         3SaQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=6jl2U+YrlsM2h/5lLJX+gaZ3fh3KV3/rVWc2kD0g14E=;
        b=Aq+YqqLSsO0mIhhVqSsp3rDJtKBgcmVub23HAVAnwUMxjXt7MT5cvTQJhj0puUm/7R
         uxp9rLe8BNKzwif0lwoeit9TkKYI9WvgAbKVGhrn83RX6lXs1zE0OPIRGUsUwQhZ31na
         w54CTWjbxDx3wEozvDIBoajQg242cTCGsbqmYs0sfOM4/J91yvgBDYa3JdcSi1QxYVM6
         8e7Y0SBifP180BUvUgAvcjilmZbZ8//+ZDaJbW/NszaNY5r3OR04kRkMecMocOtfatEQ
         258cVM3aN/eFcNCUTnIQE6UN9tLBLJIS9qAQf+NK1yZsJLDZYvwDsJ3NjNP9/VCAsM3s
         M73g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=bRtaoBxn;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6jl2U+YrlsM2h/5lLJX+gaZ3fh3KV3/rVWc2kD0g14E=;
        b=cn4UbZ+ZRnkOCiLuUMTQYSOUUQQieT6ihjqJoz4Jo7UdSydrCC0U4IwmdKQesh/u6a
         gLtC960KuGX2lxxdWMmkTn2MfWEEJWSR+DLNeVkK7+ytiSuel3ml6qI250e1+KVB3WVx
         182x+jnW1GTceWIlM+4yva9XDmL1jt88aZjd3gFAfYVbGsNnRfJrUYKgSezGhvlpZQWK
         uP42u7Gsl53+BTV6XL2LnxhNQx3X8vzuskpdv5HMDrpI3BZwFRCGt2jGaAB1Z/0GsyaE
         Y/8bpCnyNwu3IgCoKr51wlN6zM78C69QCoUzyrDxez2rWlD2IZ4Ila4+gIQy6vdptIC1
         5xZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6jl2U+YrlsM2h/5lLJX+gaZ3fh3KV3/rVWc2kD0g14E=;
        b=pnKNz6nNdJwQxX++WMHb6PV0BL3cG7zXp1YcH6E9mV1a/067icVHFYtJfcIWDNdLbd
         fAvtb5sJn+yFdwGVFgjfN1q8Gi+bgT0rEv0oeM3hAw2YTJdI5Z2gAvq1eYI8xguOaOVY
         swgGUFVipXdx3i4jasgaiFRjXIarieK62ZGPREAL7Iqw9g1tOQuEUL6HznaAUhgi+yf/
         qjZ8dxLt0ZDirNrsVCgReFWTJiDQPz3ZIdJO7NrTqIbLJIhA3CIe9uvQDILuYS4NXL9V
         hkWPfc7Y2lMnOXeSU5rp1iwoDGwUGVJkPJniDAnbvC/3y++ri99iB80u063z7MEdxNur
         ODxg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531XOxy9sMAf6/2h5rmyC8/kcP21VfXSawdJmkvj1w57n1DtSFdJ
	oII+SWIt6Joujyo71nEAYps=
X-Google-Smtp-Source: ABdhPJwMN3qAabapAqjdtsSLnPwoFutUgDtAxYMeAkGUk7/GnNny6yFOUuNKtq/lDuT4z6+fPBrV/g==
X-Received: by 2002:a65:5a0f:: with SMTP id y15mr11088553pgs.6.1593022998266;
        Wed, 24 Jun 2020 11:23:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:7b91:: with SMTP id w17ls1225015pll.10.gmail; Wed,
 24 Jun 2020 11:23:17 -0700 (PDT)
X-Received: by 2002:a17:90a:de1:: with SMTP id 88mr30717059pjv.124.1593022997046;
        Wed, 24 Jun 2020 11:23:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593022997; cv=none;
        d=google.com; s=arc-20160816;
        b=DtppRgSw3vPBcQ9xC1kwR7Y6fVGfLFNcGcG8ecU/0wGf3bfqVjC9QQL9LqYU8ngMZi
         txc346AxRgx9Pm875jlxa8oe8Z5O5+/5k+0Q+71WPspVjMbp47gKmArXgHdKGDuZLQom
         aRFzoAIKc4aTZCCtMgwBKcZ3ljzqw+B5HbidnuYUIXy78MmqjjhTCjofrajH40yoVLGz
         cLTa8TrtO616rZm8IYHm932YWRBK0XijYre1so1YIDGmYa9NA77ksoflQyqFQvKOEkDg
         ZUWsxVBVkPw64ch09+DQ2HJOf/I13SuIkOxR6Z3i8LvHgKVvaLanKq2M6k44s0vWK+N7
         H87A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=QMzkwj2wsknevPPq60SbMcXJOGOru8KLNDodk/beSis=;
        b=srD7ZTYLxTFzzFgc+7Raq9jtn6MlInY42Sfxj5tJ4hGFAKfKdh47b6WsfwK8caQRnh
         D5V1+lKq9HPkIg48CU31iJBPOSqYzdAhp94frAA1qEo9fDk7JByN0+XK5EVgvmy1bfcD
         kPn7i9/so3cOCQOCeYXX7uDLe5KmbVrNEgBTaPxGWdYO/hdXUpLQpAo6lyIG8cKDaDdk
         Oupp99DG7HT7bTOHZ5WJJnIgq+u45/tgKRoMs1HqpOFjrPFjVXDSXn8f8qdQz2TW1sCZ
         CBYjic4IM/72W2JvAzEDsXEeLs0QuDuI8zNBg2+n4ylu6eC5N2NW+I8hRi4Ciu9RAhuU
         zpOg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=bRtaoBxn;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id w13si332171pll.2.2020.06.24.11.23.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Jun 2020 11:23:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from mail-ot1-f43.google.com (mail-ot1-f43.google.com [209.85.210.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id A272E20767
	for <clang-built-linux@googlegroups.com>; Wed, 24 Jun 2020 18:23:16 +0000 (UTC)
Received: by mail-ot1-f43.google.com with SMTP id t6so2821354otk.9
        for <clang-built-linux@googlegroups.com>; Wed, 24 Jun 2020 11:23:16 -0700 (PDT)
X-Received: by 2002:a4a:b34b:: with SMTP id n11mr24365561ooo.41.1593022995076;
 Wed, 24 Jun 2020 11:23:15 -0700 (PDT)
MIME-Version: 1.0
References: <20200624033142.cinvg6rbg252j46d@google.com> <202006232143.66828CD3@keescook>
 <20200624104356.GA6134@willie-the-truck> <CAMj1kXHBT4ei0xhyL4jD7=CNRsn1rh7w6jeYDLjVOv4na0Z38Q@mail.gmail.com>
 <202006240820.A3468F4@keescook> <CAMj1kXHck12juGi=E=P4hWP_8vQhQ+-x3vBMc3TGeRWdQ-XkxQ@mail.gmail.com>
 <202006240844.7BE48D2B5@keescook> <CAMj1kXHqBs44uukRSdFwA_hcmX_yKVfjqdv9RoPbbu-6Wz+RaA@mail.gmail.com>
 <20200624162919.GH25945@arm.com> <CAMj1kXE1zWCjVt8iS4fv2gQHzrTF6=Ggd16nm+4TNWAG3zSWAQ@mail.gmail.com>
 <20200624171613.GJ25945@arm.com>
In-Reply-To: <20200624171613.GJ25945@arm.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Wed, 24 Jun 2020 20:23:03 +0200
X-Gmail-Original-Message-ID: <CAMj1kXG+Xh=a1exFXuRJ9EYbT+0xnC=votGGX1dmzBgZgEaC-w@mail.gmail.com>
Message-ID: <CAMj1kXG+Xh=a1exFXuRJ9EYbT+0xnC=votGGX1dmzBgZgEaC-w@mail.gmail.com>
Subject: Re: [PATCH v3 3/9] efi/libstub: Remove .note.gnu.property
To: Dave Martin <Dave.Martin@arm.com>
Cc: Mark Rutland <mark.rutland@arm.com>, linux-efi <linux-efi@vger.kernel.org>, 
	Catalin Marinas <catalin.marinas@arm.com>, Arvind Sankar <nivedita@alum.mit.edu>, 
	Will Deacon <will@kernel.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	linux-arch <linux-arch@vger.kernel.org>, Fangrui Song <maskray@google.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, X86 ML <x86@kernel.org>, 
	Russell King <linux@armlinux.org.uk>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Ingo Molnar <mingo@redhat.com>, 
	Borislav Petkov <bp@suse.de>, Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>, 
	Thomas Gleixner <tglx@linutronix.de>, Peter Collingbourne <pcc@google.com>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, James Morse <james.morse@arm.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ardb@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=bRtaoBxn;       spf=pass
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

On Wed, 24 Jun 2020 at 19:16, Dave Martin <Dave.Martin@arm.com> wrote:
>
> On Wed, Jun 24, 2020 at 06:40:48PM +0200, Ard Biesheuvel wrote:
> > On Wed, 24 Jun 2020 at 18:29, Dave Martin <Dave.Martin@arm.com> wrote:
> > >
> > > On Wed, Jun 24, 2020 at 05:48:41PM +0200, Ard Biesheuvel wrote:
> > > > On Wed, 24 Jun 2020 at 17:45, Kees Cook <keescook@chromium.org> wrote:
> > > > >
> > > > > On Wed, Jun 24, 2020 at 05:31:06PM +0200, Ard Biesheuvel wrote:
> > > > > > On Wed, 24 Jun 2020 at 17:21, Kees Cook <keescook@chromium.org> wrote:
> > > > > > >
> > > > > > > On Wed, Jun 24, 2020 at 12:46:32PM +0200, Ard Biesheuvel wrote:
> > > > > > > > I'm not sure if there is a point to having PAC and/or BTI in the EFI
> > > > > > > > stub, given that it runs under the control of the firmware, with its
> > > > > > > > memory mappings and PAC configuration etc.
> > > > > > >
> > > > > > > Is BTI being ignored when the firmware runs?
> > > > > >
> > > > > > Given that it requires the 'guarded' attribute to be set in the page
> > > > > > tables, and the fact that the UEFI spec does not require it for
> > > > > > executables that it invokes, nor describes any means of annotating
> > > > > > such executables as having been built with BTI annotations, I think we
> > > > > > can safely assume that the EFI stub will execute with BTI disabled in
> > > > > > the foreseeable future.
> > > > >
> > > > > yaaaaaay. *sigh* How long until EFI catches up?
> > > > >
> > > > > That said, BTI shouldn't _hurt_, right? If EFI ever decides to enable
> > > > > it, we'll be ready?
> > > > >
> > > >
> > > > Sure. Although I anticipate that we'll need to set some flag in the
> > > > PE/COFF header to enable it, and so any BTI opcodes we emit without
> > > > that will never take effect in practice.
> > >
> > > In the meantime, it is possible to build all the in-tree parts of EFI
> > > for BTI, and just turn it off for out-of-tree EFI binaries?
> > >
> >
> > Not sure I understand the question. What do you mean by out-of-tree
> > EFI binaries? And how would the firmware (which is out of tree itself,
> > and is in charge of the page tables, vector table, timer interrupt etc
> > when the EFI stub executes) distinguish such binaries from the EFI
> > stub?
>
> I'm not an EFI expert, but I'm guessing that you configure EFI with
> certain compiler flags and build it.

'EFI' is not something you build. It is a specification that describes
how a conformant firmware implementation interfaces with a conformant
OS.

Sorry to be pedantic, but that is really quite relevant. By adhering
to the EFI spec rigorously, we no longer have to care about who
implements the opposite side, and how.

So yes, of course there are ways to build the opposite side with BTI
enabled, in a way that all its constituent pieces keep working as
expected. A typical EDK2 based implementation of EFI consists of
50-100 individual PE/COFF executables that all get loaded, relocated
and started like ordinary user space programs.

What we cannot do, though, is invent our own Linux specific way of
decorating the kernel's PE/COFF header with an annotation that
instructs a Linux specific EFI loader when to enable the GP bit for
the .text pages.

> Possibly some standalone EFI
> executables are built out of the same tree and shipped with the
> firmware from the same build, but I'm speculating.  If not, we can just
> run all EFI executables with BTI off.
>
> > > If there's no easy way to do this though, I guess we should wait for /
> > > push for a PE/COFF flag to describe this properly.
> > >
> >
> > Yeah good point. I will take this to the forum.
>
> In the interim, we could set the GP bit in EFI's page tables for the
> executable code from the firmware image if we want this protection, but
> turn it off in pages mapping the executable code of EFI executables.
> This is better than nothing.
>

We need to distinguish between the EFI stub and the EFI runtime services here.

The EFI stub consists of kernel code that executes in the context of
the firmware, at which point the loader has no control whatsoever over
page tables, vector tables, etc. This is the stage where the loading
and starting of PE/COFF images takes place. If we want to enable BTI
for code running in this context, we need PE/COFF annotations, as
discussed above.

The EFI runtime services are firmware code that gets invoked by the OS
at runtime. Whether or not such code is emitted with BTI annotations
is a separate matter (but should also be taken to the forum
nonetheless), and does not need any changes at the PE/COFF level.
However, for this code, I'd like the sandboxing to be much more
rigorous than it is today, to the point where the security it provides
doesn't even matter deeply to the OS itself. (I had some patches a
while ago that reused the KPTI infrastructure to unmap the entire
kernel while EFI runtime services are in progress. There was also an
intern in the team that implemented something similar on top of KVM)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMj1kXG%2BXh%3Da1exFXuRJ9EYbT%2B0xnC%3DvotGGX1dmzBgZgEaC-w%40mail.gmail.com.
