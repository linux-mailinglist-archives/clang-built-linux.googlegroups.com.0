Return-Path: <clang-built-linux+bncBDYJPJO25UGBBUPHS3VQKGQES7FS5MI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3e.google.com (mail-vk1-xa3e.google.com [IPv6:2607:f8b0:4864:20::a3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DDBE9F669
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Aug 2019 00:50:59 +0200 (CEST)
Received: by mail-vk1-xa3e.google.com with SMTP id d21sf377188vkf.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Aug 2019 15:50:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566946258; cv=pass;
        d=google.com; s=arc-20160816;
        b=T+y8W1qZZ/EeeKHyrPQEd1guUoiWUT86wlI3DQKSy7blu6PsI8SGPoYzl5gUulNStS
         MCgMSCeEKsXynqAc60HTdcHSEjCb3Bf8vfX54rZQK7aoyvubQWI2oLGYqwwLhNCFNF7H
         QbD7aqMWwPQkFCSAKkYY4mJuL+WB4ZCtcHdpTpaNkT+vUZfaZnY/zCwfr0ZtaEpe2vEz
         24Hs3t9K6urfsLl9mCPkhiDXSUkNsinIcXpubcMtJFijvkWMCJZFd7ufUkuyhb4rjvvP
         I0Bvvs3NCC0C/IzmStwLQYnu56BZpxzAPVXxGn0a15nKiFVPcC7Lfza7sxPEQN6Bl+WS
         pvKw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=OlTpyS5ijbIX9PufL8gdEcKXeXnxaM5NwBdpshkHVYI=;
        b=AkbouJ1UfLbM9sAGh7iiHsGnLaZg2xLVUEM/WmpxPSUwhQWbvx4vwLdFCkVSGohneg
         Ov2ekBnJDKGcLb9EqcoB+t3pm84ZJdtpxdCeQ53elgVvJQuJokPSquEgINbbFmX96p+7
         uoOLgSe2uObp39D9lMG3cIlKXn1ixIWG1asxH/JvqYdC6Nq0kt0yRu5QeLlsVUwgU1uZ
         FS8v1yLI7NNlsZoh30i4uHIa4by0wgB3OTBlgRbnAbGgd0xPTeycfwuKw99ifHb/hgmA
         GpKg+zTFP7MXveOdWIcLbmHG2d7zR3XE1RRFmhJeUun9+SgUi7UrXyB2J4NXe5XSINXx
         W9kQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Usm12moH;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OlTpyS5ijbIX9PufL8gdEcKXeXnxaM5NwBdpshkHVYI=;
        b=OlzBaQhpKMNhhYlGmMac3DpRyEc1wkjU0MLcVnLQnCkWyU2Zl6gqfn9L3VfWTn72Di
         eiclA0yu8NjPlYz04/wSJSjTXxKRLynVMMElyMgLxy5Hea6AnCiX0z76Jx3FgDUwBvt7
         ZENkF3lo28KLrAEVyPafOfZ4f/Wsu2YqRWKAIJs9eOWdKrsuOaGTXozONyf8fDKSx2qt
         uCBJlDnzf12SU6vF0uDonYvZms342ozdEP8qTJThyDd7HxstMuWYcq9910snUE3yVD9P
         iaPaf/YHvLUyDiAryt/66/aPn5NoFriRUiIcAqDnefJGAKHBDMIlWujoC4nBGDLaC5Lv
         mtjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OlTpyS5ijbIX9PufL8gdEcKXeXnxaM5NwBdpshkHVYI=;
        b=LozSsp67cHIY40++v3e3nhf03OEfNfupDGnZt3d+mJfyNgjc5mtTHBmknY8geT3i6z
         /0PC1M7ydruT78TANyJ4/KzXRDO3B5crGd1FtQ8UuO2eWctHMwt+lOkNxxAx4XGs9FpK
         x9IAwERjQmehCtTs/G0CJkd/3wWgnLr2pFN9paKxUtgoXuGsnmYIWbXCmh9cuCJdpPGc
         5wqY0g7nZXYmhExY+s1CRFvwR4aDacguhxVw7NZ8CJFLWM1F8sHscdhqdQSR3SLoUCTn
         OgUcnzh1wUHqS/DL/RolJrMIH2e76tKzamLLQHEi7FKhtwFs1VszenCBqtN0/C95K8W7
         xL5g==
X-Gm-Message-State: APjAAAWjov1MLDXvqam5DX6zxBcvYSSUc1jgZtCsozMUxIq9/UEyNdAG
	FDxgGE0qhb9w0lWX/3HzrB8=
X-Google-Smtp-Source: APXvYqzfWIeNoFjfDFaMsCy8wmtdvSms7HO6S6UtpyHRIp6NfhMh5mhpwpEZkNiLYh+DYMaUaqXRVw==
X-Received: by 2002:a1f:43:: with SMTP id 64mr750450vka.42.1566946258001;
        Tue, 27 Aug 2019 15:50:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9f:25a9:: with SMTP id 38ls30823uaf.5.gmail; Tue, 27 Aug
 2019 15:50:57 -0700 (PDT)
X-Received: by 2002:ab0:73da:: with SMTP id m26mr374387uaq.119.1566946257648;
        Tue, 27 Aug 2019 15:50:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566946257; cv=none;
        d=google.com; s=arc-20160816;
        b=OEg3w7bsosCjbtmh2cH/iN1tXvbF0/HYVNKvUDR1Zq+CShPFzchDLwIjBocnwlyzIS
         5q8lRwC+BthxLkvF0Aoy6W8MzGAiGXf632ZAo7Jnl7XjYbQJ9335jWHYVLsN/85l+pvC
         k2/NPNYpnsS9cLbqV4rQFJ/x0dWEUHkKLJYRcdg9pop4Xv4kCbmx7YkfJzhP6v7C8Dxs
         2dCPlMbwZUj9qmQBOMRhvSFZu4OLZS7te65aC9jUPzcHDjGes57VsGSUexD2hFL3XkKe
         V5uPGNasJbf++FIgYo3Pxf11qU5KuBwe0AHEGgA5Nmcq6BUXiegKvwjiqDryY5dWPSdw
         kxzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=zOEu9xUSDVrsGM6W3Flcox0RxExlMvx/ACbW1pnrPBg=;
        b=j8d3AwfQ+NK0bT4mK3XeZtB6fKlohB5lff7YnxeJtdXkP6GLWddTcjCBx3PCLe4OJe
         iJnv5LD83AgOaSIQGLVPQSeY6Lx31kceCWzExGSf+rGx/zHkUUrpV4r91TjBAPc0IzN1
         syPheKTFyJ+Z7zvBH/+Hq6SSKXvt0/E9qpg4jmsN5Eg+Wl/KVXdpgtx8V1Rga/8jnJZz
         Mkz5r6NbrBo+i4PQz40urYMjsyjluktv6smkJzvK9p1l3Rfb8UeCzWSonsHYR99LpJlN
         0WmFOYSOffSf34Qy0ue/7ndo087aEZIp4z0J1rqILv/EsOrD3Cq9SVQY/J6z4pIqOkD0
         vnqQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Usm12moH;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id a128si42227vkh.1.2019.08.27.15.50.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Aug 2019 15:50:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Received: by mail-pg1-x541.google.com with SMTP id u17so269982pgi.6
        for <clang-built-linux@googlegroups.com>; Tue, 27 Aug 2019 15:50:57 -0700 (PDT)
X-Received: by 2002:aa7:984a:: with SMTP id n10mr1036503pfq.3.1566946256177;
 Tue, 27 Aug 2019 15:50:56 -0700 (PDT)
MIME-Version: 1.0
References: <20190711133915.GA25807@ziepe.ca> <CAKwvOdnHz3uH4ZM20LGQJ3FYhLQQUYn4Lg0B-YMr7Y1L66TAsA@mail.gmail.com>
 <20190711171808.GF25807@ziepe.ca> <20190711173030.GA844@archlinux-threadripper>
 <20190823142427.GD12968@ziepe.ca> <20190826153800.GA4752@archlinux-threadripper>
 <20190826154228.GE27349@ziepe.ca> <20190826233829.GA36284@archlinux-threadripper>
 <20190827150830.brsvsoopxut2od66@treble> <20190827170018.GA4725@mtr-leonro.mtl.com>
 <20190827192344.tcrzolbshwdsosl2@treble> <CAKwvOdk3UTT5jUTuG_wRizdpUtgv3qFB3w3NCtJ7ub5DnptYRA@mail.gmail.com>
In-Reply-To: <CAKwvOdk3UTT5jUTuG_wRizdpUtgv3qFB3w3NCtJ7ub5DnptYRA@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 27 Aug 2019 15:50:44 -0700
Message-ID: <CAKwvOdmq3VRLt+SUM=Do7OqasLqzoj4R00-JZGBWFjj8TccNgQ@mail.gmail.com>
Subject: Re: [PATCH] rdma/siw: Use proper enumerated type in map_cqe_status
To: Josh Poimboeuf <jpoimboe@redhat.com>
Cc: Leon Romanovsky <leon@kernel.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Jason Gunthorpe <jgg@ziepe.ca>, Bernard Metzler <BMT@zurich.ibm.com>, Doug Ledford <dledford@redhat.com>, 
	linux-rdma@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Peter Zijlstra <peterz@infradead.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Usm12moH;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541
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

On Tue, Aug 27, 2019 at 2:27 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Tue, Aug 27, 2019 at 12:23 PM Josh Poimboeuf <jpoimboe@redhat.com> wrote:
> >
> > On Tue, Aug 27, 2019 at 08:00:18PM +0300, Leon Romanovsky wrote:
> > > On Tue, Aug 27, 2019 at 10:08:30AM -0500, Josh Poimboeuf wrote:
> > > > On Mon, Aug 26, 2019 at 04:38:29PM -0700, Nathan Chancellor wrote:
> > > > > Looks like that comes from tune_qsfp, which gets inlined into
> > > > > tune_serdes but I am far from an objtool expert so I am not
> > > > > really sure what kind of issues I am looking for. Adding Josh
> > > > > and Peter for a little more visibility.
> > > > >
> > > > > Here is the original .o file as well:
> > > > >
> > > > > https://github.com/nathanchance/creduce-files/raw/4e252c0ca19742c90be1445e6c722a43ae561144/rdma-objtool/platform.o.orig
> > > >
> > > >      574:       0f 87 00 0c 00 00       ja     117a <tune_serdes+0xdfa>
> > > >
> > > > It's jumping to la-la-land past the end of the function.
> > >
> > > How is it possible?
> >
> > Looks like a compiler bug.
>
> Nathan,
> Thanks for the reduced test case.  I modified it slightly:
> https://godbolt.org/z/15xejg
>
> You can see that the label LBB0_5 seemingly points off into space.
> Let me play with this one more a bit, then I will file a bug and
> report back.

Something funny going on in one of the earliest optimizations.  Seems
related to an analysis that's deducing that the case statement is
exhaustive (so the GNU C case range is unrelated), but it's keeping
the default case and its comparison around.  The analysis is correct;
the value should never be > 0xF so there shouldn't be any runtime
bugs, but this would avoid an unnecessary comparison for exhaustive
switch statements and save a few bytes of object code in such cases.

Filed: https://bugs.llvm.org/show_bug.cgi?id=43129
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmq3VRLt%2BSUM%3DDo7OqasLqzoj4R00-JZGBWFjj8TccNgQ%40mail.gmail.com.
