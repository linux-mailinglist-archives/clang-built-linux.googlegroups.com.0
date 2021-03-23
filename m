Return-Path: <clang-built-linux+bncBC2ORX645YPRBOVK5CBAMGQETVC5PUA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3d.google.com (mail-io1-xd3d.google.com [IPv6:2607:f8b0:4864:20::d3d])
	by mail.lfdr.de (Postfix) with ESMTPS id E30023464D2
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Mar 2021 17:20:11 +0100 (CET)
Received: by mail-io1-xd3d.google.com with SMTP id j1sf2299201ioo.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 23 Mar 2021 09:20:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616516410; cv=pass;
        d=google.com; s=arc-20160816;
        b=KZ2NgGybxPB6yjIzRyfz+IraYM0QytkY8GhaFWHFVP/b6TSE5W1OmfLILE5pJ8uBk4
         nRX0jaJA0M6i2ZAGt9yeaT2hCL/BiygFYD+u3idOpIc6F9nqtAMau/7SsCo4p5IP8ycg
         vJgvQHDmi7oVcMXMx/tWx+BKAYS+AfD7lB7WvyAixfjAVP0784hk8E8qDB8ecnnbyaML
         kNGz7yuplHC5pTBHXxaZMm3r1wt9k+gHkZZEtVoQPEYxsVY/I8rqjpteejBUtDbMga5D
         bta0A6DP2xprjGrJKPOMu1t/jkrB8xCEab/vFBT11tboy6RKwfypuhmrcuRjmE2d+ube
         assw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=wJWu9ecfFfczro/vTaFWTlDiRMgFaKOMGOP7DgbL1aw=;
        b=rNLQ2iSQOA7LVgALsIoSHmeIqQFxeKQP2WAwlTo65fKY2Sn1Ygbik8w/UCQqZvHKmB
         C4yhkTSEJwmveXKGmGgMEj3Bb1bw8MCO0claXBjrrgEuu2Du/SgQKSfi0CumeTfy1RNJ
         oZjNadp06kcPIJepZMFB8PJiDCfvwI2BgVi//Ai03eq51m/u8ACo5HFoQfwB+iRao8Ql
         XIp7RGsB2DKXVZCdPO0VZG6MsMs2XxyoNeQo8rNU8L7ngxLIu3hbaM8auRABv0V48zeV
         NKVXPvsslN6gR67PYjyReepKYJHtlMFPmzXbPRmwEkqCXJv1ryXEqDj4Vqwo2E9jrpsN
         LFyw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=faUUSgVe;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e2a as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wJWu9ecfFfczro/vTaFWTlDiRMgFaKOMGOP7DgbL1aw=;
        b=br4g2rmGhJt6uQn6kZFiyJGMhngVwaUakCgMvP0Rts0C3ndYiSKbfiZnYF2vuuIciV
         w5bwWxYJ672qvXHt9HWHKd5C96SL5ERcX5B+arfhp6f7XlejNlEfXPWaGSMuj+Xi0wYt
         XG6BVOG7ke+hPrGeAJ76bAE/ypcUufvQTkWMwlNY2OoKtenwTpbZqiP+E/MGfL3fi8vg
         GNOSVMWk9bE4AalwPf/+1uVD4YWFTgu/lTWnBOSAZ+E3wzoEXOXKWIUOcajkzRjK8A7p
         ReUlV2D41stwd9QoNJyDG9BXJpe65O56lyMYRre6wqN+fzppItC5eeh4+7Zc60jm87Bw
         sk7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wJWu9ecfFfczro/vTaFWTlDiRMgFaKOMGOP7DgbL1aw=;
        b=oYXRL01Ei5EEUY7he1+ftbw3/Y3YVFIrtK5TZUp9VOD2WCYdJ0yKc6Ye0EbfRKMrOT
         pNZs1soY/ps1StSGXf66avzQgc1+Fh7sMK/Ft1JfOi+yCjGInOseP0v8wbO3inoOS9Bn
         C2UnpHaSeaz4g3D6M4gPw2i8KleKlAr8pxzVJ4/lL8z15RPEzgBQ/jVV6OAMzzAW4e1I
         1l1fq3hVBC6+EMvFkMHGaaowtecq/PWyTIxZDzRAeGIRgFYZyEym70x435h0n9UXqmkU
         Gr8INYiqKawTY6odhbqjXnnJWgUDv+UKvfsluQ8XZkEOc8UiRmFwbT8ke9mZOfVOXN0W
         iipg==
X-Gm-Message-State: AOAM530aKqM3KWEMuxrH7nKzcyzTfNfMqMUmq5wwhiJaEI0c7bDieGpB
	scjtftFMlG18UeoQsawywJA=
X-Google-Smtp-Source: ABdhPJwIz+MD+Wb8neG6HT166FLxm1gx/PCkWKpWTGq9qi4uUGPrP9/S7WAN50b0uh6EmVkQubAjxQ==
X-Received: by 2002:a6b:6618:: with SMTP id a24mr5138209ioc.100.1616516410678;
        Tue, 23 Mar 2021 09:20:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6602:15c8:: with SMTP id f8ls2285878iow.6.gmail; Tue, 23
 Mar 2021 09:20:10 -0700 (PDT)
X-Received: by 2002:a5e:8902:: with SMTP id k2mr4939259ioj.48.1616516410289;
        Tue, 23 Mar 2021 09:20:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616516410; cv=none;
        d=google.com; s=arc-20160816;
        b=BAv3Eizg2dUXMpNDmyLT3VeUx2iqeWRFQgLk/GPiVUQ1fe0VaCabcjeoFmBJ+zab7h
         RVUjE3+rRaTpOsWwZm3iB0z7jZhJ52c8SjR1mkUcoTUEE0+NSY0nTinXwrUUaXpPNoiH
         SuiDuL5VN5Vfp8GZEznCso8UCOGOTRRqN1dsaOnaGOq/lgvH4MT9bpD13QDO7yGNMzxS
         0/BIhkQvALWzUXBg9bv+puaYOjv7ndzEbdHKFjPPdDT0IAkoIsKQp4QW+NH4/ht8pXnz
         BVVpFZYniadWDY0nLALnigDUpWZ8tYHFuCwDW0eTgYkM9NPoGts9RJP3149PRCJvgvpZ
         EtYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=7LPlOxyxKGimlLzO5bR0NAP5TDBYa4AWRGxw3mAP/fM=;
        b=vLX6eUBPC8i5nm9wO+7my3f8i3dMIHrbRwHAHDg/v+Hr6OYylTdpkIbkm4LVkTGYjG
         1E5o+4qsKmPgXybwhIg6XvzGkkFISY7Soz7/cSXxiV/Y2/Gib04frBNBteOwTCggX1v1
         XNz8QLdKI0sHpfGkg6ZCYFAiRhBd9XaMKnoXvSvRJ5mAHa5sFl/UpcVMNa0W/8M6lcm1
         4aI+EaierprZ8Q8Xq6bhSlXCG4a4puIVMGVqWSKUT7oxEHCf7O51KPTF+FehWPxSttUT
         7lMYI326Gn9Xsv4MBdAd3z3jWMJBsxhVLNE7qZOwXZzGD41jqxTUTExJjIpGZjbwrpTL
         rw3g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=faUUSgVe;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e2a as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-vs1-xe2a.google.com (mail-vs1-xe2a.google.com. [2607:f8b0:4864:20::e2a])
        by gmr-mx.google.com with ESMTPS id v81si675814iod.4.2021.03.23.09.20.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Mar 2021 09:20:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e2a as permitted sender) client-ip=2607:f8b0:4864:20::e2a;
Received: by mail-vs1-xe2a.google.com with SMTP id l4so9696353vsc.7
        for <clang-built-linux@googlegroups.com>; Tue, 23 Mar 2021 09:20:10 -0700 (PDT)
X-Received: by 2002:a67:641:: with SMTP id 62mr4114316vsg.23.1616516409719;
 Tue, 23 Mar 2021 09:20:09 -0700 (PDT)
MIME-Version: 1.0
References: <20210322234438.502582-1-seanjc@google.com>
In-Reply-To: <20210322234438.502582-1-seanjc@google.com>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 23 Mar 2021 09:19:57 -0700
Message-ID: <CABCJKudMQ9CP1zhvywTf-_=PY5zmeviURR+=PqsMn_bqa_MV-g@mail.gmail.com>
Subject: Re: [PATCH] kbuild: Merge module sections if and only if
 CONFIG_LTO_CLANG is enabled
To: Sean Christopherson <seanjc@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Michal Marek <michal.lkml@markovi.net>, 
	Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	linux-kbuild <linux-kbuild@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Kees Cook <keescook@chromium.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=faUUSgVe;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e2a
 as permitted sender) smtp.mailfrom=samitolvanen@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

On Mon, Mar 22, 2021 at 4:44 PM Sean Christopherson <seanjc@google.com> wrote:
>
> Merge module sections only when using Clang LTO.  With gcc-10, merging
> sections does not appear to update the symbol tables for the module,
> e.g. 'readelf -s' shows the value that a symbol would have had, if
> sections were not merged.

I'm fine with limiting this to LTO only, but it would be helpful to
understand which sections are actually getting merged here. Are you
compiling the kernel with -ffunction-sections and/or -fdata-sections?
Does this issue only happen with gcc 10?

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKudMQ9CP1zhvywTf-_%3DPY5zmeviURR%2B%3DPqsMn_bqa_MV-g%40mail.gmail.com.
