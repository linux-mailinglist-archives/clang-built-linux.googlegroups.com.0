Return-Path: <clang-built-linux+bncBDYJPJO25UGBBRPSQT5QKGQE7BG36GA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x138.google.com (mail-il1-x138.google.com [IPv6:2607:f8b0:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id AC5A726B00E
	for <lists+clang-built-linux@lfdr.de>; Tue, 15 Sep 2020 23:59:34 +0200 (CEST)
Received: by mail-il1-x138.google.com with SMTP id i80sf3784410ild.18
        for <lists+clang-built-linux@lfdr.de>; Tue, 15 Sep 2020 14:59:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600207173; cv=pass;
        d=google.com; s=arc-20160816;
        b=zXi9ijjJWMcGHXiNUEm6Q0Un0aIMCHRCezIc1flrKEYwoApbG9XZRO8uRWMq6+YSor
         ilJ8xi5WMp6Tx4uVMEQhYZrxWL/Cpb6HsaBfrCD6e3m9FRbS0/RfCM/ODw/qTAoJV1jF
         O8g6GFksmbEFJst0cX/8H5ZrdTTNHVSG9KYPyao02PZBPfk3gKo44MznlkzyirfNhCEC
         c7rnE7ILd7RR79dK4W9fosRG1hZfbu4Hx99fjNdsylxzda3rpQ7uQER2FhKTF9AMFGmr
         NoriCRnX/BpFNwHdSLnGHmXYgVHylmRZStQtrC4VURKOzgZPExRreVAwTTXHbbKR5yW+
         deRg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=6YjhZ6r0bhx+bPfKud+LbsKHwutuRqbetWX1I7DdjUo=;
        b=H6qHb0xbe1v91dDZdKsZ4SnS/MGqRKW4lZxowSAB5EDWjxWsLQKuBNgQOSIoGcPwqD
         +2l6dGDwVgCFxmbv9Y/kCjFizA3s/G7aTtl6Z0RY8dcvfTWDGG3+rnShbmto9vJQdWqi
         SZins2/wGXiMIla/mtO9DaWgeULi2ylCMPUucJfe0R6b2uFIwFgBsMWsGU1Yf8U3uPi1
         JjJUF38d5cYyppNutZPykmNHCrvN2T1/TJoeRimviyZG1wAasTenruTjYjULu5h+xyTn
         NHJdnFTYzrzgAzJ1sqKKIdmS/jxuT9gfC6GsJbyM79he3a/xFKN1AUSnBeuLZwM9U7Hr
         kV3A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=cHEsQkyA;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::534 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6YjhZ6r0bhx+bPfKud+LbsKHwutuRqbetWX1I7DdjUo=;
        b=rdNj4FEzNhwageLlbJ1/YpBYzOculKiIDDV+7u7FQeyiihWCxkO+j3Dc7K/Sa8a2P3
         uGxKjdudRXjNpkp1BEWUO1dY0qoobjhRcQ3PhbqY7bf6Vi3fLAi62zANBQKjTdH5Uoxp
         f53iUBtYq7Gl3o8TiFDufY4PIyJteFZTDh64jRL3JU5T48wgqfqf/HUgnnMAdxKvSQSc
         d6f0ExVyB3YoEEaIaHDYJgEHc3JKDdHqHc7TjmkRAxONuOgb+aRW9cdeOnptJkOUU38q
         plXA9564TbJoarykAz9CAZJt4GnzsTSLSMEvjRK4WmumdoWyQ0nwSyLWG/kSeRb3wS8K
         YA6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6YjhZ6r0bhx+bPfKud+LbsKHwutuRqbetWX1I7DdjUo=;
        b=WtevGUGF5o5EgVQliVPaFxl8OmdKNXgtE73FGNr3fkF+VcsqWwIHoI9MvyN+csrPmM
         hkmkHOshYxwRz8XUq9RKrDxJURwL8HYm98Z8b9gVVxiR2q0s75MXjtlBkLje9zkyJTr7
         BfJPER/DV8fsoeNnLb/8eyDhbsLkl2n59EmXijpwdRi8pZSAAjlarU9sgiC2DJAxOA+r
         +TOgaaN6jF0STeGRj7OlLy5VLgfLJ5uY7KPLdgI4wsItIKF7EQXzrFS4/niyy+nbNwUz
         QQf3Q484UIZbX+c+uTpeq6JPALoxaGawVDMqUC5Ud5phCsQFgCtVMZa1Pd1+XK7kCXvm
         VRnQ==
X-Gm-Message-State: AOAM533uks+IY/rN/kl+uRv8C8plDDTK6oDmIHjMAqSzKr7ZQNfgZrzn
	DQap2hoLPvOItQ55JliMlcs=
X-Google-Smtp-Source: ABdhPJy00Y9EiXgXTXPwXALu67i37lJbkvjICSFFLuYNRIU5YbOvl9zkXkH5NcPd/o0IDmVDVh0T4w==
X-Received: by 2002:a6b:be46:: with SMTP id o67mr16629575iof.133.1600207173545;
        Tue, 15 Sep 2020 14:59:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6602:15ca:: with SMTP id f10ls19592iow.0.gmail; Tue, 15
 Sep 2020 14:59:33 -0700 (PDT)
X-Received: by 2002:a6b:8b8c:: with SMTP id n134mr17011614iod.204.1600207173164;
        Tue, 15 Sep 2020 14:59:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600207173; cv=none;
        d=google.com; s=arc-20160816;
        b=vn1QeTe6D1O0J0MiDfnzfwrzi/YOdKUxxg3LBprAtJT8tOLsQDenqN5kmHsUJz7uQk
         hKfn91nqpVbh3wXTCAq+BCF8yZ0cMWHxoqHv76CN5NtNKbX7vN1zSAUVLlF0u/ZV9IRU
         2BhXm+OVxRDWM2asdIs97LCqfRKWNnERurN8vxV+Kb+/gWQ0ddWBFhBM14dc0vcGE7Ai
         PeN7cifLAuEKsar/8yUvqCqO6Z6alGpmoV0ESXGlZj3TzCsrtXLOLlZ+A2YV1wDSixw3
         RY1HHuzOOk6+H+eGOvII/weTrNo+uvLM7pAW79v7H5e4KFQRVdZjPSOmP+wzWY/4kPlK
         Ci7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=YF93KykULk2q5SO2dhkeGC6nTzzjF1T7ZBcBgWuMdD0=;
        b=rSSFiXRYRiaQOOFcmtcfVseR86hDbK+rxIDZJEBb6mijf9CCDlTpQPDjvbU/Rm6qkP
         gh1+COtbW6EPFNevAsx053MYgWF7nD3/6+rNE7dzyg/tjImUw/KIm036/X9uoP9iinqT
         DUn7+VzxekdW7uiTzHCke2oN84N7QawN7gidoNy+XoXIBvlBtp3t0ts8nJ5CmvF+6Wo1
         Z/aevJyEhRMn5KQ9xEpv1cmGzg598yKX5vi8Lg9UWZGRYVML7rMI1q97crjnQKOQBWr8
         yw6hao749YwfWoBUeDCanL2/e38JKkv17LyoriSCnajrXQZixd56Npn1TApB/GDXDqst
         EwTA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=cHEsQkyA;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::534 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x534.google.com (mail-pg1-x534.google.com. [2607:f8b0:4864:20::534])
        by gmr-mx.google.com with ESMTPS id z85si841962ilk.1.2020.09.15.14.59.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Sep 2020 14:59:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::534 as permitted sender) client-ip=2607:f8b0:4864:20::534;
Received: by mail-pg1-x534.google.com with SMTP id 7so2690718pgm.11
        for <clang-built-linux@googlegroups.com>; Tue, 15 Sep 2020 14:59:33 -0700 (PDT)
X-Received: by 2002:a63:31d2:: with SMTP id x201mr16686038pgx.263.1600207172344;
 Tue, 15 Sep 2020 14:59:32 -0700 (PDT)
MIME-Version: 1.0
References: <5f60c4e0.Ru0MTgSE9A7mqhpG%lkp@intel.com> <20200915135519.GJ14436@zn.tnic>
 <20200915141816.GC28738@shao2-debian> <20200915160554.GN14436@zn.tnic>
 <20200915170248.gcv54pvyckteyhk3@treble> <CAKwvOdnc8au10g8q8miab89j3tT8UhwnZOMAJdRgkXVrnkhwqQ@mail.gmail.com>
 <20200915204912.GA14436@zn.tnic> <20200915215054.GA1104608@rani.riverdale.lan>
In-Reply-To: <20200915215054.GA1104608@rani.riverdale.lan>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 15 Sep 2020 14:59:19 -0700
Message-ID: <CAKwvOdnctit9cQ9Na8kO5TXbZh-3ZV5x1=GLHhRVdBUK23HjnA@mail.gmail.com>
Subject: Re: [tip:x86/seves] BUILD SUCCESS WITH WARNING e6eb15c9ba3165698488ae5c34920eea20eaa38e
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Borislav Petkov <bp@alien8.de>, Josh Poimboeuf <jpoimboe@redhat.com>, Rong Chen <rong.a.chen@intel.com>, 
	kernel test robot <lkp@intel.com>, "Li, Philip" <philip.li@intel.com>, x86-ml <x86@kernel.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Marco Elver <elver@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=cHEsQkyA;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::534
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

On Tue, Sep 15, 2020 at 2:50 PM Arvind Sankar <nivedita@alum.mit.edu> wrote:
>
> On Tue, Sep 15, 2020 at 10:49:12PM +0200, Borislav Petkov wrote:
> >
> > (Btw, clang doesn't need to add that "xor %eax,%eax" - panic() should not be
> >  returning, ever. :-))
> >
>
> I think this is because panic() is varargs, and clang doesn't support
> gcc's -mskip-rax-setup. The normal ABI requires the caller to set RAX to
> the number of arguments in vector registers.
>
> https://patchwork.ozlabs.org/project/gcc/patch/20141218131150.GA32638@intel.com/

Thanks for the report.  Filed
https://bugs.llvm.org/show_bug.cgi?id=47538.  Do you have an account
there Arvind so that I can CC you on them?

Yikes, it looks like gcc 5.0 supports that.  We'd better get to
implementing that lest someone try to remove the cc-option on it soon.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnctit9cQ9Na8kO5TXbZh-3ZV5x1%3DGLHhRVdBUK23HjnA%40mail.gmail.com.
