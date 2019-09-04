Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB5P2YDVQKGQEWSRNVSQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53b.google.com (mail-ed1-x53b.google.com [IPv6:2a00:1450:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id C190EA969C
	for <lists+clang-built-linux@lfdr.de>; Thu,  5 Sep 2019 00:40:53 +0200 (CEST)
Received: by mail-ed1-x53b.google.com with SMTP id p55sf273273edc.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 04 Sep 2019 15:40:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567636853; cv=pass;
        d=google.com; s=arc-20160816;
        b=wOUtUC3YW63U1RroQVnqkw3CJJkwHlYS8KzsI9ApXWuYTU2dDsRWvWIqqYfZa8s87n
         VZW8PB+nuJfTgRlyy7DS0HJhU3o5qydsNDPvKtp7rHWcGEaDzNoXDBxMG4QmHbEi77hL
         sANO/dHRvc5rM7YmNlkskci4QshL/6KhZLZzziLzFzJOXLZZRA6N7DHYAgvs/H+6Le/9
         eSKhjsYACyWcw3oiZEaRlHaN+AZa4W/1ZzxcXUcdFLcV8sc/MKrZoBJR0NTU76t7i3M2
         bCQf86yRSJlej82dWuH5zbrOGvKjg8eBjwEJzmNmH3pwBe8OtXDtzr4UZiJR6dz6+nwB
         m8cA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=kkwqcJyVYXcTala/7MQPzH0NilVKWJGCLGTnEHnsuwE=;
        b=U52HXZhhCImYHtLKOKx9HmHIrvWDrbg6y4JM0TKIeyF7Fvlm4dz2G8IP8P7CdVRb1X
         THlOiBhJUdmnsEaERhB7o35cpPWC9EagDfyVx0UB/3Ted8cL6vBj0BpwCzM/sNPMSSEO
         QNDnC85oR0DNr/aG9Ro+Z1mQd4VlL9wcQOqBYTBUy21tFHiaaCNZHUPCsgeio0y6/AEi
         sY2QRYBU/bzkOAq78YXmkGEVrC/Bkn/RWIogA2fxQoalitALdHD0M1t8gFXNIf7GVYxt
         Wt0B2nEqLBJXYhcZ/CJdZvs8YuLPbHfmLxc6dbNXClIJ8oUb5jZ7SJMtKKjxL0otdAC9
         2CUg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=epQ6Hx9q;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=kkwqcJyVYXcTala/7MQPzH0NilVKWJGCLGTnEHnsuwE=;
        b=A1zeEiMk+RctO12Bct9bktbB2vv3TgxiWY0gP0j6P5q8TUCCIZx5uLncK8F1sPHkIA
         Tsj5hPC5Iyhz/ysV9cTJlauC8RWmf1vltzT+AUiapK1TsUC8qg/OlkB1GD8vWc4/1XEt
         pODYoGgkHzH8iV/eT0TPTzin2L4h4W9nhgepdXKXKhAR2CiKLlSwQVadp7iI5nqZJ0xT
         fqhvFJnWJ9tD00MZBG7pgPqczEEzd0wm2WCe+f4MKjnDpjF5bZnYWdTP+UNul9EBsjaM
         yInBpkMS6KaSXb5qjPVn9e90MyE6yeUGKzHHBC9/m6xHUHTohxOL5eQsckMW0R/2e/LI
         /M9A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=kkwqcJyVYXcTala/7MQPzH0NilVKWJGCLGTnEHnsuwE=;
        b=cVINWamGv9Ra7VFyI7m/4mt6kVehyzjUQ0qI7ljVxWegb880+qLjfaP6wfcF8ATjVM
         k8vgvj5IPQ9T/Zj0lwU52/vk+ManealDJvZgmVpLfCJSCkYCynmnXLZcZR5dOE0TCLdI
         HSJmnPCbLs41ApYD35oDmXWyMHRRFxkNz7/pTuA3BJXw0NntZYRKAAtWOKiEBxAm83O7
         T+tzQXE4LGLjkJqb6TyvfuVNNPOF1vga3UoepzSvdGd/tr1onZNspbWkDc1FfSu6MZl9
         wbs3+pJxMV9gSfxkktC/0TeV1jcPc08Xt1nYv/Wq3LGIJQn/4xm6xs/UDjqxEV4Kg4tm
         H2Bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=kkwqcJyVYXcTala/7MQPzH0NilVKWJGCLGTnEHnsuwE=;
        b=RYHkKfFfJfIDRHlHb5N9Ocn3B6HaLzlQW9QgOkBu1HMovaTquOf5H52S3KpK1wElKa
         knIBhsqQsJxeqHUg7t7jioUt+ds7/dySX2STtXuDTvAFXJ96PuSNwU+qGfD5491tn2Yc
         ZHMapHeHupVuXTFSrOQU1+cjPUoWDWIIHYG8JuDgOe5jh2qH4nGgt44CkjdhHtDJ9s/2
         iGHv1GgPYVEesTHTGUNNqArRUAuX4171IOgMtTPi0tkoDE128t9LHy8MKHRCZmqC8NJO
         vJ6O0UQVnaw65mN+OlXZeA5cYbPio2ehv0iVgVnHJ3yNJWvVbFZvomLnzrXh2akv1phC
         R/dA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVOQh9nuM6aHXFJ61P9ovoi4vlCSbx3oqxnu457y4SQnFYM5zig
	SGfxvijZx6VxvGlVd01vdwQ=
X-Google-Smtp-Source: APXvYqz87GjvOEHKo4dLFUAncjdUfBOoof2gHERN4bvD73SQo4AksVj/GbC7ILvWPK2O+/jM7ZN/Eg==
X-Received: by 2002:a17:906:3588:: with SMTP id o8mr347439ejb.50.1567636853418;
        Wed, 04 Sep 2019 15:40:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:b794:: with SMTP id dt20ls23616ejb.7.gmail; Wed, 04
 Sep 2019 15:40:53 -0700 (PDT)
X-Received: by 2002:a17:906:48da:: with SMTP id d26mr345948ejt.106.1567636853037;
        Wed, 04 Sep 2019 15:40:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567636853; cv=none;
        d=google.com; s=arc-20160816;
        b=uEmuawU+oFtdWwJ6oXj2Q1FYcKHNiG8NlpTWA4EwgAx7tk3Ur4MEHu9HJs8dWJhrkA
         hfVt3sZv8Pe42+iZYlYaytWsDMgt4HIGiMX1IeZFxjOz2eUbGGzJTfCM+hBlqpzPIKXB
         xD8WhafNnXH4Zl+L6t92acyrsK1Q2UeCoVwLItaQGqJteludKm/vuLxTVjjea4+Olzf6
         6/4awLillhix5F4L+B0hvei7k2UHvibk3wmcYN1bfsD3l2ZtzqepJ7DOsHwdA+yXpsHC
         QlqyhreAeGzGpXuQXZVubt+c13p/M3yH/LOFQVNEbG1qZUCKa0zpO5FNQvamJFHo30Ez
         Xxgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=n42hMk5GEGKVgiWQ4Tr6YXAISJ/x8t5++qX9vnL5Xm0=;
        b=D8eFModEd+Ul92m9EgEAAviSmLww7UJdrZP8mqJzTGGOSSOwmsR6pVoFgTJOT/ykU+
         ZBVAB6mf92N1rxeb+Q6galaYEx4o3O/Esy8D3P8lUqSPUITvzux69JQwmxKF6waKsl7I
         v75rNPNycQ1a63dcaHUsGyS9OB/o8XJHvKbC05DFZvTlfd8SplABAxh9PFRYqImWpX3A
         07Pn48l7UkVHEGD9xB+E8OcHN4C3iPNIBCIk1WPMWIhykPK2vk+34Q4jDTHHJo/EQQ9H
         qaTiRehWes9Q5LvvSZzZNKiXiolvfuWPFkLotigb/85VEFswwDLssqKo3OPygX0I2I88
         TeNg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=epQ6Hx9q;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com. [2a00:1450:4864:20::443])
        by gmr-mx.google.com with ESMTPS id f20si19223edx.1.2019.09.04.15.40.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Sep 2019 15:40:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) client-ip=2a00:1450:4864:20::443;
Received: by mail-wr1-x443.google.com with SMTP id g7so473234wrx.2
        for <clang-built-linux@googlegroups.com>; Wed, 04 Sep 2019 15:40:53 -0700 (PDT)
X-Received: by 2002:adf:e607:: with SMTP id p7mr42979wrm.230.1567636852627;
        Wed, 04 Sep 2019 15:40:52 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id y3sm158912wrw.83.2019.09.04.15.40.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Sep 2019 15:40:52 -0700 (PDT)
Date: Wed, 4 Sep 2019 15:40:50 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: Masahiro Yamada <yamada.masahiro@socionext.com>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Michal Marek <michal.lkml@markovi.net>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v3 1/2] kbuild: refactor scripts/Makefile.extrawarn
Message-ID: <20190904224050.GA82176@archlinux-threadripper>
References: <20190831162555.31887-1-yamada.masahiro@socionext.com>
 <CAK8P3a0kPFojqAWqXEAcitVMjBA5ABc=rRx=zHMxXat+gCz=gA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAK8P3a0kPFojqAWqXEAcitVMjBA5ABc=rRx=zHMxXat+gCz=gA@mail.gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=epQ6Hx9q;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Wed, Sep 04, 2019 at 11:46:45PM +0200, Arnd Bergmann wrote:
> On Sat, Aug 31, 2019 at 6:26 PM Masahiro Yamada
> <yamada.masahiro@socionext.com> wrote:
> 
> > +# Some diagnostics enabled by default are noisy.
> > +# Suppress them by using -Wno... except for W=1.
> > +
> >  ifdef CONFIG_CC_IS_CLANG
> >  KBUILD_CFLAGS += -Wno-initializer-overrides
> >  KBUILD_CFLAGS += -Wno-format
> >  KBUILD_CFLAGS += -Wno-sign-compare
> >  KBUILD_CFLAGS += -Wno-format-zero-length
> >  endif
> 
> FWIW, I just found out I missed a bug that clang failed to warn about
> because of the  -Wno-format. Apparently gcc warns only about type
> mismatches that result in incompatible calling conventions (e.g.
> int vs int64_t) but not smaller types (int, short) that get converted to an
> int anyway. Passing -Wno-format turns both off.
> 
>       Arnd

Hi Arnd,

This has been fixed in clang 10.0.0 but this areas has not been updated
as nobody has sent a patch yet:

https://github.com/ClangBuiltLinux/linux/issues/378#issuecomment-524411147

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190904224050.GA82176%40archlinux-threadripper.
