Return-Path: <clang-built-linux+bncBCSPV64IYUKBBNWY6GAAMGQEQA4YZCY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-f64.google.com (mail-lf1-f64.google.com [209.85.167.64])
	by mail.lfdr.de (Postfix) with ESMTPS id C240630FF93
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Feb 2021 22:50:46 +0100 (CET)
Received: by mail-lf1-f64.google.com with SMTP id w8sf2369699lfk.17
        for <lists+clang-built-linux@lfdr.de>; Thu, 04 Feb 2021 13:50:46 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612475446; cv=pass;
        d=google.com; s=arc-20160816;
        b=nQRPThHEQSRWZ2TFYNa38lTC5Qq50BOj1IF5sJC0ALFOocbkQ30/22i7QqGbx96EJs
         drHE+IB1rtQa0SatyFfJaFsP8LCVH6ocS13B2kjdNO7KYu6rikVOqhdNBLjKkbL+zbnL
         aM7ssG/RZxABOG7atsMffUdbcNPUVAEpAp9Gm9jZNlzklOk//qF0zAZBTbYXgALF5u2S
         QDq3cL/hyDQFJX/fH3/uUIoO1gSUYV/hwszDh+/4GY9fuWd384IJiEtEZiSxnlqwgbkf
         b6eCM7XMhgzjYXfk188q5vbzP6ocXIJ01qsmDUw+aDvQIN0MTm8VmgRow2yczMRZIurk
         jtYw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:sender:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date;
        bh=k+KgoHFKmklabPclk+PzjroJ6Vcg7FpfGE6VXZm/bZ8=;
        b=Dduvk6MP8eBIDpO/cqJ8TabshngKs4jUnBxYEoDS+Dw4CzHKWYjbhAxpUwyNTcp8E8
         0Ax/4PPD6EziOkJV3iF/EzCIpl6TmHTtH/IroXRfvnxHnjtCM1mxjSuBZhxux3978Ft6
         iSo5yLxw8uF9x3c3iWaQJGkqYRo6YE4WgHhJ9t5jEiLey25mcnmCLM1kltP2zeGwQR2f
         utRnkJuzx02SbO6WPeoOGMKDFMJRp9ss4Bb9fMvVnrW6e+qWc9t9yu9zuAf7pa7diCpk
         z4RWiHtvMmMGN4f0cli0fIJ9H6uYQyWm0PUGy2rwKifJaYxojh2QFrG1KoE9y2T+konA
         RSOg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass (test mode) header.i=@armlinux.org.uk header.s=pandora-2019 header.b=zXDdgagB;
       spf=pass (google.com: best guess record for domain of linux+clang-built-linux=googlegroups.com@armlinux.org.uk designates 2001:4d48:ad52:32c8:5054:ff:fe00:142 as permitted sender) smtp.mailfrom="linux+clang-built-linux=googlegroups.com@armlinux.org.uk";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=armlinux.org.uk
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent:sender
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=k+KgoHFKmklabPclk+PzjroJ6Vcg7FpfGE6VXZm/bZ8=;
        b=d/NUwMfl3T25aWD0Xu+HWXmaLSFT3wX1q0QMCj6fof6xRCETRgvSGListcWpPyV5XU
         KX1hgDpXgTCoDS/yj9D603Pbi8BcTFD2SPRxhCQKmSUb0TY0cG5nmEN/zWZTIjKBTFkX
         iflA4JmKtk8xd38eY6EezXxaS56vN4gkRYppPw9AZG+j7BVLfRp0rHEXXa4GgooKCSOr
         REdl6ZBrdgNIkqn85Lvp779hBIzQfSmQgn3LkYJRLQWBIhLJFdKC1nd5NRJrSHnuhhEo
         yUmvlldkxvEJD+bJFUozPV7modBSsaynIN4p+KhR7N4hIUL+zu6zS4mRHOvOH9BIFgM/
         Owgw==
X-Gm-Message-State: AOAM531w/ZxAt9OvfuWvvV9/7Fva3C9VT2RTM+WvX19MkCAW59VtFkyc
	5ZJ/+iTgrIsKH8QHe1t6i28=
X-Google-Smtp-Source: ABdhPJzC8cJEEBTyJIIpz9ojn+VK2dYaDGlfYR/7wfp4/TubPm+2YEdyn3OAsARHgkkRcHFMUjBDIw==
X-Received: by 2002:a05:6512:745:: with SMTP id c5mr726373lfs.489.1612475446289;
        Thu, 04 Feb 2021 13:50:46 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:651c:285:: with SMTP id b5ls1302680ljo.1.gmail; Thu, 04
 Feb 2021 13:50:45 -0800 (PST)
X-Received: by 2002:a2e:9d87:: with SMTP id c7mr825774ljj.80.1612475445341;
        Thu, 04 Feb 2021 13:50:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612475445; cv=none;
        d=google.com; s=arc-20160816;
        b=Ma40CLWFcSkjn6xZGBZV/uHjXzX0o6VEiufXo/K996CzofgBTL6KqUhzWljd/rRVv0
         3a6a2guGPUYI/PVfyjDcHBr5xaZjPJHF8j/DtZtAWJp2Tot3HAch9Imu/wS7whCiVpS1
         nxdIRtHB1vFKGPpdS6Xvc4wxj3sXPZWVWo9ncQ/3T0bpNRZkIzzXbT6IPXUgTuHQltPi
         okILie+cYpJ56tqh/RyU+PiQOhA+zw6Vf+OPLT5ysvpByokRBIHtqnhQE7BCz24L5x82
         OMLL/tLSaeBJ5v8V0jL3r7M/nRvNRerxFz57sSvHDWm4f6mPZEocU66MlfV9971MKik8
         /L1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=sender:user-agent:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:dkim-signature;
        bh=yPJqHn1HxKlAeb4Xz5DuRyDCntFfH5AIxoghocthOno=;
        b=xpXjHrJb8zqSZqigZhpgaoIbGoVyoGEkCI8I87Kx6/9X3BIFPrZlJYMBHnkyYOd1Yf
         /bwwV65WrtgQ34UnLULa0ha9vJxy17lIkg7KYPPMWlEq99A3X+hrbcQpi+I8OIDTw9Vv
         5/5EbJQJMATBT9HDZ5XF4rK30/xIl4/1xj0pfMMQshOFERu0Bg0j7zGP9nV2CEZu8HLu
         KK9kQV0o/HCtEbz/qa9j9MoQVTsgBsTdpbZG16ZAQ9zSpxE0logtMx0wTNaD7png1w9R
         bs8iQB7pP9kTMQbL39JANvDOvfC6sN073pLyffQLZVOj2/INumRFqutjATVBdU/Uw0xA
         cDDA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass (test mode) header.i=@armlinux.org.uk header.s=pandora-2019 header.b=zXDdgagB;
       spf=pass (google.com: best guess record for domain of linux+clang-built-linux=googlegroups.com@armlinux.org.uk designates 2001:4d48:ad52:32c8:5054:ff:fe00:142 as permitted sender) smtp.mailfrom="linux+clang-built-linux=googlegroups.com@armlinux.org.uk";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=armlinux.org.uk
Received: from pandora.armlinux.org.uk (pandora.armlinux.org.uk. [2001:4d48:ad52:32c8:5054:ff:fe00:142])
        by gmr-mx.google.com with ESMTPS id l186si344759lfd.13.2021.02.04.13.50.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Feb 2021 13:50:45 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of linux+clang-built-linux=googlegroups.com@armlinux.org.uk designates 2001:4d48:ad52:32c8:5054:ff:fe00:142 as permitted sender) client-ip=2001:4d48:ad52:32c8:5054:ff:fe00:142;
Received: from shell.armlinux.org.uk ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:39256)
	by pandora.armlinux.org.uk with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <linux@armlinux.org.uk>)
	id 1l7mWK-00076a-3E; Thu, 04 Feb 2021 21:50:36 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
	(envelope-from <linux@shell.armlinux.org.uk>)
	id 1l7mWH-0005Xk-M5; Thu, 04 Feb 2021 21:50:33 +0000
Date: Thu, 4 Feb 2021 21:50:33 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Guillaume Tucker <guillaume.tucker@collabora.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <nathan@kernel.org>,
	Ard Biesheuvel <ardb@kernel.org>,
	"kernelci-results@groups.io" <kernelci-results@groups.io>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Nicolas Pitre <nico@fluxnic.net>,
	Linus Walleij <linus.walleij@linaro.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>
Subject: Re: next/master bisection: baseline.login on rk3288-rock2-square
Message-ID: <20210204215033.GD1463@shell.armlinux.org.uk>
References: <CAMj1kXFog3=5zD7+P=cRfRLj1xfD1h1kU58iifASBSXkRe-E6g@mail.gmail.com>
 <c0037472-75c8-6cf9-6ecf-e671fce9d636@collabora.com>
 <46373679-a149-8a3d-e914-780e4c6ff8be@collabora.com>
 <CAMj1kXEshuPTrKvN4LpXQMftHJG+yH8+fgU7uVc6GYn0qd8-xA@mail.gmail.com>
 <7c685184-8688-9319-075b-66133cb0b0c3@collabora.com>
 <CAMj1kXH_CCYyd5zNVRL=KWpBXtsKamV7Bfg=O1YWBJL0f_eXLQ@mail.gmail.com>
 <CAKwvOd=ziPWHmBiPtW3h2VYLZ-CTMp4=aEonmMLM7c=Y0SeG1Q@mail.gmail.com>
 <20210204181216.GB2989696@localhost>
 <CAKwvOd=UYuKPp6rO7aWGFEsc9yLa_UCLnAL-vwqzi_5sZg7O3g@mail.gmail.com>
 <253b2987-c8e9-fcb6-c1b9-81e765c0cc2a@collabora.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <253b2987-c8e9-fcb6-c1b9-81e765c0cc2a@collabora.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-Original-Sender: linux@armlinux.org.uk
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass (test
 mode) header.i=@armlinux.org.uk header.s=pandora-2019 header.b=zXDdgagB;
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

On Thu, Feb 04, 2021 at 09:31:06PM +0000, Guillaume Tucker wrote:
> On 04/02/2021 18:23, Nick Desaulniers wrote:
> > You're right, I missed `LLVM=1`. Adding `LD=ld.bfd` I think should
> > permit fallback to BFD.
> 
> That was close, except we're cross-compiling with GCC for arm.
> So I've now built a plain next-20210203 (without Ard's fix) using
> this command line:
> 
>     make LD=arm-linux-gnueabihf-ld.bfd -j18 ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- LLVM=1 CC="ccache clang" zImage
> 
> I'm using a modified Docker image gtucker/kernelci-build-clang-11
> with the very latest LLVM 11 and gcc-8-arm-linux-gnueabihf
> packages added to be able to use the GNU linker.  BTW I guess we
> should enable this kind of hybrid build setup on kernelci.org as
> well.

...

> And this booted fine, which confirms it's really down to how
> ld.lld puts together the kernel image.  Does it actually solve
> the debate whether this is an issue to fix in the assembly code
> or at link time?

Well... as I mentioned previously, we don't really understand what
is going on between the decompressor running with the caches on,
turning the caches off, jumping into the decompressed kernel, and
then getting to the v7 setup code.

The results from various attempts at solving the problem which lead
to Ard's original patch that caused your breakage were not making a
whole lot of sense (I think I wrote that all up in a previous email
thread, so won't repeat it here.)

So, I was slightly nervous about merging Ard's fix - and your report
suggested that there is indeed more going on here that we don't
understand.

When I was tracking down what was going on, I had this patch applied
(I've had to recreate it, so may not be exactly what I had), with the
DEBUG_LL stuff appropriately enabled. It may be worth applying this
patch, enabling the DEBUG_LL stuff appropriately for one of your
failing boards, and try booting it.

You should get two strings of identical hex numbers that look
something like:

ffffffff480000000900040140003000000000004820071d40008090

If they're looking like instructions, for example:

ee060f37e3a00080ee020f10ee020f30ee030f10e3a00903ee050f30

Then it's likely that you are seeing a very similar problem as I was
without Ard's patch. If you do get instruction-like content, then
you will likely find the sequence of instructions in the decompressor
code.

diff --git a/arch/arm/mm/proc-v7.S b/arch/arm/mm/proc-v7.S
index 28c9d32fa99a..19fa93ae282c 100644
--- a/arch/arm/mm/proc-v7.S
+++ b/arch/arm/mm/proc-v7.S
@@ -475,7 +475,39 @@ ENDPROC(cpu_pj4b_do_resume)
 	ldr	r12, [r0]
 	add	r12, r12, r0			@ the local stack
 	stmia	r12, {r1-r6, lr}		@ v7_invalidate_l1 touches r0-r6
+	ldr	r0, [r12, #0]
+	bl	printhex8
+	ldr	r0, [r12, #4]
+	bl	printhex8
+	ldr	r0, [r12, #8]
+	bl	printhex8
+	ldr	r0, [r12, #12]
+	bl	printhex8
+	ldr	r0, [r12, #16]
+	bl	printhex8
+	ldr	r0, [r12, #20]
+	bl	printhex8
+	ldr	r0, [r12, #24]
+	bl	printhex8
+	mov	r0, #'\n'
+	bl	printch
 	bl      v7_invalidate_l1
+	ldr	r0, [r12, #0]
+	bl	printhex8
+	ldr	r0, [r12, #4]
+	bl	printhex8
+	ldr	r0, [r12, #8]
+	bl	printhex8
+	ldr	r0, [r12, #12]
+	bl	printhex8
+	ldr	r0, [r12, #16]
+	bl	printhex8
+	ldr	r0, [r12, #20]
+	bl	printhex8
+	ldr	r0, [r12, #24]
+	bl	printhex8
+	mov	r0, #'\n'
+	bl	printch
 	ldmia	r12, {r1-r6, lr}
 
 __v7_setup_cont:

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTP is here! 40Mbps down 10Mbps up. Decent connectivity at last!

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210204215033.GD1463%40shell.armlinux.org.uk.
