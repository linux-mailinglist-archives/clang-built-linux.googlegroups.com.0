Return-Path: <clang-built-linux+bncBCS7XUWOUULBBHPKZP2QKGQE6FKZVLY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x237.google.com (mail-oi1-x237.google.com [IPv6:2607:f8b0:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id 932FE1C7800
	for <lists+clang-built-linux@lfdr.de>; Wed,  6 May 2020 19:34:22 +0200 (CEST)
Received: by mail-oi1-x237.google.com with SMTP id j84sf1847352oib.21
        for <lists+clang-built-linux@lfdr.de>; Wed, 06 May 2020 10:34:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588786461; cv=pass;
        d=google.com; s=arc-20160816;
        b=RMQ+S/F1ScBgM4WuikS4w8yNctuA1c3cmZ64+DZ2vDbsRvdZLtf1LKUNFI4Kj5nKVY
         Dt628BlM7jXBNB8MXp5bkuTvVv8nrQ7J5O4Ps89d04w3PmzvmHeO/jP8dEcTc69tKG5x
         GaEpzYfdsJVuVtRtyZ5YBBcqsi//cNv5BQ1PFQ7DGrZzZHTgUnUlvBoAbkR5qAGFhXuB
         kohFrvCV1X5Et67aTcr7kuhmt7ioDkCDOEtP5She95nXGfcI888wcQ5BoUfKaH776+sd
         QcFgwWZ7HMXGlVEqHnZCW5DlrN5iSrk8Tc6ODZtxEpDBO+4E8IM9GTdbwzC/6BfGkfjy
         Y/Qg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=Dgort7suKQs3hKBGrUe9ytF9S/3IQBS9j+f7Gu8h+XE=;
        b=YeuDUpA6CYl6T3j4thbglou7DwzzY2JZrrqc4f6JWATNXhHbPQZWhL1Afn2p5IMGdY
         hD+463NfVuhZMObQWCZqRuibMlo585mhbBMuLZyEW1eBPWfV382RJqQAXRrd0thoV0B3
         QB7q/A4bPkWfCwvTuhe66wGMLjx8wcqg3f2k2DeUOprlBu2YbFOwaBbxzcLyJRKRmnbQ
         VjIRNqFUKew1XGnDk+6u1vu3ILQPNxdFH3P6wG3SIxN+xQvIL+ZSoMMMq36npxO29qC2
         g0Wo0to+HOKFDPnRuXBVpIwOEJpRQfbn0mNReyteL0vVq5UlMnmBchmKYEkwnWrBdjEJ
         90LQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=f7hnEas2;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=Dgort7suKQs3hKBGrUe9ytF9S/3IQBS9j+f7Gu8h+XE=;
        b=aT1aLMkCKcAzeVvRuMW1ood/V2vcNq20h72yB6F6jUJdB6cK0V19+Dcj/Y3YUHOorW
         kjutK4XPgyinwa5m4TvYBy/jYly2xub9bhoccy4Y+8lEvu5/rxSZu7YGE7/S3m1nmtnk
         W37ybSxfsw4wvAaVBdjo5sqgPWGpVZbrg/xDcsEO7QFyVKgDJlRii0NPCFihBIGRT7zc
         aSVw1EAi5R6uInWB/AT9+cU1XPXjpCceFEgYVT2SYlua9/cRwehKe6u/LMkZZ9MDe06r
         QiKkLAx43WsB8pzKwnCYz3MTJoX9Kh80lYDyR2pAPYrZRB0d7VSbUawAtB8i2RMHBL4e
         c8eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Dgort7suKQs3hKBGrUe9ytF9S/3IQBS9j+f7Gu8h+XE=;
        b=CwexZ/2BjbR/ekybJ22QzvxBV+qggEgY1qz0r9mmDgTtBG4HGd9ASwrPXViGwbFsio
         CWUw+7kn25XS50RCp1kjc141UvEnimPwGeQ23GLGDgQJzP5qSTYwwnmdGa6WdiGGjOAW
         aPDU54mdwH3TSs9MfTY1DvG4dn4MSmrWu35nxxOL4ZAZ7otvXmDlWLnJtdbG3LbBRdEW
         s9Faj+SuCPYSC8xm25xhL9C5EegrfMZiEM1VFvjSNSSMTxkRBZGKsl1K/H91y3YGdIU+
         VIafpSd0LnhrFe+zpO1OvK4m0mdBR1076Qot+1IXSKRu7M/1EGB9+uDhu86H4EHpWNci
         qNUw==
X-Gm-Message-State: AGi0PubMJ6zQMmgoovV7i6tBeyAHwIIveAKECz6u4AsEJAsnl1TAUwsv
	XgLdaqzwESV63MGBDN+KKrg=
X-Google-Smtp-Source: APiQypLsV+UwjfZPPJW6SRTbK5rIpFWUG8uNK2SZ3eCF1sXFChJYcp5CO/G1ll04ZYVbL9AMLcweRg==
X-Received: by 2002:a54:4393:: with SMTP id u19mr3618412oiv.75.1588786461454;
        Wed, 06 May 2020 10:34:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:1eb:: with SMTP id e98ls654574ote.3.gmail; Wed, 06 May
 2020 10:34:21 -0700 (PDT)
X-Received: by 2002:a05:6830:2317:: with SMTP id u23mr7573218ote.203.1588786460959;
        Wed, 06 May 2020 10:34:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588786460; cv=none;
        d=google.com; s=arc-20160816;
        b=zagQL6E3SsoEeXatqIfcoNFx7cM2RrI568i8P2Mww8zMg12u0EnH17swqtPJut+hiZ
         9H+e6YrP0vMBarxIv8EsORvQz8FHvGwizCBhivKxCcrE2POcUAa7K12iY8cWfgNGru28
         rStaM9ovnABfRr60IfZkQ2jo5vb0aWl9W/8BVhkWd+6KkMYkjoGoV5ckdqL29vJncVO9
         f99gJevvIFF6jI+MzfVUPd1ZjWOmFYt9j5Af4oIPafe9cQCPTuq294tX8WSkeC8WvnrS
         HgIAqDr0p/rq4lyDblyzIzv9kvhEvhAxxcm7/H7Xa80uzYNE0cZxk11fqu6rdss2Td8g
         kYaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=v5j4S3JEVj0FPIjZ8oxj1MyFeG1ZAskbKGCn2iAsiYc=;
        b=MWujLOHi9cIsITEfMNzLa8AvWgGNSRQsULFGd9hS3Fr1HDPRrSqHSuP34eTlg4Bwsp
         Eeewqvq0Pu+4BpZV3AGSWFYWFoQNv+MUrx9W4PJ3gAKBO/CFJEcq3Pv71Ve5/GkWfZJG
         +zeCNc+iQ1qDfIZGMPSNcE1qBLJ150WT+kNq6rDVpFIE68mQ4XtnsrCNvDDFUXnzzrgW
         Ngt7zfgEB/Q2AS4lWc90noaj22P0/fjAqZWOeeW+8E+se3dTYc+AhwqVefKQYAdQQ4iu
         mXdGls+aC0UDVpEjW/0v+WT3pDnmBL/u6qxGSkGdvUwk/BIXrsNieHA75uij6JOxqt0m
         7Ovw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=f7hnEas2;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id c15si276790oto.0.2020.05.06.10.34.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 May 2020 10:34:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Received: by mail-pl1-x641.google.com with SMTP id s10so794813plr.1
        for <clang-built-linux@googlegroups.com>; Wed, 06 May 2020 10:34:20 -0700 (PDT)
X-Received: by 2002:a17:90a:5289:: with SMTP id w9mr10372222pjh.97.1588786460049;
        Wed, 06 May 2020 10:34:20 -0700 (PDT)
Received: from google.com ([2620:15c:2ce:0:9efe:9f1:9267:2b27])
        by smtp.gmail.com with ESMTPSA id k6sm5207655pju.44.2020.05.06.10.34.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 May 2020 10:34:19 -0700 (PDT)
Date: Wed, 6 May 2020 10:34:16 -0700
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Ard Biesheuvel <ardb@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
	Torsten Duwe <duwe@lst.de>, Mark Rutland <mark.rutland@arm.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	Amit Daniel Kachhap <amit.kachhap@arm.com>,
	Torsten Duwe <duwe@suse.de>,
	Ard Biesheuvel <ard.biesheuvel@linaro.org>,
	AKASHI Takahiro <takahiro.akashi@linaro.org>,
	Josh Poimboeuf <jpoimboe@redhat.com>,
	Julien Thierry <jthierry@redhat.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Marc Zyngier <maz@kernel.org>, Kees Cook <keescook@chromium.org>,
	Alexandre Ghiti <alex@ghiti.fr>,
	Kristina Martsenko <kristina.martsenko@arm.com>,
	Ionela Voinescu <ionela.voinescu@arm.com>,
	Steve Capper <steve.capper@arm.com>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] arm64: disable patchable function entry on big-endian
 clang builds
Message-ID: <20200506173416.hmdp5cgkslunfko7@google.com>
References: <20200505141257.707945-1-arnd@arndb.de>
 <20200505142556.GF82823@C02TD0UTHF1T.local>
 <20200505194243.5bfc6ec6@blackhole>
 <20200506034523.GA564255@ubuntu-s3-xlarge-x86>
 <CAK8P3a24EiEvGAenL0FdgGakmwWi=giReOJuiisnzkgC_SuhZg@mail.gmail.com>
 <20200506153156.GA1213645@ubuntu-s3-xlarge-x86>
 <20200506154556.5fsxzs3vbfwixggd@google.com>
 <CAKwvOdnKn0AZTdaesEqG=uEJXzK+rQK=KJxqDQCFqAMFrPKWkg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <CAKwvOdnKn0AZTdaesEqG=uEJXzK+rQK=KJxqDQCFqAMFrPKWkg@mail.gmail.com>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=f7hnEas2;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::641
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Fangrui Song <maskray@google.com>
Reply-To: Fangrui Song <maskray@google.com>
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

On 2020-05-06, Nick Desaulniers wrote:
>On Wed, May 6, 2020 at 8:46 AM 'Fangrui Song' via Clang Built Linux
><clang-built-linux@googlegroups.com> wrote:
>> Created https://reviews.llvm.org/D79495 to allow the function attribute
>> 'patchable_function_entry' on aarch64_be.
>> I think -fpatchable-function-entry= just works.
>>
>> Note, LLD does not support aarch64_be
>> (https://github.com/ClangBuiltLinux/linux/issues/380).
>
>I've approved the patch. Thanks for the quick fix.  Looks like we
>backported -fpatchable-function-entry= to the clang-10 release, so we
>should cherry pick your fix to the release-10 branch for the clang
>10.1 release.
>
>I'd rather have this fixed on the toolchain side.

+1.

Cherry picked to release/10.x
https://github.com/llvm/llvm-project/commit/98f9f73f6d2367aa8001c4d16de9d3b347febb08
I did not use any endianness-sensitive in the original implementation,
so hopefully this will not run into issues.


The scheduled rc1 of LLVM 10.0.1 will happen on May 18, 2020
(https://lists.llvm.org/pipermail/llvm-dev/2020-April/141128.html)
We should be quick if we want to test it on qemu or real hardware.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200506173416.hmdp5cgkslunfko7%40google.com.
