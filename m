Return-Path: <clang-built-linux+bncBC2ORX645YPRBPGNWDZAKGQEOBXS4RY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3f.google.com (mail-io1-xd3f.google.com [IPv6:2607:f8b0:4864:20::d3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F9FA162DAF
	for <lists+clang-built-linux@lfdr.de>; Tue, 18 Feb 2020 19:02:38 +0100 (CET)
Received: by mail-io1-xd3f.google.com with SMTP id x2sf14471111iog.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 18 Feb 2020 10:02:38 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582048957; cv=pass;
        d=google.com; s=arc-20160816;
        b=Any+WXnPzOId9uWc4uBnwV/sYC/8G3diiI32U89wUTP7FOpaVo2wGp8oW5A5zcpAen
         /CLbDBc2NAW/jqQ4n4rZJpgTiPiVEQa/R5yCp1KU92hNzAvj8+xzfWNfc+V1F/hW6kfp
         VRRIg5ZrOfE7aY02EzDMeQvbAT3YIGt9nFHsAcVX6MTXjziasDnLSQgTqU/6Yk/wPKoC
         h9eEAd0OuRgIMAFEzpa/00Kj9JAFwQXixF+lKGe2VvKikGK0MjGEvVx0UWPZSQJ/Tj+9
         ltMDs5/nNxNTwgVMz0iM+LX57zs07b9HDMS86lc8VO4mV/3ShheusJ/rV2pTCr55gju5
         ifzg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=v3aGasy4D+H0RckGksOvH2rBGir0OpsDV/tyYrbztTY=;
        b=AA9Q1DWUvnvo4X3pyOoKKloF8Ivhn+YM8uRsqtvVex1uCvyu8xX6fVbxtHIwfWGTES
         Yxchal5SfoNyg6lcsODgsto5UetwiV3K5xcb+YsO5Vr47xiPfrVSJE6CTFK6FCuoxNdI
         SPmIsI8/5znXUdy3ofz2K7+5itEAgSfnT1XaBsw5TBGrnTvUZjFoekPEHHX4glU5UPDN
         Y/d1GncSPYsvLjLGgA3lT+G9A80SgKvaYc14/qtVDyt4/looI0tumhes1C+S1K2TjcIp
         sYNP9Tf31KIeS9FzV4CdA7JQpTGs1nlGxK9TqiU4xN7p8n/zgA/lTYeJlx4k/7/+N/88
         M1ag==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=j1juSeuA;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::a43 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=v3aGasy4D+H0RckGksOvH2rBGir0OpsDV/tyYrbztTY=;
        b=YNA7Ty8BiJ999cd6yxD96YJkR33Lp6eYM6mCOLf6Yopmv2Fzh59SjhRiZkyYKJnwdl
         CAuhT8ra6GBqo2Ove+vHCsZyVoy92JZ0I0cBI8VxVxON6RAi/Bslb+JcNhCpjql4KGPU
         57RBpstfRR3he5H97LKLOIdIdUJdlSwW2XGic5R7SUmTCCABThiUzVnXcbrNA0OZWERT
         kq3UQzP4fi2wZNSPN09+Cv7AzM4ufI7lr2WzyZrT+A4KbRTemJoIHD1b9ArJI0LbgxeI
         yjeUZSXJNkv54p+sekw+vsjJiz7hYQuBjbMEqJU7MWB4dZRLVVIW9Xcink8OQSU76FG/
         kDgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=v3aGasy4D+H0RckGksOvH2rBGir0OpsDV/tyYrbztTY=;
        b=VIH7EGGmn8AkKs4GBK9TtsYaob9vJka7tFaWTt4Qa2il4g3eR4FHr82YwEm4uosTrK
         yS3ABaXepKmgJPybZec6C8sz+URy9P5DbYwo7g763NmYKIzPDPzFKPkMgfQYouuEkoqN
         8YdHpkIH3o6TGIVFwi5E4wovO/8oBc3h4hFJAgG4LNXZ0S/J0AbvfhAkWsGmtQMjXHLY
         ahZxoqFw42f1bLlwP9D7xJ3SfnfYw61kDbjdI8IT7beBKqIfkqg3Eum+JADGod203rHI
         9Z+xDMRHER0j9Ua2YvjxDbe7B2Wv/8i0W9q+uQ4CBCq7KgpFl+EBuqo5X519R6eUs3d1
         RxJQ==
X-Gm-Message-State: APjAAAX+U1rlsOCKtmVJxa5y+5K5TdLwkw+9REnGT8UhOaNAu/FpJvFi
	Gnkdu4c9FuHgTddM5IZaYeU=
X-Google-Smtp-Source: APXvYqyFyHYDd8uEjpxbnwi8R1zczYXsNoXC4B3BaZRapNlmLSg19+3UcfhGvMpYH4hG4fIHcTc6tw==
X-Received: by 2002:a92:b749:: with SMTP id c9mr20025525ilm.143.1582048957035;
        Tue, 18 Feb 2020 10:02:37 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:85cf:: with SMTP id e15ls2925569ios.7.gmail; Tue, 18 Feb
 2020 10:02:36 -0800 (PST)
X-Received: by 2002:a6b:b48e:: with SMTP id d136mr16074354iof.243.1582048956638;
        Tue, 18 Feb 2020 10:02:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582048956; cv=none;
        d=google.com; s=arc-20160816;
        b=r4pYHuhF3RaM6DwPZyCNpKT3mgQo3kcxUcEBFyFldUnTFSfuTPC3UEVd6AiINh/yPd
         HO0aBDN103D0PNZ5hm4SYBnKZvOeUk3W1znmTNKcmaGigzPGDysupolHSDKef3JmjvAn
         ssldZSdQIDjmKiZwYcdAIFzw7NBFR7z4fDjWy8RkNjAiMNGTiSGYWrTSi4sIKtp5bPJc
         67TOqT81NxEQ7zh8oipnbA+e0A/oqp0xEXXgctxk2DtIjxCxKRoGPzMdsQm0Sm482fTx
         lCLNVhWc6Fs6oKH4CNyyIs+BRN1OZZDzg+r2OYOwhOYDFfOStsoUtSJU4UEoGa+jl0Ni
         0Smg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=mFcWiVcZUQMebcgZTFfReAJeHHYrnI/Dwt+l66LM8ic=;
        b=rWP48Gq38MRF6hVMCUKQLXb1visTg2A/8yg2wP2aaHc6eO1TOibRPd/0zVSI2Xg5Wo
         BucsIx9KqwcYHk8zWxigmuTTE0D2qn/h6yPfY8OfXcotqbodYUdpBO5e07SbmzRvTfRM
         NMacM59uLVcUIZxtA/H6LqpgIm5on3OWzJmXI08LA5loCafpa3nPLqH+bX1ZpAoECAQQ
         w/yR7WcLrpidxlmY4cJvrVjgrH77ejZSvFU3/XW+GzvOqfvsIJ9uMEsamNFRFklGiQOJ
         pLf+AhUISbTsaPcoLTdYAojUzE8bhMN8hCAYI7DjOJMBisgluSisQ4uMEYZKDhd3VoGz
         WEsQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=j1juSeuA;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::a43 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-vk1-xa43.google.com (mail-vk1-xa43.google.com. [2607:f8b0:4864:20::a43])
        by gmr-mx.google.com with ESMTPS id b16si194555ion.0.2020.02.18.10.02.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Feb 2020 10:02:36 -0800 (PST)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::a43 as permitted sender) client-ip=2607:f8b0:4864:20::a43;
Received: by mail-vk1-xa43.google.com with SMTP id m195so5796662vkh.10
        for <clang-built-linux@googlegroups.com>; Tue, 18 Feb 2020 10:02:36 -0800 (PST)
X-Received: by 2002:a1f:264b:: with SMTP id m72mr8939701vkm.51.1582048955607;
 Tue, 18 Feb 2020 10:02:35 -0800 (PST)
MIME-Version: 1.0
References: <20200218164906.35685-1-vincenzo.frascino@arm.com> <20200218165451.GE1133@willie-the-truck>
In-Reply-To: <20200218165451.GE1133@willie-the-truck>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 18 Feb 2020 10:02:24 -0800
Message-ID: <CABCJKufJemUuh2SH_wBRe_g1HUA7mzOu696yLPj0KRCxD=DXcQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: lse: Fix LSE atomics with LLVM
To: Will Deacon <will@kernel.org>
Cc: Vincenzo Frascino <vincenzo.frascino@arm.com>, 
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, amit.kachhap@arm.com, 
	Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=j1juSeuA;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::a43
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

On Tue, Feb 18, 2020 at 8:54 AM Will Deacon <will@kernel.org> wrote:
> > -#define __LSE_PREAMBLE       ".arch armv8-a+lse\n"
> > +#define __LSE_PREAMBLE       ".arch_extension lse\n"
>
> I'm ok with this, but Sami assumedly changed this for a reason in
> e0d5896bd356cd ("arm64: lse: fix LSE atomics with LLVM's integrated
> assembler").

Correct, I changed this because clang's integrated assembler wasn't
happy with .arch_extension lse at the time. However, it looks like
current versions of clang don't have this problem, so this change
looks good to me.

Tested-by: Sami Tolvanen <samitolvanen@google.com>

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKufJemUuh2SH_wBRe_g1HUA7mzOu696yLPj0KRCxD%3DDXcQ%40mail.gmail.com.
