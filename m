Return-Path: <clang-built-linux+bncBAABB37HYH3QKGQE2N7UFLY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73a.google.com (mail-qk1-x73a.google.com [IPv6:2607:f8b0:4864:20::73a])
	by mail.lfdr.de (Postfix) with ESMTPS id 47E3C2032B8
	for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jun 2020 11:03:44 +0200 (CEST)
Received: by mail-qk1-x73a.google.com with SMTP id l6sf12333477qkk.14
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jun 2020 02:03:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592816623; cv=pass;
        d=google.com; s=arc-20160816;
        b=0t4N2yxnqj1S3O/dVdjOv9igkHqOWRjr0LOuaBPpynEw5SbECpL8V630p6bAES0UUr
         hzeq5weOwRcieyr9Tx3lQRBzINuz54rZGniu33FdsI67St69PE1MbVHMJ8oBe5zA2pc/
         s+hd6QV50U0PdqNCLU/AVTqwazQC7JpZIB/LWM0bF53sPZucXkycZZI4jnTJ1eO84QQJ
         /KRgqlzRa270oaxmZrtCvSfiyXF2lLk/220KncS718jl5Hi4wJyBv98CxaHGaF0Vzchp
         e4a+fiLxmNxSLgWY1ac/QOKtfQ2hAh0zjlvgm+04y9dFAzXb5wEWx/991nsZw7KET7+X
         lJeA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:message-id:date:to:cc
         :from:subject:references:in-reply-to:mime-version:sender
         :dkim-signature;
        bh=f5BHl8ewikjio2BhY3kdLBq2dPoKJz6TPes0sZRwLSA=;
        b=xpMLuOe39rpbbpVi30tllJSAfvTi2hfDX3eAPuEC7JULaTw+Iv+skEj7wHEvULue73
         BUYdqdLgWVY6QyvpbYMQ7MUILnCOhRDPna7H+XQGKVl0I2dZF0NsDpa9KnM5kvU6E9fU
         AhEofDksQ3skj74gJEx1BIiRcBK8qyIew+FPzxTO9IJF3WgnyqwRhP2O/JMYm9OliAMf
         SBYtWKJNSagU7bqWfwAZPrQgn2Pp06WMhkTTGyoIQuJCgnYSz4mm7gYxhXw/nOdbeJ2j
         adcnTWTF+s9wQqWpydyS6ejCOxkqGMyTGOXeJXrVkMlbyw2c0TYvayZ8F7qe0XLBqH+q
         JuTg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=vhvP7fE2;
       spf=pass (google.com: domain of sboyd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sboyd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:in-reply-to:references:subject:from:cc:to:date
         :message-id:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=f5BHl8ewikjio2BhY3kdLBq2dPoKJz6TPes0sZRwLSA=;
        b=SOYoz71E1JHapSyVrsV0A46j7L1/G+IF+EDONKGxMUtFC2KxhK41WhKa5RUfdkU7Ky
         +LFkcViNTXmlkMdEp6fcRf4X4/MXfdF+tbT27ovcNrLG0xL17hPDSnf0c3TAHqN0KKoF
         un5C+zDb4kGisDRQ4dNw8yVlAgSNDrLTMqha7rUM/8NjL5VcUpg6vdfrtt+44wjHcffY
         0vhSDc+OrQGKhaGbRnqSEdwr1ma0gJRZkEt6MPWtUvtjQtaYuEnXJgS1fu/YeoT3k6Fg
         X0TD4kAL1txb8pBsLzEhtPbm5obnC2EKrn9LRQcjGcsbQuMMZU28YYpjVHIhhiOjlY7J
         NVKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:in-reply-to:references
         :subject:from:cc:to:date:message-id:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=f5BHl8ewikjio2BhY3kdLBq2dPoKJz6TPes0sZRwLSA=;
        b=de4OEG7+FnUC/lDoYrI4orSNdLe+vzZBLBvbWOtxVjb0tM+5CPzHtqnf5aD0VWJ3yh
         1pwM3qMVgxvcH+9btk5pXLxFuvj0m99iDPFD9pyIMemfGTd/yeHdV9CK61HSanrtLNjc
         OfZCBQr7E2PF7AHdPJ81lSbJvPzGBEcYx3eNZoXol+a/DRt0LEUdtJOAKu2bUwu5il4Q
         GiIKS5ytr628h39PfakpGgoyZc9dsRrwPEIkmVLIgpK8uN7YWlnstvogzvUg+Tg+artL
         EQbo80r1nmA4amO72RxPjPN4lHProJk5F2LUyyx+NiND/WKMS1sVlMhb0Ut/mgIIwV6F
         rluA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5330PDZjjlVmYXpV1B54eMidnQx4dhsgJPmtcHkG0kpuOSPVFRFO
	Bkgo+8poNqN/y/VTcZ4kxWo=
X-Google-Smtp-Source: ABdhPJwTy9xx//HjGa1A3jkTjmLOSU4HSCZ2/50zvMjyf1Caco21CGUp8peFXWy9QP4SLZgkvDSw5g==
X-Received: by 2002:a05:620a:142a:: with SMTP id k10mr14523028qkj.182.1592816623343;
        Mon, 22 Jun 2020 02:03:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:95c7:: with SMTP id x190ls7585643qkd.10.gmail; Mon, 22
 Jun 2020 02:03:43 -0700 (PDT)
X-Received: by 2002:a37:a386:: with SMTP id m128mr15347602qke.224.1592816622942;
        Mon, 22 Jun 2020 02:03:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592816622; cv=none;
        d=google.com; s=arc-20160816;
        b=01bz1OEV3KVkKKFMnYFzi7g/Ro9kaWj0sqr2CzN1REAB+c6eqOW0wNoi6Dd89j4PuM
         HLD8yQPzCde9Awi5TaJBDydh/t02uhffprq7yX9A5dPJMAvqcrLAEo1BXxe5ts2Y2Rw0
         ZVI68H8yRY50pqSVKUElP/4Nd1hboocHSvx5XswIqnCa5+lmMJPuaB8KWFaugWjP62Dr
         M88FQRauI0oo63oOcTx641jPvTRXzHTAsWVHg/1zRuw+TFf0uZnLobE2HonRXfDvgQiy
         cKSLKQ1iY18AIqlKI2TA5V5n5mU74LKa7/sIZwim2jKNx/xuyJTmxErYLNapQqYcoJZ3
         DNMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:message-id:date:to:cc:from:subject:references
         :in-reply-to:content-transfer-encoding:mime-version:dkim-signature;
        bh=W7mMJMfwiOsoTyJtblLoop9YC1fTBONAzVjKbC7wlds=;
        b=hT/B0Tn2tebfYeNHveL0oNPinzNqIukJPDyMRJMRLEXrLyzYxvHDv1yL8nx3wvc/Zc
         OSxClAgEPNpbINLqXKZbagx9BBTzzJTZgJzt/nlnV9mXvfFlB1Qwvg0rXKmJcTza6/3S
         SEDZIyJaKnDUURE92aKX+1wX0V5p8bDQFjpEgMBze+A8ymA8PGclDRWuo+4EW4XT328K
         JMQMJmzY/nOGtfjgGYis3W7077qHR53v3XBL+f1ws4dPoWU/V6C1aI9lzXmCG7RZDNTb
         5L9MDFxwjqbyJ+B/juAO8V3pYJhDDAixQQ+YGo0DR2LQKIBgMSjvoejW73XaS0TDojFI
         0kcA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=vhvP7fE2;
       spf=pass (google.com: domain of sboyd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sboyd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id z7si571713qta.2.2020.06.22.02.03.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Jun 2020 02:03:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of sboyd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from kernel.org (unknown [104.132.0.74])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id C351B206D7;
	Mon, 22 Jun 2020 09:03:41 +0000 (UTC)
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
In-Reply-To: <20200620033007.1444705-8-keescook@chromium.org>
References: <20200620033007.1444705-1-keescook@chromium.org> <20200620033007.1444705-8-keescook@chromium.org>
Subject: Re: [PATCH v2 07/16] clk: st: Remove uninitialized_var() usage
From: Stephen Boyd <sboyd@kernel.org>
Cc: Kees Cook <keescook@chromium.org>, Linus Torvalds <torvalds@linux-foundation.org>, Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, Alexander Potapenko <glider@google.com>, Joe Perches <joe@perches.com>, Andy Whitcroft <apw@canonical.com>, x86@kernel.org, drbd-dev@lists.linbit.com, linux-block@vger.kernel.org, b43-dev@lists.infradead.org, netdev@vger.kernel.org, linux-doc@vger.kernel.org, linux-wireless@vger.kernel.org, linux-ide@vger.kernel.org, linux-clk@vger.kernel.org, linux-spi@vger.kernel.org, linux-mm@kvack.org, clang-built-linux@googlegroups.com
To: Kees Cook <keescook@chromium.org>, linux-kernel@vger.kernel.org
Date: Mon, 22 Jun 2020 02:03:41 -0700
Message-ID: <159281662109.62212.9073761737183602994@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-Original-Sender: sboyd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=vhvP7fE2;       spf=pass
 (google.com: domain of sboyd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=sboyd@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

Quoting Kees Cook (2020-06-19 20:29:58)
> Using uninitialized_var() is dangerous as it papers over real bugs[1]
> (or can in the future), and suppresses unrelated compiler warnings (e.g.
> "unused variable"). If the compiler thinks it is uninitialized, either
> simply initialize the variable or make compiler changes. As a precursor
> to removing[2] this[3] macro[4], just remove this variable since it was
> actually unused:
> 
> drivers/clk/st/clkgen-fsyn.c: In function \u2018quadfs_set_rate\u2019:
> drivers/clk/st/clkgen-fsyn.c:793:6: warning: unused variable \u2018i\u2019 [-Wunused-variable]
>   793 |  int i;
>       |      ^
> 
> [1] https://lore.kernel.org/lkml/20200603174714.192027-1-glider@google.com/
> [2] https://lore.kernel.org/lkml/CA+55aFw+Vbj0i=1TGqCR5vQkCzWJ0QxK6CernOU6eedsudAixw@mail.gmail.com/
> [3] https://lore.kernel.org/lkml/CA+55aFwgbgqhbp1fkxvRKEpzyR5J8n1vKT1VZdz9knmPuXhOeg@mail.gmail.com/
> [4] https://lore.kernel.org/lkml/CA+55aFz2500WfbKXAx8s67wrm9=yVJu65TpLgN_ybYNv0VEOKA@mail.gmail.com/
> 
> Fixes: 5f7aa9071e93 ("clk: st: Support for QUADFS inside ClockGenB/C/D/E/F")
> Signed-off-by: Kees Cook <keescook@chromium.org>
> ---

Acked-by: Stephen Boyd <sboyd@kernel.org>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/159281662109.62212.9073761737183602994%40swboyd.mtv.corp.google.com.
