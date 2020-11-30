Return-Path: <clang-built-linux+bncBCS6NPVSS4JBB7MESX7AKGQEESAJ3KI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13b.google.com (mail-lf1-x13b.google.com [IPv6:2a00:1450:4864:20::13b])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F4A82C8DA9
	for <lists+clang-built-linux@lfdr.de>; Mon, 30 Nov 2020 20:05:34 +0100 (CET)
Received: by mail-lf1-x13b.google.com with SMTP id 194sf7275118lfm.22
        for <lists+clang-built-linux@lfdr.de>; Mon, 30 Nov 2020 11:05:34 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606763133; cv=pass;
        d=google.com; s=arc-20160816;
        b=gPpNn3H7aQR7k+myeyu1Dw6X2L/sq/9Uhg6zkhgfisem5CEuSbdETfqwAZznmnyHub
         Jmh2eYUsmf3If0dHTaqVhlCXbvvCAABRkIYdPbUiUO6cR/Yy6qdfWBkxF6E2CNfNlWQT
         ufah2uyPagAl6OihDgNCVRNvwAcB9+USP7yKqS+XsGCqsVl7U2VxqDrtqDKpZj/LgsVS
         5peUX+NRy6LZFUw4EwSihDJiS94cbYHpEO+NnWc+sT+njKb510Nh8EtDJdUtSEvD8OyE
         suOjUEG4AQT1PuWZ8VGA6RUw5MZsoWDpFEo+uDe8SjdioyfnfW4T71jpw5RXmgdmjl6q
         GwIQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=AW5Z+n6acXev6b8Ju7PgM8rnAU/XLzdOq7QhTByFT8I=;
        b=AFDG5blvIdOdUwpLCPSdA/FyQ/3miI8T0aOMYnkuPF04Ee9osT3tlYyJmoyjSUK2dY
         d7XPtkzHn2tgcz6NpHaQQ4WD5IhALgzMMj+pAH2aWibjQmcZF3cmNYsR3snCuUmBoje8
         rfaVHoGA2/KAhMYLita40VyajqqKpVtaO+DGbyO7OzM88EmeuOfAt/Zc1Mqqaw9w0KOH
         WDGNXINcsizFhkW7pAorvRzQIXv5f9WwZ788Ob+izi/+rsYlX7Bqm1w8+ds0G895f+hL
         VjhKZjdiRwHVk+uaO1ovxwcbzVuWFuYk2bbyot9QBnIi/xLox9FHmteju9gMojtnJe5D
         IoCg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@pobox.com header.s=sasl header.b=PcKSpcZ9;
       dkim=pass header.i=@fluxnic.net header.s=2016-12.pbsmtp header.b=Bw0KrWMD;
       spf=pass (google.com: domain of nico@fluxnic.net designates 64.147.108.70 as permitted sender) smtp.mailfrom=nico@fluxnic.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AW5Z+n6acXev6b8Ju7PgM8rnAU/XLzdOq7QhTByFT8I=;
        b=Ibv8nW5SRj74L454cltBnR8hLUuXfGCPEdEquCxPuAwdRpHWMjH5VP49NHT+KCUE+G
         xLMF71nTBNyBUGn75W0opNn2Q2o+RjwuxS5n/uILiyBWzNdPd7c0sFGzdlQvJv6duIZ+
         euwFigsnPrXbTAr95x/hFB+VZ4izg3Z2bSje7LiyzeliRdzGPgRLCgZxrOQO03iJD7KX
         IUX8ZsgwJGXVj7y18UeW5NjjreVm37Y/HiATdTEhwazvdk+ci9nXyUVb6QhxVT3eBOAW
         +SMbGN8GoW75LBztN5may9330OOw+sIG0Kqh1KhESs7THpiscVVLWxck7InqQvg8kwW6
         d2qA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=AW5Z+n6acXev6b8Ju7PgM8rnAU/XLzdOq7QhTByFT8I=;
        b=IboaglqnD+Y2Iuk3wBRq+WAGJFbo0528UOvll7+5Hrgn4/Y4tk6O9MOAMXsPHn1lM9
         aaNCOm5gs2CFuGJIjCtuCQ3BIvNGE11hsuqKrga+GIoRGEFfjZ0Ah4psZ60/oSPYD9e/
         5c9DvJhYFP3OCIMbvdKk5bCuIoq4HBmfAgWBUO/++mnHneNBHWU31qxywnYlidWwqXc5
         IgI4z0TzX1sSQwyJAAfSS8Pr1VQeDZ8ABJEfcynWbWcDhluTiFsRc/6vCUluJ/zgxyzO
         qOva7A4IBE7mInbGy1gh40DThOsqNKBExbyzLbGitRS3HsdzhqLLrp6ZOTWcEoA0W4iS
         jAJQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533GnzXoFtT0qrTjhOeuhLSonB9kGS5aqiW4lPuf1EhJVsfP1liU
	2B/Z4Zaa8ZtrD0PtIIvi1q4=
X-Google-Smtp-Source: ABdhPJy1yGrHOdP0w8haDHceKXeT7rtvNs4Bl2gWHFEBAAa2znZKCnZvvKvbbGbWNPqZS+XbDEoIWg==
X-Received: by 2002:ac2:4c21:: with SMTP id u1mr9921981lfq.269.1606763133453;
        Mon, 30 Nov 2020 11:05:33 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:2ac6:: with SMTP id q189ls2333595ljq.9.gmail; Mon, 30
 Nov 2020 11:05:31 -0800 (PST)
X-Received: by 2002:a2e:6a14:: with SMTP id f20mr9978199ljc.377.1606763131338;
        Mon, 30 Nov 2020 11:05:31 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606763131; cv=none;
        d=google.com; s=arc-20160816;
        b=nlvBDym5WQ9b2iV7cAlJmrKi7QPUFVbdiIfLW8p2xI5ZWRxfDck5AmfUw4Wtbpxsrn
         g46XecCtMAJaXiAYQJWjWOWHses07UcubjvCFGisz14x5HIo2QJvvPeMhgZel17Q5NVX
         2/P3iq6Js+eQdVRluz4CyXSow2X1NjclZV4/m2FdHEVzvBRnixrLYr8CqCumIMkBFE5O
         bnrXfGJbrgaBKs2AilKy9zx6DjinB7QXk8hyR5DEbpJ4e4DDxIGBz/azG6LmaIhKI5Eq
         0DuftXqS77CvQ/Pi9+fhSScwcEm4A8VJyb50p7IYuxpsxul3LPLst2r0aMI+DXZYU7ja
         Ne1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:subject:cc:to:from:date:dkim-signature
         :dkim-signature;
        bh=Ljr/19rKx4MvYI3+Um+KcTPcQEleLMFUYU4zkiOXXjM=;
        b=ER2Dhep9T+quUXpjSNTixx4mmLFeFdua5a46Kme7dQEOEG4NJ/PUUTYztnXEtX+G/1
         gQWeAh8574SL8tRZ0cP5337R9EAoMeIkfLznNkiEzthbZbU0G4not243/x/AxFtvkFv2
         xioPah513u9ed7dsw2PJ/DFCl+rCdoKCW7rQN1YPkNAXipuPoacH0RDlvyNyIiXqBDC7
         17czqQ2M1L8ArgHfNgMViSXQ0TrcfPhS9wcrkD1IU+hR8vOR9a4QzFQ5ge+4h4AfeMIb
         Dy7DpuJytboeCP5FhMJgr38XiKXxfo37e8uiOwwy8acwKBItufc4k7XwTGLW681SLMSN
         z5FA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pobox.com header.s=sasl header.b=PcKSpcZ9;
       dkim=pass header.i=@fluxnic.net header.s=2016-12.pbsmtp header.b=Bw0KrWMD;
       spf=pass (google.com: domain of nico@fluxnic.net designates 64.147.108.70 as permitted sender) smtp.mailfrom=nico@fluxnic.net
Received: from pb-smtp1.pobox.com (pb-smtp1.pobox.com. [64.147.108.70])
        by gmr-mx.google.com with ESMTPS id b27si379761ljf.8.2020.11.30.11.05.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 30 Nov 2020 11:05:31 -0800 (PST)
Received-SPF: pass (google.com: domain of nico@fluxnic.net designates 64.147.108.70 as permitted sender) client-ip=64.147.108.70;
Received: from pb-smtp1.pobox.com (unknown [127.0.0.1])
	by pb-smtp1.pobox.com (Postfix) with ESMTP id A13D996B0F;
	Mon, 30 Nov 2020 14:05:29 -0500 (EST)
	(envelope-from nico@fluxnic.net)
Received: from pb-smtp1.nyi.icgroup.com (unknown [127.0.0.1])
	by pb-smtp1.pobox.com (Postfix) with ESMTP id 9786996B0E;
	Mon, 30 Nov 2020 14:05:29 -0500 (EST)
	(envelope-from nico@fluxnic.net)
Received: from yoda.home (unknown [24.203.50.76])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by pb-smtp1.pobox.com (Postfix) with ESMTPSA id 1249A96B0D;
	Mon, 30 Nov 2020 14:05:29 -0500 (EST)
	(envelope-from nico@fluxnic.net)
Received: from xanadu.home (xanadu.home [192.168.2.2])
	by yoda.home (Postfix) with ESMTPSA id E65612DA09EC;
	Mon, 30 Nov 2020 14:05:27 -0500 (EST)
Date: Mon, 30 Nov 2020 14:05:27 -0500 (EST)
From: Nicolas Pitre <nico@fluxnic.net>
To: Ard Biesheuvel <ardb@kernel.org>, Antony Yu <swpenim@gmail.com>, 
    Nick Desaulniers <ndesaulniers@google.com>, 
    Russell King <linux@armlinux.org.uk>
cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
    clang-built-linux <clang-built-linux@googlegroups.com>, 
    Nathan Chancellor <natechancellor@gmail.com>, 
    Linux ARM <linux-arm-kernel@lists.infradead.org>
Subject: [PATCH] __div64_32(): straighten up inline asm constraints
Message-ID: <pr6q9q72-6n62-236q-s59n-7osq71o285r9@syhkavp.arg>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Pobox-Relay-ID: 02FBCF5A-333F-11EB-B898-D152C8D8090B-78420484!pb-smtp1.pobox.com
X-Original-Sender: nico@fluxnic.net
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@pobox.com header.s=sasl header.b=PcKSpcZ9;       dkim=pass
 header.i=@fluxnic.net header.s=2016-12.pbsmtp header.b=Bw0KrWMD;
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

The ARM version of __div64_32() encapsulates a call to __do_div64 with 
non-standard argument passing. In particular, __n is a 64-bit input 
argument assigned to r0-r1 and __rem is an output argument sharing half 
of that 40-r1 register pair.

With __n being an input argument, the compiler is in its right to 
presume that r0-r1 would still hold the value of __n past the inline 
assembly statement. Normally, the compiler would have assigned non 
overlapping registers to __n and __rem if the value for __n is needed 
again.

However, here we enforce our own register assignment and gcc fails to 
notice the conflict. In practice this doesn't cause any problem as __n 
is considered dead after the asm statement and *n is overwritten. 
However this is not always guaranteed and clang rightfully complains.

Let's fix it properly by making __n into an input-output variable. This 
makes it clear that those registers representing __n have been modified. 
Then we can extract __rem as the high part of __n with plain C code.

This asm constraint "abuse" was likely relied upon back when gcc didn't 
handle 64-bit values optimally Turns out that gcc is now able to 
optimize things and produces the same code with this patch applied.

Signed-off-by: Nicolas Pitre <nico@fluxnic.net>
Reviewed-by: Ard Biesheuvel <ardb@kernel.org>
Tested-by: Ard Biesheuvel <ardb@kernel.org>
---

This is related to the thread titled "[RESEND,PATCH] ARM: fix 
__div64_32() error when compiling with clang". My limited compile test 
with clang appears to make it happy. If no more comments I'll push this 
to RMK's patch system.

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

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/pr6q9q72-6n62-236q-s59n-7osq71o285r9%40syhkavp.arg.
