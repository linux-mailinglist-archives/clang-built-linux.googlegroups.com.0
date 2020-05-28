Return-Path: <clang-built-linux+bncBAABBCHXXX3AKGQEXWPLDLA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83e.google.com (mail-qt1-x83e.google.com [IPv6:2607:f8b0:4864:20::83e])
	by mail.lfdr.de (Postfix) with ESMTPS id 7305D1E5B2B
	for <lists+clang-built-linux@lfdr.de>; Thu, 28 May 2020 10:51:21 +0200 (CEST)
Received: by mail-qt1-x83e.google.com with SMTP id 19sf28770666qtp.8
        for <lists+clang-built-linux@lfdr.de>; Thu, 28 May 2020 01:51:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590655880; cv=pass;
        d=google.com; s=arc-20160816;
        b=MeVLIL1DRdJmtDm40qL7I3ZzmLKDaC3/IxrFOn3XUBcGE3wNmWGoJMEr8RdBmsJ69v
         V4MH0CnIj1+/CwuOXuttSNbc6Sw3D6CJsBg4LL2vKD4JTFNPzHGCswmToT2e4ppI61Bn
         MGC17yzlhSF4YgGEae/z/T1If+JREv/xqZW1yWD1ri2xutZsVQkkXXdHa1pWwXhcBpT/
         3HTow4eOEAH0gfDMr79E18q8afXSTotJot57Q3t7nEnAyW7VXnQXYASKP46QQ61TajNc
         A162ShlxIDbjRk9j+vajSzJlQdPNv5kGxDyUujF/AKb7lOqHgfKHMb1sm+KMZ5jagplm
         4Jpg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=Obj0Np0rtl+N4QNg4Py8/qO19JzqzbCMfg6bRogLiyg=;
        b=ZywpNlCj0Q6nAkRP6upVDEbkIO3OGsekjqxeM9z6BJ164lJK9ebKDoGiFi3R1g8GGI
         JZnwUMEraDS94diyzwQEgf7t8RyNcEHb6LDgju/Rs3aGdD2vbpzaRap0L4YVS/p57QX8
         X0ue8d8SIlK6F3lSmDkbUs+sBiAIsQ+0ljok3W5TKA0cifHWCQVROK09GaEw05ozKWoF
         KkPp/6A62Y3xcQbeTDzw6iCysSACiwTzCe76JgZ9NsF5CfKi1srMSrBBLWyVKZH9qEVb
         ZpZ27CUoViscKYfkVOYU+0cTds+7wFjj96lKp/Y7CnZZRRRWPnx+T2cszX11MATysqQU
         zbhg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of eswara.kota@linux.intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=eswara.kota@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:subject:to:cc:references:from
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Obj0Np0rtl+N4QNg4Py8/qO19JzqzbCMfg6bRogLiyg=;
        b=F62Zk4n94Av+D3qD5keyhmrkMZ5CcHwu5DEEmldJKbNQY0+0J423Ah4Qq2Cdj101pS
         Q4D/22UVH7ogvGHLif0Mxy4D4Gq6jJr1sd20LAYQjQq6uGCD1GrYaLxme2+HWdJmfXP4
         L8oaCeXGZvAf18q8LFRCzeLm3hzrI7soCJcKwQPBoxPijQiQGj8YYsQveJyqy1RjJAUO
         GQTRclEoWX+MMGhirf55W8nazpj7laQE/BUoysn1N72cXWrHFHiURBY+rj0/OXQMQLH/
         6zjNBlNNQNQXMa75R/tCo/Gxr8EBUgr1F/W+YVuEvx5S655jXd775Zk2LULhE6AK0rOB
         hw+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:subject:to:cc
         :references:from:message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Obj0Np0rtl+N4QNg4Py8/qO19JzqzbCMfg6bRogLiyg=;
        b=okBovpIlGc/g8G663mwIcflZuntfjh1qBV0f7TmgB2psDX1A4APb0sLIGP8rmEvKmU
         tw+gSjFf8QmaL4GjjrIIyni7EksqiJCsElHFhPsXJ8AM0ti10OgC3tvBwFiXnr0M6jsk
         t6GMR84AQjpz0ykEutHS3mB1uPz+D5UTTOZdTDrSeJ6jgBVK8NPHsZmApTMLo4IRXwNv
         lfhCFQdwKo5AsnXH332JpmwCwCJTzT+TBXn7yRlwGVNpTf53uRhsWGD13s0RFaE0NEyL
         URbCcssVoUg2VFF0CcPUWHmy/2CE2Y5WVFx5w6vnE9FpQALwalqJIVVJYYI9LbYIiGrb
         w4uQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530yVHmh++QHgzGTim/kDXnoLbCd3sBWpV1bhvvv6qIYcL7O6yYX
	RYzjMGuPDWGWMllRCHamvns=
X-Google-Smtp-Source: ABdhPJzpKcT4Fcg674wPWmXVGNi3D4EE2/Eo5mkvF1cCYOkSMWB3bpx6hvstKelzsc7oxJiKVnNTAQ==
X-Received: by 2002:ac8:768c:: with SMTP id g12mr1972080qtr.51.1590655880486;
        Thu, 28 May 2020 01:51:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:f8a:: with SMTP id b10ls716009qkn.9.gmail; Thu, 28
 May 2020 01:51:20 -0700 (PDT)
X-Received: by 2002:a37:9487:: with SMTP id w129mr1563434qkd.21.1590655879792;
        Thu, 28 May 2020 01:51:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590655879; cv=none;
        d=google.com; s=arc-20160816;
        b=P0qfscS84m/x6way2+SOQDT1D/CMxIPSJ3eKLkCPzESC8ltjtHHYUAdqCXASQOMAPB
         2Xlt+MwEeqH+rhyWiz/uUT1Z+wHTthchi6eiua2lI+zFHxectg5GvfwYJlfcr9y0p+Wy
         V2b6BTcNfF4AcnYA+Cec+xzH94yCAEzSupvoDk1qO6DvxemPc3hhqMPQt4xwWBSkgJ8H
         7WCxcKI4qWK5jTEZLkpWJB6iQJtpTtRt8iU0JL6Hzj/SDd1XV2r9w951YC9/GIqWPo16
         +2UvagimpIHwaTRpQxmr26YPGmPZf+p614ksmdKHsZBZhtt/BuLLOuX2ewS25ou/J2vY
         qhlg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :ironport-sdr:ironport-sdr;
        bh=pAMvh7Ql3to63uczydJut2a9SV23DAJn1JxT2cv6+0I=;
        b=MLJwomZXSYGCd/jrMGUdYAqO+yWjXLdRYS4zmLeHezBuArYMT9Lo+0Ngxu3pAsDehM
         WDiN7KWK4opgpLYVt1Let/WRlHUbA2Y5/IMXchlSOG0f0IaPfKDWnPXDV/W5HHrFyvnp
         TmhYtxI+kKBDuLSvc9xTnj5g5y2V8dx14d4uQHJHdMiw2wEFRTEU4soAgGhXRcDzwjLY
         TSnhYTmVeSIQP9JggnXQM0zFTHaQ5nF+1F7Bv4p0tkTBp2oNKHleWNMm0UYrEyRiKxLC
         eXyOr1ROCi2LnRSwdqS9Qev081sc2Q0Xu/G/FNKvZt1YPNaIa8iIagXNqbYBZNgv3BdK
         9uDg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of eswara.kota@linux.intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=eswara.kota@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga12.intel.com (mga12.intel.com. [192.55.52.136])
        by gmr-mx.google.com with ESMTPS id v73si353646qka.5.2020.05.28.01.51.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 May 2020 01:51:19 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of eswara.kota@linux.intel.com designates 192.55.52.136 as permitted sender) client-ip=192.55.52.136;
IronPort-SDR: My8HWFGDJ/lUnWKoBtl94DPpRzJ4goCiN7Ymb1hFk69N+u3c/mqQI2pvBptKit/LKvel6rpAAJ
 K0kfhGhphcAA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 May 2020 01:51:18 -0700
IronPort-SDR: vS7gHEZZyLCDe4Sgm3Yp3klFoGoW/MTi4toI8f5gPnWowX71A1x2JiLRWmCDDTc1EkMnHHnR3C
 dRfXlhaD3EZw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,444,1583222400"; 
   d="scan'208";a="267149507"
Received: from linux.intel.com ([10.54.29.200])
  by orsmga003.jf.intel.com with ESMTP; 28 May 2020 01:51:18 -0700
Received: from [10.255.136.206] (ekotax-mobl.gar.corp.intel.com [10.255.136.206])
	by linux.intel.com (Postfix) with ESMTP id 5C3345805EF;
	Thu, 28 May 2020 01:51:16 -0700 (PDT)
Subject: Re: [PATCH] phy: intel: fix enum type mismatch warning
To: Nathan Chancellor <natechancellor@gmail.com>,
 Arnd Bergmann <arnd@arndb.de>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
References: <20200527134518.908624-1-arnd@arndb.de>
 <20200527164035.GA1073507@ubuntu-s3-xlarge-x86>
From: Dilip Kota <eswara.kota@linux.intel.com>
Message-ID: <f9ac4d6b-95a2-3ac3-8aeb-d9a73801b4b5@linux.intel.com>
Date: Thu, 28 May 2020 16:51:15 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200527164035.GA1073507@ubuntu-s3-xlarge-x86>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: eswara.kota@linux.intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of eswara.kota@linux.intel.com
 designates 192.55.52.136 as permitted sender) smtp.mailfrom=eswara.kota@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
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


On 5/28/2020 12:40 AM, Nathan Chancellor wrote:
> On Wed, May 27, 2020 at 03:45:06PM +0200, Arnd Bergmann wrote:
>> clang points out that a local variable is initialized with
>> an enum value of the wrong type:
>>
>> drivers/phy/intel/phy-intel-combo.c:202:34: error: implicit conversion from enumeration type 'enum intel_phy_mode' to different enumeration type 'enum intel_combo_mode' [-Werror,-Wenum-conversion]
>>          enum intel_combo_mode cb_mode = PHY_PCIE_MODE;
>>                                ~~~~~~~   ^~~~~~~~~~~~~
>>
>>  From reading the code, it seems that this was not only the
>> wrong type, but not even supposed to be a code path that can
>> happen in practice.
>>
>> Change the code to have no default phy mode but instead return an
>> error for invalid input.
>>
>> Fixes: ac0a95a3ea78 ("phy: intel: Add driver support for ComboPhy")
>> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
>> ---
>>   drivers/phy/intel/phy-intel-combo.c | 4 +++-
>>   1 file changed, 3 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/phy/intel/phy-intel-combo.c b/drivers/phy/intel/phy-intel-combo.c
>> index c2a35be4cdfb..04f7b0d08742 100644
>> --- a/drivers/phy/intel/phy-intel-combo.c
>> +++ b/drivers/phy/intel/phy-intel-combo.c
>> @@ -199,7 +199,7 @@ static int intel_cbphy_pcie_dis_pad_refclk(struct intel_cbphy_iphy *iphy)
>>   
>>   static int intel_cbphy_set_mode(struct intel_combo_phy *cbphy)
>>   {
>> -	enum intel_combo_mode cb_mode = PHY_PCIE_MODE;
>> +	enum intel_combo_mode cb_mode;
>>   	enum aggregated_mode aggr = cbphy->aggr_mode;
>>   	struct device *dev = cbphy->dev;
>>   	enum intel_phy_mode mode;
>> @@ -224,6 +224,8 @@ static int intel_cbphy_set_mode(struct intel_combo_phy *cbphy)
>>   
>>   		cb_mode = SATA0_SATA1_MODE;
>>   		break;
>> +	default:
>> +		return -EINVAL;
>>   	}
>>   
>>   	ret = regmap_write(cbphy->hsiocfg, REG_COMBO_MODE(cbphy->bid), cb_mode);
>> -- 
>> 2.26.2
>>
> I sent an almost identical patch:
>
> https://lore.kernel.org/lkml/20200523035043.3305846-1-natechancellor@gmail.com/
>
> I left out the default case since clang warns when a switch on an enum
> does not handle all the values (compile time scream) versus a run time
> scream like yours.
>
> I don't have a preference for either so:
>
> Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
Thanks for fixing it. I wrongly initiated it with PHY_PCIE_MODE instead 
of PCIE0_PCIE1_MODE to fix the compiler warnings. (On real time use 
case, cb_mode gets initialized with one of the switch case values, it 
never hits the default case, so I didn't add the default case.)

This patch looks good to fix the warnings.
Reviewed-by: Dilip Kota <eswara.kota@linux.intel.com>

Regards,
Dilip

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/f9ac4d6b-95a2-3ac3-8aeb-d9a73801b4b5%40linux.intel.com.
