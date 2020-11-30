Return-Path: <clang-built-linux+bncBCS6NPVSS4JBBUVJST7AKGQEOBV6F7Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43c.google.com (mail-wr1-x43c.google.com [IPv6:2a00:1450:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id D1F642C8899
	for <lists+clang-built-linux@lfdr.de>; Mon, 30 Nov 2020 16:50:42 +0100 (CET)
Received: by mail-wr1-x43c.google.com with SMTP id m2sf8598359wro.1
        for <lists+clang-built-linux@lfdr.de>; Mon, 30 Nov 2020 07:50:42 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606751442; cv=pass;
        d=google.com; s=arc-20160816;
        b=QCigZXMCNwH5671aOWHsW/S4iboyVLkq9fPbJQlHeiiM8zt4S+0wLaEjfptIyZVrN+
         DXBmOpyQ0INFVqIQtxW2jf9SJlgu4p8p2ps52PZwVWS2oR1yfNGWIcfYxRUoekYVewAS
         sb2Pxr9EwbGO9ZzjBlFfvCu6WRTmSCyzraQ31U3xqUlr0a9xhR3/vVFXDd2/RTIru9ck
         G2uTrpqjZYI0uqUA1LrhJu3elphCcOJ4erxzdadj83IYfp8hdMvCt54j1nCeBtbm7oQY
         ZtuEgFKPEQfbTmbd+kNihIYZGu3jj7XbDPuZeXq2vWz5NWCLbcwHM+1T0LmieV9TG1Nn
         GqsQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:sender:dkim-signature;
        bh=qg0N4Hgsgf+mqjX+THTejFtgfCgihhOa6DaOowI1aBw=;
        b=p1Df+BPPI+ouvOTzlHczWb2BArMyEL6MEl2ZQgJUOBFtAASG54P56X65/jYFBGHGfy
         Cy1dPXlTL+IUZrYiEro+n7j3aIabyzhoyFzNeFAm2CLEEv3m1r53rhv4wMUHyHQlQxoh
         RrG6u/aAdtnBaUMc2zakFn5RAWyPAmBzZTUtNW1QJ8vrdLs9yJJX01zkilsyMfHLU+dY
         fZwARVcl38k4OUSloW9Isb1jMWSY6lO4SML82PmAlTbqAdRz244c1ch0ul42r2rMx/7v
         FEUrztbaidpARMaxyb9/eXQLRf/PzOO/NSR5RFJOdaOn0H1n4ZwzRLQkoO8F7WW0bKHf
         Ir7A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@pobox.com header.s=sasl header.b=okv2T4Br;
       dkim=pass header.i=@fluxnic.net header.s=2016-12.pbsmtp header.b="JHT/ResH";
       spf=pass (google.com: domain of nico@fluxnic.net designates 64.147.108.70 as permitted sender) smtp.mailfrom=nico@fluxnic.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:in-reply-to:message-id:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qg0N4Hgsgf+mqjX+THTejFtgfCgihhOa6DaOowI1aBw=;
        b=IrBeBU/wJ1VnWOQlPhSs5tNoh+cwca9grwa4T6NKvdA6LoURuVPpvvlaRupsddEb1f
         ocU5Y+/oFKrntRcXMZ6K5t85XKtCTw81NTo1VBNIOmupRtbFARNH60278YX/Yz3SD7aX
         sswtWSh7PB8ZBtCQ/+A7lwVvRjJI5finfDTCOLre+Ijbio5LOQ67r5mqy2N5/5FpVT05
         60RtVmKy+Q6xpcJgV0vUc9b6ItAWMCoJ6LR4VIFyzYzCyBAQjIIlkziGImyyF5NVgHr2
         MOl6cTFg7vipbIlgrgfeW6G6bd6CcjDrzqrqmSf4qtn2DgKS6hhPcepqfyX5LJo4gSbU
         4yQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:in-reply-to
         :message-id:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qg0N4Hgsgf+mqjX+THTejFtgfCgihhOa6DaOowI1aBw=;
        b=HLAAUmVwGy3ncL5xOe6zbfw7xf8N1ns7OeKNC747JgUsndCRe0f4KBnZHJHOvS37Y5
         2GQjhQjy4oR4FXE02X1iLe1oOsmBoJri9Ql23+zc/bxvbx0zS4SvvZE2GhG61Ry9D+dF
         B0AIP7Ip9ria6hr18Hr0U02ffMgGweehiQsaOeaBZcb0Dy6Y7suv3ya8YbkwMg0v8W+a
         /XAYYHIWizOH8G0Lgp45ltkm+JenRmYabmXcD2B5TwHdffqfp0Liq2frnNpgVkGSkTod
         3QnUnZIPt7l35vba/mBW7gpFuaYTsNQRvAGgJ1r2PmppwPeLBxfQQTcLbdbdgfMD/mRs
         QMsg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5332zBkW5dRXx6P0DUAN7pG/bYoKQOEDlC1SHS48AIpUWafHAz6b
	yo5c0NhyBa9j/rg7t+caQs0=
X-Google-Smtp-Source: ABdhPJxJmhhBa/wOPK5+QlnC/JzwuCLDSUiab03uU2e863yq2E+8E+0SeJuiv3kBDokuHbG7d+OSDg==
X-Received: by 2002:adf:81f6:: with SMTP id 109mr28760090wra.23.1606751442574;
        Mon, 30 Nov 2020 07:50:42 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:aa87:: with SMTP id h7ls10029831wrc.2.gmail; Mon, 30 Nov
 2020 07:50:41 -0800 (PST)
X-Received: by 2002:adf:f2d1:: with SMTP id d17mr28348600wrp.339.1606751441623;
        Mon, 30 Nov 2020 07:50:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606751441; cv=none;
        d=google.com; s=arc-20160816;
        b=ecHnoLnzJYovlMwdiGmMX56EuTyLj4ulyfsnKAaRrLc64IirOJOkpIj5A3KRdi/Vbq
         CJNZYxvJtbyg2q69Pomg7FeI+HTAkRiFHWGYbcZO535AR2Y+ME1PpKscvkLSuBemnvkF
         opLrGEKwCNkWYhs4vWrsiDuhnH4F41qOy2/kXBuRQKPBmUx8CwSZlYvWlKPTTzTTnDY7
         4tAs0Hu+ZpkLGtIX0J9YNOLm6aFqWSXjMtTqcZbAhyirGYt0dRsPYaCjHY/t/0De+iJK
         f+qN92rxyTCpTyeshgC+TB4lyWK7ZVw/C5Ih7k3l95LoHNFbAhoz9s6BoYpkAcr1NOA7
         2zaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:dkim-signature:dkim-signature;
        bh=Xs88Km+XVwdVYqKFNqLfwsP6zsX8cOGadWUthu0m8jU=;
        b=QAo8TXuWNtqM+mZPulLEhw97RWVlN6DbEPYslJfq4cxV1fIZPJOYLuyDN8k4YcSO+s
         bifMH3PKYiL/y0lJLdaPWFzmXjXBWEEOVzW+yO+EuU2RMQ1AZFS9tx4WDndv6Ggl0v+j
         T4bQ2Zich/eS0+1PRiBCPNztueShHvETlFPABhdGWm3bfxfKDe6Ud3LcdN2Lbo6veU+6
         EvScZT3aJIQ1qiHDV2yHQb9aFaOcJMH6Ca9QHQJth4bZLScJTiCjNSpsWnrs+9B1tEt+
         TM1dsT3CDLy6VK9pTcV8dgB3ImwwrYxRVqxlBMiD4zjKT8CnD5FUQh/BVPDo4hdFO+mz
         l+Zg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pobox.com header.s=sasl header.b=okv2T4Br;
       dkim=pass header.i=@fluxnic.net header.s=2016-12.pbsmtp header.b="JHT/ResH";
       spf=pass (google.com: domain of nico@fluxnic.net designates 64.147.108.70 as permitted sender) smtp.mailfrom=nico@fluxnic.net
Received: from pb-smtp1.pobox.com (pb-smtp1.pobox.com. [64.147.108.70])
        by gmr-mx.google.com with ESMTPS id x5si655501wmk.1.2020.11.30.07.50.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 30 Nov 2020 07:50:41 -0800 (PST)
Received-SPF: pass (google.com: domain of nico@fluxnic.net designates 64.147.108.70 as permitted sender) client-ip=64.147.108.70;
Received: from pb-smtp1.pobox.com (unknown [127.0.0.1])
	by pb-smtp1.pobox.com (Postfix) with ESMTP id 75C6795322;
	Mon, 30 Nov 2020 10:50:40 -0500 (EST)
	(envelope-from nico@fluxnic.net)
Received: from pb-smtp1.nyi.icgroup.com (unknown [127.0.0.1])
	by pb-smtp1.pobox.com (Postfix) with ESMTP id 6D90295321;
	Mon, 30 Nov 2020 10:50:40 -0500 (EST)
	(envelope-from nico@fluxnic.net)
Received: from yoda.home (unknown [24.203.50.76])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by pb-smtp1.pobox.com (Postfix) with ESMTPSA id E17CB95320;
	Mon, 30 Nov 2020 10:50:39 -0500 (EST)
	(envelope-from nico@fluxnic.net)
Received: from xanadu.home (xanadu.home [192.168.2.2])
	by yoda.home (Postfix) with ESMTPSA id D9CAD2DA09EC;
	Mon, 30 Nov 2020 10:50:38 -0500 (EST)
Date: Mon, 30 Nov 2020 10:50:38 -0500 (EST)
From: Nicolas Pitre <nico@fluxnic.net>
To: Ard Biesheuvel <ardb@kernel.org>
cc: Antony Yu <swpenim@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, 
    Russell King <linux@armlinux.org.uk>, 
    Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
    clang-built-linux <clang-built-linux@googlegroups.com>, 
    Nathan Chancellor <natechancellor@gmail.com>, 
    Linux ARM <linux-arm-kernel@lists.infradead.org>
Subject: Re: [RESEND,PATCH] ARM: fix __div64_32() error when compiling with
 clang
In-Reply-To: <CAMj1kXGs-woGGnM2QkhY5NbRRKP8_N4BY9ScBtga8mcyHoK2+A@mail.gmail.com>
Message-ID: <89n4o5sp-4432-7r33-r9s-54po13q25pnp@syhkavp.arg>
References: <20201123073634.6854-1-swpenim@gmail.com> <CAMj1kXGsQ9K57SvZ74pmD+_=338sGXjc_t+hCXMh-9BPanXnhA@mail.gmail.com> <CAMj1kXGs-woGGnM2QkhY5NbRRKP8_N4BY9ScBtga8mcyHoK2+A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Pobox-Relay-ID: CBB48D18-3323-11EB-AB6F-D152C8D8090B-78420484!pb-smtp1.pobox.com
X-Original-Sender: nico@fluxnic.net
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@pobox.com header.s=sasl header.b=okv2T4Br;       dkim=pass
 header.i=@fluxnic.net header.s=2016-12.pbsmtp header.b="JHT/ResH";
       spf=pass (google.com: domain of nico@fluxnic.net designates
 64.147.108.70 as permitted sender) smtp.mailfrom=nico@fluxnic.net
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

On Mon, 30 Nov 2020, Ard Biesheuvel wrote:

> (+ Nico)
> 
> On Mon, 30 Nov 2020 at 11:11, Ard Biesheuvel <ardb@kernel.org> wrote:
> >
> > On Mon, 23 Nov 2020 at 08:39, Antony Yu <swpenim@gmail.com> wrote:
> > >
> > > __do_div64 clobbers the input register r0 in little endian system.
> > > According to the inline assembly document, if an input operand is
> > > modified, it should be tied to a output operand. This patch can
> > > prevent compilers from reusing r0 register after asm statements.
> > >
> > > Signed-off-by: Antony Yu <swpenim@gmail.com>
> > > ---
> > >  arch/arm/include/asm/div64.h | 5 +++--
> > >  1 file changed, 3 insertions(+), 2 deletions(-)
> > >
> > > diff --git a/arch/arm/include/asm/div64.h b/arch/arm/include/asm/div64.h
> > > index 898e9c78a7e7..809efc51e90f 100644
> > > --- a/arch/arm/include/asm/div64.h
> > > +++ b/arch/arm/include/asm/div64.h
> > > @@ -39,9 +39,10 @@ static inline uint32_t __div64_32(uint64_t *n, uint32_t base)
> > >         asm(    __asmeq("%0", __xh)
> > >                 __asmeq("%1", "r2")
> > >                 __asmeq("%2", "r0")
> > > -               __asmeq("%3", "r4")
> > > +               __asmeq("%3", "r0")
> > > +               __asmeq("%4", "r4")
> > >                 "bl     __do_div64"
> > > -               : "=r" (__rem), "=r" (__res)
> > > +               : "=r" (__rem), "=r" (__res), "=r" (__n)
> > >                 : "r" (__n), "r" (__base)
> > >                 : "ip", "lr", "cc");
> > >         *n = __res;
> > > --
> > > 2.23.0
> > >
> >
> > Agree that using r0 as an input operand only is incorrect, and not
> > only on Clang. The compiler might assume that r0 will retain its value
> > across the asm() block, which is obviously not the case.

You're right.

This was done like that most likely to work around some stupid code 
generation with "__n >> 32" while using gcc from about 20 years ago. IOW 
I don't exactly remember why I did it like that, but it is certainly 
flawed.

Here's my version of the fix which should be correct. Warning: this 
is completely untested, but should in theory produce the same code on 
modern gcc.

diff --git a/arch/arm/include/asm/div64.h b/arch/arm/include/asm/div64.h
index 898e9c78a7..595e538f5b 100644
--- a/arch/arm/include/asm/div64.h
+++ b/arch/arm/include/asm/div64.h
@@ -21,29 +21,20 @@
  * assembly implementation with completely non standard calling convention
  * for arguments and results (beware).
  */
-
-#ifdef __ARMEB__
-#define __xh "r0"
-#define __xl "r1"
-#else
-#define __xl "r0"
-#define __xh "r1"
-#endif
-
 static inline uint32_t __div64_32(uint64_t *n, uint32_t base)
 {
 	register unsigned int __base      asm("r4") = base;
 	register unsigned long long __n   asm("r0") = *n;
 	register unsigned long long __res asm("r2");
-	register unsigned int __rem       asm(__xh);
-	asm(	__asmeq("%0", __xh)
+	unsigned int __rem;
+	asm(	__asmeq("%0", "r0")
 		__asmeq("%1", "r2")
-		__asmeq("%2", "r0")
-		__asmeq("%3", "r4")
+		__asmeq("%2", "r4")
 		"bl	__do_div64"
-		: "=r" (__rem), "=r" (__res)
-		: "r" (__n), "r" (__base)
+		: "+r" (__n), "=r" (__res)
+		: "r" (__base)
 		: "ip", "lr", "cc");
+	__rem = __n >> 32;
 	*n = __res;
 	return __rem;
 }

I'll submit it if someone confirms it works.


Nicolas

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/89n4o5sp-4432-7r33-r9s-54po13q25pnp%40syhkavp.arg.
