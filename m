Return-Path: <clang-built-linux+bncBDY3NC743AGBBRUO6D4QKGQEDJ65RCI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3a.google.com (mail-io1-xd3a.google.com [IPv6:2607:f8b0:4864:20::d3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B60A248C06
	for <lists+clang-built-linux@lfdr.de>; Tue, 18 Aug 2020 18:52:24 +0200 (CEST)
Received: by mail-io1-xd3a.google.com with SMTP id 18sf12337904ioo.14
        for <lists+clang-built-linux@lfdr.de>; Tue, 18 Aug 2020 09:52:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597769543; cv=pass;
        d=google.com; s=arc-20160816;
        b=lAkE+lpnzSnwiGXjVpLZmSFrusB44yWKMymExgQf8qtGax3MSUIgEJdf2wJEkxalMi
         /SihmV3LSbzsYrGDBpeYdIsHwb7WoruYTzSpT++ZJTRcTQ29uG80sHQ/l+FtQszV6o0L
         208gqg1jxqL1rr57+qVRDSX1Elv4GRDaHxZAS276Wn+LNnZxsq1j9wuqbFcIoFCpNYXj
         7FFJThYIlfpItYtI0ZqoUiXR4xYQ0uVPw9zSEJiaRr00fNV/4hmtZR2KYbTjtzMSRNXU
         R7iK4mb4EmWKC0uktYdX7JvCncAFqcG2IdPXv9YVBFG8n1AMkTdyeLxzwXwzsFQ+RSG2
         48cw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:to:from:subject:message-id:sender:dkim-signature;
        bh=HJVTufgoPVtbvcPVV57imbF5cIlht239GBbLJB8UQfg=;
        b=sldhtxHZ2GYk5weZ6EPuzq8WyVnV4Zyq+38VgVTATnAzv3co9xLXBd2lFCZ44USSV/
         SBF+uoDJswVg75ChYnaJSlDgpH7PO4C7+JvcAnNMCREAKtxSoVBilORGiPnvm/gcQqml
         kCMmP7Eu14UnjLjjx1FU+OkAUuNJsk4HY1TzhefKep+KeCDFVZL0s/6YogiDv4oaZKRi
         4hN2hTiIdXXPqgcqFEHZH84m56LBeXS/jNCxBhAGqTTLSBn0S+PM4cOWdSK/BqcJwn2r
         HZh03ASbClAP7vXDHlWfvHwfyJfK976dYO0HwmtwkcdUIsf+rSBPoCE7q6UKoHCwzNVI
         wy2A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.209 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=HJVTufgoPVtbvcPVV57imbF5cIlht239GBbLJB8UQfg=;
        b=lQrHySP0INa3qKo2pPQO+Gji8FxQXgzCLSfKJs/TKHbSqIVlyojCzXqPT4ehKto1wT
         ZsSvVhB5lL6NMq+/8o/xO5a2OdUZC4ecFqpzI2GxDx+yvs0fsqxva+V8AkgMFpj6yOr3
         sqV+UDix71ftUTIqFrJoUXI2SmkstZYAeuHsn3sDR3AISCoY+8veDjOp08/56EYsLtjP
         lkPvhWe5FpjEgPBkqLKIzG2mA07B0ZyX5ELAY/lHW0fzut6NR7G7RPLOYQk2WI3h9YgV
         N5EZaremqEHh9Vo7MykbewpS3KPOqpFq9nlPrdhZU99h8wHV9oSES6OgaH3G5SWC4a1i
         MkEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HJVTufgoPVtbvcPVV57imbF5cIlht239GBbLJB8UQfg=;
        b=aDeyr85q/eGGRk0jigPZsLI25/ocoYE/2YD3epupplP4qYtTzdTUQuHIFRDHThDa5j
         SP6wV+Emg5VIdp7grinl1Xdn9ufPVUrHDJre+JY2JCmn6MedV51x7kA0SFi7w4iIbOPD
         qk4wJalzJlJTJ3Wx8fTcVyKvZVwOK3jeQTrhXfSeS7gRHF86avurEdlDrTIjFjTZcMey
         c8ie0cdTDUmJsO+Uuz2QBeB6mMVDVNsfa2w4rTCI2O4om23TF0Y5IbSX5Xxvzs3FEyAu
         4PHI9fxtOw4unzhph/BZkiBkRpziPHdpiyJzegnBL0Wa6AddXPTDBTrLj8XTSiU6jQEL
         CR5g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533VMveDAniGPef0TWw1xLe8lGykzFohBhGc/VwXhAZoxecMlroL
	Rq0cQDx1kNWPm/fDD/pbGps=
X-Google-Smtp-Source: ABdhPJxApr0TR160JqD/+ugd07D8zFgZb/5JfeoNrnLV8XeUuPZksjLoml5llej7LPwz49iB/WhmXw==
X-Received: by 2002:a02:2a81:: with SMTP id w123mr19666656jaw.107.1597769543103;
        Tue, 18 Aug 2020 09:52:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:1516:: with SMTP id b22ls2724218jat.0.gmail; Tue,
 18 Aug 2020 09:52:22 -0700 (PDT)
X-Received: by 2002:a05:6638:1313:: with SMTP id r19mr20060459jad.60.1597769542748;
        Tue, 18 Aug 2020 09:52:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597769542; cv=none;
        d=google.com; s=arc-20160816;
        b=lssYPbOQ448ZqGpCD6q/B0Vk5YMl0Vk1mv8p4DhRzfp6z/rHWDZP0LWzj5KLkTHqs+
         nfBMlcx1j+hXq650rBpe4f52CoGKRDRIkRfrDEYCYqkcAwPI8VeZ8+7rAb480q+xwXAn
         OuNoAozeZT6XpNx+ueRqn68aNfWsX3ahh4vkh8Kj5o0hCFgy/qcNQyE5oLSYFOxWA9v4
         nwYa/aByIVjxbpkqVST2NavpKMHUDdjqLcVXCEPmXqSh3LFy+Vw7TCuyPLWBmlJU8iq7
         0DFUJ2sJZRxeY/4DcaLTPsM+NJJvrgLr4XQQSQlZGv4epMUlZYsFLBmx0vE33uL8J/7R
         G26A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:to:from:subject:message-id;
        bh=YfWnrTuIvkcVmwEQ06hC36ZQJvhNQFSwjFcprCLcvyc=;
        b=eLGXv+lEeUsKRtPj15uEkcSAukGDUZiLapT49NoQVZc51Adp6xTPDJPHjuZqQuyP6l
         +CtD30GDyiTex+JZZAPE46rOsRsUThHppbDwp2/my24RosHRklFA2w+yIDgZSCp2tMbd
         JrwnqmRimvGJnilSvg8t8NoxEh0ViGrZn65yD1tZOEcYOGe0e/vGYdhS3whIK9O7D05O
         aoxCZqGQ4c089/7YT+avviQ8avyF9eVXRV2N3fy2OVx0dkJtMrwIiA3XL6Q+JIguMF9t
         yo6pyRcNz7gI/DlHa+e8Dmh/nMn3zcReetqsoH6CFJxtMkwqkWMYAZmSFK5owTqMsoKM
         9f0w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.209 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0209.hostedemail.com. [216.40.44.209])
        by gmr-mx.google.com with ESMTPS id s189si1288516ios.3.2020.08.18.09.52.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Aug 2020 09:52:22 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.209 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.209;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay05.hostedemail.com (Postfix) with ESMTP id 2A3AF18029210;
	Tue, 18 Aug 2020 16:52:22 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 50,0,0,,d41d8cd98f00b204,joe@perches.com,,RULES_HIT:41:355:379:421:599:800:967:973:988:989:1260:1277:1311:1313:1314:1345:1359:1381:1437:1515:1516:1518:1534:1540:1593:1594:1711:1714:1730:1747:1777:1792:2393:2525:2553:2560:2563:2682:2685:2828:2859:2895:2933:2937:2939:2942:2945:2947:2951:2954:3022:3138:3139:3140:3141:3142:3351:3622:3865:3866:3867:3870:3871:3873:3934:3936:3938:3941:3944:3947:3950:3953:3956:3959:4321:5007:8957:9025:10004:10400:10848:11232:11658:11914:12043:12048:12297:12438:12555:12740:12760:12895:12986:13069:13311:13357:13439:13845:14181:14659:14721:21080:21451:21627:21811:30054:30070:30090:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:1,LUA_SUMMARY:none
X-HE-Tag: join51_5b0c31127020
X-Filterd-Recvd-Size: 1694
Received: from XPS-9350.home (unknown [47.151.133.149])
	(Authenticated sender: joe@perches.com)
	by omf18.hostedemail.com (Postfix) with ESMTPA;
	Tue, 18 Aug 2020 16:52:21 +0000 (UTC)
Message-ID: <15980e07c369b2cbfc7b06f58f3a521a5495bdf6.camel@perches.com>
Subject: Re: [PATCH] clang-format: Fix: Maximum line length is now 100
From: Joe Perches <joe@perches.com>
To: Alex Dewar <alex.dewar90@gmail.com>, Miguel Ojeda
	 <miguel.ojeda.sandonis@gmail.com>, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com
Date: Tue, 18 Aug 2020 09:52:20 -0700
In-Reply-To: <20200818162431.696423-1-alex.dewar90@gmail.com>
References: <20200818162431.696423-1-alex.dewar90@gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.36.4-0ubuntu1
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.209 is neither permitted nor denied by best guess
 record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
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

On Tue, 2020-08-18 at 17:24 +0100, Alex Dewar wrote:
> Since commit bdc48fa11e46 ("checkpatch/coding-style: deprecate 80-column
> warning") the kernel style is now for lines to be a maximum of 100 rather
> than 80 columns. Update .clang-format accordingly.
[]
> diff --git a/.clang-format b/.clang-format
[]
> @@ -52,7 +52,7 @@ BreakConstructorInitializersBeforeComma: false
>  #BreakConstructorInitializers: BeforeComma # Unknown to clang-format-4.0
>  BreakAfterJavaFieldAnnotations: false
>  BreakStringLiterals: false
> -ColumnLimit: 80
> +ColumnLimit: 100

No thank you.

100 is used for exceptional line length, not
for reformatting all lines up to 100 chars.

See the previous discussion about the same patch
submitted earlier in June:

https://lore.kernel.org/lkml/20200610125147.2782142-1-christian.brauner@ubuntu.com/


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/15980e07c369b2cbfc7b06f58f3a521a5495bdf6.camel%40perches.com.
