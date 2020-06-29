Return-Path: <clang-built-linux+bncBCSPV64IYUKBB7XV5D3QKGQEX6Q6QQQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-f62.google.com (mail-lf1-f62.google.com [209.85.167.62])
	by mail.lfdr.de (Postfix) with ESMTPS id EAC4520D2C3
	for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jun 2020 21:03:26 +0200 (CEST)
Received: by mail-lf1-f62.google.com with SMTP id e19sf5233235lfn.17
        for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jun 2020 12:03:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593457406; cv=pass;
        d=google.com; s=arc-20160816;
        b=AW+VzQ+ipsvTooAjT63wECr4rmZ8MVUDQwutska8OJYSssQLDugvDiWFiy9Mz8bHt2
         u0duGy511dgyFeoaTaeHk3BsQDSiWApEW+nGcGbMVGwUhyWDfCTu3wjTXqvOazL83NcM
         SIwWSiehWJ/41yFSI/9MfHU0y6k1rJ1j2hnUBzTNLpJsgiI/pihQB3ZuN86nESe9BSVR
         Eym4hxz//XGsEdAnHMgAwRAhpFWarweDffJxh6qiZay9Q9WmKl/V2e+KpHAr37dmaQ5F
         acArSonpeKa/56TLlGnrKF9KQZ1px9q0K6EUacvtE35rNvAHYDqfo6wzoYGWVzGliyDL
         cz6Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:sender:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date;
        bh=Y2L1K+csClN/oCZQHqhhdiUZpruX4QTUPFpUmnR9JDY=;
        b=G4uasjbC/9QkEJ2KiW70+jrHhMHTl+OBWfAKqUm9cYum1sHCgEB0pnwxxvvZhPkwMa
         ShsJeJwNhr+yM/jitXAojug2634bUQeXrswLniX3nHVYsBHYrW0r+2x/ywFR0gFrR0qa
         xbV2kySs5TwcxmOg/A6LmNmMG2NOg7zOtqBZwpsDw9w61H+Zu13sniar3UtmTzseQhs3
         fJJFiLi9Oi0cskoOxPkUEfx2IS7tRoP9fG4oy2rF+oEBsMynYv0MPun22U0C48mkQiZj
         eB2HZDr69yrJE5wMq5UOQ52PS+5JKqwLILYlv8gQswYEFlrgc5uopMk4TCRdvbEAi1RB
         9hmA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass (test mode) header.i=@armlinux.org.uk header.s=pandora-2019 header.b=N+rbp9GA;
       spf=pass (google.com: best guess record for domain of linux+clang-built-linux=googlegroups.com@armlinux.org.uk designates 2001:4d48:ad52:32c8:5054:ff:fe00:142 as permitted sender) smtp.mailfrom="linux+clang-built-linux=googlegroups.com@armlinux.org.uk";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=armlinux.org.uk
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent:sender
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Y2L1K+csClN/oCZQHqhhdiUZpruX4QTUPFpUmnR9JDY=;
        b=lJQDcR73HqOYBfi2pW96ojGBNIfoWBTKVUYiRXrizOhs3b0K0U7gc4MDosRb8GaEgm
         gpb66PiTAH5Fp1/p/QwNmhOu3QC3NNYKx5/Wvi1qUOe7VHRh/cIx6LvxsE/0vFAW0K/K
         TQeuIKVdiD93hXBXFHbKb/hgOPqgnlkxpAzTLPuCnkAH1QbSkm6l2Y+WCXG7PA4R91Th
         V6Y37c/700xswHC5YL6381hTiFYWSxcvmYWGwqM7emfREpgINLobv4f1sf/QpJ2GupDq
         vk2gFbCQ8byieuQCMA5hBGRQ3qDF6BmwLpuXs6FR1OmFpHm7ahBiSmpUtc3a+Mlt7l8r
         6OWw==
X-Gm-Message-State: AOAM530gfcNbtDpf7Q5DrYRtBS/YsKQFBfhOk7vUQv1aUbIlG7FlYYuW
	2d4WJ+0YwuzwMJUFRAR3yG4=
X-Google-Smtp-Source: ABdhPJzWSwnIlMwNUFKIsciQTmkFCIMg/qC3l1k7Rf4E3Iopljmqm9UK7qypN2hkIndFupj8j8s2qw==
X-Received: by 2002:a2e:b554:: with SMTP id a20mr8144142ljn.108.1593457406418;
        Mon, 29 Jun 2020 12:03:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:864a:: with SMTP id i10ls3317129ljj.8.gmail; Mon, 29 Jun
 2020 12:03:25 -0700 (PDT)
X-Received: by 2002:a2e:2242:: with SMTP id i63mr9180392lji.370.1593457405817;
        Mon, 29 Jun 2020 12:03:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593457405; cv=none;
        d=google.com; s=arc-20160816;
        b=Odc9nj6rs6XEqeQF6MkpxzErbczV/Zd8NDO+/flOW/9EfvmZSdNH/vMWzJHHW79L1o
         UUxyqW8GUXBmJnKCyscqDAFDnVJ/A6TWJfNBBnibohhmip0HC2NzuG/YJ75nYn4FvBNo
         6fxy4kpLdTxDzj2JmI12VMdeaafP5YGskQSJeBVSN0vIW5Fy9yrpdsLmS6a+zNwQQegn
         6+ucXS8lvcjQs1gSYt63mTDckehHjfyRfRun2BP6g+mdxgNWeh8kF6+figQ04hHyF7ts
         baFRIfw4MHASbdqMhWTsNIbuQrlQDDKgGl5jacMW5aG5mVFO2NvmooZqN53NPvUWrAR3
         RPuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=sender:user-agent:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:dkim-signature;
        bh=+IitMUk+eOYapugNWdcU2qNl/SJeRY/e+GCy2zsMLo8=;
        b=1Kk6+wFzi3OgQCjWyXWxJ0GxII9y2jxaWY+rkhNsBrztfvvh0SDNSzhJfJxjxltph1
         fdtuE/y+xw5i4f37K/HaBjTCycfsLKPtZ16v5K4tX00frkE8HazSYbn8NSy7k7TKpSf7
         EbsqTmHc2V5F1i9iKukaZlG3qcTeCD3p1pjit8oQTKKILvGD21N4N4rl/LxVuqBQaVxp
         7/O7dlU8IZ/r1tgSB5ch72dwuaxP/qv5N/YLsmkKbbvq5pfTVMDMa6wVStO0ShJRsDLi
         5gTY8Hw8JcS3RQkORfavxN3Q19VnzWeMPfFBr1twh8Qpia/tUkpPPPX6Uuv4d0BoAXwy
         3B4A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass (test mode) header.i=@armlinux.org.uk header.s=pandora-2019 header.b=N+rbp9GA;
       spf=pass (google.com: best guess record for domain of linux+clang-built-linux=googlegroups.com@armlinux.org.uk designates 2001:4d48:ad52:32c8:5054:ff:fe00:142 as permitted sender) smtp.mailfrom="linux+clang-built-linux=googlegroups.com@armlinux.org.uk";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=armlinux.org.uk
Received: from pandora.armlinux.org.uk (pandora.armlinux.org.uk. [2001:4d48:ad52:32c8:5054:ff:fe00:142])
        by gmr-mx.google.com with ESMTPS id j19si29729lfe.2.2020.06.29.12.03.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Jun 2020 12:03:25 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of linux+clang-built-linux=googlegroups.com@armlinux.org.uk designates 2001:4d48:ad52:32c8:5054:ff:fe00:142 as permitted sender) client-ip=2001:4d48:ad52:32c8:5054:ff:fe00:142;
Received: from shell.armlinux.org.uk ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:33208)
	by pandora.armlinux.org.uk with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <linux@armlinux.org.uk>)
	id 1jpz3m-00088W-9q; Mon, 29 Jun 2020 20:03:18 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
	(envelope-from <linux@shell.armlinux.org.uk>)
	id 1jpz3k-0007MT-Qr; Mon, 29 Jun 2020 20:03:16 +0100
Date: Mon, 29 Jun 2020 20:03:16 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Kees Cook <keescook@chromium.org>, Will Deacon <will@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Peter Collingbourne <pcc@google.com>,
	James Morse <james.morse@arm.com>, Borislav Petkov <bp@suse.de>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>, x86@kernel.org,
	clang-built-linux@googlegroups.com, linux-arch@vger.kernel.org,
	linux-efi@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 14/17] arm/build: Warn on orphan section placement
Message-ID: <20200629190316.GY1551@shell.armlinux.org.uk>
References: <20200629061840.4065483-1-keescook@chromium.org>
 <20200629061840.4065483-15-keescook@chromium.org>
 <20200629155401.GB900899@rani.riverdale.lan>
 <20200629180703.GX1551@shell.armlinux.org.uk>
 <20200629181514.GA1046442@rani.riverdale.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200629181514.GA1046442@rani.riverdale.lan>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-Original-Sender: linux@armlinux.org.uk
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass (test
 mode) header.i=@armlinux.org.uk header.s=pandora-2019 header.b=N+rbp9GA;
       spf=pass (google.com: best guess record for domain of
 linux+clang-built-linux=googlegroups.com@armlinux.org.uk designates
 2001:4d48:ad52:32c8:5054:ff:fe00:142 as permitted sender) smtp.mailfrom="linux+clang-built-linux=googlegroups.com@armlinux.org.uk";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=armlinux.org.uk
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

On Mon, Jun 29, 2020 at 02:15:14PM -0400, Arvind Sankar wrote:
> On Mon, Jun 29, 2020 at 07:07:04PM +0100, Russell King - ARM Linux admin wrote:
> > On Mon, Jun 29, 2020 at 11:54:01AM -0400, Arvind Sankar wrote:
> > > On Sun, Jun 28, 2020 at 11:18:37PM -0700, Kees Cook wrote:
> > > > We don't want to depend on the linker's orphan section placement
> > > > heuristics as these can vary between linkers, and may change between
> > > > versions. All sections need to be explicitly named in the linker
> > > > script.
> > > > 
> > > > Specifically, this would have made a recently fixed bug very obvious:
> > > > 
> > > > ld: warning: orphan section `.fixup' from `arch/arm/lib/copy_from_user.o' being placed in section `.fixup'
> > > > 
> > > > Discard unneeded sections .iplt, .rel.iplt, .igot.plt, and .modinfo.
> > > > 
> > > > Add missing text stub sections .vfp11_veneer and .v4_bx.
> > > > 
> > > > Add debug sections explicitly.
> > > > 
> > > > Finally enable orphan section warning.
> > > 
> > > This is unrelated to this patch as such, but I noticed that ARM32/64 places
> > > the .got section inside .text -- is that expected on ARM?
> > 
> > Do you mean in general, in the kernel vmlinux, in the decompressor
> > vmlinux or ... ?
> > 
> 
> Sorry, in the kernel vmlinux. ARM_TEXT includes *(.got) for 32-bit, and
> the 64-bit vmlinux.lds.S includes it in .text as well. The decompressor
> for 32-bit keeps it separate for non-EFI stub kernel and puts it inside
> .data for EFI stub.

The main 32-bit kernel image doesn't use the .got - I don't think it
actually even exists.

The decompressor (non-EFI) uses the .got as a way of getting position
independence, and that must be part of the binary image at a fixed
offset from the .text section.  The decompressor self-fixes up the
GOT entries.

In the case of the decompressor being flashed and executed from NOR
flash, the decompressor must be built for the specific address(es)
that it will reside (which does away with the .got table.)

For EFI, it needs to be in the .data section (which is in that case
always a fixed offset from .text) so that it can be written to so the
fix-ups work.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTP is here! 40Mbps down 10Mbps up. Decent connectivity at last!

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200629190316.GY1551%40shell.armlinux.org.uk.
