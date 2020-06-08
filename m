Return-Path: <clang-built-linux+bncBD26TVH6RINBBT7Q673AKGQEIYUZDUY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23e.google.com (mail-oi1-x23e.google.com [IPv6:2607:f8b0:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FA051F1491
	for <lists+clang-built-linux@lfdr.de>; Mon,  8 Jun 2020 10:35:29 +0200 (CEST)
Received: by mail-oi1-x23e.google.com with SMTP id n67sf1387720oif.14
        for <lists+clang-built-linux@lfdr.de>; Mon, 08 Jun 2020 01:35:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591605328; cv=pass;
        d=google.com; s=arc-20160816;
        b=mlVEIdtxckLH7T4cnbeXP9nnFy2sxO1uDSLeg7Z1jKxTvDyfqMI8BZoRBhkLEUZ+8Y
         g+3zLD8foMkolT2SYyM6RHaM8XkUa1rLn6PdpEdQuQJNQfbxTJecn1uYhHZ32itEEBJQ
         nVRT6TUR/s/KQkl6/2hSKfb2d/nf85vLA3nZXwu6nMhrLvDWt2bSClbDKPO+EtOe2Ej0
         uouVf9qhiGMniXRLa5ZSjc64vugo5DH7nAc+mvj/kodnerXZ0Rb3xNotqFioMo7h+u/9
         n14Gizt00eat4rHOZLqCLD2WQvtTD+S9fL0sVtCjcLpGkflfESaQdU08CVVGp27Pjyqs
         fr8g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=E6MliVQ/7ShZNXM0xqmVhqqGC/BrhPdEeXYjrW8kO5Y=;
        b=lcUEbUNdrp9xWY53+oFhfTnFG/yWVbRP9t2m/j8OF4r4qjkyqAJfk41Y64toa9jOKu
         +sdx09QEQzvJjzxW0hNhnMM29LDV2NaeStDxy+tBnll65UJMmV/jwaYTbXgyaUjt+OoA
         q3WK7X3JUHIQHSdLvoFmEJg3+5ZLqFUx/XlsxwE7KAYkr5HtSrEmOQsKw8Qep/WvOwM1
         BM6smPiEDWbSuReqFI9frJepS1++R9xS+bGRejB43wYTTlAdxe4DuRofIvllLAHUalmi
         mYOWzy3yJnq48KbeiUmMFYGD7iQbjHIB34aYEAIZfDaapCNBkb6xyTtWImgm8NFJe0iI
         31RQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of rong.a.chen@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=rong.a.chen@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:subject:to:cc:references:from
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=E6MliVQ/7ShZNXM0xqmVhqqGC/BrhPdEeXYjrW8kO5Y=;
        b=S8VlzZgyLLYHLTQcyERTO9B+SsOmfVExet+GGXWdCMPH10ZHSaNjt3Nb2CbwC8BufZ
         SGAdikog6RSELIHc1KSuDshr1slSuVvonS+mN3vgVbpPQL8qbvzipiqwi0TrNjPeep2X
         Url4HtiHKIEQO4kBXw9hgo9mFyI5EovxPRNAULz+vr5auil135ESEuTouYpbTnFBkwJU
         pAmC/tnCVrFiL9d/D0/roXeaatdfwYbKUrK4I8UDmvggbGcdEQpgLr/GZuv2hLfu0FxT
         B24UO4bbS0y5mfNltnrBT7q9aTcor/pvsQoZS62u5fZVBqPYmoVl0BOlpgdXXfVqemgp
         8dIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:subject:to:cc
         :references:from:message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=E6MliVQ/7ShZNXM0xqmVhqqGC/BrhPdEeXYjrW8kO5Y=;
        b=TqJj/l9jdvRyKyJLhaV5cLKI/GHFPgncj7oXrQoR6QR9YY3sJF8+Vc9PIocXyouvoc
         v3QixrO3zJ3O5BoaUJ5uIP9pEvP3P6j5/V9WIsftUjGPkzeV7JOFWq0Qt3xuWnzsTBeg
         OV3z2H2uihKJAzHR9Q6TWWjxlq9TxgyxNNSnrzTb75jhYt9klSvcbK+43GjqcamBwUIC
         vlL2Fwup2ddzA1gLj58tiyvEg2Z6bGNEYk/kxeRTHoxy/oXDqWpX7VF+ySEqyItlyOpR
         yTDsvaJJWC01AYIO1FmFJar5jzP467Af9pMQdmYaIihIMCC4pthcoZX72vdi+jx89Khj
         IY4g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532934KGiaSNBPZzSVKWFV+tP3CczF4mVFOuaJhefHEc0s/MtlRf
	DzpvkksMlxIQcGi5eJ5Jeo0=
X-Google-Smtp-Source: ABdhPJydKdSyDBR3tLpzMH/bBGW2t1LGf3kLwQjJBh/luitEM+utsK93HIGJAUuhQuUV2IUG3RjGUQ==
X-Received: by 2002:a9d:2d87:: with SMTP id g7mr17166814otb.186.1591605327899;
        Mon, 08 Jun 2020 01:35:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:4810:: with SMTP id v16ls2979241oia.5.gmail; Mon, 08 Jun
 2020 01:35:27 -0700 (PDT)
X-Received: by 2002:aca:6008:: with SMTP id u8mr10276017oib.58.1591605327406;
        Mon, 08 Jun 2020 01:35:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591605327; cv=none;
        d=google.com; s=arc-20160816;
        b=MiMV8WZUo6BQoqBRqF5b0rrYWjQdmf2gUem4A0H/ddbmsQODGtu5jpGpAw/h8gynWM
         qfEkpuR0Vl3wLlx2eTxT6/+NFnX3+n6Xvwh1/UFNz7oJJqMzguRUMMIjFILjsS37iNuO
         fN+9Wkjr28y1bKI1NTqJc5bNdNAQY48oyxI5SvSwRxezXKSs+ljjFapwnmeHU8mqo8JX
         OODbF55NRckAocwGVn0Vv99rc135FJmkK4VKzSoPCQtrCRMBlv+ER+3MR7yq/BZRyCCT
         lKUlqR05noiLx6uATnEmw/oNdbkeM63KGKjJSH4u00+V6R1x60fLzIElxw+NxXjP64+d
         f8hg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :ironport-sdr:ironport-sdr;
        bh=jVLrB3Mr4JddczDkGBlnP7HplYRjjqJEr2CoQOTzxwA=;
        b=uC8N6j+RHfS35d+ujmtDhNYmqNMaS3IF5RmZU3n04RA2A5Wz97vCUCZ1m19IwjCtxC
         3KNBTavMq/ZyGcf4yGI9QIcERVH/VduKpwD8sw7Dqxx9x8Cx6FtdohrwHE/s3P1z8jYA
         TfQSfLXMWD2IwDjZOqqWoYEaW2cggATS7EQyEVrEhjRck2Dmb0da2YSUt15arDAzX7BQ
         Xtapk7nbny2hmKEUo/MggX6gAU5nQOBdt5nYUpQNkmg4mhDW1KgBtsHxUnUzsjfi4FVV
         5ZAXvy0hJErJvdh1YvHaUJA1V5AveYpasXxWGGMMXy58GjJZrfv5ZoucwpYvu7DRkSMy
         iP7w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of rong.a.chen@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=rong.a.chen@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga05.intel.com (mga05.intel.com. [192.55.52.43])
        by gmr-mx.google.com with ESMTPS id d25si531621ooa.1.2020.06.08.01.35.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 08 Jun 2020 01:35:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of rong.a.chen@intel.com designates 192.55.52.43 as permitted sender) client-ip=192.55.52.43;
IronPort-SDR: 1g5aNuxd5BC2lwz2twlag3I0Y2wew8slTdc0fUAZR3Qqiop1DcEiYmkM0vVx7kkt3f2P1xydwI
 d/l9YJjBaRSQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Jun 2020 01:35:24 -0700
IronPort-SDR: yiKv2jE1Tn5+jZEFjQR1qkPbTFtDwMbAM7aZYa/eftYnIA8Uys/6CVX++rvOkcGsXcJYvpniAs
 UnImhoWccRew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,487,1583222400"; 
   d="scan'208";a="313820692"
Received: from shao2-debian.sh.intel.com (HELO [10.239.13.3]) ([10.239.13.3])
  by FMSMGA003.fm.intel.com with ESMTP; 08 Jun 2020 01:35:22 -0700
Subject: Re: [linux-stable-rc:linux-4.19.y 2642/9999] FATAL:
 drivers/mfd/madera: sizeof(struct of_device_id)=200 is not a modulo of the
 size of section __mod_of__<identifier>_device_table=1504.
To: Nathan Chancellor <natechancellor@gmail.com>,
 kernel test robot <lkp@intel.com>
Cc: Daniel Gomez <dagmcr@gmail.com>, kbuild-all@lists.01.org,
 clang-built-linux@googlegroups.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Lee Jones <lee.jones@linaro.org>, Sasha Levin <alexander.levin@microsoft.com>
References: <202006071903.heyMSUH7%lkp@intel.com>
 <20200608032958.GA1591794@ubuntu-n2-xlarge-x86>
From: Rong Chen <rong.a.chen@intel.com>
Message-ID: <8860ecbb-f562-e4e9-9e65-d4394499f23c@intel.com>
Date: Mon, 8 Jun 2020 16:34:55 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20200608032958.GA1591794@ubuntu-n2-xlarge-x86>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: rong.a.chen@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of rong.a.chen@intel.com designates 192.55.52.43 as
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



On 6/8/20 11:29 AM, Nathan Chancellor wrote:
> On Sun, Jun 07, 2020 at 07:58:06PM +0800, kernel test robot wrote:
>> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git linux-4.19.y
>> head:   65151bf9f715983d62613a4d9196525eb64dda53
>> commit: 7b24a4a363a90d8708d6b59046843eddf3eee1a7 [2642/9999] mfd: madera: Add missing of table registration
>> config: x86_64-randconfig-a011-20200607 (attached as .config)
>> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project e429cffd4f228f70c1d9df0e5d77c08590dd9766)
>> reproduce (this is a W=1 build):
>>          wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>>          chmod +x ~/bin/make.cross
>>          # install x86_64 cross compiling tool for clang build
>>          # apt-get install binutils-x86-64-linux-gnu
>>          git checkout 7b24a4a363a90d8708d6b59046843eddf3eee1a7
>>          # save the attached .config to linux build tree
>>          COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64
>>
>> If you fix the issue, kindly add following tag as appropriate
>> Reported-by: kernel test robot <lkp@intel.com>
>>
>> All errors (new ones prefixed by >>, old ones prefixed by <<):
>>
>>>> FATAL: drivers/mfd/madera: sizeof(struct of_device_id)=200 is not a modulo of the size of section __mod_of__<identifier>_device_table=1504.
>> Fix definition of struct of_device_id in mod_devicetable.h
>>
>> ---
>> 0-DAY CI Kernel Test Service, Intel Corporation
>> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
>>
> LLVM issue (as evidenced by the warning showing up on a patch that is
> from a year ago), please add this to the list of warnings to only send
> to our mailing list to avoid troubling kernel developers.
>
> https://github.com/ClangBuiltLinux/linux/issues/1045
>
> https://reviews.llvm.org/D81346

Hi Nathan,

Thanks for the advice, we'll only send the warning to clang mailing list.

Best Regards,
Rong Chen

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/8860ecbb-f562-e4e9-9e65-d4394499f23c%40intel.com.
