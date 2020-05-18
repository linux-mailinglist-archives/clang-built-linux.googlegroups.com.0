Return-Path: <clang-built-linux+bncBC7OBJGL2MHBBKUGRL3AKGQE7AOPXGA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x837.google.com (mail-qt1-x837.google.com [IPv6:2607:f8b0:4864:20::837])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A85C1D78DB
	for <lists+clang-built-linux@lfdr.de>; Mon, 18 May 2020 14:44:27 +0200 (CEST)
Received: by mail-qt1-x837.google.com with SMTP id t57sf11357121qte.7
        for <lists+clang-built-linux@lfdr.de>; Mon, 18 May 2020 05:44:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589805866; cv=pass;
        d=google.com; s=arc-20160816;
        b=0BZlCjVtIW7va9Qq3SYYQcUZvA+r9VxCLGzxvt8A64ZSGMicvsCgal0INWkHRuIn+Q
         jmlma4DlwW8S0roB91y6pKQoLhUi0vCrzNPMu8PaVDYB+iXMh6fpCicxWqN5B0byodXM
         Aa+2ttYeVz1kCPwcLzVmyc6LDHzqw1LeQZJsT8ttLdDxNd26hGkDwg2Wi7p97O0nb3Eq
         +pRfVBbog3c/YSzkN/CU6jgDyvF/9YVihC0SsRhE8iUxDiIYNODoaYPBuAPhcz12ytKA
         6fSB2q7dh5BS5b/KPsruxMqjhG9Vb+rcfjh8nBog/X2JR19xt+6ciAaJwiqt98X3TGho
         IfHA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=mO/3wlkirzlo/IsC0wh19QxO27TEG44vnS5a101uGGE=;
        b=m0Y6fCdu+a8OBHgUtb8kyoAR9DWy53jQAAkjmHr5d8lbrbKEa7bLneJXOM0PcmBReG
         aDQBoa0pmfKzr/GwsGfq13hWrG8Zmytu0J3n+WSZleDsrFHHUU2hN5yb9IOPPQPnqo6/
         qhEzI+rZkC8SLmpXZI6ZNjzKFtjyLWCfwTBzNLKY9RT3rP3KKTbVEaHiR0bX3GkSsNiq
         bU7/SwgW9ZFSutSAd9B62f2XjNkaNxujw3yrcDswwxsfYFi6L9VKr+myzfKTh91k85ND
         BOJP74yBfi4eh++0LflXXTotIqxksuhO4lBY0y4pCYQEAmOodEL3RSAbqvzthOJ11p4M
         xafA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="CE/lKTEp";
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mO/3wlkirzlo/IsC0wh19QxO27TEG44vnS5a101uGGE=;
        b=jR23d3X68ItL9tPunrUakONZ9OJZK6MDjSeYMOnoIFu9oowUCQfDrtnkImo1jx2Z5p
         pxyCxuEIbWv15oLFOy/sUTc6LTI96Fu7Jf/zz+yc9t9re0GlhHPso6+KXhAycPLDg1Yw
         l2zSqD8VTUpMFy21NVW8nT0rdmCQdy8CvRhhOxTX/SIT9JWxeyxOYchgvbg0JfDUnSHK
         m8RXjTFWoLbiId6UHgRg0bcJvvsskYvpJJVSACOEGYoRsvKfhlKGrhzHhCenvR/VlL7G
         aXEBZVjhFxIn3qkh4VLA9bfravrJKpagpF0SS6zPufLJXJ8v3ljaiqGMYEu5iwzqXybE
         w4AQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mO/3wlkirzlo/IsC0wh19QxO27TEG44vnS5a101uGGE=;
        b=B6lz7OU1PVF7YBusOQ08nYBJVVfxCxSbglE0oPfrYs5s7ZNNRNhQXVGJgDy+Pr5Frl
         t7MSdZW0+L2lD/rKFN7fx1dewF8fHA4rN0GpjkKEOa3NPfDCM+I2wHipuvotNqXcGRM6
         3B9OvIdn7vpFlC0H1sRQbBrx8u4mDz1QyJieWn80gOYPaox+6GmXSD9ximrefq+/vclE
         D+GBj744WCULmTkn+A+/NkIKfpxXXi9+bwUYHL5bHvW1tfmJglImTwwH+U5IncsbMY7o
         ehoDFX/AvdysGTPvxT1gqsfl2+c/uqedazbOraRDwg7CcvEFc+eTrFNBx4vFG/3ajvZ6
         qBLQ==
X-Gm-Message-State: AOAM530bgRSjRz2nV9ZRg+r/SbMPDJXe87aUqBlpbknD6BgBphadsZcP
	qmS8isn3ufPETF5vFqIugZA=
X-Google-Smtp-Source: ABdhPJzAoQzTwMFQ1PNJppr7ShteDUvYs6UTPHQf+SKsNTRY/NghYCiQMsS+jzgqjo65KxkmnsTDUg==
X-Received: by 2002:a37:8d6:: with SMTP id 205mr16577357qki.144.1589805866125;
        Mon, 18 May 2020 05:44:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:7542:: with SMTP id b2ls3866391qtr.1.gmail; Mon, 18 May
 2020 05:44:25 -0700 (PDT)
X-Received: by 2002:aed:2fc4:: with SMTP id m62mr4776308qtd.357.1589805865754;
        Mon, 18 May 2020 05:44:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589805865; cv=none;
        d=google.com; s=arc-20160816;
        b=OOgDB4lhiATLjhqkkZQSAC3pYdT64yNxDocOgHrtHJsTSU/zeKcrqspldT1WTb90cE
         sUpQzWM9/0/018ya9qLVPVpJ2E3TdR4JarmnBPtgKkPZAvA46ziUES2z5oWyqo0r7wp/
         /NnqmYPTxZ4JO3YBgr0lHaRqogkN6IO3+j2iEHbKTqFO5gvmRNDaZ3+gmeSXURgjJo4M
         /HzyVkhbDvBhbGo14laIS/AY/X5lSjSVZ/tx9dJsY69YWWN9FbRBRuO/0tr1X0a13At6
         7XW8aOy7wSGBsufn4MvxH8GOLEx9DHjGF/ouWbjnMgSJ1Sn9xmZp0IsXz/3CKS4f/yfH
         dZGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=mTr78JEsRcOgBqxtDKga7we0yjXSTYq9V0GCD/PQUyg=;
        b=UeUxrRfebjI5gN4/+qxiT8rH2HcdaIrUFxj+HxjSwEWr8rYbt3x83FFA7OBIDzpM9D
         evx0DlLJESjfbufihYzeCn14qWAMd00wnznFpWiEwRONuBtW9p/SPj+1QehzhL/mt/oO
         v9Uxv7AbQwi9ilPrqrUoY2oi3HywIz4SuqDQhYapror9ip8+zVa2ZM9kP/8vaC/K/D1M
         0FI4V/idUxIWuh7FvdGreIZCIn/0X3m2VrDhi2C5+3EjwTbazePH/kCCvW06NKYUsWzU
         gq6DY9w/CHEWdLsZbijPisWvGQVpcEeI9AQJQodaMJkpNc67bLN+NzsVrUFvlFtB+GAE
         B4vA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="CE/lKTEp";
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ot1-x342.google.com (mail-ot1-x342.google.com. [2607:f8b0:4864:20::342])
        by gmr-mx.google.com with ESMTPS id m128si623128qke.3.2020.05.18.05.44.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 May 2020 05:44:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::342 as permitted sender) client-ip=2607:f8b0:4864:20::342;
Received: by mail-ot1-x342.google.com with SMTP id 69so3311238otv.2
        for <clang-built-linux@googlegroups.com>; Mon, 18 May 2020 05:44:25 -0700 (PDT)
X-Received: by 2002:a9d:7608:: with SMTP id k8mr12982752otl.233.1589805865139;
 Mon, 18 May 2020 05:44:25 -0700 (PDT)
MIME-Version: 1.0
References: <20200517011732.GE24705@shao2-debian> <20200517034739.GO2869@paulmck-ThinkPad-P72>
 <CANpmjNNj37=mgrZpzX7joAwnYk-GsuiE8oOm13r48FYAK0gSQw@mail.gmail.com>
In-Reply-To: <CANpmjNNj37=mgrZpzX7joAwnYk-GsuiE8oOm13r48FYAK0gSQw@mail.gmail.com>
From: "'Marco Elver' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 18 May 2020 14:44:13 +0200
Message-ID: <CANpmjNMx0+=Cac=WvHuzKb2zJvgNVvVxjo_W1wYWztywxDKeCQ@mail.gmail.com>
Subject: Re: [rcu] 2f08469563: BUG:kernel_reboot-without-warning_in_boot_stage
To: "Paul E. McKenney" <paulmck@kernel.org>, kan.liang@linux.intel.com, 
	Peter Zijlstra <peterz@infradead.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Nick Desaulniers <ndesaulniers@google.com>
Cc: kernel test robot <rong.a.chen@intel.com>, LKML <linux-kernel@vger.kernel.org>, 
	LKP <lkp@lists.01.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: elver@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="CE/lKTEp";       spf=pass
 (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::342 as
 permitted sender) smtp.mailfrom=elver@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Marco Elver <elver@google.com>
Reply-To: Marco Elver <elver@google.com>
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

[+Cc clang-built-linux FYI]

On Mon, 18 May 2020 at 12:11, Marco Elver <elver@google.com> wrote:
>
> On Sun, 17 May 2020 at 05:47, Paul E. McKenney <paulmck@kernel.org> wrote:
> >
> > On Sun, May 17, 2020 at 09:17:32AM +0800, kernel test robot wrote:
> > > Greeting,
> > >
> > > FYI, we noticed the following commit (built with clang-11):
> > >
> > > commit: 2f08469563550d15cb08a60898d3549720600eee ("rcu: Mark rcu_state.ncpus to detect concurrent writes")
> > > https://git.kernel.org/cgit/linux/kernel/git/paulmck/linux-rcu.git dev.2020.05.14c
> > >
> > > in testcase: boot
> > >
> > > on test machine: qemu-system-x86_64 -enable-kvm -cpu SandyBridge -smp 2 -m 8G
> > >
> > > caused below changes (please refer to attached dmesg/kmsg for entire log/backtrace):
> > >
> > >
> > >
> > >
> > > If you fix the issue, kindly add following tag
> > > Reported-by: kernel test robot <rong.a.chen@intel.com>
> > >
> > >
> > > [    0.054943] BRK [0x05204000, 0x05204fff] PGTABLE
> > > [    0.061181] BRK [0x05205000, 0x05205fff] PGTABLE
> > > [    0.062403] BRK [0x05206000, 0x05206fff] PGTABLE
> > > [    0.065200] RAMDISK: [mem 0x7a247000-0x7fffffff]
> > > [    0.067344] ACPI: Early table checksum verification disabled
> > > BUG: kernel reboot-without-warning in boot stage
> >
> > I am having some difficulty believing that this commit is at fault given
> > that the .config does not list CONFIG_KCSAN=y, but CCing Marco Elver
> > for his thoughts.  Especially given that I have never built with clang-11.
> >
> > But this does invoke ASSERT_EXCLUSIVE_WRITER() in early boot from
> > rcu_init().  Might clang-11 have objections to early use of this macro?
>
> The macro is a noop without KCSAN. I think the bisection went wrong.
>
> I am able to reproduce a reboot-without-warning when building with
> Clang 11 and the provided config. I did a bisect, starting with v5.6
> (good), and found this:
> - Since v5.6, first bad commit is
> 20e2aa812620439d010a3f78ba4e05bc0b3e2861 (Merge tag
> 'perf-urgent-2020-04-12' of
> git://git.kernel.org/pub/scm/linux/kernel//git/tip/tip)
> - The actual commit that introduced the problem is
> 2b3b76b5ec67568da4bb475d3ce8a92ef494b5de (perf/x86/intel/uncore: Add
> Ice Lake server uncore support) -- reverting it fixes the problem.
>
> Thanks,
> -- Marco

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANpmjNMx0%2B%3DCac%3DWvHuzKb2zJvgNVvVxjo_W1wYWztywxDKeCQ%40mail.gmail.com.
