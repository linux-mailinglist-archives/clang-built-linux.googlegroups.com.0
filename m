Return-Path: <clang-built-linux+bncBCP4ZTXNRIFBBUOYZLXAKGQEKAPA27Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x438.google.com (mail-wr1-x438.google.com [IPv6:2a00:1450:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 82BE9100778
	for <lists+clang-built-linux@lfdr.de>; Mon, 18 Nov 2019 15:36:01 +0100 (CET)
Received: by mail-wr1-x438.google.com with SMTP id 4sf15459744wrf.19
        for <lists+clang-built-linux@lfdr.de>; Mon, 18 Nov 2019 06:36:01 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1574087761; cv=pass;
        d=google.com; s=arc-20160816;
        b=GKA++8X8dqVsiDuOtXwjGIFH7s6emM51uFBMNHSxl2CvKm8OVT0sg5nu4D1RSAu2QC
         e1Q68WScyCRVFjFtTUwhowmr3snNmk+W7rrNGlPNFrp4JeKeN+ynwEv8TjFr4x5nK+wH
         ajp1i3q1F7v0LHIF6B8m9M6/fpO5gvqmsLEX1mZfekSFRvopufRy0O2FHHIAMU3xsaku
         7LQWku6H1CcjB0ImoitvMVHbNES1Zzu6GfAMGGRQtN13Vj7RloJDOjejEw/I37JHeCIz
         PmTr8BjmFGAEnJ+bhbXsgpVdMzk4QyNmSVfb70fWF1Xee8xuz8k3T7vmuKqjsAIs9dao
         1ZjA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=LKXTHZuXB3UzIrmn9vuP+q91jsnIATy3BeHqJ2XjAHo=;
        b=sbBVzJmHpZa7LyCD2g6EBplWEI5zA0kVJISCaRyhyFfpOamhx0+bUY3T8HV4WEo8Sa
         f+KitTUeDvc4U5v+MHzrXY06YVNG55515L/Zmj/ikVtcWg8mW9ziebU13Wj8OUs+JwNi
         GT/NFblasiYb4eFyQ10xyRQqJTy+NOY2fswbM3y1DuFdBIf+HLIPXdEopAC3EBLAUEK6
         vfq7F+hG7yz5IUTzXau8q1XqnbcRvPB7OPZBF1e/DQ9bJCnMfiEnn1BaHvhjF4eJ0//e
         6fQO/pLsINXyYYG7weXreso7QcwNNp1GqBWCM4KKnIk90sPARxwQEGoCF7e78vh8cXEd
         GEjA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=daNUb7ul;
       spf=pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=LKXTHZuXB3UzIrmn9vuP+q91jsnIATy3BeHqJ2XjAHo=;
        b=ZloLgHThqAcu+J57MFzSiB3YoIp/MaXS+00FWeWPiHytrEAH/Vy48S3zFjn5lSgmkk
         R68MSBn1vSxsIO/3tV+BH+6+Ft91m5kfF+llSUQMpJNBqgAyzQHiWwXvnLANSRoUqyAN
         v3S6gTUxEKpwlkuOflQG6mkgAX0eWY/nTwdRjrhU+UxGnzJYYLKasAMRCfEB0avTMQ3H
         ym06Z667HosY3SJke8i76vNSojjw4y41CDvHAMCK5yVy+VS0+9tzuuWAGAaypWPG3wy2
         cRXJvPDksiA8mJPBBSvmYoZZarZK9Nb0V8bjVcJz/JJuA1lqLa0sGNFmDumnCMgXrlws
         SZIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=LKXTHZuXB3UzIrmn9vuP+q91jsnIATy3BeHqJ2XjAHo=;
        b=Nv9TJuI0mMElukKbF2YPpvtF1+fStASUOl1gSFwZwxCtLRstadVRiUEXbOhlIfm4nG
         Ya1WCi2GdaTSYxDOrb/mDK1BIXpqcoNpWr5yD2Q/ugtICEJhIxsHQMhiJCeSLAfITUZ8
         IsZhzTG9a7NepJAD9KQOyz7X9VLizRkVUST4QEtJwRV50eNyVQ83wr1WbDp36C7zzEOb
         HrUh571vFvq+3TphfqPrFoRRoSGbPt2nrKM44H59nVdqL7Nf7+u69wiK3siG7ROOSBol
         eIeUYCkGYj9kW16qGSlEjOcmo6KoyIX8mDstlKq4kLYfqmx5gU1PANr1dKRMXr85SuoC
         ZPZQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVZDi+7HTlQc8IiFjQ33aqby3oNId57FBt4h3akAF44u3t9XtM/
	lcsCCA1hA76hOdEnYgdZGv4=
X-Google-Smtp-Source: APXvYqwZZ3xNdeppyoZeV/0LFiuLH+VU56yGJRfIgEL+cSudqULIYHq8KBjvtDoqxMJoLd2xF69VDQ==
X-Received: by 2002:a1c:998f:: with SMTP id b137mr30779576wme.104.1574087761197;
        Mon, 18 Nov 2019 06:36:01 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:1b0b:: with SMTP id b11ls32379764wmb.3.gmail; Mon, 18
 Nov 2019 06:36:00 -0800 (PST)
X-Received: by 2002:a1c:410a:: with SMTP id o10mr29671036wma.117.1574087760595;
        Mon, 18 Nov 2019 06:36:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1574087760; cv=none;
        d=google.com; s=arc-20160816;
        b=eoaYL/eAaonPK31Q0usf6qKk2e46nVqO16rKiFi8IgTZcQDyp0OsdEx7E8c825WCMu
         nGqam+mrlyMdkO2y4rKxy5qimPwnrSYHheydrc4WxgZaFb1aDSbWqMnMpp2VU7nnqsnt
         09W/xPG9PQrj0nGJnMlIB0E3p9PRw+7l9iHfBo3kq4cHWu343z+1+LbIcH09oTs1n8ee
         G+wuzJ9Uzs/lWPNUBctHSrskck1CvUD3SQeI/XmOkLq+J2pZsUOrTTBD5DBhdGfx/ZtB
         0QuN4LWv5csbEMkY85qGWulB2PGR1g5PSONXUsfGsZpt0rcCIs8MeYHw92Fvd9931nTR
         d8VQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=HIiagHNihEtq/23FNusQiNOrZ2Lv80N9XpOGmMlnIl0=;
        b=vkr7ow69yybUh1uCEfPS9DKBg3u9K8NUYDeMyjKTIXuVXUHbbo1gC7ycnx2VJgmcav
         qHI/SGFbFoNRK6P+yFNb+XiHSE2ibyHC8VvtHk4lyhgN9dai7EZept/bdlqzy9cPzCiz
         xKIH0gC2CGbuLaYDAVdlP5ED3JWP1/4n2+SA41jWQtGaHfuLPKAGi0MiLPp1GvYCQD+7
         U93encXxppr4CjxMnm80PeKgXPivqdV4M1HdxpXFyc++nfhE1yrknVR+5o/CzBQYCtK8
         mkjqAOtR6PXCaCvczSvZe83rymQX3yb8m9/yIk+9VIXTytVa5Hsn/L0RsHE2Zcj/5a/B
         ainA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=daNUb7ul;
       spf=pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
Received: from mail.skyhub.de (mail.skyhub.de. [5.9.137.197])
        by gmr-mx.google.com with ESMTPS id b198si809wmd.4.2019.11.18.06.36.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Nov 2019 06:36:00 -0800 (PST)
Received-SPF: pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) client-ip=5.9.137.197;
Received: from zn.tnic (p200300EC2F27B50084A11D83797EBEC7.dip0.t-ipconnect.de [IPv6:2003:ec:2f27:b500:84a1:1d83:797e:bec7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id 16D581EC05DE;
	Mon, 18 Nov 2019 15:36:00 +0100 (CET)
Date: Mon, 18 Nov 2019 15:35:53 +0100
From: Borislav Petkov <bp@alien8.de>
To: Ilie Halip <ilie.halip@gmail.com>
Cc: linux-kernel@vger.kernel.org,
	Nick Desaulniers <ndesaulniers@google.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, "H. Peter Anvin" <hpa@zytor.com>,
	x86@kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH V2] x86/boot: explicitly place .eh_frame after .rodata
Message-ID: <20191118143553.GD6363@zn.tnic>
References: <CAKwvOdmSo=BWGnaVeejez6K0Tukny2niWXrr52YvOPDYnXbOsg@mail.gmail.com>
 <20191106120629.28423-1-ilie.halip@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20191106120629.28423-1-ilie.halip@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: bp@alien8.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@alien8.de header.s=dkim header.b=daNUb7ul;       spf=pass
 (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted
 sender) smtp.mailfrom=bp@alien8.de;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=alien8.de
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

On Wed, Nov 06, 2019 at 02:06:28PM +0200, Ilie Halip wrote:
> When using GCC as compiler and LLVM's lld as linker, linking
> setup.elf fails:
>       LD      arch/x86/boot/setup.elf
>     ld.lld: error: init sections too big!
> 
> This happens because ld.lld has different rules for placing
> orphan sections (i.e. sections not mentioned in a linker script)
> compared to ld.bfd.
> 
> Particularly, in this case, the merged .eh_frame section is
> placed before __end_init, which triggers an assert in the script.
> 
> Explicitly place this section after .rodata, in accordance with
> ld.bfd's behavior.
> 
> Signed-off-by: Ilie Halip <ilie.halip@gmail.com>
> Link: https://github.com/ClangBuiltLinux/linux/issues/760
> ---
> 
> Changes in V2:
>  * removed wildcard for input sections (.eh_frame* -> .eh_frame)
> 
>  arch/x86/boot/setup.ld | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/x86/boot/setup.ld b/arch/x86/boot/setup.ld
> index 0149e41d42c2..30ce52635cd0 100644
> --- a/arch/x86/boot/setup.ld
> +++ b/arch/x86/boot/setup.ld
> @@ -25,6 +25,7 @@ SECTIONS
>  
>  	. = ALIGN(16);
>  	.rodata		: { *(.rodata*) }
> +	.eh_frame	: { *(.eh_frame) }

The kernel proper linker script does

        /DISCARD/ : {
                *(.eh_frame)
        }

with the .eh_frame section.

Wouldn't that solve your issue too, if you add it to the /DISCARD/
section in that linker script too?

-- 
Regards/Gruss,
    Boris.

https://people.kernel.org/tglx/notes-about-netiquette

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191118143553.GD6363%40zn.tnic.
