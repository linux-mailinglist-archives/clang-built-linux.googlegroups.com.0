Return-Path: <clang-built-linux+bncBAABBS7KUSBAMGQETALVJSQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb40.google.com (mail-yb1-xb40.google.com [IPv6:2607:f8b0:4864:20::b40])
	by mail.lfdr.de (Postfix) with ESMTPS id A1EB3334974
	for <lists+clang-built-linux@lfdr.de>; Wed, 10 Mar 2021 22:08:28 +0100 (CET)
Received: by mail-yb1-xb40.google.com with SMTP id v196sf22830983ybv.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 10 Mar 2021 13:08:28 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1615410507; cv=pass;
        d=google.com; s=arc-20160816;
        b=aUtp8gsMyncsVX6e8LkJ6gcm9v2gOEhmtnb8wuonKni3wqwPGsJ2tRdG0N21kKwmWN
         8PM2pVGzjmxhpaV7r12EIVXmyHmVu2eLILye6qU2jZ6IHJkSX/AySTYLKuNR8/w/2lSt
         NnXh9b8JdY59oniP17kUjX6uV8GLT7AFr3BWGwMlrsKshAkr2ys6XlSmgz/74pHzkoPb
         Qiyt1bQfGHulImTfgq49noovIA6b2hN1gPDZqCqM3wtVBbiIV+j1MSLmSjIkqkagINla
         W3ZVYMzGdEwHL3iWPe7JCARTjuj/goyKpj/uw/aYYPUCc9LWxOxoS3IwNOWgUSbsxs7P
         rQWg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=00RvqFEf/AkRgS/hQYDONI+hLY0Jj/OSJ81IVn4g4kI=;
        b=uhl5zhYYD/T+hE6dltJlGOLNzXhnTQZ/RJ89OqXYZF21nKFQ/ueaEZAR+M7eRAjwqS
         fZe9HAgT+sfy3cC1RhdA71Tk6u8PrX+6/5ZwQTfIDjOmUCWiaIdFfCd8B5bZiOpmPpI+
         bbgK1Zbo4GitQYLEe5etteEhuTQCKY/xjYUDbe7uxBPYLcN8qF3cmrKWetNei63nWdmc
         js5YdVhWTz+qwCUSorgYUGhKhXg2dreSeVmbKL0VFVm6XkMQC5KZ5IaYy1uCFzezbgJ0
         nEmBvE4iOuJUnr97ZHsM3HXbukOQozumvFP3qizJOwwdbJJAugLj92fJpKHo3t06mzXV
         VfGQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="i0/QmL4Z";
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=00RvqFEf/AkRgS/hQYDONI+hLY0Jj/OSJ81IVn4g4kI=;
        b=Tntit5urUHJB2avpbBRiTJbO8kN/Uz8YN7KGpgCaTsVSfHdk5ILnD5fEsCOIonijoD
         syTsrjbts8rtBCPqoYTPIZCczargAuQM7XSCwE00HMtEf2oYLhLUIZSF0HGHq29Wx7xt
         z9U/GD7ywamQ6e8Z6NvEJUhHJ5G3kgwxYnPZA5yUVXMtB91s2l76n0ng5iFNHMmjW6tM
         vzWi+qKv1YuQTEtNEPaBcaDBuBS6xPpQ9HbOUvaEXa6NVgAa/Qj1G/g0gZqhCiah6QQi
         4BiT+OCW5ZzZFP+/jgGlMI9lUz2U9ycZZnM8ZZ9yP6wme9Ynp2eqSLWDdZPIRtDsdqxd
         geOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=00RvqFEf/AkRgS/hQYDONI+hLY0Jj/OSJ81IVn4g4kI=;
        b=QEth+BDsP3L/3dxSfjJ5mCg7RGGFAcnpWoa9LzfXjcROeX+Wq7xMP6unmUEyv7hwTk
         gScmRMGvN2LMZ6m7Nj03xX5KNKApYvSpsxwxYQHagFc5UEKxWU3jMyjVsSLofqxme++Z
         7L9cXYX2/1nzbjmBDxrBArDIfvK4Fs0vifIcAe1Snao5HSehQQC0sDxqK5/JrmHQP9C6
         xYYycukhs0vpWTXtA9V9tgNd62fNwZ/HBBltCyG+PPD0CG08MqZYASw6NVLXoFilZv3P
         ELV+NZMCcmFhriB8jbihusA25+anotGYzYstSY9sHzk3oTIzcRStikzEVHJCwTjLIxNO
         sTfw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533e67BvdRsf5aezNz0WC0pL+3/qHshhVLzPfYJcWJ5I+IXyWWqX
	4Zg/IijdaGBnTrVVtYrvjXI=
X-Google-Smtp-Source: ABdhPJxq6YzCtBp5Uz1cQgI4FPedz9L1wVWW2ryxaPglAUm8as9n6JTc4DZ0KPOJ+WJEC1cAoQm43A==
X-Received: by 2002:a25:7a41:: with SMTP id v62mr6759562ybc.30.1615410507744;
        Wed, 10 Mar 2021 13:08:27 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:d8c7:: with SMTP id p190ls1549497ybg.6.gmail; Wed, 10
 Mar 2021 13:08:27 -0800 (PST)
X-Received: by 2002:a25:918d:: with SMTP id w13mr6469053ybl.429.1615410507374;
        Wed, 10 Mar 2021 13:08:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1615410507; cv=none;
        d=google.com; s=arc-20160816;
        b=uVdtn1JGFMxRtOrRwJDHvnSSDuz9Q+1VAxwum33I108565fOD0EAxrwd4feBhfFBUS
         zdNyegsps994JUtnSOtg1u+LlQ66Md6csqGgo/Z59UC28D/FnTZuNX8630foR/rW8ZCB
         I5d6n+9HWVx9MhEaCooZbmBzzPWu39L5p8cBwo7C78DjRDlxB34CLmWWcmhFb66gKl36
         CLJawA974TxlGSroqBfZMa37x9CdtuBrN4+2QYSk58UXqqJu34PQgGljhPR71M2u89Vg
         6ReNuuxunSxaoDgWErgsTCmGzd0AtPt1EP+0GV57NWu9CLvaPEysHw9NurkV7Es2Zl9Z
         cCnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=BuHJsqiyxgLTfrESA1yCLCvt6V7sdg+hKUU6wtQk6VE=;
        b=IyLUO9IKRF7YFF4ECHD/t5yALhuwFOdkXma6y7GtweNsrD+UCpOW/UMWgg08hahIEk
         eIgseaNYpgcSRtpwz+zm9dDs0ow2xm2ydHwAGQV3wfcMXQKxWgswcd+Zwgdp7r0v9IvF
         +hnT3CCkReQ+58m8vPiA2v9LNEKH3Z8rCL8pr1l7ngHJT6Es9YOZAxx/qvypx4u8rJC2
         8BnkElSFxdmZcKL7bQgov8y9EPpL0AMjGwbhVgL0NINGfHzOL8Cpai4KA/qs/e5eYsO8
         ErHh41OLiygxtxZuhk8Y+i5ZgnPPVq4NjDBJldoN4ZxtWnChkbi0c/E9v4OSJRWuDr2/
         E4XA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="i0/QmL4Z";
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id x23si81944ybd.1.2021.03.10.13.08.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 10 Mar 2021 13:08:27 -0800 (PST)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 2AFC864FC8
	for <clang-built-linux@googlegroups.com>; Wed, 10 Mar 2021 21:08:26 +0000 (UTC)
Received: by mail-oi1-f182.google.com with SMTP id x78so20734913oix.1
        for <clang-built-linux@googlegroups.com>; Wed, 10 Mar 2021 13:08:26 -0800 (PST)
X-Received: by 2002:aca:5e85:: with SMTP id s127mr3623525oib.67.1615410505313;
 Wed, 10 Mar 2021 13:08:25 -0800 (PST)
MIME-Version: 1.0
References: <20210225112122.2198845-1-arnd@kernel.org> <20210226211323.arkvjnr4hifxapqu@google.com>
 <CAK8P3a2bLKe3js4SKeZoGp8B51+rpW6G3KvpbJ5=y83sxHSu6g@mail.gmail.com>
 <1614559739.p25z5x88wl.astroid@bobo.none> <CAK7LNATUSJ5T6bs-aA3sMQgXKWfcyWJLDfhmteBhQ5FuUR52Zg@mail.gmail.com>
In-Reply-To: <CAK7LNATUSJ5T6bs-aA3sMQgXKWfcyWJLDfhmteBhQ5FuUR52Zg@mail.gmail.com>
From: Arnd Bergmann <arnd@kernel.org>
Date: Wed, 10 Mar 2021 22:08:09 +0100
X-Gmail-Original-Message-ID: <CAK8P3a3yF+JV3+Xq5QtD_59JqxA7akz=u=0t05Gv-isHD9Kv4A@mail.gmail.com>
Message-ID: <CAK8P3a3yF+JV3+Xq5QtD_59JqxA7akz=u=0t05Gv-isHD9Kv4A@mail.gmail.com>
Subject: Re: [PATCH] [RFC] arm64: enable HAVE_LD_DEAD_CODE_DATA_ELIMINATION
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Nicholas Piggin <npiggin@gmail.com>, Fangrui Song <maskray@google.com>, 
	Ard Biesheuvel <ardb@kernel.org>, Andrew Scull <ascull@google.com>, Mark Brown <broonie@kernel.org>, 
	Catalin Marinas <catalin.marinas@arm.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, David Brazdil <dbrazdil@google.com>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Ionela Voinescu <ionela.voinescu@arm.com>, 
	Kees Cook <keescook@chromium.org>, Kristina Martsenko <kristina.martsenko@arm.com>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
	Marc Zyngier <maz@kernel.org>, Nathan Chancellor <nathan@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Vincenzo Frascino <vincenzo.frascino@arm.com>, 
	Will Deacon <will@kernel.org>, Nicolas Pitre <nico@fluxnic.net>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b="i0/QmL4Z";       spf=pass
 (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=arnd@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Wed, Mar 10, 2021 at 9:50 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
> On Mon, Mar 1, 2021 at 10:11 AM Nicholas Piggin <npiggin@gmail.com> wrote:
> > Excerpts from Arnd Bergmann's message of February 27, 2021 7:49 pm:

>
> masahiro@oscar:~/ref/linux$ echo  'void this_func_is_unused(void) {}'
> >>  kernel/cpu.c
> masahiro@oscar:~/ref/linux$ export
> CROSS_COMPILE=/home/masahiro/tools/powerpc-10.1.0/bin/powerpc-linux-
> masahiro@oscar:~/ref/linux$ make ARCH=powerpc  defconfig
> masahiro@oscar:~/ref/linux$ ./scripts/config  -e EXPERT
> masahiro@oscar:~/ref/linux$ ./scripts/config  -e LD_DEAD_CODE_DATA_ELIMINATION
> masahiro@oscar:~/ref/linux$
> ~/tools/powerpc-10.1.0/bin/powerpc-linux-nm -n  vmlinux | grep
> this_func
> c000000000170560 T .this_func_is_unused
> c000000001d8d560 D this_func_is_unused
> masahiro@oscar:~/ref/linux$ grep DEAD_CODE_ .config
> CONFIG_HAVE_LD_DEAD_CODE_DATA_ELIMINATION=y
> CONFIG_LD_DEAD_CODE_DATA_ELIMINATION=y
>
>
> If I remember correctly,
> LD_DEAD_CODE_DATA_ELIMINATION dropped unused functions
> when I tried it last time.
>
>
> I also tried arm64 with a HAVE_LD_DEAD_CODE_DATA_ELIMINATION hack.
> The result was the same.
>
>
>
> Am I missing something?

It's possible that it only works in combination with CLANG_LTO now
because something broke. I definitely saw a reduction in kernel
size when both options are enabled, but did not try a simple test
case like you did.

Maybe some other reference gets created that prevents the function
from being garbage-collected unless that other option is removed
as well?

         Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a3yF%2BJV3%2BXq5QtD_59JqxA7akz%3Du%3D0t05Gv-isHD9Kv4A%40mail.gmail.com.
