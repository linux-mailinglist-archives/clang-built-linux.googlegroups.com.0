Return-Path: <clang-built-linux+bncBCV5TUXXRUIBBDHVX76AKGQEHBEKY2I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x239.google.com (mail-lj1-x239.google.com [IPv6:2a00:1450:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id DB600294A24
	for <lists+clang-built-linux@lfdr.de>; Wed, 21 Oct 2020 11:08:28 +0200 (CEST)
Received: by mail-lj1-x239.google.com with SMTP id 76sf1367399ljf.22
        for <lists+clang-built-linux@lfdr.de>; Wed, 21 Oct 2020 02:08:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603271308; cv=pass;
        d=google.com; s=arc-20160816;
        b=bqLV7FC+jEWkdiqkn53Csn3mF8J/YXqFbH3XCWu5YPvboGm8V58hTEJfFsD51JGV9w
         c+IOU0OtuiuUvOcIHUrjQ0CCrZ/1xXAQlXGgYfp9ezF0SwUvfXuJxkrt79dZzYD0Ojwl
         yrnGk/j03CyRHX0SX4cRT17fqUUQyGrCbfVrej6zR59vAnHLBLICZ5Fy3j4gFAcO7JyD
         gJ6Jz7eB+yxaL+wgBJQ46iIkbkVUnAlpYD05CFYsC9xjeUQKtxCBU3VRi4LzkTF7buTo
         1CnEY3JgMrtRwcIf6ksjLe+I3HAf+ivN3YOfT/GPQ0XXTQlVlttBdR5o03IT4+FhDx/j
         H2Bg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=Y8w/RtRcDqiXVeRXlrXS/LmqN4yUHCM9TtWKDj9TYlY=;
        b=0a3xJUKmUkg1AhwReNna3oaFEOewXkttgXjSLUoWHcRM00ehKdK//f6lQrHMoWjjPE
         Sfv3jjbLjjyuSw8ChOi8i71TvSQb84viiko6QZXBXNj7hxSnaMVxnsJeEH44r7l6UwMv
         WdbGF/VUmQ2j4iRPMToug6hVNk7xcqFcSYiUv5jPYo3AfeCP5TtxxSVxy3etR6Dvi0cB
         FTbpk+77E7kjFXMLleezjnZj+aKktrg9JbZK43UB8hBqSmOTj6TfSrAylkj2pIC2rNQZ
         A7J2NRQAD3fdTUzjR6L9VYkv/CaEaYr78szEs16MglRJtbglWYLdVo+pbmRh74gc7hhI
         crqA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=rtIa9spk;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Y8w/RtRcDqiXVeRXlrXS/LmqN4yUHCM9TtWKDj9TYlY=;
        b=UnQ7IqYYo2HXMXhs0E3fSmaoZ0chIPagQGfndAtfZb0EcuU6DIxNWRS8ObHfiP3f14
         WDicFBzJzW40FhyYCDpDkYgAiC6PbLPq/KEFrBzcGpFI6pFF0bzNJc0KuGzV+v5UXKwr
         NUodPXAG9Zoedu5lvEdXQwqh+3MQ/BYeJarS1zB2eFTV1hQXW2DdfbNgjoWV/WO5yEET
         VZ99NY6j5hr49FbTabzLEIUjNK18UysNEeQpGx5e0TutbLLX1T+H92RJ+mxIDNrAgxQ3
         I3SPPiY/IgmG2tb5H/dvR+tGQo7t1zlay4KNsENpcNf3eSInUjJq8W4afjvKKjirn3Gd
         HD5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Y8w/RtRcDqiXVeRXlrXS/LmqN4yUHCM9TtWKDj9TYlY=;
        b=JRDtqj24v9xhdWAeaWjIykrqvkOG+ud1MWP8B9N+sCFet6zu5Zfjr9oKaVrZzHtQWJ
         PyCMBrQpfssY5RXvfLtSzcouulkEkkiekbhsPoHfbXlTKjF7mPURS+b/k6LmGmoX27Ef
         Qc0Nphg+rc46NjG5jf5UTO3Ex8esFZtLN5LAsfsltzIdhgqEhhxjHbmNvVpNdDy03cu4
         xDf9EcGhcZeEz9aNUbVSfpuckD9a2wZNKET++pCleJ6/5P08RZi8beqKOTLg9VfA8baf
         GMBPW3APTi/OkwR7dwQ95eqv7K7zdt1ky49Em4Oo+DmuRmKj0VYzmQv4xYc1+C5W5/db
         F6vw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530LQxJknI+L9g7yHASrL/gOBS67mjC752flDcb7tZy7Sg49KGdG
	2/5zpAv2GL2cq20i0GIuOAQ=
X-Google-Smtp-Source: ABdhPJz/BDW9EFkyCoBSOZdJzyIE7PR43d2pYPrwbE/ztcSxJGdtHNAoJPZLhDr8uFv+OdfvvolxiA==
X-Received: by 2002:a2e:9112:: with SMTP id m18mr1054818ljg.464.1603271308381;
        Wed, 21 Oct 2020 02:08:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:84c1:: with SMTP id g184ls2963941lfd.3.gmail; Wed, 21
 Oct 2020 02:08:27 -0700 (PDT)
X-Received: by 2002:ac2:424b:: with SMTP id m11mr941835lfl.339.1603271307285;
        Wed, 21 Oct 2020 02:08:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603271307; cv=none;
        d=google.com; s=arc-20160816;
        b=IFYgxvPm2hiWqU7hlcG3+j6Z2o3+MqVozFiQrcTd539/DHtT+ONJ4R+C9B0uEv1G1J
         NJlLiJ8njc2D+phtMcI8uNDyoKmvMGOStLVJBTA99F1BAwGqxHC9aKSWj4+WDJIOpLWv
         p1TN6cWTOnC0XYudqC6FTBmSXwgmMm0apY3wv3JYpvAMxgzV4GYrCfHvKikUWOgaI0QP
         mJHxROZktqzW/RRswHbCdBmvFVQGx91PYmQx//bL0XSRUkcnBjJ1fAQVz3DiZevMKTwX
         o3sF7HiaVto0KNDXinCYBMPBPCRANyTOjZ8cqlZvrU4pwBKgFZOyi9+KrWOibS6VFKM+
         gaAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=eb1OL+P4JmUK1jhG+vTVWpbKbq0qkyHl8thry52FTQA=;
        b=mdwRGoj7ixcyJNQj0Xvs1B/N9IU9s5jJpp9ipMO1UJ2j8X1v+ykjFQN4Ut3+L3KzcF
         0Ia1IpKB9blyRIZo3cLbxsS89YJXSm9cfksl1y930f+mYymHuGdtukgYhJOSmqie5njV
         W24/o3EPVTqxF17nrPA3JjdU04bbsDy1d4AUiKNwmuaWyzzjux+xxZNi057D9YlNnT2P
         wU5Qd2+RjQ3/0rnepIVksy9IsSkcK2ubpt9ikHFtzpSjzyOWvycG5xg0AK46gwWMBdnl
         UjsfvuJ+p19CwLPboTSkAyVBeIpAVpztLoZc9bVw1uV1jVbY8L2IYkZ6MCruhsX3qa2s
         yoxQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=rtIa9spk;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id e15si26172lfq.1.2020.10.21.02.08.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Oct 2020 02:08:27 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=noisy.programming.kicks-ass.net)
	by casper.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kVA6W-00026P-MZ; Wed, 21 Oct 2020 09:08:21 +0000
Received: from hirez.programming.kicks-ass.net (hirez.programming.kicks-ass.net [192.168.1.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client did not present a certificate)
	by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 7B5E2304BAE;
	Wed, 21 Oct 2020 11:08:17 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id 6997B2BB99C35; Wed, 21 Oct 2020 11:08:17 +0200 (CEST)
Date: Wed, 21 Oct 2020 11:08:17 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Josh Poimboeuf <jpoimboe@redhat.com>, Jann Horn <jannh@google.com>,
	the arch/x86 maintainers <x86@kernel.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Steven Rostedt <rostedt@goodmis.org>, Will Deacon <will@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Kees Cook <keescook@chromium.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Kernel Hardening <kernel-hardening@lists.openwall.com>,
	linux-arch <linux-arch@vger.kernel.org>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	linux-kbuild <linux-kbuild@vger.kernel.org>,
	kernel list <linux-kernel@vger.kernel.org>,
	linux-pci@vger.kernel.org
Subject: Re: [PATCH v6 22/25] x86/asm: annotate indirect jumps
Message-ID: <20201021090817.GU2651@hirez.programming.kicks-ass.net>
References: <20201013003203.4168817-1-samitolvanen@google.com>
 <20201013003203.4168817-23-samitolvanen@google.com>
 <CAG48ez2baAvKDA0wfYLKy-KnM_1CdOwjU873VJGDM=CErjsv_A@mail.gmail.com>
 <20201015102216.GB2611@hirez.programming.kicks-ass.net>
 <20201015203942.f3kwcohcwwa6lagd@treble>
 <CABCJKufDLmBCwmgGnfLcBw_B_4U8VY-R-dSNNp86TFfuMobPMw@mail.gmail.com>
 <20201020185217.ilg6w5l7ujau2246@treble>
 <CABCJKucVjFtrOsw58kn4OnW5kdkUh8G7Zs4s6QU9s6O7soRiAA@mail.gmail.com>
 <20201021085606.GZ2628@hirez.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201021085606.GZ2628@hirez.programming.kicks-ass.net>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=casper.20170209 header.b=rtIa9spk;
       spf=pass (google.com: best guess record for domain of
 peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
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

On Wed, Oct 21, 2020 at 10:56:06AM +0200, Peter Zijlstra wrote:

> The "falls through to next function" seems to be limited to things like:
> 
>   warning: objtool: setup_vq() falls through to next function setup_vq.cold()
>   warning: objtool: e1000_xmit_frame() falls through to next function e1000_xmit_frame.cold()
> 
> So something's weird with the .cold thing on vmlinux.o runs.

Shiny, check this:

$ nm defconfig-build/vmlinux.o | grep setup_vq
00000000004d33a0 t setup_vq
00000000004d4c20 t setup_vq
000000000001edcc t setup_vq.cold
000000000001ee31 t setup_vq.cold
00000000004d3dc0 t vp_setup_vq

$ nm defconfig-build/vmlinux.o | grep e1000_xmit_frame
0000000000741490 t e1000_xmit_frame
0000000000763620 t e1000_xmit_frame
000000000002f579 t e1000_xmit_frame.cold
0000000000032b6e t e1000_xmit_frame.cold

$ nm defconfig-build/vmlinux.o | grep e1000_diag_test
000000000074c220 t e1000_diag_test
000000000075eb70 t e1000_diag_test
000000000002fc2a t e1000_diag_test.cold
0000000000030880 t e1000_diag_test.cold

I guess objtool goes sideways when there's multiple symbols with the
same name in a single object file. This obvously never happens on single
TU .o files.

Not sure what to do about that.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201021090817.GU2651%40hirez.programming.kicks-ass.net.
