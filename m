Return-Path: <clang-built-linux+bncBDOIB4GOWANRBM5Q5TZQKGQECL7LHQQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x640.google.com (mail-pl1-x640.google.com [IPv6:2607:f8b0:4864:20::640])
	by mail.lfdr.de (Postfix) with ESMTPS id 6607B1922E4
	for <lists+clang-built-linux@lfdr.de>; Wed, 25 Mar 2020 09:37:09 +0100 (CET)
Received: by mail-pl1-x640.google.com with SMTP id l1sf1108596pld.14
        for <lists+clang-built-linux@lfdr.de>; Wed, 25 Mar 2020 01:37:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585125427; cv=pass;
        d=google.com; s=arc-20160816;
        b=JpXJCwmauTioHDxBPHuqp6zGocUjt/wDkif+GNYCaaXBzvH3kZfCDezlQjHbQk7xW4
         AxHFMrVS1woGVjK2zX/wiTPFUe4xUZQ96LTSaYkYJOvhKQGqq3ZESnfe7n9n080Pci/F
         QUuorHsW3U/61sPI7za09pDvVtP88kNvgxVkYQUoIwcnD52w9X5+OQcmF5HWOYXUxX0h
         caErYMr+co5fsEzfUQnjwCWuMAXsbLPTnwq9AK5DjRJtYDrps7VT+D6Zhxlvq2iA5OxZ
         GI1buEUJAgesn7+YehjnXCpeeiWbSBx0VpcT3JgZPAVPsGJJZeoXOgv0sn4vT4G5APKl
         qDDw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=L693GMKqttdmGMSdEVQGwopRQGEvruxVul0UfXYmgbw=;
        b=Hv3xmbPZQLgk2OVIzMxzjiAieHsyeRF504Lmaqx26hhlPp+DYP9SjqgNqlHxe+/NXT
         +hxqwj/5jky9HGJ21T8aa3xvqULFcwBaSWfFJANbPvq1Y4QPqowvs6gX+P32m6LLoZb5
         yx3bhUVHVP8q90jXmJFssgvvHul6xZ8nriCsF2hktKo6M4rOCdZFlzkal6fEP0Ra6/T5
         N/OQWaWLjK5ajhM2iD+rIac8KoONy1qaFHLU+VUo+MN2vh7p7GD7mxIr1X8x52AkGM2B
         MbjACZ7/j5AO+TiOxTAQpj2Ee/tN6FlpPkEP/OKtuSkEtGCs7MubsZPwqmoWSCQRqyHZ
         yaUw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fA5u9yV7;
       spf=pass (google.com: domain of amodra@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=amodra@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=L693GMKqttdmGMSdEVQGwopRQGEvruxVul0UfXYmgbw=;
        b=PFbtn5tjbi75NmsRasetnrTf1pGsJrqu9p5R2gp88WRIw3nHu4LO9MjjHrvLyoZODU
         8hE41JKJFM4yUoH9w/b7zH1yWXzwXhiLNg48Pf6paMDrnQ58NlBwyklYWgToS0MTBs1v
         tY9ecJJQ80USQWf4dDQa4BF2sV0fo8/usH8ZRAFLhW2u3OPQYvGccAIa5q5boNS5mB43
         JdFmRyFJzf+t+h6xZ5dKch6o1mnziu6jF3hF3H5gBEkCgjlIKRQML5vKROMHxn+q60Qv
         TdlDBD7A7GwgGknnALdkLt/IeK63CIP3fhgsaRs0oRmCnVxp88EywyGi9lQWScvJSzOY
         RLyw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=L693GMKqttdmGMSdEVQGwopRQGEvruxVul0UfXYmgbw=;
        b=NjPLRvdxq04p/VZf9DRSLYbnFuGjQoxahAUUMLuvkgUwdqVjC+3q/HdJCwOg2iYPa0
         IYt2FY6MGOdJUEgy4WgpoJNigQ63Ihzih7QjdviNWknKbpbfoV6icGktNFBh8A+QpNzJ
         3AJzcRh+qgLDhz7MnlJAQp3/mg+DKH7VGyoSq9179jN/w+ivDndmoSlKKIUX5Tto5mgc
         sWAykAYAp9Ake5xs7E7DQeXt6jRYdGeCBldCpedJJnC7RQ+hwTnGWqhKKnVvjhtmPGzN
         9yh6B6PQ6Qv6A393OWz05Jlf/Z0FfFjF5y60Y0xa2hHbJMWLHJCKirREPS8wLgO5GQpC
         LMFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=L693GMKqttdmGMSdEVQGwopRQGEvruxVul0UfXYmgbw=;
        b=ZNh+EMhhGpoWHIQ8b4Bsm3NBi2YbcEksvQtc10P25xwAuWuFmMCY51GC4nZ1jn+QXi
         qNSKfzjzbm8zUIJFkqnZUIqg8hVO7OLy4o5KtAoiCZQasZ+T3BtsvNOwUbSQuLjQ+wWZ
         K4OqFG0SNsEziy94KqUibEOvjr8pZMEyjIYoi58vpZ+xmfKYDHccwHIDKg3R3Y18ITYH
         2P8/+xhDhNElSFJuMvk7FbjnTqc0vmd5wxtGC638vRzkulHo+LAAk+1zaozcGGeUOKH9
         RZkJ0MUybb6kYw0RnEjjs5Lo8P9T7G5HWPQKOMZqT0AfL4Q9SOzVww3kPUUShMDwxTZz
         z8hQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ3TtptDw1VeWke/p6PyjiuKeu3SYdC8WJysWfjEtfH4zEvHmaUA
	o70Q3BCkuop6aUaG0MiIj/8=
X-Google-Smtp-Source: ADFU+vvyK37pSdOKxKmboMG30Xs0SK11m1uDUc7TzvUVM+TKJEe/JtuqUgf/udPHce03m4EAMi0FQQ==
X-Received: by 2002:a63:144e:: with SMTP id 14mr2140660pgu.264.1585125427578;
        Wed, 25 Mar 2020 01:37:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:8ac8:: with SMTP id b8ls1087720pfd.2.gmail; Wed, 25 Mar
 2020 01:37:07 -0700 (PDT)
X-Received: by 2002:a62:7c82:: with SMTP id x124mr2359083pfc.280.1585125427157;
        Wed, 25 Mar 2020 01:37:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585125427; cv=none;
        d=google.com; s=arc-20160816;
        b=iyh16GkrY/0/TxaW3+DAyQT3B1w+oYJoXOnYpukiBnGtEt30BspI4dHU7pPW88UR13
         KulKDRNSBtfXo7yxCsoQgbr3zSOV5hf8XvjWm2T5xUpCO1KQU+140FRC7FNBf+gZJUKW
         ARM90YkBJjo8PnGFmwtdy+F1vV3QyQ+BKJmn/CITHW/sbHeWlh+PiBA/IfvtTb9PIjma
         4bc5E5Id76ct/+Y+5mVBRrtFK14+SjnMpb+FpElrBh12bTHJgNxy4CjFkugEcQUHnNoA
         ElFmN8NQLpFcotmzsXGSQMmbLlJ0XjCqs+7B0qq2UOol1o/R+h58Dn0wjsiwX1MRnpIK
         BxkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=j+vG1UzSN+cmn11wCzXbf4rcMUTrByAymyJuG/unRl4=;
        b=jynm0V3NK6CfbG3bZralResqI8FOYDQhXBxpvmSZdVBqI+Z7ugibW5WocZ5biuoZ1O
         bVHmbvWVNvbR+IN5mtXfAizkmqWLeHQReb9H1YFnSytbIML811w+jVXEKN+7lQk8P6f1
         9ORb0RCUAFvRSZiNtewLkbhkDl8whGQwpdKmcaauozyTGabtE5812GiPB0/crqLSwGDx
         wsUXrEZh6JHOFTDeArwxuyhBqoOmDv/e94JtEZLOyPyBp9svHC5WZtVMCHV4yV5w38t2
         IjvlF37hgMouOHVy01VjTn0sZ82hLjbtLUKffz42laz2iIBoOeiKJDTEsIU5fIRSBnr7
         5EBg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fA5u9yV7;
       spf=pass (google.com: domain of amodra@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=amodra@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id ne6si353474pjb.1.2020.03.25.01.37.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Mar 2020 01:37:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of amodra@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Received: by mail-pl1-x641.google.com with SMTP id t16so536803plr.8
        for <clang-built-linux@googlegroups.com>; Wed, 25 Mar 2020 01:37:07 -0700 (PDT)
X-Received: by 2002:a17:902:9a03:: with SMTP id v3mr2140241plp.272.1585125426829;
        Wed, 25 Mar 2020 01:37:06 -0700 (PDT)
Received: from bubble.grove.modra.org ([2406:3400:51d:8cc0:b4e4:c6d8:e68c:70f7])
        by smtp.gmail.com with ESMTPSA id t15sm10267297pgv.61.2020.03.25.01.37.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Mar 2020 01:37:06 -0700 (PDT)
Received: by bubble.grove.modra.org (Postfix, from userid 1000)
	id 70A4780D35; Wed, 25 Mar 2020 19:07:02 +1030 (ACDT)
Date: Wed, 25 Mar 2020 19:07:02 +1030
From: Alan Modra <amodra@gmail.com>
To: Joel Stanley <joel@jms.id.au>
Cc: Fangrui Song <maskray@google.com>, linuxppc-dev@lists.ozlabs.org,
	Michael Ellerman <mpe@ellerman.id.au>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] powerpc/boot: Delete unneeded .globl _zimage_start
Message-ID: <20200325083702.GE4583@bubble.grove.modra.org>
References: <20200325051820.163253-1-maskray@google.com>
 <CACPK8Xf70Yq2szW110G_2f2Q3J6inVqQY4Y-y0tggkVmT7tmfw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CACPK8Xf70Yq2szW110G_2f2Q3J6inVqQY4Y-y0tggkVmT7tmfw@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: amodra@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=fA5u9yV7;       spf=pass
 (google.com: domain of amodra@gmail.com designates 2607:f8b0:4864:20::641 as
 permitted sender) smtp.mailfrom=amodra@gmail.com;       dmarc=pass (p=NONE
 sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Wed, Mar 25, 2020 at 05:22:31AM +0000, Joel Stanley wrote:
> On Wed, 25 Mar 2020 at 05:19, Fangrui Song <maskray@google.com> wrote:
> >
> > .globl sets the symbol binding to STB_GLOBAL while .weak sets the
> > binding to STB_WEAK. They should not be used together. It is accidetal
> > rather then intentional that GNU as let .weak override .globl while
> > clang integrated assembler let the last win.

No, it isn't accidental.  gas deliberately lets .weak override .globl.
Since 1996-07-26, git commit 5ca547dc239

I'm fine with the patch so far as it is true that there is no need for
both .globl and .weak (and it looks silly to have both), but the
explanation isn't true.  The patch is needed because the clang
assembler is incompatible with gas in this detail.

> > Fixes: cd197ffcf10b "[POWERPC] zImage: Cleanup and improve zImage entry point"
> > Fixes: ee9d21b3b358 "powerpc/boot: Ensure _zimage_start is a weak symbol"
> > Link: https://github.com/ClangBuiltLinux/linux/issues/937
> > Signed-off-by: Fangrui Song <maskray@google.com>
> > Cc: Joel Stanley <joel@jms.id.au>
> > Cc: Michael Ellerman <mpe@ellerman.id.au>
> > Cc: Nick Desaulniers <ndesaulniers@google.com>
> > Cc: clang-built-linux@googlegroups.com
> > ---
> >  arch/powerpc/boot/crt0.S | 3 ---
> >  1 file changed, 3 deletions(-)
> >
> > diff --git a/arch/powerpc/boot/crt0.S b/arch/powerpc/boot/crt0.S
> > index 92608f34d312..1d83966f5ef6 100644
> > --- a/arch/powerpc/boot/crt0.S
> > +++ b/arch/powerpc/boot/crt0.S
> > @@ -44,9 +44,6 @@ p_end:                .long   _end
> >  p_pstack:      .long   _platform_stack_top
> >  #endif
> >
> > -       .globl  _zimage_start
> > -       /* Clang appears to require the .weak directive to be after the symbol
> > -        * is defined. See https://bugs.llvm.org/show_bug.cgi?id=38921  */
> >         .weak   _zimage_start
> >  _zimage_start:
> 
> Your explanation makes sense to me. I've added Alan to cc for his review.
> 
> Reviewed-by: Joel Stanley <joel@jms.id.au>
> 
> Thanks for the patch.
> 
> Cheers,
> 
> Joel
> 
> >         .globl  _zimage_start_lib
> > --
> > 2.25.1.696.g5e7596f4ac-goog

-- 
Alan Modra
Australia Development Lab, IBM

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200325083702.GE4583%40bubble.grove.modra.org.
