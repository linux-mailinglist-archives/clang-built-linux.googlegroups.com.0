Return-Path: <clang-built-linux+bncBDYJPJO25UGBB5FM6GEAMGQEMFODPTI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x139.google.com (mail-lf1-x139.google.com [IPv6:2a00:1450:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id 09F613EF6F3
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 02:38:13 +0200 (CEST)
Received: by mail-lf1-x139.google.com with SMTP id d3-20020a19f2430000b02903c3ec8dea5fsf108224lfk.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 17:38:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629247092; cv=pass;
        d=google.com; s=arc-20160816;
        b=mzObUu0mLYp+GMS9mz4jeu192/91yoHoHQbeJDfu9myP4XryAl4Mm2BOhWmYl3QeDF
         V9TXfySU06lsHvjsfWxKQa69PHUqVNipQ5RyW/z2DlKeb95L+xLuQadhaVwNNksYtpXH
         TKNzvMMHRSkPU7Yyhg6wFNaOGhGlypcYEam+ul39YOKJii23BWHorl82LYb1GOQoVx2a
         dXq7nG+Ly7pzXxYjv/Md2WCJKyWjXCcq1CTC1lrTKVrfOK5jSfXVsvwgMwECPVve4TeN
         /c7FcTpp+um3V3hxwn9UZaZ//Q3EL4MSxU1C0xkTizWS2cu8+gz2UCrXD+exjYtVaKU8
         t/yQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=0mHeyXT5EJxS1IyrJmbLTygDhUrhZCAnHo9/G69cCGk=;
        b=clXO15pQVNHIccL30m6smtYLSZtoNb5m+1/anmcQoURGd25NyNpVCvrP0QLHp7jI1o
         t/T1WqXEouE6OHpzEGZGkV8zBWrMuOR7F6kODXt0Rxp5TQD41uoQsa9wSM+zb8X/clzt
         Nv1ViCv0Mh9B9vjBFjf1Ie8XZwBJ9ISG9yrDM1RrOHd1WdpRqS8jMizEkXW32WnNDFSk
         ulTSsdN2oewC/kW+0QiyqrWm0LstwviCWxwzLDeRuR0zvrZvlKdKjCjLrgkvSZKAVAa1
         8bpzpAIcLIqaxhW3B0laRJnVOdOOL8kFzFpnLTThDp9MmphFhkElpYEJdxtwBXr/dF82
         fi2A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=WasWLNYL;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12a as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0mHeyXT5EJxS1IyrJmbLTygDhUrhZCAnHo9/G69cCGk=;
        b=lwd3yMdvPMfEl5xD/3Ply0pN8G9WaET0TIECZHFQlzgncuhtbz5rsjK4+XZRXSwrc9
         khfHFKxwbbYLN0r7UbjINuuVSOvFnl+m3tbRB7Ks078PFf+5nzGGCTLDz7ESZ4IjbKYF
         w1eZmSLlSqDEpo/LTdYPHnIVy1849P3He8IMWbgnw713CFIfo1h1KPCqJ6HmMabgAy3q
         NYJEuNVoWuhVGu8tibYw5zIDlDFQqbBMLh4wT4Kscwf5AzODqBnDG3m8ZJ5ymAqF+V6F
         dtff9IB/6kOvz9N0+0C4BcQkKGxh1tZfVmRRJkFP87KevMh7rtmtJvY5LXe5zC5MMj+b
         tZxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0mHeyXT5EJxS1IyrJmbLTygDhUrhZCAnHo9/G69cCGk=;
        b=eO3bZJsQGgUjaJD2PqqWZEUm+/UtH8M8f8xGemfeGUG+/rYUpITH3eGWwvwwQPh+P9
         c9otScQyI9yc1Mhwtx9Y+ak1H9eU7vRDrL3MUEe08lS9A7fZ74Z+n3JJaBhvRhSPu+mQ
         8SZ40Gor2O5nhKROg856TIuYI/2Gh8A8fbPszKJWNeaIvlGca/exf3waPVtKAk8mTVd/
         I2ai4WlzSHudUi9Ii7P8i0NqvozGPQI0AJ8zSRTcCV+wFgzWyVpYFJtmMwLFA532nkbp
         NMBKMBe+4vw9TCxZb9FYiumGh5H7wj8b6as9NFu3qagwDRzrL13iqPmjPWnu8S/HeBhF
         nDOw==
X-Gm-Message-State: AOAM530RvO/ezeWmapvkGWLmjApW1Im22T5sjlo2ikJiUlUgH9kA5u9Z
	POG6ruhrlrJRMObmfrkX3Nc=
X-Google-Smtp-Source: ABdhPJxjDixU0G1CTqrR42GCHyKNp99qH/f/Xkyn19+RaIan8TdX7+iKPJdni/XWKh9qphCxsKJOuA==
X-Received: by 2002:ac2:4568:: with SMTP id k8mr4405384lfm.489.1629247092579;
        Tue, 17 Aug 2021 17:38:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:8652:: with SMTP id i18ls55147ljj.1.gmail; Tue, 17 Aug
 2021 17:38:11 -0700 (PDT)
X-Received: by 2002:a2e:9444:: with SMTP id o4mr5473439ljh.210.1629247091490;
        Tue, 17 Aug 2021 17:38:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629247091; cv=none;
        d=google.com; s=arc-20160816;
        b=VaeFjR4m88orR7+tS1OFG1a9RfUrDtyB5s+tNd6HHjmMJdCg62nmUN2wmY7L87bpMN
         oYLBaxrq3yIYAn1T9JHvR6t8MC/r9W3loFtoMzHbbkznc4Pfk6VHSShuX36UqzCF6jxv
         B4vyoADdcbSzBvYEmAlQbwHLBi4l01TQ3b+6u3dblc+YbaTcN9UvohUUuf5n6zgArgvQ
         mgDVJM5vgLx61ueWxwmr0yxiKSe4C0qTKR7VUvQAaVzgdsukEt+s6hYCJiGE1CwA5Ai6
         nDD5cKoMtvpgjAHIUjTnJ8IgrC8QHArQJ4tjLAYpehW7aO0Zgn8GzHwH1Fk+6FDozWgX
         yhcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=zDk0fcihHrwq9BHr/kHKMRiJXnJvIkUdaH/I/cQ2cxY=;
        b=lU2+O+5cFvnhlLQmrwyd4qnWYo608P2Og9Hi4YCkteZzOzazgh96zn2VDNt6iwb2t/
         l0IqD4PEv0faxC42QTaqLMtKEgnxcPPp3GoOCm3HX2F8G4Vc6rFtSu9d+NtlLu4ZFH0c
         eZMgBLNnsWgp1RlIf0y6pBbeTql7vglwtVpy8n1hH6S38gxAq6n4oN+VXC2mtM2ITMDO
         bHQ2DAw6eovtq1UkOj+yb8n0cWoSyAqegpACc60gxxvBwBVX9NJBV4qreSgJhWswCobj
         A2y/bJMTUU8GWamwr4PZ/E3O/dz1GCDG83VB0Bgt7PL672NKLxwvkxMT4qV55p2AZD2n
         Fm/Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=WasWLNYL;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12a as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com. [2a00:1450:4864:20::12a])
        by gmr-mx.google.com with ESMTPS id t9si192663lfk.1.2021.08.17.17.38.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Aug 2021 17:38:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12a as permitted sender) client-ip=2a00:1450:4864:20::12a;
Received: by mail-lf1-x12a.google.com with SMTP id t9so812308lfc.6
        for <clang-built-linux@googlegroups.com>; Tue, 17 Aug 2021 17:38:11 -0700 (PDT)
X-Received: by 2002:ac2:5f10:: with SMTP id 16mr4181472lfq.368.1629247090923;
 Tue, 17 Aug 2021 17:38:10 -0700 (PDT)
MIME-Version: 1.0
References: <202108180658.IgbgwsPI-lkp@intel.com> <CAEf4BzaLJqYxRWZJbVMr+oa+_7Y7mgfxtUg3KuvbqMo=fT4-7Q@mail.gmail.com>
In-Reply-To: <CAEf4BzaLJqYxRWZJbVMr+oa+_7Y7mgfxtUg3KuvbqMo=fT4-7Q@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 17 Aug 2021 17:37:59 -0700
Message-ID: <CAKwvOdk4nJFMqaNje1xwg-RBj3mSK-5n8ZZD6szsJ=K8O-uMig@mail.gmail.com>
Subject: Re: [linux-next:master 7954/8516] include/linux/trace_events.h:695:81:
 warning: unused parameter 'bpf_cookie'
To: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Cc: kernel test robot <lkp@intel.com>, Andrii Nakryiko <andrii@kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, kbuild-all@lists.01.org, 
	Linux Memory Management List <linux-mm@kvack.org>, Daniel Borkmann <daniel@iogearbox.net>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=WasWLNYL;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12a
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Tue, Aug 17, 2021 at 5:25 PM Andrii Nakryiko
<andrii.nakryiko@gmail.com> wrote:
>
> On Tue, Aug 17, 2021 at 3:36 PM kernel test robot <lkp@intel.com> wrote:
> >
> > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> > head:   9803fb968c8c2e1283f67b3baeb88e0adba435b4
> > commit: 82e6b1eee6a8875ef4eacfd60711cce6965c6b04 [7954/8516] bpf: Allow to specify user-provided bpf_cookie for BPF perf links
> > config: i386-randconfig-r021-20210816 (attached as .config)
> > compiler: clang version 14.0.0 (https://github.com/llvm/llvm-project 2c6448cdc2f68f8c28fd0bd9404182b81306e6e6)
> > reproduce (this is a W=1 build):

^ W=1 build

> > vim +/bpf_cookie +695 include/linux/trace_events.h
> >
> >    693
> >    694  static inline int
> >  > 695  perf_event_attach_bpf_prog(struct perf_event *event, struct bpf_prog *prog, u64 bpf_cookie)
>
> This is expected for such stub implementations. Is there any way to
> silence this or make the compiler happy about that?

Leaving the name off unused parameters: https://godbolt.org/z/eaaen8ToP

>
> >    696  {
> >    697          return -EOPNOTSUPP;
> >    698  }
> >    699
> >
> > ---
> > 0-DAY CI Kernel Test Service, Intel Corporation
> > https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAEf4BzaLJqYxRWZJbVMr%2Boa%2B_7Y7mgfxtUg3KuvbqMo%3DfT4-7Q%40mail.gmail.com.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdk4nJFMqaNje1xwg-RBj3mSK-5n8ZZD6szsJ%3DK8O-uMig%40mail.gmail.com.
