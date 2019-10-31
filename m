Return-Path: <clang-built-linux+bncBCS6NPVSS4JBBXNU5TWQKGQEXZWDRVI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63b.google.com (mail-pl1-x63b.google.com [IPv6:2607:f8b0:4864:20::63b])
	by mail.lfdr.de (Postfix) with ESMTPS id 078BBEB62C
	for <lists+clang-built-linux@lfdr.de>; Thu, 31 Oct 2019 18:31:11 +0100 (CET)
Received: by mail-pl1-x63b.google.com with SMTP id p14sf4364424plq.2
        for <lists+clang-built-linux@lfdr.de>; Thu, 31 Oct 2019 10:31:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572543069; cv=pass;
        d=google.com; s=arc-20160816;
        b=Cevo1BfEKqu/WMVpF8qU8qItVjZWtKKYGqBRM56nVjqDMu/IrK+tS+RtRKaN42jCl9
         +G85UPCE0gDuPxla17VrKyjh6ZTlhAhVpVLzh5pOyLP8EU8NOO2pP7yNqOE0xtFz86W4
         JRQ6RMkMtz49H7D2QZdGKHb7w+vgssYGsgmJnsW4AtWTVfwGHymA9wLC3XBRpBSxCSSl
         vYvdbXKG50UY/6mALQBEQgM5k6HNPFKhjGaIv5TJc32t4BGbEtgoTyyc8qL00SgqZ8Af
         JpcfaiA2bcYEkfOaNVRA3xczGq49KvGUTqpTfLZgmQSpDPhyEnolK3wqyu/uIy/IOLWi
         oLeg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :message-id:in-reply-to:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=zLtinL5p0LPBARVVsjjTbA4/558z+yWVC8d1jfsKi6c=;
        b=shvJBcKsQbr7uHQY3tDd/jaVCVjT2WuA7KD8yte9R8d1fCt7J6mvS5FSXiqq1KR/od
         ZQo8LvO9Ys0S4K4lcLlD+HKOaJJbL8oiillw+kmxDYkR95M9BeDbx0Jg2zuMOQJfFNCo
         1OSN4Fp5IYdTf3eG5IMcdQ5NWvwCZSqauPdVNlobkkhh1rZ5fYR8XAZeDD+S4CQKh0Ll
         nb5o/KSrEfa/q8HD6H1KvaeSUAIRKTDM3oo13nDzGFXqtdpxvgNMMzry9cuygoRfoLTP
         J6/o+VjUHp/6TaOiIoTOu1QLylv7sLhXpTwUgyNKtDlo+vsyhUyn93aXz8RbSsd7Emet
         ZABg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@pobox.com header.s=sasl header.b=ll511P1k;
       dkim=temperror (no key for signature) header.i=@fluxnic.net header.s=2016-12.pbsmtp header.b=cO4qr6KO;
       spf=pass (google.com: domain of nico@fluxnic.net designates 64.147.108.86 as permitted sender) smtp.mailfrom=nico@fluxnic.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=zLtinL5p0LPBARVVsjjTbA4/558z+yWVC8d1jfsKi6c=;
        b=m/WLav9Wf1HcfJQKgCPPdMbE4MNsXJ1dj8SwBdwbAdppWWz4RpQFTfs+aU6i/3cbL4
         y/3T8EkzALT2Pfn39mDYrhbKaGyZBXnVtSxgxRdwIcIW4YDTpuUxRuq3VEkclIJzyB8G
         1kwxZFjOhrv7+IS9/UqYyx2HskX4iNDtNdjjejjXrYMpvU3/NnvgFFUIGx0QXodlHukV
         macAJz6GLtU6DLYDSwrj6U3TfI+1+hiks0w0TtTy/I782wpEKvAKxwfD7dI2vG1aTmSq
         DM5ZDoSrdCd2hDd/wCjzuFJ8By+Q3a8QZVJ/3p5Nv8jbLkiu/6dHc5ZhoMGWEbGWOZR3
         +cYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:in-reply-to
         :message-id:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zLtinL5p0LPBARVVsjjTbA4/558z+yWVC8d1jfsKi6c=;
        b=nux3ZevB4mRjaQV62e8cXYtGj6iEYp9uo3mJl56tEoIAiVtxcBjsl9X3nxwWTeb8Dd
         qymgyLzoAg3S/oVnZ88qRaJ/tYQ9RtE62TgPTTjtgk4HcncagtQP9iIOmp3yYFulyBgy
         0+8q8x2Nlf0jtsCSSF2hcgZ/bkuIOBvz5g1O/C8/Hlll0wWDioU6MOwDJl28wPdqBLtl
         0eMrXJr4ZqJLXP7LM1fFe8DZ6n28y5Ll8RhbNsGF5G7gXXJWWfNwlZfiAwN22+6I6Fan
         PBALA0b1XLsgwH+F6zDM367oOyQISJaYyA5FBQVsxySkbYk/0/DkwduMl0B9CyQ0nqvd
         op9A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUoXizdee7tu+2zSXPtWpxki6cf7gEgQFRIC/5NafkO2BeSLwDY
	AH7SfZvq59BDju8dwwh0V9U=
X-Google-Smtp-Source: APXvYqy892qU3aGvjS7JIw9Dpis6nBtgbMGioODdC8XSvWfHRoOGyef+xlWkuXMgWi/KaYQ1H91pdw==
X-Received: by 2002:a63:3205:: with SMTP id y5mr8062421pgy.42.1572543069468;
        Thu, 31 Oct 2019 10:31:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:52d1:: with SMTP id g200ls958684pfb.3.gmail; Thu, 31 Oct
 2019 10:31:08 -0700 (PDT)
X-Received: by 2002:a62:1b4a:: with SMTP id b71mr7906994pfb.167.1572543068941;
        Thu, 31 Oct 2019 10:31:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572543068; cv=none;
        d=google.com; s=arc-20160816;
        b=B9zJ9iAZJFls4UBLSsoVP0egEFh33siP2eNnTkbGu9t/HAC5Sj3Z8HU6EaaOCq9DVM
         dHjYbJsH70h7bC2gWc8xNmJMRoa0dQHLkG71GvXDUNqAjHu8WCgezP7lsU4bEdtotevN
         vFUIBryyfzgjS33ig4QAOuTKGckmvu6/wjzJGbGzWYaXNSLQVUKUNsZ/rOxEN6u7gMcK
         BZAgdkL/uhQseXVkaJBqL9cJG4kcekrwpxJYx6tzGqqDYimCrvSi+8FJ347mo/PpX4n3
         bwgLxnouimUdBsVOsSNmwWLGRaGEFGJuEZKwdFyrYzXj9WYidjmkp4VPuQBLv/6ZmcJD
         /xcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:dkim-signature:dkim-signature;
        bh=7FUzKnphSkBCOwKEigt01lZUxESvrmHI5VNWd5BRjYk=;
        b=g18CLhff/f7x5DETiQzwr+rqWlFqP+hd62rmlWU7xP2BEQ+xizEGIdl4iUaFPB8Yyi
         Jip8k8UFohMwekQNtEYlibkNI8aEQfdGZ1bC+p3djFS2Ek8a4LEB2FM3j1r3RbqsC2eM
         HRzZJAAgYAQSmKTPQk1acXzyzY63uSGyXVf7XhqjLcOq36v1L4ubi1ZfTw6r3BKVuCrX
         2e1t4HRTAxWoCaOjb+s0hs60jQPxipj5CgTmsqeI55gZjXSinSbZKyk0cNqrOItceepP
         XQTEv7ETR6Y0/JfDajZRnvKgMecHWEcpgwrAa1qaJZyGQeuQYgeWIClrV5wxXZoaDI9d
         QacQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pobox.com header.s=sasl header.b=ll511P1k;
       dkim=temperror (no key for signature) header.i=@fluxnic.net header.s=2016-12.pbsmtp header.b=cO4qr6KO;
       spf=pass (google.com: domain of nico@fluxnic.net designates 64.147.108.86 as permitted sender) smtp.mailfrom=nico@fluxnic.net
Received: from pb-sasl-trial2.pobox.com (pb-sasl-trial2.pobox.com. [64.147.108.86])
        by gmr-mx.google.com with ESMTPS id b17si295527plz.1.2019.10.31.10.31.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 31 Oct 2019 10:31:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of nico@fluxnic.net designates 64.147.108.86 as permitted sender) client-ip=64.147.108.86;
Received: from pb-sasl-trial2.pobox.com (localhost.local [127.0.0.1])
	by pb-sasl-trial2.pobox.com (Postfix) with ESMTP id 07B7422662;
	Thu, 31 Oct 2019 13:31:05 -0400 (EDT)
	(envelope-from nico@fluxnic.net)
Received: from pb-smtp2.nyi.icgroup.com (pb-smtp2.pobox.com [10.90.30.54])
	by pb-sasl-trial2.pobox.com (Postfix) with ESMTP id A06DC22661;
	Thu, 31 Oct 2019 13:31:05 -0400 (EDT)
	(envelope-from nico@fluxnic.net)
Received: from yoda.home (unknown [24.203.50.76])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by pb-smtp2.pobox.com (Postfix) with ESMTPSA id C27093210C;
	Thu, 31 Oct 2019 13:31:03 -0400 (EDT)
	(envelope-from nico@fluxnic.net)
Received: from xanadu.home (xanadu.home [192.168.2.2])
	by yoda.home (Postfix) with ESMTPSA id 7F1BD2DA00D7;
	Thu, 31 Oct 2019 13:31:02 -0400 (EDT)
Date: Thu, 31 Oct 2019 18:31:02 +0100 (CET)
From: Nicolas Pitre <nico@fluxnic.net>
To: Nick Desaulniers <ndesaulniers@google.com>
cc: linux@armlinux.org.uk, Fangrui Song <maskray@google.com>, 
    Jian Cai <jiancai@google.com>, Peter Smith <peter.smith@linaro.org>, 
    Hans Ulli Kroll <ulli.kroll@googlemail.com>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    Stefan Agner <stefan@agner.ch>, Enrico Weigelt <info@metux.net>, 
    Thomas Gleixner <tglx@linutronix.de>, Roy Franz <rfranz@marvell.com>, 
    Linus Walleij <linus.walleij@linaro.org>, 
    Ard Biesheuvel <ard.biesheuvel@linaro.org>, 
    Allison Randal <allison@lohutok.net>, 
    Richard Fontana <rfontana@redhat.com>, 
    Kate Stewart <kstewart@linuxfoundation.org>, 
    Dave Martin <Dave.Martin@arm.com>, Sonny Rao <sonnyrao@chromium.org>, 
    Doug Anderson <armlinux@m.disordat.com>, 
    Vladimir Murzin <vladimir.murzin@arm.com>, 
    afzal mohammed <afzal.mohd.ma@gmail.com>, 
    linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
    clang-built-linux@googlegroups.com
Subject: Re: [PATCH] arm: replace Sun/Solaris style flag on section
 directive
In-Reply-To: <20191030174429.248697-1-ndesaulniers@google.com>
Message-ID: <nycvar.YSQ.7.76.1910311829520.30289@knanqh.ubzr>
References: <20191030174429.248697-1-ndesaulniers@google.com>
User-Agent: Alpine 2.21 (LFD 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Pobox-Relay-ID: 36A70680-FC04-11E9-AC5B-D1361DBA3BAF-78420484!pb-smtp2.pobox.com
X-Original-Sender: nico@fluxnic.net
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@pobox.com header.s=sasl header.b=ll511P1k;       dkim=temperror (no
 key for signature) header.i=@fluxnic.net header.s=2016-12.pbsmtp
 header.b=cO4qr6KO;       spf=pass (google.com: domain of nico@fluxnic.net
 designates 64.147.108.86 as permitted sender) smtp.mailfrom=nico@fluxnic.net
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

On Wed, 30 Oct 2019, Nick Desaulniers wrote:

> It looks like a section directive was using "Solaris style" to declare
> the section flags. Replace this with the GNU style so that Clang's
> integrated assembler can assemble this directive.
> 
> The modified instances were identified via:
> $ ag \\.section | grep \#
> 
> Link: https://ftp.gnu.org/old-gnu/Manuals/gas-2.9.1/html_chapter/as_7.html#SEC119
> Link: https://github.com/ClangBuiltLinux/linux/issues/744
> Link: https://bugs.llvm.org/show_bug.cgi?id=43759
> Link: https://reviews.llvm.org/D69296
> Suggested-by: Fangrui Song <maskray@google.com>
> Suggested-by: Jian Cai <jiancai@google.com>
> Suggested-by: Peter Smith <peter.smith@linaro.org>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>

Acked-by: Nicolas Pitre <nico@fluxnic.net>

> ---
>  arch/arm/boot/bootp/init.S            | 2 +-
>  arch/arm/boot/compressed/big-endian.S | 2 +-
>  arch/arm/boot/compressed/head.S       | 2 +-
>  arch/arm/boot/compressed/piggy.S      | 2 +-
>  arch/arm/mm/proc-arm1020.S            | 2 +-
>  arch/arm/mm/proc-arm1020e.S           | 2 +-
>  arch/arm/mm/proc-arm1022.S            | 2 +-
>  arch/arm/mm/proc-arm1026.S            | 2 +-
>  arch/arm/mm/proc-arm720.S             | 2 +-
>  arch/arm/mm/proc-arm740.S             | 2 +-
>  arch/arm/mm/proc-arm7tdmi.S           | 2 +-
>  arch/arm/mm/proc-arm920.S             | 2 +-
>  arch/arm/mm/proc-arm922.S             | 2 +-
>  arch/arm/mm/proc-arm925.S             | 2 +-
>  arch/arm/mm/proc-arm926.S             | 2 +-
>  arch/arm/mm/proc-arm940.S             | 2 +-
>  arch/arm/mm/proc-arm946.S             | 2 +-
>  arch/arm/mm/proc-arm9tdmi.S           | 2 +-
>  arch/arm/mm/proc-fa526.S              | 2 +-
>  arch/arm/mm/proc-feroceon.S           | 2 +-
>  arch/arm/mm/proc-mohawk.S             | 2 +-
>  arch/arm/mm/proc-sa110.S              | 2 +-
>  arch/arm/mm/proc-sa1100.S             | 2 +-
>  arch/arm/mm/proc-v6.S                 | 2 +-
>  arch/arm/mm/proc-v7.S                 | 2 +-
>  arch/arm/mm/proc-v7m.S                | 4 ++--
>  arch/arm/mm/proc-xsc3.S               | 2 +-
>  arch/arm/mm/proc-xscale.S             | 2 +-
>  28 files changed, 29 insertions(+), 29 deletions(-)
> 
> diff --git a/arch/arm/boot/bootp/init.S b/arch/arm/boot/bootp/init.S
> index 5c476bd2b4ce..b562da2f7040 100644
> --- a/arch/arm/boot/bootp/init.S
> +++ b/arch/arm/boot/bootp/init.S
> @@ -13,7 +13,7 @@
>   *  size immediately following the kernel, we could build this into
>   *  a binary blob, and concatenate the zImage using the cat command.
>   */
> -		.section .start,#alloc,#execinstr
> +		.section .start, "ax"
>  		.type	_start, #function
>  		.globl	_start
>  
> diff --git a/arch/arm/boot/compressed/big-endian.S b/arch/arm/boot/compressed/big-endian.S
> index 88e2a88d324b..0e092c36da2f 100644
> --- a/arch/arm/boot/compressed/big-endian.S
> +++ b/arch/arm/boot/compressed/big-endian.S
> @@ -6,7 +6,7 @@
>   *  Author: Nicolas Pitre
>   */
>  
> -	.section ".start", #alloc, #execinstr
> +	.section ".start", "ax"
>  
>  	mrc	p15, 0, r0, c1, c0, 0	@ read control reg
>  	orr	r0, r0, #(1 << 7)	@ enable big endian mode
> diff --git a/arch/arm/boot/compressed/head.S b/arch/arm/boot/compressed/head.S
> index 93dffed0ac6e..15ecad944847 100644
> --- a/arch/arm/boot/compressed/head.S
> +++ b/arch/arm/boot/compressed/head.S
> @@ -140,7 +140,7 @@
>  #endif
>  		.endm
>  
> -		.section ".start", #alloc, #execinstr
> +		.section ".start", "ax"
>  /*
>   * sort out different calling conventions
>   */
> diff --git a/arch/arm/boot/compressed/piggy.S b/arch/arm/boot/compressed/piggy.S
> index 0284f84dcf38..27577644ee72 100644
> --- a/arch/arm/boot/compressed/piggy.S
> +++ b/arch/arm/boot/compressed/piggy.S
> @@ -1,5 +1,5 @@
>  /* SPDX-License-Identifier: GPL-2.0 */
> -	.section .piggydata,#alloc
> +	.section .piggydata, "a"
>  	.globl	input_data
>  input_data:
>  	.incbin	"arch/arm/boot/compressed/piggy_data"
> diff --git a/arch/arm/mm/proc-arm1020.S b/arch/arm/mm/proc-arm1020.S
> index 4fa5371bc662..2785da387c91 100644
> --- a/arch/arm/mm/proc-arm1020.S
> +++ b/arch/arm/mm/proc-arm1020.S
> @@ -491,7 +491,7 @@ cpu_arm1020_name:
>  
>  	.align
>  
> -	.section ".proc.info.init", #alloc
> +	.section ".proc.info.init", "a"
>  
>  	.type	__arm1020_proc_info,#object
>  __arm1020_proc_info:
> diff --git a/arch/arm/mm/proc-arm1020e.S b/arch/arm/mm/proc-arm1020e.S
> index 5d8a8339e09a..e9ea237ed785 100644
> --- a/arch/arm/mm/proc-arm1020e.S
> +++ b/arch/arm/mm/proc-arm1020e.S
> @@ -449,7 +449,7 @@ arm1020e_crval:
>  
>  	.align
>  
> -	.section ".proc.info.init", #alloc
> +	.section ".proc.info.init", "a"
>  
>  	.type	__arm1020e_proc_info,#object
>  __arm1020e_proc_info:
> diff --git a/arch/arm/mm/proc-arm1022.S b/arch/arm/mm/proc-arm1022.S
> index b3dd95c345e4..920c279e7879 100644
> --- a/arch/arm/mm/proc-arm1022.S
> +++ b/arch/arm/mm/proc-arm1022.S
> @@ -443,7 +443,7 @@ arm1022_crval:
>  
>  	.align
>  
> -	.section ".proc.info.init", #alloc
> +	.section ".proc.info.init", "a"
>  
>  	.type	__arm1022_proc_info,#object
>  __arm1022_proc_info:
> diff --git a/arch/arm/mm/proc-arm1026.S b/arch/arm/mm/proc-arm1026.S
> index ac5afde12f35..10e21012380b 100644
> --- a/arch/arm/mm/proc-arm1026.S
> +++ b/arch/arm/mm/proc-arm1026.S
> @@ -437,7 +437,7 @@ arm1026_crval:
>  	string	cpu_arm1026_name, "ARM1026EJ-S"
>  	.align
>  
> -	.section ".proc.info.init", #alloc
> +	.section ".proc.info.init", "a"
>  
>  	.type	__arm1026_proc_info,#object
>  __arm1026_proc_info:
> diff --git a/arch/arm/mm/proc-arm720.S b/arch/arm/mm/proc-arm720.S
> index c99d24363f32..39361e196d61 100644
> --- a/arch/arm/mm/proc-arm720.S
> +++ b/arch/arm/mm/proc-arm720.S
> @@ -172,7 +172,7 @@ arm720_crval:
>   * See <asm/procinfo.h> for a definition of this structure.
>   */
>  	
> -		.section ".proc.info.init", #alloc
> +		.section ".proc.info.init", "a"
>  
>  .macro arm720_proc_info name:req, cpu_val:req, cpu_mask:req, cpu_name:req, cpu_flush:req
>  		.type	__\name\()_proc_info,#object
> diff --git a/arch/arm/mm/proc-arm740.S b/arch/arm/mm/proc-arm740.S
> index 1b4a3838393f..1a94bbf6e53f 100644
> --- a/arch/arm/mm/proc-arm740.S
> +++ b/arch/arm/mm/proc-arm740.S
> @@ -128,7 +128,7 @@ __arm740_setup:
>  
>  	.align
>  
> -	.section ".proc.info.init", #alloc
> +	.section ".proc.info.init", "a"
>  	.type	__arm740_proc_info,#object
>  __arm740_proc_info:
>  	.long	0x41807400
> diff --git a/arch/arm/mm/proc-arm7tdmi.S b/arch/arm/mm/proc-arm7tdmi.S
> index 17a4687065c7..52b66cf0259e 100644
> --- a/arch/arm/mm/proc-arm7tdmi.S
> +++ b/arch/arm/mm/proc-arm7tdmi.S
> @@ -72,7 +72,7 @@ __arm7tdmi_setup:
>  
>  		.align
>  
> -		.section ".proc.info.init", #alloc
> +		.section ".proc.info.init", "a"
>  
>  .macro arm7tdmi_proc_info name:req, cpu_val:req, cpu_mask:req, cpu_name:req, \
>  	extra_hwcaps=0
> diff --git a/arch/arm/mm/proc-arm920.S b/arch/arm/mm/proc-arm920.S
> index 298c76b47749..31ac8acc34dc 100644
> --- a/arch/arm/mm/proc-arm920.S
> +++ b/arch/arm/mm/proc-arm920.S
> @@ -434,7 +434,7 @@ arm920_crval:
>  
>  	.align
>  
> -	.section ".proc.info.init", #alloc
> +	.section ".proc.info.init", "a"
>  
>  	.type	__arm920_proc_info,#object
>  __arm920_proc_info:
> diff --git a/arch/arm/mm/proc-arm922.S b/arch/arm/mm/proc-arm922.S
> index 824be3a0bc23..ca2c7ca8af21 100644
> --- a/arch/arm/mm/proc-arm922.S
> +++ b/arch/arm/mm/proc-arm922.S
> @@ -412,7 +412,7 @@ arm922_crval:
>  
>  	.align
>  
> -	.section ".proc.info.init", #alloc
> +	.section ".proc.info.init", "a"
>  
>  	.type	__arm922_proc_info,#object
>  __arm922_proc_info:
> diff --git a/arch/arm/mm/proc-arm925.S b/arch/arm/mm/proc-arm925.S
> index d40cff8f102c..a381a0c9f109 100644
> --- a/arch/arm/mm/proc-arm925.S
> +++ b/arch/arm/mm/proc-arm925.S
> @@ -477,7 +477,7 @@ arm925_crval:
>  
>  	.align
>  
> -	.section ".proc.info.init", #alloc
> +	.section ".proc.info.init", "a"
>  
>  .macro arm925_proc_info name:req, cpu_val:req, cpu_mask:req, cpu_name:req, cache
>  	.type	__\name\()_proc_info,#object
> diff --git a/arch/arm/mm/proc-arm926.S b/arch/arm/mm/proc-arm926.S
> index f3cd08f353f0..3188ab2bac61 100644
> --- a/arch/arm/mm/proc-arm926.S
> +++ b/arch/arm/mm/proc-arm926.S
> @@ -460,7 +460,7 @@ arm926_crval:
>  
>  	.align
>  
> -	.section ".proc.info.init", #alloc
> +	.section ".proc.info.init", "a"
>  
>  	.type	__arm926_proc_info,#object
>  __arm926_proc_info:
> diff --git a/arch/arm/mm/proc-arm940.S b/arch/arm/mm/proc-arm940.S
> index 1c26d991386d..4b8a00220cc9 100644
> --- a/arch/arm/mm/proc-arm940.S
> +++ b/arch/arm/mm/proc-arm940.S
> @@ -340,7 +340,7 @@ __arm940_setup:
>  
>  	.align
>  
> -	.section ".proc.info.init", #alloc
> +	.section ".proc.info.init", "a"
>  
>  	.type	__arm940_proc_info,#object
>  __arm940_proc_info:
> diff --git a/arch/arm/mm/proc-arm946.S b/arch/arm/mm/proc-arm946.S
> index 2dc1c75a4fd4..555becf9c758 100644
> --- a/arch/arm/mm/proc-arm946.S
> +++ b/arch/arm/mm/proc-arm946.S
> @@ -395,7 +395,7 @@ __arm946_setup:
>  
>  	.align
>  
> -	.section ".proc.info.init", #alloc
> +	.section ".proc.info.init", "a"
>  	.type	__arm946_proc_info,#object
>  __arm946_proc_info:
>  	.long	0x41009460
> diff --git a/arch/arm/mm/proc-arm9tdmi.S b/arch/arm/mm/proc-arm9tdmi.S
> index 913c06e590af..ef517530130b 100644
> --- a/arch/arm/mm/proc-arm9tdmi.S
> +++ b/arch/arm/mm/proc-arm9tdmi.S
> @@ -66,7 +66,7 @@ __arm9tdmi_setup:
>  
>  		.align
>  
> -		.section ".proc.info.init", #alloc
> +		.section ".proc.info.init", "a"
>  
>  .macro arm9tdmi_proc_info name:req, cpu_val:req, cpu_mask:req, cpu_name:req
>  		.type	__\name\()_proc_info, #object
> diff --git a/arch/arm/mm/proc-fa526.S b/arch/arm/mm/proc-fa526.S
> index 8120b6f4dbb8..dddf833fe000 100644
> --- a/arch/arm/mm/proc-fa526.S
> +++ b/arch/arm/mm/proc-fa526.S
> @@ -185,7 +185,7 @@ fa526_cr1_set:
>  
>  	.align
>  
> -	.section ".proc.info.init", #alloc
> +	.section ".proc.info.init", "a"
>  
>  	.type	__fa526_proc_info,#object
>  __fa526_proc_info:
> diff --git a/arch/arm/mm/proc-feroceon.S b/arch/arm/mm/proc-feroceon.S
> index bb6dc34d42a3..b12b76bc8d30 100644
> --- a/arch/arm/mm/proc-feroceon.S
> +++ b/arch/arm/mm/proc-feroceon.S
> @@ -571,7 +571,7 @@ feroceon_crval:
>  
>  	.align
>  
> -	.section ".proc.info.init", #alloc
> +	.section ".proc.info.init", "a"
>  
>  .macro feroceon_proc_info name:req, cpu_val:req, cpu_mask:req, cpu_name:req, cache:req
>  	.type	__\name\()_proc_info,#object
> diff --git a/arch/arm/mm/proc-mohawk.S b/arch/arm/mm/proc-mohawk.S
> index f08308578885..d47d6c5cee63 100644
> --- a/arch/arm/mm/proc-mohawk.S
> +++ b/arch/arm/mm/proc-mohawk.S
> @@ -416,7 +416,7 @@ mohawk_crval:
>  
>  	.align
>  
> -	.section ".proc.info.init", #alloc
> +	.section ".proc.info.init", "a"
>  
>  	.type	__88sv331x_proc_info,#object
>  __88sv331x_proc_info:
> diff --git a/arch/arm/mm/proc-sa110.S b/arch/arm/mm/proc-sa110.S
> index d5bc5d702563..baba503ba816 100644
> --- a/arch/arm/mm/proc-sa110.S
> +++ b/arch/arm/mm/proc-sa110.S
> @@ -196,7 +196,7 @@ sa110_crval:
>  
>  	.align
>  
> -	.section ".proc.info.init", #alloc
> +	.section ".proc.info.init", "a"
>  
>  	.type	__sa110_proc_info,#object
>  __sa110_proc_info:
> diff --git a/arch/arm/mm/proc-sa1100.S b/arch/arm/mm/proc-sa1100.S
> index be7b611c76c7..75ebacc8e4e5 100644
> --- a/arch/arm/mm/proc-sa1100.S
> +++ b/arch/arm/mm/proc-sa1100.S
> @@ -239,7 +239,7 @@ sa1100_crval:
>  
>  	.align
>  
> -	.section ".proc.info.init", #alloc
> +	.section ".proc.info.init", "a"
>  
>  .macro sa1100_proc_info name:req, cpu_val:req, cpu_mask:req, cpu_name:req
>  	.type	__\name\()_proc_info,#object
> diff --git a/arch/arm/mm/proc-v6.S b/arch/arm/mm/proc-v6.S
> index c1c85eb3484f..1dd0d5ca27da 100644
> --- a/arch/arm/mm/proc-v6.S
> +++ b/arch/arm/mm/proc-v6.S
> @@ -261,7 +261,7 @@ v6_crval:
>  	string	cpu_elf_name, "v6"
>  	.align
>  
> -	.section ".proc.info.init", #alloc
> +	.section ".proc.info.init", "a"
>  
>  	/*
>  	 * Match any ARMv6 processor core.
> diff --git a/arch/arm/mm/proc-v7.S b/arch/arm/mm/proc-v7.S
> index c4e8006a1a8c..48e0ef6f0dcc 100644
> --- a/arch/arm/mm/proc-v7.S
> +++ b/arch/arm/mm/proc-v7.S
> @@ -644,7 +644,7 @@ __v7_setup_stack:
>  	string	cpu_elf_name, "v7"
>  	.align
>  
> -	.section ".proc.info.init", #alloc
> +	.section ".proc.info.init", "a"
>  
>  	/*
>  	 * Standard v7 proc info content
> diff --git a/arch/arm/mm/proc-v7m.S b/arch/arm/mm/proc-v7m.S
> index 1a49d503eafc..84459c1d31b8 100644
> --- a/arch/arm/mm/proc-v7m.S
> +++ b/arch/arm/mm/proc-v7m.S
> @@ -93,7 +93,7 @@ ENTRY(cpu_cm7_proc_fin)
>  	ret	lr
>  ENDPROC(cpu_cm7_proc_fin)
>  
> -	.section ".init.text", #alloc, #execinstr
> +	.section ".init.text", "ax"
>  
>  __v7m_cm7_setup:
>  	mov	r8, #(V7M_SCB_CCR_DC | V7M_SCB_CCR_IC| V7M_SCB_CCR_BP)
> @@ -177,7 +177,7 @@ ENDPROC(__v7m_setup)
>  	string cpu_elf_name "v7m"
>  	string cpu_v7m_name "ARMv7-M"
>  
> -	.section ".proc.info.init", #alloc
> +	.section ".proc.info.init", "a"
>  
>  .macro __v7m_proc name, initfunc, cache_fns = nop_cache_fns, hwcaps = 0,  proc_fns = v7m_processor_functions
>  	.long	0			/* proc_info_list.__cpu_mm_mmu_flags */
> diff --git a/arch/arm/mm/proc-xsc3.S b/arch/arm/mm/proc-xsc3.S
> index 1ac0fbbe9f12..42eaecc43cfe 100644
> --- a/arch/arm/mm/proc-xsc3.S
> +++ b/arch/arm/mm/proc-xsc3.S
> @@ -496,7 +496,7 @@ xsc3_crval:
>  
>  	.align
>  
> -	.section ".proc.info.init", #alloc
> +	.section ".proc.info.init", "a"
>  
>  .macro xsc3_proc_info name:req, cpu_val:req, cpu_mask:req
>  	.type	__\name\()_proc_info,#object
> diff --git a/arch/arm/mm/proc-xscale.S b/arch/arm/mm/proc-xscale.S
> index bdb2b7749b03..18ac5a1f8922 100644
> --- a/arch/arm/mm/proc-xscale.S
> +++ b/arch/arm/mm/proc-xscale.S
> @@ -610,7 +610,7 @@ xscale_crval:
>  
>  	.align
>  
> -	.section ".proc.info.init", #alloc
> +	.section ".proc.info.init", "a"
>  
>  .macro xscale_proc_info name:req, cpu_val:req, cpu_mask:req, cpu_name:req, cache
>  	.type	__\name\()_proc_info,#object
> -- 
> 2.24.0.rc0.303.g954a862665-goog
> 
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/nycvar.YSQ.7.76.1910311829520.30289%40knanqh.ubzr.
