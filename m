Return-Path: <clang-built-linux+bncBAABBT5JUP3AKGQEHPDGM6Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x538.google.com (mail-pg1-x538.google.com [IPv6:2607:f8b0:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id 005831DF5B7
	for <lists+clang-built-linux@lfdr.de>; Sat, 23 May 2020 09:46:24 +0200 (CEST)
Received: by mail-pg1-x538.google.com with SMTP id s188sf9734007pgc.17
        for <lists+clang-built-linux@lfdr.de>; Sat, 23 May 2020 00:46:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590219983; cv=pass;
        d=google.com; s=arc-20160816;
        b=VTrS+Ehd7JRH1boDD49EUhG62ddy5hW/78UoYTYW5XfttAkv/EGvjo+pPMt4eR3ef1
         /bQBES/2C6x7mdUgO1Ha2WTY3LJU5O7FGKKEzUlcEhmTlVEhNQMeKffKhHSHD9tSxNUs
         k1ZKsOC/xaSN2DeJrIzKrImHPzWHMBI/2P7yAQpH8jzsoBO3nV/Jw0rNrceZ80fMGtNW
         b4czyeyExKdgqcfDWj000Uk/a5E6fi6cT09kwvHhj0EO4NAkYyxxBdRzlGqgaWiQy6gr
         FTpMuqAbJUyMIP5pbX7TzB9dAfajXdyhZaTs+fpvqRpFGg3/s0WbS0WgVLeX7dWN/BKR
         Q+yg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :date:cc:to:from:subject:message-id:sender:dkim-signature;
        bh=kaCoAQrZofI9xVvEm80ceFz1GjgZaUDAOfsJ3ZWjcAk=;
        b=odd0XfjUFZ8FjN7Z0qzcUblnkHxOsulb/xrmhnUdOLS08ErwwvFxjJ8/NaNGsxYZEY
         Mkk2UwxYp0yaTZkTE82Grx07u1lJZEZ+Y6rZb0al9j5SSC0hbqGWuZXddwQ2qjfGtknA
         tquXOP4hnUHGVcymORy7pzE+WCcVbl+x5B8szwhv9je43mfleSsHkKo0wwh2BHt601+Q
         lNR93FooGUq76mFjif7N0CUdL7S2zqw74xMo8khXfnCrWevuzK88yvj/F3tp7g8GAkva
         lPzkJkHZOs5uSketM7/ZpAHeps4fVXu5QRkfVvaBwPj+HtaoXM4Pjq3QoamkBjJdC34S
         6zBA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mediatek.com header.s=dk header.b=RT9OPW5J;
       spf=pass (google.com: domain of ryder.lee@mediatek.com designates 210.61.82.183 as permitted sender) smtp.mailfrom=ryder.lee@mediatek.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=mediatek.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kaCoAQrZofI9xVvEm80ceFz1GjgZaUDAOfsJ3ZWjcAk=;
        b=FDDAXGfX3Kpm9dJQD4Xtk9V8lZHERCKZVfbDpX7vzld2wNT+wFWZPEUmtCdqUHqAHm
         m0p1lHY8YS45UnE6GepT4FPPDavNDObQbOmGS27c4vId4eEIuIIljiEI/vwwoobwZk3S
         s0Io9qSZQi8StJac5XX2YsGhOprNYlCH/CNbfT34Ox7CIw0Ow6ZliaoQ2RKZeeBG0pIE
         Jq7UNXVu+tLsUN7n/FCiVYAI/3gGsvDHlAOZBD9XROMnQ+Ozi5aebk9eAb4nxD42rZMK
         jFLdnTCkO9x/WPtbKHu3lZOGWos7InAB0XWePnEpK4VbbwjIcHpsMOyNT1lpZo1q6vV3
         pcYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kaCoAQrZofI9xVvEm80ceFz1GjgZaUDAOfsJ3ZWjcAk=;
        b=lNFMNt4PQz9h7aqPdA1DGcxyyHNvOJ1mGo83XNZldvGiWkwmdS71fXcQLR4Ivn751v
         awopE6MR/NZ3qbPSuyXGBYlweXFCwBsDM13fdYyGtQ4wH62j25ea4fKKSV+CDnmLi1F5
         i2PWIQ1eisN/PD8ZjfNdKTJoLPw8DGoGkRPDOQf+ixPw2RRX4OAt3ImfWsjh3Mf+B7j9
         9ZcBmWLp2Cwg5qL2TJDN3IeSWxFBVx69RV1PM/uKyPBHMJ6BAaq+nWVbrASX6eOcswLv
         BjGgr9BMToDyfCl0ta/PxkJH38oSaVHDpUEJkDOK3Ti5K2DsBLaBy0fXqm8jIju4YOsu
         qr4Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5324KkC6mv3MHhWslYXsH8XFySrw7FfKM4EKrTMZCbkF/iDB6beN
	SsFm3aANetzXxH4y724nznY=
X-Google-Smtp-Source: ABdhPJwRcpkQT1z1VWVU1vnp6AIef8m7L+yw97vk0bdTK5X74Nos5Lf/Qpcb1si07A15ea/Es0KNhw==
X-Received: by 2002:a17:90a:2242:: with SMTP id c60mr9440383pje.224.1590219983670;
        Sat, 23 May 2020 00:46:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:7298:: with SMTP id d24ls1392461pll.5.gmail; Sat, 23
 May 2020 00:46:23 -0700 (PDT)
X-Received: by 2002:a17:90b:8d8:: with SMTP id ds24mr9590186pjb.55.1590219983281;
        Sat, 23 May 2020 00:46:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590219983; cv=none;
        d=google.com; s=arc-20160816;
        b=dHaoGLdS1OXJFyjUz1SfB4f07DiByK/1jS6f+IRFlE5nhaqTD7Yj7kznmaz/7Pdfgz
         HmG8KxOiceNkq/6WtaWqW4NwhN8Lq7GfGjVjoJzjUEf/RFZ1Y4ot8oRjEukhr8A3I7Ou
         J4bYQT6Z2dkfBvgJUnvELWxOFqo15I6vPgwcyS9go1mRSu3MAoiiFPkPF7zNDEVQx51R
         Hz9mziiZXnjPTB1BQWhqUYJdsJvh5IMxZFHuCQcbHf3wdmMe6QvVUtOUTTJ/J1Z0Gze9
         XWuIkVlmeBovNN8+nyR+Et+Z24WfrxAhwDj9/Pv1EkmivpuQAtlM3/Jq6hkACg86uSrY
         EGUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to:date
         :cc:to:from:subject:message-id:dkim-signature;
        bh=K1YlH6sKupJLxMJK8vacs2+pPTOSyNUkbRTASPYPs78=;
        b=IbCRESARqYHST0/Xr8ovLudWGfkVfrJ2qEZGTL2rTfey9SVNru7AHbZb5whkmLP2QO
         rZQcvAR8ssI7Ik0S7DGNl34mZFNomMHLBzoz//5QczMhUdqE8ojw4iGuRNgR85l9bUZA
         yl37oaTB6a5kToCYWImN6LmwyDpgi61RXuPsCVWIiMx52DQgvctaatuGPDe/65XTSJ0r
         tnJFAqdjTEE6wxTMIGdM35GHO6ewzm/PC7xhv6JF8fIxx7+pJVgBKfnv8ByQP2hcLcOi
         WkfY2kdZqKLeFScBF+TVdLx3cfswLv5H//g4jgy/q6tzI9a4L3jESy3xCXnDBnaMcgGU
         m5kg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mediatek.com header.s=dk header.b=RT9OPW5J;
       spf=pass (google.com: domain of ryder.lee@mediatek.com designates 210.61.82.183 as permitted sender) smtp.mailfrom=ryder.lee@mediatek.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=mediatek.com
Received: from mailgw01.mediatek.com ([210.61.82.183])
        by gmr-mx.google.com with ESMTP id z145si850394pfc.0.2020.05.23.00.46.22
        for <clang-built-linux@googlegroups.com>;
        Sat, 23 May 2020 00:46:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of ryder.lee@mediatek.com designates 210.61.82.183 as permitted sender) client-ip=210.61.82.183;
X-UUID: 03777e6e78bf4d788124720909527d9b-20200523
X-UUID: 03777e6e78bf4d788124720909527d9b-20200523
Received: from mtkcas11.mediatek.inc [(172.21.101.40)] by mailgw01.mediatek.com
	(envelope-from <ryder.lee@mediatek.com>)
	(Cellopoint E-mail Firewall v4.1.10 Build 0809 with TLS)
	with ESMTP id 1500851635; Sat, 23 May 2020 15:46:20 +0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkexhb02.mediatek.inc (172.21.101.103) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Sat, 23 May 2020 15:46:19 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Sat, 23 May 2020 15:46:18 +0800
Message-ID: <1590219979.19657.2.camel@mtkswgap22>
Subject: Re: [PATCH] mt76: mt7915: Use proper enum type in
 __mt7915_mcu_msg_send
From: Ryder Lee <ryder.lee@mediatek.com>
To: Nathan Chancellor <natechancellor@gmail.com>
CC: Felix Fietkau <nbd@nbd.name>, Lorenzo Bianconi
	<lorenzo.bianconi83@gmail.com>, <linux-wireless@vger.kernel.org>,
	<netdev@vger.kernel.org>, <linux-mediatek@lists.infradead.org>,
	<linux-kernel@vger.kernel.org>, <clang-built-linux@googlegroups.com>
Date: Sat, 23 May 2020 15:46:19 +0800
In-Reply-To: <20200523041923.3332257-1-natechancellor@gmail.com>
References: <20200523041923.3332257-1-natechancellor@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.2.3-0ubuntu6
MIME-Version: 1.0
X-MTK: N
X-Original-Sender: ryder.lee@mediatek.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mediatek.com header.s=dk header.b=RT9OPW5J;       spf=pass
 (google.com: domain of ryder.lee@mediatek.com designates 210.61.82.183 as
 permitted sender) smtp.mailfrom=ryder.lee@mediatek.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=mediatek.com
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

On Fri, 2020-05-22 at 21:19 -0700, Nathan Chancellor wrote:
> Clang warns:
> 
> drivers/net/wireless/mediatek/mt76/mt7915/mcu.c:232:9: warning: implicit
> conversion from enumeration type 'enum mt76_txq_id' to different
> enumeration type 'enum mt7915_txq_id' [-Wenum-conversion]
>                 txq = MT_TXQ_FWDL;
>                     ~ ^~~~~~~~~~~
> drivers/net/wireless/mediatek/mt76/mt7915/mcu.c:239:9: warning: implicit
> conversion from enumeration type 'enum mt76_txq_id' to different
> enumeration type 'enum mt7915_txq_id' [-Wenum-conversion]
>                 txq = MT_TXQ_MCU_WA;
>                     ~ ^~~~~~~~~~~~~
> drivers/net/wireless/mediatek/mt76/mt7915/mcu.c:243:9: warning: implicit
> conversion from enumeration type 'enum mt76_txq_id' to different
> enumeration type 'enum mt7915_txq_id' [-Wenum-conversion]
>                 txq = MT_TXQ_MCU;
>                     ~ ^~~~~~~~~~
> drivers/net/wireless/mediatek/mt76/mt7915/mcu.c:287:36: warning:
> implicit conversion from enumeration type 'enum mt7915_txq_id' to
> different enumeration type 'enum mt76_txq_id' [-Wenum-conversion]
>         return mt76_tx_queue_skb_raw(dev, txq, skb, 0);
>                ~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~
> 
> txq should be a "enum mt76_txq_id" as values of that type are the only
> ones assigned to it and that is the type that mt76_tx_queue_skb_raw
> expects.
> 
> Fixes: e57b7901469f ("mt76: add mac80211 driver for MT7915 PCIe-based chipsets")
> Link: https://github.com/ClangBuiltLinux/linux/issues/1035
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---
>  drivers/net/wireless/mediatek/mt76/mt7915/mcu.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/wireless/mediatek/mt76/mt7915/mcu.c b/drivers/net/wireless/mediatek/mt76/mt7915/mcu.c
> index f00ad2b66761..916f664e964e 100644
> --- a/drivers/net/wireless/mediatek/mt76/mt7915/mcu.c
> +++ b/drivers/net/wireless/mediatek/mt76/mt7915/mcu.c
> @@ -220,7 +220,7 @@ static int __mt7915_mcu_msg_send(struct mt7915_dev *dev, struct sk_buff *skb,
>  {
>  	struct mt7915_mcu_txd *mcu_txd;
>  	u8 seq, pkt_fmt, qidx;
> -	enum mt7915_txq_id txq;
> +	enum mt76_txq_id txq;
>  	__le32 *txd;
>  	u32 val;
>  
> 
> base-commit: c11d28ab4a691736e30b49813fb801847bd44e83

Thanks. I have posted the fix here:
https://patchwork.kernel.org/patch/11553415/
This is already in Felix's tree.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1590219979.19657.2.camel%40mtkswgap22.
