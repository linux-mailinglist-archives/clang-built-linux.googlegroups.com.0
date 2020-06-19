Return-Path: <clang-built-linux+bncBC7OBJGL2MHBBCX2WL3QKGQEYEB36SA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43e.google.com (mail-wr1-x43e.google.com [IPv6:2a00:1450:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E5CB2009FD
	for <lists+clang-built-linux@lfdr.de>; Fri, 19 Jun 2020 15:26:35 +0200 (CEST)
Received: by mail-wr1-x43e.google.com with SMTP id e1sf4296513wrm.3
        for <lists+clang-built-linux@lfdr.de>; Fri, 19 Jun 2020 06:26:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592573195; cv=pass;
        d=google.com; s=arc-20160816;
        b=fO/gdq0eGD6lNdBiZJg0Cznz3zW8MIHIbwnG2gyN+oFRtocG8d9ihKfAcpbpJ0rGnX
         /LeuthvkUVoXxCXtXBNFo+X0MDZB9R7u13Q/lOEe2l636cJtSjPspw9al0vWNozM3QAW
         9Gc3HUZfO8q8K421t+S3PpqueTvAq+Ho6vf3zUThTSB3pKgxnPAfibxfy6+CZ3SREra1
         JcNRYHNW6ydpEtHFXa8RxqrdcXQ/pDxrsr7lJ/DVyPplLFnbm4B2deVbjz+WS8nTf91w
         T46lY9x8pV4LDx4QRAMUM/5gBN/vV6agqxUSnFtaekLzNrgjWuyykSh8UdyX37dtMxVO
         fkdg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=mj3PifAHvKecDBdDpFTxtgM8KF4pqA6hzovxkec5BkI=;
        b=WMQG5agANoTt36xxRBu515U84jrat4eUMDPb1pMoXSGyXvv8+NsHXhW1EcRj1SuzDO
         ic23JqHsTKmSPHoHCweo6nLd0p213iphvt5fJKjQgIyWXe0by2YspYpBv9gv8jc563ZZ
         +ix5TpYyi94T9QQ7vDBpg25LzXx4MRkCloNk1sVFpV1fFT2SJRhojBWe201syIhwLRXQ
         owqUAey8vYGOPdvhbFbl9gCLNywhYm6dlvaZ3xHN1/FwYANhf75Otp7i1Ny09q3sF2eM
         DHz02NspJjgVg1S97yOVlGMXOywxdLF+or400dV94ir47Zna0JZWWSlTJykAiX3M3JjJ
         oiDg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=QLUC48eA;
       spf=pass (google.com: domain of elver@google.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=mj3PifAHvKecDBdDpFTxtgM8KF4pqA6hzovxkec5BkI=;
        b=hk3679o3KHZiOOeMencJEfmYjrVnhCBrRKbBfQJ0ZKPTAthmQxg4JdroqM8lUpp3VY
         pdRPX5cFeVy5KQ9+baNlo6BVOY71KQnKlQq5YjDNF0N1Qa5mC3L/yJyBHGbB8OkDiVjd
         IMWblm4CZ0lnFmVs9bP9lZC+eVFgR+ix0KzUh8O1MVuRxBvRKOs036L2CbU1EwMQlxp+
         WkFePRHh1K1K2FAb2EVz8Gie7xS4xP473C9xhZ2JR0qyHEHdnDrT0eWxT9lL1HLBkwJt
         w8McPef/zqo3xufAN9zBpO+rs/k2s93Pg7Cp14ByDCbOcrPwrqvbj4CtErxiq/oho38o
         2sLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=mj3PifAHvKecDBdDpFTxtgM8KF4pqA6hzovxkec5BkI=;
        b=HHg2G+ScX/qtKDfpdhENCi031wyhLsdNB+CdZWi9BNS5sCWV6vM1iy9DrkXLzHcdxt
         lnS12pX9J9jaFA8XwIIB3+2l1aobTwnlpQOsi4OJ/rWl8OUJlnc8Nh7AXXaUeV5gIJma
         YIPRgcklTyjSyRjSfnbGmhkHDtnz+3kUtmL4tH4uBT5pVVC/dfYMhFwK1RW0ofOrKO4O
         PsPz8Ak8Btmk0PkQoeL/jrnGQzfuEOHly1xtnRBxs1tKLZFUL/hAk5T64ShasbMJi7L0
         pZiOkFmrEoTtOAgtDJ3EPhndzzpYC/7UmU+1iEHEwlqA1CoMK4lK9ClEaXocWdlREG3n
         Ndeg==
X-Gm-Message-State: AOAM532ktYxWydfFNfDTvl8CnQ+dMDb2HNy++5R8u/87xVQjC78ZOBf3
	+gA7acu1ga7Zg+jY4pMS240=
X-Google-Smtp-Source: ABdhPJxwV1TERCM6Hxn/llYUse4dcDgb9/9epkeMmT4ehmzVcK0VDnactFgJRF3DS+GAfk4mDC8NeQ==
X-Received: by 2002:adf:f988:: with SMTP id f8mr4446080wrr.81.1592573194842;
        Fri, 19 Jun 2020 06:26:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:6507:: with SMTP id x7ls2154937wru.0.gmail; Fri, 19 Jun
 2020 06:26:34 -0700 (PDT)
X-Received: by 2002:adf:e749:: with SMTP id c9mr4434590wrn.25.1592573194316;
        Fri, 19 Jun 2020 06:26:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592573194; cv=none;
        d=google.com; s=arc-20160816;
        b=gzWQIXetW6cJUMIDifh2kxN3oGhsP/1fQcnyPL3d/thMCOsHAe48tm5xlVnA6gGNli
         tWEIDk0shFr/SVzodYQpmIKcWfvhm0p+hzRgh9bDt8W0CDmbDBlW7jD9zeTPSncVMPO4
         KEd3rL9GdC9dk8gwbASbJZACUBOJLnfx/Lbv9eaKKImnuAdenkI/sEBRXgGkeR6dZ96h
         ++VN0SpatfUKCxQrpB6gFA3IY+eoPwum9a5BbPItFv1jocoT/hOHzLo7xRfUen9LbBGm
         Ez0g8VDC0XM74yl/vEmkAp4Az/3tiMTHVsKb7X4htMCn2TjxQitOKCY4R9owoGUCLw0X
         9ILg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=EDl06g4tI7RUg4Oea7vYlL/mQwT19V4CjRtIu35w2Zs=;
        b=H//Z4P9HbwqvDmHJDZ66ZduvW0Lhmnu/KYDmfp/qxnjjH5oUmWqEdH8B3QDR64aaD8
         rAQYoM7S6Bli/Ehe1802xrwP3BPJmRLGl6dDD31lJC8DPI20biACrUYrV6V7GqwbsUSw
         yrK8H9enACti0YXXgoUPrNiFNO2faEH1FV/lfzxpSh3aEwkdJt82ZSYn145s6XDXm1ZL
         v/qLoy0x7RqUfY2K6SoljijYAuIAWlaAG01LmeebXJi8emfGhGf/CY3eHIwPo9PU0dhp
         4WmIJw9y+ZXYpaZ/g3wQNfNXLOWuh0j3sWaRGNyc6dGkoCOiDnF08AOUAXWdyjxsmNJg
         nA9g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=QLUC48eA;
       spf=pass (google.com: domain of elver@google.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com. [2a00:1450:4864:20::443])
        by gmr-mx.google.com with ESMTPS id y65si701791wmb.0.2020.06.19.06.26.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Jun 2020 06:26:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of elver@google.com designates 2a00:1450:4864:20::443 as permitted sender) client-ip=2a00:1450:4864:20::443;
Received: by mail-wr1-x443.google.com with SMTP id a6so7739090wrm.4
        for <clang-built-linux@googlegroups.com>; Fri, 19 Jun 2020 06:26:34 -0700 (PDT)
X-Received: by 2002:a5d:464e:: with SMTP id j14mr4100659wrs.393.1592573193795;
        Fri, 19 Jun 2020 06:26:33 -0700 (PDT)
Received: from elver.google.com ([100.105.32.75])
        by smtp.gmail.com with ESMTPSA id u12sm7506265wrq.90.2020.06.19.06.26.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Jun 2020 06:26:32 -0700 (PDT)
Date: Fri, 19 Jun 2020 15:26:27 +0200
From: "'Marco Elver' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Sedat Dilek <sedat.dilek@gmail.com>
Cc: "Paul E. McKenney" <paulmck@kernel.org>, Ingo Molnar <mingo@kernel.org>,
	Kees Cook <keescook@chromium.org>, Will Deacon <will@kernel.org>,
	Sami Tolvanen <samitolvanen@google.com>,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] kcsan: Improve small stylistic detail in compiler-clang.h
Message-ID: <20200619132627.GD222848@elver.google.com>
References: <20200619125721.15946-1-sedat.dilek@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200619125721.15946-1-sedat.dilek@gmail.com>
User-Agent: Mutt/1.13.2 (2019-12-18)
X-Original-Sender: elver@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=QLUC48eA;       spf=pass
 (google.com: domain of elver@google.com designates 2a00:1450:4864:20::443 as
 permitted sender) smtp.mailfrom=elver@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Marco Elver <elver@google.com>
Reply-To: Marco Elver <elver@google.com>
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

On Fri, Jun 19, 2020 at 02:57PM +0200, Sedat Dilek wrote:
> Commit 5cbaefe9743bf14c9d3106db0cc19f8cb0a3ca22
> ("kcsan: Improve various small stylistic details")
> 
> ...forgot to improve a stylistic detail that was already done at
> another place in compiler-clang.h file.
> 
> Fixes: 5cbaefe9743b ("kcsan: Improve various small stylistic details")
> Signed-off-by: Sedat Dilek <sedat.dilek@gmail.com>
> ---
>  include/linux/compiler-clang.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/include/linux/compiler-clang.h b/include/linux/compiler-clang.h
> index ee37256ec8bd..c47141b185fe 100644
> --- a/include/linux/compiler-clang.h
> +++ b/include/linux/compiler-clang.h
> @@ -25,7 +25,7 @@
>  #endif
>  
>  #if __has_feature(thread_sanitizer)
> -/* emulate gcc's __SANITIZE_THREAD__ flag */
> +/* Emulate GCC's __SANITIZE_THREAD__ flag */

Yeah, it's inconsistent, but if you look at the rest of the file, none
of it looks particularly pretty.

This change isn't really affecting KCSAN, but is a stylistic change
confined to compiler-clang.h: while we're here, we could just bunch a
couple of them into one patch and make it "compiler-clang.h: Improve
comments style" or something.

1. These sentences probably want a '.' at the end.

2. Make all comments start with a capital letter, and punctuate
   correctly.

3. Multi-line comments should have the first line just '/*' and the
   second line starts the text.

Thanks,
-- Marco

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200619132627.GD222848%40elver.google.com.
