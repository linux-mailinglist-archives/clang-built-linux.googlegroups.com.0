Return-Path: <clang-built-linux+bncBAABBV75ZX3QKGQECLSE45A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x337.google.com (mail-ot1-x337.google.com [IPv6:2607:f8b0:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id CF5C1207909
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 18:27:04 +0200 (CEST)
Received: by mail-ot1-x337.google.com with SMTP id z23sf1664449ote.14
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 09:27:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593016023; cv=pass;
        d=google.com; s=arc-20160816;
        b=INRoprEcucZiGYPbIzp4YDGHJoAQ/ISJdUTSn5ysrkVUBGyqomuOxn/R6F16272Gdz
         SM1v5aClQoGwTMq1NIPxQrzCR4/kJTIwrBP1TCo+6RpgFubmnJXNm5HCC/Es7mhaIuPV
         Q4M1v6cMfqUfuUBGGWU4jCz098Rl8Li6JfZMTXtAoJNtvYCRXE39JgnYskrdPxyuM4yl
         8SWsqXtx5JcpvBbvIpSmi1JyMKxDLX2aFcDVbdVG7GnFE7dl05d7oYF7qi1gFWhtG5lY
         49e2fCSD6pe/UhywH3FGZ/oiW+e5ttX3lMhKxiyMXFWP+ZeTpdNKREoQvqdffhtWzrcT
         jekw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=ve+aENgoS7ZaNDTm8fu1hIng13bG7Sg2rNGqaMXUiCE=;
        b=mCs+v0QkNHr9SeO9FHJXSUokjqHoBdkYydFt2DfeMecVOrIXmnagDX3iQUUNSudiXP
         K0Z2N3oUCRvKaK9+l9qaFVoSXIiHIurETEuC4wOJC+SFYI8ADt9mdu1BTBZNT1Elhhet
         1HbaIvQQiqtFIauX6swKpFxmrv6j/cgf3A4IFtGJvYkubEmOtC5D1pOIxE4afVB+qss4
         qWNZMns537LA/jFwpQJ2TkQdiG+gWMxWf9NvGd4nGXo2neSUuqi5O9OdnyKCihX0aMh0
         Ca7XY2j9/cAUT9MRTH6UWlouL/a6YWDhJuImjfN/bU+qZjaTRtIWBIkjVZ+vTeo7XP2M
         MgXw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of dave.martin@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=Dave.Martin@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ve+aENgoS7ZaNDTm8fu1hIng13bG7Sg2rNGqaMXUiCE=;
        b=GGzRyIK27aBdfdCGma+rAqjh+OnHOJJt1JtfF/7bk7p1XJIRM14D1QwloudTR3Obs0
         3GqSn9tL08s/tglTJ5cCqnHoDzt+rEvdtUskBOgyuQGw2w5kfi1YgTF1f/JOZhTF1/10
         wd2n+EnmROk6sfJoYR7EfOrPNWWdVVtqmZurV/QWb3jSGQ/92+daf6O497CFX19xOFuM
         lXBXIkq8G/DwaLJIVQgFgnVb+XNLd3DWuhhxm2ApK76Kpt8ntXcc0DhxC4a5to9XcoZS
         fEpWnhb0BtLRt5cU9y0T5Gue8+w4CHquWe0ueoxgbcmM/e8RqQD6W8E54L81gy7jpwnK
         Fkig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ve+aENgoS7ZaNDTm8fu1hIng13bG7Sg2rNGqaMXUiCE=;
        b=B0t+onBiWK/SxTllVQeYWTMW1uOpzXt7aM//2NK3UFqqs/zTyLOQDIqZwl7WXzFRYK
         Yt/c5tLclIu4JRqpYPtXolAwgSrH753I4toHxXAz0sxjFfrNnwmp6RBOz7ZalweT+dRd
         6Id9VHuAs7qeAmzEEBgY79n/WuSdOg5x1vMd8+8CiO9sn2LgoEwnb32v8X0Bw8/he/G3
         25JV/Qp4WIgNd7KwqYxYdAlj3W9tAM0HSxdJoniKG5q/Bktn9SrczBfmu4KGys3xolcv
         8aeaweYPYt12QX+pnXfRCPFj1PCklIudfRlJO+vrzaT3ab8vZMQB8zAKTlaeyWDGI0Ym
         wd3g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53191xZJpbFsWE5+BSJqoQjSstDaXWPlXX8afkJOSUSY26DuTjXA
	C0oVHqRmRvUVHIPwstsUaJs=
X-Google-Smtp-Source: ABdhPJyc0yWuAFBT2huJDsguu20Y7zmrA7xhC0zAUwAtJXlP+6SzNNB/323bJuFH3MQBJd5/I60sEg==
X-Received: by 2002:a05:6830:1613:: with SMTP id g19mr23737897otr.199.1593016023772;
        Wed, 24 Jun 2020 09:27:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:11ce:: with SMTP id v14ls593461otq.0.gmail; Wed, 24
 Jun 2020 09:27:03 -0700 (PDT)
X-Received: by 2002:a05:6830:2436:: with SMTP id k22mr16709119ots.28.1593016023331;
        Wed, 24 Jun 2020 09:27:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593016023; cv=none;
        d=google.com; s=arc-20160816;
        b=ISnjAi6ZRWiILH/YNDrGGcS6D536I5IHb3Q0SWtYw8WefxWGBa0kZBEMw9QT1J5U16
         D6/GdVThdoItfOXJKn5gmyMrWKf9MpGGbREdi8cauPEJwcXhuj9VJslw4p7KM9aNyqVd
         gPME6LKtlvRpxIpOT2cKb3yK1+zRBG2GsUHMHyrvzDgaRB2g898v1w43fYN0EeUge1SW
         iyThDysxIW3Zoe89Z9MimuwpZdidkSO6FruidYApY/2hJlLogi2mhs44oiB/rq2iIwO9
         shaBCSnf1VaeiI4bWmycEcjs36V45eGdRD5IA5TZptmYTo6dRpfjYwLQsqXklazZoegL
         GfVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=54mDaFl7jSktbShlWhhAEfiGyAxRgqqWufjgJR1AMQ4=;
        b=rbS7ok9+exlBm3svw379/+gSyEsJnnB9+AuJcLDJ1gnVqyumxzcUUVf/a6iXeCH6HE
         MVhpyE6uVS1oLN58u4XHdA5njNrvBA8+h9vvvOuXEappCPlkmFxHnzZJDTkh1XnfZB1S
         yleVDN3BG5iaoZX357lxaHZoGmlT3eNw30bQ8ueaxUs1J0hAsv5kQ942uxXRzFbZbtvQ
         OFcZ0k8sLsgacPmlkjvXL6S3UqEyzEONj5FVPbuPc++nHZEP2uZbexJlGuNgaCo2DEdH
         JvX9uxB6nUZtI+HHqSXrCz63wnycyPVzf8NvoxbNxvX/3oX0GkiX8L/GExouvvhfeODw
         rvqg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of dave.martin@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=Dave.Martin@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id y198si965588oie.1.2020.06.24.09.27.03
        for <clang-built-linux@googlegroups.com>;
        Wed, 24 Jun 2020 09:27:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of dave.martin@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D02891FB;
	Wed, 24 Jun 2020 09:27:02 -0700 (PDT)
Received: from arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1A0A93F73C;
	Wed, 24 Jun 2020 09:26:59 -0700 (PDT)
Date: Wed, 24 Jun 2020 17:26:58 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Will Deacon <will@kernel.org>
Cc: Mark Rutland <mark.rutland@arm.com>,
	linux-efi <linux-efi@vger.kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Thomas Gleixner <tglx@linutronix.de>,
	linux-arch <linux-arch@vger.kernel.org>,
	Fangrui Song <maskray@google.com>,
	Masahiro Yamada <masahiroy@kernel.org>, X86 ML <x86@kernel.org>,
	Russell King <linux@armlinux.org.uk>,
	Ard Biesheuvel <ardb@kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@suse.de>,
	Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Peter Collingbourne <pcc@google.com>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	James Morse <james.morse@arm.com>
Subject: Re: [PATCH v3 3/9] efi/libstub: Remove .note.gnu.property
Message-ID: <20200624162657.GG25945@arm.com>
References: <20200624014940.1204448-1-keescook@chromium.org>
 <20200624014940.1204448-4-keescook@chromium.org>
 <20200624033142.cinvg6rbg252j46d@google.com>
 <202006232143.66828CD3@keescook>
 <20200624104356.GA6134@willie-the-truck>
 <CAMj1kXHBT4ei0xhyL4jD7=CNRsn1rh7w6jeYDLjVOv4na0Z38Q@mail.gmail.com>
 <20200624112647.GC6134@willie-the-truck>
 <20200624134854.GF25945@arm.com>
 <20200624152646.GA6768@willie-the-truck>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200624152646.GA6768@willie-the-truck>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Original-Sender: dave.martin@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of dave.martin@arm.com designates 217.140.110.172 as
 permitted sender) smtp.mailfrom=Dave.Martin@arm.com
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

On Wed, Jun 24, 2020 at 04:26:46PM +0100, Will Deacon wrote:
> On Wed, Jun 24, 2020 at 02:48:55PM +0100, Dave Martin wrote:
> > On Wed, Jun 24, 2020 at 12:26:47PM +0100, Will Deacon wrote:
> > > On Wed, Jun 24, 2020 at 12:46:32PM +0200, Ard Biesheuvel wrote:
> > > > On Wed, 24 Jun 2020 at 12:44, Will Deacon <will@kernel.org> wrote:
> > > > > For the kernel Image, how do we remove these sections? The objcopy flags
> > > > > in arch/arm64/boot/Makefile look both insufficient and out of date. My
> > > > > vmlinux ends up with both a ".notes" and a ".init.note.gnu.property"
> > > > > segment.
> > > > 
> > > > The latter is the fault of the libstub make rules, that prepend .init
> > > > to all section names.
> > > 
> > > Hmm. I tried adding -mbranch-protection=none to arm64 cflags for the stub,
> > > but I still see this note in vmlinux. It looks like it comes in via the
> > > stub copy of lib-ctype.o, but I don't know why that would force the
> > > note. The cflags look ok to me [1] and I confirmed that the note is
> > > being generated by the compiler.
> > > 
> > > > I'm not sure if there is a point to having PAC and/or BTI in the EFI
> > > > stub, given that it runs under the control of the firmware, with its
> > > > memory mappings and PAC configuration etc.
> > > 
> > > Agreed, I just can't figure out how to get rid of the note.
> > 
> > Because this section is generated by the linker itself I think you might
> > have to send it to /DISCARD/ in the link, or strip it explicitly after
> > linking.
> 
> Right, but why is the linker generating that section in the first place? I'm
> compiling with -mbranch-protection=none and all the other objects linked
> into the stub do not have the section.
> 
> I wonder if it's because lib/ctype.c doesn't have any executable code...

What compiler and flags are you using for the affected object?  I don't
see this with gcc so far.

I wonder if this is a hole in the specs: the property could logically
be emitted in any codeless object, since turning on BTI will obviously
not break that object.

For different linkers and compilers to interoperate though, the specs
would need to say what to do in that situation.

Cheers
---Dave



> 
> Will
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200624162657.GG25945%40arm.com.
