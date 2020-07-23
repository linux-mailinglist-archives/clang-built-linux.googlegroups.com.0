Return-Path: <clang-built-linux+bncBD26TVH6RINBBZUG4X4AKGQEMFJDWYQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x538.google.com (mail-pg1-x538.google.com [IPv6:2607:f8b0:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id 18DAC22AA3E
	for <lists+clang-built-linux@lfdr.de>; Thu, 23 Jul 2020 09:59:36 +0200 (CEST)
Received: by mail-pg1-x538.google.com with SMTP id z187sf3494162pgd.11
        for <lists+clang-built-linux@lfdr.de>; Thu, 23 Jul 2020 00:59:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595491174; cv=pass;
        d=google.com; s=arc-20160816;
        b=LAwv2hBlkeKudAMMx1em4nsruaJF8Hxr963wNT1vn21sj9xlkQPvdMZ0dwvCpKTdBa
         +aA+CK9CLiG49yu1u0G8NkV4o+BumvUW7lpS+3ykNExTUQeEnnpt4jthNKf8YHffrC0u
         Phwd9y1qudoJX+irRtwJlqGnLFSV/vivT4G1WJ8UY3UhjBAtAbtzTmXIw3EYdT2lVFCq
         Cra7vJYsFFrXg+j70+EkRRja6oYt8OexVwJTpJElyGId/srkXu3kybFE0rVNR/JTa2Gs
         aHvCYcwSl7Y6iA2333OL4ldEzGlKAx5UlWyyyTXiZJgN1zqZIZQtwrsi9oI9PHDMFu5Y
         HMXQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=yTihkbOXNkxhLF0VD8q77JqTD/4Ulf2BvwOEgznKciE=;
        b=DOCQs4DyBlF0zQ+D5jrO8dGKEsGrF8tl/1V46fo3azdvs7ul4As09n6cn7f1SwmeWP
         rHvENhDDjbXwcEmBuJDDM/o9MunDedkK/PATiDEV1OZbah6AvHXDuHuiSbny13885XId
         402iGFDmA/ARVBh80KRmvcWDwCYZ2PqkTKQ+IRt3fFeLcTtoub4cSTwkhIiENEyJ0cST
         K2Er70AQNTWUG5kHtkuX15MtgGE86QT7omev8Uq/k/7GiY4WAvzGFp9h5kM54dzIfqCz
         TM2y+dA/zNKB9sx6UHXFuH/IVSTP+Qw4Kn5Tlp62nraxVIdC4kp9leWDELzZQIEoLH1T
         0RbQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of rong.a.chen@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=rong.a.chen@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:subject:to:cc:references:from
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=yTihkbOXNkxhLF0VD8q77JqTD/4Ulf2BvwOEgznKciE=;
        b=r7xZpdncoCYkvJGKCSt99FAdLw1WlxGOqawFeYhlEFwuqReVVK/NJyN4dGTkZ1TWd/
         Aq09y6vL4vM0znw05vZXcZfZUkZLns49d+/emvEBW3ar5tIKbpxkXDfJwGzPF9nFxioH
         2kpItpovQ8P/1GOlLI+CjWjoP1Q4mXVbeZu4XOgkToEhFr/R7dYiVqVfTm0iTZUdYYlB
         eYwtooKpuOI15g6ZAu5jZU20M+BBrmJPTERskuazp9fArYBMMWTxLHuQvCLTTCL2xvzX
         Ojg4cEYRUiBQp6MeGodwKK5ke5ar+dw7vgXOmq7/cg9Wf/ZWrnjxz/JbQJdXvGKrpddT
         73Iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:subject:to:cc
         :references:from:message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yTihkbOXNkxhLF0VD8q77JqTD/4Ulf2BvwOEgznKciE=;
        b=B3sOkBvPS4SoehJqknpOfTdGxWRdACK1GbzOB/NYXuWVQW79aScBe7YydOBhz0POBZ
         eg10c8BXdrLnrb7H7xMxFGLVhfZKo/Hug9Blzh8E7UtR9DpvvindVf+Pr6TZYBAGXglI
         iexSvwUsRCIAXExbx2WHAl6kRHIk78AqGFx7zqUaEUE/YpxSU+XlyBekJlFcRR7+aI2j
         +qqF94SPyvRBHWX6x88+MgPTchY0XPygeKX5ha7hDtulldLG972dk6SLVforLKLs5S4P
         /sGvcljk6jcFT6S8yuOAMSOtQvWq9B4bITuBaQZ39EQQlMmh88ZZi9EI68RE5BZe6UkT
         lVzQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531qkYiGKBOweBtXIdy6ZK65PZPJQgC4CIQE9Qq1QL0fkCjmMn25
	XFDIQcEvUVRvoxQUqbdI3I0=
X-Google-Smtp-Source: ABdhPJyAtax7vIe1N0lLKg9fJokN+TM1KZL9ug4NUavHbcR7hkoEdHAT4drdyiJMh9aT0MnhKed01g==
X-Received: by 2002:a17:90a:71c3:: with SMTP id m3mr3201235pjs.225.1595491174310;
        Thu, 23 Jul 2020 00:59:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:ea0e:: with SMTP id w14ls1926956pjy.3.canary-gmail;
 Thu, 23 Jul 2020 00:59:34 -0700 (PDT)
X-Received: by 2002:a17:90a:f6d8:: with SMTP id er24mr2873987pjb.203.1595491173954;
        Thu, 23 Jul 2020 00:59:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595491173; cv=none;
        d=google.com; s=arc-20160816;
        b=W5iDCgcPJl9+TPfdZdDr2ozCswJRWFutiUa0xSilH8Ni75ggZgspUmG+39oe8flcCp
         4vEUq6hYq8D4fDdLtHbWR2mZMGzkv5hs5uRNUmd6WlM2n7Ve/WLp9hfW6sFWVsD2ImPx
         OdOXo6Y2aIVA64mADApKTv4BIiNAXL6SCbtxSx7zxMWgNonSEHkDGHSFqlFbzVqhydY/
         ms82zHRvmryMdnKWdKKei2S3PtvgmFroeN4cXFoRCDJo3q9g7U7j71YeOGebhi34b31H
         lNRF7XP8t54JnbK6iFRLr9+AmujwLkhDDgFmXnjVdz++1xIdDIPmUEDKEdA+TqGu0aHL
         mj7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :ironport-sdr:ironport-sdr;
        bh=Nfa4MjDUe/+Y0amQpqa2u429/Y214lJ6GOFx/2sB9+I=;
        b=gXYLPUyCG/IgLFLazpSqh/ZKQd0gF4Cw0cV9i+HrzY5V+5wRv596er3ItzEAcgSDLM
         0P9qRixmcZioN8qZboHAvRCpw9BYkTZe8kwX2N7eJzJ/mZRDBJxhr5fx1XK1eCYlqfoQ
         kOrsDmVhl7QMwWac54+tEs9bbKT9mDxrt1wtFl8qudsE1tstn00Y1tknl/74fH1/KkrK
         36YRHbrkEdCl33FLI5RzvU1g8MCyPZ/AOJMc6m292i4c/bISl9WCCQVitThdaeFv/3aP
         aab2IJVWR2W+yF9Y86hYSWWhctuf6ERlgXxqAZQCM8vGfU2zaURYIL+9MXQyDS+l/tt1
         /gYQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of rong.a.chen@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=rong.a.chen@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga14.intel.com (mga14.intel.com. [192.55.52.115])
        by gmr-mx.google.com with ESMTPS id q85si45842pfq.5.2020.07.23.00.59.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 23 Jul 2020 00:59:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of rong.a.chen@intel.com designates 192.55.52.115 as permitted sender) client-ip=192.55.52.115;
IronPort-SDR: tjz97wKCfC6tUXvk0agHDh7WZAZMhklLSLU5vYqsQstT0VsMyY2uwaayZXuGF2EBfsVHXfoO2e
 x4oyRvh41RKQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9690"; a="149657401"
X-IronPort-AV: E=Sophos;i="5.75,386,1589266800"; 
   d="scan'208";a="149657401"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Jul 2020 00:59:32 -0700
IronPort-SDR: ccwHHkqtqSX6nx1438pQUGTxCYRAor8BeSVLFW0BShvySYREf4FoNDR3HnKshyCxj7oLI7Z09x
 iQNmMR9VyaIQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,386,1589266800"; 
   d="scan'208";a="488746347"
Received: from shao2-debian.sh.intel.com (HELO [10.239.13.3]) ([10.239.13.3])
  by fmsmga005.fm.intel.com with ESMTP; 23 Jul 2020 00:59:30 -0700
Subject: Re: [kbuild-all] Re: Adding branches for testing
To: Lee Jones <lee.jones@linaro.org>
Cc: Nathan Chancellor <natechancellor@gmail.com>,
 kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org,
 clang-built-linux@googlegroups.com
References: <202007180528.vD5KVnHi%lkp@intel.com> <20200722180319.GH3533@dell>
 <20200723035548.GA363815@ubuntu-n2-xlarge-x86> <20200723063243.GJ3533@dell>
 <19e886f4-f4de-2605-d2fe-b6009ce97aa0@intel.com> <20200723064625.GK3533@dell>
From: Rong Chen <rong.a.chen@intel.com>
Message-ID: <440716db-2411-e4a6-6e6b-0f8d679e558b@intel.com>
Date: Thu, 23 Jul 2020 15:58:59 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20200723064625.GK3533@dell>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: rong.a.chen@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of rong.a.chen@intel.com designates 192.55.52.115 as
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



On 7/23/20 2:46 PM, Lee Jones wrote:
> On Thu, 23 Jul 2020, Rong Chen wrote:
>
>>
>> On 7/23/20 2:32 PM, Lee Jones wrote:
>>> On Wed, 22 Jul 2020, Nathan Chancellor wrote:
>>>
>>>> Hi Lee,
>>>>
>>>> On Wed, Jul 22, 2020 at 07:03:19PM +0100, Lee Jones wrote:
>>>>> Good evening,
>>>>>
>>>>> Is it possible to obtain build-test results for successful builds?
>>>>>
>>>>> If so, what is the process for adding branches to your system?
>>>>>
>>>>> Thanks in advance.
>>>>>
>>>>> Kind regards,
>>>>> Lee
>>>>>
>>>> I filed a pull request against their repository and I get email
>>>> notifications whenever I push to a new branch on my repository:
>>>>
>>>> https://github.com/intel/lkp-tests/pull/64
>>> Of course it's on GitHub! :)
>>>
>>> There was me thinking it was secret source.
>>>
>>>> Looks like there are a lot of trees to look over in case you want to
>>>> customize it in some way, I am not sure of any documentation over it
>>>> though:
>>> Docs:
>>>
>>>     https://github.com/intel/lkp-tests
>>>     https://github.com/intel/lkp-tests/wiki
>>>
>>>> https://github.com/intel/lkp-tests/tree/master/repo/linux
>>> You've been a great help Nathan.  Thank you!
>>>
>> Hi Lee, Nathan,
>>
>> We have updated the config file for repo/linux/ljones-mfd: https://github.com/intel/lkp-tests/commit/deff2b285b141ac462b3a7091566ce2ea218c9f0
> I was just doing that.  Thank you, you've saved me some time.
>
> Would you also be kind enough to do the same for 'backlight' please?

Hi Lee,

We have updated it: 
https://github.com/intel/lkp-tests/commit/c0286b0f24d04bf11f83e253df7e237a49858243

Best Regards,
Rong Chen


>
> Or would you like me to do that myself?
>
>> and there is a introduce document for these items:
>> https://github.com/intel/lkp-tests/wiki/Repo-Spec
> Thanks.
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/440716db-2411-e4a6-6e6b-0f8d679e558b%40intel.com.
