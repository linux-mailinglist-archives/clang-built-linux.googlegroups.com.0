Return-Path: <clang-built-linux+bncBDAKJG5F74LRBQWR4T7AKGQEZT7PORY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x740.google.com (mail-qk1-x740.google.com [IPv6:2607:f8b0:4864:20::740])
	by mail.lfdr.de (Postfix) with ESMTPS id 976B32DB5C4
	for <lists+clang-built-linux@lfdr.de>; Tue, 15 Dec 2020 22:21:07 +0100 (CET)
Received: by mail-qk1-x740.google.com with SMTP id p13sf9953722qki.14
        for <lists+clang-built-linux@lfdr.de>; Tue, 15 Dec 2020 13:21:07 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608067266; cv=pass;
        d=google.com; s=arc-20160816;
        b=llwpciXWMEaO5i6Vl9xRwpfEmqAy98rR+Q7t15qqv0EUKmWYGno5y/+lWSgKaD9Qtz
         A842WGo6dwPjrEAmZX3u9uoo9caVwp0msYV7gcN5Xy4YOOfzRzVelt8HNT2bkNhx0sK0
         b1J6AwfP1uEdP0W02d1ZzDjjXMZ3a3mzM6ZKd15LksQEJi3jTaWMMvBUoYiTuoMXovC6
         yhcyXB8MxK1WuRalFU+qzjTlTSklRzRWCBh/lBVq6O+VANqp+8TROUU9gfkpF5EPPu/y
         p3HGU8Vsex2z/J8ujfSEcinq5Z3yuZCLEIybGUcpX1FUSThIgqFBDMwrjFkSE2Ou9q4j
         1Rbg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=VZpqh9omlVYaejqTSq4PYTGtIx+jDjn2gb2PIMK70ww=;
        b=PsxII/j05PdseJJSHuZe7azyuBO/InqadUGB4C5wFC4uoegjwFiZAyDMwz//tJYHz4
         KaO65TxaH2dfwx1SFsDT70MD0prJEVK1dF9WCdZcoxKbmIYhdpSNTBAOsb68bc3Wd4R4
         FlKNsT449PWpklX+XtuUK97bhjX+y/9NuWgmOidH7CHvj6CHVQ/uvpTrta6mGevQ2fLs
         iWNI1raLHvbF5ePxQeziQ8sbAwhEOWn5HrNwdqGs2xogmFNfG3mh/F8MGuCe9ZXPyTav
         8Mos0eHXR7ZPoG6v1MGq3OCizq3/PK1RLQ34ndC4n5inxhMw2t7AWsmfzWRe9AQPhjo6
         qXVA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=U1xMu5od;
       spf=pass (google.com: domain of jassisinghbrar@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=jassisinghbrar@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VZpqh9omlVYaejqTSq4PYTGtIx+jDjn2gb2PIMK70ww=;
        b=AIySP0++EQNCaB8lWrpWdBfOfb9I8CVIUf+vcsgaA9XPMkVO5fAu5LW8T4vh3I89sN
         CHcNxyyOrDaFrEd4fZFt8tUQ/c21HEVLYE3xGkdYWkJEw8iNiAegc8LHzUs/NLPSARRq
         F5WFttTu0p6W202sVGyZ6KKQANTGzGbJJNazxwjjPDdLIvPrUEKCRBI4dOAPBLDXSALh
         zuuL6OpbIsh8pkKD7jHNxaYzn/THrFYpcxYTpsd7YVtqiYVOK+KONsyDRXP6HdMqpxKj
         8u5s3QkQNrcHVJhr7XOl+RUpQUnV2YSKuhZjWtpaLrTmaX1G18CUxDTED0n0RkmZqJJ4
         adRA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VZpqh9omlVYaejqTSq4PYTGtIx+jDjn2gb2PIMK70ww=;
        b=mns06K6wZd5D9zQqCUFTr3swT61qlba9THhjUljOuuafv3lRAZ9wJ4zqbCYM9OMB2T
         FNGHeciOPeIL/IB+Rsot7cFQLL0/Jc5yYOR/CVxR0scyEsEez+gZwUi1EgVXiwAy4WEe
         7UwbdXoyMgDJy4c/OgJeOlbDfIOI9eDV+mg45Zd8/Q86uakjj9X0C/aab82/B6UeYqp/
         0e2dS436mKjEpEaPqUcnnfe5rxziRWqJ/F93jQxxOavhcBoDdbDa9OZaOAsZGe+VvN4c
         U9TO3ikbV7DTgOUxgjxyiCPxg0LPLIvgaM3reRzl9Z6bpV4oDXARAS7n9lvQ472d0JhN
         2bIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VZpqh9omlVYaejqTSq4PYTGtIx+jDjn2gb2PIMK70ww=;
        b=TaL39OSxJ+XecE9smBQUdHyAuBvD23KP8pIEJ+MpfCWQtcNOCsuOaGpil3qrOIHh6d
         uvPkbKXzIEmLaeXOiC2YbV73uKBczQKeY3P7eJx4sKIVR/8J2sNi8T6yPRhYIzx0fCSa
         MvDQ7bK0BvUtfh50FVWhkrlz3PTCqLAFFORdRGKTQ2hBkbcPcYXLRdm9pZ7s8aarF92v
         /nSZqn7T4OwJIJRvWILy5j3SRXYKpQ62HRbCbpbp08bHDH02LVAaeGhCExcamefmsOzE
         9+TObmYyk6bus0l8r4VRzquqAJW8emWDW+gCg1Gi8kDg6QfzO8NjOsrm4pR4qwKOfApo
         2RDA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531BQhFO1Y7CcNC59Ike2pAoX95Gnj7LUvgWnVzCgAWojGpzDHm+
	9lQRjq570CrphfzsX2g0AJE=
X-Google-Smtp-Source: ABdhPJyCo+KVRpXq8YKYuB/Wy/Q4ztWfnb1PzcjqdQUfc4UbqRm+sz0hEwJPuuszq61h6kx0zDQ3uw==
X-Received: by 2002:a37:a110:: with SMTP id k16mr41210779qke.285.1608067266741;
        Tue, 15 Dec 2020 13:21:06 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:7904:: with SMTP id u4ls10489492qkc.7.gmail; Tue, 15 Dec
 2020 13:21:06 -0800 (PST)
X-Received: by 2002:a37:6144:: with SMTP id v65mr43673695qkb.222.1608067266360;
        Tue, 15 Dec 2020 13:21:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608067266; cv=none;
        d=google.com; s=arc-20160816;
        b=I8e7e4v1YrUDNevmzVc6Y0meVi8o36buw8/GUNMBlUtPuiMEimPsmLTva+0fzReeJK
         Ky9Xn9wU5aTV/vJwtcoO9GjdptDbOTlX5sjl1pGj8Cq8e+8WA+0OC3Uc6dhW2Vb4P2Xm
         vI/aerqDuJeGdFv4WSUKS5OVCC5CtdMbCoEl8XmekfNI7mZBCsQpmuZ7fB0phZzhD/Il
         ryCCQd5Xkv1CRN+DpG4GIeUo+/sgJlUd8+yhrsUpYSkiBObV2Gsfonh7nTCYg4rU7iCz
         ait/gJGRdX0FxLqSqMDdqLPuCiEVN31cGu02WfOY2USSyuPNW9LuSKRp+SftWIgqwqUb
         y/iw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=jQbmRDJKcfm0nMG1Zrd5hG96AtVHrMVfiJzxnIRuJBE=;
        b=F5Y0tgvDy7EjNhCbf2DoQ+sBDuBI+UQmGQJ+Bhy8noBTYCy/NRn26AOUk8bB0lImfj
         1Bf2Bi/Y0hpuHJ01Rij4fbT57Wlu0MZxn1jjTfYl5TyV6qCdryFgeK1pC8rNAFnZSd9u
         e0XODIQieJj2+GrD1FpnsRbHajDflEYjKJUVAOghuBhOs2JhsW1/inLycvM5n3qS/YY2
         IHsGsBD4ZqYN08JYnDZ+y1KdvHFsKYxbHlphPBMy7mLtZmxPEU+5xOeqVvNQ59Abfyqc
         HgNcpSP/8Cd8or5/zLl0eD4DVyj7ptB+wiez42En/BMnoNm7EIjFRkcO2IDxUS4JUvcV
         KvwA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=U1xMu5od;
       spf=pass (google.com: domain of jassisinghbrar@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=jassisinghbrar@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id n20si1101941qta.1.2020.12.15.13.21.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Dec 2020 13:21:06 -0800 (PST)
Received-SPF: pass (google.com: domain of jassisinghbrar@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Received: by mail-pl1-x642.google.com with SMTP id y8so11725660plp.8
        for <clang-built-linux@googlegroups.com>; Tue, 15 Dec 2020 13:21:06 -0800 (PST)
X-Received: by 2002:a17:902:ee11:b029:db:c0d6:581a with SMTP id
 z17-20020a170902ee11b02900dbc0d6581amr29211163plb.54.1608067265568; Tue, 15
 Dec 2020 13:21:05 -0800 (PST)
MIME-Version: 1.0
References: <1608022118-29993-1-git-send-email-yaohaidong369@gmail.com>
In-Reply-To: <1608022118-29993-1-git-send-email-yaohaidong369@gmail.com>
From: Jassi Brar <jassisinghbrar@gmail.com>
Date: Tue, 15 Dec 2020 15:20:54 -0600
Message-ID: <CABb+yY1a+TUE=+-kc6tbRU8mrxz6eDvnwOUnGOFfcm7vat+niQ@mail.gmail.com>
Subject: Re: [PATCH] add chan->cl check in mbox_chan_received_data()
To: Haidong Yao <yaohaidong369@gmail.com>
Cc: natechancellor@gmail.com, ndesaulniers@google.com, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, clang-built-linux@googlegroups.com, 
	Orson Zhai <orsonzhai@gmail.com>, Chunyan Zhang <zhang.lyra@gmail.com>, 
	Haidong Yao <haidong.yao@unisoc.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jassisinghbrar@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=U1xMu5od;       spf=pass
 (google.com: domain of jassisinghbrar@gmail.com designates
 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=jassisinghbrar@gmail.com;
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

On Tue, Dec 15, 2020 at 2:48 AM Haidong Yao <yaohaidong369@gmail.com> wrote:

> --- a/drivers/mailbox/mailbox.c
> +++ b/drivers/mailbox/mailbox.c
> @@ -152,7 +152,7 @@ static enum hrtimer_restart txdone_hrtimer(struct hrtimer *hrtimer)
>  void mbox_chan_received_data(struct mbox_chan *chan, void *mssg)
>  {
>         /* No buffering the received data */
> -       if (chan->cl->rx_callback)
> +       if (chan->cl && chan->cl->rx_callback)
>                 chan->cl->rx_callback(chan->cl, mssg);
>  }
The proper fix is in the controller driver. Which should stop tx/rx
when the channel is freed.

thnx.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABb%2ByY1a%2BTUE%3D%2B-kc6tbRU8mrxz6eDvnwOUnGOFfcm7vat%2BniQ%40mail.gmail.com.
