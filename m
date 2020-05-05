Return-Path: <clang-built-linux+bncBDLYD555WYHBBYUFY32QKGQEUIR7YKI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x939.google.com (mail-ua1-x939.google.com [IPv6:2607:f8b0:4864:20::939])
	by mail.lfdr.de (Postfix) with ESMTPS id 1575E1C5AC6
	for <lists+clang-built-linux@lfdr.de>; Tue,  5 May 2020 17:14:44 +0200 (CEST)
Received: by mail-ua1-x939.google.com with SMTP id v10sf898627uae.13
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 May 2020 08:14:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588691683; cv=pass;
        d=google.com; s=arc-20160816;
        b=grd/0ZFiksfouzFc8zT/h35keAiTgB5wwRo/6DSMU4VMmeLp957yrV1NP8iqT13UeV
         Yqwp8xAnsK4+SO6GkVoBJ0dzokm/0DdFq87vJKwuvOv8yTa2FzU0yRNANZxGroSYFyEs
         O7NmUa/xFvVPg99pXvuIUQlOtwiT2C8fX8Q6F4Kfj1vlSCyHunW83d5GUKYozzQ7U39B
         BDlMENEAdP7mSSz4++98/2A2yFcETTW2pJlZJ+n4pJ46e4Wh6yoSw/jo1zEHEpFV32+Y
         ipJ3emyMSVDGUeos1eUxD+A2g+J8aK8TtA1M9EmhsMD8kJ1at1FP3WzhrkDJ7Wivvttc
         /fLw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:organization:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=IkjfTeQCzRHVPOn6QsC7CdxuxevnljJWC48R2Pv883o=;
        b=NXF9wv7As1N3369+0LBrv4iierhyV9eBkAJeJ+alA26byPrKeaSFw4ZwW/rgdNdHTd
         oAKHyE1zciCs4roWWktYwrwZv5+mtte7F6N6PuayHTvAVJPxzP7iOMZh7wKv40DIifjU
         CsvltJsaqsOAS8XOEQKRBzIXY+e8oVtwqKsqrZodtaMDe9q2ZtO6lGNo6hmYGtLVohaK
         sBYuKLnZfkcZiDkz7FfwLDeP8bIy10TswhcxIQX80G0or87GarDff4hOtPC/p6yegaVv
         1jzvbgioeYXaS7mVg9YNznxOXvh+S1k3XDlta2tfxAaDctm+yLmslWLp7thXq6E+cGw1
         6DxA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of andriy.shevchenko@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=andriy.shevchenko@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :organization:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IkjfTeQCzRHVPOn6QsC7CdxuxevnljJWC48R2Pv883o=;
        b=m2KKNrMpXUGhOtzWK4kP5MtKLmcipYII/zfDoNcFeGl5NFmaXGCdmGyIVOhRHu/jZL
         gDPpDa8eW7ni6FX/vCBfM2P+5EEd9KxeYT/OWPkPpxBrKCsBW8xhYfNLtcOQZ2Ntcphh
         bAXiw5JXLiegqv4j5qXcwwOZFWrju67rpj9qnFK+i7PSV7gXUvrvhvBn6Z8sl1+3lA+B
         tDYQfkUWQgVJoWQqFmvoRU7rQUZT/pKAPqeK3HIpYSF0U3lCRT7OKhcFiGnXNGUIf1Gv
         4V7UFCHiXWD9izCZ1aL28XbSIPH1eaY7AgYgkM599stdTwZU8wzVTlEsfHE5t3G+ISPi
         39ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:organization:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IkjfTeQCzRHVPOn6QsC7CdxuxevnljJWC48R2Pv883o=;
        b=VTLebicCjkoH5DrqOGGLgs9M6kLj8/Opcq6LQUs2cGYoGJYGCW7nexVA+zRvgCg+Cy
         uKlccTK3k+huNDUBa19CxN9+JbsqUgZzvhqMP/riYhNALMaVbzkigOWswcyKVeipMnEj
         Zc2QRK6pr6ZyGMVCujeMVloMGuD31gGlEBF3dqXOXKkv4jGP3wDcZvWuXDrYdET/8EpF
         3GZ8BV5/bWcdztQTJn5wdhktZujhujYIcypVEHo+wC2Vvqa86N6hImAGFIdbrVGoe6Y4
         iPcGer0zo4PwuDttpRNCoxJjySsLUW+dPGrU/adj+OLY+C6OxxzSIVRcu2F+pYwvmiNj
         Woqg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZSQUoYYwlCioPOElLeMY8d90gBahHbBzc1rFNZaJJsNIzlqjl8
	bDYoYx/nKqQa5IWc169mTHk=
X-Google-Smtp-Source: APiQypLO1SwC5c0Ac8bh1Q9pjrmctNnVhRcEvGBgpZKi60ocHqb5t4xk6tiMlPi30n5yD32uYFxGYg==
X-Received: by 2002:a67:2987:: with SMTP id p129mr3122360vsp.189.1588691682932;
        Tue, 05 May 2020 08:14:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:3184:: with SMTP id x126ls357582vsx.11.gmail; Tue, 05
 May 2020 08:14:42 -0700 (PDT)
X-Received: by 2002:a67:3154:: with SMTP id x81mr3550156vsx.32.1588691682557;
        Tue, 05 May 2020 08:14:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588691682; cv=none;
        d=google.com; s=arc-20160816;
        b=tZQTapp2MuAtq+edp/e2P3LHYgeiNroAvP7S1x3bv9/huBl0ATHSGbmswI+pu5eTYD
         /sMuWceWacTGzYkjaBzUtYBUgM/7fEhI+Qd2VLRcHmFa3XdTcmsKJ6PFZkvU7AERr+0g
         U4d0GZ4waHgfeiRmpyicq3a783phi2mOiE4RyKOzSTRUyQhlKZPuLuOqLgYBBhQhw8J/
         IoRCmJWL+dGwXG0NZd2eT7hX/V1XlHne86FQlGw3OUDxOPpKLKC9kcAUjV4L3c6reeEf
         vthcng29kvJboWfNbBMh86n6RwVjZKcZ1ke79WQ97RduEDfYCihvXT210402RIAlbjQz
         gcYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=organization:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr;
        bh=GrJVcPnBvOfgPHhXw2Oni0zkbgQyy9j24c+93REkHYA=;
        b=xWH69J8ztKoRFFF1mmudYIRDKiVn/EYLI4mgKJtbeb7Me68WKuh3fqaJWa7zLdhZ7d
         teeeGWx9993xvOtsHBjT1FBK033WpGOc5P6zfvDPaAzPvT0lyhJQBXW2gQa6IcUUauUL
         TF2livNvmOhZFRt0RyJarIHRQTGcKsGq8Q1/YWln5eU7QybAmjkYoOZAPTx2f0KixG9x
         p1SDE7GVpLgXOjmI9Gh7Ekaw/lvG70vlSwKU65PAgJ7C5SMyKVjYpuxk+IRDnYvyqd3G
         cZMj7+SOhJbWZkTWRBXXGqcmbp4INNcXBvNxfmH0kWxUjbF8BScWUWdzVtlw8rqzqHYY
         fpgA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of andriy.shevchenko@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=andriy.shevchenko@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga17.intel.com (mga17.intel.com. [192.55.52.151])
        by gmr-mx.google.com with ESMTPS id s64si221146vkg.1.2020.05.05.08.14.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 May 2020 08:14:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of andriy.shevchenko@intel.com designates 192.55.52.151 as permitted sender) client-ip=192.55.52.151;
IronPort-SDR: YFHctjFQrQY3jJLPX0E2HT46tGDlVNHHmMpDXYopJNKXzuNnDj1h3kSoR3d4tLOXD1WksGmaVc
 mXsX77hJkumw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 May 2020 08:14:40 -0700
IronPort-SDR: zng81o4v8IKpU257eJBNo3kaVx2sJYMwg/4+kHYAgGPF+QsTRTaJuA03IHu0Z+Rk0yFZDmY8e9
 fnjpSJd/thoQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,355,1583222400"; 
   d="scan'208";a="277908030"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
  by orsmga002.jf.intel.com with ESMTP; 05 May 2020 08:14:36 -0700
Received: from andy by smile with local (Exim 4.93)
	(envelope-from <andriy.shevchenko@intel.com>)
	id 1jVzHK-004pvA-Ra; Tue, 05 May 2020 18:14:38 +0300
Date: Tue, 5 May 2020 18:14:38 +0300
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com, bp@alien8.de,
	dan.j.williams@intel.com, linux-kernel@vger.kernel.org,
	linux@rasmusvillemoes.dk, mingo@redhat.com, peterz@infradead.org,
	tglx@linutronix.de, x86@kernel.org, ilie.halip@gmail.com,
	natechancellor@gmail.com
Subject: Re: [PATCH v6 1/2] x86: fix bitops.h warning with a moved cast
Message-ID: <20200505151438.GP185537@smile.fi.intel.com>
References: <20200310221747.2848474-1-jesse.brandeburg@intel.com>
 <20200504193524.GA221287@google.com>
 <20200504181443.00007a3d@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200504181443.00007a3d@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-Original-Sender: andriy.shevchenko@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of andriy.shevchenko@intel.com designates 192.55.52.151
 as permitted sender) smtp.mailfrom=andriy.shevchenko@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
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

On Mon, May 04, 2020 at 06:14:43PM -0700, Jesse Brandeburg wrote:
> On Mon, 4 May 2020 12:51:12 -0700
> Nick Desaulniers <ndesaulniers@google.com> wrote:
> 
> > Sorry for the very late report.  It turns out that if your config
> > tickles __builtin_constant_p just right, this now produces invalid
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
> > Since we have the mask (& 0xff), can we drop the `b` suffix from the
> > instruction? Or is a revert more appropriate? Or maybe another way to
> > skin this cat?
> 
> Figures that such a small change can create problems :-( Sorry for the
> thrash!
> 
> The patches in the link below basically add back the cast, but I'm
> interested to see if any others can come up with a better fix that
> a) passes the above code generation test
> b) still keeps sparse happy
> c) passes the test module and the code inspection
> 
> If need be I'm OK with a revert of the original patch to fix the issue
> in the short term, but it seems to me there must be a way to satisfy
> both tools.  We went through several iterations on the way to the final
> patch that we might be able to pluck something useful from.

For me the below seems to work:


diff --git a/arch/x86/include/asm/bitops.h b/arch/x86/include/asm/bitops.h
index b392571c1f1d1..139122e5b25b1 100644
--- a/arch/x86/include/asm/bitops.h
+++ b/arch/x86/include/asm/bitops.h
@@ -54,7 +54,7 @@ arch_set_bit(long nr, volatile unsigned long *addr)
 	if (__builtin_constant_p(nr)) {
 		asm volatile(LOCK_PREFIX "orb %1,%0"
 			: CONST_MASK_ADDR(nr, addr)
-			: "iq" (CONST_MASK(nr) & 0xff)
+			: "iq" ((u8)(CONST_MASK(nr) & 0xff))
 			: "memory");
 	} else {
 		asm volatile(LOCK_PREFIX __ASM_SIZE(bts) " %1,%0"
@@ -74,7 +74,7 @@ arch_clear_bit(long nr, volatile unsigned long *addr)
 	if (__builtin_constant_p(nr)) {
 		asm volatile(LOCK_PREFIX "andb %1,%0"
 			: CONST_MASK_ADDR(nr, addr)
-			: "iq" (CONST_MASK(nr) ^ 0xff));
+			: "iq" ((u8)(CONST_MASK(nr) ^ 0xff)));
 	} else {
 		asm volatile(LOCK_PREFIX __ASM_SIZE(btr) " %1,%0"
 			: : RLONG_ADDR(addr), "Ir" (nr) : "memory");


-- 
With Best Regards,
Andy Shevchenko


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200505151438.GP185537%40smile.fi.intel.com.
