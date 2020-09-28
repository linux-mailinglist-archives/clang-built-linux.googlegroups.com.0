Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBSFLZH5QKGQE3PGOFFA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3f.google.com (mail-vs1-xe3f.google.com [IPv6:2607:f8b0:4864:20::e3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 0362827B702
	for <lists+clang-built-linux@lfdr.de>; Mon, 28 Sep 2020 23:29:46 +0200 (CEST)
Received: by mail-vs1-xe3f.google.com with SMTP id s68sf889594vss.3
        for <lists+clang-built-linux@lfdr.de>; Mon, 28 Sep 2020 14:29:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601328585; cv=pass;
        d=google.com; s=arc-20160816;
        b=FshA6Gkq5astlS1ltfn5lILE5ynYWIy5Q0mczaqZJC/sT7r8aBeC6rqW+ys/oMRgl8
         OwnTfFQeNoIqhgPEtfcszFRJy/DRF8CN5bHIddjtBr/TotIWMmqtrSl7+IW4o+IIVC78
         z1Xy1a8Opdbj15mL3YaGTQa+85QUb7yPd4gAJhzhVJNpeocJhb4vDyO6Ss/LmfB2Nhjb
         yKrLgs6s5JuyIuLlBds8O3IhZ52Nhp9s4B2P4M4fi0G01qONO0BgC1Tqw9fIvGmbViJJ
         OJvp7qqP7ncok8IJeC2dPGSxAe+0T4ggDpHoB5K65+Lyu6rAP/v2l9G7mfsUuRoeCdMq
         6SNg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=G1mwMGGW9unciM18Rl6Y4oLqh3IuWm1Cbv96zZPaFzY=;
        b=fnNyQxMB8RcE93aOMUfb2SBd9ok94bHnGPK/vR8qKuFu1CXCO8TvhNUnBnjssc+3qc
         oQUA0u154aTDWt/k9gR8cDRIB4TwfryY15I8NWObtHsE8xekNkclWtlFh7JdiKheq0Lh
         YM7CLWtl2bDJXZFGzT7+doPMenhpz/L2+59fznu5G8i1GVWNn8LNQVq6nd+rwsuZUSKG
         M5gla4d+E0d+Ujgq73GnFpdvfbgl6pqIX7Dwr3kM2r/AvKMH0mPUGH9i0EBZzqS0sP7v
         4rZLX/cNtGzRVBtHwXN2FKTHHicrLNzhnsG7elSdFdEAfkYmOFDxp4tJ8U80c9x9fP2o
         +S1w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cTVh+KDV;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=G1mwMGGW9unciM18Rl6Y4oLqh3IuWm1Cbv96zZPaFzY=;
        b=iPTMrGZtyxPob9jKUin+Xfz7BDyglg/7IRin1pUOT6OJ5YAZ10KhVMVwmYmjM0UNxb
         DxDHayhEHar+fZMggn8zG2tMZq+kHvNiuuu+ONjUsFUcZr9w6Hg4ZIO1CTAhMywzLgt/
         oI8j5wpoihVBljz1g6apzuRNoUBg+sxmpHQWgnGRU87/V23A6IcQy1/y/cSR7OPoeVO+
         /JHBvetSYWumd0is5km5MgAEDGprapqW16p7Rl+5It44SSyp5nthkCmTME5lTZcxzWVj
         yXYBEHGprVRUz7kpk4Q7cXt6WDqHRHBqclScAHxztq2+YZn/uxVE7dWxCO7pEdvQ+qw/
         dtDg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=G1mwMGGW9unciM18Rl6Y4oLqh3IuWm1Cbv96zZPaFzY=;
        b=MMMlvx3T8mxXnTNJaR69L75bWUMTvTmp5APjN1tfOmE2qk3dVzNbED7VuRjTbRKsXW
         ENPWwjx1/dDgzav0n1TVyUUbuVXMnzm9AMd2NIBgGLgRBVESNML9S0Xf0AMxMnHb+Ol5
         mkCQ/sQQPnxv25R33ztYqA2hKEtEHG6awVqDRSIcTuUPuH+p3ZIXxDiLZjktKdi/ph9Z
         xcg921Pj7H957TooUNLw2v5RMKZLvoQtfh5fF1p2bOsKbWWWSq/wbovSsq00v3moUhKl
         G+RC7MU/8xFPq2Q+oEuHvAEg+WHKoKL5o4099qvFu5YBsdR0fMmq57+kWT+ClRlpp0h7
         dZGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=G1mwMGGW9unciM18Rl6Y4oLqh3IuWm1Cbv96zZPaFzY=;
        b=IsqPWQyar1BuJ7sZvuVw7E9F6/eRDvEKMQ4PiTU1Lli6qoTXaSG2ljszJsM87I7XBE
         lBwa5yepFGa1Ox9A64VDE0Z66FF64YnoBuX5bWIDP29v86JJYZL12FZCmUBM1GRtR1j0
         Bs3uzRJJmhVBbvmupt2dOQz0a1bXr3isyBn9YI5V5SVNleNt9F9vbpHJvMW1SKiRj7Jb
         rSCE0v7M+tg/NRQfOCATK51xi1kyYlK407NBHU56rgMu6YzMVfx4hKor5ceL8bMnbKm9
         tYVDe+hauvGbm7um7loDCaaWfwEHVC7RlPXaQjOhxQz4yaSM2KAsDgjBXaLNY2B0x3da
         i9qQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5300C6PQddKh3SKsBF+ybxrCNwhxFiGXq9x7bNGpf//VOzc1uitq
	0yqcxJMeIOjzHrwWJKEZTU0=
X-Google-Smtp-Source: ABdhPJxAygdmYOx2J5Ic1HHjBCIolgviyaqI9jLgeB9cgcKF4Qzzldlpgioh079/wkDhw9pav3Btgw==
X-Received: by 2002:a67:ec89:: with SMTP id h9mr1091008vsp.55.1601328585084;
        Mon, 28 Sep 2020 14:29:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:3602:: with SMTP id d2ls145824vka.0.gmail; Mon, 28 Sep
 2020 14:29:44 -0700 (PDT)
X-Received: by 2002:a1f:6e07:: with SMTP id j7mr1004902vkc.18.1601328584503;
        Mon, 28 Sep 2020 14:29:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601328584; cv=none;
        d=google.com; s=arc-20160816;
        b=uA9mgViCm8DdVYGh+ujxRPlHvZnVMZX7ZUMHSKrBlgfjcIVvE8sPt7aroipGm5jKVN
         xXQ2NnqdzucOp0cvUCqwB7Uq9t205Q0U+7Zs06YEvnDOt30chle+EayoD9NN93B320+0
         +nCf0kRUisJu4DOlW+QEPRAx6B+Ga43ApIyqwIyyiggepgdqplR2N/zN7WlFQ4ElyOEQ
         slTr/y86Y1bO5zcXULWdJ2D1szJ98wVCRqB7o2i6qJ28rJ0t+TosNaioBCboOd9uieiI
         BG/67uH0o0+9VMDE160qeAw1UIAgBDdsRGH1yEroz0+yDTATDgezgEKQEqmV7ZsnZXkf
         fZ3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=ozGPQxJrUUtsg1lMMQ8t0KKCa3D4U+8eOddxgICTWGc=;
        b=uESkCUVhlcyvK7yxpHaENgCSKKWJy4jh8g9S1DoM5AwKpoWaWAXcYkAAp02UeRySLv
         anCkVUDCeBhk7JOQtNT9RBJEdqCmRNNUyMB396NQ/qte2msbuo3I6kcYk3nKErfi0mnp
         PPL0dKAzEwF5iy1FPOVSq3lsQL6p2FupHNZMij0+apl6SUd8HjTf1hwkuKo1l4WabF4T
         1k+LFHXJPJ6v0HEU4Q4vcZvS+a4l3cK2ZSfqV87jgC5um4JFPA0Z3TpmhlOeAHLC5Gfy
         Ck72Z3hJCyriv7bi4OkFyrHscARK0MTB4MI0nTLGWDSt53dssqU5Ndjlk6qOCakCwEh6
         FKrg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cTVh+KDV;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com. [2607:f8b0:4864:20::1041])
        by gmr-mx.google.com with ESMTPS id h9si119250vsh.2.2020.09.28.14.29.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Sep 2020 14:29:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) client-ip=2607:f8b0:4864:20::1041;
Received: by mail-pj1-x1041.google.com with SMTP id md22so2775247pjb.0
        for <clang-built-linux@googlegroups.com>; Mon, 28 Sep 2020 14:29:44 -0700 (PDT)
X-Received: by 2002:a17:90a:1905:: with SMTP id 5mr964549pjg.169.1601328583546;
        Mon, 28 Sep 2020 14:29:43 -0700 (PDT)
Received: from ubuntu-m3-large-x86 ([2604:1380:45e1:2200::1])
        by smtp.gmail.com with ESMTPSA id c9sm2582463pfn.78.2020.09.28.14.29.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Sep 2020 14:29:42 -0700 (PDT)
Date: Mon, 28 Sep 2020 14:29:41 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Kees Cook <keescook@chromium.org>,
	Stephen Rothwell <sfr@canb.auug.org.au>, kbuild-all@lists.01.org,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	kernel test robot <lkp@intel.com>
Subject: Re: [linux-next:master 7069/7089] ld.lld: warning:
 arch/arm/built-in.a(kernel/dma.o):(.ARM.extab.init.text) is being placed in
 '.ARM.extab.init.text'
Message-ID: <20200928212941.GA1373771@ubuntu-m3-large-x86>
References: <202009120721.0ZIcBj7D%lkp@intel.com>
 <CAKwvOdm7yrbevMyDYc20ymFBRQgDVL2PgAX__PkZBBQOKHSnJA@mail.gmail.com>
 <CAKwvOdnN2Q3R0kpXbv38vVKXkDT1KAS1-O33mONzb4tHbopx5w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdnN2Q3R0kpXbv38vVKXkDT1KAS1-O33mONzb4tHbopx5w@mail.gmail.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=cTVh+KDV;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Mon, Sep 28, 2020 at 02:11:57PM -0700, 'Nick Desaulniers' via Clang Built Linux wrote:
> On Fri, Sep 11, 2020 at 10:59 PM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
> >
> > + Kees
> >
> >
> > On Fri, Sep 11, 2020, 4:55 PM kernel test robot <lkp@intel.com> wrote:
> >>
> >> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> >> head:   d5b2251d63b5344ee827d3680fa79bdb9f9ddfa1
> >> commit: f1187720d7c95127a3db17501c921cb7a3574e30 [7069/7089] Merge branch 'akpm-current/current' into master
> >> config: arm-randconfig-r023-20200911 (attached as .config)
> 
> ^ randconfig
> 
> >> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 0448d11a06b451a63a8f60408fec613ad24801ba)
> >> reproduce (this is a W=1 build):
> >>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >>         chmod +x ~/bin/make.cross
> >>         # install arm cross compiling tool for clang build
> >>         # apt-get install binutils-arm-linux-gnueabi
> >>         git checkout f1187720d7c95127a3db17501c921cb7a3574e30
> >>         # save the attached .config to linux build tree
> >>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm
> >>
> >> If you fix the issue, kindly add following tag as appropriate
> >> Reported-by: kernel test robot <lkp@intel.com>
> >>
> >> All warnings (new ones prefixed by >>):
> >>
> >>    ld.lld: warning: init/built-in.a(main.o):(.ARM.extab) is being placed in '.ARM.extab'
> >>    ld.lld: warning: init/built-in.a(main.o):(.ARM.extab.init.text) is being placed in '.ARM.extab.init.text'
> >>    ld.lld: warning: init/built-in.a(main.o):(.ARM.extab.ref.text) is being placed in '.ARM.extab.ref.text'
> 
> ^ so these three probably need to be explicitly mentioned in a linker script?

Isn't this https://github.com/ClangBuiltLinux/linux/issues/1152?

I have been waiting for feedback on that diff before sending it but I
guess I should draft up a proper commit message and send it along.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200928212941.GA1373771%40ubuntu-m3-large-x86.
