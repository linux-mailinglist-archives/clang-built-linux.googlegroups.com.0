Return-Path: <clang-built-linux+bncBCS6NPVSS4JBBDX5USBAMGQEYXXBEAQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23a.google.com (mail-lj1-x23a.google.com [IPv6:2a00:1450:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DB11334A0B
	for <lists+clang-built-linux@lfdr.de>; Wed, 10 Mar 2021 22:47:59 +0100 (CET)
Received: by mail-lj1-x23a.google.com with SMTP id h20sf7653420lji.21
        for <lists+clang-built-linux@lfdr.de>; Wed, 10 Mar 2021 13:47:59 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1615412879; cv=pass;
        d=google.com; s=arc-20160816;
        b=NR2MIpizn6YLDOwpU3BoA1oZz1FeaTj5OFEBOKlCT6d/HCzqTjrfR01SBa46t/vlIP
         7s+p3sDYD+h8M8NAXD8jx6yULCAjwHb2vf8jhBlyYQDlHMBWwM+t6MPazhH/SEKzcQs9
         Khn2+RCSUx0b5EAJYDgKH+fCk+B3NTwqLwBBYuyvruFFlEedozAJf1NA1QPWJ/oQaEia
         DVhkk3eE6PqQdcwhmTG2K1gm/idKY09ZiXHatoXk2gMb+PDNN/X09jyUohc0BY/fO4Rs
         jjE4Bl6d3feLbo/gGo8jskuX7A9NG1Nj4qzUFe0QT8ndLjFNwbvJqKJzVNwNbGqN7fmx
         twEw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:sender:dkim-signature;
        bh=Q6WUX1UJVUq+xzCNB6lthgiyiTefzq7BTSuJMXstJRg=;
        b=jfpSG2u6h/L170r+4RBlvejL9bZXkz2VhTSyYvjNKJ3OtRjODm714u4xTmvsLpIHd+
         1M2laoFHHPp/3sU3FLl7lN25caJFMd0E0ZCxaBMA1xTAsVRDeWWcg0a1gBBhqpBgpyLn
         fQjQ+IyAjHxUNyuvCQJPSF1jpRZW6YULyvCt4CxSgAou7/ylcI3KqCE/F5I0LiYXr4/R
         5LOPaDqOjE/iJ/9Z7qAj4KUEygEODs5BO5rfT/Kynk1TLUE+TpG72TbK/amfRixb9/8M
         f6mlAvXHHLPuqITX6tXO4z5p6ypVVOfN5UROh2dWYIu3rG2R1XZ7uaIA6R1Zbm0VC7t1
         adng==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@pobox.com header.s=sasl header.b=kl2TCkL0;
       dkim=pass header.i=@fluxnic.net header.s=2016-12.pbsmtp header.b=MKKUhi2+;
       spf=pass (google.com: domain of nico@fluxnic.net designates 173.228.157.50 as permitted sender) smtp.mailfrom=nico@fluxnic.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:in-reply-to:message-id:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Q6WUX1UJVUq+xzCNB6lthgiyiTefzq7BTSuJMXstJRg=;
        b=kTMivp6TDHIH1CjniUxJj4WQWi6A/weMUHcr/ZOjLosEtzuO7seUjKiXoNCFvecbn0
         L8tzdrt9331RWTJkZHl9hRvs9WdA7Ml/tN2XO8crRw302zQtYD8mYlQPgMghKxWMaPGR
         5nkM3oemFz5QXzCwuhZyD+E9qWi4tE3E1eiVFxmuKxl+jcVj3MW/pj57rurLIz6mrYC9
         5SqVV0qrd5RHp5ir8eY+rW5JYuWbVQmfbHxybz4w9SAmXXeMwEJSPjvDFqxm3INiGSOZ
         jU2trjRH0VbZr22j/VRFs/wzjmU1CDXDyFvzO6FaG/IOiLSH83dfIcZi1pEILk3HHGyA
         9adQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:in-reply-to
         :message-id:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Q6WUX1UJVUq+xzCNB6lthgiyiTefzq7BTSuJMXstJRg=;
        b=G4VooW3biVCnAlFbqggahB0OODY9uxDscRmrQ0WOuoV0QOHnfgQqGVRzssQIAtTArY
         f68UFKbP5avLyV2KLhGLVSRXegCDNButl0c1oK/zZfgqv8LZUp0KdTHCMGHNJlbUJN2a
         DtcMeKwYcMBoHDX+DkNVTU27Zb+oItah+zHWjogLaaqHPl9z81LZVFedKudVJ0TZtc7L
         grU62ppMhAC5th+/oRuN+iIm2lc/14aRhgk36gPmsYAdTyvL3Y+ffQx/m9WM21fdRPIx
         msv8oV6/0TlZBKZ7FUvRVv83TPRBEi2xLUP+Ir+7KGcH31BpJNIxUrKJ93qH7ljeTQnK
         BxBg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533wjbY2fZmuJnJzi92Edb4goLJ23KZ2ubebrGSxXbtHEttMkVoq
	wCrbiapjbRhQHPLrxIUdOro=
X-Google-Smtp-Source: ABdhPJwYuXBE6kMa3RUIqZkAIDZlT9jMAUhcXbpNqs1VuC32GiVb+QIkOQsBMAIHZgiPcvvK8Y9hpA==
X-Received: by 2002:a19:513:: with SMTP id 19mr306136lff.528.1615412878928;
        Wed, 10 Mar 2021 13:47:58 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:e86:: with SMTP id 128ls2118570lfo.0.gmail; Wed, 10 Mar
 2021 13:47:57 -0800 (PST)
X-Received: by 2002:a05:6512:2251:: with SMTP id i17mr289053lfu.566.1615412877789;
        Wed, 10 Mar 2021 13:47:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1615412877; cv=none;
        d=google.com; s=arc-20160816;
        b=PIvjPx8ByVjCgafZBAQ1XkcJmD4sC2Cefo/uO7mkMOcKbRy+DH/ZZIRKWHG55H1eGH
         EhzT0ikyG7x6duavS3its+cFLP+E8yl8oN3c739JYVVBpOixiKOULv0yqDD+CDyVtkAt
         G5vnbLY+rME7NKqcMsj9Dwy2nliDitHjAV/UhLZB5GBo5W+YJNSpYlddgwRKGaBmc8F/
         dnOqNGoZ+wQ9p8/WFQ7bRUBVmrRLeOil/Bx8GrrpaVZemQ4n71iVsy57iqr5On/cgwKh
         dr3BRYs0LUD8NkIToXwLGvwATEaJkqInvmzMALObAuq4NIy58qtuMuektWlWY1T2rRnE
         uiew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:dkim-signature:dkim-signature;
        bh=8m5BGMCUQy6bolYUYGEi4O9GWntkIbNhEX3ye5kE/NA=;
        b=EA7PbTHAzQOdaifvumG28n/chLQdgonJ3KMPNEXfwB+tPQ9X3VTFdRqrQRhMiFE2pH
         7gfnnXtWxCVNN4/vtP6NQp90pWXjee/ClFa/pUqfWHB611FPxKbAOF19IyaBsQXtPH+9
         o14hphYWq/ff8SLM4UzBFntEvl/v/kb2l5shAy34efRs5jpsAHg3phK0xH8gRjOlRWDM
         vBJrU8hWEpK9DCX5dxQ1EFMABkcv0n14hXs8kv/Qahh0Hjc9IURmnHiX6DOMgbc3JEsg
         F7XMhPQIM83h/kWfcxvX9CVov47h98IXAZ0t1Gl2sWAP0attRjlkU1owAgqz967LESQy
         eaaA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pobox.com header.s=sasl header.b=kl2TCkL0;
       dkim=pass header.i=@fluxnic.net header.s=2016-12.pbsmtp header.b=MKKUhi2+;
       spf=pass (google.com: domain of nico@fluxnic.net designates 173.228.157.50 as permitted sender) smtp.mailfrom=nico@fluxnic.net
Received: from pb-sasl-trial20.pobox.com (pb-sasl-trial20.pobox.com. [173.228.157.50])
        by gmr-mx.google.com with ESMTPS id 63si23653lfd.1.2021.03.10.13.47.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 10 Mar 2021 13:47:57 -0800 (PST)
Received-SPF: pass (google.com: domain of nico@fluxnic.net designates 173.228.157.50 as permitted sender) client-ip=173.228.157.50;
Received: from pb-sasl-trial20.pobox.com (localhost.local [127.0.0.1])
	by pb-sasl-trial20.pobox.com (Postfix) with ESMTP id 2602A1D123;
	Wed, 10 Mar 2021 16:47:55 -0500 (EST)
	(envelope-from nico@fluxnic.net)
Received: from pb-smtp21.sea.icgroup.com (pb-smtp21.pobox.com [10.110.30.21])
	by pb-sasl-trial20.pobox.com (Postfix) with ESMTP id 090D11D120;
	Wed, 10 Mar 2021 16:47:55 -0500 (EST)
	(envelope-from nico@fluxnic.net)
Received: from yoda.home (unknown [24.203.50.76])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by pb-smtp21.pobox.com (Postfix) with ESMTPSA id D55B612399B;
	Wed, 10 Mar 2021 16:47:51 -0500 (EST)
	(envelope-from nico@fluxnic.net)
Received: from xanadu.home (xanadu.home [192.168.2.2])
	by yoda.home (Postfix) with ESMTPSA id ED20E2DA004F;
	Wed, 10 Mar 2021 16:47:49 -0500 (EST)
Date: Wed, 10 Mar 2021 16:47:49 -0500 (EST)
From: Nicolas Pitre <nico@fluxnic.net>
To: Sedat Dilek <sedat.dilek@gmail.com>
cc: Arnd Bergmann <arnd@kernel.org>, Masahiro Yamada <masahiroy@kernel.org>, 
    Nicholas Piggin <npiggin@gmail.com>, Fangrui Song <maskray@google.com>, 
    Ard Biesheuvel <ardb@kernel.org>, Andrew Scull <ascull@google.com>, 
    Mark Brown <broonie@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
    clang-built-linux <clang-built-linux@googlegroups.com>, 
    David Brazdil <dbrazdil@google.com>, 
    Geert Uytterhoeven <geert+renesas@glider.be>, 
    Ionela Voinescu <ionela.voinescu@arm.com>, 
    Kees Cook <keescook@chromium.org>, 
    Kristina Martsenko <kristina.martsenko@arm.com>, 
    Linux ARM <linux-arm-kernel@lists.infradead.org>, 
    "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
    Mark Rutland <mark.rutland@arm.com>, Marc Zyngier <maz@kernel.org>, 
    Nathan Chancellor <nathan@kernel.org>, 
    Nick Desaulniers <ndesaulniers@google.com>, 
    Vincenzo Frascino <vincenzo.frascino@arm.com>, 
    Will Deacon <will@kernel.org>
Subject: Re: [PATCH] [RFC] arm64: enable HAVE_LD_DEAD_CODE_DATA_ELIMINATION
In-Reply-To: <CA+icZUWk-9i8BSf70qE_9f=mekscQ063q+aUKzSNBymNLAbcTA@mail.gmail.com>
Message-ID: <ros2o1p7-r65q-n4p-3o38-oo36rr58q041@syhkavp.arg>
References: <20210225112122.2198845-1-arnd@kernel.org> <20210226211323.arkvjnr4hifxapqu@google.com> <CAK8P3a2bLKe3js4SKeZoGp8B51+rpW6G3KvpbJ5=y83sxHSu6g@mail.gmail.com> <1614559739.p25z5x88wl.astroid@bobo.none> <CAK7LNATUSJ5T6bs-aA3sMQgXKWfcyWJLDfhmteBhQ5FuUR52Zg@mail.gmail.com>
 <CAK8P3a3yF+JV3+Xq5QtD_59JqxA7akz=u=0t05Gv-isHD9Kv4A@mail.gmail.com> <CA+icZUWk-9i8BSf70qE_9f=mekscQ063q+aUKzSNBymNLAbcTA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Pobox-Relay-ID: 43744EB4-81EA-11EB-9BB5-D609E328BF65-78420484!pb-smtp21.pobox.com
X-Original-Sender: nico@fluxnic.net
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@pobox.com header.s=sasl header.b=kl2TCkL0;       dkim=pass
 header.i=@fluxnic.net header.s=2016-12.pbsmtp header.b=MKKUhi2+;
       spf=pass (google.com: domain of nico@fluxnic.net designates
 173.228.157.50 as permitted sender) smtp.mailfrom=nico@fluxnic.net
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

On Wed, 10 Mar 2021, Sedat Dilek wrote:

> The best results on size-reduction of vmlinux I got with Clang-CFI on x86-64.
> 
> Clang-LTO and Clang-CFI:
> I was able to build with CONFIG_TRIM_UNUSED_KSYMS=y which needs to add
> a whitelist file or add a whitelist to scripts/gen_autoksyms.sh.
> And boot on bare metal.
> Furthermore, I was able to compile
> CONFIG_HAVE_LD_DEAD_CODE_DATA_ELIMINATION=y with and without
> CONFIG_TRIM_UNUSED_KSYMS=y.
> Every kernel I had CONFIG_HAVE_LD_DEAD_CODE_DATA_ELIMINATION=y does not boot.
> Yes, there is a size reduction with both enabled but not that good as
> with Clang-CFI.
> All testings with several iterations of LLVM/Clang v13-git.
> With CONFIG_TRIM_UNUSED_KSYMS=y I see a 3x-loops of building .version
> and folowing steps - got no answer if this is intended.

Yes it is intended. I explained it here:

https://lkml.org/lkml/2021/3/9/1099

With CONFIG_TRIM_UNUSED_KSYMS some EXPORT_SYMBOL() are removed, which 
allows for optimizing away the corresponding code, which in turn opens 
the possibility for more EXPORT_SYMBOL() to be removed, etc. The process 
eventually converge to a stable build. Normally only 2 passes are needed 
to converge, but LTO opens the possibilities for extra passes.

> Means longer build-time.

Oh, absolutely.  LTO (at least when I played with it) is slow. Add the 
multi-pass from CONFIG_TRIM_UNUSED_KSYMS on top of that and your kernel 
build becomes agonizingly slow. This is not something you want when 
doing kernel development.

> I did not follow this anymore as both Kconfigs with Clang-LTO consume
> more build-time and the resulting vmlinux is some MiB bigger than with
> Clang-CFI.

That's rather strange. At least with gcc LTO I always obtained smaller 
kernels.


Nicolas

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/ros2o1p7-r65q-n4p-3o38-oo36rr58q041%40syhkavp.arg.
