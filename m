Return-Path: <clang-built-linux+bncBCIO53XE7YHBBT4FS33AKGQEWHPDIZY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x937.google.com (mail-ua1-x937.google.com [IPv6:2607:f8b0:4864:20::937])
	by mail.lfdr.de (Postfix) with ESMTPS id F17371DBDBF
	for <lists+clang-built-linux@lfdr.de>; Wed, 20 May 2020 21:19:44 +0200 (CEST)
Received: by mail-ua1-x937.google.com with SMTP id n36sf1575069uan.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 20 May 2020 12:19:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590002384; cv=pass;
        d=google.com; s=arc-20160816;
        b=gime6bFZE+lhbX4zqhgdosjOShj6NvIojY59vZwPcTyuB3WHqJUFv+UyQpfBhPXuDd
         vY5zv0ii3GnBa0fBotdaINHdeJZYkNGW6JfrtqyDK6bZb1uyb1j+xtAto7cE0/vHzvOv
         oWLj8oq8RtWjF/Mlh4l7hILVQTOoXKenNg33T2z+Bl/EyC0CXrgRfd1lE/oJEECHAC0b
         u75xwchJXz1xYwr2jtG5+lyZgCKniqepPXXSynXD1VVPMR6w5eKwsQ9+vjOzN9wrNAlH
         JL99ZehJVPU+Vi0hGplYPo9cpKQHfPWrhn2UNBH50/iak0ShjvSK8YeHEuP2JoeX6i4w
         upIg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=DbMr3PzY6ojfd8WJhpQbkaO9WBTKFGOTqiSyp65Pd3g=;
        b=EnO+Trbh2epFmBpBgu9hbMH//ZZHWKCEha00jk+5sDRIL8/j/YNEFpgBGEgZWSQ1mq
         1liNe0xHMDy0G45w1vZhOCdavTHdXxMXbrdL+p/Vj663kMPZCBnpWFV6xUXmlepwnCSO
         ZfypkvRqjSAqseHV717o9FlaTveSatGk73I3yu7k5o4jjpxc99SxqcjnS2pxwavyCZ2S
         l2jMunRrToQsrqg9/yl6mFXG+z0HAUtd0JaiWOw7P7MaCxCk1Bfe4YsfEWn15l1mmLNI
         w3znFBguiQk2NCPHo5JnG3cxOcPqJzp3wvZhcffHgl1CcaqPbhqK0WKx7hWSp+88UUwZ
         4x5g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=oXgiCKJy;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::f42 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=DbMr3PzY6ojfd8WJhpQbkaO9WBTKFGOTqiSyp65Pd3g=;
        b=UAkzemjTcxvtvAMRY+y4rBi6yfK49FLeqjsnqQn1BUAZWqHxgRUNabPQWrNM/4D9El
         iZmOOjgV2dIGKHViqS9l6Coqyb2KsByXaKzR5yXSDXwe44JRU7odxa6Wf5FWE6To7BKb
         8lUnEVjddLS340iOUNs524Eq9LfLtDskCI4lzzmIZO+6TuXvG+J0PlA2Gs53Ct08g0Rm
         8dHOtoNqHbUenzNOvoi9gAQkGLEmjy3qVFg8U6X9dMp7UOBYT4RvjW39d8Bfv4+AHfrh
         uXVMwWCkVZBJJS6Ko13c9CVVxW6YsBgX5NM6MN5xZ37OsDE+VwMp2XaLfErD/HbzUe6u
         rkxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=DbMr3PzY6ojfd8WJhpQbkaO9WBTKFGOTqiSyp65Pd3g=;
        b=RyDuVHrYzumC9YSAIhX+vy7FBvU8TiJdaHhpRIdcX7AWX0/q6duPGDbgxg1kCvIeIG
         HN+MXNCMn7kUJRuuN6iKdAdQjDqSBLTwrWgSmfVIXoV+RfMuWh1p1+v3Rw/UBQheLZ+g
         0WbMP53aMc4NHosW5xnBCxDCxHHbpJ5BwYGc76bPnD524l84B8TcXxxzENQoJ1ynvnbw
         pNJEXYV7YSVFWRRlmkE82uMUwB5AIgtnUVkV5Pm06kXIlD56KSOWcwASx47eSDTqw9g2
         sZXDnYTya0JZbqPYr76xjRQVSEdUTbgOy4/htPTfWfd5BO2abAujhzpP/RCDcS1U7JYr
         vy1A==
X-Gm-Message-State: AOAM533BmDQbieskeRsh3xtvVAwGIsLHcFZGRJBlsMmC0+sIA+xGk5cf
	7DBxIk1phBIBnyZGDAwkWXs=
X-Google-Smtp-Source: ABdhPJwmX5FCECOXGeT5M8m/r3W/0H0f/qf/2x6YA1zBfLC7YmgP2SQQ2LmHqmhJtqeimwuZ6RK/9w==
X-Received: by 2002:a1f:1b8d:: with SMTP id b135mr1973116vkb.46.1590002383949;
        Wed, 20 May 2020 12:19:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:418:: with SMTP id d24ls312863vsq.7.gmail; Wed, 20
 May 2020 12:19:43 -0700 (PDT)
X-Received: by 2002:a67:e884:: with SMTP id x4mr4617682vsn.106.1590002383522;
        Wed, 20 May 2020 12:19:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590002383; cv=none;
        d=google.com; s=arc-20160816;
        b=duKSc7BWD8i9wxr3MaGsFFOlsTOSaHQx/f7ZTeGnJ+upWbiOYAs5tPrtjppFYp9b4/
         IyflL4mk1JQITyM5xMJiCgmu/RDuD7f2an/EwTdqDJAhCnFGmkQAkPI5+Nt+ojdI9cVK
         JQIS5pLvaZAbhs+00OlxEy10GcuJ5XO8G/kUM+iea4T2+NdVvbLViNtgruWfUzsdtAzE
         dTYwa+Bz5DisETsnNwvm5np5cYGs1OaLeLkhrP5w1LQd+IhQWdpFX6jYapExx6O98E+Z
         ERuvMKoyyYaovxlyjIsjwHAGXyky+meVo4CpIxdJGFEr07XpeU2+HuvUcCQGXcl9uiYU
         ElXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:sender:dkim-signature;
        bh=vhr7WCmmnoqcFtr3kVQ47NkaKX9kqEhPURBr+GaKOPE=;
        b=vXs5KUQJ/SKDUtqQ2k7ZWCedjd4vVWHBaofhheBMeAwHI0Piw6U2TSgCtDc4yBM8FT
         l7vG/ig1nmSVrBZyU1TZIu2Rc5Kt9zU9QZY4KB9wloYWoCZDGq24gdM/GEdFIpEtFZFy
         BHXpw/m+B9VWpo9po96CfcaYgARUhK6l52SVxFhzhhK/QqPzSlLTUkcmtPjCVHR39tAw
         +gU0V7GF8cM3bpTugb3boZJAieGbM3KzTlEd4YO2TNMl5c5/gcvFFYSsfxob7+hptm5C
         QU8/w2tuoCODqPJw71vUYe5rADNPudVf/I4cy+Z5WzjGtMyDJ87jAd9AlqlF+2qDDUH2
         Efig==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=oXgiCKJy;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::f42 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qv1-xf42.google.com (mail-qv1-xf42.google.com. [2607:f8b0:4864:20::f42])
        by gmr-mx.google.com with ESMTPS id q123si249421vkb.3.2020.05.20.12.19.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 May 2020 12:19:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::f42 as permitted sender) client-ip=2607:f8b0:4864:20::f42;
Received: by mail-qv1-xf42.google.com with SMTP id l3so1902758qvo.7
        for <clang-built-linux@googlegroups.com>; Wed, 20 May 2020 12:19:43 -0700 (PDT)
X-Received: by 2002:ad4:556c:: with SMTP id w12mr6480472qvy.52.1590002382968;
        Wed, 20 May 2020 12:19:42 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id c25sm2812083qkm.119.2020.05.20.12.19.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 May 2020 12:19:42 -0700 (PDT)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Wed, 20 May 2020 15:19:40 -0400
To: Fangrui Song <maskray@google.com>
Cc: x86@kernel.org, Arvind Sankar <nivedita@alum.mit.edu>,
	linux-efi@vger.kernel.org, clang-built-linux@googlegroups.com,
	Nick Desaulniers <ndesaulniers@google.com>,
	Ard Biesheuvel <ardb@kernel.org>, kbuild test robot <lkp@intel.com>
Subject: Re: [PATCH] x86/boot: Discard .discard.unreachable for
 arch/x86/boot/compressed/vmlinux
Message-ID: <20200520191940.GA3450657@rani.riverdale.lan>
References: <20200520182010.242489-1-maskray@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200520182010.242489-1-maskray@google.com>
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=oXgiCKJy;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::f42
 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
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

On Wed, May 20, 2020 at 11:20:10AM -0700, Fangrui Song wrote:
> In the latest efi tree, ce5e3f909fc0ed67e58367b9c56a54c20a51080b
> "efi/printf: Add 64-bit and 8-bit integer support",
> arch/x86/boot/compressed/vmlinux may have an undesired
> .discard.unreachable section from drivers/firmware/efi/libstub/vsprintf.stub.o
> 
> .discard.unreachable contains an R_X86_64_PC32 relocation, which will be
> warned by LLD: a non-SHF_ALLOC section (.discard.unreachable) is not
> part of the memory image, thus conceptually the distance between a
> non-SHF_ALLOC and a SHF_ALLOC is not a constant which can be resolved at
> link time.
> 
> % ld.lld -m elf_x86_64 -T arch/x86/boot/compressed/vmlinux.lds ... -o arch/x86/boot/compressed/vmlinux
> ld.lld: warning: vsprintf.c:(.discard.unreachable+0x0): has non-ABS relocation R_X86_64_PC32 against symbol ''
> 
> Reuse the DISCARDS macro which includes .discard.* to drop .discard.unreachable
> 
> Reported-by: kbuild test robot <lkp@intel.com>
> Signed-off-by: Fangrui Song <maskray@google.com>
> ---
>  arch/x86/boot/compressed/vmlinux.lds.S | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/arch/x86/boot/compressed/vmlinux.lds.S b/arch/x86/boot/compressed/vmlinux.lds.S
> index 0dc5c2b9614b..8f1025d1f681 100644
> --- a/arch/x86/boot/compressed/vmlinux.lds.S
> +++ b/arch/x86/boot/compressed/vmlinux.lds.S
> @@ -74,4 +74,6 @@ SECTIONS
>  #endif
>  	. = ALIGN(PAGE_SIZE);	/* keep ZO size page aligned */
>  	_end = .;
> +
> +	DISCARDS
>  }
> -- 
> 2.26.2.761.g0e0b3e54be-goog
> 

Thanks! Maybe add a note in the commit message that the section is
generated from unreachable() annotations when CONFIG_STACK_VALIDATION is
enabled.

Tested-by: Arvind Sankar <nivedita@alum.mit.edu>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200520191940.GA3450657%40rani.riverdale.lan.
