Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBDPB2GAAMGQEBFF7HLQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x639.google.com (mail-pl1-x639.google.com [IPv6:2607:f8b0:4864:20::639])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E3D3308E64
	for <lists+clang-built-linux@lfdr.de>; Fri, 29 Jan 2021 21:31:11 +0100 (CET)
Received: by mail-pl1-x639.google.com with SMTP id x21sf4044398plb.5
        for <lists+clang-built-linux@lfdr.de>; Fri, 29 Jan 2021 12:31:11 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611952270; cv=pass;
        d=google.com; s=arc-20160816;
        b=gSnVrT6xyauAOf1tq6tWB6bPSXHia8PPkSvc4UTsEgEn5rfdS1bSLleTyi2jEYb+qa
         dZ92W3BSzZaxcZXSqPuZnc/XDeiN/2VHdyXWqUzxs7RKDcUHDOhJFJIFn5YaBRfyIGok
         rNRJOMZbmuJ8T71J6DNeejbfCfLUvXaD7Dl6YiDB6ENxoWJhDSYZOIeb2EamAYdEVQej
         a07tNHBJfQEZfv+1Se/nXRbmCbziR8aPQ46OV2obpkw3EjOnCn/jmgvS5/zZ+dyqFCt8
         X6mBIJYMEagnGm3/WTf8X6VNpZ2nMcr6sv8e5arX7XNExp9Awit5XzJP1IXx77S/vWUS
         u3Sg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=yYpNZV12QB9oSNNr+IpLYbLgins7XVkDz5YNWUtk3qY=;
        b=F6WrKOgSmsjXy6h5+0CxGg6I+1k6Y3mw4IOrFzPH4rhSscp7SVU5/wBWtm94BNFEWi
         8MWOgvUBaYWF7w+88UYV2SmhWs0QT/pKXzCUlWg0ZM4s8r8s1+tQpbfvO6nYvUxAofQN
         JavVwvVdUAn+99lPIEpA51mPm2cChdfnVb7D+ViIssA++XZDiSh7PWlWjkI3OIojCFbX
         Sg8fcv4AfriU3EILaJKxUMYcm/nZK7c7YptYCtzjb75FjIuZqhAhqW8lQCLT6HDUv/qO
         S0PiiDYOcIakSzmYQ4hVw5STMYwD9YZeEccteK+R78U8eObOSrmNLQlX072ZSizGcOh2
         mfgA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=NKoGt53q;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=yYpNZV12QB9oSNNr+IpLYbLgins7XVkDz5YNWUtk3qY=;
        b=q4mqbBPeGmz2KY7mvsBqwUmqMiyLDppr1tdSZhMwlp0JkPB0tvFawiup6imLwR4Xlw
         zmcejU+CHP9GSd+srDkG03cmCTrRcQgLkk1aF3bm36bLF6BDKqvbu1XCvSsF20yYV/Ff
         gXCea/UGz3oIBxP9WUA4oxNbLODM4ZyqRwfhJYIP1abtUg/bSeFEqHNiaehKMRIKUSD3
         hydfCXn93XDOF32/ut6432bNtQK/EdJIx6IQpNJFGBocsRszR+/HQr1jg9SGyBFaYD/L
         zKSDYx0VpPaPjlWR43Kg+EODFMT/ie7Lb5BtyB9Y6uP/0rmEBL71TFnE52EZs756YVmA
         O1yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=yYpNZV12QB9oSNNr+IpLYbLgins7XVkDz5YNWUtk3qY=;
        b=glBk0a6fAA1qz2FG7KJOw5BtPVyMXDmPxRFSBKh83Xi2T5OcSc39YP6E6qZwQOAC9g
         /X+3/ai3XkJafFuL0lcfvyKFtN9a90sKhYwx7/WoXAz+V2BI2oSTM8susBgwMbOC+Cno
         rJu8rEwLqv8o9ZQgkgmv+ImeY22PoaaYvsrkXGkO10mXQ7bV0QrPBR74puINBiq5QFaw
         LyNp83tussNTIG2JK2X8+NB/fk12Uo7RutVnp+nOvBsRJaf6+Z0VNemGijdTt8KubGTi
         zyAO+musdeqXxfMZ1Lv7940mruR3fu5UbFsNgwdMB2ARNkhOoLy9RdhZeMyu//dgEM37
         ehtQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533Zg9dB/vYKOYwEx57qTN74T8bm5LxoWiajEHMZQr/BRU4ggg0k
	5oIaWvc2Dv95foBwJoKCsu8=
X-Google-Smtp-Source: ABdhPJwD16KKINo5zpZZad4L4UymztLx0AJ+7PDlaw5lXxS2M/lg5vweGKW37gz6iSbG8+QwjQnGsg==
X-Received: by 2002:a17:90b:370d:: with SMTP id mg13mr6081012pjb.161.1611952269937;
        Fri, 29 Jan 2021 12:31:09 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:71c6:: with SMTP id m6ls5187705pjs.0.canary-gmail;
 Fri, 29 Jan 2021 12:31:09 -0800 (PST)
X-Received: by 2002:a17:90a:9483:: with SMTP id s3mr6174454pjo.85.1611952269283;
        Fri, 29 Jan 2021 12:31:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611952269; cv=none;
        d=google.com; s=arc-20160816;
        b=aQQZeTFucGVKjwp2+B79WC9TbXZl3Xx5ieqDrpqOjGJsU8yC8HGpNR5pXKsUJSXSej
         MX1ioMKnyKJz54KZUsxlbY4QlkzehKIFgg8qe7pWDWvwBe/JoXLcaLQUlNsN9BezeHL1
         pTHJ1Oe3aMbDcf0ujGHj9RX4QwER9yrqkFBiBHqrePWb2vDcuqsWGRGiErvXVgObg1gB
         Zzud9FnywmmFA+KMANzDb5CGrGOlftRsJEVi/FzD6EqsXxxGfh3LxcJN9PSVffOqKmsu
         3i4dZ8yeYRGyhXyj87QDc4HTKxYF+gx5c5z7MIa9u9Jy+X5QCySxgLfD+aPqmT6nXkCV
         wMxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=KdWHv4JGc/m8S1uXDxXMU10RZxs3JdTATiXK9w9Fkvs=;
        b=TpCEHMMXV6/ff3hobhB3UPClffvXDCvRzAQt8YZkVTmbCTZHq4hMJ5F1zm9Hz8loBF
         e1lLPBC/Sg/uy9g8TxIjH0I4HkkLjwccloMEpne7Ky3CUGQ3CtilI7gSZO7g4qV+/wrT
         zqryIK5i1rpXao+j9jyE2F45uwjDdB2DIFyWDV4aAvfOi1ILpSSEgAGfvps2/ctGtVVR
         w7C3vgaBWeoismNLCzjgRmXC8QK7rQLrX78kYZd3/+vljPnPU0J3F9b4ZVo1htQlRvlk
         WEEt9BlZ4r2kvNOhbxiWusc5X4t/OQkUNPeoK9/hRlsaA21dANX05WhU5uRwmhXQdqjX
         reag==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=NKoGt53q;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id d13si714449pgm.5.2021.01.29.12.31.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Jan 2021 12:31:09 -0800 (PST)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 01DAC64DDE;
	Fri, 29 Jan 2021 20:31:07 +0000 (UTC)
Date: Fri, 29 Jan 2021 13:31:06 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Jonathan Corbet <corbet@lwn.net>,
	Masahiro Yamada <masahiroy@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Michal Marek <michal.lkml@markovi.net>,
	clang-built-linux@googlegroups.com, linux-kbuild@vger.kernel.org,
	linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
	Miguel Ojeda <ojeda@kernel.org>
Subject: Re: [PATCH] Documentation/llvm: Add a section about supported
 architectures
Message-ID: <20210129203106.GA2658360@localhost>
References: <20210114003447.7363-1-natechancellor@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210114003447.7363-1-natechancellor@gmail.com>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=NKoGt53q;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Wed, Jan 13, 2021 at 05:34:47PM -0700, Nathan Chancellor wrote:
> The most common question around building the Linux kernel with clang is
> "does it work?" and the answer has always been "it depends on your
> architecture, configuration, and LLVM version" with no hard answers for
> users wanting to experiment. LLVM support has significantly improved
> over the past couple of years, resulting in more architectures and
> configurations supported, and continuous integration has made it easier
> to see what works and what does not.
> 
> Add a section that goes over what architectures are supported in the
> current kernel version, how they should be built (with just clang or the
> LLVM utilities as well), and the level of support they receive. This
> will make it easier for people to try out building their kernel with
> LLVM and reporting issues that come about from it.
> 
> Suggested-by: Miguel Ojeda <ojeda@kernel.org>
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>

Jonathan, did you need anything else from me on this, or does Masahiro
need to pick this up?

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210129203106.GA2658360%40localhost.
