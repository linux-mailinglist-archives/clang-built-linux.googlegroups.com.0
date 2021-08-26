Return-Path: <clang-built-linux+bncBD26TVH6RINBBMOCTOEQMGQE2ZIWMFA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73e.google.com (mail-qk1-x73e.google.com [IPv6:2607:f8b0:4864:20::73e])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DBAA3F7F4F
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Aug 2021 02:32:50 +0200 (CEST)
Received: by mail-qk1-x73e.google.com with SMTP id s206-20020a3745d70000b02903b9207abc7bsf152757qka.4
        for <lists+clang-built-linux@lfdr.de>; Wed, 25 Aug 2021 17:32:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629937969; cv=pass;
        d=google.com; s=arc-20160816;
        b=csPAkz2tvyFP34IQupqh5GquC65oTjszDbY1h/JuoFrGyH0xgOLLSRd5k5xX3Flg92
         ialVyLvW17s+E9g6Ux2dkhN9ZSJW/nMmXKgOTYiFsPnkf1825Bc15NwX464gzynZKerR
         FZFkjceZ+UhEnZbVS5MwhjfYZcmpGEt2Hk7Rp+SCo5QJJJbNSLJllL7bIfJbC3VQPD65
         Tp5mJiS76ptmrLH7ftZVDrXXazLGV2ucZRVMetC+cOP/6aBAPHnTKowAcPMcNcpaxmLv
         GnVPWpplGaC2GkPPLI59jwyoJgp1+eIVzDXP5XJKJBVJbKEAdspp3MUSX5qC4xoFo4SY
         U+nw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=uY5HGctCAH173CbbSI9mH/cVz4enjLwiSCvq75UbrGQ=;
        b=HBTTvjeVzzfua6QAmwF8C5Ltkd6Gccl41JYXXwC37X+yCwo9V7LQN5psPZ5LRI2+0O
         ylVTyKK9tpAXEpmefXl9A9WPV1eiVIgy2QIBkrpCBzPIpSG5ABnzbk4qynF7+2Bxjbu0
         LLNsK08nqpWl6W30Iry9LHrZhCdCeQxtS5bgbRcsZSN2jkb33vcMb9mbxkuaHcyKLTP6
         YFt4G6fdOq+6XL/TjkNNBHFUq/A5hg6Hx+J7C9jT5kGXu4b0k61BAC3eJ1UUbcSqfKiF
         doW+rFvkKQffOYyYW3CwsxAIWqQjqbSD0Yj0C0sBdGcjE5kl4tVHB2O9dGcxI0X6I5qB
         fnNQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of rong.a.chen@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=rong.a.chen@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=uY5HGctCAH173CbbSI9mH/cVz4enjLwiSCvq75UbrGQ=;
        b=FLNMnmsRwFgZDfM3ooYQxRccOGkdW3RULhVJBhzm6IWhPNEH7sEhwvCzUmOTBdZVbE
         u2lRw6BRQ3MW519xkPGG6VU/gSYSEGGdvymSuxRjxuwiwfX/lQtdh0B1qh0e+g2R1suW
         yet5z+Y08et4sjuNuSPn/wYBlkNLgSob6o/dQramhKriOGF7PGEECFMZk/Eu1hUmahLu
         ZL55le+Wqp58atb4/hl9iV/42Q35TGj50canOR45DYR7ZX5OE6sCbxD0XL1p+kRW+VqW
         ItYVj5M/TXfrlnPFnXUyT7cOERMdgia5Yeq/LMR2FO2NuFrJiLEeyp5em4uSbkfoyRNS
         f7YQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=uY5HGctCAH173CbbSI9mH/cVz4enjLwiSCvq75UbrGQ=;
        b=mL7OcSKHdKkkXsNKwRInj93fFT0Mx6b4HTeqHQh62qLJKW91aHoY4rzZ7HpvlbuXC9
         IN8GRwtHo6DS/gDPrZl73HdVXa/BOg4q+BTWKFlvqJpWLd9bjcj/3Ull8B0ulmwsjqCr
         CAeeOw8K73Z/VrLAD2993LHNpSpV2km4eQP27LUhbPv2YPKwxHV/qNKnCu4PIWp0YUly
         PoSmIU5n+cXnrqENhM4lLDcnwrUnoXtmRFk3BsoFLGvF6huLvVR3khIznYCSW5bhOCnb
         M0VVxkYbYd70WDbYlvQ1LBBea0pq0CWeEWre5cQ+ZF3OyZgBkVzzjyvF0mTNO11djNSu
         Br4g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532l9DNbIVmDQTKOnsTioCvEsdbOEgbotv7B/i6zG5t5fOa7X9WY
	y0+dnCgbjFOwzJ+nR3H6v0M=
X-Google-Smtp-Source: ABdhPJw4On699BJwYEfsMgXZsVoErQpmwnbUIwdRIHI0Xd4Ask4Iot2Dez4DJ3+lKwM5aCNxEX6xng==
X-Received: by 2002:a37:b606:: with SMTP id g6mr1321408qkf.476.1629937969541;
        Wed, 25 Aug 2021 17:32:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:a4c7:: with SMTP id n190ls2215482qke.4.gmail; Wed, 25
 Aug 2021 17:32:49 -0700 (PDT)
X-Received: by 2002:a37:d2c6:: with SMTP id f189mr1241597qkj.275.1629937969065;
        Wed, 25 Aug 2021 17:32:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629937969; cv=none;
        d=google.com; s=arc-20160816;
        b=oOjgG7dd5cJmak8gUV/np++dquVcgEDFlbHfFYmBW+kVAiTYeBG4OVzFrttTSHM3xd
         0H7Xl60ndqZueI3cOzcntFeo2K1ET0i/feGWj6YK1XrnfVambQPf7cdce0DnksHF9CU4
         1OiywRhn24ELay8SXYZyeMLGMmwsM+s7WgGoj3oqwAnKpbVCmV2ERbYyYEEp2Jl/29c/
         PBCLowCdbtEtAe/gvcyWvhitugZaQCrwwRgIC/OIs75IfEvI4PJJEOlNJyKhclXvi6oM
         QVC9iVz1+CIq12YvdLYDNRmENjbF8vY/xfj5QXESNBzjn4QHJ4kaCIH2oCiURiQyUtiI
         Ay8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=FdKsnduR1woYzJzvF7DHkx50q8GmWSLp8d3WKdgl1zU=;
        b=lCk/ewuZv4dE+9/U2NgvQdiOmSMQ8QgUDAYFdSSwaSdFwksOaDX2ljMmitB71ta3cg
         PfvbIMDOsIlzodPkr20XqROk5/lHAKo0nYNPzBgfgsPP1DUjeSk9TTfe86b55Yfgr/0C
         hTWJibdtExmkQMNe0cKXPMujr6+CWTa8JDPZr2DusFIkDNMTszjZOaDPcGAA6j0QA68W
         ViDR39snu0DkTdQ/Abl0K0xbeFsh6Zh5EOm0TFfLkEr7dOeWAtzKplqe/oWPGJk6ElA8
         Ki7ZuJlVHgEmCQh3rJ9GOlLOH6/+EbtPbW4P0Oo+VzbdOk392td5C0ZQGuGgnCOTi0r+
         fcFA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of rong.a.chen@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=rong.a.chen@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga01.intel.com (mga01.intel.com. [192.55.52.88])
        by gmr-mx.google.com with ESMTPS id n2si94483qkg.5.2021.08.25.17.32.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Aug 2021 17:32:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of rong.a.chen@intel.com designates 192.55.52.88 as permitted sender) client-ip=192.55.52.88;
X-IronPort-AV: E=McAfee;i="6200,9189,10087"; a="239829591"
X-IronPort-AV: E=Sophos;i="5.84,352,1620716400"; 
   d="scan'208";a="239829591"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Aug 2021 17:32:46 -0700
X-IronPort-AV: E=Sophos;i="5.84,352,1620716400"; 
   d="scan'208";a="527544344"
Received: from shao2-debian.sh.intel.com (HELO [10.239.13.11]) ([10.239.13.11])
  by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Aug 2021 17:32:44 -0700
Subject: Re: [kbuild-all] Re: [smfrench-smb3-kernel:pr/65 143/143]
 fs/ksmbd/smb2pdu.c:5640:6: warning: variable 'user_ns' is used uninitialized
 whenever 'if' condition is true
To: Christian Brauner <christian.brauner@ubuntu.com>,
 kernel test robot <lkp@intel.com>
Cc: clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
 linux-kernel@vger.kernel.org, Namjae Jeon <namjae.jeon@samsung.com>,
 Steve French <stfrench@microsoft.com>
References: <202108251550.SXFHPzdJ-lkp@intel.com>
 <20210825082037.iuy5gndi4n2uyep7@wittgenstein>
From: Rong Chen <rong.a.chen@intel.com>
Message-ID: <14249f7e-4ca3-c980-38ef-826c3381cb04@intel.com>
Date: Thu, 26 Aug 2021 08:32:42 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210825082037.iuy5gndi4n2uyep7@wittgenstein>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: rong.a.chen@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of rong.a.chen@intel.com designates 192.55.52.88 as
 permitted sender) smtp.mailfrom=rong.a.chen@intel.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=intel.com
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



On 8/25/21 4:20 PM, Christian Brauner wrote:
> On Wed, Aug 25, 2021 at 03:14:01PM +0800, kernel test robot wrote:
>> tree:   git://github.com/smfrench/smb3-kernel.git pr/65
>> head:   4b499755e1024f97e75411920a404b357af6e153
>> commit: 4b499755e1024f97e75411920a404b357af6e153 [143/143] ksmbd: fix lookup on idmapped mounts
>> config: hexagon-randconfig-r041-20210824 (attached as .config)
>> compiler: clang version 14.0.0 (https://github.com/llvm/llvm-project d26000e4cc2bc65e207a84fa26cb6e374d60aa12)
>> reproduce (this is a W=1 build):
>>          wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>>          chmod +x ~/bin/make.cross
>>          # https://github.com/smfrench/smb3-kernel/commit/4b499755e1024f97e75411920a404b357af6e153
>>          git remote add smfrench-smb3-kernel git://github.com/smfrench/smb3-kernel.git
>>          git fetch --no-tags smfrench-smb3-kernel pr/65
>>          git checkout 4b499755e1024f97e75411920a404b357af6e153
>>          # save the attached .config to linux build tree
>>          COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=hexagon
>>
>> If you fix the issue, kindly add following tag as appropriate
>> Reported-by: kernel test robot <lkp@intel.com>
> Thanks for the report but this is outdated and requires a patch that
> sits in David Sterba's for-next tree. So this is safe to ignore.
> Feels like this probably should only go to the authors, kbuild-all and
> clang-built-linux lists similar to what the intel built bot does.
> Otherwise this generates a lot of unneeded noise. Just my 2 cents.
>
> Christian

Hi Christian,

Thanks for the advice, we'll send the reports to the tree's owner (Steve 
French) next time.

Best Regards,
Rong Chen

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/14249f7e-4ca3-c980-38ef-826c3381cb04%40intel.com.
