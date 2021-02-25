Return-Path: <clang-built-linux+bncBDYJPJO25UGBBDVT4CAQMGQEGWMVDIA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23b.google.com (mail-lj1-x23b.google.com [IPv6:2a00:1450:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id A25AC3258D9
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 22:41:35 +0100 (CET)
Received: by mail-lj1-x23b.google.com with SMTP id 3sf2360961ljf.2
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 13:41:35 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614289295; cv=pass;
        d=google.com; s=arc-20160816;
        b=HeO8NYbSK3NvWaJ33qgxaBTvXYVMcHuJc7jArORPKLH/J6k22X4nRPzWs5t2H/ofTD
         sbPKpEc0KC6kgO/b3XkmjLIAQDkPzzfoOHgsaieSrzfeA++P8iQMZM3GO+Y1Dm/AZ3CE
         j6paFDnxZR8Pn0bify8nandwRUL0luJNkyz6Tcsuqtfdqjc6lt0LsiTIDV5Ter7fsr4A
         aZkAQw1fkZzOiWc2fD+3CLuA4QupkwvedQPs0RXLZnQjnCFLafK184iilI7pJlGNezoD
         TuhZJxwUAjVIbgnAnseHVAAk8O5tLc5e/aPxUXz7ZFCfwUW4AdJSuZLyQltGOwsMVWzL
         dchw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=IxVYXYtJttqODkgBftAoVArCnFr0z+9Z/NQr2ZC6GwM=;
        b=H89EQ1cCz6GvVXeQzj56F4W0CBR4e5wt0EeChZCvAo3cySvVR9AC7B4saNc+lggam6
         XH+TJfyDBbN2aJx/QR9LqbyPywdXG5Zlc+NYemRqQiPbYFAAfgn2GEUa9JEBKj1sb+zf
         kVBETuBiWMgtxl5HT3/QixImyDCNSamat5UaOz8d91hrMYki06PWwPgz79/4ZqxZfpK4
         TXCYu16+ObO/mkHVzUWj84TrybFCetoja6Zcr4PDUbdjGIXrILTEZNW5bCV6cYDozCAu
         tZh4jwwTKBLmvmi6QIfzuArLoIeKYaom7gKlL/RVsxdG8zlmYxxSspFoAUiu6LKLCObm
         tKXQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=GDZvyIne;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22c as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IxVYXYtJttqODkgBftAoVArCnFr0z+9Z/NQr2ZC6GwM=;
        b=F2qOsj6eZdvVFNAKZNilc3KPSVguRk3MbbC31wSlINMiMwv7WLFGJ/lDbSOSDk7DSE
         eoA3uhvIYc+HBI5bV2a/6FHQBjIEc77JG6uOmV2RZ2lSu6OeZ2O+l9Nl8InQzvtimFgB
         i4RCP4RbG4bpd5n+4VNCPMfvkKGfZnFXW+9YM/SGSOqRx3I8zjeo+5vdRyiC+Y9fPb0Z
         ogYD87oScAjQwKxPSRuj1x9Pnp1u8/fc+uCaQ74Zfex1mFOdFjg/qgwOQ40c+Vsw5Oh1
         Vg1s/aJLe7cEJzLuWcLCWaWaY/WySArp680QAl6Gkwca0e8b9M8JutKYYbL3nnBw4z4d
         AsVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IxVYXYtJttqODkgBftAoVArCnFr0z+9Z/NQr2ZC6GwM=;
        b=n67BlFFG/rLCbJOLRLsAhTxsNl+DeZ7OvXd1kA095kTECblv+pXa7/WUUY6e2kCsfC
         3PUhGVr4dGTNZvpR88huAsl1cauquyKZcFtdsIasNSc0BXjaBb3HsQshb8K6W3Vsmavr
         IE8QeUb74FXKExb854D1KmKNWtM6/Zu1o3NAXj1ZHy6OC4GOP9HS+9yxvZ3EO3zF3QzW
         WYO5YLj+0/RJsPZnrE213SYP4inx0xweYAVD6fcnyJNO0s+8Nu4EqN4b7AKZA1nKfwa4
         OXJEFkeL5udcHXZ2NRJ+5ljAMXtvcWUkySmZdCIhIVd3tXL9NCMqIuSisLL4v0Mpw5hy
         Ptlw==
X-Gm-Message-State: AOAM533dRIZz4ytf1ulo4ZexylMRmeGhfnNaIej+4PD7NGIl7JVIQPGm
	tp5psr5ilUJBywCuqCwIQyQ=
X-Google-Smtp-Source: ABdhPJwO/tCxxEGVpEkVMvvUJDq8R9B56nrlp1V28VvOJKtgLKFfWDwYLq3QCieDprPEncc/+SA8KA==
X-Received: by 2002:a2e:780d:: with SMTP id t13mr2729416ljc.382.1614289295203;
        Thu, 25 Feb 2021 13:41:35 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:651c:211f:: with SMTP id a31ls1269952ljq.3.gmail; Thu,
 25 Feb 2021 13:41:34 -0800 (PST)
X-Received: by 2002:a05:651c:1393:: with SMTP id k19mr2729382ljb.448.1614289294156;
        Thu, 25 Feb 2021 13:41:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614289294; cv=none;
        d=google.com; s=arc-20160816;
        b=FPPJvU+beTsuzUen1u8jWbIWEvqeC+pUshgL8jFl9P+4UesC7yyi74/mknYNql8sL1
         gKJqbQsHR2hOrLTLC8CGMnfLPWilI31LxflkroYi7sjDF2rze8Yi4MRV2Z02sMf0nU2S
         fStrO+aEU6N6jph/YdN0KF8R+i8awHZtzjKvZ0Q9qtdWVOIfBFmurwB50MAKC0J+Fanz
         jQvked51ZIGWmlWIBM7jv+YbZMWldANNqeumyD6NRkurpABlRXGEfH7l90Rj18ACnXHh
         sRq02pANsfLMPOnIFoVF5a1kGAnqRJh92cNrjcvr/j5k630XQVzZS06LjpUhiiXwyRiF
         AuBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=tMZfr/tKOoxxB+DCAYtgYdWGNraNZZUqKf4iILc1Yu0=;
        b=SdK2c0HcWXdvCskdl9pJj/KU/BjsnR2zaVLonvORxfgOMSlseIcMQ4axx+31SSsaB4
         jNszgFFPrMuR+xJQGZv91gbAtylqTFpHEuBZlBaYBZubhXjkTeqfC6VrjzyUlvr1CVCM
         Nc04giU4cT5gn2Yw/P89wEzwj8Taf2/QiSdY96JKgSquTA30Fvv53NGRvQLOSyhR5KQ4
         76pWt1QjJjuB6rHM6hTiRqhqrPZoe7ZoA1pjZCzWUBbAhJ9yOwl6Hle1Nj29tYUakClI
         IUWHT7SHY9rpED5PoMsq3CXf5c5bmbM+Pg9Vc9Kk2DNitPjMlCPS42Aw/PqTqo17ITsS
         9/oQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=GDZvyIne;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22c as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com. [2a00:1450:4864:20::22c])
        by gmr-mx.google.com with ESMTPS id a26si314349lff.2.2021.02.25.13.41.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Feb 2021 13:41:34 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22c as permitted sender) client-ip=2a00:1450:4864:20::22c;
Received: by mail-lj1-x22c.google.com with SMTP id m11so7365289lji.10
        for <clang-built-linux@googlegroups.com>; Thu, 25 Feb 2021 13:41:34 -0800 (PST)
X-Received: by 2002:a2e:b617:: with SMTP id r23mr23499ljn.116.1614289293663;
 Thu, 25 Feb 2021 13:41:33 -0800 (PST)
MIME-Version: 1.0
References: <20210225145953.404859-1-arnd@kernel.org> <20210225145953.404859-2-arnd@kernel.org>
In-Reply-To: <20210225145953.404859-2-arnd@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 25 Feb 2021 13:41:23 -0800
Message-ID: <CAKwvOd=kk9XhU=jyB3ZZd7bCW+9w6nwXbE48xbtFdBjeTQoj8w@mail.gmail.com>
Subject: Re: [PATCH 2/2] mt76: mt7921: remove incorrect error handling
To: Arnd Bergmann <arnd@kernel.org>
Cc: Felix Fietkau <nbd@nbd.name>, Lorenzo Bianconi <lorenzo.bianconi83@gmail.com>, 
	Kalle Valo <kvalo@codeaurora.org>, "David S. Miller" <davem@davemloft.net>, 
	Jakub Kicinski <kuba@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, Arnd Bergmann <arnd@arndb.de>, 
	Ryder Lee <ryder.lee@mediatek.com>, Nathan Chancellor <nathan@kernel.org>, 
	Sean Wang <sean.wang@mediatek.com>, Soul Huang <Soul.Huang@mediatek.com>, 
	linux-wireless <linux-wireless@vger.kernel.org>, 
	Network Development <netdev@vger.kernel.org>, Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	linux-mediatek@lists.infradead.org, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=GDZvyIne;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22c
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Thu, Feb 25, 2021 at 7:00 AM Arnd Bergmann <arnd@kernel.org> wrote:
>
> From: Arnd Bergmann <arnd@arndb.de>
>
> Clang points out a mistake in the error handling in
> mt7921_mcu_tx_rate_report(), which tries to dereference a pointer that
> cannot be initialized because of the error that is being handled:
>
> drivers/net/wireless/mediatek/mt76/mt7921/mcu.c:409:3: warning: variable 'stats' is uninitialized when used here [-Wuninitialized]
>                 stats->tx_rate = rate;
>                 ^~~~~
> drivers/net/wireless/mediatek/mt76/mt7921/mcu.c:401:32: note: initialize the variable 'stats' to silence this warning
>         struct mt7921_sta_stats *stats;
>                                       ^
> Just remove the obviously incorrect line.

Yeah, looks like perhaps a small mistake from when the driver was
introduced. Thanks for the patch!
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

>
> Fixes: 1c099ab44727 ("mt76: mt7921: add MCU support")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  drivers/net/wireless/mediatek/mt76/mt7921/mcu.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
>
> diff --git a/drivers/net/wireless/mediatek/mt76/mt7921/mcu.c b/drivers/net/wireless/mediatek/mt76/mt7921/mcu.c
> index db125cd22b91..b5cc72e7e81c 100644
> --- a/drivers/net/wireless/mediatek/mt76/mt7921/mcu.c
> +++ b/drivers/net/wireless/mediatek/mt76/mt7921/mcu.c
> @@ -405,10 +405,8 @@ mt7921_mcu_tx_rate_report(struct mt7921_dev *dev, struct sk_buff *skb,
>         if (wlan_idx >= MT76_N_WCIDS)
>                 return;
>         wcid = rcu_dereference(dev->mt76.wcid[wlan_idx]);
> -       if (!wcid) {
> -               stats->tx_rate = rate;
> +       if (!wcid)
>                 return;
> -       }
>
>         msta = container_of(wcid, struct mt7921_sta, wcid);
>         stats = &msta->stats;
> --
> 2.29.2
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3Dkk9XhU%3DjyB3ZZd7bCW%2B9w6nwXbE48xbtFdBjeTQoj8w%40mail.gmail.com.
