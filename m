Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBZXV3KCQMGQEXGAELFY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103a.google.com (mail-pj1-x103a.google.com [IPv6:2607:f8b0:4864:20::103a])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FAFB397CC7
	for <lists+clang-built-linux@lfdr.de>; Wed,  2 Jun 2021 00:55:35 +0200 (CEST)
Received: by mail-pj1-x103a.google.com with SMTP id j8-20020a17090a8408b02901651fe80217sf430592pjn.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 01 Jun 2021 15:55:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622588134; cv=pass;
        d=google.com; s=arc-20160816;
        b=OB8iRJRzOxqqZ2ztCCBGf6lOBZCbDZqDCtq0zeM/8/wRkTEl87SgQ+VxLIKcHZVuW1
         QTU0tB5jMOBexSz0Yu3v6ZrjCrkimcY+XUajhBPBgje+NqEsllDQMQ833HrB09gJmom4
         s6Ci0ajRu9C2J3uKgEp8ujiF5F93ECbJO6GWAbb/Huza1fZleypCemCIGD5+dLldquhs
         KRD1CDQzq98xfwnbKRXnWPOkv4UsDOQ6lgxi1dgKM4nuaVzo32fzX0ehwFM3FnWPEEWt
         /xFWd+f1pcuZFpBVMpqVa9wSM0ysD9FmAAePujGSkbjviP13qkMiKJlW4464ZaHNarAA
         jh1Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=mOtXSjAplh5yPhRX4CyI0Y39KeDnECEZP4vIWJIy0F8=;
        b=SNxcFewXYMyEdQmbctwvE5K7ygP9Ke61QeEBoa2hovb/qQwdGnYdGYW7lCqNT5RXvL
         Xm62rR5HVCvBqbuoXxC8XOO8VLML52+wKTBkAYyVrVxqi4t9WK5nVy7aCh2Zkhd+U0Bx
         YR/4kw734R7oH4Sn8+rWDrDMaj7zdx6uTQUPJubhYMOm7Xp151V+l7MHucSXviXkBaNj
         d5OnqinFNbdn7grogSBjFaUgQla/aoxMN7Qx1xEv7ZHAqPTtyROGbIxB2L/t8rIqJx8h
         /yPMqemLzep2dAazIrHmlX50bPKFz/1xtO45r1PvlkvQeHHOFq57XPQqTO5fBxjy8Zvm
         g+Ug==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=K4sAZIjo;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::42c as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=mOtXSjAplh5yPhRX4CyI0Y39KeDnECEZP4vIWJIy0F8=;
        b=SpcpxCgqLAdO+cctr1jhlVJwo5wO8AtPUEEGw29m6BmGCc6HdWsZdfQb1onml3Vnmj
         6bqynuAfrHM7vkwNQAuIDtgzDC4B7lYHAe3FTYmdVl2dIvenOxfaT+CTNhi2Ry9Zuix9
         LTFpA1Ln+iYQMVm/eGDLTScvEtmL1kGIo1x3Y6l913vBnPvPPzCOmatGamWTRgm2T20D
         UgaDAaUxdIlYsnqvmkPiAEXetZBUz4AyKVXQBwVQF34nTGGh2PfAXtN/J0NkmE/F42Yj
         TKMxPzq4usGpEP4Fk+9AkUrovO6pI3Lfu+Nn+D28q5b8evT5TP6WaErSne9ixU0VYsji
         gQcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=mOtXSjAplh5yPhRX4CyI0Y39KeDnECEZP4vIWJIy0F8=;
        b=hlpAM7BOGRJsqV2143ZtqaKn7nTumLuXKdPvGkg/fb5XhNv1HHCtxxJsS2qWXOxiKJ
         3VGDiO7Ho03Fc+iPjGCzl+G/TqvsubJuQ3un9MWhTEPIe/QC9NGxMeHHobQSSrCGWiNW
         CJhwOh+cvwJvDWtJQGsGmr12sWSSXyid2Rvk0t/ftfFilQNVO09A4pzq/QxwzLaX2mZa
         5Hs1bjuV3QDyesFz/p2A3gKtnYFjKqfdSCZbub3Jc1CtsAECUuz2e5TjVVaHXU5Xbw52
         UiO+Cyipo6o1SkY7uePGmCPnsfktmr1uYaD/UlS6eQ6PAvT2cYYLxOPZiSMC6AuE4v40
         PsCg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533RlwKqKpX/aRR6PPkjRQN+iKSKzvmORLQIr3DkE9d0SVMkTs1K
	nQYXpb52vMRaz8QXiwxHt6w=
X-Google-Smtp-Source: ABdhPJyCuSNfduJpwQXy24cvTcJ9xGEqDwTIXiSyjgaO6MxbIL7//mz9/LGAnGQ4sUyDBhwpL1AVrQ==
X-Received: by 2002:aa7:8585:0:b029:2e9:a990:fd48 with SMTP id w5-20020aa785850000b02902e9a990fd48mr18319981pfn.16.1622588134253;
        Tue, 01 Jun 2021 15:55:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:7042:: with SMTP id a2ls9366819pgn.10.gmail; Tue, 01 Jun
 2021 15:55:33 -0700 (PDT)
X-Received: by 2002:a62:7915:0:b029:2e9:c33e:e6be with SMTP id u21-20020a6279150000b02902e9c33ee6bemr14984076pfc.18.1622588133682;
        Tue, 01 Jun 2021 15:55:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622588133; cv=none;
        d=google.com; s=arc-20160816;
        b=HXSKnK0F+B7phTJfoOLJIVqk93d0dEbZSmDeSFc8z36ZoNw7AgfwvxCmr6Z388J0ph
         U0U9PPVPjpL+ugnA7YJSyMNkaUGdx41KR5NzN1jdUr5TxKzKf4Bzr0/vOtgHhngg4yfL
         BUdKLG3Vu+fXUxPXX/o/0ZvEH16kOfIH9QjOo0lt5kx8p6mn6DiZX7qsZvJ9XvBH6PBc
         /3OkLv7ZN5HX9Ukwuz47foXr8B5CWs1UWqUbtVkaQeC32wgOjnUB8ab9aV/eab+o7bTH
         b3tYN/lsK3YtnL9XVw5klrvFdOF/557kOAl2pEZWLdZaCqEOfLY0ljb0I+qGOKQb99zL
         /xLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Q4W+RK/UiZcP5P0EH3Iqdu3xr4J+8uHojy7d0BiHPOs=;
        b=W0SvOYz+cSifkk9MngOf08hCrsz85VPXO4tdOUHRZkN1D8hTxPsjwLD1vjpHIgY1/I
         pbtN8Zr0u9eMDKb5ND9r4M8Qt527JYJQ9m2tFZnTYrKlExKy1EwzxqtqiOaCsip+k9AD
         E6GNEn1ZMjGE1Gx2hEXoOfMsefNxYgf+bOdQtGt0vo9fqVh7QxpydlaCSprsAeIMyTdv
         52wYyDr2Sh7tmhuZR23s9czx3Q1cLa3tyFPezrC6/LePFI49ZA2pOy3OLkgg4TbvCjIf
         0BaG5YPhSOX3zurKAKoZN/V7P698iOkcZBVKhgLUoEss+WL0W3dPFhD/3eF3mUDKa9UO
         vPwg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=K4sAZIjo;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::42c as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x42c.google.com (mail-pf1-x42c.google.com. [2607:f8b0:4864:20::42c])
        by gmr-mx.google.com with ESMTPS id lp10si110176pjb.2.2021.06.01.15.55.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Jun 2021 15:55:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::42c as permitted sender) client-ip=2607:f8b0:4864:20::42c;
Received: by mail-pf1-x42c.google.com with SMTP id y15so678702pfl.4
        for <clang-built-linux@googlegroups.com>; Tue, 01 Jun 2021 15:55:33 -0700 (PDT)
X-Received: by 2002:a62:5285:0:b029:2e9:e0d5:67dc with SMTP id g127-20020a6252850000b02902e9e0d567dcmr9839597pfb.79.1622588133205;
        Tue, 01 Jun 2021 15:55:33 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id g11sm2784904pgh.24.2021.06.01.15.55.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Jun 2021 15:55:32 -0700 (PDT)
Date: Tue, 1 Jun 2021 15:55:31 -0700
From: Kees Cook <keescook@chromium.org>
To: jarmo.tiitto@gmail.com
Cc: Bill Wendling <morbo@google.com>, LKML <linux-kernel@vger.kernel.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Jonathan Corbet <corbet@lwn.net>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Sami Tolvanen <samitolvanen@google.com>
Subject: Re: [PATCH] pgo: rename the raw profile file to vmlinux.profraw
Message-ID: <202106011555.A7E9BE38@keescook>
References: <20210531202044.426578-1-morbo@google.com>
 <CAGG=3QVdXxLf0T9+n9FidrRcfdWY36m-i=4kPRJjOojWhjiywg@mail.gmail.com>
 <202106011210.B5A8881214@keescook>
 <5615959.Mqr2uNrfH2@hyperiorarchmachine>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <5615959.Mqr2uNrfH2@hyperiorarchmachine>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=K4sAZIjo;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::42c
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Wed, Jun 02, 2021 at 12:40:25AM +0300, jarmo.tiitto@gmail.com wrote:
> Yes, my future intention is that there will be one *.profraw file per module.
> And curiously I would also have renamed the current profile data file to 
> "vmlinux.profraw" to disambiguate it from what part of kernel generated it.
> 
> I already wrote an small fix up that I think should be part of the upstream 
> code so that profiling the vmlinux works better.
> It filters out any module originated content from vmlinux.profraw.
> 
> Above will be probably a good exercise for me.
> 
> Next, my future v2 module profiling machinery
> would probably follow on top of your work.

Okay, great; thanks for digging into it! :)

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202106011555.A7E9BE38%40keescook.
