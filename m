Return-Path: <clang-built-linux+bncBCMIVD5UVABRBLWP4D5AKGQEV3SORYY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd39.google.com (mail-io1-xd39.google.com [IPv6:2607:f8b0:4864:20::d39])
	by mail.lfdr.de (Postfix) with ESMTPS id E0B8226243B
	for <lists+clang-built-linux@lfdr.de>; Wed,  9 Sep 2020 02:54:07 +0200 (CEST)
Received: by mail-io1-xd39.google.com with SMTP id k133sf907524iof.16
        for <lists+clang-built-linux@lfdr.de>; Tue, 08 Sep 2020 17:54:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599612847; cv=pass;
        d=google.com; s=arc-20160816;
        b=uM5mBshvyxqDl5ka1JflhR/ojv60kLR/YbFa55+t/FrAoL+Mr0RU3f9mFjOIUZbsQO
         I6iHj79xnDE2h/cHJzyK5ZKiFepf57VshwQy6CGJTv1iiQRMvAaKKZQuME8g17rO1aaG
         disdg6Sa4sj/9iKJSLQL/+iAvkxklcjjkoh2LkW4xxRgnD8jnGAYaCdqME/SHjS1h7m4
         v+xDU11wBd3j2pA9bx+rzcYY7OcxysHRlxtdEAzUustN0D6L1qiHgdmPn+JEhD8Y2VIb
         qIakJBHtRqMteKHa4ldwabTLZvFqCc29S0xI5M0T9pntqoUNn4+llTIGdzWKgCw9xUL9
         NSGw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=4dh2Vd0TA9x8534k3WBPuks1krpx8LqUfJqL8L1+2So=;
        b=CXR8KC9mHD8ODloHxeSBdY/RGgRI2HgxLNr7bfVQAT/u/nNHBqG2R2bQpsOKLK1MII
         w5AUWFH7Ug2UImUbPirF7jgytTSYMqYKnVEZ5XJ9IFmxYlwxmOonzwgMmAIi+6NrnHxr
         2FMjSng1MfreQTucE4gKH5/VoMLz/I1QYtqLC8O7aebQ2b0DzpaIcB1ByI+8rR0isy4B
         xGZecIJsNweoIKPgNR67pRia7woduGmni/+eM71jsM8MSJJQlgpqYE4to7p7qmkJuMUC
         A/11tvr0oXon0IKEJN6U/mmqvwI65lrdpW438Bf5uN1MoeSOvxskUpwXz8FetCQ6z1rT
         wSmg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of guohanjun@huawei.com designates 45.249.212.190 as permitted sender) smtp.mailfrom=guohanjun@huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4dh2Vd0TA9x8534k3WBPuks1krpx8LqUfJqL8L1+2So=;
        b=Mx1stDLcyuhMyRnBRKXxTQtHx+1bNmu2KeEwxKyLGnepYcSsV7NiJ6Edh6rf8zEmh1
         8fxRLWvJwC+0X31tN+Wz4793z1SadCDuTfpwhjKim+dAGUq/9/6vIqpkI9vaJjGFg+md
         cpRnQ6FBvqNrFoKhEaGxp3cyeo5IsYWdK6xse79RTLTE7nJYIpuERHn4fYm25b4J8XoS
         XX+bPFyZdHdDYm301Sg8w/nGwOIGak6fbI2RY+YSnA80/W+ClZ2G2aYethqiTu4zUWnm
         dA+Kc0vEqoB1IOD/TuKGoLDBzQktrZ4y7yrsqX5uu8I0LWTtlReNHHGRARq0ha7dcCcP
         CqUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=4dh2Vd0TA9x8534k3WBPuks1krpx8LqUfJqL8L1+2So=;
        b=gBfrj3P5pQNu/tLwXu8DqqRcfhms0KWnZJmGEwylbOIG0VKP49feqZMkE8DYI+NOfZ
         97zvpGeV6KlAk9JtHLAxvGebAalFzx8uMaDFktBiVxdxYcRXn4+iD64S98Y4SF9f7OZq
         y4KdRt2qHAM/cex5u4wxrr87Rl1BXQ9ATeYBMyv7HTP6agl++6fFzTOtH8B/J380/gWz
         Dc74ZWx68j3jEBfZ24bmDuh0CDtRDpg1FNtlRZ/K98iuZA/8uFfdky3PEWTnsSUG5F2c
         KvsBNSZRTzaEB66gy1UViqUQTTd51nvL4l9wkkqeuExsFfJ+CLzk9tUt8+rJH8vv597M
         ZwQA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5331UhS9sWFljAavefHwF/dqEtetEmvQ9mwO5Y/yZVAoz7GdIr8U
	zFHuhW1jUmMKw2IYWECxRaM=
X-Google-Smtp-Source: ABdhPJxWjCaszJ/kSVQfnRFWx60ixZyWc30Fu9e2tfOddVtvaAsLSoJC9bG5xcBuBSwExxa1UP4i6A==
X-Received: by 2002:a92:db43:: with SMTP id w3mr1358432ilq.184.1599612846904;
        Tue, 08 Sep 2020 17:54:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:290a:: with SMTP id l10ls288362ilg.6.gmail; Tue, 08 Sep
 2020 17:54:06 -0700 (PDT)
X-Received: by 2002:a92:b748:: with SMTP id c8mr1462939ilm.30.1599612846489;
        Tue, 08 Sep 2020 17:54:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599612846; cv=none;
        d=google.com; s=arc-20160816;
        b=CohL3kMj3GBOfy/UmB3ITVcitZ0CMhXgB6TDLkpSlmxujJwqn+gWgwjcMDB5qbsSXx
         7HTvk3wwqqp3a1Y6U3+tkwesLJHhD4fRUklH2sYDwZhT3hx0SJxGERPZAh3EtkV/sv0u
         EX4nmnhWfnyaRG5WMezjlgePXlCjIMDjkoXQrjAEzIOHL7wXLA73h1WLSliBlPdrX5ja
         REoEsBW6JKlu/84HBYi7F/noEx7KBTj9KDZGeLYLb2iAuVuI6/tzueJhMEHrI5rid5Yi
         qtkAjapTLD0Wppb83mljF++A1+PvaF3TBvjOKdSAXZeMXin/buqaVdsREWwzwtiKopL5
         k/7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=tSmfEb8fikVWoQGWY3kELdCm9BLEcxu62RvruQi9FUk=;
        b=hgMH9tCn7p9D8atYcqpeb5WmNRsYMWf5My/QPGsVGvtR4bmEEX2aCvoInh9OVArsX5
         Kpx6EvH6c/FO0/R1Jsu0lgPs8NpFKpFFHP9wsgCPpbU7no7ptl7K5P0PZoVwQHSE3Ujg
         +g2idKU7dAtHcr60Sx0vQy1PouFv4an8b+yUnLoHzoIBOgCIblWGrHoI2UlZFbCmaG27
         6m/fxny/7Di++9iocy+QqhL1wB51fnvPNAOW59qs4QvQK3LfxuXTjQ0pQtttr6tKMQKS
         YmQ5lASByNDwRm/jy9uhdCAkKaEEVQoLbF3l3W9xiraZnjzEsZr/0AuKV7SVKZ0S+sqG
         /vZQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of guohanjun@huawei.com designates 45.249.212.190 as permitted sender) smtp.mailfrom=guohanjun@huawei.com
Received: from huawei.com (szxga04-in.huawei.com. [45.249.212.190])
        by gmr-mx.google.com with ESMTPS id d16si147746ill.1.2020.09.08.17.54.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 08 Sep 2020 17:54:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of guohanjun@huawei.com designates 45.249.212.190 as permitted sender) client-ip=45.249.212.190;
Received: from DGGEMS401-HUB.china.huawei.com (unknown [172.30.72.60])
	by Forcepoint Email with ESMTP id 812B345815EFE1327BCC;
	Wed,  9 Sep 2020 08:54:02 +0800 (CST)
Received: from [127.0.0.1] (10.174.179.33) by DGGEMS401-HUB.china.huawei.com
 (10.3.19.201) with Microsoft SMTP Server id 14.3.487.0; Wed, 9 Sep 2020
 08:54:01 +0800
Subject: Re: [PATCH 5/5] ACPI / APD: Head file including cleanups
To: kernel test robot <lkp@intel.com>, "Rafael J. Wysocki" <rjw@rjwysocki.net>
CC: <kbuild-all@lists.01.org>, <clang-built-linux@googlegroups.com>,
	<linux-acpi@vger.kernel.org>, Ken Xue <Ken.Xue@amd.com>
References: <1599468981-17301-6-git-send-email-guohanjun@huawei.com>
 <202009072027.mQVQ8Jey%lkp@intel.com>
From: Hanjun Guo <guohanjun@huawei.com>
Message-ID: <68c45cf3-6d61-3a82-3c24-77ab86283049@huawei.com>
Date: Wed, 9 Sep 2020 08:54:00 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <202009072027.mQVQ8Jey%lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-GB
X-Originating-IP: [10.174.179.33]
X-CFilter-Loop: Reflected
X-Original-Sender: guohanjun@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of guohanjun@huawei.com designates 45.249.212.190 as
 permitted sender) smtp.mailfrom=guohanjun@huawei.com
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

On 2020/9/7 21:07, kernel test robot wrote:
> Hi Hanjun,
> 
> I love your patch! Perhaps something to improve:
> 
> [auto build test WARNING on pm/linux-next]
> [also build test WARNING on v5.9-rc4 next-20200903]
> [If your patch is applied to the wrong git tree, kindly drop us a note.
> And when submitting patch, we suggest to use '--base' as documented in
> https://git-scm.com/docs/git-format-patch]
> 
> url:    https://github.com/0day-ci/linux/commits/Hanjun-Guo/Cleanups-for-ACPI-APD-driver/20200907-170548
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git linux-next
> config: x86_64-randconfig-r021-20200907 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project ab68517e6b7e51b84c4b0e813a30258ec1ce5da5)
> reproduce (this is a W=1 build):
>          wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>          chmod +x ~/bin/make.cross
>          # install x86_64 cross compiling tool for clang build
>          # apt-get install binutils-x86-64-linux-gnu
>          # save the attached .config to linux build tree
>          COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
>>> drivers/acpi/acpi_apd.c:250:13: warning: no previous prototype for function 'acpi_apd_init' [-Wmissing-prototypes]
>     void __init acpi_apd_init(void)
>                 ^
>     drivers/acpi/acpi_apd.c:250:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
>     void __init acpi_apd_init(void)
>     ^
>     static
>     1 warning generated.

I think this was fixed in v2.

Thanks for the report!

Hanjun

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/68c45cf3-6d61-3a82-3c24-77ab86283049%40huawei.com.
