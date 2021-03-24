Return-Path: <clang-built-linux+bncBC27HSOJ44LBBJ4O56BAMGQEBLGB3JY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43e.google.com (mail-wr1-x43e.google.com [IPv6:2a00:1450:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E4BF348513
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Mar 2021 00:11:35 +0100 (CET)
Received: by mail-wr1-x43e.google.com with SMTP id r12sf1715464wro.15
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Mar 2021 16:11:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616627495; cv=pass;
        d=google.com; s=arc-20160816;
        b=x8q/q+InJVtXGjspa27gZkbzoF88oaNH/TAovpd5kqEcQ8x6FZFaiy7o2bGDlYDCkj
         WzsmR7wWpgNKwsmyYYUSWG9tYDrdR7VRZo2s8cqT2K7PFnkwjaI0ofuYdSccS+8YBWI2
         PdL3x6d+UBdX8lTr2Gt7/SGmNs412hD4w7nLlPIGjfz8q9r/0TnClw2YqlrUZhK+gLqa
         kSDVNO2CxVIC1d87fE+WcoiDStm6V6pCcL6HbZ9JzGVDlGOuM8GMfPo8qcXHQXiOdcws
         N6009Ui4HXqaceLr6+gxe2TpKeOW2f+eDRSP4AeIqrn+Jf5nSpdIDju+UUXUtFvGejbJ
         D7jQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:mime-version
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=4DMW8ad/hOTq18qxsgqQBqq7WOVtHzvJUsarCX5j9EM=;
        b=Hrg4HygKz7kWZU+6qpyW9/hsh40WszMps1lSQucTj5IyMFcsb8HMdiEac9wscf0Tjm
         HelfiwksyjjBYE+jAeTqaKPVdxon8ASTG9Zxh4JlnZ7j12p9Ur8maVMIx3PtsvjQIqwM
         GxRpn31J2lOCZB4Xbt5qNQa56Wdd/G3i6v5m6rtShODLyr2f+1sMiTr18JySwXpxUNT6
         8hwdtzRJgIDIwIoXW3oY7yzhxtnd95J7/B5PXi5ihoIcC0Hrl9T6QbR5nMGRnFPRfeiU
         Jc6B4Ql8mrYU7cNDrJw0cUFd+i6T35jRNJrQG5RGoP5vSv4HiucFiSEzult8/ywDyX88
         vmFw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 185.58.86.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=aculab.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:mime-version
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4DMW8ad/hOTq18qxsgqQBqq7WOVtHzvJUsarCX5j9EM=;
        b=rQBIw0UGpOcnTvHBk7a8WXjcDgJfhm/jX7BQmkVdCeAzpSDbr9Y15RXiTQ8+JOqEpx
         YJfbFM6pEXJd8v511xywfiCRy0u/i5pgwHIAKMJ38xaDlbCyOWHhuWcCU+yxiSClGeSd
         5vi5+JFoAuxQGn5JOBWlkfuD8Jl5B3xcEXVX8+W0VeLH1s4Ti0TZkfw5WyIcbowB98M/
         VRcV0p4DK0eQqvyhGuI4qOBaleEh6IxwIsepavkUPkRizhZELn4L3QAi0L1PBoM2+NTg
         uyPXU4EHBZie5wzUXlP/JM7jA+FLvtwtvp4CUcwINwwkEihcfhfrkddXpUwCGGqL+Ste
         TdBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :mime-version:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4DMW8ad/hOTq18qxsgqQBqq7WOVtHzvJUsarCX5j9EM=;
        b=FSvR96qodCNs8DqHWgDQup0Imvlf6MNkS6U1RvKmq+ZCLlK6cKXxzeH2Dj7saRUlU0
         2fPM2ll2O4o/pMwzkcTOI9upJqhOuNlGx2ASn+bRE5xWOctXgIp8yU4jw79WOJwLTIct
         wiDAcYGXP5i0+WWE6StGvt97jqCmlIDnMi2kApwkuf+KM4yfyfdxAPv/UMY2TU9prtBt
         rIb8paIvfFydiejsWr4Fu8zEQxa3BTxnJtYi3wC51ATuaofy0aIVk9NEIjon/bxLq8YU
         JpCYokFB5VoGjl8xJKAUxbcehTd85f6ZDuelRZUOFuDCHG7YbAOENkVolnza2RvLnSeG
         pj4A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532W9PQGdBB/fteCc5Z/zERX+7VS5hONbrzZc6Ob5uF2rrO9XHbX
	v4t9BGTevSUTtcZpCEkGfYk=
X-Google-Smtp-Source: ABdhPJw8MJFAeOAkTBAq9MikpudzCyD3+uArfUfF2bjKAz6JwGTOQjc41vA4mjrlFDHZN+sPbqoUiw==
X-Received: by 2002:a1c:f404:: with SMTP id z4mr5113463wma.39.1616627495312;
        Wed, 24 Mar 2021 16:11:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:6a89:: with SMTP id s9ls1904485wru.2.gmail; Wed, 24 Mar
 2021 16:11:34 -0700 (PDT)
X-Received: by 2002:adf:fb91:: with SMTP id a17mr5929961wrr.118.1616627494453;
        Wed, 24 Mar 2021 16:11:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616627494; cv=none;
        d=google.com; s=arc-20160816;
        b=KUtMrdfIOlabDSDVdzS7lZNVfY4mi9AyTmE31+SQgue+zYXC/A1YJWRu9N1BstMa3A
         DRtC5FgrTY5ESkAgQi475WToRNthiQyWAdGk48Jd6SwA+OfaE5ht0DnW4z1B5PDUnQ+k
         3eKaDHezBGpnbA7mNHB7J3VTzY0hSS2keZMgRd1NdBRjOncMeGyutF/CrpTZ9y4NRE8X
         6XhZcd2/vVicBpJilNgK6Yd6zVHazabH8UZAJEhsiN4gAB+DzcgXUDAW4Y9eI4sDzOQ8
         v+0h/w9Bqq1p30V9W2i743bgA4y6f4/N4lrg8gzF5S7TqJDlosF8uOyz7W+1i3Cgy7Mg
         rKtA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:mime-version
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from;
        bh=l9T+Pithd4KhbVDZHCOReG7x1JW5TAIpl5BQANsW1lw=;
        b=L/8S6CIsq4s3Te+EJWl2a5zRuUS4uvdZ9Z0DNYwoz8WMz+w1nYactB5Q6LiVGxv7Vd
         Sld9lFtZj9FtCBH+TV7NHRYQiDnm9SAmH0G0SepzVLb68d/UB/AxUBRAxrh7i4FApAsG
         Edh8Cz4TkZv7vP+NC8rXW7/AYqan7y59Mjh30L2a3orDnVIDr46AGwPVoCwOIGesuYRw
         WGcUX20+WLvr5Go8OY+4ssqp3csIKlyk6a9b19NLvVm68GT2cTWPYTAdiiq1OrdDVpH9
         Ny3g7OiwqbisJo+B8c1l+8umpCsz7jO15FTOiMdTe7SL2WqbbnG9MfhYHR/OsMHEr0SA
         ynIg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 185.58.86.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=aculab.com
Received: from eu-smtp-delivery-151.mimecast.com (eu-smtp-delivery-151.mimecast.com. [185.58.86.151])
        by gmr-mx.google.com with ESMTPS id z202si126647wmc.0.2021.03.24.16.11.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Mar 2021 16:11:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of david.laight@aculab.com designates 185.58.86.151 as permitted sender) client-ip=185.58.86.151;
Received: from AcuMS.aculab.com (156.67.243.126 [156.67.243.126]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-57-ByNutTSLPryHL587jqF9Ew-1; Wed, 24 Mar 2021 23:11:31 +0000
X-MC-Unique: ByNutTSLPryHL587jqF9Ew-1
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:994c:f5c2:35d6:9b65) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:994c:f5c2:35d6:9b65) with Microsoft SMTP
 Server (TLS) id 15.0.1497.2; Wed, 24 Mar 2021 23:11:30 +0000
Received: from AcuMS.Aculab.com ([fe80::994c:f5c2:35d6:9b65]) by
 AcuMS.aculab.com ([fe80::994c:f5c2:35d6:9b65%12]) with mapi id
 15.00.1497.012; Wed, 24 Mar 2021 23:11:30 +0000
From: David Laight <David.Laight@ACULAB.COM>
To: 'Arnd Bergmann' <arnd@kernel.org>, Bjorn Andersson
	<bjorn.andersson@linaro.org>, Andy Gross <agross@kernel.org>, Linus Walleij
	<linus.walleij@linaro.org>, Nathan Chancellor <nathan@kernel.org>, "Nick
 Desaulniers" <ndesaulniers@google.com>, Jeevan Shriram
	<jshriram@codeaurora.org>, Manivannan Sadhasivam <mani@kernel.org>, "Vinod
 Koul" <vkoul@kernel.org>
CC: Arnd Bergmann <arnd@arndb.de>, "linux-arm-msm@vger.kernel.org"
	<linux-arm-msm@vger.kernel.org>, "linux-gpio@vger.kernel.org"
	<linux-gpio@vger.kernel.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, "clang-built-linux@googlegroups.com"
	<clang-built-linux@googlegroups.com>
Subject: RE: [PATCH] pinctrl: qcom: fix unintentional string concatenation
Thread-Topic: [PATCH] pinctrl: qcom: fix unintentional string concatenation
Thread-Index: AQHXH+cnzD0REIZ51kmEV+qVFS5oLKqTxYmg
Date: Wed, 24 Mar 2021 23:11:30 +0000
Message-ID: <787a3368942c4be98d29d5b00cad6b7d@AcuMS.aculab.com>
References: <20210323131728.2702789-1-arnd@kernel.org>
In-Reply-To: <20210323131728.2702789-1-arnd@kernel.org>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.202.205.107]
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: aculab.com
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: david.laight@aculab.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of david.laight@aculab.com designates 185.58.86.151 as
 permitted sender) smtp.mailfrom=david.laight@aculab.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=aculab.com
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

From: Arnd Bergmann
> Sent: 23 March 2021 13:17
> clang is clearly correct to point out a typo in a silly
> array of strings:
> 
> drivers/pinctrl/qcom/pinctrl-sdx55.c:426:61: error: suspicious concatenation of string literals in an
> array initialization; did you mean to separate the elements with a comma? [-Werror,-Wstring-
> concatenation]
>         "gpio14", "gpio15", "gpio16", "gpio17", "gpio18", "gpio19" "gpio20", "gpio21", "gpio22",
>                                                                    ^
> Add the missing comma that must have accidentally been removed.
> 
> Fixes: ac43c44a7a37 ("pinctrl: qcom: Add SDX55 pincontrol driver")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  drivers/pinctrl/qcom/pinctrl-sdx55.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/pinctrl/qcom/pinctrl-sdx55.c b/drivers/pinctrl/qcom/pinctrl-sdx55.c
> index 2b5b0e2b03ad..5aaf57b40407 100644
> --- a/drivers/pinctrl/qcom/pinctrl-sdx55.c
> +++ b/drivers/pinctrl/qcom/pinctrl-sdx55.c
> @@ -423,7 +423,7 @@ static const char * const gpio_groups[] = {
> 
>  static const char * const qdss_stm_groups[] = {
>  	"gpio0", "gpio1", "gpio2", "gpio3", "gpio4", "gpio5", "gpio6", "gpio7", "gpio12", "gpio13",
> -	"gpio14", "gpio15", "gpio16", "gpio17", "gpio18", "gpio19" "gpio20", "gpio21", "gpio22",
> +	"gpio14", "gpio15", "gpio16", "gpio17", "gpio18", "gpio19", "gpio20", "gpio21", "gpio22",
>  	"gpio23", "gpio44", "gpio45", "gpio52", "gpio53", "gpio56", "gpio57", "gpio61", "gpio62",
>  	"gpio63", "gpio64", "gpio65", "gpio66",


That may be replaceable with:
static const char qdss_stm_groups[][8] = { .... };

For a code and data size reduction.

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/787a3368942c4be98d29d5b00cad6b7d%40AcuMS.aculab.com.
