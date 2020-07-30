Return-Path: <clang-built-linux+bncBD26TVH6RINBBPGBRD4QKGQE7CRY7ZY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53d.google.com (mail-pg1-x53d.google.com [IPv6:2607:f8b0:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id 58E26232972
	for <lists+clang-built-linux@lfdr.de>; Thu, 30 Jul 2020 03:22:06 +0200 (CEST)
Received: by mail-pg1-x53d.google.com with SMTP id n32sf19672035pgb.22
        for <lists+clang-built-linux@lfdr.de>; Wed, 29 Jul 2020 18:22:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596072124; cv=pass;
        d=google.com; s=arc-20160816;
        b=Z6RYpEmr31jxkWyEcQcoDy/yuCeSjzZOldaDOhyKQveRyi1SD1Xwck4ILISTGc7eES
         gyUDXyE643Abt/vnKnaQZZtl1EDTHc6AVoATGD2c3aqhmkPfV6167OuiVFcTpgyjEN11
         6lDOHNmntwOxKnKVZqzvtMh1Jro8ZH+xvNXj3zjfrob74Gd4EW+jgKhmTuJQPP267ZFl
         aTBVgnPBMXGMGPXIruF5V3dvlHe638LmyFKMghOwHI/cLv0d6isngMlzASipmghl23oF
         +kBmnsJ4WSpvRP7cb2IdxbYuH857GT3nfgnNtSoMFBLRLF0hagFqDZvs6HrYNXKABZoQ
         80Cw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language
         :content-transfer-encoding:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:ironport-sdr:ironport-sdr
         :sender:dkim-signature;
        bh=/cUdHbxeZLj5W1EVpeBDbHeEMqBERIwasMdJPWl8TYI=;
        b=jrPoduyJivbcFW+Wl04R0c1Zoy0lGpb70XC+FnnaSIUhvkPgDjRcZHWtx8+gpU8EtT
         2SKTGwQ9Nj7yaIyEcCYmgkzDpfaG1uQBZdHUIP24cA8QhJvUvXjccghEzGioM7fxAGBR
         vZbaRcCgWweqtFrYZWf9QWPxJcDj7wms2t9HorPMpDdLFEbVfZX44YBzlBl8kmPQB1AK
         40fIspwtuxFjxXCChxMQDQgTmI+9KEXL5YZ7ui9o2egYVgCKNStlLJaErJ3AyOaIRM5X
         Z6Y1o1AhkCjpLmPmkH5E+SqKPbhjGAfxB+vBBRB96FXH5d/1hLegE0TmiKY9DaMIUYRw
         DVUg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of rong.a.chen@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=rong.a.chen@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:subject:to:cc:references:from
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-transfer-encoding:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/cUdHbxeZLj5W1EVpeBDbHeEMqBERIwasMdJPWl8TYI=;
        b=YaEYd0z0irtlvJo2IhfH3CwaBWRBH1bjht+NGQVYA8z9hhnid2gwgmhg0+vun9j2BM
         BJCX2i4db8/9Q6vUP2EdAStk7h8HBQkUoVsLVfo+dLJE4GyXknWGbZiSEtTOWlt8igL8
         OLL3U1dRaKf6y2rwMWCdLermDhyPXwjji5UeqlxrinfMZaxjeOJF1Zya9aJAFSsyQKAC
         Dr4BHRgB6fJrji5WuTEsLoDqCcgapJo1bYVwWJ7lRYGkyQR6lRZvVz6/a1TkcxsmTYGq
         T9qiqa/K5mjc/NI5mBoL7+tgq23vm/kdcgzQzSkagtMX7ScNEiS+/tyGtKr2n42vS5h5
         plOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:subject:to:cc
         :references:from:message-id:date:user-agent:mime-version:in-reply-to
         :content-transfer-encoding:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/cUdHbxeZLj5W1EVpeBDbHeEMqBERIwasMdJPWl8TYI=;
        b=L4sMP9FUaaQkGJ/hRYQywluI6mvOSyRGLKTlMrptVHpgXCe411XoZgc1hZ55JVLzWg
         j798qgDCBNx8aOjeFvpC0+5k0f7zdk5SG6AC5O6nkX+mDZqRqDb7WUhjeTnj1yxjjkgK
         JqQ0MYt7kNhurM8JK+ALaoYeZk1KB19+MXyJGa1OnrDgm2iGxai9tphFCWnKGIuz+qKC
         SldSIxPFufXTvLryWwK2INEnsdJPDmzP5ugUe3VTU3Af/cvlI2TyAmNm68NxhuByBqq7
         tAvt7haG7mh0AvoSqVHYkkiKKoVGDefl26/3G6oEphM8M5XLWpaE8spnh0mbW4iT0i89
         MFcw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530PZEu3JwwtFCA1X1QqY2uWWJ++N0tXqomkX8hSDvfeYGNDBirT
	oFOM+7kCuBUNlboMb1idw5g=
X-Google-Smtp-Source: ABdhPJw9JfRmq0ZIIPFKDKpfiG+30n4YqN521IYkHS0Wdf+wodL1IKr+k/HlnZ3f1CP2JbquHWyGLA==
X-Received: by 2002:a17:90b:d87:: with SMTP id bg7mr604024pjb.159.1596072124486;
        Wed, 29 Jul 2020 18:22:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:7616:: with SMTP id k22ls1653909pll.1.gmail; Wed, 29
 Jul 2020 18:22:04 -0700 (PDT)
X-Received: by 2002:a17:90a:3e02:: with SMTP id j2mr613166pjc.47.1596072124060;
        Wed, 29 Jul 2020 18:22:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596072124; cv=none;
        d=google.com; s=arc-20160816;
        b=iamlQ2FckiFJl6lHO6xZRYGnL4x1aNfwhBqiP1kwpNsOE5NyrU4Y+lO0k8sSv+RfVm
         i6NGWnj1I65/KyJUMWfY9iUnkpVhspH7iJbn5ZwrOHaUwn3Dtbj1hxOojBoKkW+vcYF4
         gjXm9I58grcKcmFC8nArJD7q5X1kgpAXYETSTKwaw+Vs3Y5cAlr8K9ZmrMYQCHuXLKJy
         dBNJ0GgX1fLtxni1T5jOW8x+nrWP6/n4slQ4l8Boi3/2Ckwo7VfsK9kG56xWOzFZTBMQ
         hm2aymMi8sLlHPqfZp5YuS29IFohzuQNl6oA5G0tO5aPtJi2/h4ysLY+NauX6AacjgkG
         4/sA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :ironport-sdr:ironport-sdr;
        bh=t49IyZE+f+xu6R7/QRoPEG4B1mXgJQ9iPoqX5grKHdQ=;
        b=OZiT8HllOqEgLXyhr/6VOLNPribm4MVr9ZYt+n4HqMBWCnRyLIxzC8qkTl4N069nVQ
         Gc7BOtgibwnKjeOLaNH/5P/nczaV9pSj9Q/gt+FV9EgWxRXrwKn4WWoInJV1rusFUH/q
         T1GtmLl158ANdwCHw2dS2grEY4WHqXj6dWm/RAC3X+89CALsQmhY1tXhNfeErNiaace4
         8V1JK6t7rLP3rky1qxnyNw2sFDFqRqBbkWd98eCTt9ONBA0jCvhd9sKK8k4ro+wA1dSi
         ghvnMbpy5jIy+VU2q0haMLXnWEr0Z3oW2WU6z8j1edEvfxbFBqDgGLWasAvRGzIyzmTL
         /JrQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of rong.a.chen@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=rong.a.chen@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga12.intel.com (mga12.intel.com. [192.55.52.136])
        by gmr-mx.google.com with ESMTPS id 91si185536pjz.1.2020.07.29.18.22.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 29 Jul 2020 18:22:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of rong.a.chen@intel.com designates 192.55.52.136 as permitted sender) client-ip=192.55.52.136;
IronPort-SDR: GJmJrlfxEBTqwqNh8bY6Wcxf6iq32HTLDUe0H+KL2/STScMFP6VcJB5ekQEsZM9ycUr6aSnB1x
 9zStDRxF04hg==
X-IronPort-AV: E=McAfee;i="6000,8403,9697"; a="131081822"
X-IronPort-AV: E=Sophos;i="5.75,412,1589266800"; 
   d="scan'208";a="131081822"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 29 Jul 2020 18:22:03 -0700
IronPort-SDR: ly2qfxy1G52dsf0YKp3fffoeMBzOnW4K7TcjbyOBQVNRd+++VCXJFYZBHmGqclEkwgsIP5MPhi
 hh6M02k9pfrw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,412,1589266800"; 
   d="scan'208";a="434868651"
Received: from shao2-debian.sh.intel.com (HELO [10.239.13.3]) ([10.239.13.3])
  by orsmga004.jf.intel.com with ESMTP; 29 Jul 2020 18:22:01 -0700
Subject: Re: [kbuild-all] Re: Adding branches for testing
To: Lee Jones <lee.jones@linaro.org>
Cc: Nathan Chancellor <natechancellor@gmail.com>,
 kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org,
 clang-built-linux@googlegroups.com
References: <202007180528.vD5KVnHi%lkp@intel.com> <20200722180319.GH3533@dell>
 <20200723035548.GA363815@ubuntu-n2-xlarge-x86> <20200723063243.GJ3533@dell>
 <19e886f4-f4de-2605-d2fe-b6009ce97aa0@intel.com> <20200723064625.GK3533@dell>
 <440716db-2411-e4a6-6e6b-0f8d679e558b@intel.com> <20200723080844.GM3533@dell>
 <20200728092524.GF2419169@dell>
 <f31f204a-1663-fc9f-868d-34f2d3bf3057@intel.com>
 <20200729101346.GI2419169@dell>
From: Rong Chen <rong.a.chen@intel.com>
Message-ID: <42cd71f9-ac68-80a3-394e-603ac22a8f83@intel.com>
Date: Thu, 30 Jul 2020 09:21:28 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20200729101346.GI2419169@dell>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US
X-Original-Sender: rong.a.chen@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of rong.a.chen@intel.com designates 192.55.52.136 as
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



On 7/29/20 6:13 PM, Lee Jones wrote:
> On Wed, 29 Jul 2020, Rong Chen wrote:
>
>>
>> On 7/28/20 5:25 PM, Lee Jones wrote:
>>>>> We have updated it: https://github.com/intel/lkp-tests/commit/c0286b0=
f24d04bf11f83e253df7e237a49858243
>>>> Excellent.  You are a star, thank you.
>>>>
>>>> I have added one more repo:
>>>>
>>>>     https://github.com/intel/lkp-tests/pull/73
>>>>
>>>> Please see to it at your convenience.
>>> Any idea why I am not receiving results for the following please?
>>>
>>>     https://github.com/intel/lkp-tests/blob/master/repo/linux/lee-linar=
o
>>>
>>> As far as I'm aware, LKP should be testing all branches.
>>>
>>> What am I missing?  Did I do something wrong in the config?
>>>
>> Hi Lee,
>>
>> It's a network problem, the bot can't clone the repo successfully,
>> I'm downloading it but it still very slow.
>>
>> $ git clone https://git.linaro.org/people/lee.jones/linux.git lee-linaro
>> Cloning into bare repository 'lee-linaro'...
>> remote: Enumerating objects: 884266, done.
>> remote: Counting objects: 100% (884266/884266), done.
>> remote: Compressing objects: 100% (14993/14993), done.
>> Receiving objects:=C2=A0=C2=A0 3% (99547/2967293), 42.67 MiB | 32.00 KiB=
/s
> Thanks for looking into this.
>
> I guess that this will only need to be done once, right?
>

yes, and lee-linaro repo is ready, tests have been started.


Best Regards,
Rong Chen

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/42cd71f9-ac68-80a3-394e-603ac22a8f83%40intel.com.
