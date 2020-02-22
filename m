Return-Path: <clang-built-linux+bncBCIO53XE7YHBBT4YY3ZAKGQESZNM2UQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa39.google.com (mail-vk1-xa39.google.com [IPv6:2607:f8b0:4864:20::a39])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F5781691BA
	for <lists+clang-built-linux@lfdr.de>; Sat, 22 Feb 2020 21:17:20 +0100 (CET)
Received: by mail-vk1-xa39.google.com with SMTP id m25sf2587434vko.19
        for <lists+clang-built-linux@lfdr.de>; Sat, 22 Feb 2020 12:17:20 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582402639; cv=pass;
        d=google.com; s=arc-20160816;
        b=KW41bKm+p0gewYwEmjjVKjfeL4RX4eb5B+E/yW1Kcfyn8/+xoBOq1Gaolulk8dhx8i
         lslhee8fqANAtygtWzD+7LYlxvvIUeXLJrgC8b6e2D56XNVAOfgOELvFQ7sgzUoul+J1
         9vragMS282aDHs2HInnWDacIx+hlO5bFtCWe0xNRi1t/Zro3KaEoKGINBK8ZGXx9u4zh
         hX7RcCYExzfPSEiCmGAGIB9pyycmKxszWNQUSF/0yG0C+SWqAJtGLEbbL2k1gcu0G9O6
         1lyAMbUsao1laiUqvkGzDLi/jwat5yJboC2FVJ5qXyUFkP20U3auvHz3O8zCGEAo1zUl
         0zMw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:date:from:sender:dkim-signature;
        bh=QZU4eA7lFnCUUs9jbbanAQ9g5O9zg0dbCadPPVowqmU=;
        b=t85kjiH2wrZEH7x/yldKCDcJbKZcyeGWSdGFqWA35YA0XZd0au71Oh7LHYTCFJDEjY
         VS5T8piWN1SS6wtPnefbOC6kQqaMVbEGTEOJ9n2y9QlFRnMkUc+6K0dTioZENLHMl+mX
         rO/CDe88xrAcfBovbKJwFEWj+QYJwWsTT2akbvnizsJ92JuNkfhD4IsegIPnXBIZSRqb
         DTEw/witaTP2gxWlEiBLZejp/gd1uG5p40heLBd6P+yunRNbSTY1gXgoQQX0Kye2EYib
         MFe5iVrV1gDv758h6hOt5KTu+fC1Pm3Zi77PTr3lhwVYBq2GOawaYTZzdkE5KuA1uV3X
         c0xA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=F53zer16;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=QZU4eA7lFnCUUs9jbbanAQ9g5O9zg0dbCadPPVowqmU=;
        b=j+4gAd5LFyEcCjkGAwbTuxSLJ4icYpi2ycXSnRXTB16ySdOciDPWwZOkR1HzCtpQ3i
         O36PHj6KeZRps7LTeFhJRY5kAv6hWxfEasCtM3RGcCtfVcSRc+TCoa3FuIJYPMNNrpf9
         3KsErVQ0Fw0I7h28CFvfd962ViPWX2txwJQpW0VSK1e0834mE7Hq2LaI5H3VxqGh7fC1
         9XbAfrzGgEIdwRqxdwRDS9hyQ2R8imJeqMizihXeGwKjbFDGDMnATN/56u1eGGVPGQrK
         qdF0FM0ZtXhrbcFRbwretDBb9uNJQjvJtkGlyW46pNcIBirCHlbe5fAki6Up6+nGZouB
         EuQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=QZU4eA7lFnCUUs9jbbanAQ9g5O9zg0dbCadPPVowqmU=;
        b=sjPUcN9r2MgWBpCUeCUvH8SRIpi0bJMZuO4VKalfzLUbfhS/fEOUt5+JN/76u3TdvW
         n2bwHZuhMP/EhJYAhQaBI1/KmCYQZovzo2fvrsj1MyDYJwOWuZu0ZicEmZqt4tUUycc8
         IAflSEsph0y94WpvUSmNMH3PckKrlIXJrl+2R3gD/Bay0t+aflzw3pCElsF6rSs5w5Qx
         SXhk/OORSTBiJ5/0hsXXjQ6oquhyzw99/kfhzzSFibIGFSBhVcjU/soJT9FfzvfRofTP
         jQhUTHiNdJjIKao3Wl4HcHy78oYfj2t0jNqqdr0T6y8BuZ9YpOv7zSvXx7YAU06XxFmB
         Ur7g==
X-Gm-Message-State: APjAAAWb221XtTXIgG8Fv95oeFkD2CdM+Jp51vKW6BW8q8/+SZlMv+EU
	EHgztyUJ9/8G0tkyV9fLHs8=
X-Google-Smtp-Source: APXvYqzYjTo525LRRuAH6RcMCtnO3aJ6SxHi/Zlqul15rHrOyAELTaGb05kJzfHKJ4Xu1fBAzSrUqA==
X-Received: by 2002:ab0:2006:: with SMTP id v6mr20207622uak.22.1582402639234;
        Sat, 22 Feb 2020 12:17:19 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:fc8b:: with SMTP id x11ls637338vsp.7.gmail; Sat, 22 Feb
 2020 12:17:18 -0800 (PST)
X-Received: by 2002:a67:cb98:: with SMTP id h24mr22544767vsl.151.1582402638783;
        Sat, 22 Feb 2020 12:17:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582402638; cv=none;
        d=google.com; s=arc-20160816;
        b=FkpM1y0JItkoNuGn/MbbQuO5iOgqin6w9mt/JotB/NBnyhh5q9AFsJqirQkMzDDM0P
         6V+ZHGpnhc7npkXe/xbPp8+VJQlIMd3VKSsOmS0Qb59xwtXcP16uw2owc4rz5kH363Qz
         EkphN0s8mDJwRAuf2vRR8mE98fohiom9DjA2XguQQDKVzWUobMLv5Avkt1rPzqHJ+rJQ
         kQtZn5znHK4ljdxR9lvQyandemRXiu2I8RsuneUwfqLBh9xNEgEHyQynzvSd3oC5w3o+
         5gi+Euk1A/+1AcC/re7oa/I9ICIVnT+xPvb0hMo5tMTl/BfVDxIm3Wd4ytxEqMcZ8QLy
         6QlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:date:from:sender:dkim-signature;
        bh=b/ySdKTZFlFCT4Win5U1jB4XU2Vrkoz7ZLdDWOfcGHA=;
        b=QnBvg1tMRLiR0z27Eldg15wbJQ+kBO9ILEQ0jIQVIRGhtscqBFRQctggUBN0VZL0fS
         Gm2TrOW8Fat8BjVkttkVKos5vGktwbZvdSwAsqnUTSwwYoc89r1O9ShIMWZYTrEhAY1F
         rcI0O58Y+F/Fm2HiyD0Parv2gVRXJ/Cy2TI8jcS28cVASUiMgiAP3tyvyLjABdCdrzG0
         vqivHMQBG7mZa3uqlfxt7RO1MX04Hk9IwKpLJvt894Fx0bRmOKgTOsBV/okqpZG1EYy2
         1wVXsevYLfn4ExrcOUXDxDvqlbLk4DPE+n8UrzyjVp4IkH9iPps0YD96oEyvhFuFvm2y
         lSvA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=F53zer16;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qk1-x741.google.com (mail-qk1-x741.google.com. [2607:f8b0:4864:20::741])
        by gmr-mx.google.com with ESMTPS id i27si359438uat.1.2020.02.22.12.17.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 22 Feb 2020 12:17:18 -0800 (PST)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) client-ip=2607:f8b0:4864:20::741;
Received: by mail-qk1-x741.google.com with SMTP id u124so5229344qkh.13
        for <clang-built-linux@googlegroups.com>; Sat, 22 Feb 2020 12:17:18 -0800 (PST)
X-Received: by 2002:ae9:dcc1:: with SMTP id q184mr39777273qkf.480.1582402638244;
        Sat, 22 Feb 2020 12:17:18 -0800 (PST)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id w60sm3543568qte.39.2020.02.22.12.17.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 22 Feb 2020 12:17:17 -0800 (PST)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Sat, 22 Feb 2020 15:17:16 -0500
To: Fangrui Song <maskray@google.com>
Cc: Arvind Sankar <nivedita@alum.mit.edu>, Borislav Petkov <bp@alien8.de>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, "H. Peter Anvin" <hpa@zytor.com>,
	x86@kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com, Michael Matz <matz@suse.de>
Subject: Re: [PATCH] x86/boot/compressed: Fix compressed kernel linking with
 lld
Message-ID: <20200222201715.GA3674682@rani.riverdale.lan>
References: <20200222164419.GB3326744@rani.riverdale.lan>
 <20200222171859.3594058-1-nivedita@alum.mit.edu>
 <20200222181413.GA22627@ubuntu-m2-xlarge-x86>
 <20200222185806.ywnqhfqmy67akfsa@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200222185806.ywnqhfqmy67akfsa@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=F53zer16;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::741
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

On Sat, Feb 22, 2020 at 10:58:06AM -0800, Fangrui Song wrote:
> On 2020-02-22, Nathan Chancellor wrote:
> >On Sat, Feb 22, 2020 at 12:18:59PM -0500, Arvind Sankar wrote:
> >> Commit TBD ("x86/boot/compressed: Remove unnecessary sections from
> >> bzImage") discarded unnecessary sections with *(*). While this works
> >> fine with the bfd linker, lld tries to also discard essential sections
> >> like .shstrtab, .symtab and .strtab, which results in the link failing
> >> since .shstrtab is required by the ELF specification. .symtab and
> >> .strtab are also necessary to generate the zoffset.h file for the
> >> bzImage header.
> >>
> >> Since the only sizeable section that can be discarded is .eh_frame,
> >> restrict the discard to only .eh_frame to be safe.
> >>
> >> Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>
> >> ---
> >> Sending as a fix on top of tip/x86/boot.
> >>
> >>  arch/x86/boot/compressed/vmlinux.lds.S | 4 ++--
> >>  1 file changed, 2 insertions(+), 2 deletions(-)
> >>
> >> diff --git a/arch/x86/boot/compressed/vmlinux.lds.S b/arch/x86/boot/compressed/vmlinux.lds.S
> >> index 12a20603d92e..469dcf800a2c 100644
> >> --- a/arch/x86/boot/compressed/vmlinux.lds.S
> >> +++ b/arch/x86/boot/compressed/vmlinux.lds.S
> >> @@ -74,8 +74,8 @@ SECTIONS
> >>  	. = ALIGN(PAGE_SIZE);	/* keep ZO size page aligned */
> >>  	_end = .;
> >>
> >> -	/* Discard all remaining sections */
> >> +	/* Discard .eh_frame to save some space */
> >>  	/DISCARD/ : {
> >> -		*(*)
> >> +		*(.eh_frame)
> >>  	}
> >>  }
> >> --
> >> 2.24.1
> >>
> >
> >FWIW:
> >
> >Tested-by: Nathan Chancellor <natechancellor@gmail.com>
> 
> I am puzzled. Doesn't -fno-asynchronous-unwind-tables suppress
> .eh_frame in the object files? Why are there still .eh_frame?
> 
> Though, there is prior art: arch/s390/boot/compressed/vmlinux.lds.S also discards .eh_frame

The compressed kernel doesn't use the regular flags and it seems it
doesn't have that option. Maybe we should add it in to avoid generating
those in the first place.

The .eh_frame discard in arch/x86/kernel/vmlinux.lds.S does seem
superfluous though.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200222201715.GA3674682%40rani.riverdale.lan.
