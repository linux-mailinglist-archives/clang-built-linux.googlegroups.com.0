Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBXXU3X6AKGQEVAHIPMA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb37.google.com (mail-yb1-xb37.google.com [IPv6:2607:f8b0:4864:20::b37])
	by mail.lfdr.de (Postfix) with ESMTPS id 9144A29A240
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Oct 2020 02:39:43 +0100 (CET)
Received: by mail-yb1-xb37.google.com with SMTP id j10sf12955071ybl.19
        for <lists+clang-built-linux@lfdr.de>; Mon, 26 Oct 2020 18:39:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603762782; cv=pass;
        d=google.com; s=arc-20160816;
        b=PzNgzT8Du38iG+5P0099tFhF1uOopgMiLgJdjDv9O2xn7mTkno15uyvfkdBw5bY6Ep
         R63u02IiuhKuh8+U1cvuHldCjrv+ULI5wPzO3WwTstQqHhGj5BDj+D3UW2QDTvkeJefX
         U8SVALR9qaydOk3Nu+f1akL9UMtmZsxgsnIuB3OW0P1XAOnmgKgsji4Is81QwFUM0ePo
         +NeIjlKb+HPG6vRNq5BLM0bFQlI1b6V0y85U4cj09WTJ7jJ9IYMoJr/LeRH42W+P6PRI
         0sYhFOWsFitc0ULpUH0RIQzAVuM0a48iu72Pp0Q07kHny8YwojhwZLUiqj9MgK+4AEVY
         nP+w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=A0yU3FAIpKqmoaFMAIx9gn835C4DG1HwCjaK2sqIMNA=;
        b=ci4R7vlSQcdI+HADziGKUSxz2VvAwDwifGW04qhs4ZfAzX04qxn6tWGKutNc/lXbyA
         3IIVCCxH5oLMf0OnJAJS6ZJI8hFikTiJ2qMjYjirZeNCKo/uUWeQsEOZ9MC+YPlTjaGF
         2dVKKryy/ZbdrUC5PcbPvt+zxzMoJcCWPIXfup8c4Q5V4XBHWzBnt6rSIqGWu8OcMXoQ
         ENSJo36+zfFz7Zms+2oQMl/dPcBcJM24E4IycPVuTGbdu/KL6wcmOMapN3N78h+T3LqE
         K6bGJLzwmFC8AvSYjXu+xhD8ahNOQ1HC7y3LECKtfxwYS5cwVHeCY+n4oaYhud9Dl+f1
         YeLQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fnPJD1Lj;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=A0yU3FAIpKqmoaFMAIx9gn835C4DG1HwCjaK2sqIMNA=;
        b=q/dqkxnvaoSvnITb51WEnr7Kou1ys+a5x1ppz6EhTmArV8bV8FQlF/x+yiv3bxMcJI
         Tq15zkVtGJfGElaZDmxNNgr5lbvRoFS04T7+2rHIwu2Ia41x4ad6qdYzbuKiIXuMzncZ
         4bTEbiHkimOxm16jdIqtMk6DTxpYsqoXpU3qxyLNDl24Wofn7HxKqW//LUQKpYZj1jww
         N7RFSRqgYoszOrfJ9KOLkaJyW0BDI4ff2ZDBpjYLFxGT2cAkpJtPrPtOsuE/cOrICIG7
         0Fhh8Yw8gDHZP8sgMS+FXgDRpkGg/LEZPnuVSQ1L5it6mnw2Zc/FPnzbUy8Ys4Aush3y
         p3Gw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=A0yU3FAIpKqmoaFMAIx9gn835C4DG1HwCjaK2sqIMNA=;
        b=dG88QmZ8PMaLEYIfIfbYWSflkt8wEeSlfPLO7XLlUyCwOot6kcYDcKol8lPFHTUO9G
         +wtg0Yfv+0u8az1s0zI91qk4u7MFHbpbJR7XlqhyPIY1bzKGV/18gmm4bkPI+YhQQ1G6
         UNIBV5rNOJErR7bdbSYb4D5Asj8312amp542vKig06f9BK8SfF2P4sJnh3I7idt0odpc
         Jp1rXMNfVsbtj7VcgDoJIg9Jmf0YhJ85CefD/SwGdjLgS/Xll1Mc/suQW9wrS3ycuWxy
         mevVtkm71W+fQnhmYIABBM25B88xV3KG0UHfpdd9+hM8Tmdbpx4+xBt9VHDkbiWjm5Yf
         VUtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=A0yU3FAIpKqmoaFMAIx9gn835C4DG1HwCjaK2sqIMNA=;
        b=BmvnZfRaKncZn3fvqULLAbUh5Cq8UObb/pE+E6+gaMaQfmnjSL3ZUEG8Dc+AFgznVn
         +Pe5WkXsilQptIrjd4pZctoBjvOzcSq53mAlpzU97onw0D7+OUz5HEeUWxfCHK8wCrnA
         kl60FDCT0EZITDb6WWkb9ZjhDdQ66EWcnEbJ/fFSXn14SeS0SFNDOwEJMoFYSV3fJgJ9
         seshquiXGalFy16n8rYZTr2xiqIk+B6ktyHTu9iI+2GbmY2JqCwIGr/FOX8bPwCaVQMP
         5tIEd4ZjikIY8jbI1trn6pN9ZLe16pDmjQZw8nlgxJb7Uk6fZmvwPe/pRZ51F2xzH7Xi
         MBvw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531zSoPDWmaFm4FgpIHVH9DaTLfvX/kXBATB711visoERFlouySJ
	ez78KDiUoGojCLiYfON7FjI=
X-Google-Smtp-Source: ABdhPJw24VBYUBPvhBn7XY6bHQxBcakpo0vIdH0pJ3VOfZCZV7m+x4RoNK0vx/t+TE/KFn2LCGX12A==
X-Received: by 2002:a25:8043:: with SMTP id a3mr27813936ybn.348.1603762782281;
        Mon, 26 Oct 2020 18:39:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:3f81:: with SMTP id m123ls35296yba.1.gmail; Mon, 26 Oct
 2020 18:39:41 -0700 (PDT)
X-Received: by 2002:a25:2846:: with SMTP id o67mr28584796ybo.164.1603762781801;
        Mon, 26 Oct 2020 18:39:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603762781; cv=none;
        d=google.com; s=arc-20160816;
        b=qeh8xmCeOjN0qCzlKsLicpQKFNWtEULWXZWY1TrW6Gj0QvUCbGacrzM1icAd2ZyWdj
         1LeCJk0StyyqeMPLlreBPioxVBM97Nl5UKFbxpVRL3lK6QZs4x3x7/wd+xVGPPh7Avex
         KVe21clgqyaEiM5LJhilNlVQTP+OLGRLlLxKgtaonlBVJa+GtiXoJ45wG2BcufLpdR5v
         JGwUHzfHwmedO1V1rjHGglds3u9jFPn5M+JyI9SXApH8f/5LT0je7hARp3Ji8bEjLplk
         rByTvpeXDkYpSmsSIKCQWYX+D8j2lvFyTi5PCSA2zgL8qsxAH7/7avNZkbIqLNrIXZNE
         mXGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Ruu54colUF/ilFVC8cdTe3XtbysMvPE0jNSVGMkpx/Q=;
        b=QxwbnOe5CdKCxGyygNKaf5/74d9CKwJoZ6kUqCJg0/czwyGeTSivuCOffIvLo8FIaQ
         tmgUwXw7NikojizmoNJOiuiZlR2g8X8yvDQKiLhRkzmCr/TV9nu/U2ip0fXvnf/ceUhL
         zZ4zsTXDNNrfXI2voTN8Wu+n+ZMHw/4gtM56pXi+ywzuQUifPO1+Ace5ZM8SIokrzOXI
         5k8vixRjHQOSVNo/phQTVbSaLEaOQvcFHBePNW2flxUoaW0kayeeuUAj8nVR6wkXx90I
         S5sHM8AEXsT/kUbSGbNjgnuHxcwg2CrJxO8ysHEiRlXkHsf5321O/Ek/VUtxd70JuyDZ
         bBwg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fnPJD1Lj;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qt1-x842.google.com (mail-qt1-x842.google.com. [2607:f8b0:4864:20::842])
        by gmr-mx.google.com with ESMTPS id r8si764006ybl.1.2020.10.26.18.39.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Oct 2020 18:39:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) client-ip=2607:f8b0:4864:20::842;
Received: by mail-qt1-x842.google.com with SMTP id i7so7561654qti.6
        for <clang-built-linux@googlegroups.com>; Mon, 26 Oct 2020 18:39:41 -0700 (PDT)
X-Received: by 2002:ac8:5743:: with SMTP id 3mr21468464qtx.259.1603762781296;
        Mon, 26 Oct 2020 18:39:41 -0700 (PDT)
Received: from ubuntu-m3-large-x86 ([2604:1380:45d1:2600::3])
        by smtp.gmail.com with ESMTPSA id o2sm7758031qkk.121.2020.10.26.18.39.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Oct 2020 18:39:40 -0700 (PDT)
Date: Mon, 26 Oct 2020 18:39:39 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Arnd Bergmann <arnd@kernel.org>
Cc: Yan-Hsuan Chuang <yhchuang@realtek.com>,
	Kalle Valo <kvalo@codeaurora.org>,
	"David S. Miller" <davem@davemloft.net>,
	Jakub Kicinski <kuba@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Tzu-En Huang <tehuang@realtek.com>,
	Ping-Ke Shih <pkshih@realtek.com>,
	Chin-Yen Lee <timlee@realtek.com>,
	Kai-Heng Feng <kai.heng.feng@canonical.com>,
	linux-wireless@vger.kernel.org, netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH\ net] rtw88: fix fw dump support detection
Message-ID: <20201027013939.GA4042641@ubuntu-m3-large-x86>
References: <20201026212323.3888550-1-arnd@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201026212323.3888550-1-arnd@kernel.org>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=fnPJD1Lj;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::842 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Mon, Oct 26, 2020 at 10:22:55PM +0100, Arnd Bergmann wrote:
> From: Arnd Bergmann <arnd@arndb.de>
> 
> clang points out a useless check that was recently added:
> 
> drivers/net/wireless/realtek/rtw88/fw.c:1485:21: warning: address of array 'rtwdev->chip->fw_fifo_addr' will always evaluate to 'true' [-Wpointer-bool-conversion]
>         if (!rtwdev->chip->fw_fifo_addr) {
>             ~~~~~~~~~~~~~~~^~~~~~~~~~~~
> 
> Apparently this was meant to check the contents of the array
> rather than the address, so check it accordingly.
> 
> Fixes: 0fbc2f0f34cc ("rtw88: add dump firmware fifo support")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  drivers/net/wireless/realtek/rtw88/fw.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/wireless/realtek/rtw88/fw.c b/drivers/net/wireless/realtek/rtw88/fw.c
> index 042015bc8055..b2fd87834f23 100644
> --- a/drivers/net/wireless/realtek/rtw88/fw.c
> +++ b/drivers/net/wireless/realtek/rtw88/fw.c
> @@ -1482,7 +1482,7 @@ static bool rtw_fw_dump_check_size(struct rtw_dev *rtwdev,
>  int rtw_fw_dump_fifo(struct rtw_dev *rtwdev, u8 fifo_sel, u32 addr, u32 size,
>  		     u32 *buffer)
>  {
> -	if (!rtwdev->chip->fw_fifo_addr) {
> +	if (!rtwdev->chip->fw_fifo_addr[0]) {
>  		rtw_dbg(rtwdev, RTW_DBG_FW, "chip not support dump fw fifo\n");
>  		return -ENOTSUPP;
>  	}
> -- 
> 2.27.0
> 

Tom sent an identical patch earlier that it does not look like Kalle has
picked up:

https://lore.kernel.org/linux-wireless/20201011155438.15892-1-trix@redhat.com/

Not that it particularly matters which one goes in so regardless:

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201027013939.GA4042641%40ubuntu-m3-large-x86.
