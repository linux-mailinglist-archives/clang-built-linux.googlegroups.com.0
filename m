Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBQFVZP2QKGQEWOQEN3Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb40.google.com (mail-yb1-xb40.google.com [IPv6:2607:f8b0:4864:20::b40])
	by mail.lfdr.de (Postfix) with ESMTPS id E71E21C752B
	for <lists+clang-built-linux@lfdr.de>; Wed,  6 May 2020 17:41:54 +0200 (CEST)
Received: by mail-yb1-xb40.google.com with SMTP id i2sf2645199ybg.17
        for <lists+clang-built-linux@lfdr.de>; Wed, 06 May 2020 08:41:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588779714; cv=pass;
        d=google.com; s=arc-20160816;
        b=BxlEFG3etfNy1fbFfhx+5HYMNdON1A53enkt5D7giGCh2k+y8806BqeYkwwE0FbQfG
         CcqbMYrNgrXHJr1jNUhdq/7oXKXjRdB5eGU7+QyCbIBCC07uUC0ayr5j+mnsTIVRZHjy
         7UEJKKa5e9tS/7Z+Ciy/bwdU0iK25Za1js6M7mW8RnWy3V5NaH2mqDa1qzgZ5jVxJRdc
         qZTnH03Nmjpn9G48pvVQiYpaponR+jONSPnchT35nDVoxZcbfcO2/D7oN4HpEQHg+nCi
         VM4MbLkwU87OyDSg+Mc/lHYagzhbbPIol7GtLzDJD34PffZMBejnPZJFwCGUEw1mXeH1
         CmJg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=dp/GCqYWm18u9oxzmX0LduIyxRZWjoGNpqnL64uWbF4=;
        b=z4MoZQEbAnO1rGCw0HEdeFUlWF0U3uiKJscdQS/HuZb8o1bj8WBqOdkiYIeMS+iSSe
         iDc+u4vt8uJQld8/ZW8RnSDbmeW4VGZaC5+/W5vjZkWXe0GZzlBSP4c4DjR53Y47Mdze
         aFuZG67Wtn1QSPOSr4V5oDpCsXSe5lxyI7wDwT/ss9/nxMCag+IMNaPeHm18ggQllRk5
         ZC2M2KGls1Yd8A9q4P92ryYOiaufaGGqe25QQCR6KnP2eH09rsvQrLtUcdDt0E+NHJxO
         OLYpUZjjbrD2ewBEUhmmTgyEqkN4JyF30DfD0bpSq7/+XIGWULYvkUXfGUGi1vW9gN8s
         huOQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=O41+Bmx8;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=dp/GCqYWm18u9oxzmX0LduIyxRZWjoGNpqnL64uWbF4=;
        b=OiZy2JjGJj6QfusfTgjQFEe54IzFgM7HlpheqXOi8bL4IpwRuW/WY4Y+cLsmmSJXHu
         baN2RFS/jdc+jiY30gl232NRpTpTxNU+QM2T/rrmo82v9nr4SwkYJBbROvOr7ZkhPfvk
         fBk7+WToMYevFDDpgf4NStoHZrZ7FxB8Wwj1Fj8RogLSXPRfLzbB+Ig6b8kVs3eqjrxz
         qMJzyeg620NjiEDgxnFfdhgMggWLuCnbDicirPTsQh/DDk8jsGiF6ZyvbV90V9MnL2qG
         LE2VS8Op1O/uhNAlXFivSTQOgJOFKqcCZd2ACfBdQo+fQJyJXKrwBZdumQteX7px/vYS
         zIWw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=dp/GCqYWm18u9oxzmX0LduIyxRZWjoGNpqnL64uWbF4=;
        b=hgaUwVjNN+CuOfPgyLm3w/nyRUKjwAPhXNz376hyw9hYmkgwyExsjLazrVdDNFWjDo
         CyYt/wABk2GCbPLp24Nwq/Un0nQ2HMeXxTgOuZCp5b+xzGpyjejr5oWVaKKsxk/OiVAC
         rnanuHCoJIxFkFybX5jMpl/fWSqK3uewrb4idrcFYkHKiVro6UNALB3sZ6NjsEKmhPUi
         fCMbE43m/aI3pn17+AzDOqoPbunUDImcFkIpNveZJL7BeLFwRP3g6l5oVGeGMGn4SRqQ
         dEWMuSdMruDK1KoBHX65etd1/3j4gQ3oa9wrvNklzZq9ncsO03m1SvBLS125aAPirmgC
         qw0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=dp/GCqYWm18u9oxzmX0LduIyxRZWjoGNpqnL64uWbF4=;
        b=onxCz/wa4O3XrSRVdodXKEqtmTSTrL5Z0s+l9cbpapB2dhzEv8vLU8wbVnLTOoLfF3
         AuJ/fVo4912vC2TuWDBkWwSNfIhSixConJSLo+fX74+n//LD2s2oHzPV7UmTgNfH6quw
         FzEyUEWY3OFTSR1nSwFZ5Rx44U4O5/DkvuiFDFkYNGqHUsYja4jnCTi83DJwyxBpDvZb
         IOSMHnsYur0q2SHAuGlBn3fKqclrZRXkYzflcsSzTuSeFy2vPq9nxE+h3tLSxVMYV5pv
         RrNza7HxZ8BWcK7bEJQjnp+chxigAUj4AWkSEFFyWyD9RLO2C8GPh75T1oBlhNa/2aKI
         cqbw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PubXdP42MJnHRYnpH6ErgixbAN6e3IImoNbDkzoO7sj0FWe6Ra1o
	T7Lnye/EIMmxBPAMCSI/bpQ=
X-Google-Smtp-Source: APiQypJg6/J876V/FOWlPCT3doytIM2wrVUc92WVLdXNXURHAlGMp/oIWIIRQ8mTBABTTWG0f360jQ==
X-Received: by 2002:a25:b952:: with SMTP id s18mr14218734ybm.370.1588779712456;
        Wed, 06 May 2020 08:41:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:2ace:: with SMTP id q197ls319891ybq.5.gmail; Wed, 06 May
 2020 08:41:51 -0700 (PDT)
X-Received: by 2002:a05:6902:68a:: with SMTP id i10mr13693014ybt.405.1588779711518;
        Wed, 06 May 2020 08:41:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588779711; cv=none;
        d=google.com; s=arc-20160816;
        b=nbKlVBZVB6a7pTq2FOX1WsqrRo0LxyKGc4jN6NhxJl+7j0b/x9sdV585DIXZmSh+sL
         U7Wn5DE3967QSWhpaISJRxy5R942l1sWF7A0cJckyvePL/5FqVN4qcMpkKktL8W7Jh1W
         DHqaijrd03ftN0xHN/Go0x9cNG4LDMWPyAUTddtsnP84Vc45yUw7YD/2ZJLJvxAFYdHj
         YzDUQvRiwEa9NVXG9U05AgtqC15ai+5+wLzoeYybNBTStMeSbLXZoArl6qxRq+vTRYFp
         rPs4VTZdkh5S9QoUDqOYrPkn6TxhVDP1Bn3Hhf5/bDzDdkd5SY+dj52g7cQTVUh4j8/o
         4A/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=/4Bf7uYJizHHCHu/IYW7D03zmrwhqK6qEQ4Buf+txbw=;
        b=L6S52vrNCdCkWM9y3RBH+34b9YksJXDAWtpVvaFfrvdIjsAaC0ej5Yw2AIfCHZvTVi
         /j9WHn1yykUmWmctpGdkScaUaSlPBZbrjbsljkNQoyFo7YULzMGZdBQEzp8IKbelNaJu
         Bu9JNeRLoB85kKe40D+v3LnLVY91F0sFfhvISD3mwxoeNGQok93VAbPI/e39ZgsbDscp
         Ykwq3cK1WipCwJEMiBNxQkP9RI/Y30+m/EbrVwxXMEHr4UeU8KGrwJiPQQ3xI9FBFe9v
         QuxG1JHOaaC2kYsXmMhxqFne8ZoPoWkE4hYXo2i0KE3NTDQI2eONKTs9ug1abxf7nnoT
         FdUg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=O41+Bmx8;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com. [2607:f8b0:4864:20::343])
        by gmr-mx.google.com with ESMTPS id w5si127217ybg.2.2020.05.06.08.41.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 May 2020 08:41:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) client-ip=2607:f8b0:4864:20::343;
Received: by mail-ot1-x343.google.com with SMTP id 72so1727208otu.1
        for <clang-built-linux@googlegroups.com>; Wed, 06 May 2020 08:41:51 -0700 (PDT)
X-Received: by 2002:a9d:569:: with SMTP id 96mr6710053otw.59.1588779710938;
        Wed, 06 May 2020 08:41:50 -0700 (PDT)
Received: from ubuntu-s3-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id k19sm655259oof.33.2020.05.06.08.41.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 May 2020 08:41:50 -0700 (PDT)
Date: Wed, 6 May 2020 08:41:48 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>, Sedat Dilek <sedat.dilek@gmail.com>,
	stable@vger.kernel.org,
	Jesse Brandeburg <jesse.brandeburg@intel.com>,
	"kernelci . org bot" <bot@kernelci.org>,
	Andy Shevchenko <andriy.shevchenko@intel.com>,
	Ilie Halip <ilie.halip@gmail.com>, x86@kernel.org,
	"H. Peter Anvin" <hpa@zytor.com>, Marco Elver <elver@google.com>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	"Peter Zijlstra (Intel)" <peterz@infradead.org>,
	Daniel Axtens <dja@axtens.net>,
	Masahiro Yamada <yamada.masahiro@socionext.com>,
	Luc Van Oostenryck <luc.vanoostenryck@gmail.com>,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] x86: bitops: fix build regression
Message-ID: <20200506154148.GC1213645@ubuntu-s3-xlarge-x86>
References: <20200505174423.199985-1-ndesaulniers@google.com>
 <20200506043028.GA663805@ubuntu-s3-xlarge-x86>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200506043028.GA663805@ubuntu-s3-xlarge-x86>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=O41+Bmx8;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Tue, May 05, 2020 at 09:30:28PM -0700, Nathan Chancellor wrote:
> On Tue, May 05, 2020 at 10:44:22AM -0700, Nick Desaulniers wrote:
> > From: Sedat Dilek <sedat.dilek@gmail.com>
> > 
> > It turns out that if your config tickles __builtin_constant_p via
> > differences in choices to inline or not, this now produces invalid
> > assembly:
> > 
> > $ cat foo.c
> > long a(long b, long c) {
> >   asm("orb\t%1, %0" : "+q"(c): "r"(b));
> >   return c;
> > }
> > $ gcc foo.c
> > foo.c: Assembler messages:
> > foo.c:2: Error: `%rax' not allowed with `orb'
> > 
> > The "q" constraint only has meanting on -m32 otherwise is treated as
> > "r".
> > 
> > This is easily reproducible via Clang+CONFIG_STAGING=y+CONFIG_VT6656=m,
> > or Clang+allyesconfig.
> 
> For what it's worth, I don't see this with allyesconfig.
> 
> > Keep the masking operation to appease sparse (`make C=1`), add back the
> > cast in order to properly select the proper 8b register alias.
> > 
> >  [Nick: reworded]
> > 
> > Cc: stable@vger.kernel.org
> 
> The offending commit was added in 5.7-rc1; we shouldn't need to
> Cc stable since this should be picked up as an -rc fix.
> 
> > Cc: Jesse Brandeburg <jesse.brandeburg@intel.com>
> > Link: https://github.com/ClangBuiltLinux/linux/issues/961
> > Link: https://lore.kernel.org/lkml/20200504193524.GA221287@google.com/
> > Fixes: 1651e700664b4 ("x86: Fix bitops.h warning with a moved cast")
> > Reported-by: Sedat Dilek <sedat.dilek@gmail.com>
> > Reported-by: kernelci.org bot <bot@kernelci.org>
> > Suggested-by: Andy Shevchenko <andriy.shevchenko@intel.com>
> > Suggested-by: Ilie Halip <ilie.halip@gmail.com>
> 
> Not to split hairs but this is Ilie's diff, he should probably be the
> author with Sedat's Reported-by/Tested-by.
> 
> https://github.com/ClangBuiltLinux/linux/issues/961#issuecomment-608239458
> 
> But eh, it's all a team effort plus that can only happen with Ilie's
> explicit consent for a Signed-off-by.
> 
> I am currently doing a set of builds with clang-11 with this patch on
> top of 5.7-rc4 to make sure that all of the cases I have found work.
> Once that is done, I'll comment back with a tag.

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
Tested-by: Nathan Chancellor <natechancellor@gmail.com> # build

> > Tested-by: Sedat Dilek <sedat.dilek@gmail.com>
> > Signed-off-by: Sedat Dilek <sedat.dilek@gmail.com>
> > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> > ---
> >  arch/x86/include/asm/bitops.h | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> > 
> > diff --git a/arch/x86/include/asm/bitops.h b/arch/x86/include/asm/bitops.h
> > index b392571c1f1d..139122e5b25b 100644
> > --- a/arch/x86/include/asm/bitops.h
> > +++ b/arch/x86/include/asm/bitops.h
> > @@ -54,7 +54,7 @@ arch_set_bit(long nr, volatile unsigned long *addr)
> >  	if (__builtin_constant_p(nr)) {
> >  		asm volatile(LOCK_PREFIX "orb %1,%0"
> >  			: CONST_MASK_ADDR(nr, addr)
> > -			: "iq" (CONST_MASK(nr) & 0xff)
> > +			: "iq" ((u8)(CONST_MASK(nr) & 0xff))
> >  			: "memory");
> >  	} else {
> >  		asm volatile(LOCK_PREFIX __ASM_SIZE(bts) " %1,%0"
> > @@ -74,7 +74,7 @@ arch_clear_bit(long nr, volatile unsigned long *addr)
> >  	if (__builtin_constant_p(nr)) {
> >  		asm volatile(LOCK_PREFIX "andb %1,%0"
> >  			: CONST_MASK_ADDR(nr, addr)
> > -			: "iq" (CONST_MASK(nr) ^ 0xff));
> > +			: "iq" ((u8)(CONST_MASK(nr) ^ 0xff)));
> >  	} else {
> >  		asm volatile(LOCK_PREFIX __ASM_SIZE(btr) " %1,%0"
> >  			: : RLONG_ADDR(addr), "Ir" (nr) : "memory");
> > -- 
> > 2.26.2.526.g744177e7f7-goog
> > 
> 
> Cheers,
> Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200506154148.GC1213645%40ubuntu-s3-xlarge-x86.
