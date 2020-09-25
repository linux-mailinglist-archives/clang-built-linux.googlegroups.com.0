Return-Path: <clang-built-linux+bncBD6LJ6GMUUPBBKXSW35QKGQEG45AAQA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53f.google.com (mail-pg1-x53f.google.com [IPv6:2607:f8b0:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id D3DD5278415
	for <lists+clang-built-linux@lfdr.de>; Fri, 25 Sep 2020 11:32:27 +0200 (CEST)
Received: by mail-pg1-x53f.google.com with SMTP id q21sf1771774pgj.4
        for <lists+clang-built-linux@lfdr.de>; Fri, 25 Sep 2020 02:32:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601026346; cv=pass;
        d=google.com; s=arc-20160816;
        b=MWe4X9h3CajeyVHQBDtll3q2dCXkL3B7ce5mcjyg0qZqucaxj4sIW6vMwIiDmR7FmH
         Jkm7hzlibNNTl0brU8y1wWbMuDmNPlm91pDiLzFDFSp/ogOP6Msfz0gcayy4xLTQg9df
         el5TPWD7mo0snxdXOy9R4cve1/HVz/o4fCBzloNVv6XG9UQkaUVBNeFKG8hiD20YfRfd
         VPvCx6dc8WlE78RIqADRYHULfVh6bcfDg1BQfwz9d1pgXsaJLfejj+EuzFBK90qjzLQ0
         LK9vBuBjryQhue/2Y7vj4iH09tjE+IE2sZXRDqHKRwjsY/HpuQ4b8GB/qbRyUPNCywmH
         x2MQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:organization:from
         :references:cc:to:subject:ironport-sdr:ironport-sdr:sender
         :dkim-signature;
        bh=xHVe2UY6UInYPFmBY8nShtYb0ExHVv5AuJXIwTeEUHA=;
        b=lhIOdW/lH9Hudj7LtNOV2OQVfUb60i5krsHoLgyVbEDqmHvE9vZljGrUtqox6GUW4D
         tsHt+8LC4hKCAG5SXZpf5hTSjpOlc4LQEJxFs3rihW6zPmT1/xsuw3zlq33p5Lsn4arB
         ybFP1AWGgvLCJy0/DvUEBR+/2BOf+vql4CrUTF5S5kA9T2azbLSEpCm4EEvO5mEdsxaj
         KGatVYZLDHZugvMoQNEe5CR7u7Hqyw3xBLMcYQ5N+KwWmczopFZ9omT2Wox3c0pQqmb/
         0GpiWMcWrsHskcSK+VA7m1svkyz505SBwiX1AZWFKMISqF9DjucAJmWkKzp7MwXICcRY
         /Csg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of adrian.hunter@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=adrian.hunter@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:subject:to:cc:references:from
         :organization:message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=xHVe2UY6UInYPFmBY8nShtYb0ExHVv5AuJXIwTeEUHA=;
        b=htcfwBPgxFP93p64AX8Uxw8gb50zRepk2RZtO/8AZ4X1ebP2Q7bHz4Sl5DMcVZWXmu
         C+9BzAQRq63FNqEHtaFz0HSogVBEG8RRuvE3HUfPIZLjSyEVIrOLbjo9Eil2r9H69Zf1
         Xwj1Q0hZgV0oDLn0epw/loAxr/meEjdBw2cADDqCK5ylJwsmdvcJuF2GXEMP/OfrUPYx
         sgDFxItdtnvVlhjuBaflcY0PR0IaqWfnwpwZhQ1Xn7VUuN6hqufGYFeOj2h+wfqKmY0K
         VaUBiO2eHJcht0sUfwL0Ou/UoIF90M1P0zuCQzc+tdbNv2/LZ3atopAJftcbmKAWL2pg
         VwRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:subject:to:cc
         :references:from:organization:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xHVe2UY6UInYPFmBY8nShtYb0ExHVv5AuJXIwTeEUHA=;
        b=pX0b2rDnK87LAiItrGcXFGNL1fCbZzCvcJA108lzDt+8Qn4YS8cMs3MJFt3wHsqOb/
         +qTyLRztN1gS+QGI/sOS3hHnXN5Udh5x2vS9AeA9C2kihPN0fTQVxsH4ywNESk6dz6f3
         2xECMdrIvcGw1f36IoEznbukBmZ3aZBlWBErk2SoZtK8Q58aBBjAWguLX9Amj0z45Tma
         IvkOhJozr0s+0C1dAFCZaJs3fIpwp8yKJ9ctVFPKbig+Qo/aygNoghgz0+irNkOwCZe5
         X7BNbddOgLP6lUthmw4BuTDpSkbvbak54SjEbqQ2ZZm4P1qCSYPWEz/rX8NU608Khu18
         8NWw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533e4gQ+44rNWUK9Dec98otcWzYXilsa4np2Ve4BeYnec9ULpFtc
	DvUiqjaeX2+0jW0BsmjnnlI=
X-Google-Smtp-Source: ABdhPJyzG4AF/S4b3yTIK8ZjXrse+klvz0cqLPipVeDk6l8sGo8iKbvdvIWtrkaPFcb9WTS2R26zwQ==
X-Received: by 2002:a17:902:728a:b029:d2:6356:8861 with SMTP id d10-20020a170902728ab02900d263568861mr2868499pll.24.1601026346527;
        Fri, 25 Sep 2020 02:32:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:8201:: with SMTP id x1ls1255555pln.9.gmail; Fri, 25
 Sep 2020 02:32:26 -0700 (PDT)
X-Received: by 2002:a17:902:b682:b029:d2:4ca:281e with SMTP id c2-20020a170902b682b02900d204ca281emr3517048pls.13.1601026346013;
        Fri, 25 Sep 2020 02:32:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601026346; cv=none;
        d=google.com; s=arc-20160816;
        b=YeNkpzA31cY7orm801F9jGaxcCfrROqFudV7pKhLsBc3JJ+UjmKjv98Ddeh4vVupIi
         9S10ika62MC7FXpSaith6AmcS5yP29QKEVSkVB49DcX1VEKsYzCuFtHawdqoP9M8+Hue
         r+mRslUrIOZlSc6dEcA6WxRNOB2VwOX79Z+3sAxaYiok3IxsI5zNFOwlRzXXhd61lvN2
         UeiVZ/GEPaMcL8Y0dYq5GwNl8t7sXt+9wcNQe0dnDpra3TqGKuojYkscBsarZcAIirNc
         wCINuWNsaPNcdABTeRfba9MGgCDLxoeKcEfqrYfZmpt5Hz2PuRT0IWF0BlzBEtDncybw
         Vc3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:organization:from:references:cc:to
         :subject:ironport-sdr:ironport-sdr;
        bh=3FPcBWdm8A60iulJl2miJFMfrTATWLOr5kOWBUj1i30=;
        b=vQnYdnY/12HU6/CmwBBbRRa7eMDZCbxvREVnARxeagBuNjM0UDWtR6PZHZk1U1JDQe
         mQ6AsVIg4xi/q1Otj277M5/8jZ9ZCDwgq4HF5G5OgvhQ94aJkz5UhaJ+4bYILVp+09at
         Asi9cHVeEtiY7baU9oXy9lAcimQqudW2lsP8fnZ0Qti2XmGz22rV8Hc33EvxHa0kL76L
         qH7503zNTUsRK1HPE5DC/QvZzuAYPBIAcepQ9tdxniQrs2ptVq2fsEnY7RtxRnAc+MqL
         difirY6Dmwoin4hMNJ8oHtEFiK3RguA7oWVgUbYd43kDkFKDIwc0YQx9/Pjd0/sRK7/8
         xMWA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of adrian.hunter@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=adrian.hunter@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga01.intel.com (mga01.intel.com. [192.55.52.88])
        by gmr-mx.google.com with ESMTPS id p15si134282plr.5.2020.09.25.02.32.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 25 Sep 2020 02:32:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of adrian.hunter@intel.com designates 192.55.52.88 as permitted sender) client-ip=192.55.52.88;
IronPort-SDR: xqWR3cOXI8sVhFlgF2L3xqJNn5vl/fuCFrLHwUOWyO3ClAJHj+hmsPJXNYy7U0xzz3i/baxD2v
 e71ekAypVV7g==
X-IronPort-AV: E=McAfee;i="6000,8403,9754"; a="179566972"
X-IronPort-AV: E=Sophos;i="5.77,301,1596524400"; 
   d="scan'208";a="179566972"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Sep 2020 02:32:25 -0700
IronPort-SDR: Ctg8seOvVT0giCxwqDVdUONMnNbwYOZSZlr2XSUfes904IuJYr24Jo82tfjeHEudbJEDsy7AzP
 PPByKyr2yGYw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,301,1596524400"; 
   d="scan'208";a="310751878"
Received: from ahunter-desktop.fi.intel.com (HELO [10.237.72.190]) ([10.237.72.190])
  by orsmga006.jf.intel.com with ESMTP; 25 Sep 2020 02:32:20 -0700
Subject: Re: [PATCH v2] mmc: sdhci: Don't enable presets while tuning
To: Raul Rangel <rrangel@chromium.org>
Cc: "Shah, Nehal-bakulchandra" <Nehal-bakulchandra.Shah@amd.com>,
 "Wang, Chris" <chris.wang@amd.com>, Akshu Agrawal <Akshu.Agrawal@amd.com>,
 Jisheng Zhang <jszhang@marvell.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 clang-built-linux@googlegroups.com,
 linux-kernel <linux-kernel@vger.kernel.org>, linux-mmc@vger.kernel.org
References: <20200824122131.v2.1.Id6f3c92fecf4acc60c3b7f57d5f4e4c854ace765@changeid>
 <873b0786-a088-54af-80ad-96d2b041945d@intel.com>
 <CAHQZ30DXUuWKo1n50aX3a86QfLCD4Z3W4CVescRDFcvQrEk3Ww@mail.gmail.com>
From: Adrian Hunter <adrian.hunter@intel.com>
Organization: Intel Finland Oy, Registered Address: PL 281, 00181 Helsinki,
 Business Identity Code: 0357606 - 4, Domiciled in Helsinki
Message-ID: <c4a886d8-8389-2c50-a40b-e2965ef6c393@intel.com>
Date: Fri, 25 Sep 2020 12:31:50 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <CAHQZ30DXUuWKo1n50aX3a86QfLCD4Z3W4CVescRDFcvQrEk3Ww@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: adrian.hunter@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of adrian.hunter@intel.com designates 192.55.52.88 as
 permitted sender) smtp.mailfrom=adrian.hunter@intel.com;       dmarc=pass
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

On 18/09/20 8:57 pm, Raul Rangel wrote:
> On Tue, Sep 1, 2020 at 4:54 AM Adrian Hunter <adrian.hunter@intel.com> wrote:
>>
>> On 24/08/20 9:21 pm, Raul E Rangel wrote:
>>> SDHCI presets are not currently used for eMMC HS/HS200/HS400, but are
>>> used for DDR52. The HS400 retuning sequence is:
>>>
>>>     HS400->DDR52->HS->HS200->Perform Tuning->HS->HS400
>>>
>>> This means that when HS400 tuning happens, we transition through DDR52
>>> for a very brief period. This causes presets to be enabled
>>> unintentionally and stay enabled when transitioning back to HS200 or
>>> HS400.
>>>
>>> This patch prevents enabling presets while tuning is in progress.
>>
>> Preset value should not generally have to depend on tuning, so this
>> seems less than ideal.  Also I am not sure you can say some controllers
>> are not accidentally benefiting from the current situation.
>>
>> What about just letting drivers choose the timing modes that support
>> preset values?  e.g. using the change below, a driver could alter
>> host->preset_value_support as needed
> 
> Sorry for the late reply, I'm just getting back to this. I like the
> patch. I have a few other patches I'm
> going to push up soon. Do you want me to include this in the chain, or
> do you want to push it up?

I'm snowed.  You will have to do it I am afraid.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/c4a886d8-8389-2c50-a40b-e2965ef6c393%40intel.com.
