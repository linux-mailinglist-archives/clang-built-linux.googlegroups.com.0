Return-Path: <clang-built-linux+bncBCK2XL5R4APRBPOQ32DQMGQE7QKPVCI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53f.google.com (mail-ed1-x53f.google.com [IPv6:2a00:1450:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D0BE3D07F2
	for <lists+clang-built-linux@lfdr.de>; Wed, 21 Jul 2021 06:53:17 +0200 (CEST)
Received: by mail-ed1-x53f.google.com with SMTP id eg53-20020a05640228b5b02903ad3cc35040sf400531edb.11
        for <lists+clang-built-linux@lfdr.de>; Tue, 20 Jul 2021 21:53:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626843197; cv=pass;
        d=google.com; s=arc-20160816;
        b=b7DyQ6bqpmGc/yqwlHm+hsI6bbOcqM9X1uJZ0Y2V/DVT93BMAg1q8jYndxF68PJ0YD
         9BDXseuPZ+rEDKdONlbpyrhn5hQDUOKdLcm4tsBijSUvWihYN7TZu28UEcMYFVBHiJ/p
         UcdM0O/TFSATOnIxZjm4dht38x2nvvi32kKaiK1+szfEHpHWK2ZmEWwEpv+nwshIff7a
         YwdP0tjEtocQD4+LdH3bp16l76h8RfwmAg+pFrru1mG8OuX1JDuIx2AOSA/ONbi4LCFg
         T2c9Jm8CvfAPXXqe62YMCyfJYTzWGNm0xkOCXRUdYahjX2fV+ZUc1Qacnc1dW9tXVWQl
         CZ+A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=PeXGTiuWU7TroD9Fyb3x5q/JyuZiBfUmsoJjfklcKh0=;
        b=Bmu7bUIFFfwObu4uEq7S63MBUQxjBxJRSWnZDK7Dz8fVNwJ9/BvlehyuXtzcMMXdea
         1D+TY3tWp/OiBUm85jepKt5WaUwnHzGi8xApUYjKF+fHtCu5dfvEmRe3wYWyR0qd93Dv
         d9o1MYSpgH6DOgJeHIfp7n+ejEDXPBfNwDUJSyHqyWyMtH7nu12WqOdmFo+uvCHrME5y
         UWtqTzNcyDvFkQBM90lGpRo4g5F3CAtTyZailihySbgyoaXMI4pofxHBgZ9BuBIa/2av
         wjdwotxto9B0oEpBwT8kg90C/D3RwQK7bvohtA413yAEs7X4Rn5JnFMkWqC3/+LPMINm
         6rbQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b="te/y9365";
       spf=pass (google.com: best guess record for domain of batv+75be22767c7c0793244e+6541+infradead.org+hch@casper.srs.infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=BATV+75be22767c7c0793244e+6541+infradead.org+hch@casper.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=PeXGTiuWU7TroD9Fyb3x5q/JyuZiBfUmsoJjfklcKh0=;
        b=RLNfYUzcGdf1M2Olx2ZFHgTJWGB5J9X5i3YXbXZSz1MGHg1ev+pKXlJnxrPQUeCIQ8
         jYvkANWcFCxrl/eCujUVW4MZ/0wAMicSivA07T6zPn1cBMmeBm8hzl4A7Fg0A/MsWjwM
         Gs+EWHygKbTMuGCquqty9qTGf5+sgApvVIqUWzgZeOz3TjxzHlJsJB1225gwJkyYxLED
         1V0PbM2WgI5fL4vFkqO4CbBCAwHSX599olf+PFUu+PJBuNzvRZoJ2UpcHg7yH2bvjqr6
         nPTEOmVmqV5idqvOv+F9xJdtcf1prLtfsPijGnJKjCIRAKqGQRtFiN+jZThrczrHZpZr
         Xl4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=PeXGTiuWU7TroD9Fyb3x5q/JyuZiBfUmsoJjfklcKh0=;
        b=hiMmiztPgXXE9Wyvd+bynbKSGCY1VJ3TYOZM5FK4WYtljfAWhRb3oRs26h8erwet4e
         VlgzArU6pfX+RFHuXdXzLp0cx0dWn8Q2xAocM8IHr4/FJCZfaCZhgcVYUiMnqLJflYjf
         e2VKR5SxK83B2O0oM6IsyxNCiYaTSEEY1ogWjX501xoCW7OtRY34nIYED89SDDnsTmAc
         HLK60Fm/sQeWflMRD5MgmdGg5uIUjqOY5QGOs4Rfzy1vPCKmwhbiVm5orca7Tt/jxeuZ
         swFtZozbQsNE+9hXZcbGq3AgTs+VpA2eP3HoKn6hm50nUc3Vr6ai+UnZWqddpi0ndEvZ
         74eg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530/lHtF1RjVD2sILqmV+HfojoP7DTAsYHskiLlhJB4oLSzAEi1i
	lXUA1rIuAZIReD3tFzRpDQM=
X-Google-Smtp-Source: ABdhPJxZ6DYWGpAGB/wXniMjzCW9/Dqv7oL5cPj84hw98zzxTNlcaY93FivEQzLlyKdemPATlnr9Bw==
X-Received: by 2002:a17:906:109d:: with SMTP id u29mr36586401eju.489.1626843197406;
        Tue, 20 Jul 2021 21:53:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:fb92:: with SMTP id e18ls1191616edq.1.gmail; Tue, 20 Jul
 2021 21:53:16 -0700 (PDT)
X-Received: by 2002:a05:6402:278e:: with SMTP id b14mr25220787ede.277.1626843196599;
        Tue, 20 Jul 2021 21:53:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626843196; cv=none;
        d=google.com; s=arc-20160816;
        b=U3OmmlXTJkUc17W/sTkGNCxjQWGIM7KV869TKBI69qB+Y2e70m7MhkfXjTTt/dbdIH
         YwGbLJ4PCyGxLVMl51li0sIblVdXpN9nWpk46HD4bKefteMFgG5tMHFok8qIL1xCHm02
         I9iZshpY/DZ9evXCf41iJlya0KfZ9kLjA8lmFiAVfA2LnyhCSLTTPIAil/N7wXR105PS
         ypmx2G8uDsFSbM6SMW7/PqToeObu0Z5v8ddf3PYJ+gE1KcjjXRZs5SQ1S8Fu3oX/IT1/
         u0iVqlxzZSLLNERszIsTjL8ams9xeZezxxvXr59zkabA4HYZCFqdD1FLKUFSf/lCnCPc
         iHTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=SCwobZ2ergcsP/KBco/dD0SaEMf5ddis2wZxVwFwdGI=;
        b=jNgMP4n4z6lOZOWSHptW46SwxTq6TQAkMf7YDXzjv7y/8LasCKaXYnSfTwn9rOkc6k
         fHzutvQuScW8SzhMI6Hm4RAx7VhICeSIPgV0rqrP8NeB9sXkcLfxPPmlUESbwQClIqGQ
         q59Z14yr7Qg8K54hEHpdlx1M7UDP9e4AKsbYE29A2WSySt0OpzxUz62SnNQfJRZLZGSK
         XI35pwQcMMgJxho2rcD17BOBRbRAqoyry2i8pVHnq+oVSMiYgeb9X1md4hlXD38C9ec9
         jcBLvlC984JU06w2NG/1QSlaCbEUq6wegafmX5XAnrq1c4lkT2YC6oXUw+L6mnvWAYbN
         w1hw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b="te/y9365";
       spf=pass (google.com: best guess record for domain of batv+75be22767c7c0793244e+6541+infradead.org+hch@casper.srs.infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=BATV+75be22767c7c0793244e+6541+infradead.org+hch@casper.srs.infradead.org
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id be24si994641edb.1.2021.07.20.21.53.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Jul 2021 21:53:16 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of batv+75be22767c7c0793244e+6541+infradead.org+hch@casper.srs.infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Received: from hch by casper.infradead.org with local (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m64Dq-008no6-Fc; Wed, 21 Jul 2021 04:52:45 +0000
Date: Wed, 21 Jul 2021 05:52:42 +0100
From: Christoph Hellwig <hch@infradead.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Miguel Ojeda <ojeda@kernel.org>, Fangrui Song <maskray@google.com>,
	Michal Marek <michal.lkml@markovi.net>,
	Arnd Bergmann <arnd@kernel.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Geert Uytterhoeven <geert@linux-m68k.org>,
	Christoph Hellwig <hch@infradead.org>,
	Nathan Chancellor <nathan@kernel.org>
Subject: Re: [PATCH v2 2/2] Makefile: infer CROSS_COMPILE from SRCARCH for
 LLVM=1 LLVM_IAS=1
Message-ID: <YPeoGucPDzFcmJ7p@infradead.org>
References: <20210708232522.3118208-1-ndesaulniers@google.com>
 <20210708232522.3118208-3-ndesaulniers@google.com>
 <CAK7LNARye5Opc0AdXpn+DHB7hTaphoRSCUWxJgXu+sjuNjWUCg@mail.gmail.com>
 <CAHk-=wgGxu4_hgzdYpFuKd95SfnkJbPTWAQ9-fMgmMN1Oxs2xQ@mail.gmail.com>
 <CAKwvOdkvju7heeNpk87brsjkhXHbdKFsUgf63KWhXox9rDkQsA@mail.gmail.com>
 <CAHk-=wiZe2FuiAOwhbKR_VMmFBKekz0NFREm4fvik25PEdcK_g@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAHk-=wiZe2FuiAOwhbKR_VMmFBKekz0NFREm4fvik25PEdcK_g@mail.gmail.com>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by casper.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=casper.20170209 header.b="te/y9365";
       spf=pass (google.com: best guess record for domain of
 batv+75be22767c7c0793244e+6541+infradead.org+hch@casper.srs.infradead.org
 designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=BATV+75be22767c7c0793244e+6541+infradead.org+hch@casper.srs.infradead.org
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

On Tue, Jul 20, 2021 at 02:54:35PM -0700, Linus Torvalds wrote:
> But there are other things that stick around. In particular, I have
> considered simply using git config variables for that.
> 
> Something like this in the main Makefile:
> 
>     ARCH=$(shell git config build.arch)
>     CC=$(shell git config --default=gcc build.cc)
> 
> would actually be optimal for what _I_ do. Then for my clang build tree, I'd do
> 
>     git config build.cc clang
> 
> and it would stick in that tree. If you don't set the option, it would use gcc.
> 
> Maybe that would be an acceptable model these days? We've used git
> long enough that non-git worries aren't a big deal any more, and I
> guess people could use the old-fashioned

I still this only papers around the fact that the architecture is
fundamentally part of the kernel config and should come from .config,
and the toolchain probably as well.

I for one do have a few different tree for different projects, but
need to try cross compiles in each of them.  And unfortunately sometimes
with clang (nothing against clang itself [1], just that having to deal
with multiple toolchains is a pain)

[1] well, except for the sometimes idiotic diagnostics..

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YPeoGucPDzFcmJ7p%40infradead.org.
