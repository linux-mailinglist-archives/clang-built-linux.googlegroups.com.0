Return-Path: <clang-built-linux+bncBAABBWN5TP6QKGQE3WCKTYY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x437.google.com (mail-pf1-x437.google.com [IPv6:2607:f8b0:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id A2CB82AA74D
	for <lists+clang-built-linux@lfdr.de>; Sat,  7 Nov 2020 18:52:27 +0100 (CET)
Received: by mail-pf1-x437.google.com with SMTP id 64sf3465828pfg.9
        for <lists+clang-built-linux@lfdr.de>; Sat, 07 Nov 2020 09:52:27 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604771546; cv=pass;
        d=google.com; s=arc-20160816;
        b=cadaCO//WrFomnpMGYDDhGDq3U4hRkVy9l/K4HWXfLbNUdoVg4mFgupMQa88a5O3K8
         FCzK1wDPwV6KubsQWSMCwFBFVWKAL5hCPZTtfTCA94U/8tnfUp+JZWUga+Oh75in+Aw8
         8TqlRcpf5N/xxpcz73Klc73iJOL2SrZDLnFIzBuUYRSCdB/eo5g1r2aoNB5jyCYHubWj
         WOmj3tKc6yPpQqdOCVik0EqrM5DzqpTKyvzvhJvH4PKlTx9JrP0SzbGSvlYSMEtAM7Sj
         NBMalKZt6OO8AKtSXFNA69jqkFWojK76MrDzG+DiKr2EGF6XjyY/231Yihx6pAhqZDyx
         Erow==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=ifbmePYxRuOPyx5xPxxcVpw+BWMhJO8KZf8s3c6QWUM=;
        b=I7l6SV/dlKmmm7DQOSFgFHD9fbnv8xKNDGvPdbIW+6U0OU0vx32lDiBl42g+Z0RkX+
         /h6FLj4mzJL2nbLF+B3vsLv6qhzXAteQy1/i8yv6FdfAxDeL5Mb0dpkg7SbG6/vDnu8b
         OM+0k4OuUhC+l8EzJuwxcZJwgt1plGt2/NwYkdWk0eu2UfNrvBg0tIfwqQY7rOkFIENO
         z39a+xGG9Q2hp597x/KpGAtDYjAHWL4eaE83OCmIviSFH6voWJ7JHmcu86Nhd0jdne9t
         LisPakzznoFUhcuC0UxWPTBX8YsT5KJm7m06OUlZMFs612I765jfczEsgw9cq4pwS3ld
         rZ7g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="KwKf/2R5";
       spf=pass (google.com: domain of kuba@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=kuba@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ifbmePYxRuOPyx5xPxxcVpw+BWMhJO8KZf8s3c6QWUM=;
        b=ArTT9npCklZnGo8Z540eEbBCuC+n1PZklbKwKFi3bl2yLwrrW/FWX3gABC8Iwwl1SR
         EjRUXcjvwQuJPEQ+W3p0CEg6I24MvtHmD+69Z2Cjae9MojEJz7X4SQ5BmYKYo3mCKApk
         oaptEVWRwvY2lFohY872tzI0kj0k9ln7wf6RyopnzeNaCcRVER8SCSwr06IEuvJqDacH
         ePuPePpHLYXX9/ML590L60Hha9KSd0s9VE3lGswTrGEnrXYlrlMhC1D9s+GF15b/AW1T
         501+gJbszCfL4w6Jlrl2+SkqaPIXsMP6cENZiYDBKNBGJhu9MPfoDkbPpvgs6QufwNzT
         lJ1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ifbmePYxRuOPyx5xPxxcVpw+BWMhJO8KZf8s3c6QWUM=;
        b=LTF0WQaDKcsm0MZ8/1iZpm1W1SHPK13e4K/y5T5zqhx7WG8WO6k4uhV4bwph16wpsN
         1jCq9ch3X06kT+KJgQzXyzsN6VyAeWxXchl5AOH23Y81halSOWXWRxOD2J8Unc1mKUmv
         2ZuPX2ujB6bp82WLCBFGfNZnfnN27bzfqqGcB4VdQC+I8FavFpk66g5X2nTJpEs92+5x
         24AqrbXj4ZZb/G4BhDGhuRkZRAh5utRA5CQ9aWBduGHKmBkFQSEFS/Sq5BYy0HbP7UsX
         TVHQpGrbyRRnCPPJsYnOYBJjiKSj+3sGMtD6t/EnyEzxepHiR81FllullQ3A2DatQ+0J
         uKng==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531o6rdYFcJg9JN6iGHSo6hJ0xXMyjUB0Lkjw6dzIubCmoKedDxY
	R1hj5lSIEnkYLlEKRyMEe3Y=
X-Google-Smtp-Source: ABdhPJyLtKaXc7pHFQGVUOzSIdpRXbkqvDpUGq0+OxIJF4hO0bl64D8Q5raPCyNmXwQJ8AyUnUt8Qg==
X-Received: by 2002:a62:51c4:0:b029:160:922:d7a1 with SMTP id f187-20020a6251c40000b02901600922d7a1mr6957130pfb.34.1604771546116;
        Sat, 07 Nov 2020 09:52:26 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:8055:: with SMTP id j82ls1764820pfd.5.gmail; Sat, 07 Nov
 2020 09:52:25 -0800 (PST)
X-Received: by 2002:aa7:9699:0:b029:18a:e057:c44 with SMTP id f25-20020aa796990000b029018ae0570c44mr7176898pfk.34.1604771545580;
        Sat, 07 Nov 2020 09:52:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604771545; cv=none;
        d=google.com; s=arc-20160816;
        b=x9lIdIfBAb3LC5UZtzqozRYhFJYv8XWbbYAp1TouQf8XMioBYk4GODZVeKrnHqdwC1
         RY7UE8OnYbKbhuTpD6lWPV++KCreRyhM18Nm0myOSgL1rFpVjVC7phXYn3wC+A7bj1Mn
         6/fsw2Xd2j1/P1R/1/a4j8aBVeYRt/NWzD6detoj6hFMhrlhQ911BOqvHdWX32jsxrKX
         7uiWcDW93SpE9I+0ET158Q7IzIl6QwtVaAslOG0es1kZ+Ypmx22iaXTNqd8CzKhwl/CE
         5EUUABGdSAKfY9J1Bm2nmnaHZbxql5x+FTQO2dmN/9JskmzU9J/W/k40O3c7J0dCDrAA
         qBBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=N0j2NpvidWeRdxPzG9P9GxmTEKD2ujiDrFXsdMWjr5g=;
        b=QVWLjppoRVb6jFwcdVl0ycL1iYkiHXkX/+y0jKRPRTOuZthLQ29nX8j5VfY0f4KGjH
         e1ZVh4cRr5qQ4seRUtjN1jnHeRl7C5iEBe36nH3YSYq2RVvB0RDA5YDZMuKgCbbQiaxa
         2jiDtsjV7rtTWYxce9CWXL51lvUIYMPtMCEezgCczKh9L6ltZJOnsrzmrGPnqWnc1OSp
         vRulVk+12QbkbSNxx12V5dHfU/NVG9ihZOfqM06yo4Mv/qLOoLy3maIIQdyjUXKmPq//
         4ycMaTF/12dJY8Nfjj7Owqw42gKkPJI7k40l+ZtqO/KpcO/WjxvwQjfxOap5/571xk7f
         6GJg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="KwKf/2R5";
       spf=pass (google.com: domain of kuba@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=kuba@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id cc22si370021pjb.0.2020.11.07.09.52.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 07 Nov 2020 09:52:25 -0800 (PST)
Received-SPF: pass (google.com: domain of kuba@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com (unknown [163.114.132.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id D209320885;
	Sat,  7 Nov 2020 17:52:24 +0000 (UTC)
Date: Sat, 7 Nov 2020 09:52:24 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Pablo Neira Ayuso <pablo@netfilter.org>, Jozsef Kadlecsik
 <kadlec@netfilter.org>, Florian Westphal <fw@strlen.de>, "David S. Miller"
 <davem@davemloft.net>, Nathan Chancellor <natechancellor@gmail.com>,
 netfilter-devel@vger.kernel.org, coreteam@netfilter.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com
Subject: Re: [PATCH] netfilter: conntrack: fix -Wformat
Message-ID: <20201107095224.63c27a1b@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <20201107075550.2244055-1-ndesaulniers@google.com>
References: <20201107075550.2244055-1-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: kuba@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="KwKf/2R5";       spf=pass
 (google.com: domain of kuba@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=kuba@kernel.org;       dmarc=pass (p=NONE sp=NONE
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

On Fri,  6 Nov 2020 23:55:50 -0800 Nick Desaulniers wrote:
> -			   ntohs(tuple->src.u.icmp.id));
> +			   (__be16)ntohs(tuple->src.u.icmp.id));

Joe has a point, besides __be16 clearly is not the right type here,
the result of ntohs is in host order.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201107095224.63c27a1b%40kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com.
