Return-Path: <clang-built-linux+bncBD26TVH6RINBBWXZQT4QKGQESGEA44Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3a.google.com (mail-yb1-xb3a.google.com [IPv6:2607:f8b0:4864:20::b3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E1D7231BD7
	for <lists+clang-built-linux@lfdr.de>; Wed, 29 Jul 2020 11:09:47 +0200 (CEST)
Received: by mail-yb1-xb3a.google.com with SMTP id a14sf19580111ybm.13
        for <lists+clang-built-linux@lfdr.de>; Wed, 29 Jul 2020 02:09:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596013786; cv=pass;
        d=google.com; s=arc-20160816;
        b=RgReOOo8D2zmpsY6ZLGSAfB2nlw4E0xKaDOO3zhEn3tM19cmDSA3154ix4Wk+WotPF
         x+I/PpzaQ9fCBZd7o7Pr8Z9RrI5gYPyFltdkDRVd8LTdzW6EcDXC3ucbX5gudWVlShAD
         LI3uWfEFcuwBFxQ9ownxoT8Afpij2akzxrQsVZ2UstEBVPqkDbZxtBRrjWr9zcnAT4q8
         e4jbAZYMUMUyksG1mKBFMtF2H02Bt/3oZQJW2TVBJ03+t6gp9maW0JH4LoksNOJQDDUS
         tGPRrH9CxRHVoMfUYqdGYTkbaPPWwEmE1Kvg9zYFZ3sU1waG4H0JcGLl54DMgbGGAiy0
         1f7A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language
         :content-transfer-encoding:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:ironport-sdr:ironport-sdr
         :sender:dkim-signature;
        bh=NAPH9WN0caXa6zrR9a+MZdGh8cDFNYffB7J+Fr/CDpM=;
        b=C0hYVppUAwhv58m3NfU04bVX5P6UOJONaff8SqcCzGn5C0azfHNFBqUy++LNBKGv6z
         zix5w45gTnPrTZvKrKleDN7iDPPid4yV9cNsmF3sqG8k0+nQXdY/6bF93SgJpXz78Nhc
         6ez2jWBd1l5PPwPeD99/M03U84NsVTPLWG9qtvqMV2HGHcm4n6NJqBvKfD2bau2QVRmN
         tnClAXd6pIpNll+mNRGkJMFyKVU+QeVKwD2vutOpwo4oud5IlotiFI/Ezo94Sq/YezW4
         KQsTxHVeqTEarEfaysEQlYt6bhheNrD9KO+SNq5tiFnb5/ZvuQbyNyncE0dmHyGnEVJY
         4qTA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of rong.a.chen@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=rong.a.chen@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:subject:to:cc:references:from
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-transfer-encoding:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=NAPH9WN0caXa6zrR9a+MZdGh8cDFNYffB7J+Fr/CDpM=;
        b=V+vuqvz/pnodfrggxvny2+1z/zLIWfV/OGUN8L61gpU6xUuC8xJFRgkJ5CWiGlTf0l
         RBHSmOWsqt8ikB/uE4ymRik+5cQo5cFhK259fzya1XdKdbo3bQJzxR/ze37643Ufs4lF
         2MGqaj7C65D5dk/ZXgsXNF+yyd2FRlf0HmHw/GkiehYMcRrvoQTeXbdsbu+PKPJJOJhY
         1EVl8lLRdDpjyJVITzYvXezdMmrKZdSl47yGL9MaUH6tVEK5qZ5y2dLPYgSnhcmENZ62
         OGOJqu967nVhPn5465j8VaIRShyM/ePB+/qPxuXsPpMDtXK0ISAlTXa8+jkAvztsDwhF
         2z/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:subject:to:cc
         :references:from:message-id:date:user-agent:mime-version:in-reply-to
         :content-transfer-encoding:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NAPH9WN0caXa6zrR9a+MZdGh8cDFNYffB7J+Fr/CDpM=;
        b=oG/XADTBhB3sdlio9VBf2TOraLTGEMAmDIUqtJF/SMqQ9mrAI6wpR0Onp5VPXWXUxu
         HACGf9zKT60snT0ii62KHx1oMM0EV6kTJD2TfjWyYTUHhWj4ZeHh/dkcrVoCQXmH5Tn4
         0Lml+Sog02uzi9whpW5jTzQRZwPb73b1wUZ1FlH/izNoA1pAQZPE39Hbwvs4CPhMdl2W
         Gf8DsLVUV+twsiHWK8wdOF2FIf7R1rgxUzL9c2NY7i+7Mx4p180NsbIRHAla2oBpip4t
         F4CtIRZzv1AcXJGVfgctH6Y/P9VcpuzWlRvJlvu5Qteqa6eLRAHkPxIPQWgzEYiNqdFK
         TASg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533tQQzBAUFn5knyHizYQUbqVsqNBTthlmZYe6znF62wAgrf9IUB
	3qzw55AmFLhdMEWD/+oX1rQ=
X-Google-Smtp-Source: ABdhPJxdSwg6l35GDN9dJh7Ydl/Z0Y0lIqouhFqGhUzKuQcr7FRIXxaFTFRA5Q4QQZN9nek13sdxXw==
X-Received: by 2002:a25:aa86:: with SMTP id t6mr17378826ybi.213.1596013786212;
        Wed, 29 Jul 2020 02:09:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:2c46:: with SMTP id s67ls581046ybs.1.gmail; Wed, 29 Jul
 2020 02:09:45 -0700 (PDT)
X-Received: by 2002:a25:aa08:: with SMTP id s8mr52792269ybi.282.1596013785904;
        Wed, 29 Jul 2020 02:09:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596013785; cv=none;
        d=google.com; s=arc-20160816;
        b=ZOWK4Q57ulnQVCfoIc+JINPb7AOsMXe0VmpjAzFAiKSETrkFrcaxazVODHWG4Mudqr
         BDjmG4RWVMfbuWAtd/ffVJNMjAPbk1F/GB2R5bksf8Fk4QfJYe8DhJ25EjTYnPXnBoWm
         wB+zNY7MDJmaCpTgnN91pBH2SAkEjFX4V49e6pedVLu6phIZ0S7sk2XZHnI+72I3NluE
         0/8t6RwbcnfJrFFyksZ0Of/Jc3ai+JDc+S5QLDbpnUt3QWCbwh204u2fwgSKN9AvgQ7I
         TpScqyk1z29ANdT4H+QsDUCXurY6yuwG1oOK26JJ1kx8Kf3oqM4Ns7s3zsePwWTUxCq5
         nfsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :ironport-sdr:ironport-sdr;
        bh=3adGWkZHZPaDncYIsHRTB6WLWJKupgHW2LPY1rt9Ttg=;
        b=rSsn2QE5X6bQaRwRVwwkBaRb4B9X+Bbca9Az76qoBsd2EB29PRKyyb33ZQx+HXl31X
         3qVcKiVbPDrCi5jzPW8vnJyafz+teUvjf49iMZQxMMdZzoj4Wo2MrqB1k1rSEh5RARo2
         6Mf6YAj0oEuTuoSe6j1KVTz5C3OB97Rky+X5oWUh7N1aIAGXH2HfD9rCblSu4MlIrvkN
         iO461vbzYwrdevb2vmxSmrGkO5lrVo24E4Lmt2XEPW7GUr6+GTQSEMiKOihLTbb/NsWQ
         qr7LxbmhLCOXudXjIy/rPzLeuIcsCmQyL2N/BV0pStxBfp7p0en7Fl99zvGf0zoRz8GY
         tOlQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of rong.a.chen@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=rong.a.chen@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga04.intel.com (mga04.intel.com. [192.55.52.120])
        by gmr-mx.google.com with ESMTPS id k2si112745ybb.0.2020.07.29.02.09.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 29 Jul 2020 02:09:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of rong.a.chen@intel.com designates 192.55.52.120 as permitted sender) client-ip=192.55.52.120;
IronPort-SDR: topD2cAtUEZqJ2NR6pLizw4SbLuOwI7yZv6KyVHP3BOnEbYUVw4Evy+biGJVaE4wS8jME1Scnq
 Uy82IuRr7XyA==
X-IronPort-AV: E=McAfee;i="6000,8403,9696"; a="148841379"
X-IronPort-AV: E=Sophos;i="5.75,409,1589266800"; 
   d="scan'208";a="148841379"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 29 Jul 2020 02:09:44 -0700
IronPort-SDR: /m3pAEXEXuVGY0dScPyN7i01FGdSnq64E6scWJVqtCDDaRRzIK978etrq4YOctO858O/GqLdcj
 RNJmRx/Nz4FA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,409,1589266800"; 
   d="scan'208";a="464798377"
Received: from shao2-debian.sh.intel.com (HELO [10.239.13.3]) ([10.239.13.3])
  by orsmga005.jf.intel.com with ESMTP; 29 Jul 2020 02:09:42 -0700
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
From: Rong Chen <rong.a.chen@intel.com>
Message-ID: <f31f204a-1663-fc9f-868d-34f2d3bf3057@intel.com>
Date: Wed, 29 Jul 2020 17:09:09 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20200728092524.GF2419169@dell>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US
X-Original-Sender: rong.a.chen@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of rong.a.chen@intel.com designates 192.55.52.120 as
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



On 7/28/20 5:25 PM, Lee Jones wrote:
>>> We have updated it: https://github.com/intel/lkp-tests/commit/c0286b0f2=
4d04bf11f83e253df7e237a49858243
>> Excellent.  You are a star, thank you.
>>
>> I have added one more repo:
>>
>>    https://github.com/intel/lkp-tests/pull/73
>>
>> Please see to it at your convenience.
> Any idea why I am not receiving results for the following please?
>
>    https://github.com/intel/lkp-tests/blob/master/repo/linux/lee-linaro
>
> As far as I'm aware, LKP should be testing all branches.
>
> What am I missing?  Did I do something wrong in the config?
>

Hi Lee,

It's a network problem, the bot can't clone the repo successfully,
I'm downloading it but it still very slow.

$ git clone https://git.linaro.org/people/lee.jones/linux.git lee-linaro
Cloning into bare repository 'lee-linaro'...
remote: Enumerating objects: 884266, done.
remote: Counting objects: 100% (884266/884266), done.
remote: Compressing objects: 100% (14993/14993), done.
Receiving objects:=C2=A0=C2=A0 3% (99547/2967293), 42.67 MiB | 32.00 KiB/s

Best Regards,
Rong Chen

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/f31f204a-1663-fc9f-868d-34f2d3bf3057%40intel.com.
