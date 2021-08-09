Return-Path: <clang-built-linux+bncBDRPZAGFRAFBB55DY2EAMGQEVRQASHA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x139.google.com (mail-lf1-x139.google.com [IPv6:2a00:1450:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id 0113E3E4DF6
	for <lists+clang-built-linux@lfdr.de>; Mon,  9 Aug 2021 22:37:12 +0200 (CEST)
Received: by mail-lf1-x139.google.com with SMTP id w18-20020ac25d520000b02903c5ff81b281sf497388lfd.3
        for <lists+clang-built-linux@lfdr.de>; Mon, 09 Aug 2021 13:37:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628541431; cv=pass;
        d=google.com; s=arc-20160816;
        b=bb0TXCmlPxiOO+jXsSNghCiMBjylRdP3Rc8/SVOkuWHVce2AXdyyCzfDE3CT+F8LWH
         f3VcM4mQWyfQJglPRmiCP+B6FMItke4IEjf4+C28Ej3ACXbCNHQv2/AEl8rvk3oJrlIc
         aGoGz2HAp77RaPijdUne5fh+aC/upBEIdQ/U3SenWScOC9LWRFt7Nyw1SPltrN1DDDoF
         uUJL9EeG2C5uOl/M8UnN7gAyKtY65O1QbvW0JVJlMhlSDaeEjywXaBhnoO+5er5lzht7
         sZRmd7gC6a6KfQyPIeEqPluujjv6GT6Ff0Ye0VprQop/RAYctl1oG21h3StS1aqFcbxY
         TtXg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:to:subject
         :sender:dkim-signature:dkim-signature;
        bh=gPj0exS6IvV1gIeNs8trKwdYPYMSYcNT6jTwDfsemvM=;
        b=yAWFdO/y4YszbnlSfdu4QJfvV5WMhaf9Tpg2T8j5ZnQEd2hpBjJuul4rB8Zv2985Ju
         LRW3r8S7bqk3D7+lxSSFT9/u8sKhUEw+bYc4M+qEGtN1u/tLZmCkopwMs0KbTO7zzoXT
         iPKX0DOYSYOV+sLfZsYLnVH/pQDRjEg2tEXH9/yg0WRndpwITq8ieFYqjZPapscQVgxJ
         vUXslwxnBMf1cykExHq9EK3F9AvWE+GaFoy3yDwsXw9ELobMw7i/FEN6+/mS2qmUtydS
         SqdEDdlt2LPvOssNr14JE2SLjy34njSxgHL3HkgDXnyz4OnrJKQlDsX7kBsXynj5OdtV
         NByw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ptKlvk19;
       spf=pass (google.com: domain of paskripkin@gmail.com designates 2a00:1450:4864:20::22e as permitted sender) smtp.mailfrom=paskripkin@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=gPj0exS6IvV1gIeNs8trKwdYPYMSYcNT6jTwDfsemvM=;
        b=GHXL5L2qyIJQCr2P9IkjBuJv76om8QK0pU/7gsNeM3DlF74hq3+77JvCbmN3DL+3+i
         /MyJE5qwrIlpWZoC+l2vHb9igYy/hsioWBkDN+ND0X1d2wOuzJGxP5IKwNFdqZsXFeA0
         52rTKDvjwMYXBiItJcQADLbhbyts7215mBavSzX4SbyF5XB5pBjwNV/WOCnMp7GlLOCi
         H9wFjB6sgKEM1Jw9Ybv/PpUCvOgkFrfwDNpe5fBa03eDJVTvdW3K8h6NM8mX9ZwObDOl
         2B2kB6pZNiGrDPKLZ21IyfdcK6IihZHwVhm3Nq3SdHfKE+GiFw1Q/1X6EN7eao5cHhWN
         HMuQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=gPj0exS6IvV1gIeNs8trKwdYPYMSYcNT6jTwDfsemvM=;
        b=cvPg2RZsK7enVrO295aKNj68FX4PKVYaJdC4IsW7QaS4xmq6QtMS2dBIXaynoZeGWZ
         RQdnAq4wQy/dSrJFt3Ghvo2o7nLWYHOT8x95v2nOcoj8r1N5QvNrS7KuBAbcnHm1BCo6
         7ZKXvh97s22XiulecCGtlTfubv/WKVe24Wt4MwKKlgYd72DDwJiT38yqcPbPl43A6r8G
         3jGZ8A+tQX2lY72Serxw8hU9Ps6eFm8AGxlhqP4fL19rlpO5KgFv2M/UO4EKRG1Ucfv4
         AD8U8jzWUUfd5+Nv/viZ8X708KanY4kfO9wnzxPKeLDll4r2xbQGNuoX+KrYPfZgpAlQ
         ZXUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=gPj0exS6IvV1gIeNs8trKwdYPYMSYcNT6jTwDfsemvM=;
        b=RbLtv3tdGS/kRX063/8Xm+gLSiQTmdSZJbE7rf+gAHemm3hp296oSnRyoA3PmBhrci
         8rNIcstPrJQI4/oJE521KV54aurHCOb7qhq7VWiFvRj0viNfk4OP5sEQfhVpgLh6dOCu
         VqhZHEFQkd9Lqbn8zK2TFOv8Q/nY8E22+t00RGv73Iw1UXeTUoiGkwIM7mbm4ClIMLRu
         RgIKKFxEsG7F58zbD5FLNhu/fSnHRCPc9haTA159yZq8QKHnUyB4+HvX7KHZGq3lAmia
         BVaZI1drjJg1eJjLL5PTU7/dCez26n0y1tiDcGXab9RXUqQTcB5pSleKaObZ+lZtlbT3
         lHDQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532YyDjaLl4112thKYvo4oy9KKDSqCAX9UZnDCa5v3iS0P1LkJzZ
	YnizWKscadXczyx9WQG+Pdc=
X-Google-Smtp-Source: ABdhPJzq+AmHoNTeMeUy9rbQXPRquWd+Kd0QFNlvkVrc2i/GJeRQK26f8WfyPgwrQ4fAX2N755u4iA==
X-Received: by 2002:a2e:84ce:: with SMTP id q14mr10953614ljh.190.1628541431547;
        Mon, 09 Aug 2021 13:37:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:4146:: with SMTP id c6ls11909732lfi.2.gmail; Mon, 09 Aug
 2021 13:37:10 -0700 (PDT)
X-Received: by 2002:a05:6512:131f:: with SMTP id x31mr18699316lfu.620.1628541430537;
        Mon, 09 Aug 2021 13:37:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628541430; cv=none;
        d=google.com; s=arc-20160816;
        b=YnxM4wlhet99y0MZjVw0qoaCgO4fOtHgQOWMXN5XMExuXwN88FPg6x/BpLRMILjRgy
         pqCFLSSDw2RP+h0dUoxx1nD4L/ZPDepYyPan9NsAvESBM5b4Vuruu5aeXE7xjJBF052U
         E3+4l7+hFVO7Cm2G+EcDnSLHhdOs5Nt9y2xaOKJJRS53SGWOanln0b+bzk9fxHo8OEOz
         rpcbW9/X0iknAGwF5UzfmCpl5L8xwLfaWdOLF/qFSqER7LfBLQd19uWTd8s97nSJsPUs
         kCRa9xTzrP0J/rTbwPtytFw+Hzmf6GUVx2xBXskiXFIn/ROOD7JqJd8QH7B8W/aHqlPz
         DutA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:to:subject
         :dkim-signature;
        bh=vpR69HXsk/s5UOiJBvZ32SD+9AorlJL97AWRHAd5f4w=;
        b=DL0CSURGOPD3fTKGCbVh5XeUmRm2MtpSnJkFCBBAYb1Unrk6exOZB79bjnOINhq8UK
         PxaLbyZoLJFVoExCroecBttNjGpDf5KDThjzgI+ZSo8p1RF1EoZjOcAr+3yEBt6F3QfJ
         uiEOvRQNdQHCA+mWXbyyqUAs0qwBjVFMVjNMBlPxdG3TbvXTf2O530HXHO2TlitPj47y
         PPLgyRsgq59QprkZUOL3EOlSBd1ueHpv62esSY/WDoynVQbjUVo6M+w/lrsCdyK3SqT4
         8fw9/bszmd4p4FbbvbZQAjwS3YysNOVU0axHKPD4rl9+9fedOSfAfSmD5fbLeXR36+wb
         NAsA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ptKlvk19;
       spf=pass (google.com: domain of paskripkin@gmail.com designates 2a00:1450:4864:20::22e as permitted sender) smtp.mailfrom=paskripkin@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com. [2a00:1450:4864:20::22e])
        by gmr-mx.google.com with ESMTPS id u7si895257ljg.3.2021.08.09.13.37.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Aug 2021 13:37:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of paskripkin@gmail.com designates 2a00:1450:4864:20::22e as permitted sender) client-ip=2a00:1450:4864:20::22e;
Received: by mail-lj1-x22e.google.com with SMTP id l4so10849779ljq.4
        for <clang-built-linux@googlegroups.com>; Mon, 09 Aug 2021 13:37:10 -0700 (PDT)
X-Received: by 2002:a2e:5005:: with SMTP id e5mr4003093ljb.253.1628541430190;
        Mon, 09 Aug 2021 13:37:10 -0700 (PDT)
Received: from [192.168.1.11] ([46.235.67.232])
        by smtp.gmail.com with ESMTPSA id bp17sm745656lfb.176.2021.08.09.13.37.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Aug 2021 13:37:09 -0700 (PDT)
Subject: Re: drivers/net/usb/pegasus.c:461:2: warning: Value stored to 'ret'
 is never read [clang-analyzer-deadcode.DeadStores]
To: kernel test robot <rong.a.chen@intel.com>,
 clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
 linux-kernel@vger.kernel.org
References: <202108080902.ZhmxmJZr-lkp@intel.com>
 <28df02cc-8b34-3d4e-2ed6-30af0ff44a42@intel.com>
 <94550f41-1204-8996-ef32-c25429481ceb@gmail.com> <YRF1t5kx6hTrv5LC@carbon>
From: Pavel Skripkin <paskripkin@gmail.com>
Message-ID: <538445a9-3f96-5099-fb83-517e756a93fa@gmail.com>
Date: Mon, 9 Aug 2021 23:37:08 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <YRF1t5kx6hTrv5LC@carbon>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: paskripkin@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=ptKlvk19;       spf=pass
 (google.com: domain of paskripkin@gmail.com designates 2a00:1450:4864:20::22e
 as permitted sender) smtp.mailfrom=paskripkin@gmail.com;       dmarc=pass
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

On 8/9/21 9:36 PM, Petko Manolov wrote:
> On 21-08-09 14:06:11, Pavel Skripkin wrote:
>> On 8/9/21 1:37 PM, kernel test robot wrote:
>> > 
>> > tree:
>> > https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
>> > head:   85a90500f9a1717c4e142ce92e6c1cb1a339ec78
>> > commit: 8a160e2e9aeb8318159b48701ad8a6e22274372d net: usb: pegasus:
>> > Check the return value of get_geristers() and friends;
>> > date:   4 days ago
>> > :::::: branch date: 8 hours ago
>> > :::::: commit date: 4 days ago
>> > config: x86_64-randconfig-c001-20210808 (attached as .config)
>> > compiler: clang version 14.0.0 (https://github.com/llvm/llvm-project
>> > 41a6b50c25961addc04438b567ee1f4ef9e40f98)
>> > reproduce (this is a W=1 build):
>> >           wget
>> > https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross
>> > -O ~/bin/make.cross
>> >           chmod +x ~/bin/make.cross
>> >           # install x86_64 cross compiling tool for clang build
>> >           # apt-get install binutils-x86-64-linux-gnu
>> >           #
>> > https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=8a160e2e9aeb8318159b48701ad8a6e22274372d
>> >           git remote add linus
>> > https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
>> >           git fetch --no-tags linus master
>> >           git checkout 8a160e2e9aeb8318159b48701ad8a6e22274372d
>> >           # save the attached .config to linux build tree
>> >           COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross
>> > ARCH=x86_64 clang-analyzer
>> > If you fix the issue, kindly add following tag as appropriate
>> > Reported-by: kernel test robot <lkp@intel.com>
>> 
>> Hi, @Petko!
>> 
>> For you not to scan all these warnings:
>> 
>> > > > drivers/net/usb/pegasus.c:461:2: warning: Value stored to 'ret' is never read [clang-analyzer-deadcode.DeadStores]
>> >              ret = set_registers(pegasus, EthCtrl0, 3, data);
>> >              ^     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>> >      drivers/net/usb/pegasus.c:461:2: note: Value stored to 'ret' is
>> > never read
>> >              ret = set_registers(pegasus, EthCtrl0, 3, data);
>> >              ^     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>> 
>> This is the real bug, I think. Can be fixed like this:
>> 
>> diff --git a/drivers/net/usb/pegasus.c b/drivers/net/usb/pegasus.c
>> index 22353bab76c8..f2b8891c7b36 100644
>> --- a/drivers/net/usb/pegasus.c
>> +++ b/drivers/net/usb/pegasus.c
>> @@ -459,6 +459,8 @@ static int enable_net_traffic(struct net_device *dev,
>> struct usb_device *usb)
>> 
>>  	memcpy(pegasus->eth_regs, data, sizeof(data));
>>  	ret = set_registers(pegasus, EthCtrl0, 3, data);
>> +	if (ret < 0)
>> +		goto fail;
>> 
>>  	if (usb_dev_id[pegasus->dev_index].vendor == VENDOR_LINKSYS ||
>>  	    usb_dev_id[pegasus->dev_index].vendor == VENDOR_LINKSYS2 ||
>> 
>> 
>> It was caused by our last refactoring: enable_net_traffic() now returns 0 on
>> success and this ret is never checked.
> 
> I'd rather remove the 'ret = ' part and leave set_registers() alone.  If this
> particular write operation fail, it doesn't mean the adapter won't work at all.
> Perhaps it won't be the most optimal mode, but it will work.  There are some
> legal checks after set_registers() that also make sense to pass.  So the patch i
> suggest looks like:
> 
> 
> diff --git a/drivers/net/usb/pegasus.c b/drivers/net/usb/pegasus.c
> index 652e9fcf0b77..49cfc720d78f 100644
> --- a/drivers/net/usb/pegasus.c
> +++ b/drivers/net/usb/pegasus.c
> @@ -433,7 +433,7 @@ static int enable_net_traffic(struct net_device *dev, struct usb_device *usb)
>          data[2] = loopback ? 0x09 : 0x01;
> 
>          memcpy(pegasus->eth_regs, data, sizeof(data));
> -       ret = set_registers(pegasus, EthCtrl0, 3, data);
> +       set_registers(pegasus, EthCtrl0, 3, data);
> 
>          if (usb_dev_id[pegasus->dev_index].vendor == VENDOR_LINKSYS ||
>              usb_dev_id[pegasus->dev_index].vendor == VENDOR_LINKSYS2 ||
> 

It works. I am not aware of device specifics, so I decided to handle the 
error instead of ignoring.

Will you take care of posting this patch, or I can do it with 
Suggested-by tag?



With regards,
Pavel Skripkin

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/538445a9-3f96-5099-fb83-517e756a93fa%40gmail.com.
