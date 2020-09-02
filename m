Return-Path: <clang-built-linux+bncBD4LX4523YGBB4ORX35AKGQERH7SFUA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83d.google.com (mail-qt1-x83d.google.com [IPv6:2607:f8b0:4864:20::83d])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F7D325ACAA
	for <lists+clang-built-linux@lfdr.de>; Wed,  2 Sep 2020 16:15:16 +0200 (CEST)
Received: by mail-qt1-x83d.google.com with SMTP id s33sf3583047qth.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Sep 2020 07:15:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599056115; cv=pass;
        d=google.com; s=arc-20160816;
        b=mJ2XF5RXNHdTbOfror05Qlo69W3LI3s8r2sxLKeVaN55meffN/opdVgj3gkIf/3qBm
         P/nnInCd7W2GE8Yy6HLfcm7+DWuA9nYdoOP0uYbHwZorYQKHGNb0EfEJmrXAzyHDLoFF
         coRbXn36YpsyT2aJrCkbBoaSQlhtkSdq2myup+fGLxALulMD8FdkRE5fT4VErsQYjfzw
         Qa4UQVT9XcIs7wcj3aEQhxHyTjvEAh3RoxIz2JQ3iQVSNUDplMg7m+1e/at6bRHqwM9J
         vUzQIsPIGBC/OZO0BtSXkMllF1jG/cD6IwrjM6pBzCghMR49ALJII3IFlhS7fPCL7gKL
         K+/Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=iNM6IyObprm55wK04Vr/kfN5eXbIzCNwSPOm8/fBZVE=;
        b=cYM2VsuC1CHcBOhoCgqm0LwgimG927pK5gs3+jOWQ9yUh9yxfke4AG/LQxm9eX8w8C
         MwlJSImBRpiuw7naiUMF+THbe8DcIXy3qGwwC8uWhc5cNRO3w04b4xaVCIW3ZSHihU8X
         KL7EczmQvgYWcnKBiW9+MMxhFE02lg/9alE7113C++srrwWMyAAfAD3Wii1zIm7fvAyQ
         zxkh4YFQl+TqEV+37cBUiHIBcUcRdOtagCgOsBV07qdOhxN0ZGPKFmpc5rdDdpHQjEO6
         ISLTdfObTsYj0U7GaI2hDL+/un8mblQeeNjl3Ut/hgwvdoPeSRTit18+udGkOOtZslEV
         elDQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=iNM6IyObprm55wK04Vr/kfN5eXbIzCNwSPOm8/fBZVE=;
        b=rzhNcdI1TA5QKhVYHBveNUPClbcKR0eNJcp7SeooU6a45+3l9Ir9mK6IZTg6lkMq11
         7QnzWlFkSiXN7gyv5NZu/+Rn+2xNanbsVOW3ylv7H3mf9R/ASkSAhLj40DBrDyXNhU/V
         tQx/fQVtavjMvoSe2noq+UIXuWP7yCsgpqX3Hea263hjaW3S1VrpklOYP91LuZhLcoeX
         Ai57RAjEcz2Y7eF89uKnWCZG6S/QfWwJ5fkhetpKj09K/8ij+Zj8FkgvNei7E+GNZjgs
         bkt/Rir3FvIfTvGK9Jdipjr/MiFAU2X80uUMN93KrgxZCYIF5Xgpw9Wh/Si0u/tSKXpY
         AQzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=iNM6IyObprm55wK04Vr/kfN5eXbIzCNwSPOm8/fBZVE=;
        b=LkGOTj+MQalmupv4Kql8Nj35kxE4CNXrSPbTtAjA8kp+dBCNj0ZVj36u7pnwvBTV3o
         ngBZjwOrbPMSMWVl0CF8CWbfKt+3IBp1kjDzPYw7IZd6QoYSu8lQ9qALcnYy+GBf6Ba+
         X6kIz+cIAW5tsVYZhARbWaHQd+EHsQkgeRO3onQcE2FpodhVLWVBL3G2wKIyaeKLy1cU
         M5SNKcjmdZ+5UaSqf0BGvFmrtnPLS2xuvql8uT4mY8iuv4UM0hhaI8YSOCuDz9CQCGGa
         T8AVgW+9jpZ7OgqY28gSSy3tROr+FoqrgjilvYKsLChf8eEGAOqn+jTxFemZz3Himhna
         i1Kw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532d/jNMALsTQRZzYquOPYGc9NAuKIySlbixi1ZjpF9VID1oe8xn
	kzooYU7f4kSZy5cM4PCMLh4=
X-Google-Smtp-Source: ABdhPJxQ2gBVKtbkCU5YwUo3pihKZXcX67AqJE7sV/feAZF5Qa4ZHhuazAGenmDL/TBs5IHsHSO0xA==
X-Received: by 2002:ac8:54a:: with SMTP id c10mr1979268qth.251.1599056115046;
        Wed, 02 Sep 2020 07:15:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:f50b:: with SMTP id l11ls1285524qkk.6.gmail; Wed, 02 Sep
 2020 07:15:13 -0700 (PDT)
X-Received: by 2002:a37:a981:: with SMTP id s123mr7263773qke.250.1599056113610;
        Wed, 02 Sep 2020 07:15:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599056113; cv=none;
        d=google.com; s=arc-20160816;
        b=DNtuALeoi3UPjFFhIJ2bsASItEUo1QJTyRdkTRd5FaiGOG/WxYtkA/e6hybAO4Zzax
         OtjJCbITpSFVheH5ZB/tCHz1adIriptGKNXTaucXKC9ZRtK0ybz3VQt+KE2pd1icyWOH
         jG6tV6QPspLnZKIwyBxEPxVEKJuE2h5Ut8i7cH/dYfJEDQJGU8oDESjoY9CrL0ixCd9y
         O/maLz9ned78zBjlbO+zqDqCawAj4NY4qY6hEVb2RKoB5BTlKytnPLiPQEdegjt7WJiU
         19xEylqeKluec8uMGVRkIRlG71tvSLqmLJZT0eUO/vvHDAftWayH7KdliPZt6/IUiJUL
         Pc1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=5PZ8eDiFpRCk33KJVO3K+c9TwcT1weqn8nmCaYa5eCQ=;
        b=eQLma/NMMRaB800GgMsWESIh132i5YmyPW18hm3noeeMloAAEy7ouMoaPoLK73Ae7r
         lsd+bv7NIi545MPp1LTIcY/xfryhEUbHHm6gP2jM7bPuRTco7cTn24ERkz9X223KzXp5
         Z2TEvALcTSYS2s2DNRaJm1ZQ8vzTbwwhENC+byvjxxmkji69617g5L2b26sGgy/SELOY
         +453qtJpsrnCuYtQX6y1gukEQg0zTpfAsrXlF2xZMkPTjIApQPcPMJUCgjnRQpTWc5LD
         dFgguzbWDsV2p50HPLJ1rTLK57DkmzotcWPO50icmfTtoC5kJEL78aRXI8BWPbxrpWXD
         57FQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
Received: from gate.crashing.org (gate.crashing.org. [63.228.1.57])
        by gmr-mx.google.com with ESMTP id a2si298265qkl.4.2020.09.02.07.15.13
        for <clang-built-linux@googlegroups.com>;
        Wed, 02 Sep 2020 07:15:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) client-ip=63.228.1.57;
Received: from gate.crashing.org (localhost.localdomain [127.0.0.1])
	by gate.crashing.org (8.14.1/8.14.1) with ESMTP id 082EEWYN031070;
	Wed, 2 Sep 2020 09:14:32 -0500
Received: (from segher@localhost)
	by gate.crashing.org (8.14.1/8.14.1/Submit) id 082EEVOd031069;
	Wed, 2 Sep 2020 09:14:31 -0500
X-Authentication-Warning: gate.crashing.org: segher set sender to segher@kernel.crashing.org using -f
Date: Wed, 2 Sep 2020 09:14:31 -0500
From: Segher Boessenkool <segher@kernel.crashing.org>
To: Christophe Leroy <christophe.leroy@csgroup.eu>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
        Michael Ellerman <mpe@ellerman.id.au>,
        Nicholas Piggin <npiggin@gmail.com>,
        Christophe Leroy <christophe.leroy@c-s.fr>,
        Joe Lawrence <joe.lawrence@redhat.com>,
        Kees Cook <keescook@chromium.org>, Fangrui Song <maskray@google.com>,
        linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
        Paul Mackerras <paulus@samba.org>, linuxppc-dev@lists.ozlabs.org
Subject: Re: [PATCH 2/2] powerpc/vdso32: link vdso64 with linker
Message-ID: <20200902141431.GV28786@gate.crashing.org>
References: <20200901222523.1941988-1-ndesaulniers@google.com> <20200901222523.1941988-3-ndesaulniers@google.com> <b2066ccd-2b81-6032-08e3-41105b400f75@csgroup.eu>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <b2066ccd-2b81-6032-08e3-41105b400f75@csgroup.eu>
User-Agent: Mutt/1.4.2.3i
X-Original-Sender: segher@kernel.crashing.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as
 permitted sender) smtp.mailfrom=segher@kernel.crashing.org
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

Hi!

On Wed, Sep 02, 2020 at 06:46:45AM +0000, Christophe Leroy wrote:
> ld crashes:
> 
>   LD      arch/powerpc/kernel/vdso32/vdso32.so.dbg
> /bin/sh: line 1: 23780 Segmentation fault      (core dumped) 
> ppc-linux-ld -EB -m elf32ppc -shared -soname linux-vdso32.so.1 
> --eh-frame-hdr --orphan-handling=warn -T 
> arch/powerpc/kernel/vdso32/vdso32.lds 
> arch/powerpc/kernel/vdso32/sigtramp.o 
> arch/powerpc/kernel/vdso32/gettimeofday.o 
> arch/powerpc/kernel/vdso32/datapage.o 
> arch/powerpc/kernel/vdso32/cacheflush.o 
> arch/powerpc/kernel/vdso32/note.o arch/powerpc/kernel/vdso32/getcpu.o -o 
> arch/powerpc/kernel/vdso32/vdso32.so.dbg
> make[4]: *** [arch/powerpc/kernel/vdso32/vdso32.so.dbg] Error 139
> 
> 
> [root@localhost linux-powerpc]# ppc-linux-ld --version
> GNU ld (GNU Binutils) 2.26.20160125

[ Don't build as root :-P ]

Try with a newer ld?  If it still happens with current versions, please
open a bug report?  https://sourceware.org/bugzilla


Segher

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200902141431.GV28786%40gate.crashing.org.
