Return-Path: <clang-built-linux+bncBDPL7R4J6AKRBM5IVT2AKGQEJI6FTZY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x438.google.com (mail-wr1-x438.google.com [IPv6:2a00:1450:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F25719F4AC
	for <lists+clang-built-linux@lfdr.de>; Mon,  6 Apr 2020 13:36:20 +0200 (CEST)
Received: by mail-wr1-x438.google.com with SMTP id n7sf4211441wru.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 06 Apr 2020 04:36:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586172980; cv=pass;
        d=google.com; s=arc-20160816;
        b=wyC0QP2ay6i0eZVNtGw/DQ8OlhRGlCRTvdoAiKUhkSqUeBimttx5hegRdbyZrjLcS2
         8vfuUHlR49shl9xXsylsz1WDJavEhgiQfaPLNIDr5vOjIagzz1V+GrPAoFBEA+eDqApx
         PxDb15yuQs0hQDe0NPB2r8vxAeKHCQdKlmgGSCjkqt56R/ef9Lo9sYr77k+8Xt5caDV/
         BhQoZSB5QRgQYZwcWdUn7wzrOxTvRORJfmQzKGqLu/UygrGqTviZ1MNILn6/3430Pejg
         S1OAtxI2NFyo/l4crHPYMbQ1vdltYvRhk3/IBM+z8+yIZ6OcIy44Yo3xNiKSVbaAsIXB
         8xIw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=dNhlABmqE/ud99pAjEQdyUC+v9auDThZtJ1HtIzbmig=;
        b=KVDrlDSmQHTCXmJDFzxwZksfAb2xV0QP6bKx3rI84LEzY0clwvjY43hVP1RxCLpjpy
         uiXMYwijqsY/b9Q2CkQ3oAxzQqbcOotPTPHMu4cNUz40VF+BHYi+xIJPhmxCMDWxXitz
         EgpgPSRl+DXhV8yfnronu970e8JUXjO2yZYVtHksOO6gQt/H2FLXThvOdTfa3/3AF54B
         Ne6V8H8tmmzakrXvu3RyvHz+4BIKZKenQQNWw0DhdnmzUVZzd7n27jwDa8VMHqsv6thu
         3KP2Hu3CRecscJvGkjWURK9ZUnjfdiL4AThVzRHxX/clMkCZ2iSwHUzjp04iQeZuQRvJ
         J16Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tsbogend@alpha.franken.de designates 193.175.24.41 as permitted sender) smtp.mailfrom=tsbogend@alpha.franken.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=dNhlABmqE/ud99pAjEQdyUC+v9auDThZtJ1HtIzbmig=;
        b=Z2GsVFcvWY+kOcOnc4WQ4ACqsHaHau7YOYWDVhtAw7h4AsqJxEKXRvbTCr82b/i0Ta
         x4JHtsxZAF96O/6z7fjG9KKirSOm6g3t8KusUz/Et3TYOwyjsuNLxRf7YRTcyTcH31XD
         9RZYv4SxbfGa9QKccBGSIVPURL71TsLv3x5K6ncxir7iqKlynj02hp69of7KYzU7npxw
         YFWuey84nmPDXsJThdm1kdYjx+KxG2ASx71tjwL0jbs7PmzpQaYOiejx67Xj/A16I4j2
         rEm0kFXGW+nzauOHT969YIybuWJA+30P92hgohGon18EUPoEJ8B6lWrO8jjIb98Fo2oV
         0vlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=dNhlABmqE/ud99pAjEQdyUC+v9auDThZtJ1HtIzbmig=;
        b=RhqzCn2vb1JXb2oIdyUBIzPD0hLscdFfhrDPBQwA1/LOsfNVv6e6WPb8C2E1BhjbA9
         /UwaqfYTzJR9MDBGBZ4sG+29tsM6Ic2jLdl11rcDlVPrYukkXUvewt8n/3hF5pJ4pr/d
         D88b9UbKf9kCOtQ0wA+MmNGyXdCUIYJ5zuspwPVxJ4XnXPFjaP/vozvt8Udi96EXNfyv
         waxLS3l820OR4ZiUQoulla017hqI/I707L15TCMotuBwyfXYJB/vL84L39HUXqljF7wI
         Q7bMmYdNU82ChE8oKZq4qhjuIjOIuEt3Xfy+8bijVVgyD7Jde5qJrhPoV1Ub+crMPT6Y
         n/RQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuYMU/f/doixVl8jLRAsZ5fsSmNpIfvByvS1ofC5RY/e/nxSRnI4
	nRg+0hCIr7Gu3OBlzY9qJqw=
X-Google-Smtp-Source: APiQypIl0QOHApRInQKIhu10HaNCmDwJcYhyN2Zz1bLMP5MlegvPPt7DRRFpmF0K7MVgNkpEyP3qtg==
X-Received: by 2002:a1c:a7c4:: with SMTP id q187mr8247083wme.56.1586172980081;
        Mon, 06 Apr 2020 04:36:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:7d97:: with SMTP id y145ls7761226wmc.2.gmail; Mon, 06
 Apr 2020 04:36:19 -0700 (PDT)
X-Received: by 2002:a1c:f302:: with SMTP id q2mr18187309wmq.185.1586172979507;
        Mon, 06 Apr 2020 04:36:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586172979; cv=none;
        d=google.com; s=arc-20160816;
        b=DGBfPBoaQa4VJ0h/hpMqkKNA+UgEUDsp5aqXCp4H3Vg/uVh2rvb7WN4i60MOSAu0ci
         Lbt8eP8ITf4gD4fxLPSucxp6nl7VsrLOioPiTXMYyjfo5KiQlAbwa6Y/15DaWSrEpvU2
         pWp5KtvnYd46iHs2zNlNTzRdNzObJW4Z59B/CPx2J6im0JW9f/Wt564QYBBdXtQPA4s/
         RcMhCgsXJQREOnDXlKG0lytQZtlCfaPdRFvgYIpkSBUEwsCAhHAwde6yK114NfMVr36/
         KfWOVhnWv3UpegFAZBPhchb1wYilOU5OaWtpWZ2sery2vBIV7wn0A0YWpwLS2kH7AOHn
         Mpzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=32AYODZJ5HxMEaVfbRH/HHNySAv9VGLbm2kQeicB8r0=;
        b=DdzX8GaxOqHMp+/bbeq6dYh2ImKj3K8uCjS6Wm3DgCanM9Q+qyW3C9IJ1XB7MNzADL
         /Ms8PEWbWwXJinwfyNtCUU+xOZ5SQEJdnV9QX40sY6j8A6kF9WX0IqikpMgS9HLHyscN
         aT0zCrgYz0NU9/hP7k/jFxkLT2++tucSYF90r88sVod6M1+5oLzYuDZFSVoB2eexc34i
         li31MbP10Zopi06ZkOsoURfnK3r6x5CouqybZKaYLlz0o/a9YfXD5JqCMTsfZ2O+o0HV
         rhv6D6SjqOZbo7/gn2+kHOf1U0Ou2NnGdZzz4vL4iDdzMxGTCBaMrveTnkXXhki4MZhn
         rqfg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tsbogend@alpha.franken.de designates 193.175.24.41 as permitted sender) smtp.mailfrom=tsbogend@alpha.franken.de
Received: from elvis.franken.de (elvis.franken.de. [193.175.24.41])
        by gmr-mx.google.com with ESMTP id g78si1173598wmg.0.2020.04.06.04.36.19
        for <clang-built-linux@googlegroups.com>;
        Mon, 06 Apr 2020 04:36:19 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of tsbogend@alpha.franken.de designates 193.175.24.41 as permitted sender) client-ip=193.175.24.41;
Received: from uucp (helo=alpha)
	by elvis.franken.de with local-bsmtp (Exim 3.36 #1)
	id 1jLQ39-0007W1-00; Mon, 06 Apr 2020 13:36:19 +0200
Received: by alpha.franken.de (Postfix, from userid 1000)
	id 2E474C0206; Mon,  6 Apr 2020 13:03:33 +0200 (CEST)
Date: Mon, 6 Apr 2020 13:03:33 +0200
From: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: linux-kbuild@vger.kernel.org, linux-mips@linux-mips.org,
	clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org,
	Jiaxun Yang <jiaxun.yang@flygoat.com>,
	Paul Burton <paulburton@kernel.org>, linux-mips@vger.kernel.org
Subject: Re: [PATCH] MIPS: fw: arc: add __weak to prom_meminit and
 prom_free_prom_memory
Message-ID: <20200406110333.GA6266@alpha.franken.de>
References: <20200405163052.18942-1-masahiroy@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200405163052.18942-1-masahiroy@kernel.org>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Original-Sender: tsbogend@alpha.franken.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of tsbogend@alpha.franken.de
 designates 193.175.24.41 as permitted sender) smtp.mailfrom=tsbogend@alpha.franken.de
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

On Mon, Apr 06, 2020 at 01:30:52AM +0900, Masahiro Yamada wrote:
> As far as I understood, prom_meminit() in arch/mips/fw/arc/memory.c
> is overridden by the one in arch/mips/sgi-ip32/ip32-memory.c if
> CONFIG_SGI_IP32 is enabled.
> 
> The use of EXPORT_SYMBOL in static libraries potentially causes a
> problem for the llvm linker [1]. So, I want to forcibly link lib-y
> objects to vmlinux when CONFIG_MODULES=y.
> 
> As a groundwork, we must fix multiple definitions that have previously
> been hidden by lib-y.
> 
> The prom_cleanup() in this file is already marked as __weak (because
> it is overridden by the one in arch/mips/sgi-ip22/ip22-mc.c).
> I think it should be OK to do the same for these two.
> 
> [1]: https://github.com/ClangBuiltLinux/linux/issues/515
> 
> Reported-by: kbuild test robot <lkp@intel.com>
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> ---
> 
> If MIPS maintainers ack this patch,
> I want to inser it before the following patch:


Acked-By: Thomas Bogendoerfer <tsbogend@alpha.franken.de>

Thomas.

-- 
Crap can work. Given enough thrust pigs will fly, but it's not necessarily a
good idea.                                                [ RFC1925, 2.3 ]

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200406110333.GA6266%40alpha.franken.de.
