Return-Path: <clang-built-linux+bncBAABB2WSZ2CAMGQENER2GTA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83c.google.com (mail-qt1-x83c.google.com [IPv6:2607:f8b0:4864:20::83c])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E06F3750E5
	for <lists+clang-built-linux@lfdr.de>; Thu,  6 May 2021 10:31:39 +0200 (CEST)
Received: by mail-qt1-x83c.google.com with SMTP id g21-20020ac86f150000b02901c94e794dd7sf3025743qtv.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 06 May 2021 01:31:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620289898; cv=pass;
        d=google.com; s=arc-20160816;
        b=PBWgMnkFzoQFCjeQ/hxy/ZutFxZ+p0V7hl66VwGpwtI7q+AzmlOPas8CbiY491dr0l
         IElv90OjT463/A8aiR264ExuKCja7kYgOIFR1x4zXKGH0uMpSWDQWcc0LgWpm+r4ngIh
         X9TIr6dGJmDOiB7AKyL7XyGT2wS3vGf7xeRL75Jr8aeTDBqbm2upxHwVPfTT7XT11iOr
         Ae0u4Lan5N++YzEk/lGLPOgmk5NKh63x45Fe3VfbhBjINQ7/Ac6jaXrIXfyNITYKaqhk
         I3LAN6OmJ6kyd/3i91RaZ7vP2wLI1Am9xi5gFC71I9SQCSvhqLlsC8vIYSQaC9g5iwUG
         peVQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=rJJXqDaVY2SNxOOXp+y7TKlf8RdbN1d+/3cryHI17u4=;
        b=yMvntdH2lVUOCGPT/Wtda9rQPP8byyYDh4+VuMoyctFCanDhkjKjlg65bDn3jpjg+Y
         NhEfKi2RG70TEk3TqXM2T2PXSlyerTj9nqJ3NVOAHjQzKSWj57h/F9lhJir3o49apKrO
         7nZa0Ako8g6zugrXVXysGE3xUyv7p8tlTZP05TzGFDrTMtbCKyi9oTJnahwRwUAMoZ69
         6VaHpsTu+giWRwBSGOF12hTWY8sg7WpctKTWGIQ4fZuC2wsq6YbUSwF4eJarYNn5FiFc
         nQJ3gpqGmero+ZtUsZ63SAr0vTtwFwXGXoUCa99yiNCXjJb3Huc+Vo7KJls9JccU3waJ
         KpSQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=YQcghHsU;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rJJXqDaVY2SNxOOXp+y7TKlf8RdbN1d+/3cryHI17u4=;
        b=OiIYQaG0/OMCoW0QyVtaykDX5eiSJXS49dEFFuRBB4ol9JLpHMtKW6+GPfHwOG6m3A
         AcSL3+lVbaEhkMO85E+R33dN3J0ohWzjliGGRPj9OQO9aTikqDtJY55XdjKYvlDU9iW1
         IGfI+1CcZH6Qv3vSA3bt1FCfiX9ywNGfzJqB7z70YmxY1m2PFovo+q525c8cRz6hRJkJ
         c65g6hYF8GiTSI3tbCmZSUsBw0kSvvr6WadfseY6ZZ00oeQcWXqV8TVUk7oURxY3u9sH
         oJSRA3MVA2zFQif6XuvFWkMcm1f/hKz1FJP1vKnDT3ZedmsjwThMXOyi6DOk8tN6FIcr
         hVQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rJJXqDaVY2SNxOOXp+y7TKlf8RdbN1d+/3cryHI17u4=;
        b=ZIPHFlj3qsiHHHjlUoEBljwpm9AjrpGePfBAUmYrvN1Trrrro4Na1aX1P1xdijHtvK
         hUXTQniPNUfi/slcRB7vXNt9/tpbn3iX7ZL8ya46sRyHCg4Zd1W7YPlIZefNoyH035X6
         tPDp6XZm+8iAonBwH3v3aeZkVGANiYi4gaovMk9llL58RV+kidrzzm4OupSmhSSfN/E0
         ohfP4d4MQtx6ouCqNuRyPFjajA+w0tZwXOmUfoCBlBO/zcc3TYHY6d7gOnVBe6CCFnke
         ToG9xByqXwkXh+Aa2LtucZe/xnsmtbpAJt3Xw5PQqx/TNJIw0x+t+PCHVqc+pKeBemoJ
         mTYQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531dQJZtRWmXh43ibVbPrj3EljB44IQokRExRN27IwoTFFGWlmGC
	bEc56VPsIfa4YFd6ULcGZOs=
X-Google-Smtp-Source: ABdhPJzIv3oXnRlxNAt4936//HPIG/u1FEUvfwUIca9w3c6AeXr4FCBo985zBksdENnMwn0E3OgFKw==
X-Received: by 2002:ac8:6909:: with SMTP id e9mr3082657qtr.338.1620289898197;
        Thu, 06 May 2021 01:31:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ae9:d8c2:: with SMTP id u185ls993202qkf.5.gmail; Thu, 06 May
 2021 01:31:37 -0700 (PDT)
X-Received: by 2002:a05:620a:74b:: with SMTP id i11mr2845871qki.445.1620289897802;
        Thu, 06 May 2021 01:31:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620289897; cv=none;
        d=google.com; s=arc-20160816;
        b=CZs8DKZ6W7R8M5fG/TYUBeKqchQlC5XU91Ym+QCCX6WrA+WSKN8vyXEwlL+iurESF9
         LjPiCLV8adjmaxT/cFb/8R89R+uGQoFAhRGUhmVnaFBUwi//8a5025iKOjkCYDGUAYYy
         rnq93sB3aoNuSFw6T+7NuSV3EMPhT62QzciXb/f3L8dLGKgOZlK4h5RfFWFhSOTXHyc5
         XmWuFFm1976MZpydIhmmbGNikfmRgApgjB7DYaQfsJWb6rgKhnte4jwSck5Ac5swssGy
         k7gcowAIJasnBR0sM/kNW7DnDK9JjWIAesaEe2WDSsFXRQkxyLsaRCwrduLZYNxy4aHM
         owRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=a61aOj51B23+0xUJAw0uzUwQcL1dqzZR1sDHcYTGQ2E=;
        b=SysjjmzOgip7dQygVx2kkYaTgscdT99YhxiihREEoHiRAAAx/LXYoKi3BggjxRCW07
         SjQ5VTuxlw2oClY1MbFEk+dH8uV3n9Fl3WetovxQYYm1RlJ4wA+pqoMv8Ar+HXg9s/+A
         8eYE55wlUfnnUB32jjoIwh4ab8FBPNK0wcBClrMQzB2uEt1l1A+wHso7u6FSieiVGStD
         4qgh9WjICs6eKm9n2wY622ycs9+V1FtJjjix68EycFy9vVAokEldgOgbKoRTaG/H28zh
         soUapp8rzxwDPqIS4lq6DwwZOlvahdeenBx0MaQlD32BGbEgkLC+xvg6TGRr3F+ppvMx
         VNPg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=YQcghHsU;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id c26si238144qtq.1.2021.05.06.01.31.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 06 May 2021 01:31:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 9D12F613B4
	for <clang-built-linux@googlegroups.com>; Thu,  6 May 2021 08:31:35 +0000 (UTC)
Received: by mail-wr1-f52.google.com with SMTP id v12so4638460wrq.6
        for <clang-built-linux@googlegroups.com>; Thu, 06 May 2021 01:31:35 -0700 (PDT)
X-Received: by 2002:adf:d223:: with SMTP id k3mr3557467wrh.99.1620289894075;
 Thu, 06 May 2021 01:31:34 -0700 (PDT)
MIME-Version: 1.0
References: <20210505211300.3174456-1-arnd@kernel.org> <87czu4slom.fsf@yhuang6-desk1.ccr.corp.intel.com>
 <CAK8P3a1SBDXqHE5FgG_WfzrcbeT6V6kg5T+xTGU8Cp_vLLdMqA@mail.gmail.com> <877dkcs2h8.fsf@yhuang6-desk1.ccr.corp.intel.com>
In-Reply-To: <877dkcs2h8.fsf@yhuang6-desk1.ccr.corp.intel.com>
From: Arnd Bergmann <arnd@kernel.org>
Date: Thu, 6 May 2021 10:30:49 +0200
X-Gmail-Original-Message-ID: <CAK8P3a3kZ9_VoKV+2eZh=WqncRqFKzRmRHUjAT9iFMtJpKzb1w@mail.gmail.com>
Message-ID: <CAK8P3a3kZ9_VoKV+2eZh=WqncRqFKzRmRHUjAT9iFMtJpKzb1w@mail.gmail.com>
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
 header.i=@kernel.org header.s=k20201202 header.b=YQcghHsU;       spf=pass
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

On Thu, May 6, 2021 at 10:14 AM Huang, Ying <ying.huang@intel.com> wrote:
>
> Arnd Bergmann <arnd@kernel.org> writes:
>
> > On Thu, May 6, 2021 at 3:20 AM Huang, Ying <ying.huang@intel.com> wrote:
> >>
> >> Arnd Bergmann <arnd@kernel.org> writes:
> >>
> >> > From: Arnd Bergmann <arnd@arndb.de>
> >> >
> >> > As of commit 966a967116e6 ("smp: Avoid using two cache lines for struct
> >> > call_single_data"), the smp code prefers 32-byte aligned call_single_data
> >> > objects for performance reasons, but the block layer includes an instance
> >> > of this structure in the main 'struct request' that is more senstive
> >> > to size than to performance here, see 4ccafe032005 ("block: unalign
> >> > call_single_data in struct request").
> >> >
> >> > The result is a violation of the calling conventions that clang correctly
> >> > points out:
> >> >
> >> > block/blk-mq.c:630:39: warning: passing 8-byte aligned argument to 32-byte aligned parameter 2 of 'smp_call_function_single_async' may result in an unaligned pointer access [-Walign-mismatch]
> >> >                 smp_call_function_single_async(cpu, &rq->csd);
> >>
> >> Can this be silenced by
> >>
> >>                 smp_call_function_single_async(cpu, (call_single_data_t *)&rq->csd);
> >
> > Probably, but casting from smaller alignment to larger alignment is undefined
> > behavior
>
> We cannot avoid type cast in Linux kernel, such as container_of(), is
> there some difference here?

container_of() does not cause any alignment problems. Assuming the outer
structure is aligned correctly, then the inner structure also is.

> > and I'd rather not go there in case this triggers some runtime
> > misbehavior or ubsan check in the future. Making the function accept a
> > pointer with the smaller alignment avoids getting into undefined behavior
> > and doesn't require a cast.
>
> In its raw form as above, this looks bad.  If we encapsulate it, it may
> look better, for example,
>
> static inline int __smp_call_function_single_async(int cpu, struct __call_single_data *csd)
> {
>         smp_call_function_single_async(cpu, (call_single_data_t *)csd);
> }
>
> Then, we can do
>
>         __smp_call_function_single_async(cpu, &rq->csd);

Same problem, it's still calling a function that expects stricter alignment.
It would work if we do it the other way around though:

static inline int smp_call_function_single_async(int cpu,
call_single_data_t *csd)
{
        return __smp_call_function_single_async(cpu, csd);
}

That should even work without the cast.

        Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a3kZ9_VoKV%2B2eZh%3DWqncRqFKzRmRHUjAT9iFMtJpKzb1w%40mail.gmail.com.
