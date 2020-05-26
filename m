Return-Path: <clang-built-linux+bncBCT2HUUZWIMRBPGVWT3AKGQE3K324KY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43e.google.com (mail-pf1-x43e.google.com [IPv6:2607:f8b0:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id 703B11E2440
	for <lists+clang-built-linux@lfdr.de>; Tue, 26 May 2020 16:42:05 +0200 (CEST)
Received: by mail-pf1-x43e.google.com with SMTP id 207sf16913894pfx.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 26 May 2020 07:42:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590504124; cv=pass;
        d=google.com; s=arc-20160816;
        b=g7wlZUfIAam2o7eR4P+EBZOL/hkoN2vg8lGdNgXu8odoF/HJ4+JDtXqhKz1YO2zo9G
         ktBhq47CLltq/HaUTuP4vGLumu2C4I3FWN7uHmM79k3ZVDIUk+XPBy9j/wm/CuzVLFGD
         eaC9Au6mh6d00BmMzAzUtrzeGlTVGpqE66Sy6Vv15vb3hWmzTbXsTiIGDAmDfLdoYJB8
         n6XX/3YJD1KHljz8J/kf/vjNeQaBhaM5LS0ItVnpEUUmRikohlmaC9J3/7Pnt+PcpE7k
         NGAjaWRQvdLJ6B6FNeAxJVa/5WEYIo8brywAK5cT+2MdgX2/BthGcYcqY8HaQXZfghES
         bhTA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:subject:dkim-signature;
        bh=Rk1Zs4vsQM7K0qlkOFD3qLP6K9WirwHQnYW1qqntaP8=;
        b=k0y5HyIqehbtsYlXGn8EOW9AO98VKo0pXmka7mcX57bs8Q4ohWmQSVbjcgLcLaIvoK
         8ftnnGw3Vdgd0y566MICYetQ0c8CfxUSG5/5Cg8eJe0I35GZJAIIR0JI7JWbSR2vWWbS
         ZDyaKMPaHcPiE6KOOT2kMVxZYvGzsgjm6umodlj476qp8uRnn/ywoMWk+4Gbi03YWqlk
         l8nYktePB27zox8n4Lrw9RJOcHE7t2oTa2qLji8/IK8ZAQhs1MIdFBcIbAxj9o9Abonf
         OtTffl9Z9LtmP7FPeZfVBlR6FuL/fD6S5ImUTB7R/IYvH4xw1I1pDB4dxFhHoCOXPkvX
         2r7A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=Y8CfC4Qv;
       spf=pass (google.com: domain of dmurphy@ti.com designates 198.47.23.249 as permitted sender) smtp.mailfrom=dmurphy@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=Rk1Zs4vsQM7K0qlkOFD3qLP6K9WirwHQnYW1qqntaP8=;
        b=Zmo5C8LeOlfxTnmNKBun0aqvSEcyBA1CCJSahki8tKVlNgwgbfPPz0fbTd6I6Hpn/V
         PgnEyo91H9qUPieG7HI1X4QMlHnGN4CKrENMTvMWFepPRhZJ77iSBawpj0x85FHosJh4
         YqDqb+H9cSf/p5SSRuYujdpJ6nVhCrO/ZqQVrd+FvWsdHkqMSIiois78+3s5+0uhCn8m
         gkkiMiCMFKEcueKkqGAdQQcd+njlq8aHZRyaxMl7ISbD/bOWXWrvT/1wOjJnSf4Qra/5
         A6N9yzQhtXk+tygzIrzDsqvpQrGr55zI2RpT45XNsQNIc24mqCQxtf5k3o1jzk1RoFB4
         pE/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Rk1Zs4vsQM7K0qlkOFD3qLP6K9WirwHQnYW1qqntaP8=;
        b=CvZiIZ9WFOzwHFJ1aYwTnTrf5dt7k6XFdPtmlCC7BaJX0l0dUxXTxm3Bl/Hx2+rV2p
         H1yCD02B3g7W8oaYsuVk6ql69zSdmj12ViIc8VNcn9JCDQ9KMbXE7oEiG/Cs1LWD6k/c
         GJOlAGHtu/y1ZKOyWLqiFqx2CRBTAfXJF83qSkezOl6tBY2pn42IvwcFNxH0mvtRTORV
         aXvOYhFT6wCSDnzG7kZbUgoMzC65PIDKZZvUbfQIafubwTwrC3gw0SfMD8aieRZ45Fde
         ILKZpp5rgkqyoR/30Reh3E+nDRmVq9HNoBKb8qCz9Kn2fNt5mZkkccWHHCvbZjEV/3Il
         1qvA==
X-Gm-Message-State: AOAM5325Clz1IhvD2DBkMT9jBTwj0hUcwi9fAbYZat/AIN/VJPmEl/8C
	pL8/0puVtEfKzeYkNrE1NfY=
X-Google-Smtp-Source: ABdhPJz7PeBuRSDc8wxQPNOtrpskV+uZZrm6/T5AyKjE1nMJxhBJthp6DdTKwTFIokTBwPQqg0xcMA==
X-Received: by 2002:a17:90a:e016:: with SMTP id u22mr26912229pjy.28.1590504124101;
        Tue, 26 May 2020 07:42:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:1cca:: with SMTP id c193ls3959214pfc.9.gmail; Tue, 26
 May 2020 07:42:03 -0700 (PDT)
X-Received: by 2002:a62:1d89:: with SMTP id d131mr22082501pfd.294.1590504123675;
        Tue, 26 May 2020 07:42:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590504123; cv=none;
        d=google.com; s=arc-20160816;
        b=FUUei8BYVBZRD7X9xskjNaRgdtARdS6gue8Nqc8wfTVErV8D81LlpukI7G0x1x+6JS
         4GeT3qOLPeaevF8OyitBxNaHb9bs0ISrQpZVEQV12anvMcE57hHFX8MpNhLW9pAnsILK
         tRpPRWjqwbHuRXMpU573HnX/p1bvHccGYOxUQ6n89wwJY7O7mOO900zEn8ciUZ3D50tZ
         lPenxdxwlFX11MDWjm19GYH52MGjLu9rk7S5hZLB3VS5sHAZW4sPENcgtx51nUgtGZlT
         FIXnWFbrZtK1mJF5IRRoxvCILz7D6EI93SPRu53bZW6RuuZ2ku44n6oqKR5ucVTHnpD9
         pWZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=kEUtdtJZcvSXue8IMnS39FnD+QBwkTQxI7JxWo4gA6I=;
        b=Z7UCOQ6XIBGf51DKxm4aZK2HzAll5rxCvBSS0k5d7PJDSFaZNAqgwzCqIsIQsZJtCE
         lti/o0eziY4BjA0fljZaEX2WR2PpH1nYzRamvDpahH6zIllhr/YKEp7buPdJoLklEQnO
         bt4AVo+2/s3c/9UXE/65cq78I05oMblazvVKGg12XgWr2IMw7d/ukKDqFbryg484bSgA
         9nCJFVrcXoSSEKBilw3l2MqSmLggMWMuFr2SHhynpXpsO8CEEWxHBiQsw3gnYL6biqnu
         K0pOrAwi3HQyctJTRktKBiC2lneQgfvOXC8UN6vjpZHt5H0sjdIMwAhpBaudFbxb2Msg
         MJUA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=Y8CfC4Qv;
       spf=pass (google.com: domain of dmurphy@ti.com designates 198.47.23.249 as permitted sender) smtp.mailfrom=dmurphy@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from lelv0142.ext.ti.com (lelv0142.ext.ti.com. [198.47.23.249])
        by gmr-mx.google.com with ESMTPS id e6si13054pjp.3.2020.05.26.07.42.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 May 2020 07:42:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of dmurphy@ti.com designates 198.47.23.249 as permitted sender) client-ip=198.47.23.249;
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 04QEg2ZG031459;
	Tue, 26 May 2020 09:42:02 -0500
Received: from DFLE104.ent.ti.com (dfle104.ent.ti.com [10.64.6.25])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 04QEg2OA004826
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 26 May 2020 09:42:02 -0500
Received: from DFLE111.ent.ti.com (10.64.6.32) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Tue, 26
 May 2020 09:41:06 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE111.ent.ti.com
 (10.64.6.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Tue, 26 May 2020 09:41:06 -0500
Received: from [10.250.52.63] (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 04QEf5QL004730;
	Tue, 26 May 2020 09:41:06 -0500
Subject: Re: sound/soc/codecs/tlv320adcx140.c:776:34: warning: unused variable
 'tlv320adcx140_of_match'
To: kbuild test robot <lkp@intel.com>
CC: <kbuild-all@lists.01.org>, <clang-built-linux@googlegroups.com>,
        <linux-kernel@vger.kernel.org>, Mark Brown <broonie@kernel.org>
References: <202005230320.TWdmRD2n%lkp@intel.com>
From: "'Dan Murphy' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Message-ID: <a9949577-92ce-75dc-f8d7-96d758f3f1c0@ti.com>
Date: Tue, 26 May 2020 09:41:00 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <202005230320.TWdmRD2n%lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: dmurphy@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=Y8CfC4Qv;       spf=pass
 (google.com: domain of dmurphy@ti.com designates 198.47.23.249 as permitted
 sender) smtp.mailfrom=dmurphy@ti.com;       dmarc=pass (p=QUARANTINE sp=NONE
 dis=NONE) header.from=ti.com
X-Original-From: Dan Murphy <dmurphy@ti.com>
Reply-To: Dan Murphy <dmurphy@ti.com>
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

Hello

On 5/22/20 2:16 PM, kbuild test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
> head:   4286d192c803571e8ca43b0f1f8ea04d663a278a
> commit: 689c7655b50c5de2b6f0f42fecfb37bde5acf040 ASoC: tlv320adcx140: Add the tlv320adcx140 codec driver family
> date:   3 months ago
> config: mips-randconfig-r014-20200522 (attached as .config)
> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 3393cc4cebf9969db94dc424b7a2b6195589c33b)
> reproduce (this is a W=1 build):
>          wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>          chmod +x ~/bin/make.cross
>          # install mips cross compiling tool for clang build
>          # apt-get install binutils-mips-linux-gnu
>          git checkout 689c7655b50c5de2b6f0f42fecfb37bde5acf040
>          # save the attached .config to linux build tree
>          COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=mips
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kbuild test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>, old ones prefixed by <<):
>
>>> sound/soc/codecs/tlv320adcx140.c:776:34: warning: unused variable 'tlv320adcx140_of_match' [-Wunused-const-variable]
> static const struct of_device_id tlv320adcx140_of_match[] = {
> ^
> 1 warning generated.
>
> vim +/tlv320adcx140_of_match +776 sound/soc/codecs/tlv320adcx140.c
>
>     775	
>   > 776	static const struct of_device_id tlv320adcx140_of_match[] = {
>     777		{ .compatible = "ti,tlv320adc3140" },
>     778		{ .compatible = "ti,tlv320adc5140" },
>     779		{ .compatible = "ti,tlv320adc6140" },
>     780		{},
>     781	};
>     782	MODULE_DEVICE_TABLE(of, tlv320adcx140_of_match);
>     783	

I am not sure about this issue the same code appears in many drivers ie 
the TAS2562 and that did not create a warning within this build AFAIK

Dan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/a9949577-92ce-75dc-f8d7-96d758f3f1c0%40ti.com.
