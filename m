Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBSXK677AKGQE6B6LSBI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x237.google.com (mail-oi1-x237.google.com [IPv6:2607:f8b0:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id 2371E2DEED1
	for <lists+clang-built-linux@lfdr.de>; Sat, 19 Dec 2020 13:42:52 +0100 (CET)
Received: by mail-oi1-x237.google.com with SMTP id h4sf2561335oie.9
        for <lists+clang-built-linux@lfdr.de>; Sat, 19 Dec 2020 04:42:52 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608381771; cv=pass;
        d=google.com; s=arc-20160816;
        b=jkUv1ut1x7egNIWMZ+T2Akis6wnfjgOJtT7dC/Ld1fZNv2xn4fuc6L1kNBeKfaMGcb
         FpgQnDHNGdgv+8WdxnJomcZSDgsGN0kyxGokz+8jMHLaJlBfqAZpHRjj0GEVAWmZgntY
         spB7oB3i+8T9BeYYj3UICObUfoF9AAnxMBv3B9DAI4JRebpiPnRqUNCbsERtX8Y9ta+d
         l418dCNRDq36ekv0Q2MghqNOoGEIiZA74QxKYWkb+Dzq94WlnCT4LaVbOaQxPgtieL8X
         V+q0DGf7XpRl2yw5LAvtCcc8PeF0JM0zISX6xnnSgaze3+f+bvnWc8PXuab7AFCLF77o
         z7ZQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=lOTx+NaFML9BTXQLpkJwjtFcKpKF8uPQ57XoobIMp0A=;
        b=PW8zv0ndlKPl7o4AjlFitbDJYeUKUhL07lp3p6Vha4i8NeqaaQbcJ8WGWQbc6Pcd8v
         0jvLDb/r8qIbu8ZRj3NJ1tNpttFqLzYqFTJol+xHJ9fFEFyy5yx6RT0hFGiaruy9Tpw2
         RLDHt0q+M+tA2KR4/ZdFKVEuSAGXj+SJrnzLnGghdkuJtnsQHoi2r2sp62eBl+3fVdP1
         NsN+m+mO2BKsVDOgaaIEX5jDiMl6cLH0F+/o9XA3ddJCKPNhmPPF3oqQ+Vtq2TzAiGph
         suuNbkB6RJBANodb7nVjfd4oCB7FAKKqYRDluUMEwx5Xl7s7m1+zJbbc5tht3OIuyac9
         lwKg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=dIEvczRj;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=lOTx+NaFML9BTXQLpkJwjtFcKpKF8uPQ57XoobIMp0A=;
        b=YrkCVsF5U5d98ERvPb2FxTiX3Mlyb4ByYDObkn5g3p3OZ0xOgUkmCIzvNgYD6dC+I1
         4A0OYja/lVK0yaooZoz+ih9CbwsIL+eA8mRwhtirWy6ZaZDxt83ivlb4AlxkxUBFZvLF
         wQp0Nac6WBj927ouQ7OVLtOXpHRWD3mG3q/xBi4+eblIVzcsf9SdZx6RqJxZIDaVgLZI
         Iq6RqrNbZTqFigc3iRnmf58aaGcZ59cgH5cVHpabu2qtKa19TqTja6HG0yX8lfw8XU8R
         nTyFmpwJkXHL2ImCnadFJXpYi4exyAJuO5zquYYIdchexx0ktaGEqiKO1tZJzoz3/omQ
         yrxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=lOTx+NaFML9BTXQLpkJwjtFcKpKF8uPQ57XoobIMp0A=;
        b=dE5uXH54f4BtLEtpv2EZ/BouYunLkhw2Q9+j6JOMQ6Ewo4p/k/XFuviL/WKpjStfM2
         7JLwTbpnSq8dEYM7IhguXu/zNyrP9/qkrlFzlqghHhWFs2HnMALMXbIVBx/bQRieclmp
         wuB9Ib4v5sVLANxAAItOU980v1UYkQ1uWIft6AAWge8dGSuYQjX9MSHxLbEXae/NREsR
         ivpVKuXzFgiz9Z9btFf/hUa3SxQDEk/N4PkbP110vSSiGHAi1SMQTRviQGiR1Z1r6VUP
         vCjAYgGg3Qu0FNLxhLh7jPd3+HyUWo5e24MlTwva7gKoQc3ZI2AWikLToNFc07Tp6AxE
         dgmw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5327Y8NfzhR68wDa8M4edPK09qSfKoqcEchK6BFrIFimPsriP7f5
	nLbGITroZ2rjAiCgCvCb07s=
X-Google-Smtp-Source: ABdhPJykutLv7ri5KlcjoWXnKppwRnf72NdsATKadvwsfOF5ozT0R3/uoAFBm0S+GI4gXjEplcp9PQ==
X-Received: by 2002:a9d:67c7:: with SMTP id c7mr6124788otn.27.1608381770804;
        Sat, 19 Dec 2020 04:42:50 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:9c05:: with SMTP id y5ls527428ooj.0.gmail; Sat, 19 Dec
 2020 04:42:50 -0800 (PST)
X-Received: by 2002:a4a:4988:: with SMTP id z130mr6059615ooa.34.1608381770399;
        Sat, 19 Dec 2020 04:42:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608381770; cv=none;
        d=google.com; s=arc-20160816;
        b=MQaeUeQk6fnE/kFNq85Lt1jo5O1VpvbmYxRpC5iBxgkEw6lBeOaGIFKyOgVGHvq7dE
         C9OekpdRBjP/Q9sKqeinYbSm+eDq6Xocu9MTBYM6gcQve+bYTJ7ERcaGQUJ89bnmnOzC
         1Pz4EqijWAB4/iy+BCLrIwjfEL2qV8xWX65lTHz/6IIbT8gq7tNWjhyRFmyO1x7LXx2l
         wum7y4nZ9HqyP0hGpgb85a+5jWdWXKESLL1iMwIKfcF86aA/CCnBUkuWraKBvi5mDzFp
         Jv5wUTT14DONqFVe6Sc4JkV/OpvI20cm9N2t/Fx6YqephtOccgPmOZWfTD7E/C2t3dD1
         FnGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:dkim-signature:date;
        bh=PvyAFdNZcvpXHQUDqsfgW7vDMjhNwrF8Ssn6JNXLclQ=;
        b=KUBhCSDD/Rac/TufG6K1ILP4tavpP5ZVQY0dn7BX4SumQHNR73qXaXE3gHFSL9G/zg
         iwUL9tLlDQstW1h8HEmu52ivYpQtth/N0nCiy7lJAYly1oKYy1HDPooDEi/A3d+Ph6DX
         5U+VlE90swXJ1wpIrxKl06XBIPtf4rJBKtoawg0Hv5Bf+VyTRZNxjCojFwNEu/VUG3RV
         AZ/1MhhH6yOM2QnTxuB0Tx+C6VCNfATiXB1VBKcztHLYzNoOpnJRS0AzGztyLnsXpTBM
         QqjzqYVO+t2hhUK10wYtpGdkZxv7jENPTJgmfv+O77SdqaaB2xChtjb1uRNf36G+9T6A
         Ot6A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=dIEvczRj;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 7si753361otq.5.2020.12.19.04.42.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 19 Dec 2020 04:42:50 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Date: Sat, 19 Dec 2020 13:44:09 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Sasha Levin <sashal@kernel.org>, "# 3.4.x" <stable@vger.kernel.org>,
	Will Deacon <will@kernel.org>,
	Sami Tolvanen <samitolvanen@google.com>,
	Andrew Murray <andrew.murray@arm.com>,
	Jian Cai <jiancai@google.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Kees Cook <keescook@chromium.org>,
	Vincenzo Frascino <vincenzo.frascino@arm.com>,
	Amit Daniel Kachhap <Amit.Kachhap@arm.com>,
	Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: arm64 v4.19.y LLVM_IAS=y patches
Message-ID: <X931mZNdiLxCfEUy@kroah.com>
References: <CAKwvOdmEcjjw78K0Avj-7s5BBXcT7ARhEMMEYqpCP-ZT=2dAJw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdmEcjjw78K0Avj-7s5BBXcT7ARhEMMEYqpCP-ZT=2dAJw@mail.gmail.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=dIEvczRj;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

On Mon, Dec 14, 2020 at 05:08:38PM -0800, Nick Desaulniers wrote:
> Dear stable kernel maintainers,
> Please consider applying the following backports of commit
> e0d5896bd356 ("arm64: lse: fix LSE atomics with LLVM's integrated
> assembler") which first landed in v5.6-rc1 and was already picked up
> into linux-5.4.y as f68668292496 in v5.4.22 (adjusted for a conflict
> due to commit addfc38672c7 ("arm64: atomics: avoid out-of-line ll/sc
> atomics") which landed in v5.4-rc1).
> 
> Also contains a fix for that first patch which cherry-picks cleanly,
> commit dd1f6308b28e ("arm64: lse: Fix LSE atomics with LLVM").
> 
> The attached patches allow for Android and CrOS to build with
> LLVM_IAS=1 for arm64 for v4.19.y (modulo one small patch that I will
> send tomorrow).

Now queued up, thanks.

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/X931mZNdiLxCfEUy%40kroah.com.
