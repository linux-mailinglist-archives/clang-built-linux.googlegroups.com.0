Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBZOU4D6QKGQEQ4XQ6KI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23a.google.com (mail-oi1-x23a.google.com [IPv6:2607:f8b0:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id ABB112BB7A3
	for <lists+clang-built-linux@lfdr.de>; Fri, 20 Nov 2020 21:43:18 +0100 (CET)
Received: by mail-oi1-x23a.google.com with SMTP id q141sf4955894oic.22
        for <lists+clang-built-linux@lfdr.de>; Fri, 20 Nov 2020 12:43:18 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605904997; cv=pass;
        d=google.com; s=arc-20160816;
        b=Z8Wvz4EZSdnz3BwhGmguYv5K4qvmKh9eyVlhiuxysmoxHb1i9F6kkBE1/tbXDUgKZF
         799HdtKkVlWqTRailqZ07BCqI23CTFL6LYtxuDli+gxbmKS6fB/6V4eXlK2EH8H/rFEQ
         Zek9LjH53nBeywbXX0OaoTpgu5vFeW2fJDoHFXcDQFy5/dT3u5Mqy4DG14NSixgSKznr
         cM/p3G1+3xVK05kejCVtZFDquKvvmgge+uLrkAVegMGb9xY1mAjQaEhhfk06KQoR1P4W
         5oHxSX8hwSrLpQcr4vnN/D/8X0aiUQwEB6wsoyS3dvlkTRmwWMVCVWuArKVpWLS/F/99
         mZYg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=a7Tpy0reSF7yn3AfsKe5vtcSeGxQJL/lW0He3SPtl4E=;
        b=S/OuGzt/hAtnqOdKOLr1g4hoz20V3tMfcDPOh72b8Ep67pAAGDXyNfaFVj6oIetJxw
         b4FLjEumFwfXZh/YdvgwBUoyLHUagJHXylMRiFnahKTz72zqj44WpOi4uvSp0AGWj7BF
         DQoMQscnL713jXR/RbJjsD8SnD2Vo4/hWhlUIEvfFLwyF/afKwEnVhVuPQSA/Bxgtg3W
         XLy2ccBuin4Wl0h3X7l7AfCFhY9GZ9csi2rU6YzjRFgw3xFs4l6RsDPEutaqoG48mSEQ
         oCtf7lNFHWcxit/p3N6nLQYt84mCCsdG8NenWghinqgbhXg+YZqDvv/aAm89h8sFQVYY
         vDrA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=GpFB8JoF;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=a7Tpy0reSF7yn3AfsKe5vtcSeGxQJL/lW0He3SPtl4E=;
        b=HR24gavTguUq7dh0fD4tLn02XIyH4nyV8w4zGI6W91qKgFoMdWoDBL88qNXfxDSIx5
         atcRyrWYOJ97V7jBJ68BpkN/92MN0ef19qZyBPo+tqSXxGBRYdx1ECtEJIhcau0ttZfP
         TClRt5LS5Sw3OrEXCJEUDq8Ne8QMDv5VswqeqYA3GXeU24to9ZT/O/PeuxSx89epTdC1
         XQUTGNe4Jkwmie0ZGqYw2g8e6ZWebu/y5uIryb4F2iUqGqnLY+kBqf/rtvQLF359EX3y
         1w3UzNbQO+zcOqFuceGO/n0EbC+krQDNKNMAECmNEs3HCFTGBhz41SzogiVIkYZ/FKJP
         WL4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=a7Tpy0reSF7yn3AfsKe5vtcSeGxQJL/lW0He3SPtl4E=;
        b=BQlMZWOsf0ExLpsjbUU2ACeb7P+2AeRV37ogeogVqm0DK9aXXt+WmQ7dEzwmmHZfYS
         dKw2tf5/3weUvM290ZiZelKxo3xoVmqePqGHbji0VgOjprS13hrFy8Ip3xP8METWwW+z
         WmmhwTs2P97ZtBV99UTw0Q6SMsX8kLsuvCeHgRFzy0QVv0AFUx2YqlPunK+ZkrXe3GKh
         kofBhulRde25jS46A5xYXvxH7jGhuEbFzUmk8U3q/jUjkcKS9r4PHXzs6UDBOiB6UYgU
         8gGCSWuF2zm7v5Oq5yuOunHYCOOyj6X8gxnmd0psOgiF/uL6ZATsyf7UXz1c9ecMW+yI
         HbjA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531LrTkcin1oyx8I8Jc8T1Fc0uIwQQWBJrhv7gNfbUJlkHUUuKSU
	W+T/FprsgmQItS5hyIyVfs8=
X-Google-Smtp-Source: ABdhPJw531XiyfYDCqOn5cMP/wsVzXIMAdwJk78F32YHywYr/BKQYVqxSiBTpOuxdonC2diysTEwRA==
X-Received: by 2002:aca:3dc3:: with SMTP id k186mr7616610oia.156.1605904997644;
        Fri, 20 Nov 2020 12:43:17 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:1ca0:: with SMTP id l32ls1915434ota.5.gmail; Fri, 20 Nov
 2020 12:43:17 -0800 (PST)
X-Received: by 2002:a9d:3786:: with SMTP id x6mr10393632otb.103.1605904997232;
        Fri, 20 Nov 2020 12:43:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605904997; cv=none;
        d=google.com; s=arc-20160816;
        b=WEENfR8espYkLrec52d4fMaBNELIdkIqZ5v14p16V3jUwHhkKIl6Wn+sqAyLJe38B/
         L97co0Syhpxk3RJGdYd9cAo1qFQqC44V2mWSJxLqYb0lGvVj4ITO8t+rwfa0/Bel2HsG
         RGb3KkTUjorBxySN2iZVXPvnzVA/VzDYoLbCCVz4AlbneKf1GFhCMNCymTO3cmaSQZxL
         FK5gKUJWw/OFhUh1SLLQYEPb3s57US8BqhB68eC3/T2NVP21PjrY0+GzggwNg9Hk6a44
         hU9fKPfv5ew973mmsRqn0LzERBNzL1rWGC/UC6g+dKR53UZafR1O9KaP+7OJGjxfGhzF
         mlMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=i55oAU3/0ChRWnSy8Vy2lsf5/3oQQZ1SpwWH7R5fDAQ=;
        b=YDC91gMW/ZA0p9oubb2LwC2sYpoZhkgBcF59Vf4MD3PIG7yAHuGk/Nn2KSsoLlWX0P
         EGz42rCXio/VpXd9SToumyBbYaPi2nnr52+ZJWWV6+0+S8HQyyFmpCu8t6L7bho04mcP
         3pddhWHNIuQMtMdNoyhetwzmZzJ1zlpihabiNhIT/DaGUgNQfmxDgdUZN2rYb6fntEXw
         NQ5swh+KwNgCPNvl4uPvMTUr3jieTSg6pOgaY4EH7AHVL96RHpzItwrjEfjrtUYdcEjo
         z38ittYyFUsd0N8yNR1kQzrj+jP4m5n8G3fFxGfvTgsgQfZlAcSg4OP7wlyYTLgMjJIt
         Md7g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=GpFB8JoF;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id e8si303976oiy.3.2020.11.20.12.43.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Nov 2020 12:43:17 -0800 (PST)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id q10so9021472pfn.0
        for <clang-built-linux@googlegroups.com>; Fri, 20 Nov 2020 12:43:17 -0800 (PST)
X-Received: by 2002:a17:90b:e08:: with SMTP id ge8mr12659157pjb.29.1605904996598;
        Fri, 20 Nov 2020 12:43:16 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id l133sm4882417pfd.112.2020.11.20.12.43.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Nov 2020 12:43:15 -0800 (PST)
Date: Fri, 20 Nov 2020 12:43:14 -0800
From: Kees Cook <keescook@chromium.org>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Sami Tolvanen <samitolvanen@google.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Steven Rostedt <rostedt@goodmis.org>, Will Deacon <will@kernel.org>,
	Josh Poimboeuf <jpoimboe@redhat.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Kernel Hardening <kernel-hardening@lists.openwall.com>,
	linux-arch <linux-arch@vger.kernel.org>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	LKML <linux-kernel@vger.kernel.org>, linux-pci@vger.kernel.org
Subject: Re: [PATCH v7 02/17] kbuild: add support for Clang LTO
Message-ID: <202011201241.B159562D7@keescook>
References: <20201118220731.925424-1-samitolvanen@google.com>
 <20201118220731.925424-3-samitolvanen@google.com>
 <CAKwvOdnYTMzaahnBqdNYPz3KMdnkp=jZ4hxiqkTYzM5+BBdezA@mail.gmail.com>
 <CABCJKucj_jUwoiLc35R7qFe+cNKTWgT+gsCa5pPiY66+1--3Lg@mail.gmail.com>
 <202011201144.3F2BB70C@keescook>
 <20201120202935.GA1220359@ubuntu-m3-large-x86>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201120202935.GA1220359@ubuntu-m3-large-x86>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=GpFB8JoF;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::441
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

On Fri, Nov 20, 2020 at 01:29:35PM -0700, Nathan Chancellor wrote:
> On Fri, Nov 20, 2020 at 11:47:21AM -0800, Kees Cook wrote:
> > On Fri, Nov 20, 2020 at 08:23:11AM -0800, Sami Tolvanen wrote:
> > > Changing the ThinLTO config to a choice and moving it after the main
> > > LTO config sounds like a good idea to me. I'll see if I can change
> > > this in v8. Thanks!
> > 
> > Originally, I thought this might be a bit ugly once GCC LTO is added,
> > but this could be just a choice like we're done for the stack
> > initialization. Something like an "LTO" choice of NONE, CLANG_FULL,
> > CLANG_THIN, and in the future GCC, etc.
> 
> Having two separate choices might be a little bit cleaner though? One
> for the compiler (LTO_CLANG versus LTO_GCC) and one for the type
> (THINLTO versus FULLLTO). The type one could just have a "depends on
> CC_IS_CLANG" to ensure it only showed up when needed.

Right, that's how the stack init choice works. Kconfigs that aren't
supported by the compiler won't be shown. I.e. after Sami's future
patch, the only choice for GCC will be CONFIG_LTO_NONE. But building
under Clang, it would offer CONFIG_LTO_NONE, CONFIG_LTO_CLANG_FULL,
CONFIG_LTO_CLANG_THIN, or something.

(and I assume  CONFIG_LTO would be def_bool y, depends on !LTO_NONE)

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202011201241.B159562D7%40keescook.
