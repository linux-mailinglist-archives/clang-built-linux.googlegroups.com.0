Return-Path: <clang-built-linux+bncBC27X66SWQMBBB7K3D7QKGQEVDQYBHQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x439.google.com (mail-pf1-x439.google.com [IPv6:2607:f8b0:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id 6121E2EC602
	for <lists+clang-built-linux@lfdr.de>; Wed,  6 Jan 2021 23:09:13 +0100 (CET)
Received: by mail-pf1-x439.google.com with SMTP id l11sf2530216pfc.16
        for <lists+clang-built-linux@lfdr.de>; Wed, 06 Jan 2021 14:09:13 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609970952; cv=pass;
        d=google.com; s=arc-20160816;
        b=reB8VNBfemFa99qO8dZCsaSLaCsZk6IUQ66PUiMIbD9caX1VM9KOOAzJM55GPCQWLG
         EJ5SXRpQdU3guQMZWIcWdcJt4+pUGiJMVmNHTU337ijjYUybGoKDEOGqX8hBvAsQL6gj
         TBSM/0PRLFryvcvbWuN0UuyJHrC2TSHdJgDxap/I39MIDSEkEmf7u061e/cJXji8SuFU
         Yro59j/LUMvVUmZrna6hIt6N7+rXj+28ny0AF2jtR2hytXDZKcc5H1NuO70tNb0N7W7F
         PF6YGlbOwiTgEJoR+qXhZBbhI8/hFheqXOOKcTD4a4QEZ7qcj0Ji611Qkx40F5Oe6n8Q
         vqYQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=nf5it3r1lPhvk4owFTSTztvQa+Rt374fHPdJuLJWNjU=;
        b=IMj0uq/HhgK5E4vaow4pzHofKslr+AcA3Zwa2mHXesn1Kbu0mzM1u/C46s+t4BrkT/
         xKSY9pEUAaZd5F4aOhLWFAggFgU+DnbSiF0gJkgKr/5wckdNkS0MajJ622HeuH0QdKGI
         l/pRH2wuaXQpsTXfmu4E27o1IagE2fk9c1Ez/DO18qTdJBvkNYPX7JXsKZIdkU/9cqTf
         llnyYmZNSGjNajad+XSq6af/UKaRB7Fnc6Jmzw30VQA1UFFB5HMORiwYO7nGyajZ4nX3
         7y/F/RqUsgQByibpFe2pgMON0qRzGBIASSUFLUbfTpQz7DkVoMT1SN51RzxisB5/rQ9u
         0fwQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Mgok3Lka;
       spf=pass (google.com: domain of trix@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=nf5it3r1lPhvk4owFTSTztvQa+Rt374fHPdJuLJWNjU=;
        b=eI7aFVmX5pnEz4Dm76oC6pCSweiRFUhrVRv8CzfGj3FO5kZlgYePsBQqkDqWrmBtod
         C1SHwePUvhW6artasQytpBphWHDhS3M8uYNUF7s96u6J9N0d9kyi4r2HHifzRuXLE7AS
         dETxzb6clliqb3FBu7YLfzZvYP/RTJwMA2aCi+JB2wE/U7YSM7t2yvAw1NMGe7YTCEFC
         pc/pWo5VKqfW3eU50vMLLm/ZAJIfWB20gKvwvl/yA00zJ8Ad2k3UfrgZCz6xmmUTYXta
         MH31fdPR3LAZBG46G7oB5YmM6GRvKt9oIM/LQ3mK3vjtBGMcAFWKxr5JVekIZXK91bKG
         ynzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=nf5it3r1lPhvk4owFTSTztvQa+Rt374fHPdJuLJWNjU=;
        b=SNMoPtavg88iQ3+Wl1rwXwrqws5KWvDMO/dW4BDxanGZK7po2KsWhIH/u7Yzn4eJR5
         Sw7VJ2XB2sW5Yg+VoqkbM8P/YdQknmH1jxN15kFgN8107sex7fAyZEOV6resV2NT98/2
         ZuoLaDnXwZaU+OHNzX6hYog8YyLGOu6FzqkRvTB/MepwWwU7gcxQz97bbNxn4L9YCn29
         tYUdFE6NODMAPVUukjj+4xvNjNWFz8gDPcato81IiFWwofTiGzu/g/LNQ8hwSysoZWtQ
         vi/vhb4mU+ady4HH/fo37wIwj/PZBoznW2qvi/CjGJQF1cEeR2+drbZdjaJstPKmZU1S
         3K4Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533/f+cDbaoYUZFkN36i4YybPFB1OnRCrvWm/pBHcPmeQpXjZKNL
	HvSWvN9dvytWWOmvpfy8hr8=
X-Google-Smtp-Source: ABdhPJz6L5vCjHJaWWswzzdt4rUCIk+4NvdyBkLbrX34Ly5o2RQ0sDV+VayAEi2BA3jSp83E41kbtw==
X-Received: by 2002:a65:67cf:: with SMTP id b15mr6532976pgs.429.1609970952094;
        Wed, 06 Jan 2021 14:09:12 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:ab83:: with SMTP id f3ls2026620plr.9.gmail; Wed, 06
 Jan 2021 14:09:11 -0800 (PST)
X-Received: by 2002:a17:902:5997:b029:da:a1cd:3cc2 with SMTP id p23-20020a1709025997b02900daa1cd3cc2mr6020560pli.80.1609970951452;
        Wed, 06 Jan 2021 14:09:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609970951; cv=none;
        d=google.com; s=arc-20160816;
        b=uzas3olHrWBFXfK7Mtw8Am5u07mKoUnOj8nOqSubrQfJghPac1HR0rJpI6EyRUNOkf
         S391+B3PW/PdP6sDzmh+nfX/SrFKRlbz/a0QTOOFsOxjGJmt3ReiR2FAvDX/otX6DYqm
         TcZt079sZyNwFabD7NG0mwvR0PTgq3M85PIVfKKLULEjq10dJmViiBAscHxFb0htKIt+
         GuUBrTgMGSWftfUessCE3+jNahazOANjtvaPxW//d3/8YBdifU8WPXRa1H94Ss4W+sT0
         pkYKcE3dSMBtpBP7W/0Vfr0zo7F8BdxkpX0E4Gs3Y4CCeu4lWdxsf3xghtDXLjM2ebcm
         VuVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=5xTfqp/cnQanwSVgtCnzk15O1tB24PFg3CJKydXU40A=;
        b=osAynHETjfrqmApOM/5YoC3U2nxZurrZ7gyzPC5liEJWroELqyZ+Nr2Ikj7GmtuLqZ
         LBcmqK2yFb3w5Bk7ADSyWFQrHbTI1jGxQxBsxNnvA4OMJx5MJJfAQtplKS45eulrOgQD
         4/SfnQRwtKcmkkjcuiXllaUS588S+kb10M/65F/pCtfE+xLdFsDV5vsJ+RITccEPH8Z8
         Dh6zfDs+jVoOPArzpvhlxz5PXxpUdBxjkrPUQd1ct+7ry+dzYtiqTW2Pk8kJh15tIhNQ
         fShTS4jrmCFdkHmRjP2lrIl0/S5VoTOhqtmrXO7lAC/TxLNavdBH/nGAyodOCOCEfH7/
         rJbQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Mgok3Lka;
       spf=pass (google.com: domain of trix@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id d1si316407pjo.1.2021.01.06.14.09.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 06 Jan 2021 14:09:10 -0800 (PST)
Received-SPF: pass (google.com: domain of trix@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com
 [209.85.214.200]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-299-fj7pWgqCP9WihtIoPfnvCA-1; Wed, 06 Jan 2021 17:09:08 -0500
X-MC-Unique: fj7pWgqCP9WihtIoPfnvCA-1
Received: by mail-pl1-f200.google.com with SMTP id b2so2453150pls.18
        for <clang-built-linux@googlegroups.com>; Wed, 06 Jan 2021 14:09:08 -0800 (PST)
X-Received: by 2002:a17:902:6b84:b029:dc:3423:a24a with SMTP id p4-20020a1709026b84b02900dc3423a24amr6329268plk.31.1609970947339;
        Wed, 06 Jan 2021 14:09:07 -0800 (PST)
X-Received: by 2002:a17:902:6b84:b029:dc:3423:a24a with SMTP id p4-20020a1709026b84b02900dc3423a24amr6329236plk.31.1609970946862;
        Wed, 06 Jan 2021 14:09:06 -0800 (PST)
Received: from trix.remote.csb (075-142-250-213.res.spectrum.com. [75.142.250.213])
        by smtp.gmail.com with ESMTPSA id l7sm2978695pjy.29.2021.01.06.14.09.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Jan 2021 14:09:06 -0800 (PST)
Subject: Re: [PATCH] rxrpc: fix handling of an unsupported token type in
 rxrpc_read()
To: David Howells <dhowells@redhat.com>
Cc: davem@davemloft.net, kuba@kernel.org, natechancellor@gmail.com,
 ndesaulniers@google.com, linux-afs@lists.infradead.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com
References: <07564e3e-35d4-c5d4-fc1a-8a0e8659604e@redhat.com>
 <f02bdada-355c-97cd-bc32-f84516ddd93f@redhat.com>
 <548097.1609952225@warthog.procyon.org.uk>
 <c2cc898d-171a-25da-c565-48f57d407777@redhat.com>
 <20201229173916.1459499-1-trix@redhat.com>
 <259549.1609764646@warthog.procyon.org.uk>
 <675150.1609954812@warthog.procyon.org.uk>
 <697467.1609962267@warthog.procyon.org.uk>
 <706521.1609967368@warthog.procyon.org.uk>
From: Tom Rix <trix@redhat.com>
Message-ID: <8db4e32e-a587-e0ab-d4a6-678cfbc7173e@redhat.com>
Date: Wed, 6 Jan 2021 14:09:04 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <706521.1609967368@warthog.procyon.org.uk>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: trix@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=Mgok3Lka;
       spf=pass (google.com: domain of trix@redhat.com designates
 216.205.24.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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


On 1/6/21 1:09 PM, David Howells wrote:
> Tom Rix <trix@redhat.com> wrote:
>
>> On 1/6/21 11:44 AM, David Howells wrote:
>>> Tom Rix <trix@redhat.com> wrote:
>>>
>>>> These two loops iterate over the same data, i believe returning here is all
>>>> that is needed.
>>> But if the first loop is made to support a new type, but the second loop is
>>> missed, it will then likely oops.  Besides, the compiler should optimise both
>>> paths together.
>> You are right, I was only considering the existing cases.
> Thanks.  Can I put that down as a Reviewed-by?

Yes, please.

Reviewed-by: Tom Rix <trix@redhat.com>

>
> David
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/8db4e32e-a587-e0ab-d4a6-678cfbc7173e%40redhat.com.
