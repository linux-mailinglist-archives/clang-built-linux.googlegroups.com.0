Return-Path: <clang-built-linux+bncBC3YZLGA2EEBBFETZCQAMGQEVSJUIWQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53d.google.com (mail-ed1-x53d.google.com [IPv6:2a00:1450:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id F0E836BBBB0
	for <lists+clang-built-linux@lfdr.de>; Wed, 15 Mar 2023 19:08:20 +0100 (CET)
Received: by mail-ed1-x53d.google.com with SMTP id z14-20020a05640235ce00b004e07ddbc2f8sf27901252edc.7
        for <lists+clang-built-linux@lfdr.de>; Wed, 15 Mar 2023 11:08:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1678903700; cv=pass;
        d=google.com; s=arc-20160816;
        b=M/c7bNZeWRxfAeoegn8m2PzQ4frD1h5288qRjei2CcAhT5/zhhLzsvac770UrHh9dR
         2k0/ttKQ869R0tYtN1dn/PZbpPpdBpVQg3YLy/f+/pfPT/MIOAKnAs7AZEKIKTMIWK/F
         8JTE1pkns0fbRt6tp0T8vTu0tMw0jOyTiXsIDuGzGMLL0285BsIqT9l/HBwHPjtfDM8o
         9jGTEOPAUBHDPG2y4LJ99KC9ToK30+3R7E6g+QmQbOgoUU7vJUVsqHPs4EA0LiGbCv7Q
         A1lesaGZU+dQxbCIpvi3kRB16HM5jRMJp8tJjnJhsQnBw9jbWsgjTkaVSfKulWX35dtY
         svxQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:subject
         :reply-to:to:from:mime-version:date:message-id:sender:dkim-signature
         :dkim-signature;
        bh=M36ZontgCmgT1Nj2Dh0g8SlxQB0srNeLN6pSfr9W15k=;
        b=J9lD+HpDAfh92oSgHDwpMErdTCK33RxDrzRHCej7AYVQze0jB6SNyyVY+UWdYv6Jbc
         HQ0tPv6zqSXEX13miwDCLOVcdjRF/JUFGc1fhPBTpbUTsiwnl0sySyME7/IUMLJAc0XO
         SKW2GsXZoKpzDVgkGMKBIvi0ax9lPp7eofBOa7PRHGiB3Jptza5uGHvI/S3QrvmJjMWC
         gd5GdZNOt7VpzEriX7M/zxcH5VJvQ+e9kvblJOPJAAyOA6zL5jD9Wy6joVGcobWhkitS
         duPGULv1v37s2A8OmKdIdvyRuzO2mFoKU4lzlsmtDIrEG29GexDqfHb7PZYEO1HX0o25
         CROg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=hmRVzmTt;
       spf=pass (google.com: domain of rtctewaxvnm@gmail.com designates 2a00:1450:4864:20::430 as permitted sender) smtp.mailfrom=rtctewaxvnm@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112; t=1678903700;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-transfer-encoding:subject:reply-to:to
         :from:mime-version:date:message-id:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=M36ZontgCmgT1Nj2Dh0g8SlxQB0srNeLN6pSfr9W15k=;
        b=NkiK9LRBtIGtwNK4IYs+3P1Cd6VW+oX1q6hxSCSF27uNyQQV4A32vckud7VXiISBK/
         QjrnryVhzszcp7EFgIN6UN+Y12QT3uSrQoYUA409HRHuUoqCPlIPQG8uRmq4TkPaq5v8
         F2wwS/AlDBAhLufUcbGB/GTqnn0P+8Y1fy1JH/Me5z48HdPEFBl2QVqBpT635Fy/Gf5T
         GbQe+wzyEd1K1OdisPfU7tS03Ri/EEVv2zPKKyFmYNC8do5X0kJD1L6aF+6L0M1jNvTZ
         ysJzze2NS2nucc2LboVgcbD/wVYfRH5PWsXhFcBjzb7mSYY9Pp+XJ+gz5YkJr2eUjFw0
         Afxw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678903700;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-transfer-encoding:subject:reply-to:to
         :from:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=M36ZontgCmgT1Nj2Dh0g8SlxQB0srNeLN6pSfr9W15k=;
        b=Mp33y2WhQRLK9j19AAqY5ZTGnkWIF6IcX+f0XAmVzRinnOY/2W1ADWXwf2On7QdDxf
         /qSEWH4lCWICfHfD4YHar89L/kZFLOfsUM9Fn8xxEjmjRyBj99K0lJbFaj06jnkq2o8q
         2NG11nQ8YC6E93DOAudU2p88P/tVSH2EpzXRQhxvSwhEEYBsO9B38qckS+0CZo+cZ2UM
         IaxsB5zQHjGJjafzxYL5K7fLtLuUHoLQjNVUTJx9XS4pYCt0PpqXI1D/gWNlgZ9VSz3+
         xiHHHEKRygPcjEBmk1X9wlK5wOvZLKqQjrLuGdQnllsGLFWBwR9RTrMPE/40bKksCNRm
         fh4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678903700;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:subject:reply-to:to:from:mime-version
         :date:message-id:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=M36ZontgCmgT1Nj2Dh0g8SlxQB0srNeLN6pSfr9W15k=;
        b=JY7TDMGcBxn6PZGZYAs6S0aslJAwIe+My4D63OCHNSwGn0UNJVHD20LN5NkwHzXw41
         YHIzCvtCj3SACqCnaNGwmGEFhR0qWo47gnYYtWfOHhQzkHodraJKrO3Mb1hWRTSRUdQh
         fOnMQMoQmgnseP/442rKn0oyyfCopr7g4MLxAdrUxH90a2PKHBqTBArz65/EnDFPBG89
         ZmX0zLV4c2k4wwoLsckm+puyFM6kxg1vq8k2cmQK1Q1QlLpcgg5KDUdYtZZz/ogg5iOV
         YJZG5+Zgtc/yUp/S7MKfBxo+h+oUikDQ7SKNt2yfCGBC8sFtybfJPA7EoqRVdeBvOZUn
         D3SA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AO0yUKVQ1NpnxZhFeZ3Jf8+vv51XU1hABfgeDgPLa9s76tVpKyhXM/pr
	CSUFK3i8hhLDOjm3sid6A0U=
X-Google-Smtp-Source: AK7set/UGBmhEyBiitq+YtPwnKhNDfCPSMfzYUjs8Z47q2Xj/FBQrno+VO5vx1qda+z9BPmHiNN2bQ==
X-Received: by 2002:a17:906:6688:b0:903:967b:42d8 with SMTP id z8-20020a170906668800b00903967b42d8mr3576503ejo.4.1678903700260;
        Wed, 15 Mar 2023 11:08:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6402:501a:b0:4ac:d2bc:e0cb with SMTP id
 p26-20020a056402501a00b004acd2bce0cbls5371533eda.0.-pod-prod-gmail; Wed, 15
 Mar 2023 11:08:19 -0700 (PDT)
X-Received: by 2002:aa7:d1da:0:b0:4f9:deb4:b986 with SMTP id g26-20020aa7d1da000000b004f9deb4b986mr3506350edp.7.1678903698987;
        Wed, 15 Mar 2023 11:08:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1678903698; cv=none;
        d=google.com; s=arc-20160816;
        b=Dqwn+Kujl8Tze1Wcahfo39G0GpBjKv+cYZPotA6sHbJ0roJbY3yCo6f3eWk3sOyqsj
         /Q/rqEFtzDvVpak/AwQH+iwJFrn8odFxldYj3t+r5gXSgULADr4bh+Gaz5uB2KPUJ7bY
         c84WxtnnxpohNSgmvNkwDSfB6DJRscXNlmcf8uifsqZ84U+31ktOi+yfLnWoB49AyeVp
         YRO6g6y9TyQIqF9ayQdK0sx/6fM8COFqAbB6xXiGlmGGtPITVc0p2KCzNccM4hCDZlbV
         aVddZ37vnBuWRbUf+T+1BO4Tevy8P/X8oZtsKgcs1rvzOkSOR7ItrvzWCvZZ8kDh8HeU
         RY/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:subject:reply-to:to:from:mime-version
         :date:message-id:dkim-signature;
        bh=mtIAik/ZZ8PQEYtlLQAc7wH/JptRRe7jUamsyr6U08s=;
        b=wDqyFLt2OSLEsgRkbZyrqVXp9e9VKFgHzxbqSYAH/OANaaxzy1Z99Txra8QMqdMAEO
         /OY5zAZwgMvwFCAL36h9CSIG4EL61rzRl6egXBMW7TydgUYjzXwpXkByBmJxyvIHjDje
         e74AQOoIYLWFhj+qXIZkMhb6UJEkiPeCVJCBP+Yheuf7ZMoB9Zvy5WHzzQDmD/j4b9x/
         HKHr8uC08CYNBidWzwd25xnZDcipDc2Dll5aNT1I0IzxqZSvShOjZd/6KDeCcuWd0Xjq
         m2ZKAAdELotGUdbaqgmvfkZIhWOE6GMWAI4LwOGnUe8tYgSQ1ywJAlds1KnWqDhi7XJU
         hUag==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=hmRVzmTt;
       spf=pass (google.com: domain of rtctewaxvnm@gmail.com designates 2a00:1450:4864:20::430 as permitted sender) smtp.mailfrom=rtctewaxvnm@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com. [2a00:1450:4864:20::430])
        by gmr-mx.google.com with ESMTPS id p37-20020a056402502500b0046c3ce626bdsi281172eda.2.2023.03.15.11.08.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Mar 2023 11:08:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of rtctewaxvnm@gmail.com designates 2a00:1450:4864:20::430 as permitted sender) client-ip=2a00:1450:4864:20::430;
Received: by mail-wr1-x430.google.com with SMTP id r18so18137959wrx.1
        for <clang-built-linux@googlegroups.com>; Wed, 15 Mar 2023 11:08:18 -0700 (PDT)
X-Received: by 2002:adf:decb:0:b0:2ce:a096:3ff2 with SMTP id i11-20020adfdecb000000b002cea0963ff2mr2346715wrn.63.1678903697881;
        Wed, 15 Mar 2023 11:08:17 -0700 (PDT)
Received: from instance-12 (196.131.154.34.bc.googleusercontent.com. [34.154.131.196])
        by smtp.gmail.com with ESMTPSA id j8-20020a5d5648000000b002c559843748sm5195248wrw.10.2023.03.15.11.08.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1 cipher=ECDHE-ECDSA-AES128-SHA bits=128/128);
        Wed, 15 Mar 2023 11:08:17 -0700 (PDT)
Message-ID: <64120991.5d0a0220.5744c.fe88@mx.google.com>
Date: Wed, 15 Mar 2023 11:08:17 -0700 (PDT)
MIME-Version: 1.0
From: "Google Play Reciept" <rtctewaxvnm@gmail.com>
To: clang-built-linux@googlegroups.com
Reply-To: rtctewaxvnm@gmail.com
Subject: Order Reciept has been generated on March,15,2023
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: rtctewaxvnm@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=hmRVzmTt;       spf=pass
 (google.com: domain of rtctewaxvnm@gmail.com designates 2a00:1450:4864:20::430
 as permitted sender) smtp.mailfrom=rtctewaxvnm@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

<P>Google Play<BR>Thank you.<BR>Your subscription from MAGICJACK VOIP SERVI=
CES LLC on Google Play has been renewed. Manage your subscriptions.</P>
<P>Order number: GPA.3382-5586-7769-30438...#<BR>Order date: 09-Mar-2023 10=
:05:51</P>
<P>Item Price<BR>Incoming and Outgoing calls + texting (magic App Calling &=
amp; Messaging)&nbsp;$99.99/month.<BR>Auto-renewing subscription&nbsp;<BR>T=
otal: $99.99/month</P>
<P>Payment method: Auto Debited&nbsp;</P>
<P>Play Points earned+84<BR>By subscribing, you auto)-authorize us to charg=
e you the subscription cost (as described above) automatically, charged to =
the payment method provided until canceled. Learn how to cancel. Keep this =
for your records.<BR>-<BR>Questions? Call us at (678) 701-8387.</P>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/64120991.5d0a0220.5744c.fe88%40mx.google.com?u=
tm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgid/cl=
ang-built-linux/64120991.5d0a0220.5744c.fe88%40mx.google.com</a>.<br />
