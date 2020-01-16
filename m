Return-Path: <clang-built-linux+bncBAABBQGAQ7YQKGQEQ5C44HQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83a.google.com (mail-qt1-x83a.google.com [IPv6:2607:f8b0:4864:20::83a])
	by mail.lfdr.de (Postfix) with ESMTPS id 685F4140EE9
	for <lists+clang-built-linux@lfdr.de>; Fri, 17 Jan 2020 17:26:41 +0100 (CET)
Received: by mail-qt1-x83a.google.com with SMTP id l5sf16327549qte.10
        for <lists+clang-built-linux@lfdr.de>; Fri, 17 Jan 2020 08:26:41 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579278400; cv=pass;
        d=google.com; s=arc-20160816;
        b=WydBfipAZOKXrmour/0BA9kmaggGtxXveo4XrdPF7q1CoFHQ+wBv4QLLndo5y0oVHB
         GetGTL1dEdn1/CWHOknZ1jYn0v8+b/ULGoOUqyUKKv19Ol/U9hxqMN9Po42B9bjTCd0X
         1qXGf4n2pyyi4DP4vfoHQO/+fwPmL+XWRzevn9NTHszXaC5To7ux7kLKPOVhbTa8bH4T
         CSfOMdb7mUzCZQeYY8U1U/N2BOKfpvEZQQxb9JiXY54pqPB/LQsMHlpppkTu7/SMcXzD
         RobnDFtP8YYGwhjZS+QFNopLPpCfBJ5hEA3a0l2SnAXic2+DgBQqj8T1WI+DiLGDL7in
         0Ngg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:organization:autocrypt
         :openpgp:from:references:cc:to:subject:reply-to:sender
         :dkim-signature;
        bh=ikNVRiSCH8/JjSmLncHL53zSWbcC2BvucWWW6z+acSk=;
        b=Ag9ZmlaVXK37RQI3E5OFLquuIowIfJOq8OYTjhw/wad+Yz+420jg8NEUpX9CvJ7iTn
         5AXO5WgeIsLOGhBycY3BaQSXv9SsRgw5Ury186JUxjMFIoavS5/Oqtqx7hPh48wuBGae
         g0zX1tZ76r4G0tUIys2r9NTvCMRiiMn0iI4qjWEb1rNbRX/+LJrcnazGbctVMeKAFt0W
         NLEiS9O30qhjiq3ku8hiLzBcpKuq5cfkfND8OCGEtFBbdxRsCY17uWhmodxiZmhuSoWE
         iDGvYt0pK8eiSgCE3mWOv0M2RGiooo85kJFQpZ7SFWGpStFF+/TMcvcqovBj8/tAHXw5
         5jZA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass (test mode) header.i=@ideasonboard.com header.s=mail header.b=j9Wbs+23;
       spf=pass (google.com: domain of kieran.bingham@ideasonboard.com designates 2001:4b98:dc2:55:216:3eff:fef7:d647 as permitted sender) smtp.mailfrom=kieran.bingham@ideasonboard.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:reply-to:subject:to:cc:references:from:openpgp:autocrypt
         :organization:message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ikNVRiSCH8/JjSmLncHL53zSWbcC2BvucWWW6z+acSk=;
        b=qw647ABVkUx3n9/zW8donxAFbHuzlQb/gtN1c77juNezKxx9kZONbA/SRZM5cQ1BA/
         zsXzGQnj2pL0L2wCsUZw09/XAEnIvOWqMIZcdPxgg7XuM/p7o0gG0rDAbHN3v6FRrEeB
         KGSSzuO3YLvIa0l7VgXJSQ8RjGslA0EKuqD3kk2L5ZUGYpAaaOMA6GsfOiIm+leGnlmX
         VK6565SyGNSIhSavBksJ0W0N2XQ7wvBe0Lgz36hhIxMjIN4sNlhbZGDtOaUR9lnMj0m+
         hNC0r+EQbUICMsNlLO4KKPGy0UNYXLvusf03XivzmQAKRGInj+zhTZMc2hc8ZLZSB3Tx
         YNTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:reply-to:subject:to:cc:references:from
         :openpgp:autocrypt:organization:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ikNVRiSCH8/JjSmLncHL53zSWbcC2BvucWWW6z+acSk=;
        b=T9Y1qCCqNyVXI+wKYdXEqJYxuxoWXSPNSPkTgmZOpLNZY+i2hsVw4kjwX7443JdAtd
         chjCFksxFst3vrOkdLORD4BNEmv0EQY8goKtnlpcUyA9CYD68DsunVFRePif9L/Gjtdd
         /5D9WgsgG0SP7O1ShUSPdlAKIiUS0zP395PP3y8rhKb5JytNGzl5/Eo4DqjaGMz1XXK1
         IWPUyd5+v+WKOddu0k6UyssHCqBQrYR2N4bNLkM9YrD++JYpPnN5sgARpj98nyqsa7tW
         G6SkerhmvGA6EVqTIdGGtT5MBSkDIJTdSIF1sQnS54/SooCu+2dHCT59TL1E0TRlq8dP
         dMRA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXrXBvIWhGt9LUU+c10mzVKtBaxgWNF5sNty1OvxtIg+o2Ooywh
	bfwZFpixGUrF2VvAYIZtDDU=
X-Google-Smtp-Source: APXvYqw96yzF4xK5P0TsaKPDkwGjvjshZOQ4alG8vKHNb6/k2ExfE+iDqr7qBBhW0Mn252fBD4iebQ==
X-Received: by 2002:a05:6214:3e7:: with SMTP id cf7mr8436302qvb.129.1579278400311;
        Fri, 17 Jan 2020 08:26:40 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:2712:: with SMTP id g18ls5290817qtg.3.gmail; Fri, 17 Jan
 2020 08:26:40 -0800 (PST)
X-Received: by 2002:ac8:1e90:: with SMTP id c16mr8226683qtm.265.1579278399984;
        Fri, 17 Jan 2020 08:26:39 -0800 (PST)
Received: by 2002:a37:a991:0:0:0:0:0 with SMTP id s139msqke;
        Thu, 16 Jan 2020 14:28:34 -0800 (PST)
X-Received: by 2002:aa7:c5d0:: with SMTP id h16mr732060eds.116.1579213713728;
        Thu, 16 Jan 2020 14:28:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579213713; cv=none;
        d=google.com; s=arc-20160816;
        b=T+0TDGkC9KWe4T3EfptlnAYVuuBY3Xy2vWnMMfy7EOZo2KBP+1dAWPi6n5rO2498Ox
         NKhVzQ2N1pobO99mugOqMvoNbtWmAdi71hekw+re9FwEMcf5JtEwJuL08VrsPJOD+uHC
         24XAJBy5IljahKryN3oDHwJynDIAR8P19rOJZAOVERH8YmYm4Nak2zJBBqoWod9JHXX1
         KRcNsq4T5FHyR05DHYU6ysYt2VTbq1hEAe22QtlgM+kpO/n9YjXJkZr0bCTiOziAuQm7
         zIdbHmhV3r55QLE+BFaLcrVSrm8524mPutPGQaTzHs/GQ2PVRiVRGHfvc7DK8ozHVQZ1
         LkUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:organization:autocrypt:openpgp:from
         :references:cc:to:subject:reply-to:dkim-signature;
        bh=V3YiVp/jHcc0aqsX7ewJ948EfVJxlaSbdkdAmnzksRM=;
        b=GJeG53ovr8GN6h4n+iOUmExnwktm1B3WWqQG/vnln+ccXF4uVv/FMewXAspQFsnUtw
         6B5h3/GDA+sbC1N62Y2PlhELmy8MZZcN1iFobGvipw/6N8rvbC67ltLJoOtXAY6OVPSl
         AEalK7eIDEUQ73xds9gEn5A7+FJmYTvlt0QBGZVZp5Eqj6GwOLN/TlPhLp768ta4V/cg
         DmkwcmAszepIoLfyClwJh2ksxvP+oXJhvx7TpPFPjxHJCRl+vC/mYziZfhe786tPDjCp
         8RtTEzbP+jDPANBQnABufBz1/cqSx6CgrCGVh0U5raYy/buc2CvWqgI+G73fdR1ggVnk
         wK0A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass (test mode) header.i=@ideasonboard.com header.s=mail header.b=j9Wbs+23;
       spf=pass (google.com: domain of kieran.bingham@ideasonboard.com designates 2001:4b98:dc2:55:216:3eff:fef7:d647 as permitted sender) smtp.mailfrom=kieran.bingham@ideasonboard.com
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com. [2001:4b98:dc2:55:216:3eff:fef7:d647])
        by gmr-mx.google.com with ESMTPS id n21si950292eja.0.2020.01.16.14.28.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 16 Jan 2020 14:28:33 -0800 (PST)
Received-SPF: pass (google.com: domain of kieran.bingham@ideasonboard.com designates 2001:4b98:dc2:55:216:3eff:fef7:d647 as permitted sender) client-ip=2001:4b98:dc2:55:216:3eff:fef7:d647;
Received: from [192.168.0.20] (cpc89242-aztw30-2-0-cust488.18-1.cable.virginm.net [86.31.129.233])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 61EE72D2;
	Thu, 16 Jan 2020 23:28:32 +0100 (CET)
Reply-To: kieran.bingham@ideasonboard.com
Subject: Re: [PATCH] media: i2c: adv748x: Fix unsafe macros
To: Nick Desaulniers <ndesaulniers@google.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hans.verkuil@cisco.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>,
 Dmitry Vyukov <dvyukov@google.com>, linux-media@vger.kernel.org,
 LKML <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 "Gustavo A. R. Silva" <gustavo@embeddedor.com>
References: <20191022132522.GA12072@embeddedor>
 <20200113231413.GA23583@ubuntu-x2-xlarge-x86>
 <20200116154503.Horde.MnWaeq-f0qzzp8gx01ERP2p@embeddedor.com>
 <CAKwvOd=cA7E0MOtFfaQ5-+-v=+YNHYQPgMq6yS517PLLKn=Qpw@mail.gmail.com>
From: Kieran Bingham <kieran.bingham@ideasonboard.com>
Openpgp: preference=signencrypt
Autocrypt: addr=kieran.bingham@ideasonboard.com; keydata=
 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
 WZw01QYHU/GUV/zHJSFk
Organization: Ideas on Board
Message-ID: <c11f86b7-f304-2667-0d2a-3d30a965b700@ideasonboard.com>
Date: Thu, 16 Jan 2020 22:28:29 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CAKwvOd=cA7E0MOtFfaQ5-+-v=+YNHYQPgMq6yS517PLLKn=Qpw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-GB
X-Original-Sender: kieran.bingham@ideasonboard.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass (test
 mode) header.i=@ideasonboard.com header.s=mail header.b=j9Wbs+23;
       spf=pass (google.com: domain of kieran.bingham@ideasonboard.com
 designates 2001:4b98:dc2:55:216:3eff:fef7:d647 as permitted sender) smtp.mailfrom=kieran.bingham@ideasonboard.com
Precedence: list
Mailing-list: list clang-built-linux@googlegroups.com; contact clang-built-linux+owners@googlegroups.com
List-ID: <clang-built-linux.googlegroups.com>
X-Google-Group-Id: 357212215037
List-Post: <https://groups.google.com/group/clang-built-linux/post>, <mailto:clang-built-linux@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:clang-built-linux+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/clang-built-linux
List-Subscribe: <https://groups.google.com/group/clang-built-linux/subscribe>, <mailto:clang-built-linux+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+357212215037+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/clang-built-linux/subscribe>

Hi Nick

On 16/01/2020 21:51, Nick Desaulniers wrote:
> On Thu, Jan 16, 2020 at 1:45 PM Gustavo A. R. Silva
> <gustavo@embeddedor.com> wrote:
>>
>> Hi!
>> Friendly ping:
>>
>> Who can take this?
>>
>> It's been almost three months now since I first sent this patch out.
> 
> Kieran is listed as maintainer of:
>   998 F:  drivers/media/i2c/adv748x/*
> 
> but I'm guessing the tree would be Mauro's.  It would be good if
> Kieran can review, then Mauro can pick up?

Already done on the 22nd October 2019:

https://lore.kernel.org/linux-media/22780ef3-514e-d013-1da8-9576780fde1c@ideasonboard.com/

Hans, Should this go through you?

Or are we just waiting for Mauro to pick it up?

-- 
Regards
--
Kieran

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/c11f86b7-f304-2667-0d2a-3d30a965b700%40ideasonboard.com.
