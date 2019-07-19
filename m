Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBFWVYXUQKGQEABVNZTA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3e.google.com (mail-vk1-xa3e.google.com [IPv6:2607:f8b0:4864:20::a3e])
	by mail.lfdr.de (Postfix) with ESMTPS id E9ED46E14E
	for <lists+clang-built-linux@lfdr.de>; Fri, 19 Jul 2019 09:00:39 +0200 (CEST)
Received: by mail-vk1-xa3e.google.com with SMTP id d14sf13544656vka.6
        for <lists+clang-built-linux@lfdr.de>; Fri, 19 Jul 2019 00:00:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563519639; cv=pass;
        d=google.com; s=arc-20160816;
        b=sie3xHHXhHScEdT4bHc0sd6Vmdz5+hAHaeKwQsMHRrKqC3T6hbkvmMtC5JCUAJGA8X
         h5z7013uUd5I5fiq1zmLhFe9BbCfmsQK6OVNOQbWbgex6BXbbMJwGvL4cH6Hys8QlG77
         pOWGCUmbQ7IZRAnvpLkWd3UuupS1R/7LADNIv9pblpPCtUg/JPenMBvu3h/+5BYN1eoP
         ghXOKqJ1PnJ6D/hCn4ff+d7MyA3ogOMDb3P4yLuqNGu+4U50CvVU7onmN78xFLxOQHvh
         bbRwQ48hqNIXOEK4OjWfsLPmKwhoTpOWPyPJbZbNQWvkS5aPuiWEj6NMpjuK65lqn3y+
         AhFQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=cNk96KRIv21EiJUftcmUQDY5QRWw3scibpv1EgA/a/Q=;
        b=KFOfsLRa+aAKAW5IPF706ktAK17pVqpgsXPST8G3F5hYLaeObJQebQUtUpy+xPATOF
         Dx4jUsCmzs0sSOzPQ/jl5FBvHDJA7bYGVur4baqC6T0KZDjUYqZero1v6JKQK1lO6i0q
         J3j5uwvR6TfyrTwdQIe3iowBhi9iaFvPWUYiDlKbnqV/U8AZeFj2BIrBRKzZx0sXqU8Q
         D+UZCYIyNNhzlI8tNVy7wHEfiEhomIPR8z38aTnsIKnUuxF+g5eckxi6z9HAqL0mtiHq
         6SgnpGOn/NtEqfxeoTpE4ciNXemj72LwLtujv9KHFL5hhF07iR3nOL3ABWgPD2q4zWcM
         CIwg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of arndbergmann@gmail.com designates 209.85.222.196 as permitted sender) smtp.mailfrom=arndbergmann@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cNk96KRIv21EiJUftcmUQDY5QRWw3scibpv1EgA/a/Q=;
        b=QqVsvE7I0wGe+GJEvXYiznkC8U8HldnUfiNBD6iqc3g5EIZkgKB07pogWNcAsjCWqX
         xTit/5a8hjXrovKMJuxMMFlGR7WHHDcISX/XZzJoTqmouZ3HL88nDnjAud65d07spLCT
         rcXfQj3onZoHCCj2bDW1m4aU9U/DjkANfynKlYJsbBPQyMlA2pt9jAFJKu0xJdyYW7ls
         zSqa41sISEUsDUaLPhqWUA0JJO4TR7uUGQqho8Kg/0Ky51qHeKC130eOSEBHAupgeeJ9
         2axHrYn0dfqkjLGQ0gm6JSLvR69Mxo9HVT5QDvFIYlOLmHoJxUXKtkaHlPiguv9tDcDd
         2z+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cNk96KRIv21EiJUftcmUQDY5QRWw3scibpv1EgA/a/Q=;
        b=nKgRsySJfA19vQAw8zTGlmXbwPJcMMqomNuFCqPQb17tsttccF/kA3ha5kd9JFMAkk
         J/zpKiCMa3dBZ6IY2vo0SvB9xJKRTeCh4FvVighK9RXwLk/NlfpZ8UEkERP7sbR3De2C
         pli/onjhThGjLlCetTEJnjCWXuqQ7TrS3hPtTDEmYi8GY+UZkqGd6bj/94JGmJ5ivvjQ
         NCvKvrmLhrxdqTdp6DBCwEKFvs4MtXPYySEUfuNWGRz7uZ+GM8SwtjHpkn6rmVKmO2eY
         BSVaWDDUfo/Y/xYHskYy6rnyQKWayC4akLoZt+N2p+HqCqKXXHvZ5apaZnkvU+mtK6pu
         IUWg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUfPxV5wQ0UKnLa4y6RflQQyUMNLS+86Ha+uJyOj7V14a0q2lTB
	vxM14fwdmcbuONKpjCuLZ9s=
X-Google-Smtp-Source: APXvYqwq4ra0A9lfvpTYiZdNydkUG0J/XYZuwgXX1IuThegRHXPX4G4lsp6K57vQnu4cZIq8GmjURQ==
X-Received: by 2002:a1f:3c82:: with SMTP id j124mr20170327vka.47.1563519638935;
        Fri, 19 Jul 2019 00:00:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:dcc:: with SMTP id 195ls1050997vkn.3.gmail; Fri, 19 Jul
 2019 00:00:38 -0700 (PDT)
X-Received: by 2002:a1f:50c1:: with SMTP id e184mr20452685vkb.86.1563519638459;
        Fri, 19 Jul 2019 00:00:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563519638; cv=none;
        d=google.com; s=arc-20160816;
        b=Wq43Fo/ntHiorFGD8yNqe+Oh3fi1Bdxl9BwWnTxnd1S97BSnfOrTH5iqAbeAGA8Ern
         Enx3AWXGWVU7QBpieTpHqdI/BNtrkez5OWsNFcwP7+fauNtqlfoHvnY6CmbG2x/7JlFz
         eZnmPqOM2SHKniik5SmlkxbxPPCLeCTZTsFLhetQ1BhYBphHUVBZ0Fosp743FrpHWwvc
         N3mLAQEnrk7SrMdaGQifDxOgp8j8bA006TiTpciP3Y3D/4wEVVyDGZovd6FRH/kbEHOQ
         nCzffTwX2L0E2mr4jg0NM2mwOMzULsGroBWM7ubcTEvEVWN2PfEWDH8beWii5lGP0S01
         fpvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=VlN+fpVehtgU0BVWJLT3nUlfPtMws+h2ksG4OpU0Bug=;
        b=IDw2Pac5hUva4A/WFK3qdV2/t6C57jis6Ii8JydNLO3j3zfq7+B+w6klkf712FwtXc
         di8Dd776ARfHvCpR5Na2VLZOMDwH0/5B8+jMk0pP8AHTGFbXG9Jf+hKD2XpC7eB06fj0
         B50NDUJT5/Bx2XfPAy8PSE3HtakgC8JCardJjQkAlaftkjpwDHmdTWzgVC4G7cSSvTHg
         wPOz5sE26JVjx0cnKp27eHo+3HmFn69XyFkXVF6imBH9qhU1RqUt5K6WB1FRpK8Dn8Jw
         sEqtUWADY7Z9TNMBj5i881m+0iRL8fk5l6s0D8sq/bqmGb0ExzG8pb3SbE7XWWgzqYIb
         m3/Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of arndbergmann@gmail.com designates 209.85.222.196 as permitted sender) smtp.mailfrom=arndbergmann@gmail.com
Received: from mail-qk1-f196.google.com (mail-qk1-f196.google.com. [209.85.222.196])
        by gmr-mx.google.com with ESMTPS id e126si1684167vkg.5.2019.07.19.00.00.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Fri, 19 Jul 2019 00:00:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of arndbergmann@gmail.com designates 209.85.222.196 as permitted sender) client-ip=209.85.222.196;
Received: by mail-qk1-f196.google.com with SMTP id d79so22502175qke.11
        for <clang-built-linux@googlegroups.com>; Fri, 19 Jul 2019 00:00:38 -0700 (PDT)
X-Received: by 2002:a37:5f45:: with SMTP id t66mr34294524qkb.286.1563519637939;
 Fri, 19 Jul 2019 00:00:37 -0700 (PDT)
MIME-Version: 1.0
References: <alpine.DEB.2.21.1907182223560.1785@nanos.tec.linutronix.de>
 <20190718205839.GA40219@archlinux-threadripper> <alpine.DEB.2.21.1907190837350.1785@nanos.tec.linutronix.de>
In-Reply-To: <alpine.DEB.2.21.1907190837350.1785@nanos.tec.linutronix.de>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 19 Jul 2019 09:00:21 +0200
Message-ID: <CAK8P3a3ghOxkY8SQs9Wz-3ikoM=QL8m+F3JYdAMPT+RDvLAhbQ@mail.gmail.com>
Subject: Re: x86 - clang / objtool status
To: Thomas Gleixner <tglx@linutronix.de>
Cc: Nathan Chancellor <natechancellor@gmail.com>, LKML <linux-kernel@vger.kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Josh Poimboeuf <jpoimboe@redhat.com>, 
	"the arch/x86 maintainers" <x86@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of arndbergmann@gmail.com designates 209.85.222.196 as
 permitted sender) smtp.mailfrom=arndbergmann@gmail.com
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

On Fri, Jul 19, 2019 at 8:39 AM Thomas Gleixner <tglx@linutronix.de> wrote:
>
> On Thu, 18 Jul 2019, Nathan Chancellor wrote:
>
> > Hi Thomas,
> >
> > I can't comment on the objtool stuff as it is a bit outside of my area
> > of expertise (probably going to be my next major learning project) but I
> > can comment on the other errors.
> >
> > On Thu, Jul 18, 2019 at 10:40:09PM +0200, Thomas Gleixner wrote:
> > >  Build fails with:
> > >
> > >   clang-10: error: unknown argument: '-mpreferred-stack-boundary=4'
> > >   make[5]: *** [linux/scripts/Makefile.build:279: drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.o] Error 1
> >
> > Arnd sent a patch for this which has been picked up:
> > https://lore.kernel.org/lkml/CADnq5_Mm=Fj4AkFtuo+W_295q8r6DY3Sumo7gTG-McUYY=CeVg@mail.gmail.com/
>
> Which I applied and now I get:
>
> ERROR: "__fixdfsi" [drivers/gpu/drm/amd/amdgpu/amdgpu.ko] undefined!
> ERROR: "__eqdf2" [drivers/gpu/drm/amd/amdgpu/amdgpu.ko] undefined!
> ERROR: "__truncdfsf2" [drivers/gpu/drm/amd/amdgpu/amdgpu.ko] undefined!
> ERROR: "__nedf2" [drivers/gpu/drm/amd/amdgpu/amdgpu.ko] undefined!

I saw that earlier and use this local workaround that I still need to
submit, see
the bottom of this mail.

The amdgpu driver has a rather liberal use of floating point math in the kernel
that has caused other problems in the past as it is not portable to non-x86
architectures and breaks at least KCOV. Ideally we would try to get the
driver owners to rewrite that code to avoid floating point math, but that
does not seem likely.

It is also possible that we just need to pass the correct flags to clang to
make it actually use hardfloat mode.

      Arnd

commit 3c12c0c7fceaf492d41e6bfc46f0000198f496df
Author: Arnd Bergmann <arnd@arndb.de>
Date:   Thu Jul 11 16:09:18 2019 +0200

    drm/amd/display: disable DRM_AMD_DC_DCN1_0 with clang

    The DRM_AMD_DC_DCN1_0 code and several other parts of the display
    code use x86 floating point math. When compiling with clang instead
    of gcc, this causes link errors:

    ERROR: "__subdf3" [drivers/gpu/drm/amd/amdgpu/amdgpu.ko] undefined!
    ERROR: "__gedf2" [drivers/gpu/drm/amd/amdgpu/amdgpu.ko] undefined!
    ERROR: "__truncdfsf2" [drivers/gpu/drm/amd/amdgpu/amdgpu.ko] undefined!
    ERROR: "__muldf3" [drivers/gpu/drm/amd/amdgpu/amdgpu.ko] undefined!
    ERROR: "__divdf3" [drivers/gpu/drm/amd/amdgpu/amdgpu.ko] undefined!
    ERROR: "__ledf2" [drivers/gpu/drm/amd/amdgpu/amdgpu.ko] undefined!
    ERROR: "__fixdfsi" [drivers/gpu/drm/amd/amdgpu/amdgpu.ko] undefined!
    ERROR: "__floatunsidf" [drivers/gpu/drm/amd/amdgpu/amdgpu.ko] undefined!
    ERROR: "__adddf3" [drivers/gpu/drm/amd/amdgpu/amdgpu.ko] undefined!
    ERROR: "__extendsfdf2" [drivers/gpu/drm/amd/amdgpu/amdgpu.ko] undefined!
    ERROR: "__fixunsdfsi" [drivers/gpu/drm/amd/amdgpu/amdgpu.ko] undefined!
    ERROR: "__ltdf2" [drivers/gpu/drm/amd/amdgpu/amdgpu.ko] undefined!
    ERROR: "__floatsidf" [drivers/gpu/drm/amd/amdgpu/amdgpu.ko] undefined!
    ERROR: "__gtdf2" [drivers/gpu/drm/amd/amdgpu/amdgpu.ko] undefined!

    I don't really see a way to fix this, so disable the DCN when
    building with clang instead until someone finds a way to fix it.

    Signed-off-by: Arnd Bergmann <arnd@arndb.de>

diff --git a/drivers/gpu/drm/amd/display/Kconfig
b/drivers/gpu/drm/amd/display/Kconfig
index f954bf61af28..2cfbbf3b85dd 100644
--- a/drivers/gpu/drm/amd/display/Kconfig
+++ b/drivers/gpu/drm/amd/display/Kconfig
@@ -6,7 +6,7 @@ config DRM_AMD_DC
  bool "AMD DC - Enable new display engine"
  default y
  select SND_HDA_COMPONENT if SND_HDA_CORE
- select DRM_AMD_DC_DCN1_0 if X86 && !(KCOV_INSTRUMENT_ALL &&
KCOV_ENABLE_COMPARISONS)
+ select DRM_AMD_DC_DCN1_0 if X86 && !(KCOV_INSTRUMENT_ALL &&
KCOV_ENABLE_COMPARISONS) && !CC_IS_CLANG
  help
    Choose this option if you want to use the new display engine
    support for AMDGPU. This adds required support for Vega and

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a3ghOxkY8SQs9Wz-3ikoM%3DQL8m%2BF3JYdAMPT%2BRDvLAhbQ%40mail.gmail.com.
