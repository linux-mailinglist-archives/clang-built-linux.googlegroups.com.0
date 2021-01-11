Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBGWC6D7QKGQEWF6WI4I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x739.google.com (mail-qk1-x739.google.com [IPv6:2607:f8b0:4864:20::739])
	by mail.lfdr.de (Postfix) with ESMTPS id CC97C2F0F89
	for <lists+clang-built-linux@lfdr.de>; Mon, 11 Jan 2021 10:57:47 +0100 (CET)
Received: by mail-qk1-x739.google.com with SMTP id c83sf14470063qkg.15
        for <lists+clang-built-linux@lfdr.de>; Mon, 11 Jan 2021 01:57:47 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610359066; cv=pass;
        d=google.com; s=arc-20160816;
        b=xkc5lpYKZfEP6OkDCqoWvGyn7ZFVtrtUwHduLjeomjDHGRj36WlMVYqFAaaxv6J87U
         yPQHEoWzv6AhVIJ8n1b8x4TQ9E0Q5IF1X0SWAm5ffalgUptIRTyGLBK3hQhyFp7iqBlM
         Ed7HiSxJ7QNBr/+OmqsCyJ1+obs5njJNu83PTmuhMTsrCkrbEbUjFzJ9mHv0Wh63OBwZ
         N/AH50maIIbkH4n/vEsyvL8UQJB/f/LRlD6P8kMLPdw2s/R9x+kksc23Q+bULP7U0Tz9
         EnGOiXaI5BkBZlxSIWSmbyXzWCY+LxEic1nNDdgw3keKoaNPyaoMN4kCMW38UCvAtxV3
         /Kbg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=QyLXI5X90YDO9YyVDJo2G7ZB/cjL/pWOl65Ue/PlNcA=;
        b=GofOb9yYZVsvzjXAKR7up25CLbekziK/Qx6mlKOh/z+1eq0d6IVTfP6Iaeqt2YyBZZ
         lj0U9ALuEdC0edHMJq3BfDlDIiVuk99NP1zjc4NRoXFMi0aBKdOKdlUV2KpQBzXvZRvs
         k2EKKj5+jbXzR+Nl9d4EK/x4YXz79g9aAr8xNaCn4bP4MilJ3VcrMEi98wDNRXgliCoa
         rqtaoB10MOR3jIk3NNMUaaUv7EuYSs6J7QGLS39+zR2z2eZDIkBGH0JuUDfhpZyim2/T
         cYm+p9IUJRptwO9NSQ3VoaGX38eAqINbLK+ALMU0AQb+GnNr+1t2I9XNOGp7pO/NEBBp
         Perw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DQxOQePu;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::12f as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=QyLXI5X90YDO9YyVDJo2G7ZB/cjL/pWOl65Ue/PlNcA=;
        b=pJ6dNzo90uMt5wKxAiSvcBMzRFuN1ayS16zazllMiI2hWhJtqjoq3wCawK7D+hDn9b
         ptRbfi6fZcANlvP4lP5UITXbWBkThh7pI432ahyFtSWWuWG6ruchJ3CuQUIAEs1ECASQ
         lcIsexxuIo/kCunGAnBQiKd81iSdsKMO/pDSPdfBG2bFke606LKcdvFQ2BAlzpwIfutz
         pX0k7WMS5NJui3U9AWLYJ0WuG0ZPESFLaIVf94elN0EapOaLl88eBE4QdUkXeUoWQAGl
         eDJy4m3XnBjGFuRyPTWz+hMMvZCzBoU1wwXq/pIcaWbWtAclCEksCCv2/eQXQz1Fzv4q
         iK/A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QyLXI5X90YDO9YyVDJo2G7ZB/cjL/pWOl65Ue/PlNcA=;
        b=q4XCsl/2Hp21weenRVX5moA78ZkYOTWu5tU6cohOoA1ZOeGFi9BTOL15g4A+CaYaAz
         Gwt4o51zZxk6aWGrMcjn7dKXjKBpmNGRsDfZ4VMf2yoSlerAF3fT3+OWBLSR6ckKOXHl
         mgkcr+sSLAwpf+Ooov/wHgJVCBsKYFNwP2WzvWvNHCPc6mmF1sMq828FJgA8IO1SaJOD
         Gr/+oaIhD2sHEqMUGoE1Elz13jWo3aJz84Zbg6owg4jtY9zctFzd6c7e9zgYNas0sNh9
         Lv27QmumU3VctY6MKRReejZACk/K2IPCgXs+votzjWUspweoWaCWoY6zmZ2DjuyZ9/rh
         WdEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QyLXI5X90YDO9YyVDJo2G7ZB/cjL/pWOl65Ue/PlNcA=;
        b=IuXkmH5w79NZI/kcLb+SPkh4xLeKV8O7fXNgePEY9IDfEtaRVVGatLoKPzuvlvqJ89
         VULW8pU/+AzzyL+fw1b9ctwZibPCSj669utQlm0frlfKN6UM8GCZT0BG6isb6n52pmNm
         rCjLGtaRBS9yp4/Ic/Xrc0dcMUKf4KgKAFT6NVYDb/EEVsxD9v5ngA6maHob4wdWE91v
         w9Q0f0PlhgHja1x3fR+mTfdx97izpzzphUuz5qjLVxn9KXBx3SlrzeiWT21gik1u86sy
         aYdEjI1SX90C0NcW0ZxHV3mOYIHUq9Ctqge9t3XRbjOyLKHSqvbCikRzN+in9FOjKoJz
         AMow==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531GCZ/z6VQEsAKdl5joX8Ntz//CH54jRmXCC4hTExdHnpvBnOH3
	uHtRylolPAS8PO+LbdjRcp0=
X-Google-Smtp-Source: ABdhPJw9aGvR33pJThTqnI/7bRDQqsPg0F7M5J5d6WrjhbylwimsVenSnjhdojLL/nTv0Jd95Ws0tg==
X-Received: by 2002:a05:620a:227:: with SMTP id u7mr15596910qkm.256.1610359066788;
        Mon, 11 Jan 2021 01:57:46 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:3824:: with SMTP id q33ls6902400qtb.2.gmail; Mon, 11 Jan
 2021 01:57:46 -0800 (PST)
X-Received: by 2002:ac8:4986:: with SMTP id f6mr14507731qtq.43.1610359066413;
        Mon, 11 Jan 2021 01:57:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610359066; cv=none;
        d=google.com; s=arc-20160816;
        b=xxOY06m4t83w08qEcdgt/XA1h5n616PdiUGmekTmc5eV7tQ+nnpWrFD+gjkNBeJowi
         vuVmCLx7ge6smcpSjWWaDzMWZIZC4G1N7WdWqHuoxuR0xBqUKpkjR7SvNl6AcXiTJpaB
         wLdbixtLHXPg/uI0w735zmJPwsoipq08FIfJiY2q8nIU6ZI9hrqv3FqZbQ/aed03YvoL
         UBTQP74gc5rOm/Bhxq5ivkWIvPHmiEJrSEpvT4A0n6z9QUxtoMfWsyDNa+hqbeh1TCwr
         7x8AGqmJLeAN4oreIzOzZUizw1Bpv/QU1vjLFBr3JWh+yGNVumMk6TMnkaaCbDrvGM0z
         rSGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=j5tKtkam/Ub1Md37B64s62bHI597iFY5nKOCVt15ZyM=;
        b=bbu5swrXcevsVo4Bvo4QByVZsmP0aBZyd4f0iN9y5PSPfivJhY0zpylu+JM1pSwL0V
         +H+9NWbK3PoyJvdSXqG0WaHaXbIfmzteAY2SNaT/VjnGNjel76M5gU9lTyYytSIj/fET
         B5LEnpeuO1ZWQxE0xh7kpyKUJIIzSz3Z0nVN9G0JkSWD4LSddWUymt5zuU1Zf0jsEZdw
         vXDEnIlJ7nk8u4qkCprIeatCeMPwPXj0Xu/8jyLLVqS2qslzgBijK24X5fzHlpLkH1El
         7XuWndN4BDAcmTXBjwBHaR5Y5YLbn4a/3/NwJprFqPiqD0TVdbbnwi4wsT3wel6gQWo4
         qLpA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DQxOQePu;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::12f as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x12f.google.com (mail-il1-x12f.google.com. [2607:f8b0:4864:20::12f])
        by gmr-mx.google.com with ESMTPS id b7si295516qkk.5.2021.01.11.01.57.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 Jan 2021 01:57:46 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::12f as permitted sender) client-ip=2607:f8b0:4864:20::12f;
Received: by mail-il1-x12f.google.com with SMTP id e7so17740783ile.7
        for <clang-built-linux@googlegroups.com>; Mon, 11 Jan 2021 01:57:46 -0800 (PST)
X-Received: by 2002:a92:c045:: with SMTP id o5mr5291338ilf.10.1610359066132;
 Mon, 11 Jan 2021 01:57:46 -0800 (PST)
MIME-Version: 1.0
References: <20210111081821.3041587-1-morbo@google.com> <CA+icZUUUTEdRNbmORy4X=UqMHLMEfD186o2mh23v_mXGBM8Anw@mail.gmail.com>
 <CAGG=3QUHWkuF0Q-=tNO5PztqtxuKYgyQy_EbBLyL0xNQ7TjgoQ@mail.gmail.com>
In-Reply-To: <CAGG=3QUHWkuF0Q-=tNO5PztqtxuKYgyQy_EbBLyL0xNQ7TjgoQ@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Mon, 11 Jan 2021 10:57:35 +0100
Message-ID: <CA+icZUX0dtfOFLqyG_NOHgFnbwnOKEBP7Fo+RxgjhzuL3FPA9g@mail.gmail.com>
Subject: Re: [PATCH] pgo: add clang's Profile Guided Optimization infrastructure
To: Bill Wendling <morbo@google.com>
Cc: Jonathan Corbet <corbet@lwn.net>, Masahiro Yamada <masahiroy@kernel.org>, linux-doc@vger.kernel.org, 
	LKML <linux-kernel@vger.kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, 
	Andrew Morton <akpm@linux-foundation.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=DQxOQePu;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::12f
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

On Mon, Jan 11, 2021 at 10:17 AM Bill Wendling <morbo@google.com> wrote:
>
> On Mon, Jan 11, 2021 at 12:39 AM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> >
> > On Mon, Jan 11, 2021 at 9:18 AM 'Bill Wendling' via Clang Built Linux
> > <clang-built-linux@googlegroups.com> wrote:
> > >
> > > From: Sami Tolvanen <samitolvanen@google.com>
> > >
> > > Enable the use of clang's Profile-Guided Optimization[1]. To generate a
> > > profile, the kernel is instrumented with PGO counters, a representative
> > > workload is run, and the raw profile data is collected from
> > > /sys/kernel/debug/pgo/profraw.
> > >
> > > The raw profile data must be processed by clang's "llvm-profdata" tool before
> > > it can be used during recompilation:
> > >
> > >   $ cp /sys/kernel/debug/pgo/profraw vmlinux.profraw
> > >   $ llvm-profdata merge --output=vmlinux.profdata vmlinux.profraw
> > >
> > > Multiple raw profiles may be merged during this step.
> > >
> > > The data can be used either by the compiler if LTO isn't enabled:
> > >
> > >     ... -fprofile-use=vmlinux.profdata ...
> > >
> > > or by LLD if LTO is enabled:
> > >
> > >     ... -lto-cs-profile-file=vmlinux.profdata ...
> > >
> > > This initial submission is restricted to x86, as that's the platform we know
> > > works. This restriction can be lifted once other platforms have been verified
> > > to work with PGO.
> > >
> > > Note that this method of profiling the kernel is clang-native and isn't
> > > compatible with clang's gcov support in kernel/gcov.
> > >
> > > [1] https://clang.llvm.org/docs/UsersManual.html#profile-guided-optimization
> > >
> >
> > Hi Bill and Sami,
> >
> > I have seen the pull-request in the CBL issue tracker and had some
> > questions in mind.
> >
> > Good you send this.
> >
> > First of all, I like to fetch any development stuff easily from a Git
> > repository.
>
> The version in the pull-request in the CBL issue tracker is roughly
> the same as this patch. (There are some changes, but they aren't
> functionality changes.)
>
> > Can you offer this, please?
> > What is the base for your work?
> > I hope this is (fresh released) Linux v5.11-rc3.
> >
> This patch (and the PR on the CBL issue tracker) are from top-of-tree Linux.
>
> > I myself had some experiences with a PGO + ThinLTO optimized LLVM
> > toolchain built with the help of tc-build.
> > Here it takes very long to build it.
> >
> > This means I have some profile-data archived.
> > Can I use it?
> >
> LLVM is more tolerant of "stale" profile data than gcov, so it's
> possible that your archived profile data would still work, but I can't
> guarantee that it will be better than using new profile data.
>
> > Is an own PGO + ThinLTO optimized LLVM toolchain pre-requirement for
> > this or not?
> > That is one of my important questions.
> >
> Do you mean that the LLVM tools (clang, llc, etc.) are compiled with
> PGO + ThinLTO?
>

Yes.

- Sedat -

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUX0dtfOFLqyG_NOHgFnbwnOKEBP7Fo%2BRxgjhzuL3FPA9g%40mail.gmail.com.
