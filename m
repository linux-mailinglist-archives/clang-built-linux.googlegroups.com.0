Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBDEM5WHQMGQECPVYUAI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13d.google.com (mail-il1-x13d.google.com [IPv6:2607:f8b0:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B7F04A7E33
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Feb 2022 04:03:42 +0100 (CET)
Received: by mail-il1-x13d.google.com with SMTP id w14-20020a92db4e000000b002bc0fb4892csf848921ilq.6
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Feb 2022 19:03:42 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1643857421; cv=pass;
        d=google.com; s=arc-20160816;
        b=HyeJC0N3WTKy7OvsfsXDikPi6dL1fOTO5Pw1YB5J9lKid7VRCCa7iT59n9cxiANdgm
         /OLy9UF8QEDSEZT0B1zhKD1T9iTzfivBt1juAxg1wQ2sguwJHJR984mBFm0jyTC7kATf
         IczDcXTiZwKxYgd/Eobv8KxnSA7Cn2RLaSZfxp6wT79MhDITLtTOD8swODCMmgdVZb+5
         R/Cozes1KPnSL7/MhvFmV3cIJE675smzaEmuIlGuQy5ERvDomHdIWGnbeQiBbub1lw3n
         ayTYWgBiy3wOu6t11a+xlpX78tYz6BqBFqUNUrjF07FPwUZIVosXAJQvuVrdwnk55m4q
         AlZA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=fc6049AIfo2tcKLGQwcgB+h2TUDcbP6aTD+6FnlrFOI=;
        b=o3/a9jipYoxKCQ6WZ2OIasIvhjwN5woUUBfX6SdTTzjfsIDsZJlsBXUnAisDnUZh+W
         bFrZo/xLn/0D8CS/sUlkf3iV06LqJYaDqbzOQC4w0JvK5KAuEZ5ytkI/qdzZBvnuiWKh
         gqFc/HLzgGNXVGItZyDJJYk85i0lAvGIMGpEVMI8RKNCC2eNPnGSDy/8y1UPsyewVZAR
         vVfLoVHqSLxcGLOM8o/5zWqtwg+S0ZQXRe+bvm9HuXqqkddjye3kLZ3W7A/tH7UStrRC
         YnHhQ9d+82cVvyF08I9aNyOERJMV1FTi6liZYyDLlTMYUXzilzHh+ephD9zyQPQEPBD8
         XvMA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=ihbvWhnX;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102f as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=fc6049AIfo2tcKLGQwcgB+h2TUDcbP6aTD+6FnlrFOI=;
        b=NR/iXO4NvGCXCMkKqfDOsr6LnLPeWdA5WugAhbLWfWYzGYSO9MWb/PDWhmUr0Did8R
         iK+AMkEQzUKPFOuM4KMaYF/xoEITqwygx6iCZSfVK/v4v+o5WHZDdQYYE9wLrm4S+JQm
         vceEm9Ij0bG17MlJ3sGk9l/qkHbBinxcPq/FYmLf/p6RHADW2yqNC+J6RGWuy7piIw/v
         UpYKsVK0pqNtHdxuIHrOjY3f0mgcimx8MDPsmOeDx49QhnLPXk4mRVeQyq6WHdotK4Yn
         mi7ImTdLO++38X6XKf6K27jWT9ZfDvJYGs39rHcwCpR57vA/SvPpol0l4NkaEzhEldWm
         ssKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=fc6049AIfo2tcKLGQwcgB+h2TUDcbP6aTD+6FnlrFOI=;
        b=i29uy+xJ+upJWiWP3rQyw7qOfn8UOyoYQ6xIlMhNuyrYjf8bQq2beHqXczDmkvGJ1U
         XJYVpnnJ0G9QGSh+dhcBn55yfBa3Z9/cNJHrdrX4tlnD4SM64kFnQX+KZDZCGgBbi76F
         +vFVxTRaEyQZMo9qgAJArGrlQekycZPT4Li2vrHqCGzDkuJXdlwM65Gnz4Uc5VAiVaSa
         yphVGFVN5VsUdWfffr3un3tq44SQZ49d1c7ZBkIDqd8B30Dp8Jr30atpFW6ubRRJK/eq
         mRAm2cyiwy2QzWm0fPaNNyszwTtRX32VQY7/Wx5LeSgAQmN74RMQgTEoulRkU4IKM+Ri
         baXA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532YSzVCNDB8/0cyiK5Fa1YUPY2Pwi+Q1TmHaDfuW4VWZY+dZtpt
	UQSYiYcxc/xwmng1Q1dx2f8=
X-Google-Smtp-Source: ABdhPJxw6CooiSo3jskavGKJOlLXgkqWTGM5yHKZ0wA1Bj/ksZsGK0YNk1cvhZuuJCIdLCO7mwUf/Q==
X-Received: by 2002:a05:6638:2247:: with SMTP id m7mr11431624jas.89.1643857420929;
        Wed, 02 Feb 2022 19:03:40 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6602:2d84:: with SMTP id k4ls2749933iow.6.gmail; Wed, 02
 Feb 2022 19:03:40 -0800 (PST)
X-Received: by 2002:a6b:720f:: with SMTP id n15mr17497633ioc.158.1643857420583;
        Wed, 02 Feb 2022 19:03:40 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1643857420; cv=none;
        d=google.com; s=arc-20160816;
        b=dNdqvmqoDCUQ5n/6rj+sawbGkpO0LAsM6BBSA1LgC/2G6HjMDtGM0YUweYdF39nNl0
         IZ0g04ZEjkOmnBcK/VR2Qzu0DdoHl4wbJsj7ENwgxWp2/gc6R3tB4ptKgEM9qvdVr15I
         vXu3xjR9ZTjMyqf1LG7lnOZ++H+fBXNib7w45vkKKESM5w7P/fC45djtzPHq5oLX7+wG
         cf7Uzv3RN9mRJHDRAu+wEVdT6kaGYiuifRI5BYdEWFATtD4Fnp6eAVQhcbBPS8EeWU3O
         Rhrg6GLtXGSjy04xKWJaKSzMMQ7fx24eZ+Rk+HnAZGG7Qf963HSALJwpk29pJkQzAIE7
         h/ig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=66kPZSC1iKeNoZfaiCMo3QKLREtWuEiSUFYFnGS139g=;
        b=rb+uJAXTTg6I+xSAtnQDBE1KGxbJ9xgvls1LlIjib700mqVmio/qaPS+AjEC5kdr+J
         iO8GTd27f4w2Y+O2iuuaZoetpfrKuluq9JZwicvShT1pmjFRb5PGyqABrpfiGL/q+2i5
         QwjBc6rbmz5K7xjOqF8Y8+L+OQKf/OWls6eA334WfzPtGufDlNJ9/WyeYMEDHeqhPsvu
         POlacHUVDnsvdUnyWA7pl1/I3g7kGlnLt8itZeTIgywYkpZhlsKr4llDivyXdcpQ3naC
         9G75C027u8cBzmi2T2ECrcEr0oqKxXg02Av5aNv7FGDtYJfACA5q+CH3lXqihC+Zzx+F
         upzg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=ihbvWhnX;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102f as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x102f.google.com (mail-pj1-x102f.google.com. [2607:f8b0:4864:20::102f])
        by gmr-mx.google.com with ESMTPS id ay13si3192513iob.4.2022.02.02.19.03.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Feb 2022 19:03:40 -0800 (PST)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102f as permitted sender) client-ip=2607:f8b0:4864:20::102f;
Received: by mail-pj1-x102f.google.com with SMTP id p12-20020a17090a2d8c00b001b833dec394so1570104pjd.0
        for <clang-built-linux@googlegroups.com>; Wed, 02 Feb 2022 19:03:40 -0800 (PST)
X-Received: by 2002:a17:90b:4f4c:: with SMTP id pj12mr4989551pjb.9.1643857420161;
        Wed, 02 Feb 2022 19:03:40 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id lb3sm8336560pjb.47.2022.02.02.19.03.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Feb 2022 19:03:39 -0800 (PST)
Date: Wed, 2 Feb 2022 19:03:39 -0800
From: Kees Cook <keescook@chromium.org>
To: Guenter Roeck <linux@roeck-us.net>
Cc: linux-kernel@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
	Masahiro Yamada <masahiroy@kernel.org>,
	linux-kbuild@vger.kernel.org,
	"Gustavo A . R . Silva" <gustavoars@kernel.org>,
	clang-built-linux@googlegroups.com, linux-hardening@vger.kernel.org
Subject: Re: [PATCH 4/5] Makefile: Enable -Warray-bounds
Message-ID: <202202021902.97BAE673@keescook>
References: <20210818081118.1667663-1-keescook@chromium.org>
 <20210818081118.1667663-5-keescook@chromium.org>
 <20220202160903.GA2337834@roeck-us.net>
 <202202021254.5A1FD4FFBF@keescook>
 <cbf0cf07-2350-ed23-f6be-b2686c6a0cea@roeck-us.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <cbf0cf07-2350-ed23-f6be-b2686c6a0cea@roeck-us.net>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=ihbvWhnX;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102f
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

On Wed, Feb 02, 2022 at 03:33:11PM -0800, Guenter Roeck wrote:
> On 2/2/22 12:56, Kees Cook wrote:
> > On Wed, Feb 02, 2022 at 08:09:03AM -0800, Guenter Roeck wrote:
> > > xtensa:allmodconfig:
> > > --------------
> > > Error log:
> > > In file included from include/linux/uaccess.h:11,
> > >                   from include/linux/sched/task.h:11,
> > >                   from arch/xtensa/kernel/process.c:21:
> > > arch/xtensa/kernel/process.c: In function 'copy_thread':
> > > arch/xtensa/kernel/process.c:262:52: error: array subscript 53 is above array bounds of 'long unsigned int[16]'
> > 
> > I assume this is a weird cast. I will also check this one out.
> > 
> 
>                                 int callinc = (regs->areg[0] >> 30) & 3;
>                                 int caller_ars = XCHAL_NUM_AREGS - callinc * 4;
>                                 put_user(regs->areg[caller_ars+1],
>                                          ^^^^^^^^^^^^^^^^^^^^^^^^
>                                          (unsigned __user*)(usp - 12));
> 
> I think the problem is that XCHAL_NUM_AREGS can be up to 64,
> but the size of struct pt_regs->areg[] is fixed to 16.

Yeah, that's what I found too. The comment about pt_regs::areg seems to
hint that things treat pt_regs differently. I've asked on the xtensa list:
https://lore.kernel.org/linux-hardening/202202021501.DA6594BFC@keescook/

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202202021902.97BAE673%40keescook.
