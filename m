Return-Path: <clang-built-linux+bncBD26TVH6RINBBI57R2DQMGQEPPZXX7Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33b.google.com (mail-ot1-x33b.google.com [IPv6:2607:f8b0:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 16DF83BC450
	for <lists+clang-built-linux@lfdr.de>; Tue,  6 Jul 2021 02:11:17 +0200 (CEST)
Received: by mail-ot1-x33b.google.com with SMTP id 59-20020a9d0dc10000b02902a57e382ca1sf14242251ots.7
        for <lists+clang-built-linux@lfdr.de>; Mon, 05 Jul 2021 17:11:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625530276; cv=pass;
        d=google.com; s=arc-20160816;
        b=K8Dlt85Dl1r3D2KlbSyUqYjJN2b3+ozYAlC58fYpcVdJnnHk2tEbKo9FmheBp8lV3H
         S1QBU1t0qzfdfkkBKa9DjS9senGOqL6FzC4Yyx2ZepKcUSbju1i1DnPubGXOG2HV4IB7
         cy18pkKVVidcK7sWCMHIKjSg8xONG9SPbBVry+Ta9xhhAsNDUKidBIk7zVMniXaUg3Pm
         FOutQttMay/J0RMDb2ihoRuWBpCi95wSlOzsZuEASu8O7dqTJ/VrMPJAED8RCJGqG8bp
         Ik7pkv8RD2zO0PMn7vnzfctLunVi12NPsJz9Ujzd7GOsCq3knLeyWJPuy4b0ePR1aZyx
         ESWw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=/dJKwGWRLU8Rqc88HkaFz2S3LMtQGS/ka/aGEmpo4fA=;
        b=hsu4NgW56m0itTILAJYYGs+AwG9OBwiMSDPlzgUaCgK/d81Ou0PzV8H3ogfQOrnyy2
         6ZlO7k6GQycCpy02sTECcMq5XTS6mZU4zscRREYIw1FAI0Oq/EbiJzoZmET/KXxh1EUf
         g/o5EhZoU91h4DoRFw2DBK0LcbAFP5vJPQ1IoVuSo603F/Gs7oKpHSi8aFNmNMewUHmu
         0xV2Sfut3fjWPg4h4y8dguPixFOBaHEQTmZ+TkV1iw6XllMumGb3Q07t2jvYLvdTDCoL
         lYNL0ADEBD5HAiHSjR9hjnRbck+IaS/ty7YDvpkzUiXFR7liqtDRoYfLiqXB0vaJvSwB
         vjAw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of rong.a.chen@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=rong.a.chen@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/dJKwGWRLU8Rqc88HkaFz2S3LMtQGS/ka/aGEmpo4fA=;
        b=gKL1tBwsfQ91lh46xFTwuMnlcT0rCeX0v/MyBUUGJmHUFKLllLOzh9guiivnoOVPge
         9NWKL9INdeYM28O3GNXf3X9NFsYHOSQnJlJyywQO7lotyIMxrv/MUKCLiRvhwAOtR7ON
         lXTod3baue+EChqpEzpqIVMJC/c4gnoUeF6ZydjjFB+X0DTJFQq2t7+LYiLZxqecW6Cx
         OzYI2uPtkcsOzZCtlNrvFZf7gD+ICLpMPtuThHLA3xwCX0oJ+XUFKX3d7gsDBcCFB5qp
         knTAAhnVhqOv/RQSsdxhPcr93vnLhjsIv3ciN4y+5fxjGqhsvFWvPhq+vv5gFVdTLnE2
         1BTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=/dJKwGWRLU8Rqc88HkaFz2S3LMtQGS/ka/aGEmpo4fA=;
        b=RbzFSn3V0MKG0Vd2uLfq2ixCH4w7FbZ8RlNTRM2v8p09ER8dKXXAKzMRzhmlTsbF12
         3zg23z1L5KmGLsvayzu5KOMO2oZASx8s2UV8MaM3iInCnrt8potbbAalT+WbfMUKSbmG
         /tsDJQQ0AO+cIZFyaIwtIIR3uN0MQSGHnmZFdg5uveJBug2w0A57ElmN0xniioAskH84
         dwNihPT02X8YRX9ZBQ5dlOLfI5eM/Vol+51Juw3yXLEkbwgd6oxJI4FTYI5+POiLX17s
         OEzvB/40un4TzqwK2RxMxh5bzB7v3V/DIVZb4sieqrMnE9eLWqlvtz/LAObmjPoS2Vjd
         FUCA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530jyRMQmBXL+eS1+Xikom3zXrBqYqUGi8skP40TW5Gr5G4lLvFw
	ymO5d4/rRjdnrhiS0paNcSI=
X-Google-Smtp-Source: ABdhPJxbtflirMLaiDhqu9Lm7LeYTkDS7xQCIN6vjCACJvvsNLGYnht9kwJkhv8sXxCvNPgYo0HGyA==
X-Received: by 2002:aca:230d:: with SMTP id e13mr11649442oie.166.1625530275769;
        Mon, 05 Jul 2021 17:11:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:c5:: with SMTP id x5ls282622oto.3.gmail; Mon, 05
 Jul 2021 17:11:15 -0700 (PDT)
X-Received: by 2002:a9d:3644:: with SMTP id w62mr12726801otb.205.1625530275407;
        Mon, 05 Jul 2021 17:11:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625530275; cv=none;
        d=google.com; s=arc-20160816;
        b=OyEs7sSSXJi1t2SGGuIUBW9CBfR+V9Or/RhWuOzE31k7yP0T3QStLbbgC7VPmHdA8W
         3RyeEh8eIKynA7KHDs0r6I9JpKypyyBLMETRdlnb3LqQu+yRKGpvi8j8Wlsh3Z4IdLXr
         bHk6270i0D+Y7M+Vp8kEc0MevD/he6X6OKc5WE7tMGGv7EVcps5bM8dW7tqg/YnrrXP2
         pfL5Xwb8HnZdUxT3plIpYH4BTjzUKCcQGHxSM758auQtFx4Q3pcMeDdXyvCEC6c6KtqQ
         4yp+s5FtLa74qfXcUNsF5sGXVBGxMYSDvHSUhmejr5M2LBedFq6acNo86qPTL0XndnNN
         1hOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=IidMXig3GHxA1F6BnnAD/JlrORgjyDJjK2S57+zITtk=;
        b=WFBJlNsok7s8s5DsBUu0xmSYiZWRk7r1mRIVAoQidSF/dW4ZglXvlWxuMp3zkz4OOc
         4D9C+Vhji1ulGomFOsqT1XnQA6F7HiXx7BpkAA+G8faBXZUgtg3KpUGW70/Ynrt50zRT
         X2a2b4MZ8RePdmx511BnRfEu4CrZILOrx7523ctby/wr3GF1hbhrOugkjaVVBJ5puGg5
         aLrQTWeXXVgSeo12cHmNGnLDjdnAO9sF+sT5/ORmN8fjNi/4yCsMAVRNhweECGy0t71G
         OgvlFPNb8Wx6+68DFluOipE+3a564z1JCxS6myeYigCxb1pFk5QkeEU4U0DsP73TUXha
         UWQg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of rong.a.chen@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=rong.a.chen@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga09.intel.com (mga09.intel.com. [134.134.136.24])
        by gmr-mx.google.com with ESMTPS id c22si1198376oiy.1.2021.07.05.17.11.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Jul 2021 17:11:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of rong.a.chen@intel.com designates 134.134.136.24 as permitted sender) client-ip=134.134.136.24;
X-IronPort-AV: E=McAfee;i="6200,9189,10036"; a="208988071"
X-IronPort-AV: E=Sophos;i="5.83,327,1616482800"; 
   d="scan'208";a="208988071"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 Jul 2021 17:11:11 -0700
X-IronPort-AV: E=Sophos;i="5.83,327,1616482800"; 
   d="scan'208";a="496284935"
Received: from shao2-debian.sh.intel.com (HELO [10.239.13.11]) ([10.239.13.11])
  by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 Jul 2021 17:11:09 -0700
Subject: Re: [kbuild-all] Re: kernel/time/clocksource-wdtest.c:47:22: warning:
 signed shift result (0x27BC86B00) requires 35 bits to represent, but 'long'
 only has 32 bits
To: paulmck@kernel.org
Cc: kernel test robot <lkp@intel.com>, clang-built-linux@googlegroups.com,
 kbuild-all@lists.01.org, linux-kernel@vger.kernel.org,
 Thomas Gleixner <tglx@linutronix.de>
References: <202107040532.wqL30yFp-lkp@intel.com>
 <20210704174310.GR4397@paulmck-ThinkPad-P17-Gen-1>
 <254ab0ec-2c25-29fd-cbe1-eaf2bc135326@intel.com>
 <20210705152107.GV4397@paulmck-ThinkPad-P17-Gen-1>
From: Rong Chen <rong.a.chen@intel.com>
Message-ID: <a10605cb-8de4-9da3-bda7-04f82e6fabe7@intel.com>
Date: Tue, 6 Jul 2021 08:11:07 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20210705152107.GV4397@paulmck-ThinkPad-P17-Gen-1>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: rong.a.chen@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of rong.a.chen@intel.com designates 134.134.136.24 as
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



On 7/5/21 11:21 PM, Paul E. McKenney wrote:
> On Mon, Jul 05, 2021 at 03:47:09PM +0800, Rong Chen wrote:
>>
>> On 7/5/21 1:43 AM, Paul E. McKenney wrote:
>>> On Sun, Jul 04, 2021 at 05:42:36AM +0800, kernel test robot wrote:
>>>> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
>>>> head:   303392fd5c160822bf778270b28ec5ea50cab2b4
>>>> commit: 1253b9b87e42ab6a3d5c2cb27af2bdd67d7e50ff clocksource: Provide kernel module to test clocksource watchdog
>>>> date:   11 days ago
>>>> config: mips-randconfig-r015-20210702 (attached as .config)
>>>> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 9eb613b2de3163686b1a4bd1160f15ac56a4b083)
>>>> reproduce (this is a W=1 build):
>>>>           wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>>>>           chmod +x ~/bin/make.cross
>>>>           # install mips cross compiling tool for clang build
>>>>           # apt-get install binutils-mips-linux-gnu
>>>>           # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=1253b9b87e42ab6a3d5c2cb27af2bdd67d7e50ff
>>>>           git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
>>>>           git fetch --no-tags linus master
>>>>           git checkout 1253b9b87e42ab6a3d5c2cb27af2bdd67d7e50ff
>>>>           # save the attached .config to linux build tree
>>>>           COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=mips
>>>>
>>>> If you fix the issue, kindly add following tag as appropriate
>>>> Reported-by: kernel test robot <lkp@intel.com>
>>>>
>>>> All warnings (new ones prefixed by >>):
>>>>
>>>>>> kernel/time/clocksource-wdtest.c:47:22: warning: signed shift result (0x27BC86B00) requires 35 bits to represent, but 'long' only has 32 bits [-Wshift-overflow]
>>>>              .mult                   = TICK_NSEC << JIFFIES_SHIFT, /* details above */
>>>>                                        ~~~~~~~~~ ^  ~~~~~~~~~~~~~
>>>>      1 warning generated.
>>> You have CONFIG_HZ_24=y and this test module assumes HZ > 100, as noted
>>> just above the excerpt below:
>>>
>>> /* Assume HZ > 100. */
>>> #define JIFFIES_SHIFT   8
>>>
>>> So this is expected behavior.
>>>
>>> Would it help if I gave that comment some teeth, for example, as
>>> shown at the end of this email?
>> Hi Paul,
>>
>> I have confirmed that the below change can avoid the warning.
> Very good, and thank you!  May I add your Tested-by?

Yes, please.

Best Regards,
Rong Chen

>
> 							Thanx, Paul
>
>> Best Regards,
>> Rong Chen
>>
>>> ------------------------------------------------------------------------
>>>
>>> diff --git a/lib/Kconfig.debug b/lib/Kconfig.debug
>>> index e1856030fa66..8f0ad6e4183c 100644
>>> --- a/lib/Kconfig.debug
>>> +++ b/lib/Kconfig.debug
>>> @@ -2573,6 +2573,7 @@ config TEST_FPU
>>>    config TEST_CLOCKSOURCE_WATCHDOG
>>>    	tristate "Test clocksource watchdog in kernel space"
>>>    	depends on CLOCKSOURCE_WATCHDOG
>>> +	depends on HZ >= 100
>>>    	help
>>>    	  Enable this option to create a kernel module that will trigger
>>>    	  a test of the clocksource watchdog.  This module may be loaded
>>> _______________________________________________
>>> kbuild-all mailing list -- kbuild-all@lists.01.org
>>> To unsubscribe send an email to kbuild-all-leave@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/a10605cb-8de4-9da3-bda7-04f82e6fabe7%40intel.com.
