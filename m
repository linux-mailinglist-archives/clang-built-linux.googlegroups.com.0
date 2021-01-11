Return-Path: <clang-built-linux+bncBDPL7R4J6AKRBL5J6P7QKGQEFMQMWTQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43c.google.com (mail-wr1-x43c.google.com [IPv6:2a00:1450:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 984EA2F22F9
	for <lists+clang-built-linux@lfdr.de>; Mon, 11 Jan 2021 23:43:59 +0100 (CET)
Received: by mail-wr1-x43c.google.com with SMTP id m20sf161985wrh.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 11 Jan 2021 14:43:59 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610405039; cv=pass;
        d=google.com; s=arc-20160816;
        b=y1NYS+KI50Aba4sgZSwZOm4yZoQ3tR31txgojGnCruHQn/D56B4cgAWQ0DfpGA9I2B
         64lvF94tj0DdB4Em+sgvVc/aHIC1stZ47rVTdq9owufAELOCVuIIyv//ZP6IGIjT/WtM
         IDDwFeZrZttQcV3xJVUoYLrxp2ylO1KHRp9DgmQTJXoDwwal+rFyusIhluIsJTuRnQUm
         VjEE5ktDV4OvUSwoJmZeBOgJOfJDQSXlFUQN/AAASWXZ53hgfVDaXBOO0gKAQixoIahW
         vzFF+jq2LqUBPJEa9G1MZ5b+WA3Hwyt78TzExxlQR23+S7yRJlSqRYLpTIUbOt8EiZlA
         Ly3w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=2elGVIKRQP6T1CEUIZwnbDhpIE5aZRn4XvzzCwgraJk=;
        b=O7nKbKsbnsW8LesL2QyITZtcNVAoomG2xUUSMFNds/KLD3crJgCWpDqHRCw62Nv3Hn
         5ZPbBxC00oTMtCw8Vgu7jzHhlDkE02x9LdSRCQ3oWO+mcTOEGqf5SXbsX8GA3UUeKR3j
         6DZ71RA706JbZjTT40AUeAg3VX28Hjn1apTucoX+h0Ln/06VMr06hM6pFTEHbcflnBMG
         Dh4BT33lmUPH4yeyCuoGvi+PAUTyGckAp7y6/qWu7hPogwEY76m9USaR42b2IOQpXdvS
         18bPE5N8dKNkDXM1AQzeHmmyEODSNa81BfSPBHhp2QHH7jA6QzOi3Qb+ho59f+TzZhy0
         PPdg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tsbogend@alpha.franken.de designates 193.175.24.41 as permitted sender) smtp.mailfrom=tsbogend@alpha.franken.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=2elGVIKRQP6T1CEUIZwnbDhpIE5aZRn4XvzzCwgraJk=;
        b=HB9g3YU3QTPVs6C7rf/c8o32GS/fi5QRGPa1+fU4VUjaq8cPTvKpfQsAUTrNMGLHGD
         roBWx8D0QAFjJ0LUO6MhOYU87QS6QBMBtCyWG7/vsfjLvpySH8j74ZloEY4GZKY0vp+q
         mOGBQmuzAgtfVX9a0a/uZJS15xZH/TpDznCydGxpO68BNzmWfN7Tqrl0j/s2Yvm679GF
         YodOZ0SKgwOy4FW0Mg8i4F3dcFBvyYdjKv6rOZsccFLhXi8E/eI3GYe+Ge3kuo5WT99v
         gWPNpv1leFy+KeEQyEmqu+bY01ElsEN8w7t6po0afrufwCKbzNqpi6X1OMGKOXGQU8XJ
         56bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=2elGVIKRQP6T1CEUIZwnbDhpIE5aZRn4XvzzCwgraJk=;
        b=e9vfH1EeGONgtZLgI2bA9QSV80rTwb9YEvCO+O62V+Qsm7bmaREkq6QUtn/mOtNQ3a
         p3bG0Ez10mc9JXaiJUak1nJiKdjJpn7ttj/9i442jsOxXQ0TWAzWbQQRGGTjjdsNiTXb
         gWHz5xPbjp8zCPcFGeiMUBNNq95UnCm16D31vEt8b2xnuq5BXeHioj7cynH4lhqoXAf0
         uWjCGpiEilarxjIPDmalzWqz61jgsdSdOiqHh0KJD0FXGtGl1bCCB7YaApVH0OJnrCQG
         CnlvGU79QOfYxLovrdCVLTvsEp/J54/7u5EBzyu8WYWCgBXos/KP3RFOuEn4hTWccAY8
         RX2A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531q7craj9szD8UGwwRgIAOMw+Y96MzasgqQ7wLH1W31d/TzeMVs
	byLJ1Wv2PRIi+TpdTnv2qn0=
X-Google-Smtp-Source: ABdhPJxRc4idgjUIkTm0vNdozyjeBTkSxw/yZRJ9tJ/S02aJQyaUJFqAB7HC0fx4yui3GPtJasmIjQ==
X-Received: by 2002:adf:9b98:: with SMTP id d24mr1211845wrc.240.1610405039358;
        Mon, 11 Jan 2021 14:43:59 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:5543:: with SMTP id g3ls1045714wrw.0.gmail; Mon, 11 Jan
 2021 14:43:58 -0800 (PST)
X-Received: by 2002:adf:cd8f:: with SMTP id q15mr1146249wrj.79.1610405038555;
        Mon, 11 Jan 2021 14:43:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610405038; cv=none;
        d=google.com; s=arc-20160816;
        b=MoEDNnbXgsjxyCskVAHnAju03v7R4Wqv5evwnb29/xSKq9wp/YGOIA5zxlG5KlV8WF
         yPZxTxaBCeUcy49GFZNDReawp4O2T120cXBvcNjDgUUtCmvAJbVQhaEAowuWUxq93qUY
         iJytgPE+kOZZAmVxN4jzgQt3Z0lKWWd7HbhYmJJ9+ZV7Zd9PCjmKDESs2dSVh3Q8t8Vp
         GpdVmzOObnfx7bJwHDfvjpPjjN5Wb7y8djhzayWmRCnwJjSslv0tZ7jZzZCy7ObYlbvF
         W3WVCoYLsoF0stGo0307QDslsBrK+VGI03WWob7rBpo5m46v+IFfZCVAgM5EXgxFFG49
         vOIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=mXcRPTBBL/6g2b60+ezPe8xH0l+FZxu+KEIwq9nfzJQ=;
        b=l7dghWwJI4Kv5yVXZcQp5ZQrMlibE0RKTB5W9q6ro4LpELUn/y9QBOuTJhMH/LF5fL
         XbKZhCDHJSjvbMB7UF8YWKUSvlndJmLtOa4cTqoPu9txNhyCYNfWQjZR9zNJDjUcdUj0
         ob9QMxQ+2yEmFA0inj5iYpo4L9H8WR1N2WAhrnRN9jpoAXDfkBFyXQYi2JZK/n6uMKth
         6j4ubI6A/tHwEbHujzVQWjI+HYd4iNtwc+Sn4Uk4RgQBOJp5tc2AH8xA11rw3i5V51Lr
         QU53M6QcgvnbyKelPE23OOU4PsCAmQn82SXd70lnInSvz3dF5ZHa9idnRPsMNuvn93/Q
         ByLw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tsbogend@alpha.franken.de designates 193.175.24.41 as permitted sender) smtp.mailfrom=tsbogend@alpha.franken.de
Received: from elvis.franken.de (elvis.franken.de. [193.175.24.41])
        by gmr-mx.google.com with ESMTP id 7si48607wrp.3.2021.01.11.14.43.58
        for <clang-built-linux@googlegroups.com>;
        Mon, 11 Jan 2021 14:43:58 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of tsbogend@alpha.franken.de designates 193.175.24.41 as permitted sender) client-ip=193.175.24.41;
Received: from uucp (helo=alpha)
	by elvis.franken.de with local-bsmtp (Exim 3.36 #1)
	id 1kz5uk-0007xs-00; Mon, 11 Jan 2021 23:43:54 +0100
Received: by alpha.franken.de (Postfix, from userid 1000)
	id 015D2C0899; Mon, 11 Jan 2021 23:43:05 +0100 (CET)
Date: Mon, 11 Jan 2021 23:43:05 +0100
From: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
To: Alexander Lobakin <alobakin@pm.me>
Cc: Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Huacai Chen <chenhuacai@kernel.org>,
	Pei Huang <huangpei@loongson.cn>, Fangrui Song <maskray@google.com>,
	Jiaxun Yang <jiaxun.yang@flygoat.com>,
	Ralf Baechle <ralf@linux-mips.org>,
	Corey Minyard <cminyard@mvista.com>, linux-mips@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arch@vger.kernel.org,
	stable@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH v5 mips-next 0/9] MIPS: vmlinux.lds.S sections fixes &
 cleanup
Message-ID: <20210111224305.GA22825@alpha.franken.de>
References: <20210110115245.30762-1-alobakin@pm.me>
 <202101111153.AE5123B6@keescook>
 <20210111205649.18263-1-alobakin@pm.me>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210111205649.18263-1-alobakin@pm.me>
User-Agent: Mutt/1.10.1 (2018-07-13)
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

On Mon, Jan 11, 2021 at 08:57:25PM +0000, Alexander Lobakin wrote:
> From: Kees Cook <keescook@chromium.org>
> Date: Mon, 11 Jan 2021 11:53:39 -0800
> 
> > On Sun, Jan 10, 2021 at 11:53:50AM +0000, Alexander Lobakin wrote:
> >> This series hunts the problems discovered after manual enabling of
> >> ARCH_WANT_LD_ORPHAN_WARN. Notably:
> >>  - adds the missing PAGE_ALIGNED_DATA() section affecting VDSO
> >>    placement (marked for stable);
> >>  - stops blind catching of orphan text sections with .text.*
> >>    directive;
> >>  - properly stops .eh_frame section generation.
> >>
> >> Compile and runtime tested on MIPS32R2 CPS board with no issues
> >> using two different toolkits:
> >>  - Binutils 2.35.1, GCC 10.2.1 (with Alpine patches);
> >>  - LLVM stack: 11.0.0 and from latest Git snapshot.
> >>
> >> Since v4 [3]:
> >>  - new: drop redundant .text.cps-vec creation and blind inclusion
> >>    of orphan text sections via .text.* directive in vmlinux.lds.S;
> >>  - don't assert SIZEOF(.rel.dyn) as it's reported that it may be not
> >>    empty on certain machines and compilers (Thomas);
> >>  - align GOT table like it's done for ARM64;
> >>  - new: catch UBSAN's "unnamed data" sections in generic definitions
> >>    when building with LD_DEAD_CODE_DATA_ELIMINATION;
> >>  - collect Reviewed-bys (Kees, Nathan).
> >
> > Looks good; which tree will this land through?
> 
> linux-mips/mips-next I guess, since 7 of 9 patches are related only
> to this architecture.
> This might need Arnd's Acked-bys or Reviewed-by for the two that
> refer include/asm-generic, let's see what Thomas think.

Looks good from my side and I have it already sitting in branch for
submission.

Arnd, are you ok with the changes in include/asm-generic ?

Thomas.

-- 
Crap can work. Given enough thrust pigs will fly, but it's not necessarily a
good idea.                                                [ RFC1925, 2.3 ]

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210111224305.GA22825%40alpha.franken.de.
