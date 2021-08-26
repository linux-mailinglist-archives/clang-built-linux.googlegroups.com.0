Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBM74TOEQMGQEWKESI5A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x737.google.com (mail-qk1-x737.google.com [IPv6:2607:f8b0:4864:20::737])
	by mail.lfdr.de (Postfix) with ESMTPS id B2F593F8089
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Aug 2021 04:36:41 +0200 (CEST)
Received: by mail-qk1-x737.google.com with SMTP id h135-20020a379e8d000000b003f64b0f4865sf993720qke.12
        for <lists+clang-built-linux@lfdr.de>; Wed, 25 Aug 2021 19:36:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629945395; cv=pass;
        d=google.com; s=arc-20160816;
        b=yJr3sRBz6/yCLIoxT2JlP3Sku5X377EKx+OcI2N+E8S2uZuXW4IwKosMn8crGAeOB9
         0kHC2ma/H1Utn/Dvu0TraVcAo9anOmkyoVhE8X9XUx4cuFprfqleaPsqTU9lmWyQJ+vg
         FuPkMMXcAHeh8u9Y6n9FZO00Q32WgEWuaAnsGQokWCjQ3bzXvJYhk/25ba6mP5nPpagO
         wVtVI7I8Hi4nRV11rUwQ2G9UF/PkwTEpD9K7WF5vVv7u6nYjjHdDJnO8yu/hkj4QGuIv
         0mWTwGtkjp+MXrLjHyyhxJQuak9yhyZhKfXpC7Votr7y5NR2OVenR73+qH6m3VcHp1Ep
         aAgA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=oUBKtQYmrdsRGiJTMOlf/AZ94Ns+IjJq+z59h0ta6Xk=;
        b=mwdKs3kYKNtXkukKhJbpOqsbtrDLycswwNnPTh23ws3rEdHIElybyNNcI9w3gxCCxD
         tiVQUIkAPgU8u25CQ1XJZTnmnFyAd5tKbXTkp7rr29OFZISMNxASOhv9SzJDkXq9c4ib
         yCQdgYyMFfh54tCFsXGwd/Z4DNUJ+hbOh/EkdMk4KlKkdh43XLN7TmXJyamo97Lqahdg
         X2wsviqk4c7Wn5RmLqqHu+Whn9L9bTscOLuMBDMkS/Jt6buuFH058ByfnsrQkH5uyJ2J
         hfjIDccHCnXBOILoPAvpdwWFhjiW8ZCDPrGMcfgEk7hSvPVckd5vbzRe3H7hyE+UQMf1
         cr2Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=OWRUuhIZ;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::435 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=oUBKtQYmrdsRGiJTMOlf/AZ94Ns+IjJq+z59h0ta6Xk=;
        b=FqAWHCO1kj/X9SMVPO4jcvQJ+fSHLVD+VkIryjhWCVkgGi9IeBo7+h5uaZ8hpSl3hY
         SEVGdMgwTgoGH05OJitkHJ0BcF0hNAHEYdnxwmEVFQeQNh01Lf6UG+ASQX+qzwCPex2+
         qMhKkCXLaZGb4Am9MyXWdaZCwpCJe/ofmFQWV8k9OFeEed8RVhZwiM6b914lFeEBXgZG
         OVyi1uijBN9L8TSv55qIWzbenI0YlCpAVHfCKscq9HzPxyiJMqEQ4fNaetSxeJyr9a/D
         ERGi8AZOcts1u/VRnOebj2f6u6DI4qbhwLgamcBbwEUKCbS6qv6tWcNTcVza+qxEeDLZ
         XBEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=oUBKtQYmrdsRGiJTMOlf/AZ94Ns+IjJq+z59h0ta6Xk=;
        b=FybTfG4oqN0ssy1BJcy0dK7g1DdD8oofe8MC7tUz1dfdot3Iop2WENKFncTPl4RL2z
         VixIEhgVjtDVlvFzOl/P+9RsqIi4CdKoBtWpMbT7PqO+r7PjCpwvEd090wzCHJ5tbhEp
         j2BJ8pESdrLW6KySkf4t6GK13vP+hgqmYrHqf4aBBGqtF2O4bN9ntDNymvXuAoNItfc6
         eOOA4zzXWTMZzTb9SqhRHLCljjOreWwyULIpluyEl2H0MgAvhtpQqKakSbE3aF4DKzTL
         M0/VcCGuxZRsLLZHQJ+7TVSS9LzqDcaQ+ah1gya2EDciFeruPSrP0iRmJp9EsdeOZRUA
         gHUQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530q2OfgbGE0apBsShP1Or4/stbdV3hR1vYurGAJkPhvgbnOb9So
	2p+MbrzlH6SsBSmOV4o9M/M=
X-Google-Smtp-Source: ABdhPJzgdtZQnk1ULg2AzAk3apD2oBZmcR858gDv8Nx5h3YCtx6P1MCysjsoDZZZZGY1hK9aXMBOyQ==
X-Received: by 2002:a05:6214:aaf:: with SMTP id ew15mr1516924qvb.14.1629945395491;
        Wed, 25 Aug 2021 19:36:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:a4c7:: with SMTP id n190ls2357692qke.4.gmail; Wed, 25
 Aug 2021 19:36:35 -0700 (PDT)
X-Received: by 2002:a05:620a:1495:: with SMTP id w21mr1601942qkj.443.1629945395031;
        Wed, 25 Aug 2021 19:36:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629945395; cv=none;
        d=google.com; s=arc-20160816;
        b=mJaYJFdrOXAoKRhdQeXW+HUKC7SZRgAQH1blnEYhLEkyUTwy3E1PyFds+bC1G4idhV
         nD4iqaZVk0EuK2sG1OmnYirek3Mssbc6L/8qZ50ROGQCeiocKNOEuOc0vLs+sb8kCYd0
         Y0041/r5CV3qAFj0C+o4xnstjLQcFDZaPeiuvtuC72OaWg5Rx7GougKGPCw+Q+oXhumu
         teTKFmZSnlbc/o2JNse4G1HHTM+1v5Bng9+h1/Vjtw8BpWl1AmsltQ0bXujXJwvX0pCL
         qS+z/ATYpbSphsvyXnN51HbqtBGA3oF41S6varDs+nuDkrf7Lbu0lDX3PpOBj9IdoTE2
         ltXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=NlaspxbPA+2xchr3WW96QURnF4el1IXYtFV14lm+uSU=;
        b=mCrqXBZ1jVO9JtH4Rftb7R2NlTY0O/AF9tDtCkTaSiXY6ESfH2azbgzMBewryvwpOZ
         i0fGdk9k5sLZpll0nVtqQR42J5uesj89mxNzVW3eOqSfCSn76SZJ4KdTAWVLdUy2k3ak
         GsYA6p+ea57pfmUyOtvi+5tAGoeD87Ho/iD0ydG9RFUFpp/4hW66JDHo8oV9WFygZGDY
         l8gm8drnjyp1bu9Si7x1OaYcA5P3vGW+68YOausH1jhzVhQmFpoc0SgN0pg3fmKSAcaJ
         nknFVYGkDO+RlDk2XT4AfMckD2aENaiU50BvsMrXofgLpaawSfkl4gv9FlHbJKdSV1vX
         n7cA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=OWRUuhIZ;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::435 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x435.google.com (mail-pf1-x435.google.com. [2607:f8b0:4864:20::435])
        by gmr-mx.google.com with ESMTPS id n2si124830qkg.5.2021.08.25.19.36.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Aug 2021 19:36:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::435 as permitted sender) client-ip=2607:f8b0:4864:20::435;
Received: by mail-pf1-x435.google.com with SMTP id 18so1390954pfh.9
        for <clang-built-linux@googlegroups.com>; Wed, 25 Aug 2021 19:36:34 -0700 (PDT)
X-Received: by 2002:a05:6a00:230e:b029:3c4:24ff:969d with SMTP id h14-20020a056a00230eb02903c424ff969dmr1491558pfh.44.1629945394200;
        Wed, 25 Aug 2021 19:36:34 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id b5sm773155pjq.2.2021.08.25.19.36.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Aug 2021 19:36:33 -0700 (PDT)
Date: Wed, 25 Aug 2021 19:36:32 -0700
From: Kees Cook <keescook@chromium.org>
To: Nathan Chancellor <nathan@kernel.org>
Cc: Ping-Ke Shih <pkshih@realtek.com>, Kalle Valo <kvalo@codeaurora.org>,
	Colin Ian King <colin.king@canonical.com>,
	linux-wireless@vger.kernel.org, netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
	llvm@lists.linux.dev
Subject: Re: [PATCH] rtlwifi: rtl8192de: Fix initialization of place in
 _rtl92c_phy_get_rightchnlplace()
Message-ID: <202108251936.42A0780E3@keescook>
References: <20210823222014.764557-1-nathan@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210823222014.764557-1-nathan@kernel.org>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=OWRUuhIZ;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::435
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

On Mon, Aug 23, 2021 at 03:20:14PM -0700, Nathan Chancellor wrote:
> Clang warns:
> 
> drivers/net/wireless/realtek/rtlwifi/rtl8192de/phy.c:901:6: warning:
> variable 'place' is used uninitialized whenever 'if' condition is false
> [-Wsometimes-uninitialized]
>         if (chnl > 14) {
>             ^~~~~~~~~
> drivers/net/wireless/realtek/rtlwifi/rtl8192de/phy.c:909:9: note:
> uninitialized use occurs here
>         return place;
>                ^~~~~
> drivers/net/wireless/realtek/rtlwifi/rtl8192de/phy.c:901:2: note: remove
> the 'if' if its condition is always true
>         if (chnl > 14) {
>         ^~~~~~~~~~~~~~~
> drivers/net/wireless/realtek/rtlwifi/rtl8192de/phy.c:899:10: note:
> initialize the variable 'place' to silence this warning
>         u8 place;
>                 ^
>                  = '\0'
> 1 warning generated.
> 
> Commit 369956ae5720 ("rtlwifi: rtl8192de: Remove redundant variable
> initializations") removed the initialization of place but it appears
> that this removal was in the wrong function.
> 
> _rtl92c_phy_get_rightchnlplace() returns place's value at the end of the
> function so now if the if statement is false, place never gets
> initialized. Add that initialization back to address the warning.
> 
> place's initialization is not necessary in
> rtl92d_get_rightchnlplace_for_iqk() as place is only used within the if
> statement so it can be removed, which is likely what was intended in the
> first place.
> 
> Fixes: 369956ae5720 ("rtlwifi: rtl8192de: Remove redundant variable initializations")
> Signed-off-by: Nathan Chancellor <nathan@kernel.org>

Thanks, I tripped over this too.

Reviewed-by: Kees Cook <keescook@chromium.org>

-Kees

> ---
>  drivers/net/wireless/realtek/rtlwifi/rtl8192de/phy.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/wireless/realtek/rtlwifi/rtl8192de/phy.c b/drivers/net/wireless/realtek/rtlwifi/rtl8192de/phy.c
> index 8ae69d914312..9b83c710c9b8 100644
> --- a/drivers/net/wireless/realtek/rtlwifi/rtl8192de/phy.c
> +++ b/drivers/net/wireless/realtek/rtlwifi/rtl8192de/phy.c
> @@ -896,7 +896,7 @@ static void _rtl92d_ccxpower_index_check(struct ieee80211_hw *hw,
>  
>  static u8 _rtl92c_phy_get_rightchnlplace(u8 chnl)
>  {
> -	u8 place;
> +	u8 place = chnl;
>  
>  	if (chnl > 14) {
>  		for (place = 14; place < sizeof(channel5g); place++) {
> @@ -1363,7 +1363,7 @@ static void _rtl92d_phy_switch_rf_setting(struct ieee80211_hw *hw, u8 channel)
>  
>  u8 rtl92d_get_rightchnlplace_for_iqk(u8 chnl)
>  {
> -	u8 place = chnl;
> +	u8 place;
>  
>  	if (chnl > 14) {
>  		for (place = 14; place < sizeof(channel_all); place++) {
> 
> base-commit: 609c1308fbc6446fd6d8fec42b80e157768a5362
> -- 
> 2.33.0
> 

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202108251936.42A0780E3%40keescook.
