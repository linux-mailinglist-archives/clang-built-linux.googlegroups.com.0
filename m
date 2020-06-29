Return-Path: <clang-built-linux+bncBCSPV64IYUKBBU635D3QKGQEGZGMZMA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-f60.google.com (mail-wr1-f60.google.com [209.85.221.60])
	by mail.lfdr.de (Postfix) with ESMTPS id C845020D084
	for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jun 2020 20:07:15 +0200 (CEST)
Received: by mail-wr1-f60.google.com with SMTP id z3sf16905096wrr.7
        for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jun 2020 11:07:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593454035; cv=pass;
        d=google.com; s=arc-20160816;
        b=nvJIo/r9qE0FvT90kCi5zU/vXMDAwGrkCU8m0eF2fJCHPv5t0jONEMy9W65FamWcxU
         JSbtUUquW3nYTOK1nCbx03tFc6nKr1uuV9lvTEorMz6h/zNvEpK6dVbqylMkO42V+j03
         JHN6SbZsdN4T9VYTzmmO4oLf6wb/PDBPQjyacUyxRToo0X7+Le3GDokf6ea4A+qqDpn0
         5I+g2Xd+NEpHxxH6T48bqMyiFyQW2R9ImLbjfqk+MS3xd2FdImChuzVwQLMvxEHLGQD4
         bmSsdy9wXU29zOsD3w+3Cbt0NUfIKvPeTPzgYilOgIaazmxfjuCVwFz8thMo8pbYb9l1
         uNXQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:sender:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date;
        bh=GD0khECaNrUIzBzJWUAc/sFiA2GwYx0CdWykEU9zSaI=;
        b=U/ip6Iy4ff85xLoMZAITarhrtDJdUNy0r7NEhZdjE2T29l78ceKCF/93D3NFU0j3fs
         1XZvjhXMjh5uHQRnfRozq6wr4XvKrp5vulIADisoidpwU8muena8i8K7A5rzeKzMSwTR
         52rz/lhH8Dp1mkLRyN52pqDQ+ALikRYCKUUVnmIRvzMadJ4I2CLxPAc2p4GKMJ+GUYhS
         TCdcLvZaMluYqBz2L96tWkHWgFuEDsVkTv+34hb4mm4R30PMOUGeZpC9a689l2BMreHG
         JRZ12Ctt5D0y8A9ge8vybPca8U7DFHjLWEV8xr+fhjH62UrSuPA4uGx1lj5cPmDLDvvM
         X6uQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass (test mode) header.i=@armlinux.org.uk header.s=pandora-2019 header.b=CgyZRCI4;
       spf=pass (google.com: best guess record for domain of linux+clang-built-linux=googlegroups.com@armlinux.org.uk designates 2001:4d48:ad52:32c8:5054:ff:fe00:142 as permitted sender) smtp.mailfrom="linux+clang-built-linux=googlegroups.com@armlinux.org.uk";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=armlinux.org.uk
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent:sender
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=GD0khECaNrUIzBzJWUAc/sFiA2GwYx0CdWykEU9zSaI=;
        b=QNYOh6WEpfDNpKxPsrqASF+MnQD5c6p9E+YPJ9iKZopsfAgRz1w9swXWh483Z+5kbp
         6C4fj1XMP2Cur+KpsoUJke3jedgtyrHpYnifQHD22tUJ4+IRowq/3YUlNMr6us5A78fg
         AHaCUZ8935+KCasghSOruTmnDGRS1kV8w4oCbQGgSQZWQ3xJ8yUHD5y+l5Rh8ooj14vq
         VDCylY4aZyH5ePmxKapJSgKc9/SWpQu/T5zXwX+Q0MzjBO2Olf8IXLpX1T+9yahOZPue
         IRIG4626mqRhGvjD2cDNfKhEHgtoejaJWFqekhbFKqe2IBw8mYwrhJ6/okkajgYwWs5X
         g0GQ==
X-Gm-Message-State: AOAM531JLThZFFSES3B7N9sZ2+AyUqQpOOv8Qxi4pmUw86Y7VwQygazE
	08BTbT5KxCzAp2HA2anRK+s=
X-Google-Smtp-Source: ABdhPJw3pvNbYqEv7J6dRJ/eaKkWzM02ewsu+FqR+rV69wod94loqRvD1ZGqsXXDPpRcMFlp1NB63g==
X-Received: by 2002:adf:a491:: with SMTP id g17mr19166035wrb.132.1593454035515;
        Mon, 29 Jun 2020 11:07:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:a94e:: with SMTP id s75ls157609wme.3.canary-gmail; Mon,
 29 Jun 2020 11:07:15 -0700 (PDT)
X-Received: by 2002:a1c:1bc4:: with SMTP id b187mr18843164wmb.105.1593454035001;
        Mon, 29 Jun 2020 11:07:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593454034; cv=none;
        d=google.com; s=arc-20160816;
        b=DvuC62j5wXxx64H4tKiA3sPmIGO0iHSIfg/qPPl9hhH8y+DoO6Q3N49OLtonM43N8I
         NNnQ8QBHmUZZZwmGZffUpVXHGXq3WXADFtEm4Guux6N/A3RC4b/5mknWCyoxwP8Hn5Vi
         ATGqwM2hMRvvilHCFNLz56k6Z03UJ1caDRtjiZlUnKuHJXfkBjWJyhLsQNxb+BSPflof
         vwy/nlzf2WBJ4PxgTOhNMUEWFz6FppiQ+4I5AQXVQuuQqoxVoGeHy+pjk7y+NWjukRQD
         uueuE89t03dlYKXS16wUAl8pSAHFfCZUbET34YPJRVgdwOLQMh35ko8djhBFuUeNWG11
         9QdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=sender:user-agent:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:dkim-signature;
        bh=5qVKDp30/o2rhfTCB6YKi/X0MnGqhZlFhKf1/sMhnOc=;
        b=IS7OwElqhkuh+vBXp8XoTrXQu7JFAghc9AU7VvHJw4S0N+Db6JDRF+9DaSHSpJbLde
         OMp6hRkqOkGoVSZDu/Xb2BX3LnSBl8w2esYX7TLSseromti/LIeE7D2g3a+k9+I/ONCH
         LUFwbgK+fM1x28kdpsyk5kPtjqPhfhlhgJ5M4Ol241lmvaSghlymkYCBCVT495EcGvHw
         fTkSZ9/ggY2ZxJwI36928w9ZejskxxKT+1xKkUYmitwntGwKUCO0ZMYGgpaFa5phSK6t
         Tirsnzn9fAUN8j7LJbCQuL6ZZmtFvJDnSCaXFINGHHNWBqFEOpqGoIH1vYaTHKHSvWLw
         KKWg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass (test mode) header.i=@armlinux.org.uk header.s=pandora-2019 header.b=CgyZRCI4;
       spf=pass (google.com: best guess record for domain of linux+clang-built-linux=googlegroups.com@armlinux.org.uk designates 2001:4d48:ad52:32c8:5054:ff:fe00:142 as permitted sender) smtp.mailfrom="linux+clang-built-linux=googlegroups.com@armlinux.org.uk";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=armlinux.org.uk
Received: from pandora.armlinux.org.uk (pandora.armlinux.org.uk. [2001:4d48:ad52:32c8:5054:ff:fe00:142])
        by gmr-mx.google.com with ESMTPS id u17si38610wrq.1.2020.06.29.11.07.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Jun 2020 11:07:14 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of linux+clang-built-linux=googlegroups.com@armlinux.org.uk designates 2001:4d48:ad52:32c8:5054:ff:fe00:142 as permitted sender) client-ip=2001:4d48:ad52:32c8:5054:ff:fe00:142;
Received: from shell.armlinux.org.uk ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:33188)
	by pandora.armlinux.org.uk with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <linux@armlinux.org.uk>)
	id 1jpyBO-00086P-1w; Mon, 29 Jun 2020 19:07:06 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
	(envelope-from <linux@shell.armlinux.org.uk>)
	id 1jpyBM-0007KD-3O; Mon, 29 Jun 2020 19:07:04 +0100
Date: Mon, 29 Jun 2020 19:07:04 +0100
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
Message-ID: <20200629180703.GX1551@shell.armlinux.org.uk>
References: <20200629061840.4065483-1-keescook@chromium.org>
 <20200629061840.4065483-15-keescook@chromium.org>
 <20200629155401.GB900899@rani.riverdale.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200629155401.GB900899@rani.riverdale.lan>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-Original-Sender: linux@armlinux.org.uk
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass (test
 mode) header.i=@armlinux.org.uk header.s=pandora-2019 header.b=CgyZRCI4;
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

On Mon, Jun 29, 2020 at 11:54:01AM -0400, Arvind Sankar wrote:
> On Sun, Jun 28, 2020 at 11:18:37PM -0700, Kees Cook wrote:
> > We don't want to depend on the linker's orphan section placement
> > heuristics as these can vary between linkers, and may change between
> > versions. All sections need to be explicitly named in the linker
> > script.
> > 
> > Specifically, this would have made a recently fixed bug very obvious:
> > 
> > ld: warning: orphan section `.fixup' from `arch/arm/lib/copy_from_user.o' being placed in section `.fixup'
> > 
> > Discard unneeded sections .iplt, .rel.iplt, .igot.plt, and .modinfo.
> > 
> > Add missing text stub sections .vfp11_veneer and .v4_bx.
> > 
> > Add debug sections explicitly.
> > 
> > Finally enable orphan section warning.
> 
> This is unrelated to this patch as such, but I noticed that ARM32/64 places
> the .got section inside .text -- is that expected on ARM?

Do you mean in general, in the kernel vmlinux, in the decompressor
vmlinux or ... ?

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTP is here! 40Mbps down 10Mbps up. Decent connectivity at last!

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200629180703.GX1551%40shell.armlinux.org.uk.
