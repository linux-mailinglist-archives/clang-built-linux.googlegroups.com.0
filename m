Return-Path: <clang-built-linux+bncBDAZZCVNSYPBBXMGUT3QKGQEH7KSMWY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id 67B1D1FBD23
	for <lists+clang-built-linux@lfdr.de>; Tue, 16 Jun 2020 19:37:35 +0200 (CEST)
Received: by mail-pg1-x53a.google.com with SMTP id x186sf14884118pgb.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 16 Jun 2020 10:37:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592329054; cv=pass;
        d=google.com; s=arc-20160816;
        b=bzZkHbyI2N/5k3BGNTBHovEY7CKgdsks7pCwVSA98ZujKXpCBCJnrcn0n/uturMWXl
         IyeTLTFip1QwBHb/v0KJIO+PKUAxFPW96ogfPOageYxDYwSjCdd1KbynhBlwqHWr4e28
         7oPhTOM9OnjwgnpCoVlBJc80SwCdRD0ybiX75R1F9jOzpzfi0mJKtTpw/6jpnPrS4WtS
         y9eplKVPqrvyaV7czQ3OmZR/9QKSmIwbR0jdWxr0j671LVJPEsqT/qlF/dNnaeDv8fKY
         +c3VQZfRNwBXpAKx3cFevzu1BMY2Ro5yQrn3BfychcNFLk1+EkgCAng5FnsbtnslRpCx
         4ukw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=LAoQ3NLngPadQRCRbJ7ga2VlcE9NpWuc2tY0iYhh7h4=;
        b=KHrGxzLBbM5kGqbocYP/Jp125bfZF3Ofhz/ed24M3md3LIinT/vLi7AIAyFLejRDU/
         z/pD+6Rb32j2Lf/yKv/UTCvMXTB/A3SlNMK17QL7QR55KNKgMdgYlSckNPRl4zJli5Rv
         qjzrY6Q73B4nnU4Xp2it3+Yfmo6Dv6MCR7NbuTzsWVguex38UTDv13LoU/0GKGh2fkg2
         LDpx0ABY0d8vciuv09WgDpANQKtxrhUz6VhQ7cMmoYzRwjrOyQFyYQTK7ROpohqMyZAE
         AbCE3vPqHOZMzYaCXZePDw0g1Shw4vA+AlGe1kcBldjIdZhfHc3giZZazvUMUs4GXHsH
         4brA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="QJ5/jT9x";
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=LAoQ3NLngPadQRCRbJ7ga2VlcE9NpWuc2tY0iYhh7h4=;
        b=gyBJ6uqxAH34aRaCsuirxdoY1fQTRWr7bjC8rk+kH/AaGNAsY4CL36J3N8XXpnAf3j
         zJ9dLRgK4HpNOPuPnytYc4RHldjwPt1EGOW2L+7KpcGEiAV+Z4ECq+6vaxkt7USDBe7b
         9ZzP6x///N7yW2jgHUDkzGneYi67GvDFr0ZHJ6wu2XKF7lSsUSV2vfKEPoU19IXJsX8H
         Ck72oH32NxdXVkYf38UK2t58O3Vlnr89/G1hMiCvS2pdQPJHdpqWfZDMHcqbqwEUXVUP
         tuJEMyHSRswmq31AIIz+8U6d3uSwBH8m38MdynkLZaK0KUZMjQK4hG4poNbwhFUVrPA2
         0fwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=LAoQ3NLngPadQRCRbJ7ga2VlcE9NpWuc2tY0iYhh7h4=;
        b=QvnsNOr8QWc/UHU5N7h/pNZRKb7q9Bi2QaeZk9is5Ou/y/ZuO9gQer7PKnhskQ8n6d
         Lut9SxXIS0QY11I1zyTvGJIrSJ5+fXx1MFo5OIkWh3JKZYbJPvaFBpnMXPbm/HtIte0U
         NWnwaW9gzo/Hlmw/bpkCmubhHIsOwaVBXOxD7NoEBcyQpnKYiS4kpMF3mkqGJ1NylEQd
         nr7F3SmJv4NnJiU2OHHQFfQSHMlAuQPYWR7yBl3lboTfaVQwRbh6qeyP+botT1uSOYNk
         HGhCSudyiakAM1t2X8/saXziWaARKbpua28RGDR8am4+/T2HnfNqZIFdNcqLiYMzXMfw
         rIug==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533lotlYTkekFPN2zJglod+2Dg/2XP59p2e/QVUfrsvwyIaQLe6z
	rLODFztHEIqKsIsxtlqMcKY=
X-Google-Smtp-Source: ABdhPJx/GPEDzOTk909moLr4WOqchUTpJFwczOhLp7OLeWDs1hL77KIuEWfo/YK/8tuCA2L80kK0Qg==
X-Received: by 2002:a63:461c:: with SMTP id t28mr3051892pga.316.1592329054005;
        Tue, 16 Jun 2020 10:37:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:d34b:: with SMTP id l11ls1694421plk.6.gmail; Tue, 16
 Jun 2020 10:37:33 -0700 (PDT)
X-Received: by 2002:a17:902:d688:: with SMTP id v8mr3130715ply.215.1592329053564;
        Tue, 16 Jun 2020 10:37:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592329053; cv=none;
        d=google.com; s=arc-20160816;
        b=m0047mqeqvnNHK6jepRRrLvEx7rtyxHBYkVBl3IEhVRxNBZfjpl6zvWlgjdhfPjBhY
         UutNSddf30+3wEQYH65/Qh0Tc+2qnHmUqCryFYlTnSd60H3v5sUhNAnPUmFeCrhVDzAI
         dPK4DK3SRJGInKbikR7OOCqFFlDpb6bKcgXThmFOPGHHALEyWAwXgNzP1bnnw6mZ0KpE
         zyzikIcNfmz6h1aTucwT6tjCO3amKX2vpZjMO+vKxfsveHzHRr55F/MZDipI86hlxGNa
         Ajxcutz955tsqT1QUyLHsxgD/2rfe0ZZDsY0Qc0ycRumkIwKEJEYa36cDm2alGZ7rCpd
         4tng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=kJ4mvw5tKco/TJYeEYFv5uL32Bj7IrYB70USj03Po4Q=;
        b=iTy9JHBgF8i9LOdnIhVZc+fGrkqHvsbV4Ds+V3KIiEf3N7D1wwdI0XX3JUlSTtok5m
         8+/hd/sriJc5koyqaBON1t0e7ZYQg4Cg9jb73jM1uzMYAfqsl8folCnxjvoqzPD5JfLt
         OFWtaw8HgXgSIblphTvCXsf0OeWQzEHYk2ELp/vmWKhGIk7YDiagMZ8KkyfmSG+MgRN6
         F978m1XpjAFg03XqX0nHrqEbHkmWCwTu7I+tgxTB4FfwV8nbV+9lXGvYp6RqGoK/g6TX
         sCno4EdQE1pnGJsRXLG3Yzuaxh8gQtg6aimKXl0QO8usxZDy5lgcT/mmfGP0g/3w0ZN1
         tbNQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="QJ5/jT9x";
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id d3si138259pjw.0.2020.06.16.10.37.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Jun 2020 10:37:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 9893621475;
	Tue, 16 Jun 2020 17:37:31 +0000 (UTC)
Date: Tue, 16 Jun 2020 18:37:28 +0100
From: Will Deacon <will@kernel.org>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Mark Brown <broonie@kernel.org>, ndesaulniers@google.com,
	clang-built-linux@googlegroups.com,
	linux-arm-kernel@lists.infradead.org, mark.rutland@arm.com,
	catalin.marinas@arm.com, android-kvm@google.com,
	daniel.kiss@arm.com, tstellar@redhat.com
Subject: Re: Clang miscompiling arm64 kernel with BTI and PAC?
Message-ID: <20200616173728.GC2129@willie-the-truck>
References: <20200615105524.GA2694@willie-the-truck>
 <20200615115337.GG4447@sirena.org.uk>
 <20200615120223.GC2694@willie-the-truck>
 <20200615143105.GA2283265@ubuntu-n2-xlarge-x86>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200615143105.GA2283265@ubuntu-n2-xlarge-x86>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="QJ5/jT9x";       spf=pass
 (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=will@kernel.org;       dmarc=pass (p=NONE sp=NONE
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

On Mon, Jun 15, 2020 at 07:31:05AM -0700, Nathan Chancellor wrote:
> [+ Tom, the clang 10 release manager]
> 
> On Mon, Jun 15, 2020 at 01:02:23PM +0100, Will Deacon wrote:
> > On Mon, Jun 15, 2020 at 12:53:37PM +0100, Mark Brown wrote:
> > > On Mon, Jun 15, 2020 at 11:55:24AM +0100, Will Deacon wrote:
> > > 
> > > > Here, the switch statement has been replaced by a jump table which we *tail
> > > > call* into. The register dump shows we're going to 0xffffd68929392e14:
> > > 
> > > > ffff800010032e14:       d503233f        paciasp
> > > > ffff800010032e18:       a9bf7bfd        stp     x29, x30, [sp, #-16]!
> > > > ffff800010032e1c:       910003fd        mov     x29, sp
> > > > ffff800010032e20:       aa0803e0        mov     x0, x8
> > > > ffff800010032e24:       940017c0        bl      ffff800010038d24 <kvm_vm_ioctl_check_extension>
> > > > ffff800010032e28:       93407c00        sxtw    x0, w0
> > > > ffff800010032e2c:       a8c17bfd        ldp     x29, x30, [sp], #16
> > > > ffff800010032e30:       d50323bf        autiasp
> > > > ffff800010032e34:       d65f03c0        ret
> > > 
> > > > The problem is that the paciasp instruction is not BTYPE-compatible with BR;
> > > > it expects to be called with a branch-and-link, and so we panic. I think you
> > > > need to emit a 'bti j' here prior to the paciasp.
> > > 
> > > I checked with our internal teams and they actually ran into this
> > > recently with some other code, the patch:
> > > 
> > >    https://reviews.llvm.org/D81746
> > > 
> > > ([AArch64] Fix BTI instruction emission) should fix this, it's been
> > > reviewed so should be merged shortly.
> > 
> > Cheers, that's good to hear. Shall we have a guess at the clang release
> > that will get the fix, or just disable in-kernel BTI with clang for now?
> > 
> > Will
> > 
> 
> This will be in clang 11 for sure. Tom, would it be too late to get this
> in to clang 10.0.1? If it is not, I can open a PR.

Any update on this, please? I'd like to get the kernel fixed this week.

Cheers,

Will

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200616173728.GC2129%40willie-the-truck.
