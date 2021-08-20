Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBQH27SEAMGQEWQWPAXY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf39.google.com (mail-qv1-xf39.google.com [IPv6:2607:f8b0:4864:20::f39])
	by mail.lfdr.de (Postfix) with ESMTPS id E6B583F2677
	for <lists+clang-built-linux@lfdr.de>; Fri, 20 Aug 2021 07:27:29 +0200 (CEST)
Received: by mail-qv1-xf39.google.com with SMTP id bo13-20020a05621414adb029035561c68664sf6198764qvb.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 19 Aug 2021 22:27:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629437249; cv=pass;
        d=google.com; s=arc-20160816;
        b=p5dyTnPZaHiS1OrQxJqErHrPum+vi6L3VcI2EcKT/AT3d7WLm0BLNHHWP6DKkDm2it
         raOp1oAsMh16xwwJNnY0Ff2UqCt7vRJJcm+ny13TqK5c7YhXditq6kZ8O5s3l+FfGoaY
         ngkghnn2UZjlh81i9yLCq/D8lXaAh+gctxVMQCu5l6HBMOgzZcxjMtaqdDtLXnjSyl8t
         Ko0B5tqmb92S6igNFAfMQiAG2CngTkvdxcuWvmkXNACl5wxON8CyCyYv1KBV4PEEAhKB
         50vlbP8S0SzawsTcA6g4ykkzjZVZ244L6XNdeGN2KzCyK9keNjVvxP6XfKcxqoYqyc5o
         lLnw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=yD+qWAhPw3DAl3kvAHl5BkGpZs3dJRyXJ5MGRYpiiXY=;
        b=j4EcF0mTfYsR2EPAxJvGLmd7vaeF0HsLJTHlzh/GzI4dSH17iMnYJcK5oZXWsJrs9q
         tPiBJQriwSfdSEqLI935jw+6mkEOE6cCYs9e2lhnMv/Q5WCbKAUCdQKJyykitMflVj5R
         0Vd621iNM21DElGJth8b9fD1ntMfs4ygOc4h9nRN7sY4Rn8XWmcciYZW0uKSBc8WbV2U
         FMnhy1/QErFdf0l771vh3k+lmVC0Py52eILUdjlPu600GRzNgZvVhVDxtRBT4TtAoIYD
         LceES6TfAHXaARy6iHmK8rY/VMh9eZ4Yzn4AOzJq8iCzvJHKHhBQcnjtWm0BbpU9C3o5
         +EjQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=e8yLPfT1;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1030 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=yD+qWAhPw3DAl3kvAHl5BkGpZs3dJRyXJ5MGRYpiiXY=;
        b=c5f0/XPtcWdXmEeZAefwUpgO2TksSItqIOZwnChXCI8Yvtk5nsdNzTKsnQiIk/cE4E
         quLXAVkxwbz7n056TNv+QLm8dr/yx9RzPxbp+GwHLwZOS/XJRKJK++5apv/duRgd7DPZ
         b98Y68rXKBaXXmRD8IPEK1/YnOwNMbepueohsRQA7AU/CrM7Z9EIp0T3Ef28CVeUDkrk
         TUguoRa6ElEMFLAE0CAh0msjxFo9V/2ZHwfZXxuLnnaMVfrjvJz8T1XvnHkXyI83rH5w
         8hxzS6JfyM7SqnmEwjL+MCkcP+fytmIao373TuyCJOWi3Qal7YjvkXmvJoT4Yun8oHPT
         w4bQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=yD+qWAhPw3DAl3kvAHl5BkGpZs3dJRyXJ5MGRYpiiXY=;
        b=WvnXhgOF8OsD4Mco7PEp7xh3/LlO/YtEVrtHgyvtU95xU+QMInOi7nL4CcgjCYSEN+
         /EPJq4UEvrB7xq12d2QY8pvzAXWft3e2mnOCgNoGN6DO3MuJ3Z3XCWcidpy3bmKIoYbd
         Hu7J9241usNBh+iVad+je7Vc5GRPe632xhnYQlEPgw7nl8+xA+BkdDTh4hxIpuVMqs14
         yxNeuarJgXsG4e4Y2w5l3oh3vQi4L1/PV6dA8oS5WqKFLlIIlCQKCiadk/Tu4IkkZZH/
         lYJmTCX7NMqlJRm7d09cr1lA6w5Cw7JE7wE23VEU8sRAC/o1Q9sbQr60HHpIuA5iYa0B
         B4yA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530gcjkzCpHUr02OcwAT9+Q/7fTrpGDDoJndacaztuIU+097XKGG
	b2HFUo02xeZIAmZPIdPe1Ys=
X-Google-Smtp-Source: ABdhPJzg4tDDEPWsy4jV7RVhArHtVjFIPjQVE/Twx0Bj/oaX/fOV/xPLoiwjyiD7nIUYYx3b9881Bg==
X-Received: by 2002:a0c:b2d5:: with SMTP id d21mr18405437qvf.33.1629437248794;
        Thu, 19 Aug 2021 22:27:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:153:: with SMTP id f19ls2205960qtg.5.gmail; Thu, 19 Aug
 2021 22:27:28 -0700 (PDT)
X-Received: by 2002:ac8:7c5:: with SMTP id m5mr9672102qth.180.1629437248370;
        Thu, 19 Aug 2021 22:27:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629437248; cv=none;
        d=google.com; s=arc-20160816;
        b=Xr6ut1IrdtMnZbdVEdGp4B4Ym9T/qdy6JUSYM1mxQN65TuHabCuivaT5frotsZFqcn
         OZW1muu/IwYLSqq4solHCzFohgmXupelOk/d1BL8b8qIzA2LGAi6npFFsVOFcW20o5Lb
         s4vS3F5d2WpxD50IZanshMw0fQl9g90P9ymMwjO4YlqeB2MJ5pkMRvcrYwsvcMYSjLyt
         XwkkPPdX70j4p76s0YXS+d4z2+Hb4WWdqc0TDdHhU3d/Y0dQs95lBrM91h1UU7+BCwht
         09dgC8wpRx8Knk1mvANFAHn+/pW+WNy6OxxXSygifXStC0x6bvWO6lB7TFSWov4JFXMR
         d2Lg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=SGRbSAfBSvn06RBLUf1ChYkatAx1DB8aY9rwM3r+UEw=;
        b=qQR2gWwoL23yl3jf7SyqKyaRHr8AoH6CTg3BQPfg5VOkuAYlYLakiQwXIoRhc4PVN0
         IoAcSDfyeq0m8AgkXValZ6IE3GNDrHTwTE7eZUKP8DDf/OTjw4WDsBHMnF2CIZYp0C+h
         DHIuO/AiuwlQbicfc84Banbz7rusKEUczIZXQduF/QurUP93QxB1r+DebMoRyWExOyc2
         U5ksLg/BbQqvgo1jbSkMjTNhQuHZAt92GucPiyrGh/LkCD77OOUwKxjGjRdNIQA9Lv8O
         B0U22i9aflyXLfSmbZcvggpQaTqHyWzmXOVbYTx/UoA+Mkq2+VaimJY/ByqRXsBBcbRQ
         qDlQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=e8yLPfT1;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1030 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1030.google.com (mail-pj1-x1030.google.com. [2607:f8b0:4864:20::1030])
        by gmr-mx.google.com with ESMTPS id s128si361934qkh.6.2021.08.19.22.27.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Aug 2021 22:27:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1030 as permitted sender) client-ip=2607:f8b0:4864:20::1030;
Received: by mail-pj1-x1030.google.com with SMTP id qe12-20020a17090b4f8c00b00179321cbae7so6494672pjb.2
        for <clang-built-linux@googlegroups.com>; Thu, 19 Aug 2021 22:27:28 -0700 (PDT)
X-Received: by 2002:a17:90a:bd08:: with SMTP id y8mr2815251pjr.123.1629437247529;
        Thu, 19 Aug 2021 22:27:27 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id 10sm5639485pjc.41.2021.08.19.22.27.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Aug 2021 22:27:27 -0700 (PDT)
Date: Thu, 19 Aug 2021 22:27:26 -0700
From: Kees Cook <keescook@chromium.org>
To: Andrew Morton <akpm@linux-foundation.org>
Cc: linux-kernel@vger.kernel.org, Daniel Micay <danielmicay@gmail.com>,
	Dennis Zhou <dennis@kernel.org>, Tejun Heo <tj@kernel.org>,
	Christoph Lameter <cl@linux.com>, linux-mm@kvack.org,
	Joe Perches <joe@perches.com>, Miguel Ojeda <ojeda@kernel.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Andy Whitcroft <apw@canonical.com>,
	Dwaipayan Ray <dwaipayanray1@gmail.com>,
	Lukas Bulwahn <lukas.bulwahn@gmail.com>,
	Pekka Enberg <penberg@kernel.org>,
	David Rientjes <rientjes@google.com>,
	Joonsoo Kim <iamjoonsoo.kim@lge.com>,
	Vlastimil Babka <vbabka@suse.cz>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	clang-built-linux@googlegroups.com, linux-kbuild@vger.kernel.org,
	linux-hardening@vger.kernel.org
Subject: Re: [PATCH v2 6/7] percpu: Add __alloc_size attributes for better
 bounds checking
Message-ID: <202108192221.396DFDC9@keescook>
References: <20210818214021.2476230-1-keescook@chromium.org>
 <20210818214021.2476230-7-keescook@chromium.org>
 <20210819221115.b3a34e280cfe748ad6a76b04@linux-foundation.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210819221115.b3a34e280cfe748ad6a76b04@linux-foundation.org>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=e8yLPfT1;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1030
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Thu, Aug 19, 2021 at 10:11:15PM -0700, Andrew Morton wrote:
> On Wed, 18 Aug 2021 14:40:20 -0700 Kees Cook <keescook@chromium.org> wrote:
> 
> > As already done in GrapheneOS, add the __alloc_size attribute for
> > appropriate percpu allocator interfaces, to provide additional hinting
> > for better bounds checking, assisting CONFIG_FORTIFY_SOURCE and other
> > compiler optimizations.
> > 
> 
> Caught one, I assume:
> 
> In file included from ./include/linux/string.h:262,
>                  from ./include/linux/bitmap.h:11,
>                  from ./include/linux/cpumask.h:12,
>                  from ./arch/x86/include/asm/cpumask.h:5,
>                  from ./arch/x86/include/asm/msr.h:11,
>                  from ./arch/x86/include/asm/processor.h:22,
>                  from ./arch/x86/include/asm/cpufeature.h:5,
>                  from ./arch/x86/include/asm/thread_info.h:53,
>                  from ./include/linux/thread_info.h:60,
>                  from ./arch/x86/include/asm/preempt.h:7,
>                  from ./include/linux/preempt.h:78,
>                  from ./include/linux/spinlock.h:55,
>                  from ./include/linux/mmzone.h:8,
>                  from ./include/linux/gfp.h:6,
>                  from ./include/linux/slab.h:15,
>                  from drivers/misc/lkdtm/heap.c:7:
> In function 'memset',
>     inlined from 'lkdtm_VMALLOC_LINEAR_OVERFLOW' at drivers/misc/lkdtm/heap.c:27:2:
> ./include/linux/fortify-string.h:172:3: error: call to '__write_overflow' declared with attribute error: detected write beyond size of object passed as 1st parameter
>   172 |   __write_overflow();
>       |   ^~~~~~~~~~~~~~~~~~
> make[3]: *** [drivers/misc/lkdtm/heap.o] Error 1
> make[2]: *** [drivers/misc/lkdtm] Error 2
> make[1]: *** [drivers/misc] Error 2
> make: *** [drivers] Error 2
> 
> I want to get a kernel release out, so I'll hide
> mm-vmalloc-add-__alloc_size-attributes-for-better-bounds-checking.patch
> for now.

In the cover letter[1], I listed the needed fixes that were sent
separately from this series. Quoting here:

> To build without warnings, this series needs a couple small fixes for
> allmodconfig, which I sent separately:
> https://lore.kernel.org/lkml/20210818174855.2307828-5-keescook@chromium.org/
> https://lore.kernel.org/lkml/20210818044252.1533634-1-keescook@chromium.org/
> https://lore.kernel.org/lkml/20210818043912.1466447-1-keescook@chromium.org/

What you hit is the first one, which is already in Greg's tree:
https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/char-misc.git/commit/?h=char-misc-next&id=e6d468d32cd084edd030a8bae76440b17b854b5c

The other two have also been taken:
https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git/commit/?h=staging-next&id=cbe34165cc1b7d1110b268ba8b9f30843c941639
https://git.kernel.org/pub/scm/linux/kernel/git/bluetooth/bluetooth-next.git/commit/?id=a31e5a4158d03595ca4258b94397d4097be0ebe4

-Kees

[1] https://lore.kernel.org/lkml/20210818214021.2476230-1-keescook@chromium.org/

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202108192221.396DFDC9%40keescook.
