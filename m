Return-Path: <clang-built-linux+bncBD63HSEZTUIBBZXLZX3QKGQEMRCRMRA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83d.google.com (mail-qt1-x83d.google.com [IPv6:2607:f8b0:4864:20::83d])
	by mail.lfdr.de (Postfix) with ESMTPS id E1AA52077DE
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 17:48:55 +0200 (CEST)
Received: by mail-qt1-x83d.google.com with SMTP id c26sf1837591qtq.6
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 08:48:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593013735; cv=pass;
        d=google.com; s=arc-20160816;
        b=nTXPJ7FGDDVtDxzHLsuDZrVI9K9AUPS0PTGUmELKmrdVuZ9u5PcMeRfsW8FQ2fdcVg
         n15fGo8vgtz+4fiFPW63z1wj2DmnKiEi25AP8TjAkI/n1ekhF/zXfEaFZ30FJJDXaShB
         VFCqn5xnlME4DeEuRxD/7tBBk+rC5XvBnLnCIUnwcEeQUsEoK0bO/+feWK0j95JGwcY9
         EBodvk0Eu9NU/1IqO0B/bu831aTzSVoUU+NJ+ui2UP2/MGuAvJwfYLTolz7aUuwnhw2r
         //ADK1DxrRUuuysRQNJ3E5Hf9CORQw01rQVtAxd4dvtHH7p+9Al71b2wYYYftkwCqTKQ
         R9nw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=Ho5F9EGJJer9GM7oS6AhXfpJ92jpwdZ8gzvQ9ogJurQ=;
        b=FC+JW3cKM9YsgM5ikvwP/EZqeaxphH7upL3KnCQN60ptYECEPUNkS8frp4/nsNLQyO
         VGHR3y3oeB+/CbDAp87FuYtn4CmzcTr9MLNCPbZGPfkdwlqyWm7Ga+wlnQpN0crV9w3r
         efyFC43QcGkrNLprLv7vMn6SLVm1ZBSR9xOv6/63TQWrsrWD7zadhwIOP7pKKSsjPYDA
         h+y30JXX8WHp+HtNniBTkEZzCuBTquqBU4LH5V7Uwml0rWYsLq/23uS4w3njw6Sf/vqm
         vXAQvpHxyFYLo2mPGA4b1OQ7662ss+W78o1GgcxxqUYgE2mtqk1OHEVOwuY+4M/O9/Bu
         kpJQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=nmm+51b9;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ho5F9EGJJer9GM7oS6AhXfpJ92jpwdZ8gzvQ9ogJurQ=;
        b=RGvz1wtFZFPY6vYWHAj7zxeXd56UDVUXIabbfLxwkaC77ivMtStwOGeSocoaVSEnLe
         re4HFyL7aEIWwNyv+KpI/iIocBzJAdnQuSd2H/pS1ilVKGFlZRY20sNGyeoK0TJn2EzN
         /GEZbrhYWcmbm2oG19ZDs7IS5K+LZN7I64nz+pDrG3EZdpCcCerk0peZwYBK8ciNaEjm
         c4E4GAJvEVxwbhBV6amW8dmgwg9YNZ5fv1vZrFJNem5fGnZDgXMX5MceW3bqUFMBQZ8I
         d/+olgofhh3WElgkasBXbpJfHnWVwdwMI1iBfdh2pN4azJqKZeg2WmoL1HOCLPAf0FHc
         K3YQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ho5F9EGJJer9GM7oS6AhXfpJ92jpwdZ8gzvQ9ogJurQ=;
        b=txf90OEXHUfdIC3hyaGeliyuIkYEfsy/DzfBNfXl4BoRS77Gyz4fExmCm/Z/tmGIQG
         V0jr6kTfMRsECjkdlKrcS3r6u55De89q2QVGTMVRKRxIN9mY3Uo1lCCbrWwy3TqRhWJp
         HwbQCIghJZHe7E6gEXcbhoJfclpcs41Pqo/8pzfigKLsTRPh/5JJK26y9fYKTq0ciGkJ
         MEx+R/Id98GDwp/p2Ywr3Z/6/C9V1JFEBnTdGkuvdmJIgjAn1zvk9SgtV58De2YXtUi/
         ubjBMCnJD84WtqZUdrPLDv7x4LA8L2DUP5H72TIlvLZYPU1A1Dh6B7NRq1rCUayvULnJ
         zpOg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531lhtYNx7s3JoYsor6BT062KfXhGWG+5yCQumfk8UEeDpbaWx74
	GegUrRpI7ii9i9FD2kXaaxA=
X-Google-Smtp-Source: ABdhPJzt+ygbQY7b8w7P64/pyEXZrqQpnwIQZYs1o0/HUDN6p+vOyG1l5vCFicyJQBjFdZzpFKPpxg==
X-Received: by 2002:ac8:7343:: with SMTP id q3mr14199200qtp.165.1593013734889;
        Wed, 24 Jun 2020 08:48:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:f4cd:: with SMTP id o13ls546375qvm.6.gmail; Wed, 24 Jun
 2020 08:48:54 -0700 (PDT)
X-Received: by 2002:a05:6214:b30:: with SMTP id w16mr32039653qvj.28.1593013734402;
        Wed, 24 Jun 2020 08:48:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593013734; cv=none;
        d=google.com; s=arc-20160816;
        b=jK+8s1gdXBSyms5BWAkZIaGTmKZydn0eY0D+2ZS1DutUP94iFOWtCHL5KJiWVzU7rJ
         3Um///zfSwfH6W8N9kVB9xxZzG4UnoFov/WLNfZFYQyHDq+hwpTrwGsgwydb9vHyLkYb
         cnfwvQR0E+g79qYdEMmMaGcPHiSL7+jKmOoRD7twKb7+eHLwoMzF5syYCJIUfmKr3xrS
         F3mF9h5bVvAleFviJoWjzZWCIohVs+DXnFqst9PQ6RcG42C7FmMOlcqj+W7RX2syDljE
         5txsb5wvEiTkTxlJQ+DSXG3ij6o8A9vQiAqWk4y+sJzFChWwJxg9YeCJjbD2J/vIuJ3c
         xDiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=SiOccSYDq3Ujl7Qm6Nh9lr81LZ11ZdVVR+s/kwlHeOU=;
        b=THkM/MhjjAd1AlUEb2iL4tMHKIOvrVVFsEiBFq7KIqK8qLCGzhpPs6nm0QM2l8ZdJN
         BF1jUXAYFkggn5M34V2Yn315GkfT+sbFi0DVCi1KpOlgNs3WByR9wWHBcLesO1KbXk+e
         pGTzYi5bmKXjiFslskGHU14jZMFvpm9Q4ZURkk789ZVEqQWuvt7vAD0IHYCtaloAdmtu
         SqFXh7kSNmiJvDh2hQi4eu7GUV0DzaNpm9P7vYEOobegJdr0pecjYtN94YkMQKM1PSyk
         dWoBc7VUNJ2Olqltm4Fz8AsBLCehKJxa0pSLSAa1mwFr+ndQwabEJxKha30rf8o0q/BE
         /JJQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=nmm+51b9;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id x16si1187156qtx.5.2020.06.24.08.48.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Jun 2020 08:48:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from mail-ot1-f47.google.com (mail-ot1-f47.google.com [209.85.210.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 385BB20706
	for <clang-built-linux@googlegroups.com>; Wed, 24 Jun 2020 15:48:53 +0000 (UTC)
Received: by mail-ot1-f47.google.com with SMTP id d4so2358032otk.2
        for <clang-built-linux@googlegroups.com>; Wed, 24 Jun 2020 08:48:53 -0700 (PDT)
X-Received: by 2002:a9d:4a8f:: with SMTP id i15mr393127otf.77.1593013732575;
 Wed, 24 Jun 2020 08:48:52 -0700 (PDT)
MIME-Version: 1.0
References: <20200624014940.1204448-1-keescook@chromium.org>
 <20200624014940.1204448-4-keescook@chromium.org> <20200624033142.cinvg6rbg252j46d@google.com>
 <202006232143.66828CD3@keescook> <20200624104356.GA6134@willie-the-truck>
 <CAMj1kXHBT4ei0xhyL4jD7=CNRsn1rh7w6jeYDLjVOv4na0Z38Q@mail.gmail.com>
 <202006240820.A3468F4@keescook> <CAMj1kXHck12juGi=E=P4hWP_8vQhQ+-x3vBMc3TGeRWdQ-XkxQ@mail.gmail.com>
 <202006240844.7BE48D2B5@keescook>
In-Reply-To: <202006240844.7BE48D2B5@keescook>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Wed, 24 Jun 2020 17:48:41 +0200
X-Gmail-Original-Message-ID: <CAMj1kXHqBs44uukRSdFwA_hcmX_yKVfjqdv9RoPbbu-6Wz+RaA@mail.gmail.com>
Message-ID: <CAMj1kXHqBs44uukRSdFwA_hcmX_yKVfjqdv9RoPbbu-6Wz+RaA@mail.gmail.com>
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
 header.i=@kernel.org header.s=default header.b=nmm+51b9;       spf=pass
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

On Wed, 24 Jun 2020 at 17:45, Kees Cook <keescook@chromium.org> wrote:
>
> On Wed, Jun 24, 2020 at 05:31:06PM +0200, Ard Biesheuvel wrote:
> > On Wed, 24 Jun 2020 at 17:21, Kees Cook <keescook@chromium.org> wrote:
> > >
> > > On Wed, Jun 24, 2020 at 12:46:32PM +0200, Ard Biesheuvel wrote:
> > > > I'm not sure if there is a point to having PAC and/or BTI in the EFI
> > > > stub, given that it runs under the control of the firmware, with its
> > > > memory mappings and PAC configuration etc.
> > >
> > > Is BTI being ignored when the firmware runs?
> >
> > Given that it requires the 'guarded' attribute to be set in the page
> > tables, and the fact that the UEFI spec does not require it for
> > executables that it invokes, nor describes any means of annotating
> > such executables as having been built with BTI annotations, I think we
> > can safely assume that the EFI stub will execute with BTI disabled in
> > the foreseeable future.
>
> yaaaaaay. *sigh* How long until EFI catches up?
>
> That said, BTI shouldn't _hurt_, right? If EFI ever decides to enable
> it, we'll be ready?
>

Sure. Although I anticipate that we'll need to set some flag in the
PE/COFF header to enable it, and so any BTI opcodes we emit without
that will never take effect in practice.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMj1kXHqBs44uukRSdFwA_hcmX_yKVfjqdv9RoPbbu-6Wz%2BRaA%40mail.gmail.com.
