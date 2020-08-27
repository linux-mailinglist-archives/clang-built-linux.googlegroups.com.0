Return-Path: <clang-built-linux+bncBDS5JPEL3IIRBW4AT35AKGQE43PLSTY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53d.google.com (mail-ed1-x53d.google.com [IPv6:2a00:1450:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id 3126B2542A5
	for <lists+clang-built-linux@lfdr.de>; Thu, 27 Aug 2020 11:43:56 +0200 (CEST)
Received: by mail-ed1-x53d.google.com with SMTP id u11sf1700307eds.23
        for <lists+clang-built-linux@lfdr.de>; Thu, 27 Aug 2020 02:43:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598521436; cv=pass;
        d=google.com; s=arc-20160816;
        b=sO6Ugn9E4zi9fsDp4l7reerXm7VXUNBJ2cW/e5Q7NmwSYdCnDbFmU4ntrDMCWrbLfm
         XOasKxhiuc1FcyzCPwLUAgxoO2EdmobdPyCc+J3DXm/B+j2AS/gv9T9Dmo7YSHJsvZ/O
         459NNiuH2ZWxK7/EnZLjAIBORSDMKtoPCwzM4hjDTb+8U2y4TxVWfdE0omtg/ekUwYuX
         1TMWHWMbhUIcEODEMg1jn5BGt3Rccyf/ONfhlcJfT5Qqj/OEoQWOrTc5NF2jEaPjudnB
         4PyfFs6MubeGkE+8H3g73mhTYkLsFDFHTj/wX34KDPgaK9/gCqtnKGKZej2NKTtCJDgn
         D57g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :message-id:in-reply-to:subject:cc:to:date:from:sender
         :dkim-signature:dkim-signature;
        bh=VTa29FsOwOmiXVaaTYbn5LyG7+982k9QvUDeCQZ7yJg=;
        b=x8sVUdsgd1iVnn8FQ+lhm5VWaPmM7vwDtXT96z569k0CLubGQNLT5BLdnSQyOzWz7m
         CiDVHGmKaId66nSb9mC/N1AmKSvqBWblsCPuUCxvCFv13NRM+mLAmAVYYE05KxnOKUdl
         LzmIm+BEYg+YAmx/zsJTrjSIHMsKHSgEjcidUfobtomwvqfaFr/qi1MqdF2giedsZVV0
         es4w8vuxha2z8Fs6n/JAlsK+gdcSOyX3fNbs2F5gUBpclAne06yesfCpcwfvluW6+wIE
         oFGm9GKMudpDT5bhxexvJEcP9/6mzqx26npS2h8DsrqnAi0TW/ElbeMiNyoy4Rc7Rzaa
         xwXg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sd8cSLTL;
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=VTa29FsOwOmiXVaaTYbn5LyG7+982k9QvUDeCQZ7yJg=;
        b=SpgMkMbSisoVJmSYcYcpfMU23hedrw6j1vJPgAyjjKETy/E0wVCU9jIoVja9XAbt5X
         fvrSe8nVcIDAXnN/uE8SUiqarGCVIVvhBbN98auBG8pb+pPOCp/0P4K5UE0MEDlQe+Wl
         U4witbjR9oCoOedvuUtnadsKqEOQzBRYfeb11eqvrxLepU7rE0Y4CBnFYaKp9jGJCuB6
         UuyDfbioEtMhwy/zVHR4RT+ZX2FbFLRcuHLBhowCYEP5Hhptw42uV3tINEK+kS/7GPiN
         2Bz1bh5yjr0DAf9BvHN6rv6INH5PioWnCwP1GFChzM+sp0odBoCDrOqs1tAbCtgO0wxM
         ecZg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:date:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=VTa29FsOwOmiXVaaTYbn5LyG7+982k9QvUDeCQZ7yJg=;
        b=RYxbf8ipK4yfTpGfhcz1XkhmRuEzSwu238fmOjFmHyKqPiJpOszyXw3rr+yWrPpPt6
         qPXztEQcTu3afO7sKN8KhZ4L/eb8JwgHkZnA8sLz+Ko6wxqwDmK5UushqQMNKtuky6rg
         4/JQxCjeF6oUIK6dEFTNJULf426K5T/VoVyjfRZCG85KeZIPqcyjuQrRyr9yleSPlBP/
         f4IhJpwfylSPwGR3OMHH2CaaoyiKj5gr1jUOEQeW1qaGzM2qNJ24jfx3Q3S96ENYA2T5
         fAfcH7Ujrlfq3pLiLE4f0MXcI1aEqZp0p/rSaPpL9lePiT6I12kEIEhlYcqWPKzaXOPf
         QWeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:cc:subject:in-reply-to
         :message-id:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VTa29FsOwOmiXVaaTYbn5LyG7+982k9QvUDeCQZ7yJg=;
        b=BenyXl+TDyT4L466ZEab0UDdNWzenjpl33vkhMZKPWUAbj3yhCmnw3H1qa7g23yi42
         0YNCB/caKs8yrQhQXn2gOzIq1BMxqlk41q22eK4k8ktQfM76rB8mP3+mF32JBdPRRllx
         l2+f8hOrhQA3DaNP/+XXgZiEo5ljq4YHdPVJaOKW1ctd93izGzNk2iPO7k/N+FAW9mBo
         UAGFj+lIuatVCLuo+n+zK07YpkUG1eBueHG3U6UcXEQHPggctulG3+5CcjVu/GRhFk0n
         8KQnkH968JVu68FXioudd46U69tP8n2yQ8SLmFZk1m1NQNII36RZ6OYRkKQCTmp5wtVN
         LeGw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532v+Qb13wNg6c1FOwjhLodTcak2UDHjhpiCEuR37e/mAsc6ywHS
	wMBwL9sFFhbrUp2LKPjXs1U=
X-Google-Smtp-Source: ABdhPJzEHGSXCn7c4R/So2hNopJd8CXsLWqvrYuD3NeVQNk96gRfYVxrZnpeF+2Z4byvCx6NpsF+Rw==
X-Received: by 2002:a50:fc04:: with SMTP id i4mr1029774edr.14.1598521435901;
        Thu, 27 Aug 2020 02:43:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:907:20e1:: with SMTP id rh1ls814247ejb.10.gmail; Thu, 27
 Aug 2020 02:43:55 -0700 (PDT)
X-Received: by 2002:a17:906:dbd2:: with SMTP id yc18mr21093390ejb.394.1598521435318;
        Thu, 27 Aug 2020 02:43:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598521435; cv=none;
        d=google.com; s=arc-20160816;
        b=fbKO+S93RiJpdQ6lWVMhJJRkYScYxzxz975nTS8OI/9iWciettgSRFtdAnkyHEW1N1
         hBPf3JmT3n7B7z8L/bEXWC51GvU/x67tjboBeLYGhp+kxslYQp0PFs7rUWEa3ASrrJH0
         dwxMKQ0AXI00jtkyV9X94yw/CuZYFqbM+hpJHmiaIrXv1T0fM3/cBg/D4Ie8nyIt8FNu
         5pN31Se+2f0jMBQsfvMgTEjTmj9jhboBukC0IPyhtftJXrudirRHAijih9KJ8WLNsKMP
         YISzBhvne8JwynM2g8sloN9TK3DdlSL52osCLxxIPWNECoOuM3G57+jEdZx0RTEay+kC
         bucw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:date:from:dkim-signature;
        bh=0Mp4vwB7y9LU8GtwQRrtrye3uKg2KIT3OOAY7NOPu+0=;
        b=vYrPgIxoHKZW9PC0/bwj7yBha/JwuURSSBEG6xC1jb/AUw1XA5ZNrMR1LQl5k1wIaM
         rZRcx3LFXTq1g7K4IVO87uf6XA22+yco0slqY+h6OwxJ1MxL81QBw6lac4sBMNK4zMDZ
         gs/nMGmD6yq/4hszSCHkGQgGjylEXU9pVcFNvUK8BsQek1n/hKsU7A3pjHvkpJUZQhhK
         JW7imYKtol8ZQUO7dvPxLz5YMqouWeFsFSz1Txp+kxD+QBYSCS0X/WEcBWEPXzP0shDW
         ixtpWpd4F557ACjFmCs8MbLxz1Fh4UosbnPleRZa8WH0D2gQO+WfzSVqc7HA7ZHPLAGL
         q7Gg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sd8cSLTL;
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com. [2a00:1450:4864:20::343])
        by gmr-mx.google.com with ESMTPS id m1si61561edq.4.2020.08.27.02.43.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Aug 2020 02:43:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) client-ip=2a00:1450:4864:20::343;
Received: by mail-wm1-x343.google.com with SMTP id k20so4507955wmi.5
        for <clang-built-linux@googlegroups.com>; Thu, 27 Aug 2020 02:43:55 -0700 (PDT)
X-Received: by 2002:a7b:c04a:: with SMTP id u10mr10662824wmc.46.1598521435021;
        Thu, 27 Aug 2020 02:43:55 -0700 (PDT)
Received: from felia ([2001:16b8:2d0c:fc00:340b:71b8:4541:aa75])
        by smtp.gmail.com with ESMTPSA id 128sm3965741wmz.43.2020.08.27.02.43.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Aug 2020 02:43:54 -0700 (PDT)
From: Lukas Bulwahn <lukas.bulwahn@gmail.com>
Date: Thu, 27 Aug 2020 11:43:53 +0200 (CEST)
X-X-Sender: lukas@felia
To: Nick Desaulniers <ndesaulniers@google.com>
cc: Andrew Morton <akpm@linux-foundation.org>, 
    Masahiro Yamada <masahiroy@kernel.org>, clang-built-linux@googlegroups.com, 
    Nathan Chancellor <natechancellor@gmail.com>, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] MAINTAINERS: add LLVM maintainers
In-Reply-To: <20200825143540.2948637-1-ndesaulniers@google.com>
Message-ID: <alpine.DEB.2.21.2008271137040.25858@felia>
References: <20200825143540.2948637-1-ndesaulniers@google.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: lukas.bulwahn@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=sd8cSLTL;       spf=pass
 (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::343
 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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



On Tue, 25 Aug 2020, 'Nick Desaulniers' via Clang Built Linux wrote:

> Nominate Nathan and myself to be point of contact for clang/LLVM related
> support, after a poll at the LLVM BoF at Linux Plumbers Conf 2020.
> 
> While corporate sponsorship is beneficial, its important to not entrust
> the keys to the nukes with any one entity. Should Nathan and I find
> ourselves at the same employer, I would gladly step down.
>

Please only step down if someone else is there to step up, though.
I rather trust two people in one company than just one person in one 
company...

> Cc: clang-built-linux@googlegroups.com
> Cc: Nathan Chancellor <natechancellor@gmail.com>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>

I certainly support to have two compilers building the kernel! It opens a 
number of interesting options on code analysis and verification work.

Acknowledging that Clang-Built Linux exists and is WELL supported by Nick 
and Nathan is on point and well deserved.

Acked-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>

I hope to continue to see the community grow, and clang warnings decrease :)

Keep up the good work.

Lukas

> ---
>  MAINTAINERS | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 33aab0c88118..0cbb24753153 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -4249,6 +4249,8 @@ S:	Maintained
>  F:	.clang-format
>  
>  CLANG/LLVM BUILD SUPPORT
> +M:	Nathan Chancellor <natechancellor@gmail.com>
> +M:	Nick Desaulniers <ndesaulniers@google.com>
>  L:	clang-built-linux@googlegroups.com
>  S:	Supported
>  W:	https://clangbuiltlinux.github.io/
> -- 
> 2.28.0.297.g1956fa8f8d-goog
> 
> -- 
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200825143540.2948637-1-ndesaulniers%40google.com.
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/alpine.DEB.2.21.2008271137040.25858%40felia.
