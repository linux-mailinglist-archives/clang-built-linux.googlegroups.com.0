Return-Path: <clang-built-linux+bncBDRPZAGFRAFBB2P6TCEQMGQEM5IFYRY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53b.google.com (mail-ed1-x53b.google.com [IPv6:2a00:1450:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id 0240E3F7580
	for <lists+clang-built-linux@lfdr.de>; Wed, 25 Aug 2021 15:02:49 +0200 (CEST)
Received: by mail-ed1-x53b.google.com with SMTP id j13-20020aa7ca4d000000b003c44c679d73sf3442004edt.8
        for <lists+clang-built-linux@lfdr.de>; Wed, 25 Aug 2021 06:02:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629896553; cv=pass;
        d=google.com; s=arc-20160816;
        b=PmiEyoezhuyHpap3j68g36bNzu3Jzq9wvQ5h8TZbAc8iAvfYIZpu75hDm/ylcNUc14
         YuvbNJl920GJ5iSGaYN1WTpXP0E7QTO9mEEc2b6WrVgTsMygrR8xve1IHKdqmng9zaxO
         0ziZfVBJSlgJMx2IDysPa83tQwgA83S1dARSbm5fR9cJiPgNWY7CRTLS5LeTpMpvjsDy
         wWRjjlUMCWYyzz8H0pzG485R32L4H/eBW7yDcXxEZ7ZWStre+mlH1NnNuaprxHYjfrYe
         jHpr2pPE2Sd5KZVnQ1iGwqJrttM1lxG7LrEHgHD5N79wrwS0O1IZCJZF+CzICQk4NitV
         BQGQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature:dkim-signature;
        bh=ZE7qjkA7C82FXhZ5Z6igNsQMjFPsfx/UoTwadxCZ1Xo=;
        b=McZxmCC065gOkrsR8WtOMLudtAWQ61JEatDXObQc01iS2SCCBxzoJ7TUtxVa7tKRxv
         8DQXx2zdbiMxDmIpWq0587FQAhEhlJjY5ebYThtjvBoXe2dBSoHK1NTdc3fFiRxyqXYx
         haLFB4P+uuDa2s8pauzBv08BJAiwAP3/FJAUd5f0XFIqMOSznAgnagT47DrzsiJb/YJU
         FdnnWMkHZxHCKobSUI4jrZeF8TYu99dCLr15AUY2K3fOGYib0KzvdY2UFZL31iCRc3jt
         53t9V47uemRvQceXRVpYpMggFfr7NFrOdcqVWzcAzoRv8t5WPhOeViSJ7xP6CXI4Yd7i
         TEfQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QoUXBQmH;
       spf=pass (google.com: domain of paskripkin@gmail.com designates 2a00:1450:4864:20::22a as permitted sender) smtp.mailfrom=paskripkin@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ZE7qjkA7C82FXhZ5Z6igNsQMjFPsfx/UoTwadxCZ1Xo=;
        b=cYUWIswamCCDqm7gb2TOd6BQIa+QEH5sQOfp3CfNNQ6Ul7YryyfVOPVtbja3wYbMfo
         vT9NUmDnh5p5E9oMnzr7Je52GT4PIkqT8CeqIPWkWtzwZLX99cF1XbUz8u02Yk1t4v3g
         yTDSIiQJGaZAMHfxSqMRRou6/kTNMJtwFiD3JJ4dgXFNShWdVJsH2c5OYxX2rIOzOVpK
         L6LsL3t3ANZE9hdoly5qhWVFFgg1RLyrVG5/dmby+oxaHTV/8VJAzOTKGdtOtEhnuRov
         L2E7nLtor4r7qklU/zD1iTzt8TiT0ZaYkOE4Fz2Sgb34lO0yRwg3R+bSfCeF9uDBM32U
         Bodg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ZE7qjkA7C82FXhZ5Z6igNsQMjFPsfx/UoTwadxCZ1Xo=;
        b=HmWDtcLMmVfp1eOHmysiCtr+GC8IhVft6c2Ah5JJ4hb+gx95PMD1b5KFHswDS3M1yT
         h0tfuyOI/FRfjv+RMh4Wbw4IRcQna9QSX7g6l5buFXXeaPCF66izMEn3BXtMQFm3hmD9
         rNqUUQ2ssulFy+VSxiCzyx1EN2btGqHQBUWHs0tcYi36odHoGOdd/ZgOd6rzOpvWCuxW
         VJMdoWyokAPNZ4SSDewgkwWP+z+QBixElfoQt5qQfvWUc6cInq1mg9RS8kKgnDTZPXXq
         ozy4nESXZ5Y+Gfp4PPm7GmaetukmEW8OxZxy2MR0oablwoo/XeMZBktjhQk0pMaBkt+t
         uRpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ZE7qjkA7C82FXhZ5Z6igNsQMjFPsfx/UoTwadxCZ1Xo=;
        b=SAfn9bSsf4FR6GVxfhKs/L+xVGoI6cmdJR3lukuJ226ywEI0vz1tY2Pfy69UT95bv1
         HBCl7Dc8oV82AsM8pT7l46md8sY3/qk/ecMy2f4vo1npg57DuTHhu4bYfI/QtPTIXO8z
         pUxzp/QU0gm3vGpMZ3EzInRDP0CS6iB4L7bkgea0p7UDycCIKK2nEHOTXGiEHORnKRYD
         jhpdZyGpmckmyZ4J+k86Bh1juqCqPIutWWBRAh1MAtHYKbbgyzASCbquS/CfEtWdOEs2
         S79EXJm+Y3/WSYO9WNZrsZDmsOB+d/qlB4hdQoLfVhOnXBVgLzgOhlv0fEQ9oJybxIS3
         If/Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532xAXbCCb8v2jAndOdW5DKn2/vxFD8NdnY9OMXlloN/pQ31PP1V
	k3jAZjy7xdSEkWVHrSk7q4k=
X-Google-Smtp-Source: ABdhPJx7SdDpJUEGuNdwaks8BFTa1d8+UA3SWfmuwHd7xNY/Oov19KHXyjXMBUydyFJa8ydcny1QaA==
X-Received: by 2002:aa7:dc56:: with SMTP id g22mr15146682edu.187.1629896553678;
        Wed, 25 Aug 2021 06:02:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:c944:: with SMTP id h4ls2341180edt.1.gmail; Wed, 25 Aug
 2021 06:02:32 -0700 (PDT)
X-Received: by 2002:a05:6402:430a:: with SMTP id m10mr13681437edc.235.1629896552827;
        Wed, 25 Aug 2021 06:02:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629896552; cv=none;
        d=google.com; s=arc-20160816;
        b=WcpiEpKMrUlX3yaZCQIedfCZa+dAuxgGBIMvIxBTnWdkV5mFmOm1TSnxnuPnP/Pd7v
         k/bxphtHGyCKXKlyZgb1SHDnT9zfN9S81Zt07HFJSJ5MKSuh+KEDO7RUOzahDyLNEAfW
         pAluesdabWkz6gtewUnDqs1ILt/gAZcwIM4Xfgmn4DLH48dYzeBicDGEzeLR0L8nKobD
         bnxOF2L1t7VzrRiZMwJqgiPiVALlM5IBBkxWlWbv+J6hfSvTaUAH10InQVyV8ExqGqSY
         NEI/fOHNU8yH52I8NmU4NRHjFK9kDO0zBSxmQGP8RRp9YtInpena+TWItd8Fcs6WKnj6
         9K+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=VJdIN+/yLxKd2dK6G+lnQvHGiAbSkLC1a8lGdr9xSoo=;
        b=V8khcgc53DKR56H4CR8Sy+rxQvShLaPiVp7Uen6IQz5v91SNno6DUi2Vj6jogFyRdF
         PCtNC+tLP/wLlU0qgmLjsPjnB2CPTNW/fkeTOH+21MUjXij2NQ5aPcgE4Btnxh+odnpu
         /p6WWGD4vrVxboivfNFTrIf6d29ZyXuRqPOI9RWC79VC7ZrTY/L1DXZCCgz6EsQnCw/h
         IqN9ot1PjG6gjzKOrCTPlHKqP/XZ2OEOC8ZFhZX1hl6rbYxo3LyBpW4ODFeT+sN0ZZVx
         +Rg0gu16zt0hBMa59yI9ykjuAVkEFe8f6kT+rCa9Ppkjn0NBymIkQCoJi/t8SatcbmF3
         4JpA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QoUXBQmH;
       spf=pass (google.com: domain of paskripkin@gmail.com designates 2a00:1450:4864:20::22a as permitted sender) smtp.mailfrom=paskripkin@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com. [2a00:1450:4864:20::22a])
        by gmr-mx.google.com with ESMTPS id dy22si353921edb.2.2021.08.25.06.02.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Aug 2021 06:02:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of paskripkin@gmail.com designates 2a00:1450:4864:20::22a as permitted sender) client-ip=2a00:1450:4864:20::22a;
Received: by mail-lj1-x22a.google.com with SMTP id i28so43490910ljm.7
        for <clang-built-linux@googlegroups.com>; Wed, 25 Aug 2021 06:02:32 -0700 (PDT)
X-Received: by 2002:a2e:bc26:: with SMTP id b38mr10172228ljf.497.1629896551014;
        Wed, 25 Aug 2021 06:02:31 -0700 (PDT)
Received: from [192.168.1.11] ([46.235.66.127])
        by smtp.gmail.com with ESMTPSA id t69sm238994lff.27.2021.08.25.06.02.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Aug 2021 06:02:29 -0700 (PDT)
Subject: Re: [PATCH v3 3/6] staging: r8188eu: add error handling of rtw_read8
To: Dan Carpenter <dan.carpenter@oracle.com>
Cc: kernel test robot <lkp@intel.com>, Larry.Finger@lwfinger.net,
 phil@philpotter.co.uk, gregkh@linuxfoundation.org, straube.linux@gmail.com,
 fmdefrancesco@gmail.com, clang-built-linux@googlegroups.com,
 kbuild-all@lists.01.org, linux-staging@lists.linux.dev,
 linux-kernel@vger.kernel.org
References: <c59d5d850bf9aab208704182c83086609289cb9c.1629789580.git.paskripkin@gmail.com>
 <202108251911.Vwmzl4rI-lkp@intel.com>
 <9743e1ee-75f4-6231-427b-8c7f659fb252@gmail.com>
 <20210825125159.GU1931@kadam>
From: Pavel Skripkin <paskripkin@gmail.com>
Message-ID: <bd50c00e-1814-dc32-36cf-73cf58123201@gmail.com>
Date: Wed, 25 Aug 2021 16:02:26 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210825125159.GU1931@kadam>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: paskripkin@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=QoUXBQmH;       spf=pass
 (google.com: domain of paskripkin@gmail.com designates 2a00:1450:4864:20::22a
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

On 8/25/21 3:51 PM, Dan Carpenter wrote:
> On Wed, Aug 25, 2021 at 03:17:06PM +0300, Pavel Skripkin wrote:
>> On 8/25/21 3:05 PM, kernel test robot wrote:
>> > Hi Pavel,
>> > 
>> > Thank you for the patch! Yet something to improve:
>> > 
>> > [auto build test ERROR on staging/staging-testing]
>> > 
>> > url:    https://github.com/0day-ci/linux/commits/Pavel-Skripkin/staging-r8188eu-remove-read-write-_macreg/20210824-162756
>> > base:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git 093991aaadf0fbb34184fa37a46e7a157da3f386
>> > config: arm-buildonly-randconfig-r001-20210825 (attached as .config)
>> > compiler: clang version 14.0.0 (https://github.com/llvm/llvm-project ea08c4cd1c0869ec5024a8bb3f5cdf06ab03ae83)
>> > reproduce (this is a W=1 build):
>> >          wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>> >          chmod +x ~/bin/make.cross
>> >          # install arm cross compiling tool for clang build
>> >          # apt-get install 11.1.1
>> >          # https://github.com/0day-ci/linux/commit/d4e4bbed4e59df37967086f60fe92cb1b4504d37
>> >          git remote add linux-review https://github.com/0day-ci/linux
>> >          git fetch --no-tags linux-review Pavel-Skripkin/staging-r8188eu-remove-read-write-_macreg/20210824-162756
>> >          git checkout d4e4bbed4e59df37967086f60fe92cb1b4504d37
>> >          # save the attached .config to linux build tree
>> >          mkdir build_dir
>> >          COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross O=build_dir ARCH=arm SHELL=/bin/bash drivers/staging/r8188eu/
>> > 
>> > If you fix the issue, kindly add following tag as appropriate
>> > Reported-by: kernel test robot <lkp@intel.com>
>> > 
>> > All errors (new ones prefixed by >>):
>> > 
>> > > > drivers/staging/r8188eu/hal/usb_halinit.c:2022:3: error: expected expression
>> >                     u8 tmp;
>> >                     ^
>> >     1 error generated.
>> > 
>> > Kconfig warnings: (for reference only)
>> >     WARNING: unmet direct dependencies detected for QCOM_SCM
>> >     Depends on (ARM || ARM64) && HAVE_ARM_SMCCC
>> >     Selected by
>> >     - ARM_QCOM_SPM_CPUIDLE && CPU_IDLE && (ARM || ARM64) && (ARCH_QCOM || COMPILE_TEST && !ARM64 && MMU
>> > 
>> > 
>> 
>> We need to fix Kconfig, ok, I will take a look at it later
>> 
> 
> This is not related to your patch.  Ignore it.
> 
> 
>> > vim +2022 drivers/staging/r8188eu/hal/usb_halinit.c
>> > 
>> 
>> >    2020		case HW_VAR_BCN_VALID:
>> >    2021			/* BCN_VALID, BIT(16) of REG_TDECTRL = BIT(0) of REG_TDECTRL+2, write 1 to clear, Clear by sw */
>> > > 2022				u8 tmp;
>> 
>> Hm, I don't know anything about ARM compilers, so should I wrap this code
>> block with {}?
> 
> Yep.
> 
>> 
>> My local gcc 11.1.1 (x86_64) does not produce any warnings/errors
>> 
> 
> You should figure out whats up with that because it shouldn't compile
> with the gcc options that the kernel uses.
> 

AFAIK, at least 2 guys except me in this CC list compiled my series 
without errors/warnings. Maybe, staging tree is missing some Makefile 
updates?


I'll resend series this evening anyway, but this is strange....



With regards,
Pavel Skripkin

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/bd50c00e-1814-dc32-36cf-73cf58123201%40gmail.com.
