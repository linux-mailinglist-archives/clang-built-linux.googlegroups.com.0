Return-Path: <clang-built-linux+bncBCIO53XE7YHBBR5YTL3AKGQEPT362PQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3d.google.com (mail-io1-xd3d.google.com [IPv6:2607:f8b0:4864:20::d3d])
	by mail.lfdr.de (Postfix) with ESMTPS id EBB641DD10E
	for <lists+clang-built-linux@lfdr.de>; Thu, 21 May 2020 17:20:40 +0200 (CEST)
Received: by mail-io1-xd3d.google.com with SMTP id c15sf4955739iom.15
        for <lists+clang-built-linux@lfdr.de>; Thu, 21 May 2020 08:20:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590074440; cv=pass;
        d=google.com; s=arc-20160816;
        b=Z98IuSB4TOj0mT1kGyjM90hf7IALnsOSppB+EQHqrRLTTMtO77hk+JNq5lb0KCHM2o
         8wUJaillpomljqiIWT2r6TnP5gSiMTSvQDjb2/Y5dC8oOCW6gw4yWuceaf6lMSBsDQxj
         2b/etqTKH6JaDLQcC5/D0wTAljDKeqFJqV+76RorEE3S1HtJaYCGQfSlnhlWHWNIXK/V
         uH6570vogOx4DHQCgGIzqyt0oS82HKEPyUeeqpacLR7BAcOUSnnkI+24ORnGQpvFBQTb
         wSv7qY8ukE/x97EpjAKEAJq3DgDj84JNHzLeaH5muktREsr9Vv1UqPg4DT7PRRMwP/3w
         BPog==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=u6FTUyP+3LpVYH4z9uOp/pXK1I7eVb5kJi1LIFauAYw=;
        b=fe3Q/JP9LXglwLJdDModOjLI0tg7naTYCfFrJXehzwpdXaZdGWstci+prrx3BsLjnE
         eyJc7k1ybHY49jRdsdA3Gtl+XC59pjq5dcqx0Bu5zWN/BGBzI18oksPEdhkwKI8scF1C
         9KFqHc7GfRVo3CIePSccAnfeAOYNOi1bRoqIiUznnDDTE64D9Pe5FdLFmt98g4LW6fZ4
         pCH/gAuQudyRIb+SziR7nVWLjoAQ9IYZsWt7z4dUn/9a/A/kSE7dkxgft7A+oS8sBCZJ
         qklC0f/+QiIpuISTkTndxPIOa7aJOAaJ0moAZEj32BgAXEsru35XF8ig6LCvOgjxSuck
         3sVw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="N8x6M/zN";
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::f41 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=u6FTUyP+3LpVYH4z9uOp/pXK1I7eVb5kJi1LIFauAYw=;
        b=tlX8NorLBGvHFr74ht/HUbEGcYKVx6NkrEmat6VMWQcOblvqHJxGG/8dgrcrr3DgHQ
         TvXH/mGbgOjrp41tlDCLfBOV2SDdaYwjtkCFm7aOnzgmfmNdtMCkNY44UMblofLib/5r
         kWyw9GWE1k+wwB+UnxAfbAVKA4lCuRBlSiZjVVzRmyMRDU64TqepO0loQcMjRp9oIt7w
         5sL2HQEh0Zq2uV32SWwKkiTG4A7mAYnKTbKcPhcuqRQi77aLXOMEzthqDG1iAdhJYWmv
         ZUBun0zPE1M99r166p2lf7nu8ocsmcOrvpeu7i+BEpUPyzH4ZRfqoXp5xBpBbIZCYDK+
         QCZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=u6FTUyP+3LpVYH4z9uOp/pXK1I7eVb5kJi1LIFauAYw=;
        b=CYrP8l4s8Ka1IYA3ozfZTCDfdFbwglCu3nuBY2SVjMocosADo+CxnJtmy8qTk4NIyu
         z6SFIt0mKy/IfGwt/kUk5ABYKQFS1FeqKqDAKcCmfqr3yU7kD4jHCneOzu9ICe308edF
         O+EeFqHxYTU52SxG5Xg3fh05ZVH+1quliQzSw9164h3NUsbOV/pAh3Lr3S5A09ljoZFC
         Zc9mxR0BmCUMUJv8VcLrN5DF/zCnrPx7PjIQg9k9xOOra+Q/BxrtrUo0K291vO/JJerW
         vyW+/cWlqDOFDCSbnTWuSLKe9rtTxeyO0/uoUCe7ondox4zbRg/+ai5uXKv+bboP7Q8E
         UEkA==
X-Gm-Message-State: AOAM530jX0PCBAOpy4GRLq7y7T9sXp4JRX6hreg0vVvwppsABa/tW8nL
	BSaQg0gEkG0QkL5R8PhZYGU=
X-Google-Smtp-Source: ABdhPJxeF4bM58a9wQ9QoerHal7TD1hz0fXMuhiH2hx21YZiAH2kQK/PI3RlKmcQRJgQYn+DBfqC7Q==
X-Received: by 2002:a92:b743:: with SMTP id c3mr8459076ilm.92.1590074439874;
        Thu, 21 May 2020 08:20:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:da05:: with SMTP id z5ls694630ilm.10.gmail; Thu, 21 May
 2020 08:20:39 -0700 (PDT)
X-Received: by 2002:a92:3c49:: with SMTP id j70mr9553434ila.286.1590074439482;
        Thu, 21 May 2020 08:20:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590074439; cv=none;
        d=google.com; s=arc-20160816;
        b=Z9hPhNQWq8kZJd2PAgiPT+lcTpa6mJ9yym7eshPqsnKAQ88TYvpOtB2q5PUQogj9GJ
         cbHDPix2q5m8JrrippIxW+m9gNOFrNyUbsln2XkBPdyRxilpiJCDBibBiCnCGpOlqWEb
         E9vxemI26XbYFT24w3JenhL7C+dryA3VVekHQck0Qqe+xCCDA/YVrPK6R3UIPvIw1g6q
         F6l57qG2i6qv+nuXdEdml4D4LzMBtLp88TJJeK54E414l915EDvPwSdZF/DrZzi/NSH9
         RJ7Zc/ZWsgePhBhEKPAJY6llmh/O/pT7GYNLe3+2DtFYMdUxU79xKZO9cz/L2Kw6U06p
         sWZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:sender:dkim-signature;
        bh=PyltkYq399/JnsXHqh2D/haZU5ohhj4XlFCKZOShGc4=;
        b=WnulVrBsM2P9iyCjNAmT6dHFjZwb7hnoTHQd1+1bPLd8wLySIty5UH7ar8+nlEjvey
         9Sia/C8Uy6pPVoTURmxEwxcTkE0t0Qt9uxSHsOMcK5wfgapMp/ppxH0BG3xj7icz7BnH
         AG6FqBo86CInUEWWIbhzT0FCcl1kjyfSKU5lGHnsLBGnufoGpL5zvVltB4fSQwHFPf1i
         a8GO0/kYJcVrw20zXJwlK3A5N+Q7Mj4i//DjTj5lFABgm0ExEaEB9c0tnatdovNX/XHx
         m80k8zmDqRvliuEBBchgYk+opuI9zCVoy5KMt9gqUTzaqEiVMCSwj3qH/rlYe3FtqRVH
         tZSA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="N8x6M/zN";
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::f41 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qv1-xf41.google.com (mail-qv1-xf41.google.com. [2607:f8b0:4864:20::f41])
        by gmr-mx.google.com with ESMTPS id b11si338638ilf.4.2020.05.21.08.20.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 May 2020 08:20:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::f41 as permitted sender) client-ip=2607:f8b0:4864:20::f41;
Received: by mail-qv1-xf41.google.com with SMTP id x13so3238488qvr.2
        for <clang-built-linux@googlegroups.com>; Thu, 21 May 2020 08:20:39 -0700 (PDT)
X-Received: by 2002:ad4:466f:: with SMTP id z15mr10845318qvv.101.1590074438779;
        Thu, 21 May 2020 08:20:38 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id l5sm5304896qtu.42.2020.05.21.08.20.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 May 2020 08:20:38 -0700 (PDT)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Thu, 21 May 2020 11:20:36 -0400
To: Fangrui Song <maskray@google.com>
Cc: Arvind Sankar <nivedita@alum.mit.edu>,
	clang-built-linux@googlegroups.com, x86@kernel.org,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/1] x86/boot: lld fix
Message-ID: <20200521152036.GB502432@rani.riverdale.lan>
References: <20200520225654.4144534-1-nivedita@alum.mit.edu>
 <20200520233357.GA4160490@rani.riverdale.lan>
 <20200521021217.yqsulqwfrhqorp7p@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200521021217.yqsulqwfrhqorp7p@google.com>
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="N8x6M/zN";       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::f41
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

On Wed, May 20, 2020 at 07:12:17PM -0700, Fangrui Song wrote:
> On 2020-05-20, Arvind Sankar wrote:
> >On Wed, May 20, 2020 at 06:56:53PM -0400, Arvind Sankar wrote:
> >> arch/x86/boot/setup.elf currently has an orphan section .text.startup,
> >> and lld git as of ebf14d9b6d8b is breaking on 64-bit due to what seems
> >> to be a change in behavior on orphan section placement (details in patch
> >> commit message).
> >>
> >> I'm not sure if this was an intentional change in lld, but it seems like
> >> a good idea to explicitly include .text.startup anyway.
> >>
> >> Arvind Sankar (1):
> >>   x86/boot: Add .text.startup to setup.ld
> >>
> >>  arch/x86/boot/setup.ld | 2 +-
> >>  1 file changed, 1 insertion(+), 1 deletion(-)
> >>
> >> --
> >> 2.26.2
> >>
> 
> I found your PATCH 1/1 on https://lkml.org/lkml/2020/5/20/1491 
> 
> -	.text		: { *(.text) }
> +	.text		: { *(.text.startup) *(.text) }
> 
> The LLD behavior change was introduced in
> https://reviews.llvm.org/D75225 (will be included in 11.0.0)
> It was intended to match GNU ld.
> 
> But yes, orphan section placement is still different in the two linkers.
> 
> Placing .text.startup before .text seems good.
> In GNU ld's internal linker script (ld --verbose),
> .text.startup is placed before .text
> 
> Reviewed-by: Fangrui Song <maskray@google.com>

Thanks. I'll reword the commit message to include a reference to that
change. It's also not just 64-bit, on 32-bit it currently fails before
it gets around to linking setup.elf due to the text relocs issues,
that's why this one doesn't show up, but they are in fact at least
consistent.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200521152036.GB502432%40rani.riverdale.lan.
