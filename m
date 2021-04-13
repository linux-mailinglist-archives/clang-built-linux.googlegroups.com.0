Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBVNK22BQMGQEUCNHLVA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x637.google.com (mail-ej1-x637.google.com [IPv6:2a00:1450:4864:20::637])
	by mail.lfdr.de (Postfix) with ESMTPS id C1C1535DF8E
	for <lists+clang-built-linux@lfdr.de>; Tue, 13 Apr 2021 14:57:57 +0200 (CEST)
Received: by mail-ej1-x637.google.com with SMTP id pj13sf4983362ejb.10
        for <lists+clang-built-linux@lfdr.de>; Tue, 13 Apr 2021 05:57:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618318677; cv=pass;
        d=google.com; s=arc-20160816;
        b=um2vSkdfN8ABVoq9zhUzmjJnGp3vrgunyw+CyR1IAa414sprv2PXzz/kBGP2yhC1Cz
         RkpRvFsfVeicjaLaU05sSYAhstWnYQkdqREb7/mJx9nnegBmAnDNTkrLOaGuHbSTJc4u
         WHCaymrTh39tHPhtEjoqv7ewO6EbQsFDXx6X0BTnT1883ipaW8rCqGeZNgzCsPNEBgIn
         2Wa9m74LCtsgN4vmfsqf4pOlmxRGd6c4yFOZK0bZ/MFsBFnwPKEMxOlFUSlgQ1YujmMk
         pradLSThfjP7Ze1f0SXgj3NQ9HpOyFqxnym8Y9+dwsHuU/9YlDGjtMRYNHeM3ZffIBNQ
         D2Cg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=RCRZ6l5PB4IwEcLB5kJ5DRx/B/XFguDG5flFcIxgUCA=;
        b=QHdLagzuOXEqxkhjL8yfTovnTIJDJDIDRM1M7THOhQJJwh4FBB9RJ1Y1FZoyzSvyP8
         ACq18TWZVsx0QJ+MyFOeTBs+2pmNMqztBR2GuNnYfywVfqN9eVjZOXd3alEsLtnVHx3z
         CD97UUvsew4ZvfU9T3ENR+st7HWFM8q1VKAhi2SnnlU9V8WDVbmvUKuxnO9Ghf7ibXqM
         dWM6ZAp1YlVhzDcK803pNOOY0Hd2i/v9540jiZGwbfRlPNVczN1mKxEw39wXr9xuJmmV
         6m2OMaEq4ik/shoiPXb8VbY6BNmjgwx/3rcCbDv551bmY5X6Pa1BxOQEm7x3LNL/DPXt
         Rw2A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.135 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RCRZ6l5PB4IwEcLB5kJ5DRx/B/XFguDG5flFcIxgUCA=;
        b=Ih2NFJbCdwjg2vs3W6QQyRXx28i12DKv+Pi+u2KyhD8VzC+WgCoDRJ8r1FjXTSMtj9
         fHr1etSiLpLPWQHoJHJ+jpfxqq48J/dC/f+nn5B5N70WE/Io2+KkR4dxp2NaLsGuJRrk
         bp8+VytHMMMGE3SH058gcms+a4xG/atjyRfCs8yhGMsJirtOLxLDVHPyqSZBeRhHcx3T
         xcznA8BkA0YSrvgQ9y++ATD6X1pyhnVJjfIVk+MammMKZ/tdwIaTdyb4Ccr6/vfiu8YW
         V7Mhb3yJpPpvhxXuvMYpF4pzCI4u/XMwOa8/J7IAC74ezXDuHwa2MCvmhq7o6WxBlQIC
         hFng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RCRZ6l5PB4IwEcLB5kJ5DRx/B/XFguDG5flFcIxgUCA=;
        b=cgCp/Pl5Ua7LjKCjS4lW686/ZLWfv01/qOV0MEyfVOzT3VEVm2Cshpr1DOdJemoPIK
         kKQGPvKAGbPtEUgjllnIfY3uQm4KurxVF0WDGV83BS4fehMRFoq7zv1QfKBi7m/t3fxI
         pvsS1fUxRKom2zlcZ9ytJYs9GO1ZH+/lRxTnmU73CkFsuzS9wNoldGNbyroghH4J1+Ja
         9hrVZfsJhpSaSoj1tqk8Th9Ck3aos1+7vYHXJFRbyqgDTqTZNPkAQXO4btwCp3Vz1keV
         oDy+0qI7XmLab2BvaAPDhZzpZFGEngEM2lJ0ce+l2MB1r1X1GlYxuIeFcU4IThQwHTya
         xcOA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532+hsBww3B8O1baIj6gYlEmEzV8sVKOcczGsKPAmarlW2y+lf1b
	S9SHxZyfyAITJU4uCMZAkcU=
X-Google-Smtp-Source: ABdhPJyFWfyRjnkDI+GH/ycg0MkfV7K2iZPKibw014KHZSyMuoxS+admwJZlNz4LTdQIQWNtAAFKhA==
X-Received: by 2002:a17:906:9385:: with SMTP id l5mr23525463ejx.32.1618318677546;
        Tue, 13 Apr 2021 05:57:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:970c:: with SMTP id k12ls1132827ejx.1.gmail; Tue, 13
 Apr 2021 05:57:56 -0700 (PDT)
X-Received: by 2002:a17:906:3683:: with SMTP id a3mr30100566ejc.210.1618318676649;
        Tue, 13 Apr 2021 05:57:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618318676; cv=none;
        d=google.com; s=arc-20160816;
        b=TLLcaSYo5MgZUPrIbbQDkTpnPe8MKJwBDxKW8TGs1je8D6oolt530NTLNQDy19F7qa
         O3OYK9QFi9g1ZY//Cx8WY3I5o5XrrLsNU7Gdj9wCxV7IusdHmb3TKzHuPkT1vpUPSl54
         KaK52OzZY+6VlISmNMH1OQe5jxYOBP8RRp0Nget0qMG614JgVT+qw3MQJyi7e6bIOMnI
         FcOcJ2xNbqzu1Xi1PoKlAIoekrcp888FHqWdsZNea8TFnkUp5LH8VGWJtWgOTGDGi/6+
         /P5aV9FYQqeHDqf8HYsIZ65v6r+N7CuB5ziCKxjQj6iwFhJKZVol1UCWcoQoc1LKYasr
         e+6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=Vaf/k9Rw7rQeNcZfLvt6H5yjDNaO+kj3TtzgYsOnzCM=;
        b=qdYDfmYFoocYNKQQOKl73MiwljmSVHof1M1FubfUJ5WrqJUMy38JFbzjH3KlGLtFD5
         EfuY5/6t55hF57uBJSD59U6yrNkk+JYgcZ2ysnTR9L7amLBokwPnVsYoBmWL9w9qbR7p
         7UPOX09EVjSpXSs3r/gCsJ/sN+xgqAbNYbI+jUt+cbKESyZD9NAp9CteWr7tviWO9skU
         bEF1iOOGTAzvym4S3AnUUJaQewp+wYMV4Fgj2SmIjvARtgB3iZE7R5q+slUCOOfvr3vB
         K0y9O68axLALkeLrIWnjlSWF6bX39t3q3N4AqjrwJf+3v3Y7vTxPKTIezeTcJZYBtQSe
         IXhg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.135 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.135])
        by gmr-mx.google.com with ESMTPS id m18si653040edd.5.2021.04.13.05.57.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Apr 2021 05:57:56 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.126.135 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.135;
Received: from mail-wm1-f49.google.com ([209.85.128.49]) by
 mrelayeu.kundenserver.de (mreue009 [213.165.67.97]) with ESMTPSA (Nemesis) id
 1Mt6wz-1lplJF0HQv-00tT5f for <clang-built-linux@googlegroups.com>; Tue, 13
 Apr 2021 14:57:56 +0200
Received: by mail-wm1-f49.google.com with SMTP id y20-20020a1c4b140000b029011f294095d3so10609626wma.3
        for <clang-built-linux@googlegroups.com>; Tue, 13 Apr 2021 05:57:56 -0700 (PDT)
X-Received: by 2002:a05:600c:19cf:: with SMTP id u15mr3941758wmq.43.1618318675780;
 Tue, 13 Apr 2021 05:57:55 -0700 (PDT)
MIME-Version: 1.0
References: <20210413115439.1011560-1-schnelle@linux.ibm.com>
 <CAK8P3a1WTZOYpJ2TSjnbytQJWgtfwkQ8bXXdnqCnOn6ugJqN_w@mail.gmail.com> <84ab737edbe13d390373850bf317920b3a486b87.camel@linux.ibm.com>
In-Reply-To: <84ab737edbe13d390373850bf317920b3a486b87.camel@linux.ibm.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 13 Apr 2021 14:57:39 +0200
X-Gmail-Original-Message-ID: <CAK8P3a2NR2nhEffFQJdMq2Do_g2ji-7p3+iWyzw+aXD6gov05w@mail.gmail.com>
Message-ID: <CAK8P3a2NR2nhEffFQJdMq2Do_g2ji-7p3+iWyzw+aXD6gov05w@mail.gmail.com>
Subject: Re: [PATCH] asm-generic/io.h: Silence -Wnull-pointer-arithmetic
 warning on PCI_IOBASE
To: Niklas Schnelle <schnelle@linux.ibm.com>
Cc: Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	linux-arch <linux-arch@vger.kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, linux-s390 <linux-s390@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Provags-ID: V03:K1:yGoE5vEN/VrBHCjs1bynva8GAwKda/yteRfpkPe+T5jnUeT9a4h
 tuPMHdmqHJkEkqz9kbdXKjpn2fuzYlMukTipd7FREEJpJA+mYOEjQdv8yRPd/EKjgxyh+el
 Dvl62HKGV1Us7ks/dhR+vHiv7SHwYVUvTLc+lNAqZBRMimKQRIBjpQk/l0zv3Y9TBB4+vvT
 0zPgJOHL84phMxJRzBiLQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:btQSkAWeItg=:b9vNgyL53N95qzml2cXd21
 LpVxFl6FkDjjTre5k4gqoLJP6m8qqTpDqBQdsI9yeGU4wwP2y/XCCq5sxRQSPg4l+xJTce4aT
 /lY0QW9uwtH7sPZpZc1uuxK5jvPTXqdznLQerjSjjP9jqJH19r0fX5HWf2kykgDmn5VInN+wJ
 p6GJIjzCqKdGJZ4UpO/RO9f+wQrgTEv5mj7fW/LQ3gOMUjcm4vp8Jo/EhppIQAiUz6SPXmCyD
 I0q0xTsFHZ3YA0BSqta3hC+Ko7KccLUWhw+3EROrupXsfGI3deJwAB7XleHd2dUmnvnP6BBLa
 TGs4hbT4vpgstXcWlFFBugFlYr0buI47DZMKMJ4EzUdpFJ9EAKRXPAMyu78xBn0mEmeHcZJdD
 fOS9tEpWqAPcyPhvey8glqKQJtJ538Aun2yEVPEqiS0Qu6WaADP588rmsUokmVv8N/Vbfgqow
 3RLogIYFB9rke+talnuGCTkmYzCQiyoRWU4v6QIDL4G8ROHYrN2trVngLyxyHSM3zW3veoxH0
 cxhPX+rqesIwLO3dY4J6bgkTp7j7msPG/8OosLkFaS078ke6rTpGJAmG9JAEjIg6R7/RxCtbn
 zdQhnS6RQjq406UwJhSTKYxBHd0rcKIPVfwIBJYtcryOp8ehV9HQGLBAR2bFOTqHb0Te2DEfi
 T9TU=
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 212.227.126.135 is neither permitted nor denied by best guess
 record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
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

On Tue, Apr 13, 2021 at 2:38 PM Niklas Schnelle <schnelle@linux.ibm.com> wrote:
> On Tue, 2021-04-13 at 14:26 +0200, Arnd Bergmann wrote:
> > I think the real underlying problem is that '0' is a particularly bad
> > default value,
> > we should not have used this one in asm-generic, or maybe have left it as
> > mandatory to be defined by an architecture to a sane value. Note that
> > architectures that don't actually support I/O ports will cause a NULL
> > pointer dereference when loading a legacy driver, which is exactly what clang
> > is warning about here. Architectures that to support I/O ports in PCI typically
> > map them at a fixed location in the virtual address space and should put that
> > location here, rather than adding the pointer value to the port resources.
> >
> > What we might do instead here would be move the definition into those
> > architectures that actually define the base to be at address zero, with a
> > comment explaining why this is a bad location, and then changing the
> > inb/outb style helpers to either an empty function or a WARN_ONCE().
> >
> > On which architectures do you see the problem? How is the I/O port
> > actually mapped there?
>
> I'm seeing this on s390 which indeed has no I/O port support at all.
> I'm not sure how many others there are but I feel like us having to
> define these functions as empty is also kind of awkward. Maybe we could
> put them into the asm-generic/io.h for the case that PCI_IOBASE is not
> defined? Then at least every platform not supporting I/O ports would
> share them.

Yes, I meant doing this in the asm-generic version, something like

#if !defined(inb) && !defined(_inb)
#define _inb _inb
static inline u8 _inb(unsigned long addr)
{
#ifdef PCI_IOBASE
        u8 val;

        __io_pbr();
        val = __raw_readb(PCI_IOBASE + addr);
        __io_par(val);
        return val;
#else
        WARN_ONCE(1, "No I/O port support");
        return 0xff;
#endif
}
#endif

And follow up with a separate patch that moves the
"#define PCI_IOBASE ((void __iomem *)0)" into the architectures
that would currently see it, i.e. those that include asm-generic/io.h
but define neither inb/_inb nor PCI_IOBASE:

$ git grep -l asm-generic/io.h | xargs grep -wL inb | xargs grep -L PCI_IOBASE
arch/arc/include/asm/io.h
arch/csky/include/asm/io.h
arch/h8300/include/asm/io.h
arch/m68k/include/asm/io.h
arch/nds32/include/asm/io.h
arch/nios2/include/asm/io.h
arch/openrisc/include/asm/io.h
arch/s390/include/asm/io.h
arch/sparc/include/asm/io_32.h
arch/um/include/asm/io.h

Out of these, I see that arc, h8300, nds32, nios2, openrisc, and um
never set CONFIG_HAVE_PCI, so these would all be better off
leaving PCI_IOBASE undefined and getting the WARN_ONCE.

The remaining ones (csky, m68k, sparc32) need to be inspected
manually to see if they currently support PCI I/O space but in
fact use address zero as the base (with large resources) or they
should also turn the operations into a NOP.

         Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a2NR2nhEffFQJdMq2Do_g2ji-7p3%2BiWyzw%2BaXD6gov05w%40mail.gmail.com.
