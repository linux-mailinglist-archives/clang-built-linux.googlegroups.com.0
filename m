Return-Path: <clang-built-linux+bncBCV5TUXXRUIBBQO6WX3AKGQEKKGNVNI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43d.google.com (mail-pf1-x43d.google.com [IPv6:2607:f8b0:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id D8DEF1E2F0E
	for <lists+clang-built-linux@lfdr.de>; Tue, 26 May 2020 21:34:26 +0200 (CEST)
Received: by mail-pf1-x43d.google.com with SMTP id k14sf4058661pfu.13
        for <lists+clang-built-linux@lfdr.de>; Tue, 26 May 2020 12:34:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590521665; cv=pass;
        d=google.com; s=arc-20160816;
        b=hccsWIVVqA5zNEYYT98H5mTwOfgbCjwhEsNAcPLepuHIlF9OMhoUHJ5TWHnaLPoMWu
         mjQrUF3VFrc+Bu5DPGojCs3J41q2O43G5655DfpxPG8vZ5CZKEBj1NNyji6Jnzf5RUmQ
         biLSDSmugLTtXVCCta5Qjmmrj9y7uGs0/OFof+FX/N7+/v9gao8bdbJ7lKja6waVIjpR
         exuqkRwkagNzA3gel4lZ2tcS3Y+uqYC/LosIf+9nE8pvv4eRl+nuo5dejlUr1PEMzQXB
         PUxqBgQOI0iqsAMY4mXQj9R2a+u1/OZXR1m6QakLPOvk2YjyHO9eQU8Ny7DGZ3n3UcPa
         1R6w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=oYbvcYJaRY6gwv0ST1tXJRzo49GuTVLbGoKqCwK5epI=;
        b=uayRBUnaX2tDg3Gpyd/zGbwW3hYzJ7SvxIhvkbtbbjCSM/NEOD75TREEBc7mc+f3Et
         Nte4n1W/q1Vnp2jROwYkzrOhk3T5M9cA3oLjThZDtPuOKxq/8cJm+cnjRhs8yz2dGA8B
         S69BrWV+tdDFuKX+X4VpZUOGiKph9T8hCNdFdlOPu7QGDrFelv+4wwkfjtuujAS8o5Fe
         Vh4Dcgmt7txcXyRyvMxMsipk9eGpn951CJtGqeY0IXznmjxK66/EwLx90NJk9+6Kim5x
         UW9N3qXT/E06tmbAq3KiAdFhOZuWRPgLaNFucvE+zIA3bJaMMpjhysbQY3d2wxIC7Y/h
         kI3Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=QhUufMNv;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=oYbvcYJaRY6gwv0ST1tXJRzo49GuTVLbGoKqCwK5epI=;
        b=X07EKEnl+GNBami7171NvKUCkBe5i8wr+/fpQK6eXi8AgymopKLlnKhNWRpp1QspIK
         Ji9Wk32+K0raVyD5dvGeJpJsONXzCHMEnugJ3AXnt8FzYD8Ti/gOUMxkHAlvx3202NWg
         1Wf8sHZzzfHLQBndyd1cE+/A0mOpYCDezA3sREdDB/pALDZoTnR32MM1cw4l3WQjeQ/0
         5sysj7qEdQG53BnVlrze94iyy5USOgejpS0E8ngw5IA+Rm4mcCPtjOyYzXwjCOc1RYnJ
         nnFBVydQtu8qoTekE+2RRpV3UhYOfRnR28+FkEqRgURpr84NxeWmMfq1nXNg0zVsGhYD
         rSEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=oYbvcYJaRY6gwv0ST1tXJRzo49GuTVLbGoKqCwK5epI=;
        b=W3l9Ibn8OFQ4H+RehhX1oSRZtPM2exQla0ggOS/1FVAB3CKZVK93RTXbLjefOYJ2ZL
         ify0DUVPUqHvyjIm5RFRiJOmjqQ1wKEDizyjH8hJLO+60ZpNaVBQCcUdrN4Zg1WXkV63
         82w6h6IlXWCK4D7LQyqXUyJbPQFVXgFF4f7eu+wQGRctil1i4datfo7bXPpQwmlo6Xnd
         ibnS0HOidU7t2+SvhACQU+ZFNF+yCs1s/Ysg7pWy8w9uTxmAr9H24cVJDNKm/YhVH7yc
         /gwOId5cwmgow1MWth025sY+XrCoTupeOUZgCH0Q7fVCIQcNh5FhGeK/mA+XNVl/fOqu
         D+0w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531jcGfO3N4w43lb7B0f94cGVj4bTlyCopDq0YLcx8qhDo12pOF8
	TW7dy5uWN/AGd70OVk2of+4=
X-Google-Smtp-Source: ABdhPJyTHtb3WRF8e5Bpe36I06N6Q9Q8PNBmS86rfMoXOu/2w6MnkqGhdukF4f6z1qT3f7Ccu1KWJg==
X-Received: by 2002:aa7:9a4d:: with SMTP id x13mr398063pfj.176.1590521665579;
        Tue, 26 May 2020 12:34:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:44c:: with SMTP id 70ls5218948ple.10.gmail; Tue, 26
 May 2020 12:34:25 -0700 (PDT)
X-Received: by 2002:a17:90a:d484:: with SMTP id s4mr851931pju.206.1590521665236;
        Tue, 26 May 2020 12:34:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590521665; cv=none;
        d=google.com; s=arc-20160816;
        b=Y9J5g+ypB9KoP3JMd4gxPiSnUUEAG/IoMskcoqDK8U1RfRq/bsOL8MFzl0/O9+DzT6
         pUoAvs0/tWmDloGs4eGw11V4tt3fxWvFe55ZOJo2IAtKN/U4ml0OHBp1kpj3Ax3JGO2D
         P95SL5Y/xp0DDNvAJA8c7Vx+FBjbUVfoLFqZpUskftrELZlFxTCz80Zuf8QA0v9/Avpj
         PmtGLL1n0wqYHpfU+Ecw0VhzUmprn93EpZOOZfQHIMB2DrhJSjRg24RFFLzbKloqJDkQ
         Y5BOkdZzGR4sGmSg34hGrbUU8QPEufq/ectuAhtpNOcb6+GcYx2edvZT91XVqxB32ps0
         PSmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=LM0LYOaekLd6sJXoQUvpdm8EjWBhPkZpmmjsh3oUMKA=;
        b=iyeytkotqMfn10h06+sljryWSdINDWx+e0XyV5Dr63CAu350JyGsXb7ZkffTBHtqG3
         Ei4P7k8ErnrdD93nsDfuAxnrekKiX1HBwKsZruDzDHz29e5t7XmqIvEfeBzZ0+d1Izhp
         PUGO3WIjhkgfQNer9BhYoUpiyIu6W/drtSqE7T9LcglN5Nlxb3tUaExI0KgGBgAcNxDA
         i7J4wnOgyORrTUqOK5/49ufb/0tRPTo4iUmbLVvQkM1mhVucPtiyXhx/zv/nqLZ1YcMc
         gFH84sZTCCKEvZIiZqhPL9An0Veg/1Q2GM31oGYug9oWpAhjZ99DUHu/CI25VkhTuBdq
         yjuQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=QhUufMNv;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:e::133])
        by gmr-mx.google.com with ESMTPS id a16si88215plm.4.2020.05.26.12.34.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 May 2020 12:34:25 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2607:7c80:54:e::133 as permitted sender) client-ip=2607:7c80:54:e::133;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=noisy.programming.kicks-ass.net)
	by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdfLD-0000iW-VF; Tue, 26 May 2020 19:34:24 +0000
Received: from hirez.programming.kicks-ass.net (hirez.programming.kicks-ass.net [192.168.1.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client did not present a certificate)
	by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 0C412307A6B;
	Tue, 26 May 2020 21:34:20 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id C0FB52BBAA8F8; Tue, 26 May 2020 21:34:20 +0200 (CEST)
Date: Tue, 26 May 2020 21:34:20 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: kbuild test robot <lkp@intel.com>, Oleg Nesterov <oleg@redhat.com>,
	kbuild-all@lists.01.org,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [peterz-queue:sched/core 8/8] lib/math/div64.c:194:1: warning:
 attribute declaration must precede definition
Message-ID: <20200526193420.GE325280@hirez.programming.kicks-ass.net>
References: <202005231418.iVv6BaVV%lkp@intel.com>
 <20200523210231.GC2483@worktop.programming.kicks-ass.net>
 <CAKwvOdnRDbUXvfGsP9VX47nkuD3a8G_jWmGkH35cMcAATmgbvg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdnRDbUXvfGsP9VX47nkuD3a8G_jWmGkH35cMcAATmgbvg@mail.gmail.com>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20170209 header.b=QhUufMNv;
       spf=pass (google.com: best guess record for domain of
 peterz@infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=peterz@infradead.org
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

On Tue, May 26, 2020 at 09:53:47AM -0700, Nick Desaulniers wrote:

(I'll play with your other suggestions)

> Another question, how come the `__weak` definition of
> `mul_u64_u64_div_u64` doesn't follow the convention of the rest of
> lib/math/div64.c of using preprocessor guards?  Maybe that's more
> appropriate than `__weak` definitions?

Maybe I should; but Linus suggested using __weak, I suppose because he
don't like the CPP guards much.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200526193420.GE325280%40hirez.programming.kicks-ass.net.
