Return-Path: <clang-built-linux+bncBDPL7R4J6AKRBUPN3T7QKGQELBRK3DA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x140.google.com (mail-lf1-x140.google.com [IPv6:2a00:1450:4864:20::140])
	by mail.lfdr.de (Postfix) with ESMTPS id 705F22ED44B
	for <lists+clang-built-linux@lfdr.de>; Thu,  7 Jan 2021 17:29:06 +0100 (CET)
Received: by mail-lf1-x140.google.com with SMTP id q13sf6606847lfd.16
        for <lists+clang-built-linux@lfdr.de>; Thu, 07 Jan 2021 08:29:06 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610036946; cv=pass;
        d=google.com; s=arc-20160816;
        b=o9Qu+bDYrEPDIEgXaYYrBexHfYA4n7kPgnX11Oz1sLqBmDECR6q94Z/QZTCwFMQBga
         UUoJG8MIDIwlENMLeFTF0tyGWfma+iP3aO+1s0L1pMDWIwwTX2QHn3b1HlqjdHBXPez4
         hrjrkyVHTZh0u3gB6hDY6rEVDtaFK/5LtBbZoSiZxJoByS2vslANBwXyNZv2IwpC4R+h
         u1xxlZa3UmAQymyNSNknr1AXI+XTG6ox60b8HMg/hYIJ8PoMDIoMVlLpPI9Hg71VRZEb
         JELDVHOD3pCUKug0mgcW28HFXEd27azME9oXJYSy7AFZptXRnvC1Zbai6RCCqfPVvAsu
         dXRA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=S72+vV/hQBi502wc0Yc6F4FHE08TAAAaVyVIqlAOi0A=;
        b=NIYLXhYnR7S3HGtpK+qTMbyKMADfNMTQ7v0ffg4y30jaSPb54BpXgC314IZbFmZntA
         jBPuUzslTTPZ9VjW//+CbTbQsRHHBC/TVIKQlVGlPkh/cgRMzBoLatErKOjGXlmHiNVq
         IWfF3pGrASwe1WTDhgKB9szTQ2sB6UihE+ZIaUq5CoZmxrZg9V7mdQfkylCuust3NWAJ
         HYAbqIqbrFa+bzr8lV25a+r348zbkxZNAbY5qpjP5tcT2gCbJADBZ9easuImDqw58ctT
         jeIi8SkMDdDeBsilY+qcnoAKPdsT1G7sIBHDizuNk7/Ndw+3BCMlT6scbXUvjoC5usKY
         2X7A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tsbogend@alpha.franken.de designates 193.175.24.41 as permitted sender) smtp.mailfrom=tsbogend@alpha.franken.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=S72+vV/hQBi502wc0Yc6F4FHE08TAAAaVyVIqlAOi0A=;
        b=Ar73IEzZkCwNpH4ZuQ5FRz4WpRMJK9ISwh3jCOcIemORHWBs8D/8F+ULBAXGZEg2nP
         jz0HMzAqRI+xt0jwctr+it1uCMJOOCBp4pifcJYbpg5eMUc+PLRqiwASqDr7PBYXnla0
         d1Za57wg3Ggpkr4LBxegfk0wpKeN/1sdfQjPwauOQqj9buujI7NNSPxrH6IP8c+ZwI46
         nb7j3PpzH4Gfb8jITgueN1CokjFdpUR0mGWtYm7ntGInjlEzN8ljp5Tpa4yd7FV4/wng
         siHOSaadbRpwjvUALWdOnp59nCxCs4pJEO2VxAi3b7+lgcnKrCEbTDBWjI/ZiDqWZHgh
         cBJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=S72+vV/hQBi502wc0Yc6F4FHE08TAAAaVyVIqlAOi0A=;
        b=E8M0/pvhfHIV2r4HS1xKMmKZVijl5MAp1pekvmg7LkoZ1TSgnaxlEWMzT8UKBIpo9M
         C08vCbe/utjDBvEYRItd5ST7EU/52IuClARGvRcSBqnNzE48gyN+WC2crRLXIHQtoR2N
         Aeir6wxRDRQ9a5kBMUQ7hn+5w4akVvrpFvRCcvFxvZS3Y5pqhnnDu6m5YoWFoV4PGm9C
         aHaQva4o9sqipKx5FBnLvZLP3gLSvBI85ri349NcCvZrPxitsGSqS7pmzL2DnGev8dxR
         oQEFwLUNY+bdjZWS63rt0RhknLCKt3mecnzEMtaK25e4M6hwWg7nX5VHjUXtodD1ZrpZ
         infQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53166XBPBEC/3K9FjqVNlws4tKWZ8kHGZ7+sy4ktwBllEHjRxVGo
	8gI8Ii/tlb3jt3NK9MyDxtM=
X-Google-Smtp-Source: ABdhPJxMSvx+rQbr/EMPAiRI6wAQMqnf1LZyw/G96K4QUpm+aXaC8Pxltk4Po/hvtSi3rmD9NSVgRQ==
X-Received: by 2002:a2e:9d85:: with SMTP id c5mr4405862ljj.80.1610036946043;
        Thu, 07 Jan 2021 08:29:06 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:c886:: with SMTP id y128ls833426lff.0.gmail; Thu, 07 Jan
 2021 08:29:05 -0800 (PST)
X-Received: by 2002:a05:6512:789:: with SMTP id x9mr4001547lfr.487.1610036945085;
        Thu, 07 Jan 2021 08:29:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610036945; cv=none;
        d=google.com; s=arc-20160816;
        b=Rq0DjQB+F82a5wqaDXX/Iw5LC+YICWnQoR73/mugf6yV5etn/KckJyIhd+FBuqgezR
         Nna7tvcC0sk76p0v2fSChBwgDhsoKcm9ksjTdM3jVhL5JGsqFy/7+5wy9JE355LJkI7x
         sAMuji0K4/IdlvBsXpRcf5Bk5KM7+OLTmf2+R/k1UrmaIZ4gjsOZL75Xt3o3Zw+TK4jR
         8ijuvq7f+xd7yOqXgF/FEydIMD6nlEAkCMEUx9SStyh7PbdzNo8jf7YEigUmeOuaylxC
         0e2kE4Im9VSVoooB3qST7/BcjnJ2D5QivBE/W+qrRYBmk9t0fCSGbNok761VfmdVUSvi
         xArw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=bqeDELe8F8NCGKStOu5oeOOMI0ax3obiTy6vRUa4ydU=;
        b=CUrFHjlg+KtzYtWBA/6xLUmF/PG4yKp5CneMYlVj5lveEcCgqvjhonAYPdWO2BL25+
         zSZD2sxO6MLe4v6uLDEUWWanRQ3pXz5qfbLdzFtXl4GzHGlCnF9I4MfZ9bHYtsZ2yWuR
         I6N9WkWcBxNyrTdMKozzzb6UkrnIaw3QtzS1/mf8Ln8lzOOXFkUvpXRAslMp94S3ap78
         I2dajGVwXJoigwKCR1SnSBSwznqdgtwF402+/XcgO8EQGAwNUrbxbTwwLNIWgz6PkoX1
         wX7Ql8LfPUiM6kEw6Hct6+5PJrteSbecbf8I8Z1St17ej3hC3WPHVgB8gvvU7wGBuJ+F
         Bv6w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tsbogend@alpha.franken.de designates 193.175.24.41 as permitted sender) smtp.mailfrom=tsbogend@alpha.franken.de
Received: from elvis.franken.de (elvis.franken.de. [193.175.24.41])
        by gmr-mx.google.com with ESMTP id e18si345107lfn.6.2021.01.07.08.29.04
        for <clang-built-linux@googlegroups.com>;
        Thu, 07 Jan 2021 08:29:04 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of tsbogend@alpha.franken.de designates 193.175.24.41 as permitted sender) client-ip=193.175.24.41;
Received: from uucp (helo=alpha)
	by elvis.franken.de with local-bsmtp (Exim 3.36 #1)
	id 1kxY9o-0000Mi-01; Thu, 07 Jan 2021 17:29:04 +0100
Received: by alpha.franken.de (Postfix, from userid 1000)
	id A44DEC080E; Thu,  7 Jan 2021 17:26:40 +0100 (CET)
Date: Thu, 7 Jan 2021 17:26:40 +0100
From: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: John Crispin <john@phrozen.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-mips@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Dmitry Golovin <dima@golovin.in>
Subject: Re: [PATCH] MIPS: lantiq: Explicitly compare LTQ_EBU_PCC_ISTAT
 against 0
Message-ID: <20210107162640.GB11882@alpha.franken.de>
References: <20210105201548.50920-1-natechancellor@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210105201548.50920-1-natechancellor@gmail.com>
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

On Tue, Jan 05, 2021 at 01:15:48PM -0700, Nathan Chancellor wrote:
> When building xway_defconfig with clang:
> 
> arch/mips/lantiq/irq.c:305:48: error: use of logical '&&' with constant
> operand [-Werror,-Wconstant-logical-operand]
>         if ((irq == LTQ_ICU_EBU_IRQ) && (module == 0) && LTQ_EBU_PCC_ISTAT)
>                                                       ^ ~~~~~~~~~~~~~~~~~
> arch/mips/lantiq/irq.c:305:48: note: use '&' for a bitwise operation
>         if ((irq == LTQ_ICU_EBU_IRQ) && (module == 0) && LTQ_EBU_PCC_ISTAT)
>                                                       ^~
>                                                       &
> arch/mips/lantiq/irq.c:305:48: note: remove constant to silence this
> warning
>         if ((irq == LTQ_ICU_EBU_IRQ) && (module == 0) && LTQ_EBU_PCC_ISTAT)
>                                                      ~^~~~~~~~~~~~~~~~~~~~
> 1 error generated.
> 
> Explicitly compare the constant LTQ_EBU_PCC_ISTAT against 0 to fix the
> warning. Additionally, remove the unnecessary parentheses as this is a
> simple conditional statement and shorthand '== 0' to '!'.
> 
> Fixes: 3645da0276ae ("OF: MIPS: lantiq: implement irq_domain support")
> Link: https://github.com/ClangBuiltLinux/linux/issues/807
> Reported-by: Dmitry Golovin <dima@golovin.in>
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---
>  arch/mips/lantiq/irq.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

applied to mips-next.

Thomas.

-- 
Crap can work. Given enough thrust pigs will fly, but it's not necessarily a
good idea.                                                [ RFC1925, 2.3 ]

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210107162640.GB11882%40alpha.franken.de.
