Return-Path: <clang-built-linux+bncBDMMLW4BXYHBBJNHYGDAMGQEAJWRUVY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3b.google.com (mail-qv1-xf3b.google.com [IPv6:2607:f8b0:4864:20::f3b])
	by mail.lfdr.de (Postfix) with ESMTPS id F353E3AE553
	for <lists+clang-built-linux@lfdr.de>; Mon, 21 Jun 2021 10:53:58 +0200 (CEST)
Received: by mail-qv1-xf3b.google.com with SMTP id k12-20020a0cfd6c0000b029020df9543019sf13514778qvs.14
        for <lists+clang-built-linux@lfdr.de>; Mon, 21 Jun 2021 01:53:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624265638; cv=pass;
        d=google.com; s=arc-20160816;
        b=vz521AGQ+cz587jRfOA/HCo3TXmQF6nPC3oxvaD6pEUEL7NXuT6UHvzyMQWmnfILJ2
         FGcTIIuiPXiPw3JDDLiq1QnRuhdViW19z96sp1e2Yy1Nztz0k+MrtfQic7FyDlGLybAA
         loplADg/6KCN800ELU4uI2RpUKzIHuVstMZoRb2Tk5xQB/ctEXQsQJgrlnJeVQ+8K7RH
         eR00Z2E+hyuggjTXisSnkwHiKVDQZR0ePGdhfJTC7pcyGnSpr2QMlYK1paSW+nfri1Oy
         +sbzaaYyQA2wJc6AAaBJb+OlZYUmSyQtshr6e/Binl+MeSFoROAjNqlvR9bub/wK4LmG
         VA+A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=svW1hni1r8xlxVgwyI3Ws4UhtfORBDXocXLRGtS0lA4=;
        b=ekehbvNxWmVIcBZ3W8XW6kDgmA2J62VGG5qIZIAku1TDEfQkWKrW7VdFtUAoav9/9D
         2XMgYxBxAorkEWd3/92aBNfPwe7GQLNUf+nAsRafLk3/Z8WEKKZ65/HdN+84jYi7hZ7z
         GvbI51e0uw6nzem0CwB4zfZQjiqVWDtcb2+D15UrXR3DAz+REbHZPHFYcdCAtXOFmV5h
         3M3NZVVDmGiS2QRNld81B3NkJQa7d402GGcZsDhunKT4VrALBBLwRpH7kKtJojeuaYGf
         yS6lCUfixRHoxBIt8kt7puexS2z7+KKOggzKrdaX5EN6ouvM+3/lck0KKWICP1P3W+sS
         hbew==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=mgnTgKk8;
       spf=pass (google.com: domain of leon@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=leon@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=svW1hni1r8xlxVgwyI3Ws4UhtfORBDXocXLRGtS0lA4=;
        b=nGrqxpr5ryyJsYIQ0rXYY5RmX7jkAO9skCuOMIH08RHABnsxdXPmKW5dfd+W52tO7x
         XRBI8ktJlnRIxvJaVIq7tRBwx18W7aEyqmSlF62vUmdXeHO+7/Pt4NUlGMhAWErCR9mp
         cielfShf9OD9ZIhwlcCOxPHmQe/HmYSwa3sfPKj81OO39FCQCvZud+uh7njEHK/6j7fT
         O7mytkyicmXq2kBATqhdBj6MFWHlCugijyCISIDc08ebhQUO59I7sIqWzGL+S3yz03rx
         +6zqxaj7OXWFcU9Bln80hij5Qwu4N8jx8wlL5lOL5PtY9YOrr8X4TyVXoVei6wMT3Uim
         IWUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=svW1hni1r8xlxVgwyI3Ws4UhtfORBDXocXLRGtS0lA4=;
        b=afZ2AVWDBAAi5AF/3kDNHtof4IZjwqLOKTtgYveqFpShozq6m1byQqteockrp0r/6l
         UC7dpe0KDFB1rffjoULRLdN2HKfyAX5PMvxLo+gyWW89dEzVu0bhqQcITde/MX3mPvwX
         +arx3ZfjJwqdRoAryp/A9Kcwb3/ehnRrGjIT7Fzcr3aU4QuEXx/q8EWXeLx7Dwu3avyn
         pJTz7nyAAfsxpDRJnNQlv31NJ0WXLY4qgdwZ1D8xOZn8tr4KSFH2fhE1unpHXhoVgpWL
         LgVEPZpQ56VszotXOFolXEv0yrQHIT/Nup8HkZaWh3L3j0BUbM8BHFrQCnCl/tusw5Kq
         /B0Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530vu+y6rTDwcvNorm/pGlKBFFbsfPXhmn7sBK9FgpZG905gU24/
	uRXpCTKZiOs0+VXYWoBQ/3Y=
X-Google-Smtp-Source: ABdhPJx5BjsWT2sl+L3rIIkNq3SSwj/KwQpvS2G0R4zh43TwF0xMAJk17rn/gHRlIDnLM9pFEKPALA==
X-Received: by 2002:ad4:4ae4:: with SMTP id cp4mr18879852qvb.44.1624265638012;
        Mon, 21 Jun 2021 01:53:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:1a9a:: with SMTP id bl26ls9584445qkb.1.gmail; Mon,
 21 Jun 2021 01:53:57 -0700 (PDT)
X-Received: by 2002:a37:a24e:: with SMTP id l75mr21678135qke.175.1624265637585;
        Mon, 21 Jun 2021 01:53:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624265637; cv=none;
        d=google.com; s=arc-20160816;
        b=owO9VGgKMJR7qKhYB8XpGJDPt7x74UxPgZD1aH3CEVbPtCGEHi0NQjWDTfvS9MgQ62
         hD0Ju8gskimDADL/siBJkfAjAXc8ul5Mof9bDQI7NkMNFWLABdk3SBdYAUCVXj5okI6j
         ZkiwcdU90pyrn/XIV8dBgKiXtHHfeWjn9cn9b+PIAS5F0GqOU7UOB9v7ZNW8aMJl4wmZ
         LSGC9nxect9P5VyXk3bCuZHBhvBu4hhbqa+fp74uTYc+dFFjJ+hgEGxHKFsgvspVqUw9
         txHfQufTFUTzrfEpysHkG1SFfcD1WQcKJ//BUc4eKe0Ci7NSLLOTIGB3M7IAEhSxUlNN
         SNMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=20LLXvnskwr7F2B0HHzvzhv0lPCqOdFDrTOeXHLuv1g=;
        b=Zi9wa7hG07wCsljQwrHIGzUn8/gJvUcS7Z6zHc8IvJU7eSo/1jzYKLF4JyA+WPk4+r
         CfGs4flGNMhG0djplsJpMj208M4VaZbrbj3wZfyS1wMApoP5gqawEGb/QexyS8ugyEDM
         6t41A8ve2cE5CftIjUd/wuLc4MDSgpHqxZvrEm5CJ0n64Vi0aMnZoDsas64njaGatk0d
         PlzXyTng9oydCTzK7m7uGD1YtPFiOXrn+hCciJ92vjKOJspx8wzws2bLpRz0sST4j58F
         2guve7XgxdBx+QxcYfCzK0lnOpgHiKQtiZKNKhzxZYxcw3LYdTn81iyIULHjpn+EPCBB
         N75Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=mgnTgKk8;
       spf=pass (google.com: domain of leon@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=leon@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id e11si832768qtw.3.2021.06.21.01.53.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 21 Jun 2021 01:53:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of leon@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id CE39C60FE7;
	Mon, 21 Jun 2021 08:53:55 +0000 (UTC)
Date: Mon, 21 Jun 2021 11:53:52 +0300
From: Leon Romanovsky <leon@kernel.org>
To: Nathan Chancellor <nathan@kernel.org>
Cc: Saeed Mahameed <saeedm@nvidia.com>,
	"David S. Miller" <davem@davemloft.net>,
	Jakub Kicinski <kuba@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>, netdev@vger.kernel.org,
	linux-rdma@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH net-next] net/mlx5: Use cpumask_available() in
 mlx5_eq_create_generic()
Message-ID: <YNBToF0+eruEG7JL@unreal>
References: <20210618000358.2402567-1-nathan@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210618000358.2402567-1-nathan@kernel.org>
X-Original-Sender: leon@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=mgnTgKk8;       spf=pass
 (google.com: domain of leon@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=leon@kernel.org;       dmarc=pass (p=NONE sp=NONE
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

On Thu, Jun 17, 2021 at 05:03:59PM -0700, Nathan Chancellor wrote:
> When CONFIG_CPUMASK_OFFSTACK is unset, cpumask_var_t is not a pointer
> but a single element array, meaning its address in a structure cannot be
> NULL as long as it is not the first element, which it is not. This
> results in a clang warning:
> 
> drivers/net/ethernet/mellanox/mlx5/core/eq.c:715:14: warning: address of
> array 'param->affinity' will always evaluate to 'true'
> [-Wpointer-bool-conversion]
>         if (!param->affinity)
>             ~~~~~~~~^~~~~~~~
> 1 warning generated.
> 
> The helper cpumask_available was added in commit f7e30f01a9e2 ("cpumask:
> Add helper cpumask_available()") to handle situations like this so use
> it to keep the meaning of the code the same while resolving the warning.
> 
> Fixes: e4e3f24b822f ("net/mlx5: Provide cpumask at EQ creation phase")
> Link: https://github.com/ClangBuiltLinux/linux/issues/1400
> Signed-off-by: Nathan Chancellor <nathan@kernel.org>
> ---
>  drivers/net/ethernet/mellanox/mlx5/core/eq.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Thanks,
Reviewed-by: Leon Romanovsky <leonro@nvidia.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YNBToF0%2BeruEG7JL%40unreal.
