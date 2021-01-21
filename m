Return-Path: <clang-built-linux+bncBCP4ZTXNRIFBBTPFU2AAMGQEH6JMRGY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x240.google.com (mail-lj1-x240.google.com [IPv6:2a00:1450:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id 32BDA2FF12F
	for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 17:58:54 +0100 (CET)
Received: by mail-lj1-x240.google.com with SMTP id a2sf1134265ljm.23
        for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 08:58:54 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611248333; cv=pass;
        d=google.com; s=arc-20160816;
        b=jPoD1oT6gVJcbvF7D0okWUY36c2LQMmPry7lBS1fkLZAVKyAJYxAZH2T+COD/qMDyh
         COX7CuUbqXj1/2t1AmO5x8p43ZJNOfXIrYCE7en5srbccLwiYIQNUlOT950z/1GpgD0M
         4C2A9ipky1efStv9B0T9CmPjqt6/aafS0+4WGo/pG/+uRTlApIJLQ9QIfMXo7bmUD/as
         soVD0GaavbMdARI0UyX8raLke9xZjeZuTZIL9KqhHsg7HVF/D2DuMwX+REQkaQhPCAM4
         05ix1qPCsuZclICynFXynQLeVCJkfIIp6Yxx141g1FdB5I0r/eLN+2TRlrKBLV+bYz7Z
         P3Ig==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=jcMStInIOMH3YpS2Rk98LHWgAZ4/uczsD4zV2eCU+ZU=;
        b=Eo2nOAQ/QKd6DaIjOSxfMjwZPgnVt0I9UEBGpK5JVjMqsCawkovg9lug8wmh34Jezp
         G3vrnUzRk/iT373qMJpc/Zfvjoz5x9djuaMY7HZ4IqotMkEjA/Au8ra/Pt/76KhINpXA
         MGHj06pJfmoCGjFMMf6l7soGgnKbvcXBocaoV/ccr9ny7h7YtdrNW1K+aSUssGcLxHch
         ONb0Cgmn2wczxofJPnK2OyTQuIUWwbnLoyTLKK3kYCMTCLSVkCvoX4EiOjzpS6eGBXAA
         08yBc6DDndhRJwxJrgg1AVjv+hp1gt+A7/q69NLRsZxgt+x6PixmYFOBDThdao4PChmL
         dw/A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=PgrGVRVA;
       spf=pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=jcMStInIOMH3YpS2Rk98LHWgAZ4/uczsD4zV2eCU+ZU=;
        b=F/M6x4HMNz0rLhs6o4oeIVxIrUmiGD5wkJmJvJX8Ea1LdxOwPZL7/toM4e2bWJAl24
         MhDNtoMuHzHEWke4jEAZk+K+dSp/wvLugcAKZJ9q8poLKueqnrmDoxP2vpJK1Pt4wRVh
         p1vydWxJAdJtbgLdHlkahK0nRNWVJWMKN0z82YLY+v0waqoPC36TWbFdbo9l6Ky5TS/h
         oJ6EpxsS0PbYXxP/WOhr4x5TVGyRdA+W6BsqDqpAtQANRaObvGKfW0umvsP0RU3dFW46
         qGyXaOO8lKC0bdAUBsRKNpbITm/KxJCm+y+Hqe1Yom3WYpOOZ+ODC+6r1Q+po5/rM066
         uAbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=jcMStInIOMH3YpS2Rk98LHWgAZ4/uczsD4zV2eCU+ZU=;
        b=EAOiuPyW6gZJRw26sZZSVrYimAYJLwPl9/9wyTI0ApJrOI1ITvVJgx5d4Z1FTPuw4V
         lKGC7cNIFrQ4DLZp+GseCuFFinFLiSMfRCaUwDVOfX/zyjGn0YOpQ+vV4ffan3oETM7Q
         IVP3jpc2MPWGAYX+ww1QLGgpea7REA13MxlLWb2ehi3usDyLLymYVHhCksemfHGgsHSg
         4xO/f1PBxf+CPiSuQXuquMlIhExw1553mIO3ootr8Lry7292ZJFCbApeCxcSK8P54Brl
         M9nSUXIkK7qRRQbrXvvtlqnHOFMIOMvCwl8sJDeyLgOYT7pBsKorVIiFQ7Y38FCjB6AI
         HR8w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532O4hTfOL+vSKJxuv/CBi5wwtHLiUzfrFSOOJA/REsk/kDjv4hu
	jT5wSRiYP8ogtBColozycwU=
X-Google-Smtp-Source: ABdhPJyIEYRt12c4YY6DADLH+j7BypV+juyObc8Y8IjGrAB4kbPmvgFak/74BoSl29nKRDEsnoyREg==
X-Received: by 2002:a2e:b16a:: with SMTP id a10mr130080ljm.374.1611248333781;
        Thu, 21 Jan 2021 08:58:53 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:b549:: with SMTP id a9ls664663ljn.1.gmail; Thu, 21 Jan
 2021 08:58:52 -0800 (PST)
X-Received: by 2002:a2e:3e02:: with SMTP id l2mr117489lja.301.1611248332795;
        Thu, 21 Jan 2021 08:58:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611248332; cv=none;
        d=google.com; s=arc-20160816;
        b=nHdzFoKJs4IXqic8bOuBnrZGiZj4tXTQwDouJCON81wc3DqBc0YRVSxyg63UTsstrO
         lP3q8eXiKBfkBLdNQLlaM05cMPpb/TVFQFGFnmDOv2LO8hJFrmQ++UpYDka+PGygWmMl
         vrP7dSyxumnumwinhIY+HJUhIIZ3W9v1oKxxJinNfqaIOvQULUcadzW5eufn1jnd+9+n
         VrVR+bXhKGMEXXX9YnYoBrrn2hV2iRYbIfGUGWfsZPZFPKH8B47nZAdIvev6DjqMfYwO
         WFzUTIXflRpti9P89wwuAblglENPAnH8O1hq6i0RTOSLdm7zGT2SAVFDRWQx5SC0WqAP
         PDEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=aAowCgPKnj8lJNpLWRHPtz+od612hKZl8mosyJYxxbc=;
        b=SBgdW+2fFyylf+9zLh5lKIGsPqpy8lueGpNoXSk48cXd3lFlcuuLT260onedP5uJcr
         WSog6ihBWhEN/hTESjOoZQ6s/2Yq8Fm6nlbUcCpYvcMcPFzpgxRa9T78QFU6EVQrJ6Dw
         mitbbF1gzo3vBiiOCoKPxgkvSq26ZyawTNlrND5La/hy5CDa3qexk7yjhtRZ0n0pmuQa
         ZG39XMnbW/e2pZSmoi/OaOjoEPB70zUwN3xi4xKESpiz2Q15gmy7idsTLTa75CfUOIjK
         a5w4cf1b+Adm6bsOkJATJOYLylIf1hYBNGWvv1nAeVDWnyIA1DmjQ6JwiwYSSS1vgu9Z
         37xQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=PgrGVRVA;
       spf=pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
Received: from mail.skyhub.de (mail.skyhub.de. [2a01:4f8:190:11c2::b:1457])
        by gmr-mx.google.com with ESMTPS id j15si279177lfk.12.2021.01.21.08.58.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Jan 2021 08:58:51 -0800 (PST)
Received-SPF: pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) client-ip=2a01:4f8:190:11c2::b:1457;
Received: from zn.tnic (p200300ec2f1575008f111d19c272cab6.dip0.t-ipconnect.de [IPv6:2003:ec:2f15:7500:8f11:1d19:c272:cab6])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id ECC551EC05C2;
	Thu, 21 Jan 2021 17:58:50 +0100 (CET)
Date: Thu, 21 Jan 2021 17:58:45 +0100
From: Borislav Petkov <bp@alien8.de>
To: Sean Christopherson <seanjc@google.com>
Cc: kernel test robot <lkp@intel.com>,
	Andy Lutomirski <luto@amacapital.net>,
	Masami Hiramatsu <mhiramat@kernel.org>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com, X86 ML <x86@kernel.org>,
	LKML <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v1 11/19] x86/sev-es: Convert to insn_decode()
Message-ID: <20210121165845.GD32060@zn.tnic>
References: <20201223174233.28638-12-bp@alien8.de>
 <202012251838.G6eufP3Q-lkp@intel.com>
 <20201225123334.GA5874@zn.tnic>
 <X+ouv0PN6dmva92i@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <X+ouv0PN6dmva92i@google.com>
X-Original-Sender: bp@alien8.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@alien8.de header.s=dkim header.b=PgrGVRVA;       spf=pass
 (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as
 permitted sender) smtp.mailfrom=bp@alien8.de;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=alien8.de
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

On Mon, Dec 28, 2020 at 11:15:11AM -0800, Sean Christopherson wrote:
> Alternatively, could the kernel case use insn_decode_regs()?  If
> vc_fetch_insn_kernel() were also modified to mirror insn_fetch_from_user(), the
> two code paths could be unified except for the the fetch and the PFEC.  E.g.

Personal Firearms Eligibility Check?

In any case, I prefer simple, easy to follow code at a quick glance.
Stuff like...

> 
> static int vc_fetch_insn_kernel(struct es_em_ctxt *ctxt,
> 				unsigned char *buffer)
> {
> 	if (copy_from_kernel_nofault(buffer, (unsigned char *)ctxt->regs->ip, MAX_INSN_SIZE))
> 		return 0;
> 
> 	return MAX_INSN_SIZE;
> }
> 
> static enum es_result vc_decode_insn(struct es_em_ctxt *ctxt)
> {
> 	char buffer[MAX_INSN_SIZE];
> 	int nbytes;
> 
> 	if (user_mode(ctxt->regs))
> 		nbytes = insn_fetch_from_user(ctxt->regs, buffer);
> 	else
> 		nbytes = vc_fetch_insn_kernel(ctxt, buffer);
> 
> 	if (!nbytes) {
> 		ctxt->fi.vector     = X86_TRAP_PF;
> 		ctxt->fi.error_code = X86_PF_INSTR;
> 		if (user_mode(ctxt->regs))

... this second repeated check here is not what I would call that.

But this is my personal preference only so it's up for a vote now.

:-)

-- 
Regards/Gruss,
    Boris.

https://people.kernel.org/tglx/notes-about-netiquette

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210121165845.GD32060%40zn.tnic.
