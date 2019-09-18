Return-Path: <clang-built-linux+bncBDAJTOEJWQDRBL5PRLWAKGQECPVWO4I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93a.google.com (mail-ua1-x93a.google.com [IPv6:2607:f8b0:4864:20::93a])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F5E6B6E48
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Sep 2019 22:46:40 +0200 (CEST)
Received: by mail-ua1-x93a.google.com with SMTP id t16sf379212uae.21
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Sep 2019 13:46:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568839599; cv=pass;
        d=google.com; s=arc-20160816;
        b=UX5CN+TB2nU0TukUD+c+z+HEWNmlly3qEBY4Y1LnejPPyPbHAKSW3vghoNMQy/M7rS
         mCTPTp5A1V1DXEDn3c1zO2HBXilynFNaXdqspCCh/GQjr7uOOUmlflowtY81NjThDslh
         Qq2YL1DYqRunBBZ1e9TmaeUJ8NsqIQlTygkWtH0hClyfgX6txG0G/349ele/iP3o83wb
         Z7Zahv2hoOZKne9uBvvRda8nU3RL3uHU0UaGFhW7ypNO/rVHdd2PFPHFbqpzUSjM4wHY
         sWnVVqtvZF6VhV2g3A2XLPCyEQ7eoYKs4jhFIu3nQz1a4hVqjEN0I1rEqgetXuxI257J
         wyrQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=/LybESKxlsWtcvfJCjI0FEviQXxObTJR4TE1uBZdJ+g=;
        b=PDJQJxAwGebx9Rp97xgdsTfLwEh5iC3p4AOn130PLW7JQT+pWN4YFT7B81eLbxqwBq
         JA4mH6l4JY2abaD/l2tI6xIDyZ/PLn3bUSYi8ee/AHyDTVy52/geNfE3oOtR9L2k00Ss
         6LoCFLDXUz9Rlc1EqEPVIijJ6goj42u2Ovzk6RqM9nak7rK9fm82tv3PQ9nfm92kP6i6
         FBdmPv66k3FBhJZfbWCoKMC5kuf9oG7QI+X9CE6Zj0Q9pZ4HAveCItGHlPinwErU4pJH
         TbCOAsS4IM+dJAeqeRZ57KVY4EFY0UWQ1ZlmQ0vS/Z4k97hNOb5+pqPkROQEcK7ujjwW
         s7xg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@pensando.io header.s=google header.b="vy/XpBtV";
       spf=pass (google.com: domain of snelson@pensando.io designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=snelson@pensando.io
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/LybESKxlsWtcvfJCjI0FEviQXxObTJR4TE1uBZdJ+g=;
        b=UUDc1AJ5UtpGO5E2wJdzb3eXXf//p3Z+iF2aG2Q+razdmDfbbJToO122PhHxa6cKsT
         jxoMnCUeVgxQDDF/JxeqEVW6L+32IfhHx09v/6OSztZkjoMFc5CqP+9+pXNSFkayG8Z4
         cz8nxobYpdS6i8A1fYTysE4AXz6d/DMzAjWomfb8aAO4NxqFoJoeMsvaLNOeOud5WnVp
         1RYrhTGhQlCKmz+stUwzsqB0b7Pn3iRWzj8xvpNfQltnVfXF389e+XvY3KCnHDop7Oo1
         fKgu3rlSWODuHfoNMBCm0zYksb1vPZx1LhQTYpti9nSL5JA7toTZi6iWSEe+ghgkDhme
         mlxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=/LybESKxlsWtcvfJCjI0FEviQXxObTJR4TE1uBZdJ+g=;
        b=IfN4tU/bE6icSetFJLkRED8ip/8AKJLiwdrY7PDAzbX+JxgBP9nXFHFB86Grk8bTmP
         pkVcecjHTEOCENIeOS9pIqPQwysOydkLpATEnt9vN8dAv21NdbLgqxJIdQWpvNzcy6T8
         E6/seisQXJRRxseR5eNz0EJqHF/dUqFrlGviUNGrDUaUjWnOJDhcTSDAmHXCz6pZI1Jf
         m/Vi9a/JSrRb3Xq0T/3gcmCiVm3VuW6G4coc5N/B23Ivb7BmeG1ctR3WX5tN3dXv5RKc
         oH5SCeURFJtmci6SONv9jlDnjEytgZ47yrE5fJo7315YtQ9lwTHMjIdEiwiXgfIUFGiv
         3Y2g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVMr8Lh6Y36f7ikEWXO1/pJYkhomAUObEYwaBReZoFJ3O6NvvTX
	9m9LFuu/KEC7jtI3AC2v7LU=
X-Google-Smtp-Source: APXvYqxboMt0B4e6/6GVTkLtUj//W0Q83nAQXuJTz9ugHIFiIftKdAWw1dtmAquyxxuRkITDJ0PBug==
X-Received: by 2002:a67:fd63:: with SMTP id h3mr3255980vsa.102.1568839599092;
        Wed, 18 Sep 2019 13:46:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:302c:: with SMTP id v12ls138323vsa.7.gmail; Wed, 18
 Sep 2019 13:46:38 -0700 (PDT)
X-Received: by 2002:a67:ec4c:: with SMTP id z12mr3636290vso.28.1568839598839;
        Wed, 18 Sep 2019 13:46:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568839598; cv=none;
        d=google.com; s=arc-20160816;
        b=A9gwHqqVdFahoEGEdblHur2+AhK+AsiTq6vqD8rxGFwaUXeUafD843sbgSxPZ0IoMA
         CODSCiz02EoQRe/Xg0KBlLCcdryGKJld2E0GHxMIpZMqpjgk126ANTbQOxEej6dQIb66
         LZPhc4fQfGXs4pZGZ+0TwVH4PXTbeUUqYO96dJVSM+O2O0GsuL9hHtMpD7QCCm1S3Lqd
         PEJx2B3fKIXG1XLVkcHagxXOXBOCp/Ddy9lDXdVBr+I29C7rDdICTVtxgyiCRurXGF75
         d6k5XZ9+giirE7CNkN11XmhQjvmEomedxWAu8LTEaeeTuxUgfNrfZj8EHeHiNMDvxEx6
         mzOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=WcFSQhyzT5+TpPTmaqxANm1q7R7Sdxzaz+lcQw14DuE=;
        b=zdxSbz8WJoywiApiHut3jRV0BkE2gvVi6G3yjhrlule2b+RKykz0CUKoMK2zd4flPH
         8WYbEy0VtYQhMbodQz0F7ezkZ8NvTonebG7pMKVRGN+Y8pJpmRmVz/hnsmoWprPk/ofD
         xC0gx4eCFL6bvrvnRfHUTXdqdXxCpWwB6Ykl9vdAbqamn5rLQRnXm+JednwPv6ZNNNYi
         Iqb8WHJPRnoBDncFqHZojgnU/886Obf9MzxdkJe4LASggsCuEHMtm+jcuswU5faSJkP/
         nGIwiMnFA35s+qxllp8pXacnQTcG0xaMCPH/qPZebj0/VjBhJ1aBv02ahYw7RRdTTPRk
         oY+w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pensando.io header.s=google header.b="vy/XpBtV";
       spf=pass (google.com: domain of snelson@pensando.io designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=snelson@pensando.io
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id e68si885090vke.0.2019.09.18.13.46.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Sep 2019 13:46:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of snelson@pensando.io designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Received: by mail-pf1-x444.google.com with SMTP id q5so727216pfg.13
        for <clang-built-linux@googlegroups.com>; Wed, 18 Sep 2019 13:46:38 -0700 (PDT)
X-Received: by 2002:a62:3893:: with SMTP id f141mr6099018pfa.221.1568839597633;
        Wed, 18 Sep 2019 13:46:37 -0700 (PDT)
Received: from Shannons-MacBook-Pro.local ([12.1.37.26])
        by smtp.gmail.com with ESMTPSA id z23sm5605135pgi.78.2019.09.18.13.46.35
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Sep 2019 13:46:36 -0700 (PDT)
Subject: Re: [PATCH] ionic: remove useless return code
To: Arnd Bergmann <arnd@arndb.de>, Pensando Drivers <drivers@pensando.io>,
 "David S. Miller" <davem@davemloft.net>
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com
References: <20190918195745.2158829-1-arnd@arndb.de>
From: Shannon Nelson <snelson@pensando.io>
Message-ID: <6cdb1e21-44d9-bba9-1931-78f7109bff2b@pensando.io>
Date: Wed, 18 Sep 2019 13:46:34 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20190918195745.2158829-1-arnd@arndb.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: snelson@pensando.io
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@pensando.io header.s=google header.b="vy/XpBtV";       spf=pass
 (google.com: domain of snelson@pensando.io designates 2607:f8b0:4864:20::444
 as permitted sender) smtp.mailfrom=snelson@pensando.io
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

On 9/18/19 12:57 PM, Arnd Bergmann wrote:
> The debugfs function was apparently changed from returning an error code
> to a void return, but the return code left in place, causing a warning
> from clang:
>
> drivers/net/ethernet/pensando/ionic/ionic_debugfs.c:60:37: error: expression result unused [-Werror,-Wunused-value]
>                              ionic, &identity_fops) ? 0 : -EOPNOTSUPP;
>                                                           ^~~~~~~~~~~
>
> Fixes: fbfb8031533c ("ionic: Add hardware init and device commands")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>   drivers/net/ethernet/pensando/ionic/ionic_debugfs.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/net/ethernet/pensando/ionic/ionic_debugfs.c b/drivers/net/ethernet/pensando/ionic/ionic_debugfs.c
> index 7afc4a365b75..bc03cecf80cc 100644
> --- a/drivers/net/ethernet/pensando/ionic/ionic_debugfs.c
> +++ b/drivers/net/ethernet/pensando/ionic/ionic_debugfs.c
> @@ -57,7 +57,7 @@ DEFINE_SHOW_ATTRIBUTE(identity);
>   void ionic_debugfs_add_ident(struct ionic *ionic)
>   {
>   	debugfs_create_file("identity", 0400, ionic->dentry,
> -			    ionic, &identity_fops) ? 0 : -EOPNOTSUPP;
> +			    ionic, &identity_fops);
>   }
>   
>   void ionic_debugfs_add_sizes(struct ionic *ionic)

This has just recently been addressed by Nathan Chancellor 
<natechancellor@gmail.com>

Either way,

Acked-by: Shannon Nelson <snelson@pensando.io>

sln

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/6cdb1e21-44d9-bba9-1931-78f7109bff2b%40pensando.io.
