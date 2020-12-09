Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBANXYT7AKGQE2XXCURA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id 905322D4955
	for <lists+clang-built-linux@lfdr.de>; Wed,  9 Dec 2020 19:46:26 +0100 (CET)
Received: by mail-pg1-x53a.google.com with SMTP id o17sf1636401pgm.18
        for <lists+clang-built-linux@lfdr.de>; Wed, 09 Dec 2020 10:46:26 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607539585; cv=pass;
        d=google.com; s=arc-20160816;
        b=L0AWkqKoTxcQPYb4ydXiSj4KR3T47SaencaXG7ePFi3l6dnbj6YhKkLb7xGGLg3gn7
         2OCeVBV0plSIPdiR2nXeg320t1Af1mQof2h56pQHv5ElHTP3RtwbOtG4IYUm3pyECqc8
         URMmHointgsnkmzIsZ6fgR4A24o+p8s0RJUQK690NrHXewFaDCqeAHZmYkx7R4qIynQw
         Dc9ZC4Ny0vRrIlOG2f1owM+kmuETskcrqVejOIi1xnCZKxxQS0IQ1hVpHzYAL956Kthw
         j0E99qDKAOvXAcVvH+y2hJAISACzZ24+VvvFwsLVOvXEQp3nWNWA9fMEltgprJQod5Im
         TaAw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=LFwEKhWZ/Qh6Eyu9E4SHdsecA3Mw4Uy15U6YiVvlUho=;
        b=wzL86t/pBFnyA0Eq0wpIuuw3tkZq6Ko6I4z/iZ4nNKAgyqiD41TMnH9TX//YDtLP6Q
         mph7WL4e3fcdAFYGvovjuSivKX5Rr6ykxih+otLJaFSLeoz3v1QwPQWyPku2ZncakJue
         ogks1PB3QFAJk+53SSDoRw9mKymYlfg8FLoEnfZAH77pjWqtCxGqd5xaDRsrLlhStfvd
         hhGupgwzXmpWug/nPwhSwfrQwbLcb+T0coZ7plWBon357+t1bDOFvDqHKpVeGmKIOiwC
         4VhH8TtWmWV8mOqPWW768Dg4iF2gJmKUdfK1QveJ6FQmmuzpflbD0dU+xEtXMzs+enoN
         QBzg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=bhK6iE8+;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=LFwEKhWZ/Qh6Eyu9E4SHdsecA3Mw4Uy15U6YiVvlUho=;
        b=KOKKq3CYA5C0LtRDBihiWWlnVkj7hfGvWvs7C3IggK+Cfmo5J8hAuDSjRSZLik4Unx
         4OP8nNRDFjyOTKtfYNWYbxtWZNcotrN6WyyiZjv4NP9jQCG/ddSs+a92DEttMsIAh9vD
         zgN1XJOpThc0bnlY9KMmjPC7o+SGEk9L860aiiQHSXDq1bfSWlGDtixtIt7x4vfAkMKY
         uZKKmdYDKm0SsXx/ja+vQFpJeeoBN+nmJuNI70f2K3wnIIQLKc8so9Q2UAoV0nFTRT7o
         Bl+umGqTzEbyjd38dXKN1AHaLHvP+iGSFLCig7YFg74PyNyxR24udLkEeBml9iplU+fS
         jrSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=LFwEKhWZ/Qh6Eyu9E4SHdsecA3Mw4Uy15U6YiVvlUho=;
        b=G9lc5PoKFqkXHYmiKRxLYQwyHpKbKNFNVEjAJHkc2lT0fVoyHfoirlYkFVmF/J/olo
         vSPUQguXGwf/ID+4d8eTGCoqGhFz6da3K+KRiwvxzu1/P6f99nYdpx9IkGshJTEInNj8
         euhw7hn4WeVCZ3HaptPB64a1KIzh+rgHFCE4DQtp69yEYx/HEDo0gwMzN72kwWNMby8s
         bmDkb3bWTDj5QrAzLaFxK1u7akuOcq9NwLVKidZNUKGo75Ezrbep3qmwPryyXuaiKY8X
         BoKEarjVoaYrEdkd4Dx+y3QWNhGEpfk29wKNIgK4xfgd/966NxrlCCXN79ofUaHyLiSO
         s/qw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531ciQULORGADe0Z8aig61m7UFMSlimRlxNNYi20SGCEezXisXAE
	ULRCa/nLraADq6lf9x8VI3k=
X-Google-Smtp-Source: ABdhPJw4YrijV2/X0DUHGMOv8vYrPi5y4FVgVIf3o4NWkdSPxZH9fTBdgcWzUGVxVIn2YBs249Fo9g==
X-Received: by 2002:a17:902:9a49:b029:da:b3b0:94a1 with SMTP id x9-20020a1709029a49b02900dab3b094a1mr3349095plv.11.1607539585338;
        Wed, 09 Dec 2020 10:46:25 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:4f4b:: with SMTP id p11ls1008811pgl.10.gmail; Wed, 09
 Dec 2020 10:46:24 -0800 (PST)
X-Received: by 2002:a63:2045:: with SMTP id r5mr3245920pgm.6.1607539584703;
        Wed, 09 Dec 2020 10:46:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607539584; cv=none;
        d=google.com; s=arc-20160816;
        b=SdwH6RspiZVcA35rjgXE2I/gZmEz8Tii7/s/WjztmZkoXBTcNBiIKUwSrjdogo2Is0
         fJJEB5Tg+4gx+jelC97hR5LERZygTGU1bNz0XZE1+wml1sgfjTPwo3ybSyhl+FlrUil1
         JZXTum2fNE/EeI5po/oqvcm8ogpMkZpgu4epTsL/DwjxTm1kwyRrXw9FIP2RhiU7uYu4
         ACsyMAKAXtWGrB/xmyTenFrKPTSA8Ya5zIOeqKbIckMcO2D2yREafU3CsPIyrutxt3MH
         //XhliKa3g5BKth1Vrcd8+pkAaZAfNmSO+ecdUjHbxPDn+ZkmOXKc1YD9m5Ak7N/Yu65
         PhPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=SLck9T+fSmc7a2TIjVWcYDoy5sXjzN2t3Wk/7vfAiNU=;
        b=qX0BzJf8fmNIpd+p6yI2O1EOb9tQFKy9OhuS1l1MaEItIGxyMgPcls/WGh1E4a3iu7
         mMNSaHAd0DFKLroonwgKePwrRBvIqP/FV2O5Q1nay+mF01T3NvSpplVDm8m29xLo3Cqn
         wT+zGygp+q/eObOj+QkSZJqcW6W31OacakTumzF8jDrKVE/iks6KrW4+APUOhXmrUk31
         KsYiHPIXr2c6dG5quWlPglemVH1KKDBL9dmjQ9xwC5VEOXUa6Tdt4KFdeZMKSszjVj1c
         qnU9ePLfpjjQ7MZ49aW5T0iR9ZzemFK4H08UzXcRnvKj8D+nJQ2Xr6jUZr9z6wrSGZ6o
         9qYQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=bhK6iE8+;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id d1si193628pjo.1.2020.12.09.10.46.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Dec 2020 10:46:24 -0800 (PST)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Received: by mail-pf1-x442.google.com with SMTP id f9so1583472pfc.11
        for <clang-built-linux@googlegroups.com>; Wed, 09 Dec 2020 10:46:24 -0800 (PST)
X-Received: by 2002:a62:84ca:0:b029:19e:6f95:11b1 with SMTP id k193-20020a6284ca0000b029019e6f9511b1mr3534614pfd.68.1607539584427;
        Wed, 09 Dec 2020 10:46:24 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id w70sm3499919pfd.65.2020.12.09.10.46.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Dec 2020 10:46:23 -0800 (PST)
Date: Wed, 9 Dec 2020 10:46:22 -0800
From: Kees Cook <keescook@chromium.org>
To: Arnd Bergmann <arnd@kernel.org>
Cc: Andrew Morton <akpm@linux-foundation.org>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Ard Biesheuvel <ardb@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Marco Elver <elver@google.com>,
	Randy Dunlap <rdunlap@infradead.org>,
	Dmitry Vyukov <dvyukov@google.com>,
	George Popescu <georgepope@android.com>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	Peter Oberparleiter <oberpar@linux.ibm.com>,
	Andrey Ryabinin <aryabinin@virtuozzo.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2 5/7] ubsan: Enable for all*config builds
Message-ID: <202012091045.34E3CC3FA@keescook>
References: <20201203004437.389959-1-keescook@chromium.org>
 <20201203004437.389959-6-keescook@chromium.org>
 <CAK8P3a1Br8JFJX2PxyjVxMPMhi-y8mxf+vdEAZQq_Wm2wYP7ZA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAK8P3a1Br8JFJX2PxyjVxMPMhi-y8mxf+vdEAZQq_Wm2wYP7ZA@mail.gmail.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=bhK6iE8+;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::442
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

On Thu, Dec 03, 2020 at 09:51:40AM +0100, Arnd Bergmann wrote:
> On Thu, Dec 3, 2020 at 1:44 AM Kees Cook <keescook@chromium.org> wrote:
> >
> > With UBSAN_OBJECT_SIZE disabled for GCC, only UBSAN_ALIGNMENT remained
> > a noisy UBSAN option. Disable it for COMPILE_TEST so the rest of UBSAN
> > can be used for full all*config builds or other large combinations.
> >
> > Link: https://lore.kernel.org/lkml/CAHk-=wgXW=YLxGN0QVpp-1w5GDd2pf1W-FqY15poKzoVfik2qA@mail.gmail.com/
> > Signed-off-by: Kees Cook <keescook@chromium.org>
> 
> Have you checked if this has a notable impact on allmodconfig compile speed
> with gcc or clang? I think I've seen significant increases in build times before
> with this, but I don't remember the actual magnitude.
> 
> Making it 20% slower would probably be ok, but making it twice as slow might
> be too much.

And for Clang, it's about 7m40s before and 8m30s after, so roughly 12% slower.

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202012091045.34E3CC3FA%40keescook.
