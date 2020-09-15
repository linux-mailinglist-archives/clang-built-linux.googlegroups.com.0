Return-Path: <clang-built-linux+bncBDYJPJO25UGBBSMEQT5QKGQEPYPKRKA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x238.google.com (mail-oi1-x238.google.com [IPv6:2607:f8b0:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id C4F8F26AB72
	for <lists+clang-built-linux@lfdr.de>; Tue, 15 Sep 2020 20:04:58 +0200 (CEST)
Received: by mail-oi1-x238.google.com with SMTP id 6sf1814132oix.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 15 Sep 2020 11:04:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600193097; cv=pass;
        d=google.com; s=arc-20160816;
        b=S91vPhJQgYumD681JHrAC00uY5uE0ITgU+57Msx+F6mVdH4ylk0HnDxquYWUW14fJb
         jsZ2Fo7Pa3KB/psAPCUDapAUZ9G9wo5Imdel8g3GPFsDeY+zKHQ2beupcHCFTw9TrPzq
         KbKhyoLmFdeTqg3KeRjJCN7M/+a80y2bxWTci2xYmbxWwBr30QNWJWQMI/eW7EW9DaYZ
         Z6FDtHv4PGuJVA//E9sjGwafI7DZt2hlEr7Df/Dt5JW954/lXiqs7+NlQbkAu2a19Uh8
         ZjrthOwrcEZsABZqyBaL3TUb2v5T0QyViRuTh0OvEmf4szJAOshlJeb1i0aJmcs8ZPxy
         W5ow==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=353cT+TYxcZf7TXI19cu9Jsa11hpQ3kwH6zImeiMwdY=;
        b=rdBVOqk6fs6V9zltbwcOdDdlJ9Pon5BxZtaDftFV9j9Iph46NpEOlsLWXLFt3XmzzV
         8SmFgJ5p096MogTLbYJCBiam3JX0ZrjAfGp8ZMkiuS2Gh4X098xBvT8op+aBrAB7Y3KX
         kNiJtyVi+GPjdC4Q89gI3d2wLViI7OQA9rvzyEp1o8VBJJSa8b7eq2V2jjFVSEBjouG7
         +r3WHIGaNMRpSruXWFwjrU3ILGCX78gM8On6O28Pij8XW91VVMF81gCbkt6aGCONlYnq
         21z3ZlHsIkV36jByYCp9xqt7eOXuSQs8m4NEpS4NKWq8M3n/jeKD9O2nwNrCNLnorS7C
         vLGA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=i5ppXVeH;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::535 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=353cT+TYxcZf7TXI19cu9Jsa11hpQ3kwH6zImeiMwdY=;
        b=KaTGWf4i+4sMHVGSatWq7+S4w81RuNT2Nh4rcBAMikEZswNCXxbWxb6hsSIf8akOYE
         2jMr8LPet+FmrpLhoaT0LIClvUmU+0oSgMR+GKF0H5dwgffWZVrqvGOm6qdVLpft8AL6
         ABuloQabj+2YklZ0zw5+Wk616G6V1HlJqkAhlBQ6Oux68A6Rw9hqe8Y5XX70u23+tw3L
         LMjaqRuu47HzGZvZx4EScBHQ6bby54BNYBJhWFrPHPgdE66Kn+lYsRuGqswumQwi6stK
         /p4mSedajwi+7NnU73U5qXxoYHT8+Ueqf9hvLayEwm2opN4S9hF3Vrr4PdvZVQAC5SX4
         kgIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=353cT+TYxcZf7TXI19cu9Jsa11hpQ3kwH6zImeiMwdY=;
        b=EUU4YvCShbU4tsG1KIdKfNg42C6KzT/l5XBVhMULH+BrcHmeDD1kws2h+jyXsSV6k1
         +upMjABNuDqNPOvm3Km0oo/Aoliwkj2go18RSI7J40kcGCvy/4RuTZkgTiYqfjJPFLKx
         cvz7yZliHurxVUVqe3+vJkzag2nF/XEgEcXWmuPszPIZAtxKVedHwN93yk+xhPiy72Ov
         YI+W5AuL98SidVjIHhrjmoc3bY/wJiUm6vpzyy3mr6ORF8p9U6U3WqZq079h0Fhh3Wt3
         snJzjD3dLmJQHKvxUp0KfqpDXjrmbHQGukc4lAdXqjlhy/F7BWiAkHRd1sGHCtdO+KBo
         F1Gg==
X-Gm-Message-State: AOAM533dEl5i/IH5wy0eMJPt4KuyhoTejwtU+8Qb3x+5CsinKeRd97nL
	KhUaKsiGvD9YsLhXu/FQFgQ=
X-Google-Smtp-Source: ABdhPJyQwTvsrGbbtleRGqIJQtIyOROrGQBDWY+hVjqYZnI97LjKQ1KlgCzep8BIOGzrBx1gSuVxgA==
X-Received: by 2002:a9d:62c7:: with SMTP id z7mr14054323otk.286.1600193097588;
        Tue, 15 Sep 2020 11:04:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:4c51:: with SMTP id z78ls3121725oia.4.gmail; Tue, 15 Sep
 2020 11:04:57 -0700 (PDT)
X-Received: by 2002:aca:5605:: with SMTP id k5mr466312oib.21.1600193097253;
        Tue, 15 Sep 2020 11:04:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600193097; cv=none;
        d=google.com; s=arc-20160816;
        b=ob5tXAJVT/YNx0LK3+uafDvxQ4zrOm2aYPyBFz5IpnxeUrwj7yeO/A7ZzVoNN6Heqj
         Tef0X1H1BtTuIVjLvs7Z/JppxuGfvz4aUeQ8DkaH+FrJQ1H6ijddlkIoPReB0f6Bv+a8
         SI2yAuZrXH0YXA9a7lePeI6K9FKSaDoiHuq5xlppkpcjAN/+idSYxS4HsnzXOBjJRGBV
         di09MfgxiQmwK3n4jX0GdZy7Y0vjFjBjMVqsGa3Yza8YS3dlbXs+LWV9DEBHS1XgC2o0
         ySBE3RlWabgMz8hznct52ShVEM/ZgoNBAbjhYCeYXHInlVmL69Nf8nybywoF4nEm/Y3u
         bR5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=c2yuM9K/g3v3IWVnsZSay3LazI4xrYVdjzE0nJv3Z6E=;
        b=z+tTaYo4gnBxMkGE6NWeH7UOANFlu4t9D9WNi2eETs43b6wWI7DkiJ9fXqgGOxZoL4
         MZ+ovMMlTECdp38prqpGc2vjlCyi/Cp9ZQUt166x4UBUv8S+d0kmFKH6b7hqLmIjDw1k
         9S40EeeAA7F3nYPbVVWd1/6bXCr90w3xcmPa1rcZTiP1TitMXvIkWr91TVlEczcn3FzV
         b6s4UN1PqFI2pxUxOTT9D6vm2c8Dar+GOlAglPgPfaIKpS8wC0rLXzeJpcXY/g6J1Qx2
         phWWLT996NtAJWIQ+G1e0WCtdU8XAKR9BQgWd02u2PZIMbkiAC7XG/keaiH81ghVfBRZ
         boHg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=i5ppXVeH;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::535 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x535.google.com (mail-pg1-x535.google.com. [2607:f8b0:4864:20::535])
        by gmr-mx.google.com with ESMTPS id b12si433078ots.3.2020.09.15.11.04.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Sep 2020 11:04:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::535 as permitted sender) client-ip=2607:f8b0:4864:20::535;
Received: by mail-pg1-x535.google.com with SMTP id f2so2412461pgd.3
        for <clang-built-linux@googlegroups.com>; Tue, 15 Sep 2020 11:04:57 -0700 (PDT)
X-Received: by 2002:a63:7882:: with SMTP id t124mr5873220pgc.381.1600193096424;
 Tue, 15 Sep 2020 11:04:56 -0700 (PDT)
MIME-Version: 1.0
References: <5f60c4e0.Ru0MTgSE9A7mqhpG%lkp@intel.com> <20200915135519.GJ14436@zn.tnic>
 <20200915141816.GC28738@shao2-debian> <20200915160554.GN14436@zn.tnic>
 <20200915170248.gcv54pvyckteyhk3@treble> <20200915172152.GR14436@zn.tnic>
 <20200915173430.GS14436@zn.tnic> <CAKwvOdnqJJ8Ot6sRvVUTyuwA_zhRQXOnMU9KS6aVcTqRGb3JmA@mail.gmail.com>
 <20200915180141.GU14436@zn.tnic>
In-Reply-To: <20200915180141.GU14436@zn.tnic>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 15 Sep 2020 11:04:45 -0700
Message-ID: <CAKwvOdmVTh8Erha=e97RUp4w-LOq==gV2wyj_0vi176_ZrhTGQ@mail.gmail.com>
Subject: Re: [tip:x86/seves] BUILD SUCCESS WITH WARNING e6eb15c9ba3165698488ae5c34920eea20eaa38e
To: Borislav Petkov <bp@alien8.de>
Cc: Rong Chen <rong.a.chen@intel.com>, "Li, Philip" <philip.li@intel.com>, 
	Josh Poimboeuf <jpoimboe@redhat.com>, kernel test robot <lkp@intel.com>, x86-ml <x86@kernel.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=i5ppXVeH;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::535
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

On Tue, Sep 15, 2020 at 11:01 AM Borislav Petkov <bp@alien8.de> wrote:
>
> On Tue, Sep 15, 2020 at 10:41:24AM -0700, Nick Desaulniers wrote:
> > We want them finding bugs in unreleased versions of the compiler,
> > before those bugs in ship in release.  This is a good thing.
>
> The bug report should probably say that compiler used is an unreleased
> one so that I can prioritize better.

That's not unreasonable.  Calling attention to W=1, randconfig, or
unreleased compiler would help.  I tend to deprioritize the first two.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmVTh8Erha%3De97RUp4w-LOq%3D%3DgV2wyj_0vi176_ZrhTGQ%40mail.gmail.com.
