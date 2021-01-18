Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBCF2SOAAMGQEPXJB4MY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103a.google.com (mail-pj1-x103a.google.com [IPv6:2607:f8b0:4864:20::103a])
	by mail.lfdr.de (Postfix) with ESMTPS id 11C5A2F96F1
	for <lists+clang-built-linux@lfdr.de>; Mon, 18 Jan 2021 01:57:46 +0100 (CET)
Received: by mail-pj1-x103a.google.com with SMTP id u10sf7467516pjx.3
        for <lists+clang-built-linux@lfdr.de>; Sun, 17 Jan 2021 16:57:46 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610931464; cv=pass;
        d=google.com; s=arc-20160816;
        b=w41x3kAf7V8DbefyK/knt3I8jhwEusEjFxq63lTN7BQCYvuEp0cOj+V0NfrNwrDcFM
         54xKJt6DcQaH4GVEViPNOfGE4oP08mUS95Gsqv9CNw45JC6qIBpkYOEePSM4Cm7/hyu4
         948TSTxDgKi1rHsE3Nf0Sj7Ko7SCJW8D+mquDOzGcLjicnDjkwXXwemoVnfLleANw5Um
         vVJEywvmxz6wZnYLltYBkwyYMBwY1LPLhaiBrVISkp1d0MZBkk85RvnyIQ8gXYx9n1Ex
         KzrBReDti0h9SvSRbZMa2uBlZK76zLXdax5kZFZ2DPNoVKKr95FqrU2tZcEnJ60dCE3c
         8dSQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=9aKGrp1TVDeeQRkCf7uCi2Q7H26sG497ef6ndb1Tn64=;
        b=fRM6AM7fGU3CsKU+cOXippa93uCKYIrrhSNS8h08g3nCHcJ6ne54uQupGt4luEWuwD
         rnt3y/Q7Dkg9ZV+xOzCPY//i0m42oNSjkWz1CJSjaX6WBiV8CwB5oE5sQEKMOQ+bw709
         gK31Obg0iDIX7cjTbeHfJfi4C/Q9sENsMTlJqV4fQFLpfEv/Z3H7CJJBnFwlN21eoQBU
         Ndt9hEvmOicH2nph0lNzcVT5Pl79otxUdFGn0xV81WNQdcmk3QwgB4HPgYpY+bTsqPfK
         wOfbeyRCmH/04Rm1ViGIWAp05OEiinVQKqtSVNWaqi0QIFMpgV89N5daNg/Db4f/hEGo
         ou/g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VJm48GYz;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d31 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9aKGrp1TVDeeQRkCf7uCi2Q7H26sG497ef6ndb1Tn64=;
        b=ikMdJ0PXFN7eaMwqvkdp1e18u9TwtUGG4vSZt99i3UnadHgkkgQCDmp9/dg7EfYhEk
         +FYTQYMKvISvPaHGAX0LMlE8Xx3mtVuaBql76laJQZpcW73/3FWpO0jLPc/YtFTQkyL1
         /C4a/9cucZiY/JKzVRixY/e86OuRw+JenS76nY3EcvE640k71qtKf5WR6HoagiHsz7cz
         Y5hlp9F1pLB9d1ZKMbdo2rGtWEFf3sR/EzJaKO7669bUKtpomhRBSHqIBvFklgQYPM10
         cwlbo/m4l0XoA/8VaPZqvkKS1+Gz2Jpj2z1m0hJg333JbjSNNdaFZtOzA9/YVb3o/7E3
         aWrg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9aKGrp1TVDeeQRkCf7uCi2Q7H26sG497ef6ndb1Tn64=;
        b=X7tIpAKQBg5kfpjtKQCyEZfNDl9GnEC+B7ulZ8BwVUanXQxDGecW2Cpwtq9BhQGvX7
         +3ep1hQHHAkELBtUl4/+tGmzf1LYKA6MU7so3THd3fUgKrAMXIpW2ZRBXBDvWenJajWD
         jxThLwIQw01yJaCzCDCu4h6dJxWWR20SR9gmVqKAS0WmD3CIiGJbHGRamQGBccQXOUus
         MKKZ1XOMXCFy6arIvJjq9SRz+IF+hJOr2oxqonYAVtlGWlGoWY+rgH00afRypcP4RzEC
         K9RY3DGmhzxciK4WagLBSLmz9Pc+MbGqSteQSVtjrwZqdopovgPYRWs9bpV0XlG3G9F8
         B11A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9aKGrp1TVDeeQRkCf7uCi2Q7H26sG497ef6ndb1Tn64=;
        b=uhUhncmy5ytsq+ZJ7uh2YufXMPhTGDs7VMRF1uYWPPs4XlmCwBE19uLorX+jeqWqmC
         bqFIxoiWhD3CQm4/LuemGcxxj8Vo5b/zyFplPwKrb5dp3xGFCvH5SaVG82LzgR263fHV
         Ld/Ak21TsZQwHb5mfF2wrSLesPgx8w6Qcz50qechKcWh7lzJPVtV/vjTuwbCUcLfHVks
         FnTxl/P17KFKbDBojjr/y0UVjoA4GryuGCCnCq/nDhGwRhTZBZKiOIu7fdUQy02oE+wD
         McZTjXWgvHfPa/ZSfQ0r1CWROqVYjT2duPyoMxY3oFcn05TieXZ1U4kHu4HpG2lWjdz/
         fDGg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5308dlxXOuBKV51bSvOIA9tSkv7VNk1TG2iaANaUip6ONG853MOL
	X3er6g95FflY5gtKuCMYqTU=
X-Google-Smtp-Source: ABdhPJwifG5dy0sL/AE/8rTJiZE3MiISFj7pxRp36vhW8fUV8g11ZT9aolqH49YN0T3+qYJEg75M2w==
X-Received: by 2002:a17:902:8483:b029:dc:3e69:4095 with SMTP id c3-20020a1709028483b02900dc3e694095mr23743352plo.66.1610931464711;
        Sun, 17 Jan 2021 16:57:44 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:a609:: with SMTP id u9ls7180514plq.7.gmail; Sun, 17
 Jan 2021 16:57:44 -0800 (PST)
X-Received: by 2002:a17:90a:7106:: with SMTP id h6mr23898742pjk.22.1610931464038;
        Sun, 17 Jan 2021 16:57:44 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610931464; cv=none;
        d=google.com; s=arc-20160816;
        b=ltMRkYoRMrzZwjOrysFTiFb0inwITjHNZLfBvUsVnN8Onh8iBtt2jubgizM5eSWM+z
         NtrWCbffdkcOtHmcEdM7msQDAdmxxw2gIuFJTNK/9RrZsEeTLarY1C7uyc+ZzcY/fmBO
         aidy7fJj8E2kIcGkleoMKXCHA+Az8azFxInmn8AS8MvYsQJNX+RLILt/u1GmlwIL7SKx
         O38oKb/YrzPKp9XF0WguWAgsy0EGBgO7/LTI6qfH8nf7jwjBUThNg9p36s5KnZd+j+gl
         idp9Jiq8xQ2SMMgdwcJSyvX42RgIBscnYp7umJa0Sj2dk7WaxFRnhXafmarxyTzyRKRr
         eNoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=KjZrDhBfyFEIBIpjwZNPtMmzhzpBnEvekoHmrifO6qE=;
        b=Ub/qyPJZgoK6dZkN0sQXc6IIPSUXNr1uqWEu/UjFvqY/ol+AW6l1bP7AtE8cdrMfjF
         MuMd/4RccD1vF/TpCfRz3kurR7npg3q1HbvSvv1+6wOW2T5wN6WOtFAW4FaX7YgB1RWb
         7jhKmBX4xBPi09x9Vbm8x4Vgs6Cmvx7SVtNu9uOUo0xtJXvJghs49M6Rbi8uLw4Swp4i
         plqd+p7itf5mdWK1Mh2ErEjE7FyyS/VIFmhxqoDQM0zezHiTO9WiwOeiH2itmWqQFzkM
         1/R05Iff+3mXg3BDR2OPJ9bx3aw90bd5dXiva+o6FVt1BzyXCWO1bwJo+fb/RzDpnU9D
         dWkA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VJm48GYz;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d31 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd31.google.com (mail-io1-xd31.google.com. [2607:f8b0:4864:20::d31])
        by gmr-mx.google.com with ESMTPS id l22si268015pjt.3.2021.01.17.16.57.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 17 Jan 2021 16:57:44 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d31 as permitted sender) client-ip=2607:f8b0:4864:20::d31;
Received: by mail-io1-xd31.google.com with SMTP id n2so12618337iom.7
        for <clang-built-linux@googlegroups.com>; Sun, 17 Jan 2021 16:57:44 -0800 (PST)
X-Received: by 2002:a6b:6a0e:: with SMTP id x14mr11619321iog.57.1610931463509;
 Sun, 17 Jan 2021 16:57:43 -0800 (PST)
MIME-Version: 1.0
References: <CAKwvOd=rEngs-8DR6pagynYc5-=a06brTOOx5TT1TC+v7-3m2Q@mail.gmail.com>
 <20210116001324.2865-1-nick.desaulniers@gmail.com>
In-Reply-To: <20210116001324.2865-1-nick.desaulniers@gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Mon, 18 Jan 2021 01:57:32 +0100
Message-ID: <CA+icZUXsK8nfRQGatBoMAsjxhA=VEgZDsPsEg8o7i7yP+ko2Lg@mail.gmail.com>
Subject: Re: [PATCH v4] pgo: add clang's Profile Guided Optimization infrastructure
To: Nick Desaulniers <nick.desaulniers@gmail.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>, akpm@linux-foundation.org, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, corbet@lwn.net, 
	linux-doc@vger.kernel.org, linux-kbuild@vger.kernel.org, 
	linux-kernel@vger.kernel.org, masahiroy@kernel.org, 
	Bill Wendling <morbo@google.com>, Nathan Chancellor <natechancellor@gmail.com>, 
	Sami Tolvanen <samitolvanen@google.com>, Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=VJm48GYz;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d31
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Sat, Jan 16, 2021 at 1:13 AM Nick Desaulniers
<nick.desaulniers@gmail.com> wrote:
>
> > On Wed, Jan 13, 2021 at 8:07 PM Nick Desaulniers
> > <ndesaulniers@google.com> wrote:
> > >
> > > On Wed, Jan 13, 2021 at 12:55 PM Nathan Chancellor
> > > <natechancellor@gmail.com> wrote:
> > > >
> > > > However, I see an issue with actually using the data:
> > > >
> > > > $ sudo -s
> > > > # mount -t debugfs none /sys/kernel/debug
> > > > # cp -a /sys/kernel/debug/pgo/profraw vmlinux.profraw
> > > > # chown nathan:nathan vmlinux.profraw
> > > > # exit
> > > > $ tc-build/build/llvm/stage1/bin/llvm-profdata merge --output=vmlinux.profdata vmlinux.profraw
> > > > warning: vmlinux.profraw: Invalid instrumentation profile data (bad magic)
> > > > error: No profiles could be merged.
> > > >
> > > > Am I holding it wrong? :) Note, this is virtualized, I do not have any
> > > > "real" x86 hardware that I can afford to test on right now.
> > >
> > > Same.
> > >
> > > I think the magic calculation in this patch may differ from upstream
> > > llvm: https://github.com/llvm/llvm-project/blob/49142991a685bd427d7e877c29c77371dfb7634c/llvm/include/llvm/ProfileData/SampleProf.h#L96-L101
> >
> > Err...it looks like it was the padding calculation.  With that fixed
> > up, we can query the profile data to get insights on the most heavily
> > called functions.  Here's what my top 20 are (reset, then watch 10
> > minutes worth of cat videos on youtube while running `find /` and
> > sleeping at my desk).  Anything curious stand out to anyone?
>
> Hello world from my personal laptop whose kernel was rebuilt with
> profiling data!  Wow, I can run `find /` and watch cat videos on youtube
> so fast!  Users will love this! /s
>
> Checking the sections sizes of .text.hot. and .text.unlikely. looks
> good!
>

On each rebuild I need to pass to make ...?

   LLVM=1 -fprofile-use=vmlinux.profdata

Did you try together with passing LLVM_IAS=1 to make?

- Sedat -


> >
> > $ llvm-profdata show -topn=20 /tmp/vmlinux.profraw
> > Instrumentation level: IR  entry_first = 0
> > Total functions: 48970
> > Maximum function count: 62070879
> > Maximum internal block count: 83221158
> > Top 20 functions with the largest internal block counts:
> >   drivers/tty/n_tty.c:n_tty_write, max count = 83221158
> >   rcu_read_unlock_strict, max count = 62070879
> >   _cond_resched, max count = 25486882
> >   rcu_all_qs, max count = 25451477
> >   drivers/cpuidle/poll_state.c:poll_idle, max count = 23618576
> >   _raw_spin_unlock_irqrestore, max count = 18874121
> >   drivers/cpuidle/governors/menu.c:menu_select, max count = 18721624
> >   _raw_spin_lock_irqsave, max count = 18509161
> >   memchr, max count = 15525452
> >   _raw_spin_lock, max count = 15484254
> >   __mod_memcg_state, max count = 14604619
> >   __mod_memcg_lruvec_state, max count = 14602783
> >   fs/ext4/hash.c:str2hashbuf_signed, max count = 14098424
> >   __mod_lruvec_state, max count = 12527154
> >   __mod_node_page_state, max count = 12525172
> >   native_sched_clock, max count = 8904692
> >   sched_clock_cpu, max count = 8895832
> >   sched_clock, max count = 8894627
> >   kernel/entry/common.c:exit_to_user_mode_prepare, max count = 8289031
> >   fpregs_assert_state_consistent, max count = 8287198
> >
> > --
> > Thanks,
> > ~Nick Desaulniers
> >
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210116001324.2865-1-nick.desaulniers%40gmail.com.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUXsK8nfRQGatBoMAsjxhA%3DVEgZDsPsEg8o7i7yP%2Bko2Lg%40mail.gmail.com.
