Return-Path: <clang-built-linux+bncBCQYFH77QIORBXNL4SAQMGQEWBCFSAA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-f192.google.com (mail-qk1-f192.google.com [209.85.222.192])
	by mail.lfdr.de (Postfix) with ESMTPS id AB0AE3264CE
	for <lists+clang-built-linux@lfdr.de>; Fri, 26 Feb 2021 16:38:06 +0100 (CET)
Received: by mail-qk1-f192.google.com with SMTP id p27sf7684996qkp.8
        for <lists+clang-built-linux@lfdr.de>; Fri, 26 Feb 2021 07:38:06 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614353885; cv=pass;
        d=google.com; s=arc-20160816;
        b=sKUBViUBsRshDNpfvDcFdVacGfYcjhrE5A7s+drq0lyVRnegrF91y3sUA03EseUWK4
         o7Rxk0HItGM1M86n/6ER8YIhaGz+DdqQp3RRxP3naXRUZ/wcsgKzTaNXt/PZIZrrEOI8
         LR35vYVqmwIwAfCSscPiy2svECblr/HR6YZt7/ppiOJT93dkk1/sjnUrW+hG+mkCJ49g
         kxyjYqLvtzM4neFJ1c4DM1W3T1wyDMz0FUhWMBi1WGkXC03mZUIXmnyN0YPomxEGw/QH
         N0fb1QOdP+nF0JfF/MHA9EiAqMiboBPwtCRMJwiOdyGmDUkcXNsg49htgkTVSqE7nizd
         MG3A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:message-id
         :in-reply-to:date:references:subject:cc:to:from:dmarc-filter:sender;
        bh=2mHS7sDK1LDN9f6gewbYRXQEflhIli0rhuBKdQ2uQgQ=;
        b=qrc4XxwIH86nx05XV7kprgkiMisLIkeInhaVgFPyLzDl7XBY4j8im9+l6l06j9Li4L
         6eujJbr5fwHIdPDVWptnpKvuvjvT9dkbvpuSR1z+GLbMkwqrDdHy4fRmpj3IRyeHKFYo
         2OhhdQrvROKrqb9ienM60li3L2BJjIcTY7wMHhH4Q0iav1KVkpQI9ZKb/KzscN2GImsK
         ZOoxvlTtbrRz0qK7ZBdcLJOiVV3z3S5Nz7uwihwhMNrHb5DArf3xvSsof0RkxThNdryh
         Wf5I8q/aXSAnowkL6VJOjuqbB33jgW7/P1RfzQgtTHPqc7znGozL1onEZwlJIXxihbP2
         rKEg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mg.codeaurora.org header.s=smtp header.b=cAcZTNUk;
       spf=pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 104.130.96.11 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:dmarc-filter:from:to:cc:subject
         :references:date:in-reply-to:message-id:user-agent:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=2mHS7sDK1LDN9f6gewbYRXQEflhIli0rhuBKdQ2uQgQ=;
        b=SUeEdCPUzuyG7PBMj5daS6nPjcEXiuJEhYxfN/pUmoeafu98/svKUfGwz0u4hFJWIs
         lA7FWjhR0V/RNww0lRDtBf3VQR7Xg4vqi/sf+87UHPPz6F7P8lN7/ECtcvAQeko8rpjF
         Ho/eCN9uoCcIQpv32GlVUIOq5DZQRJEujOpe/Y+FPV72YWY9/H5C9wC6AU+yDXaPcj8u
         9pnCvgp8bkgvEO9WtD53Ta+lqyeLYXKcN+ivTOU6gDnFqZl6+YSMYjwl07dXBOxuA7Qb
         aHXG4PxmVZsh/DpCYfiFGeAHA71XWpRbU2XluU1gJcIUc2ZwijMXRN3SU9Hz0YqhmJpf
         U+Qw==
X-Gm-Message-State: AOAM531OiKQ/FaIrx/I4J+HnB3cN5OHfpfIBg/lTVBygkU95SS3ELBbk
	yvKLG26w7p9gSK2S5NgSdG4=
X-Google-Smtp-Source: ABdhPJxQe1h1i+gzeO7SlsinboCxLAJZktU6zq/JPkCYQ5B7LCmXJgepIKI9PNbwdz7zbrRkkDw3Pg==
X-Received: by 2002:a37:48d1:: with SMTP id v200mr3266012qka.159.1614353885577;
        Fri, 26 Feb 2021 07:38:05 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:524a:: with SMTP id y10ls3640262qtn.1.gmail; Fri, 26 Feb
 2021 07:38:05 -0800 (PST)
X-Received: by 2002:a05:622a:102:: with SMTP id u2mr3129927qtw.37.1614353885026;
        Fri, 26 Feb 2021 07:38:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614353885; cv=none;
        d=google.com; s=arc-20160816;
        b=PIlBu3I8mMpdPzpQchGLy/UXgyeWQszp/e01+U7cZTitZzCIQyCVc2GWvf1KIIiLN0
         eY8pI1UtEAWtxH5dYd93sZ8JjDZzGwD4I3gK6s75Rj2uofuo0Rq7j281GnpXKVHu53m0
         WC3FDiI62Om49/uGKovDcpsZ+r0Hoyc5vpJU+Q53Jk3dx4cgvBXJjsuJEIUJTDDB15It
         suef6JYYXCcJKyWK2tEqFjA6MMkvT3oxfweIx/sX91N1NtwdnuIGZbCihjoYIjqC1O6T
         Ksv+7I0Hplr9iiq9qt5qxCxumnp29TA9l0UHhLuJpHe5SHYftc8gacF5w42GSYe+24bu
         jF9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:message-id:in-reply-to:date:references
         :subject:cc:to:from:dmarc-filter:sender:dkim-signature;
        bh=Y11jeY4eLgaDwVm86bt5UA29oOY9D+tX6VVltEVFFPs=;
        b=B43U+5gsodK+x4Yq9s5QwkHYb34e+YeHjEsu+6/6IsFG7t3psB2FBbmVUnKfwQv+lW
         azE1lVnSPFdFbW3O0sM4Y1C4lv+EqjSZaOlEkFfgyBrduSUcAEOKhGVuNlLdYmO1wcx+
         0vQD61G7ztKm0T/s1pSGLQxC8xjrhlyThiDAxObp7MPdkTwueNGYmpZzgeo0PH8Xpp46
         5RLvh6et50zy1eShd1cl50TCKt9xHaHai+nMUjSGKsmom5IcYWrTRjN7czE0f3ihXlNH
         Bcu+8eyplKCzAsntpEkUfGKuAZwtGSzMjV62BYof1dOiAeFn55zCcLYNKqmec4Vz+z8x
         gR+Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mg.codeaurora.org header.s=smtp header.b=cAcZTNUk;
       spf=pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 104.130.96.11 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
Received: from z11.mailgun.us (z11.mailgun.us. [104.130.96.11])
        by gmr-mx.google.com with UTF8SMTPS id e18si223qkn.6.2021.02.26.07.38.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 Feb 2021 07:38:04 -0800 (PST)
Received-SPF: pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 104.130.96.11 as permitted sender) client-ip=104.130.96.11;
X-Mailgun-Sending-Ip: 104.130.96.11
X-Mailgun-Sid: WyIyMWUwOCIsICJjbGFuZy1idWlsdC1saW51eEBnb29nbGVncm91cHMuY29tIiwgImJlOWU0YSJd
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n06.prod.us-west-2.postgun.com with SMTP id
 603915d575e4458f08b07e21 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Fri, 26 Feb 2021 15:37:57
 GMT
Sender: kvalo=codeaurora.org@mg.codeaurora.org
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
	id 2CA0AC43464; Fri, 26 Feb 2021 15:37:57 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=2.0 tests=ALL_TRUSTED,BAYES_00,SPF_FAIL,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi [88.114.240.156])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: kvalo)
	by smtp.codeaurora.org (Postfix) with ESMTPSA id 1ED7BC433C6;
	Fri, 26 Feb 2021 15:37:52 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 1ED7BC433C6
From: Kalle Valo <kvalo@codeaurora.org>
To: Arnd Bergmann <arnd@kernel.org>
Cc: Felix Fietkau <nbd@nbd.name>,  Lorenzo Bianconi <lorenzo.bianconi83@gmail.com>,  Arnd Bergmann <arnd@arndb.de>,  Ryder Lee <ryder.lee@mediatek.com>,  "David S. Miller" <davem@davemloft.net>,  Jakub Kicinski <kuba@kernel.org>,  Nathan Chancellor <nathan@kernel.org>,  Nick Desaulniers <ndesaulniers@google.com>,  linux-arm-kernel@lists.infradead.org,  linux-mediatek@lists.infradead.org,  linux-kernel@vger.kernel.org,  clang-built-linux@googlegroups.com, linux-wireless@vger.kernel.org
Subject: Re: [PATCH] [v2] mt76: mt7915: fix unused 'mode' variable
References: <20210226142215.3482168-1-arnd@kernel.org>
Date: Fri, 26 Feb 2021 17:37:50 +0200
In-Reply-To: <20210226142215.3482168-1-arnd@kernel.org> (Arnd Bergmann's
	message of "Fri, 26 Feb 2021 15:21:27 +0100")
Message-ID: <87lfbaalgx.fsf@codeaurora.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: kvalo@codeaurora.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mg.codeaurora.org header.s=smtp header.b=cAcZTNUk;       spf=pass
 (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org
 designates 104.130.96.11 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
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

+ linux-wireless

Arnd Bergmann <arnd@kernel.org> writes:

> From: Arnd Bergmann <arnd@arndb.de>
>
> clang points out a possible corner case in the mt7915_tm_set_tx_cont()
> function if called with invalid arguments:
>
> drivers/net/wireless/mediatek/mt76/mt7915/testmode.c:593:2: warning: variable 'mode' is used uninitialized whenever switch default is taken [-Wsometimes-uninitialized]
>         default:
>         ^~~~~~~
> drivers/net/wireless/mediatek/mt76/mt7915/testmode.c:597:13: note: uninitialized use occurs here
>         rateval =  mode << 6 | rate_idx;
>                    ^~~~
> drivers/net/wireless/mediatek/mt76/mt7915/testmode.c:506:37: note: initialize the variable 'mode' to silence this warning
>         u8 rate_idx = td->tx_rate_idx, mode;
>                                            ^
>
> Change it to return an error instead of continuing with invalid data
> here.
>
> Fixes: 3f0caa3cbf94 ("mt76: mt7915: add support for continuous tx in testmode")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
> v2: remove the extra 'break;' after return.
> ---
>  drivers/net/wireless/mediatek/mt76/mt7915/testmode.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

You forgot to Cc linux-wireless and hence patchwork didn't see this, so
I applied this manually instead:

c490492f15f6 mt76: mt7915: fix unused 'mode' variable

-- 
https://patchwork.kernel.org/project/linux-wireless/list/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/87lfbaalgx.fsf%40codeaurora.org.
