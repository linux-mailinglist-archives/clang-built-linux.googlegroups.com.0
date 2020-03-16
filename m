Return-Path: <clang-built-linux+bncBDDL3KWR4EBRBZOCXXZQKGQE42YGTAA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33e.google.com (mail-wm1-x33e.google.com [IPv6:2a00:1450:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id 75F001869F2
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Mar 2020 12:22:13 +0100 (CET)
Received: by mail-wm1-x33e.google.com with SMTP id w12sf4488966wmc.3
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Mar 2020 04:22:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584357733; cv=pass;
        d=google.com; s=arc-20160816;
        b=BxGBGx69jnVslljg/OY2Y3em4tN9rK/UwAN8duudSaCCe+Y5g1uuiMZNyA/3GeV34p
         jw9/Vbhquqfw/U1akIEms8pkqbqZqBjAJct4YbMYvXpfeHNx8ahMV6HokfRUygAV2FOe
         Y9K7th2Evo6EaQg3SXd+rwS98JSuPFMFOESU5FoxeeY52fsbQ+NgMd/J41Wig5lW9T5J
         Ah+Y3jmhXObm+z+UOZkcGw9SA8zBgp8PLMWKd6/rZcGEQ/hPj0FbBzPPnzASZc+8YNYF
         qhsJH2x7khNXhNBGjXKJ2Ntaau2CoS5mPaVBQOaeGDEGq8FvjD0FiPIIwNtdDNQg5Sh/
         Bqsw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=OIbkxQi1GnQCsdlQV9Iisrl2R8VLIzTlhN4uHPvU1M4=;
        b=etHLtyJ37COhTdXKm/R1GnMSim+1FMY/kpR9e/8Go56+WB88Rg6y8N1RnaP3wOMVqw
         2LSiXrrARagc0DEXnN9+wLaZGe2lxfYcgL70uxXNHYrz0c6E3dvcRgUW6b2MQCn57T9a
         AwIol5C5s83/m0OGk6scPK9FkP1ow3/Z5F4l1yEfahaTb4yvBF/ay+3HsL7PVCrYQGjm
         byrg7NAjXpjq0Z/iPncoRNgNa7BCqSmJ11NZojx621Frvq68xFUG9pwFvOYFVkk1A2HR
         E2Vq+30sq9G6NjcllIfkYNqMGWt2UaO0Y5GZcs0j8PcensujoysbMDHEmIqBc+R2WnKi
         QxoQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of catalin.marinas@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=catalin.marinas@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=OIbkxQi1GnQCsdlQV9Iisrl2R8VLIzTlhN4uHPvU1M4=;
        b=jIYk8iD5bXs7ilml+eqMjyNqUFk6pDl2yVeHyFKOv2yAaxsFS3aJ8H4yYuSLxGDJzu
         2wPe8JcmP7BB4oXlh5rqdATg29a5c0c4/bQmANwmE20TApXCJVYwkHxCePdCI4m7CgsW
         I+QD1dQP8GtUWJBGzi3ZEFrCOiqn1aDUR70o/8IBl0uGDRyrkoYeD1Jfs0yN5DzIOffS
         IgVwijcMq6EPHdOLBvRWAQc97XT/J6pjVCAh8y1GalMIRjnX7J0teBn9+xSf3kr9qXw/
         JyzVAZptWWFV7KzTe/2YS3Dp4R4t1VcinHjJ4k9n8tkSTHBuBXA1UxqECMr5AAUabzgZ
         XAGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=OIbkxQi1GnQCsdlQV9Iisrl2R8VLIzTlhN4uHPvU1M4=;
        b=WhkTG14tX3kXMdBQHMdwBqj4b9D3Inec2GFuF7/yjZen5M3QSSAj3JeCusmOiYfJTc
         ru3FZvXOSgNKB6gGzOF/oxbyHmcfsUJ7s0EvD4FDIYRQO6vg+u3/PJPrrPH45wAUi8P7
         7tbg+5/Q06s7CEw1PeFHlxnH1FDyV6zvL4JTAzx4kZkHbbnwJtiw94E1lrOhC8HxyOGh
         +5NXhV4qdrJ/SCRwr2Io5dOw/D2kvr/8y2rZchRIGFoo71seRZ5kLznGnjpusoP5XfjV
         /oOnQ9mqmTPU+RTJXnUZg+h2FmyXNJXqBzsuZB4Bh1sOOHFy2vUtaQ8e9qzqlVtbsGLx
         xGLA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ0xhVUA4Pw/f8dU4wO5k7HXCx9I/Tj8dBu8/g45geq8ADywDQSG
	XgWlKiixmWFTamJUQQyBESQ=
X-Google-Smtp-Source: ADFU+vtErqMM2Gneh5pcxa6O6DTEhU3Gpng2cDe+QgPftYIq5aW/s2NebXFalBXIRWEUf2ZX/qO+3w==
X-Received: by 2002:a05:600c:2188:: with SMTP id e8mr29034006wme.83.1584357733234;
        Mon, 16 Mar 2020 04:22:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:a5c6:: with SMTP id o189ls6466451wme.2.canary-gmail;
 Mon, 16 Mar 2020 04:22:12 -0700 (PDT)
X-Received: by 2002:a05:600c:210d:: with SMTP id u13mr28048361wml.92.1584357732422;
        Mon, 16 Mar 2020 04:22:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584357732; cv=none;
        d=google.com; s=arc-20160816;
        b=qBnHmUy7h/nGeUZWonyH4Jy6DRdHPcyB9yfVWJczAhUUnjiUSPB1ytLWS1aHMVRUOF
         cp0dWKt7ZZBtacvy1y+6eIr5MO9FdUee10ZSyf1O67GZUJamGBP8MhyxjMU4TkZ2D9HP
         IlcoSQtcwrx/vuGdhT16XL8eZXbGSE+kj03zQu2WxdOSzZGD5thujdcvs1loPkUkPCMP
         tmzH/CzWeopMyQCeG/MjhnJL6AmVOoJzSvro+dAfkIiiYfhE+HHhsQ6lY9sm8k9PVbLm
         Iz5g80dcj/RG5GavZeUSBcPACRY1szhXZzYqtWKoWOMCCV/nVw66LIeVlVppqYdEtlS2
         ffKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=6XTPHTzj3u7TOm4TxpxF7v13zTVlviaVH6cgochZINw=;
        b=OvoqSmnKpuwVuAA8cMuroTMoT/DZJhLEhwh9sfzH3GMDp/UWpxY6/K865ClaEoKOb7
         1N7sfVjjpX5KhRfxGxmDd2D/69Q73iMhLX5pbh+tjWoMWrPMSC9hA6YZOBIFbvQyhncM
         TQKIJVRrcvpV3g9zVYTPbgZzqn29BglhUW9DfZDBUDvzE5olYjAtbxpTLvie9WqFjvUs
         xSCmUNa8w0KvL8s97Hq2SWPLuWkSX3h0ttIKxISrPa1qWfqKfUrjk1a7ITmd+Ncehhtc
         YgH70U+8WLw6ryHpZe5DZziRwfMOc3fdNniF7CN0z9W7A0awoue0GXuwahkGd3h5huyV
         E2YA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of catalin.marinas@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=catalin.marinas@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id e12si276679wru.1.2020.03.16.04.22.12
        for <clang-built-linux@googlegroups.com>;
        Mon, 16 Mar 2020 04:22:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of catalin.marinas@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A8FC430E;
	Mon, 16 Mar 2020 04:22:11 -0700 (PDT)
Received: from mbp (unknown [172.31.20.19])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8238C3F52E;
	Mon, 16 Mar 2020 04:22:08 -0700 (PDT)
Date: Mon, 16 Mar 2020 11:22:06 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Cc: linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-mips@vger.kernel.org,
	clang-built-linux@googlegroups.com, x86@kernel.org,
	Will Deacon <will.deacon@arm.com>, Arnd Bergmann <arnd@arndb.de>,
	Russell King <linux@armlinux.org.uk>,
	Paul Burton <paul.burton@mips.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Andy Lutomirski <luto@kernel.org>, Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>, Stephen Boyd <sboyd@kernel.org>,
	Mark Salyzyn <salyzyn@android.com>,
	Kees Cook <keescook@chromium.org>,
	Peter Collingbourne <pcc@google.com>,
	Dmitry Safonov <0x7f454c46@gmail.com>,
	Andrei Vagin <avagin@openvz.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Marc Zyngier <maz@kernel.org>, Mark Rutland <Mark.Rutland@arm.com>,
	Will Deacon <will@kernel.org>
Subject: Re: [PATCH v3 18/26] arm64: Introduce asm/vdso/processor.h
Message-ID: <20200316112205.GE3005@mbp>
References: <20200313154345.56760-1-vincenzo.frascino@arm.com>
 <20200313154345.56760-19-vincenzo.frascino@arm.com>
 <20200315182950.GB32205@mbp>
 <c2c0157a-107a-debf-100f-0d97781add7c@arm.com>
 <20200316103437.GD3005@mbp>
 <77a2e91a-58f4-3ba3-9eef-42d6a8faf859@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <77a2e91a-58f4-3ba3-9eef-42d6a8faf859@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: catalin.marinas@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of catalin.marinas@arm.com designates 217.140.110.172 as
 permitted sender) smtp.mailfrom=catalin.marinas@arm.com
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

On Mon, Mar 16, 2020 at 10:55:00AM +0000, Vincenzo Frascino wrote:
> On 3/16/20 10:34 AM, Catalin Marinas wrote:
> >> I tried to fine grain the headers as much as I could in order to avoid
> >> unneeded/unwanted inclusions:
> >>  * TASK_SIZE_32 is used to verify ABI consistency on vdso32 (please refer to
> >>    arch/arm64/kernel/vdso32/vgettimeofday.c).
> > 
> > I see. But the test is probably useless. With 4K pages, TASK_SIZE_32 is
> > 1UL << 32, so you can't have a u32 greater than this. So I'd argue that
> > the ABI compatibility here doesn't matter.
> > 
> > With 16K or 64K pages, TASK_SIZE_32 is slightly smaller but arm32 never
> > supported it.
> > 
> > What's the side-effect of dropping this check altogether?
> 
> The main side-effect is that arm32 and arm64 compat have a different behavior,
> that it is what we want to avoid.
> 
> The vdsotest [1] I am using, verifies all the side conditions with respect to
> the ABI, which we are now compatible with. Removing those checks would break
> this condition.

As I said above, I don't see how removing 'if ((u32)ts >= (1UL << 32))'
makes any difference. This check was likely removed by the compiler
already.

Also, userspace doesn't have a trivial way to figure out TASK_SIZE and I
can't see anything that tests this in the vdsotest (though I haven't
spent that much time looking). If it's hard-coded, note that arm32
TASK_SIZE is different from TASK_SIZE_32 on arm64.

Can you tell what actually is failing in vdsotest if you remove the
TASK_SIZE_32 checks in the arm64 compat vdso?

-- 
Catalin

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200316112205.GE3005%40mbp.
