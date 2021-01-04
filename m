Return-Path: <clang-built-linux+bncBC27X66SWQMBBH65ZT7QKGQEZVXP4WY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3c.google.com (mail-qv1-xf3c.google.com [IPv6:2607:f8b0:4864:20::f3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CDCE2E9808
	for <lists+clang-built-linux@lfdr.de>; Mon,  4 Jan 2021 16:05:04 +0100 (CET)
Received: by mail-qv1-xf3c.google.com with SMTP id m1sf25438687qvp.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 04 Jan 2021 07:05:04 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609772703; cv=pass;
        d=google.com; s=arc-20160816;
        b=ipY/l4TBMoTl17EhaFjN2I8qlHH7HnPcubTEIAZwLQM0hpvf/hoOhKeftzsqOV9mFR
         sP9t8MDPRo5qzJXNi3iXQw21QJ3gXsG56Wz5dtfQKP1VAaz8ln1QQ1+DyvTi3kfpqhl5
         B1WFnQ5eeHKkpjUW/QV4MR9AEOqt4dq+ucmNb+Ke7Z6O37J9E+weqYbIlLWleAzw6Ha2
         cKFmZhx9U4ddj/615QLYQgvRcqWOIWtxW75nbgZj4zk2eHocLKAX3+ENBoaAXLUvomoF
         rreMW8Qf4dQ68qJPf1VhzXDQHJtECZFJFLryVzzjHquWdqSk+uZNJXXlBb6JPuXJSmbs
         dxGQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=CB6HHTRoHtzBEzU0o+cqnViNk/N3Hs4caA5x6aSe5NM=;
        b=dE1scUG44ZdqBJcTeOxtp+Vkh5c4sT+nPQGEiiqcBSh+KoVnAF5IuVoGfmn+8Jlzmr
         +EJP7D8JtIZFB/hZcCdOfiWFWRNQueAC9RzBoC4+w2lbrUECL4J+XwmATgiLnmqJk9nW
         Gp5DFSRCLAgh7UOqx16nd09oO5446TTvF/DTdP6NY6bAfNL1mWwW9lqGBi/8IGoiRsWd
         zw3l8/wfcv1QxlD4tlvk28dF8SznLhEf2L/T6NBoPVZZS8rNJEAUWoLxizAzBGd7Of4K
         2ZxPeR/C+ERbcVe8S84GzJZ7PmE132xfHNee0uVwXB8flUNXTRus+hBriIrN//P6bB3m
         9Wpw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=gSubPZC0;
       spf=pass (google.com: domain of trix@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=CB6HHTRoHtzBEzU0o+cqnViNk/N3Hs4caA5x6aSe5NM=;
        b=mz1WfBC5xJhhvxmc/cNaG84iDFbiZi3SbSyMMIZVmmpjPm5KqVl9B5nkJ1GPcCWfOy
         pbj+2AnMdH6FCk18otZr+XbaA2lk8kYzh1MnU2MEW2jYRa89ribKTRaxUkOez6qDcmF9
         iwvV9TVlR8CO4UAKSOedPAAXt6MMwnCxX4aEGBNSBDbKHm/zIfBQHHv4H7GsgENcaU08
         moiaFADWxpruAziXjxu7hwXWiq4QQaFYxs1AGHrh11y281FKAsfwXO8UusJZUduLTUKg
         IwTonHoRCv1WKCAfFmb4Bu7h9a2bBC7TA6JEyvc88vmJy2/aqLwlIrooX8hwccOn8eSN
         dVPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=CB6HHTRoHtzBEzU0o+cqnViNk/N3Hs4caA5x6aSe5NM=;
        b=Xi3jcw5GSeH4v25rGwqAhlK31B0AzJAjAnsJuldhavg20j6SFWg/2ErCBwXyEt0kcr
         j2GTz2dSjB+cbxMt5Y21lXDS2LhFt3NEpgo/CO9GfirWMjIAXWta2Q4w28xSIR5eBxkD
         V6/ynFX/E89DyJCWxQdV5rFFEcrgBAzPqSaUS2wxxPRNAggYi2/xMtgTdhW5D+LSzoFF
         in176jsvneIcMSnNeoHkGeDIjF8DATUG2Uc59SMC50SbetxoaGPr9kWn5nQR5FBPeXKv
         ou66lh3JQIOu9ambSWKZs6VViQPICKvRlHhrcrkgFU48kzQQBN9Zu4dNXIad1SbdmhnJ
         zqTA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530EzDu8VOiwTGVURcyhkwIsk0A8BCXkxfNu8DaZ/+9zwNfxyXOS
	LEkik2pWry+709LgD09XCgk=
X-Google-Smtp-Source: ABdhPJyxadvFyYSmTXOwsaIIcbM9g3Cw3abdw9q0NfwEnIOAlvzlSFN5kbLItZwmobTw/WvdWFUiQQ==
X-Received: by 2002:a05:620a:1265:: with SMTP id b5mr72807047qkl.27.1609772703140;
        Mon, 04 Jan 2021 07:05:03 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ad4:434d:: with SMTP id q13ls19265650qvs.8.gmail; Mon, 04
 Jan 2021 07:05:02 -0800 (PST)
X-Received: by 2002:ad4:57ab:: with SMTP id g11mr77266840qvx.38.1609772702751;
        Mon, 04 Jan 2021 07:05:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609772702; cv=none;
        d=google.com; s=arc-20160816;
        b=D5JCMCjOTb11KKF4hk8oB2lXLn36GSSfw85nhmhYrthwp7/sB6l+C8BdDL4zl5send
         oQ4+mRb2wKT85vPpzpfWHYRavPgqB8SoV/otfoUwJvzKMM7NhhSumbYYcerRFb2mIQuV
         ddpFfL3Q791wBihp79J54Lv+vj73jrWgxpO9tp7zEZ1Ll4XX7/1WqivNgzFEtHFv6cuV
         9gu2j0njIFXJTcLSOQFBUxbWG8+/vBf1IOJppZYI3Vgk8cmeCWHvObSHST6oB2aAOHAq
         C7sJu2gG39TaZbjy89X+QkxM8UNZDGIcLe4qTFJLSSVmBdeNBS7NzzfJ5D7J4WaMNpjp
         9ukw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=HJCXspdx3i7XpaVupbHfC3QV0pRcOT5mdGPwTiDlwdE=;
        b=0fHeF6Cb2FvnESuPUUZYm3ZNt9c4UkWr+f4TIglNWvoLapIQHVev7ecXtRncCmhFDW
         z4FfVx5W01LjN9NFEcXnQey35hsqBFmnXOckZDC/DK/vtJNNNW3FOfuRsFAiyowMHKV0
         9JbovJtAzNRUQtF7q61u/bBMj2l1+4bZ/GOhh3NzGdqwtu4Viztr7SOEnpLKAT+LWYKg
         Yss9yqnKXlKP2OvI5FIP0CazTvWhlotOqAK6441BJcTIoVfvqsJCcji5mSP66jTXKayB
         GXm+KnxBZCrtihDywlEP8IaNnEl9UKkAJxOqDzENPndes3DNOPZMDtHYcjRVnbAF4fAl
         64/w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=gSubPZC0;
       spf=pass (google.com: domain of trix@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [63.128.21.124])
        by gmr-mx.google.com with ESMTPS id c198si2850742qkg.2.2021.01.04.07.05.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 04 Jan 2021 07:05:02 -0800 (PST)
Received-SPF: pass (google.com: domain of trix@redhat.com designates 63.128.21.124 as permitted sender) client-ip=63.128.21.124;
Received: from mail-oo1-f71.google.com (mail-oo1-f71.google.com
 [209.85.161.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-16-RBJzAdRHP4-ADCqpL5qpXQ-1; Mon, 04 Jan 2021 10:05:00 -0500
X-MC-Unique: RBJzAdRHP4-ADCqpL5qpXQ-1
Received: by mail-oo1-f71.google.com with SMTP id p66so17917427ooa.17
        for <clang-built-linux@googlegroups.com>; Mon, 04 Jan 2021 07:05:00 -0800 (PST)
X-Received: by 2002:a9d:64c1:: with SMTP id n1mr51855313otl.60.1609772699904;
        Mon, 04 Jan 2021 07:04:59 -0800 (PST)
X-Received: by 2002:a9d:64c1:: with SMTP id n1mr51855294otl.60.1609772699720;
        Mon, 04 Jan 2021 07:04:59 -0800 (PST)
Received: from trix.remote.csb (075-142-250-213.res.spectrum.com. [75.142.250.213])
        by smtp.gmail.com with ESMTPSA id t186sm13461368oif.1.2021.01.04.07.04.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Jan 2021 07:04:59 -0800 (PST)
Subject: Re: [PATCH] rxrpc: fix handling of an unsupported token type in
 rxrpc_read()
To: David Howells <dhowells@redhat.com>
Cc: davem@davemloft.net, kuba@kernel.org, natechancellor@gmail.com,
 ndesaulniers@google.com, linux-afs@lists.infradead.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com
References: <20201229173916.1459499-1-trix@redhat.com>
 <259549.1609764646@warthog.procyon.org.uk>
From: Tom Rix <trix@redhat.com>
Message-ID: <c2cc898d-171a-25da-c565-48f57d407777@redhat.com>
Date: Mon, 4 Jan 2021 07:04:57 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <259549.1609764646@warthog.procyon.org.uk>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: trix@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=gSubPZC0;
       spf=pass (google.com: domain of trix@redhat.com designates
 63.128.21.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
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


On 1/4/21 4:50 AM, David Howells wrote:
> trix@redhat.com wrote:
>
>> -		switch (token->security_index) {
>> -		case RXRPC_SECURITY_RXKAD:
>> ...
>> -		switch (token->security_index) {
>> -		case RXRPC_SECURITY_RXKAD:
> These switches need to be kept.  There's another security type on the way.
> See:
>
> https://git.kernel.org/pub/scm/linux/kernel/git/dhowells/linux-fs.git/log/?h=rxrpc-rxgk
>
> for example.  I'll have a look later.

Yes, looks like more stuff is coming.

Thanks!

Tom

> David
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/c2cc898d-171a-25da-c565-48f57d407777%40redhat.com.
