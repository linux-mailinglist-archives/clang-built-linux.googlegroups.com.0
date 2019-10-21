Return-Path: <clang-built-linux+bncBAABBPHOWXWQKGQEGLBRDEY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x137.google.com (mail-il1-x137.google.com [IPv6:2607:f8b0:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 738D0DE7B6
	for <lists+clang-built-linux@lfdr.de>; Mon, 21 Oct 2019 11:15:42 +0200 (CEST)
Received: by mail-il1-x137.google.com with SMTP id w9sf6222872ilo.12
        for <lists+clang-built-linux@lfdr.de>; Mon, 21 Oct 2019 02:15:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571649341; cv=pass;
        d=google.com; s=arc-20160816;
        b=L2nMSGBdYjqsfzawGTRr0jr65Gf1IjqF20kmFgX2bWF3ALyLkpsF2azkWQUagPo6Lm
         KA5O4wPM9fdi6AnpRajPCACktWh1TbJpcs0fX9YpegL6ghsmFok82mL5DST9bsg1Lfek
         4r5MO4BebtbgRa2x8kCP215fY/jnkIZemeJ5anNazvnXXBoyQiZncm11jY2lek3L4i3D
         LtK2wmIqDjxXWOcPznU6wr1xF/8uJ7c7EgfQB0Tg44YzlkX3LfdJzQLoP+StRXetIoyg
         G4lY1UXi6Jh97DjUca2ZYVwnCz+aDEM3rUUIS4KRdS9EpybBwWiEJI5A6nUFg/ctGIGg
         TsWQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=LRxh6ym8d0G9IlIP+xV2vT2S3XEIQu6BNRCBjlG1aI0=;
        b=rf91g5sFpATPmEc6gS3QVOaYOOLSSPfFdB702Tw0u2TeU6GDC4d/Ph+xTS1rsNZcfo
         7JZrYxXFHFkvg4H1Y6Kcr21LXGQFG9znnlPTILyNoQrBBfqaf2qlAUp60kLlRN94kcbX
         McYBxbUlzYLueAciPc5D1dirUC/4XKCf1y1Xl+QqHCoI1jMX6Lr1AJFip1WJMqqC7GpF
         H0aiDMCBdfpuypR7tHr+WZ/cEAaUivZPxaZO6R7ePMEYt8GsXqbPsu4WGXLqYizB24e+
         zL114gu0e8zr3GYKinlNz6PEUDMmZxLkJ4dM1JE6qXadkzGuGYXIDHEE+JEGaUdcnegA
         24VA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=lhQih9us;
       spf=pass (google.com: domain of mhiramat@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=mhiramat@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LRxh6ym8d0G9IlIP+xV2vT2S3XEIQu6BNRCBjlG1aI0=;
        b=m1jBRHCO+kG9102lhpfnUBtmpBzAKqe2dvCNDlP3CU7fl2qCyuYXzA2ALyLhiEM9rJ
         sLRld2TGhx9zUIWlVUSoump/2cHR8vRLmNJL53lPMTq88ECX7z8tlv0Is0Ke8/4ABXkz
         pUe9HB+8IrxptDMpB8xDwIF1j+IdCojJ9weE2gTJ1wvv5t7GE0S4yISBDQlvlw3w6GAk
         MyrCIuKxZ7Wp7bf2ttCFTvM2bX2su1/UTd5oPUssz2IR0ZRavBakET59SOgqJwZGlwjJ
         6ai91gleQn0Y5c8RabRb0cGdJ3Qa8EkUjCqRWDgcbB3JTFw63owngeRlJ+rYhaQLMRGm
         51vQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LRxh6ym8d0G9IlIP+xV2vT2S3XEIQu6BNRCBjlG1aI0=;
        b=fzzWhmoTW+7J+zNh2NAZdPoTZJJeZC/xhTMJXEbzWygrvIJEPUm05BxVdUIzJ9InUj
         II34DGgxq923KahKSJRy+wS+pPGIDs47+Cd3yEJdTF6ZG747YdFs2Fi5nvVFe5AkYCjk
         fnGW57ZLo64eYpRHYUqeC8kqs6CDQXZldCOQRvzwFeNqKJtGto+yAxb/jCHi1EQ/X6Rd
         nk/EjgzklQ2N6vB1lYddLluLgdrJeswWk0aC8X14ihNTZkbb//1JIiWTQ/boHHeZT5ij
         NpevYpwi8D0mSeRgQ47SxXGEOpFSvvvZZ+a+ta3fklKP9eDZpsUMPR+bXGDC+Byj82yE
         hblA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWb+Wse1RjW2JIxxKhzzkvijbrXu8rbA7lnl8sKCL3zpODQwcBj
	OVLwrgLpvd+Ip78YLwFpXoE=
X-Google-Smtp-Source: APXvYqzF+9KguXwwJKHpjan/D/1FAVEYLo2ClZFtRo7AnPuj3Zx6+mCDkNfqDACdw255kUVQAtiAtw==
X-Received: by 2002:a02:b388:: with SMTP id p8mr16251249jan.128.1571649341048;
        Mon, 21 Oct 2019 02:15:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:c8c1:: with SMTP id y184ls1738000iof.4.gmail; Mon, 21
 Oct 2019 02:15:40 -0700 (PDT)
X-Received: by 2002:a6b:7d4b:: with SMTP id d11mr20964528ioq.40.1571649340766;
        Mon, 21 Oct 2019 02:15:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571649340; cv=none;
        d=google.com; s=arc-20160816;
        b=tkrL3eXf9V5MK+zdAJGS2BqjrE3GAc7p1zySj0nJWV3UQ6pr54jKYkGs2WNczncH57
         YBM0+nfpjPPpS0QwlKYr0NQmv1DXGTHJuEiF/7F7kskrC73qyIIrDB4l7RJoxVbvFGMa
         nP4VNscWTjGqMDZT+lM0p/0SrDUv4d4R60k9FPIaEl/xqnrVus/5tjdsvac7XRF/0oPH
         ZWKa2fwXKwGuVVLYOmtEtvrPMBuzh2pyr8RUBNVO6rCV7/oyyzzCfNZd/h2Rad/J8QOj
         WP5QUudSatfF4REgNF8h6n+fQ6BZKHv1TDkKkN9U1w7gPYfUcXMu42VDH8O0icSgvYk5
         wJuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=qghVwCRK+x5WPMH2+0ujXR8NqVdaKNdJaiR3Nf9frH0=;
        b=iNV2Qqa6YVkcUf9QMz4qzmpJXgW9wnH3i9ujZO25BbHb7oPBN45C9V1UveiC8x5Dcy
         ZXKgigb0onh3/eZqSWY3V+rlYwvz6Ir+P41t6u4FJoj27DycRjpaJPoRveiiGcGNE7Yv
         TOeyMGZ0T0zT0YuEusOZwMFs46qMKg++FMTsDDTqQ4U4HmDTl3o0QqDt2rB1+0emtkc8
         vho3aP4gnykBg0Vd9O1cGvFnDv1fkZBfLqNo86quS9pDAaMVsuTjh2HKeL8HJWOBhux5
         V4CQS1p3tzGH8OFccpmaksdE4/Y4b+AFc83Ea1MyUYBUtN7CLZeDcgKPsg0Ipl8tdKjk
         e6DA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=lhQih9us;
       spf=pass (google.com: domain of mhiramat@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=mhiramat@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id g1si448497ilh.1.2019.10.21.02.15.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 21 Oct 2019 02:15:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of mhiramat@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from devnote2 (NE2965lan1.rev.em-net.ne.jp [210.141.244.193])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 7DC7C20873;
	Mon, 21 Oct 2019 09:15:36 +0000 (UTC)
Date: Mon, 21 Oct 2019 18:15:34 +0900
From: Masami Hiramatsu <mhiramat@kernel.org>
To: Steven Rostedt <rostedt@goodmis.org>
Cc: Sami Tolvanen <samitolvanen@google.com>, Will Deacon <will@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Ard Biesheuvel
 <ard.biesheuvel@linaro.org>, Dave Martin <Dave.Martin@arm.com>, Kees Cook
 <keescook@chromium.org>, Laura Abbott <labbott@redhat.com>, Mark Rutland
 <mark.rutland@arm.com>, Nick Desaulniers <ndesaulniers@google.com>,
 clang-built-linux@googlegroups.com, kernel-hardening@lists.openwall.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, Masami
 Hiramatsu <mhiramat@kernel.org>
Subject: Re: [PATCH 11/18] kprobes: disable kretprobes with SCS
Message-Id: <20191021181534.4d8edb330e6fb19cd7f7e39f@kernel.org>
In-Reply-To: <20191018130429.5df61f6b@gandalf.local.home>
References: <20191018161033.261971-1-samitolvanen@google.com>
	<20191018161033.261971-12-samitolvanen@google.com>
	<20191018130429.5df61f6b@gandalf.local.home>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: mhiramat@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=lhQih9us;       spf=pass
 (google.com: domain of mhiramat@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=mhiramat@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Fri, 18 Oct 2019 13:04:29 -0400
Steven Rostedt <rostedt@goodmis.org> wrote:

> 
> [ Added Masami ]
> 
> On Fri, 18 Oct 2019 09:10:26 -0700
> Sami Tolvanen <samitolvanen@google.com> wrote:
> 
> > With CONFIG_KRETPROBES, function return addresses are modified to
> > redirect control flow to kretprobe_trampoline. This is incompatible with
> > return address protection.
> > 
> > Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> > ---
> >  arch/Kconfig | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/arch/Kconfig b/arch/Kconfig
> > index a222adda8130..4646e3b34925 100644
> > --- a/arch/Kconfig
> > +++ b/arch/Kconfig
> > @@ -171,7 +171,7 @@ config ARCH_USE_BUILTIN_BSWAP
> >  
> >  config KRETPROBES
> >  	def_bool y
> > -	depends on KPROBES && HAVE_KRETPROBES
> > +	depends on KPROBES && HAVE_KRETPROBES && ROP_PROTECTION_NONE
> 
> Again, this belongs in the arch code.

+1, below patch (from Steve) looks good to me.

Thank you,

> 
> -- Steve
> 
> >  
> >  config USER_RETURN_NOTIFIER
> >  	bool
> 
> 
> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> index 41a9b4257b72..65557d7e6b5e 100644
> --- a/arch/arm64/Kconfig
> +++ b/arch/arm64/Kconfig
> @@ -166,7 +166,7 @@ config ARM64
>  	select HAVE_STACKPROTECTOR
>  	select HAVE_SYSCALL_TRACEPOINTS
>  	select HAVE_KPROBES
> -	select HAVE_KRETPROBES
> +	select HAVE_KRETPROBES if ROP_PROTECTION_NONE
>  	select HAVE_GENERIC_VDSO
>  	select IOMMU_DMA if IOMMU_SUPPORT
>  	select IRQ_DOMAIN


-- 
Masami Hiramatsu <mhiramat@kernel.org>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191021181534.4d8edb330e6fb19cd7f7e39f%40kernel.org.
