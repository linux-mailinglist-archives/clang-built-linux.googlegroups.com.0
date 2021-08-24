Return-Path: <clang-built-linux+bncBCVOD7PJWIARBRE6SGEQMGQEGCOZARQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93e.google.com (mail-ua1-x93e.google.com [IPv6:2607:f8b0:4864:20::93e])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A0C33F5590
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Aug 2021 03:45:47 +0200 (CEST)
Received: by mail-ua1-x93e.google.com with SMTP id f4-20020ab06344000000b002ab9c37b49asf4941502uap.18
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Aug 2021 18:45:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629769540; cv=pass;
        d=google.com; s=arc-20160816;
        b=ETkMpJeJaRTsQsbiHwpJttw7fTUkZNoBd2rneess1LzgIMaTgoJmAqadpShMYkvGKQ
         A7b3KK9Fst/iJ3X9/2XAuj2JpBZvFLVOjUnEpf88DUPtEPhrirVoBsNkZRDtmNHsNdpO
         UZvgYhkV/ULT6wYgLi1Cy3I36JxaqAecihVHBf+rBF5V+st7J5BYn9leSNYZLp6lDXxz
         bdywYEDKgLcUzHhE31VWMq2ky+qGp6MM9O+qdZQ+NJWzx1WkYAZHcZGIC5P1ebgXPAPL
         fg01qwuOaitVdC+kUWm+eve+pl5y6mC+dWK/9WUFSXkMCv/pL+ADLtYqSW8tbHa1PhIm
         fWPQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:authenticated-by:sender
         :dkim-signature;
        bh=sJyZAY09zvOh8REX/IFWjcLmCoYVrz9Old4ZF7j0wZs=;
        b=v3lzdPl1cXkWqXh5QqfwZ49XRXCANj4hFGGvRj4TEsR0ZcG1JC4XzOo1NCVXHw7x+F
         G5IKsvISVdWrOAU+u0FG1AQ2eT3N2HO3RnhdAcdJNVJkybW6fWVYk68Ea9z2A+e7S3ba
         CmYF1TAiQrFqzSFhr45lCYMqfZaUifRgwjyu4Rrof6f7LKSEENFXMWhINXeA7/QHF5Y8
         FIdFaPS/c/iUKDUu1zP7/B+3N/0+RAJIaMa41l8WyStGBkyYvfUw1hquRbQwueCx9JoY
         zRU89suC8uHdRmjc6jTvsihncpRbt28n9xaio5Y0efj3qmVs/EPvx0id6JHEeGPldEvR
         Ylfw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of pkshih@realtek.com designates 211.75.126.72 as permitted sender) smtp.mailfrom=pkshih@realtek.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:authenticated-by:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=sJyZAY09zvOh8REX/IFWjcLmCoYVrz9Old4ZF7j0wZs=;
        b=R6mZraGuGUt6XaI8FsHltxV/MsghbhOqEkChIHhLEPrpbjKHOeEk08rDKT0JW2Gs9a
         hLqssNohy90ytKHlOSnUoI9HxJ+c6knVkckJOipoQWNhGJdc6mmtCb1nCED32c2lkxIS
         puTRFmYa/fYtgVABMUTaCwxhd5TwET6vNyu4Ad5RceIMbZOLSfq3a9cnnA/EPAYh9fPd
         TljvNpEZldd5u7H1Rldx0qrmB+OVxtihsd57fV9H+gBo7gRlfm5d1NVpAB0mi/apWxus
         on+PZV6n3hGGxkAJf9ONaIqKH6gT8AwkgalELZgbAVKo6+TL/gNI/Tu642sH25tN/I1h
         W1jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:authenticated-by:from:to:cc:subject
         :thread-topic:thread-index:date:message-id:references:in-reply-to
         :accept-language:content-language:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sJyZAY09zvOh8REX/IFWjcLmCoYVrz9Old4ZF7j0wZs=;
        b=SZ3J0No5bQUMJhpylSB32S0Bs3InfGAc9LCMVi2nBsMHbYdgvE1q4K06LzCE6nhD/E
         BZk5VScYgd9RVV6qt4iS442yyBrZyA/En9b1ViS+V8NiuuDpQQJYKDHx6Zy1mnKtPl7S
         cS+41yxPCGG/yaQnxHIeOQGyCo1cgR2itIRWM3XD/2CZrFqV2fP2eQkxHxaKGIjFYnXf
         HL7onrxQGabaMWHLUsC9B4rzhmCLPLXtcDMONERPQGAgD/gAegRhIXknLcL9Xw8gkmlR
         Sg3+YKgC3mRf+9p3wXQ/CqWXR2urPLOoopw3BZ2sLfQnnfx87/10Da4P5xe1Rp++SA8X
         +e3Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533t7KbDemDQ0k+wF8R4rO07Lm6LjamekL5AK1qnn+KJKeC78KTy
	ZeHPaB4qrhTiXCuLd2rOrXI=
X-Google-Smtp-Source: ABdhPJyeQMK5m3nDwBtoai6QTuSM5WhhMB7epvJC31p+uDMiEDzWaqKaJvcwx/d4OobWCewse4uEWw==
X-Received: by 2002:a05:6102:cd1:: with SMTP id g17mr4090300vst.16.1629769540491;
        Mon, 23 Aug 2021 18:45:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:48a6:: with SMTP id x35ls1723003uac.2.gmail; Mon, 23 Aug
 2021 18:45:39 -0700 (PDT)
X-Received: by 2002:ab0:3a8f:: with SMTP id r15mr24569133uaw.13.1629769539825;
        Mon, 23 Aug 2021 18:45:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629769539; cv=none;
        d=google.com; s=arc-20160816;
        b=sbtDahTSBSZmX1o28LN11kknjFYFaelGapn8n2zJcmsKIhWQ2Yi3MCyvGxS8K1CUKX
         2Ao3vqT5mQpDNPE8+8Q9DLo7WxSwntnaU6YFY2I2GCdBfBxefMJGJwAVq/9qWKV1NPCT
         vN2+oSoDrCPDuQBzZ02qsXoD41/6E9DQANm3aCDBj3fu7lZra/haKlFLWQCBvY3bFRLk
         UKHC4PYxFjw7kyp4ip0OvTCSJH6wR5thzlwgNLHRfbT/9s6wNZweaQHc+wP1VsNkoSIq
         Pg3NAT/Abw8+XeLyPdbY6UCgLjONXo5bvWDarQTVqbzxHDclxUZfUVO7pk8AItJh0mz9
         MY+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:authenticated-by;
        bh=ta31Zz/TykXoi5BbU3bueSygq/Qacxofwcn8ZW062EE=;
        b=HDGF4eiSaNy2yOH+gSxPOBFBE5LpjerXh8vleqQkA+3CSS94Y4ksotPqiQPLMhfdsd
         MTevIIombBVIL24U0st+i0jhmwe+uerZO3GCvk9Ui5/QT9460hQvfBoVJ8cSnzM9a0F5
         WPnLRbcQB9h7+P6fZjIs5GKFfeL2Js4HXk7IwHxX6IWMv7ySdUcEbYyq9QuAIM9CBFz2
         b4s8mozc/iYBQslNrLZJNyYfW38GO2VX0N5HuZjYSvEZIwJt0f3AEJm2R+OrOOBhQIXw
         g3Q5mgmrXIJIdUjNEnE1zmhHWrVKW53SXZaewQcqaDF3l/uqWwTN61G+zIBBW3BWlLBV
         d7RA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of pkshih@realtek.com designates 211.75.126.72 as permitted sender) smtp.mailfrom=pkshih@realtek.com
Received: from rtits2.realtek.com.tw (rtits2.realtek.com. [211.75.126.72])
        by gmr-mx.google.com with ESMTPS id k21si945229vko.3.2021.08.23.18.45.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Aug 2021 18:45:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of pkshih@realtek.com designates 211.75.126.72 as permitted sender) client-ip=211.75.126.72;
Authenticated-By: 
X-SpamFilter-By: ArmorX SpamTrap 5.73 with qID 17O1jQohD005631, This message is accepted by code: ctloc85258
Received: from mail.realtek.com (rtexh36502.realtek.com.tw[172.21.6.25])
	by rtits2.realtek.com.tw (8.15.2/2.71/5.88) with ESMTPS id 17O1jQohD005631
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Tue, 24 Aug 2021 09:45:26 +0800
Received: from RTEXMBS04.realtek.com.tw (172.21.6.97) by
 RTEXH36502.realtek.com.tw (172.21.6.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.14; Tue, 24 Aug 2021 09:45:25 +0800
Received: from RTEXMBS04.realtek.com.tw (172.21.6.97) by
 RTEXMBS04.realtek.com.tw (172.21.6.97) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Tue, 24 Aug 2021 09:45:25 +0800
Received: from RTEXMBS04.realtek.com.tw ([fe80::cdd5:82a3:e854:7098]) by
 RTEXMBS04.realtek.com.tw ([fe80::cdd5:82a3:e854:7098%5]) with mapi id
 15.01.2106.013; Tue, 24 Aug 2021 09:45:25 +0800
From: Pkshih <pkshih@realtek.com>
To: Nathan Chancellor <nathan@kernel.org>, Kalle Valo <kvalo@codeaurora.org>
CC: Colin Ian King <colin.king@canonical.com>,
        "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>,
        "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>,
        "llvm@lists.linux.dev" <llvm@lists.linux.dev>
Subject: RE: [PATCH] rtlwifi: rtl8192de: Fix initialization of place in _rtl92c_phy_get_rightchnlplace()
Thread-Topic: [PATCH] rtlwifi: rtl8192de: Fix initialization of place in
 _rtl92c_phy_get_rightchnlplace()
Thread-Index: AQHXmG0s5HBB1+4FIUaWbT4swfecM6uB4bug
Date: Tue, 24 Aug 2021 01:45:25 +0000
Message-ID: <6ad224d9cd5545bebfaf2e60c54d359b@realtek.com>
References: <20210823222014.764557-1-nathan@kernel.org>
In-Reply-To: <20210823222014.764557-1-nathan@kernel.org>
Accept-Language: en-US, zh-TW
Content-Language: zh-TW
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.21.69.146]
x-kse-serverinfo: RTEXMBS04.realtek.com.tw, 9
x-kse-attachmentfiltering-interceptor-info: no applicable attachment filtering
 rules found
x-kse-antivirus-interceptor-info: scan successful
x-kse-antivirus-info: =?us-ascii?Q?Clean,_bases:_2021/8/23_=3F=3F_11:22:00?=
x-kse-bulkmessagesfiltering-scan-result: protection disabled
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
X-KSE-ServerInfo: RTEXH36502.realtek.com.tw, 9
X-KSE-Attachment-Filter-Triggered-Rules: Clean
X-KSE-Attachment-Filter-Triggered-Filters: Clean
X-KSE-BulkMessagesFiltering-Scan-Result: protection disabled
X-KSE-AntiSpam-Outbound-Interceptor-Info: scan successful
X-KSE-AntiSpam-Version: 5.9.20, Database issued on: 08/24/2021 01:27:34
X-KSE-AntiSpam-Status: KAS_STATUS_NOT_DETECTED
X-KSE-AntiSpam-Method: none
X-KSE-AntiSpam-Rate: 0
X-KSE-AntiSpam-Info: Lua profiles 165744 [Aug 23 2021]
X-KSE-AntiSpam-Info: Version: 5.9.20.0
X-KSE-AntiSpam-Info: Envelope from: pkshih@realtek.com
X-KSE-AntiSpam-Info: LuaCore: 454 454 39c6e442fd417993330528e7f9d13ac1bf7fdf8c
X-KSE-AntiSpam-Info: {Tracking_uf_ne_domains}
X-KSE-AntiSpam-Info: {Tracking_from_domain_doesnt_match_to}
X-KSE-AntiSpam-Info: d41d8cd98f00b204e9800998ecf8427e.com:7.1.1;realtek.com:7.1.1;127.0.0.199:7.1.2
X-KSE-AntiSpam-Info: Rate: 0
X-KSE-AntiSpam-Info: Status: not_detected
X-KSE-AntiSpam-Info: Method: none
X-KSE-AntiSpam-Info: Auth:dkim=none
X-KSE-Antiphishing-Info: Clean
X-KSE-Antiphishing-ScanningType: Heuristic
X-KSE-Antiphishing-Method: None
X-KSE-Antiphishing-Bases: 08/24/2021 01:29:00
X-Original-Sender: pkshih@realtek.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of pkshih@realtek.com designates 211.75.126.72 as
 permitted sender) smtp.mailfrom=pkshih@realtek.com
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


> -----Original Message-----
> From: Nathan Chancellor [mailto:nathan@kernel.org]
> Sent: Tuesday, August 24, 2021 6:20 AM
> To: Pkshih; Kalle Valo
> Cc: Colin Ian King; linux-wireless@vger.kernel.org; netdev@vger.kernel.org;
> linux-kernel@vger.kernel.org; clang-built-linux@googlegroups.com; llvm@lists.linux.dev; Nathan
> Chancellor
> Subject: [PATCH] rtlwifi: rtl8192de: Fix initialization of place in _rtl92c_phy_get_rightchnlplace()
> 
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

Somehow, I also look into wrong function.
Thanks for the catch.

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

Acked-by: Ping-Ke Shih <pkshih@realtek.com>

> ---
>  drivers/net/wireless/realtek/rtlwifi/rtl8192de/phy.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/wireless/realtek/rtlwifi/rtl8192de/phy.c
> b/drivers/net/wireless/realtek/rtlwifi/rtl8192de/phy.c
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

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/6ad224d9cd5545bebfaf2e60c54d359b%40realtek.com.
