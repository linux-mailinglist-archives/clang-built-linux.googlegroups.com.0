Return-Path: <clang-built-linux+bncBAABB7OBZ2CAMGQEBACXASI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103f.google.com (mail-pj1-x103f.google.com [IPv6:2607:f8b0:4864:20::103f])
	by mail.lfdr.de (Postfix) with ESMTPS id 58C9637506C
	for <lists+clang-built-linux@lfdr.de>; Thu,  6 May 2021 09:55:43 +0200 (CEST)
Received: by mail-pj1-x103f.google.com with SMTP id j91-20020a17090a1464b0290155d0a238desf2543889pja.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 06 May 2021 00:55:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620287742; cv=pass;
        d=google.com; s=arc-20160816;
        b=JVNbQPyl0cZuUJgqndXGcq7EJcfPY/9vyhkoHQ6EYqgZdliIf/hFp6mJTElLvt5WeD
         4CMn0/TP+fgufa5V1JvyITPrMVcQGuxTCZ2/ntM8Pq2SZLA7h6bOIqgpvyt+PCNAUMZ/
         9COMNtwprL3cfhAvTd5eTnwM2UT0z6CYqfNa91EbArC0hr8NN2AA4dCdwBR45iQyTCBf
         cPu6egYNl87UDOznkY6q+JQEwWQf0WDT6dK51P4khDRDD/mjceaOEDMxXGYTmtIWe28N
         fd4WEi1btq3Jvr1HqKFhHkXUYvkPu2RZjoFpwN/qit43/xIs+TMXZMzKMvl3vua42eum
         VWSQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=odf25n2BB6Qb8M8ok911vut74Ezd1PxAEkxkoF+VouE=;
        b=Ykj/z9fDuLS73XXi9OFWcMVcgJYR4TUD6v0rfOUan4x2Bop9FANa7iQaPgS63uGLrx
         jom7QyU8LADm3/wZ+LTYSfJ5qKi9dzk5tUYuOH1cjjFwBWw3a7eCspkBERf6G/0+Rr+3
         3hONCFCAZ7PJC/Cta+Zt+mztNwmysWuhQ/uyUzUxR+OFuBkli6QIeMLr/skXdXS6jFj5
         3lK8DIX7o2bIIVScjbsn0TGS038NHyjg0K8mS9kx7nhsu/6M1i06VnOAO6t7TYw4/G51
         B5T67+A7cmqJY6xcTpv+8BY2RCn8N1ga6rjp3fzGzgwhvOVPuTarW1EmsD5X2izN5LQG
         VoIA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=LxmTrYLO;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=odf25n2BB6Qb8M8ok911vut74Ezd1PxAEkxkoF+VouE=;
        b=HgRmZfqKHMcfPV/Lt/eKQwZtHrCm+vVZVPTwfpepviSK6wHlaLOtjgEQ+eOT7v1ZyC
         eIiM7iupzMEVol1SeWcJI0xM2uCAtFSY8aNUnGbaAr4ZKg44lC5CvbDJf5/OQr5HHaiN
         rc+K61qnIWpSMK6wYvMCm4FpZmigNgKSm4SQNIHE/3Xcc5QdlgPZhUvBDZh/WKVVwDow
         IxLiMUfun8epi+Zxn69wYRkyqoV3d/F6oH9AGncDVFBpWxMi/Xuw+x7xkOGc5KF3WaUu
         X3GPmPWnwZRc2TpfJioJLPGZd5rGBAQQwJkkoDGtIPvUd8KJsmVonMQoqpcBjVGXqgQk
         MRWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=odf25n2BB6Qb8M8ok911vut74Ezd1PxAEkxkoF+VouE=;
        b=Twu4Y/otG/WMSazjSdbpMqXA25CJjf6u3va/NdqAChXDkqFe9hZpeYzDmwaVZxMPdC
         fN6w5oF87Q9GG0DDIZeNnYRKFY8cAD1ZOBvK/D1Xr98uRJ1N7bVaPIRebSdunoWWH+E/
         FFDPafPvGHU9ackydcIXCv/aTBE5OSjG3Cgt86K/07gLXPm3nzIjmVdoahLHTQJTL1Db
         O8okY8EoXaCPrjgnRNZIOhdzL+Tq8eAkd27rTrWNlYrMtfFuPj92nkZxpxwwhKZzgasv
         kE/c+89D/Zbz4f99onFQOS3n7i2OYHDcPVi6jqIh2iWTCBW+cLhJP5eXZKRP/T6xrN1L
         lqzg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531C+ZZyqNOfsQGql1fQKW1wddP0vza2AcgTOwBmDQw66no4YdLd
	LQP9Y4F5fl7yp9fm1WLdjko=
X-Google-Smtp-Source: ABdhPJyPo/rEQNWob/KVFIMzoTR4ALvG8bbpRYCz2uOs4WcfgsQv2R7GoRjUqOw5jd3P5rta7pTi+g==
X-Received: by 2002:a17:90b:4a81:: with SMTP id lp1mr3255278pjb.226.1620287741968;
        Thu, 06 May 2021 00:55:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:d4d1:: with SMTP id o17ls1106281plg.7.gmail; Thu, 06
 May 2021 00:55:41 -0700 (PDT)
X-Received: by 2002:a17:902:b210:b029:eb:535f:852 with SMTP id t16-20020a170902b210b02900eb535f0852mr3370468plr.80.1620287741473;
        Thu, 06 May 2021 00:55:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620287741; cv=none;
        d=google.com; s=arc-20160816;
        b=FsFn5xp7U0v+g0DpanY8CKvF4yKePvGZ7tMhruj7IKiP196mzHkdfJ69xS0+cZKJfy
         FLse7nUEez2mnAEm4xwHDkMA/r1SmJV5GHIBcMWmgW8oyY0AV6LRpmKURncq0y19aK3V
         2YADA6px2fR82KXg9fvd8n+Bp55Ly78vj77/EsY1Kc9TkCyHsDnHA8sdjvGZMex09oeo
         zmh8On2RKiyrR6DdrPcpWiyU4aoxeyMgL2MzYHg1AJSI3W2vvKy0l6Kpo7Smx0tcfo/s
         NpMXR39BsIeqG+1ggUw6pou8aw940etvoaBFzs3VXnk70K8pkpdQzd7463gs9jcysFdL
         Cp5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Q49ql5I/OzEobVK5uSzqd8f2lhrradP87q2+2p7Kf1M=;
        b=SNiK5lmr6BiELBjqJ4HrdGz53ocSL8fPunrru2fthvJ9ST3hw6nbmHxGTL5yzruAp2
         wUFxezE0JFuRTerrdv8deKuftdicSri51CAJ3u/0VV9Ar6zLCBmhzqL+0UTb+F/JdmjD
         BMOK+CtCAxc7hRYwjuXpvPNjfrO9QZpVTjMx1ziIWuCptO8OXbiiYy4deU9P4sQPSdqB
         5Bb2fp6LIjFyvWFiaUy+0+qFEm9Raa9XPwBUsgNra9+eo0a1bXe95iwh6dmQAKVwcgz+
         mOes0LIWKXfyoqXSEcfzTPnVuJEtJnUmK1dQB9OXJCsBBAuDhD6bUHaSvM6dxy/DL7lP
         e/RA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=LxmTrYLO;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id e20si144211pjp.0.2021.05.06.00.55.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 06 May 2021 00:55:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 0807F613BF
	for <clang-built-linux@googlegroups.com>; Thu,  6 May 2021 07:55:41 +0000 (UTC)
Received: by mail-wm1-f48.google.com with SMTP id t11-20020a05600c198bb02901476e13296aso2515607wmq.0
        for <clang-built-linux@googlegroups.com>; Thu, 06 May 2021 00:55:40 -0700 (PDT)
X-Received: by 2002:a7b:c344:: with SMTP id l4mr13612962wmj.120.1620287739444;
 Thu, 06 May 2021 00:55:39 -0700 (PDT)
MIME-Version: 1.0
References: <20210505211300.3174456-1-arnd@kernel.org> <87czu4slom.fsf@yhuang6-desk1.ccr.corp.intel.com>
In-Reply-To: <87czu4slom.fsf@yhuang6-desk1.ccr.corp.intel.com>
From: Arnd Bergmann <arnd@kernel.org>
Date: Thu, 6 May 2021 09:54:55 +0200
X-Gmail-Original-Message-ID: <CAK8P3a1SBDXqHE5FgG_WfzrcbeT6V6kg5T+xTGU8Cp_vLLdMqA@mail.gmail.com>
Message-ID: <CAK8P3a1SBDXqHE5FgG_WfzrcbeT6V6kg5T+xTGU8Cp_vLLdMqA@mail.gmail.com>
Subject: Re: [PATCH] [v2] smp: fix smp_call_function_single_async prototype
To: "Huang, Ying" <ying.huang@intel.com>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Jens Axboe <axboe@kernel.dk>, 
	Jian Cai <jiancai@google.com>, Guenter Roeck <linux@roeck-us.net>, 
	Peter Zijlstra <peterz@infradead.org>, Borislav Petkov <bp@suse.de>, Eric Dumazet <eric.dumazet@gmail.com>, 
	Juergen Gross <jgross@suse.com>, Michael Ellerman <mpe@ellerman.id.au>, 
	Thomas Gleixner <tglx@linutronix.de>, Nathan Chancellor <nathan@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Ingo Molnar <mingo@kernel.org>, 
	Frederic Weisbecker <frederic@kernel.org>, He Ying <heying24@huawei.com>, 
	Andrew Morton <akpm@linux-foundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=LxmTrYLO;       spf=pass
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

On Thu, May 6, 2021 at 3:20 AM Huang, Ying <ying.huang@intel.com> wrote:
>
> Arnd Bergmann <arnd@kernel.org> writes:
>
> > From: Arnd Bergmann <arnd@arndb.de>
> >
> > As of commit 966a967116e6 ("smp: Avoid using two cache lines for struct
> > call_single_data"), the smp code prefers 32-byte aligned call_single_data
> > objects for performance reasons, but the block layer includes an instance
> > of this structure in the main 'struct request' that is more senstive
> > to size than to performance here, see 4ccafe032005 ("block: unalign
> > call_single_data in struct request").
> >
> > The result is a violation of the calling conventions that clang correctly
> > points out:
> >
> > block/blk-mq.c:630:39: warning: passing 8-byte aligned argument to 32-byte aligned parameter 2 of 'smp_call_function_single_async' may result in an unaligned pointer access [-Walign-mismatch]
> >                 smp_call_function_single_async(cpu, &rq->csd);
>
> Can this be silenced by
>
>                 smp_call_function_single_async(cpu, (call_single_data_t *)&rq->csd);

Probably, but casting from smaller alignment to larger alignment is undefined
behavior and I'd rather not go there in case this triggers some runtime
misbehavior or ubsan check in the future. Making the function accept a
pointer with the smaller alignment avoids getting into undefined behavior
and doesn't require a cast.

       Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a1SBDXqHE5FgG_WfzrcbeT6V6kg5T%2BxTGU8Cp_vLLdMqA%40mail.gmail.com.
