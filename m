Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBGVORKDAMGQE4735VQY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43b.google.com (mail-pf1-x43b.google.com [IPv6:2607:f8b0:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DE2B3A3762
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Jun 2021 00:50:04 +0200 (CEST)
Received: by mail-pf1-x43b.google.com with SMTP id b63-20020a6234420000b02902eef086465dsf2051882pfa.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 10 Jun 2021 15:50:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623365402; cv=pass;
        d=google.com; s=arc-20160816;
        b=tfMH7YTZhxWRf7RRMgGKw0NAYLjkQk0b9BpdFn2KjU/wT8YF1fubYgXEHQ3ggw2wuC
         I62rEpw4/tvuilHouGfzcozIugSRCxko5WqyA8tUYnyP6ofXjhoChK72EB2/VuPdVPOM
         P6Nny89BoYlbULRS4RcKJLVfRndnhofk9k2KaKh9WWrqLESrWS6BqMP+UkrNubIANWHX
         BxWAmciKnKoneUltTqc22IDlhjo1CGVnvirCWwNLUoIghaoGv3ZmVB1bg3+li2lPH6Va
         BmjYDQH+1wF+pIDVEID1ekFHAdvHcs5X5kykUOQKhDBp+HuvQNRSU3EonpftuMtlnKe/
         kjqQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=x5SFau6oIDrLGcq/qkKlToP1ChLu/46HgLfsKMBOPBo=;
        b=D7q2sZzYYk1uZdsosI417hKJOrCORON5gKg7qJS0FSivBJVgtIpHcyORLLhSJdXWzT
         ICNBqDD3VooVX0ziZhM/yy4/U7gn2v8jh82qAGtbr1R2p2dRBFeoHuB7VHYyg/g1nkQc
         qV+/ZxTbqEC2RyfL7AobUX1X8BOrzGzLh9ZbBk7sI69EQe+JRBvtevswMhi6h5eRXK/0
         hA2bkWKZ5lZKT0l8/NhTC47bPpq1c8TTSFz+dyWjyaPOkvc5lSKeqp4mwiPT2bxEmaZW
         KvANk5GWP98OAwCbspxcpl6cmFi+EUukwz1yg8DphKf0Tmyvh8EMRKet793GTgxlRJps
         vvkQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=YhdFmwb4;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::532 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=x5SFau6oIDrLGcq/qkKlToP1ChLu/46HgLfsKMBOPBo=;
        b=Xt/5idSU9yq+ApVl+eG+hbuVG1iLpI5oHwk3T6xWj8ia5q0TGQF1WtVRDK2LgZ/Jda
         AJPKKUGADoA2PwMzPRebZwlUrTRTaQcvBf745OTEACZSf+6UuqJqfOELO/b47FrUG9ev
         bXYu0JfyanDkO5BduuEdwVVXqxAUJFn+z7xTXldXLBC+AHsn7lYBemD8R1bZKiOZiYU5
         5GodHtK0FGiJjsjM/ZQ1vEdrk7u2WiYI2+k1zgYLFokHz3h+kxwmBTxtINLy0X4zaamU
         hGBXusdbwI7vCsSdZaP9AbxAR1PG0WwpBiZQ7Gib/vT0BHH6hDx3/iQNFe0gbN79c1n8
         uBzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=x5SFau6oIDrLGcq/qkKlToP1ChLu/46HgLfsKMBOPBo=;
        b=BbUR/NaMl0drF9r2rVuRWYDL1OUJWdA6fabrPusr2Qp0uAN/lVxFQK14BZg0v6FXVT
         5BViogRahDSCfzCO37vl7fm6A2lxo+6AUNEeUVwsMhcExsfajawC8riTgSDxYDM6m4nB
         hMlPQC9qTeSctnC+KQ78FwKN6I2cAfjUMDWa4Pk2ROGm606ZhU0aC2nunU0X4W46zeHH
         TCOxAQOOYcsaF01j4qZm2bpKuXmPf/MvA0833JfNQp9nHZ0kDX0p6YMmMk5N8gWr3CHS
         D1SU3bgtgxqFXzOPPmmtEsBTjq4ZDRODprnPtk/Mry0qbFHJ6A4xPd7Ye/i219Ly02x2
         ZCsw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533Qx3u5kdNpJmcBLq3hDpXTr+NPoEOTLwpqhdNU8/dNzdRGlAlv
	JVhAhfPeGSVSmtOrOSUtygU=
X-Google-Smtp-Source: ABdhPJz39d2k2jmcEIdze4TpPipl3IrW19z5E5Mq8ZQcoUSoW/DO+jSp11va94jyoJUbaOFMyx9x3Q==
X-Received: by 2002:aa7:962f:0:b029:2ed:cf:1f90 with SMTP id r15-20020aa7962f0000b02902ed00cf1f90mr5032584pfg.76.1623365402208;
        Thu, 10 Jun 2021 15:50:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:903:20d4:: with SMTP id i20ls4228102plb.8.gmail; Thu, 10
 Jun 2021 15:50:01 -0700 (PDT)
X-Received: by 2002:a17:903:22c2:b029:102:d012:e432 with SMTP id y2-20020a17090322c2b0290102d012e432mr961780plg.61.1623365401673;
        Thu, 10 Jun 2021 15:50:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623365401; cv=none;
        d=google.com; s=arc-20160816;
        b=Ihoi4fNHmlDBmI+gYbyw/BxjRjJSnhjfEjY88d5WkODRrBZcj2mxTsmtI0cUUEuFrR
         JZrY2/2YaDiVSG5ftSemUQACPuN175CBaYHEa7yiP3JObpQBRTgb7h6ou00URNjTDiaZ
         Z5+y9hKxzj0SlfmeS85j5I6yDeBvv0VjIaINTCAxnWHch/AR77HqeI8K+e81UZ8TO34A
         SZfHtmRZojWV9JjWUDMFGBCsoIue9SLHJvZfGRdi2kT2EvAw074RE9iE6cumerC4enzG
         iwfZ9rsFks+CTEowHCQM+JI7lNUJHUMVDwvUbeCFN71qiiWPtIv/NHXsi82qZU1sSAsx
         hSvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=TTOaAxPx+KNeyOTb/ftn1c9HznM9ERRdfrs59iyNihw=;
        b=pUi0SK8Ss92eWwrqAeZBMK63IkF8GZ7jZUPN9acy4YzuWrZTAFrPrRWkHIcnr1Ggjf
         1IE+rWRNdmTx9OkLca4xeQ/0KoNu+algukyJ4jS+eV7o3ajY1CodSFgFbTCrrXOpL7Md
         1ufcCDw33ccEQqy+8O4mpOF6V00ef6mcm+Xpcb6yBDYHJCGJJoHwUUMs53VBmijm5Ohw
         hUa8362CYot+kOZiaj2SWt9BbjIxR53XIhlcwRLEbChjq33ZVP2shfZvBsy5WULp+Ich
         za0MTXXgTcCjfRq1QnafxE9Ozj5O1uzjm1Xezh2VJdAtnkGkUCazdFo7YvnfwDhodkyP
         Nweg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=YhdFmwb4;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::532 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x532.google.com (mail-pg1-x532.google.com. [2607:f8b0:4864:20::532])
        by gmr-mx.google.com with ESMTPS id f16si377956plj.1.2021.06.10.15.50.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Jun 2021 15:50:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::532 as permitted sender) client-ip=2607:f8b0:4864:20::532;
Received: by mail-pg1-x532.google.com with SMTP id e22so900801pgv.10
        for <clang-built-linux@googlegroups.com>; Thu, 10 Jun 2021 15:50:01 -0700 (PDT)
X-Received: by 2002:a63:801:: with SMTP id 1mr641823pgi.146.1623365401428;
        Thu, 10 Jun 2021 15:50:01 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id i16sm3270017pji.30.2021.06.10.15.50.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Jun 2021 15:50:00 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Nathan Chancellor <nathan@kernel.org>,
	"ndesaulniers@google.com" <ndesaulniers@google.com>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"tglx@linutronix.de" <tglx@linutronix.de>,
	Tor Vic <torvic9@mailbox.org>,
	"mingo@redhat.com" <mingo@redhat.com>
Cc: Kees Cook <keescook@chromium.org>,
	"x86@kernel.org" <x86@kernel.org>,
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH v2 1/1] x86/Makefile: make -stack-alignment conditional on LLD < 13.0.0
Date: Thu, 10 Jun 2021 15:49:47 -0700
Message-Id: <162336538453.1311648.12615336165738957417.b4-ty@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <f2c018ee-5999-741e-58d4-e482d5246067@mailbox.org>
References: <f2c018ee-5999-741e-58d4-e482d5246067@mailbox.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=YhdFmwb4;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::532
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

On Thu, 10 Jun 2021 20:58:06 +0000, Tor Vic wrote:
> Since LLVM commit 3787ee4, the '-stack-alignment' flag has been dropped
> [1], leading to the following error message when building a LTO kernel
> with Clang-13 and LLD-13:
> 
>     ld.lld: error: -plugin-opt=-: ld.lld: Unknown command line argument
>     '-stack-alignment=8'.  Try 'ld.lld --help'
>     ld.lld: Did you mean '--stackrealign=8'?
> 
> [...]

Applied to for-next/clang/features, thanks!

[1/1] x86/Makefile: make -stack-alignment conditional on LLD < 13.0.0
      https://git.kernel.org/kees/c/e6c00f0b33ad

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/162336538453.1311648.12615336165738957417.b4-ty%40chromium.org.
