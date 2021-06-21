Return-Path: <clang-built-linux+bncBC6JD5V23ENBB3NWYGDAMGQEVOCTOFA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x239.google.com (mail-lj1-x239.google.com [IPv6:2a00:1450:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id CBEE23AE5FF
	for <lists+clang-built-linux@lfdr.de>; Mon, 21 Jun 2021 11:27:09 +0200 (CEST)
Received: by mail-lj1-x239.google.com with SMTP id bn8-20020a05651c1788b02901274fe2c687sf8957899ljb.1
        for <lists+clang-built-linux@lfdr.de>; Mon, 21 Jun 2021 02:27:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624267629; cv=pass;
        d=google.com; s=arc-20160816;
        b=ML+Vqi2uD7lSWKDQ9xvE7MR5QX54hw6ETsqsqKcYTxjql8i2jHVHf6YdDAReB8sIk/
         xgOUJ86oXrq/AV+ZOMSDz0ENrtZH8WIjXcS9OctDvkkqphfOVDfrmNc/LWvVJkrwHIZE
         ITw8bFwnZ8ihdR7g527Hig4uUn6tNUBwGdozOkMUlp7qVHPoOmT51wI4tkt9LU+u8+qK
         TbPpBfRoejBmycJosWMcQn4iBgPnSxncN1d+yC7gQHE75NVfZAICRJ24KehmZgQr34Qv
         hWLDtXytXFqlZq+b1cOX3Xex3FN47rCkOcgDE+NacGaiOwvojZFS5w3le3Jnvf140PXP
         sUrg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=DJ4kQ2sldwSuoe0W4JephMeuy7HhXrFwVZF5mdk4+wk=;
        b=oTbYyvi+f8a09J+BJ/f2/Xa++fX7RrHGWYnHXmqD3dN5YJA0NGKFZXlv1/5RD4G5bS
         Dk/CO5tLBHK9VIS5d8LmNhuRQuIr55NEyAgpxg0Tc4EXWApe6yHpfeTTYNB/KRe1m3Ev
         aLxvN62A3lHycH3aTXZNF00s9XcWD6NlDChMbXKx9M+IU09jToACNaWRQVAKDn/v/e9J
         ZdHSC5QWio7MioHVRvETUeTvM2HBF15wtPK308rRAorFjmhdwOcMduVRybDO4vrTSKuh
         MvWa9iGHVrsFhdyC0OrA6ES6iWZLxB6BhLCAwHJ/7qzjknuPXX1+Mn4ONNmXPErkdYYJ
         OcUQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of k.kozlowski.k@gmail.com designates 209.85.208.45 as permitted sender) smtp.mailfrom=k.kozlowski.k@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=DJ4kQ2sldwSuoe0W4JephMeuy7HhXrFwVZF5mdk4+wk=;
        b=Fku0jhCtZC4MvTEqjTzQQhthpaOikC+FMysBPcX4oTB9OmVTrcFbUlTu+uKdFwWUue
         6l2jdpjoGKa87/cCREA9O762p61nBSUHwBqT4X5USR35ojznVpzuyWPPwib7Mex6X7E5
         OzprmkJC4lASi6D7JUGMGWYdq6X1V/DBdeI368dKNeXkNWknuhXuVTGhVSSD6X+Oo0Y7
         5erpZUlJQQfxgNHkKzh1brL+JppLpefc5q2VIsH5h2or6tWGtIlaoKMnspQ3zc/BCybB
         YUGtlDpSYiFTzYzS53eXq0FUuHpBZjV47qaEibEjiByjNjfsel/ajGWe022QBCiitUCg
         r5Dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=DJ4kQ2sldwSuoe0W4JephMeuy7HhXrFwVZF5mdk4+wk=;
        b=AJd8aILy6QwKwDk6BHlqXILozGjCYYLrTl55/QxPom3TXfER+LPUIKH6ZJyq28uyNp
         fE4Exl795QFfmwMej8LFhAn40P8LRaTWXUVZ2/K/hfiu4sFsJz0A9RXujsyt38Hw5G2N
         AWdWk0CcYTPQ1YgNtGc+i4jUyigW3z8Xt9RQsWXz/9vrNK8sOVo+3/hd89Vbfxqqf9fY
         bdA/17sbuHiY86KdMbIL0EaNY7L7Aj3e+L4Qocap+sZrE08ekiW8+yOvkqGg/ZcuaqGV
         lVB4vj+G7dfOybbzjoHKZ32WEDD1qIYFSGSSo+fK0ecDgroQEyjvzwdp8ZdGwXfguYVO
         Xb+g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532vOUCS2bA6bXIhPx/tDi2kfsL989FZbz3afS826CuIUhxRQv6F
	sckzI1KpNbTyL6Qe4laB+mY=
X-Google-Smtp-Source: ABdhPJxqwp97kTgoscID3xmMf0h35f+Wg2VZ2FQrtXUk+xjMhB6kbGhME0wyJIkQu687UrlXmdlnzA==
X-Received: by 2002:a05:6512:6d4:: with SMTP id u20mr13368861lff.651.1624267629312;
        Mon, 21 Jun 2021 02:27:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:3b99:: with SMTP id g25ls4729lfv.2.gmail; Mon, 21
 Jun 2021 02:27:08 -0700 (PDT)
X-Received: by 2002:a19:4c85:: with SMTP id z127mr13705566lfa.336.1624267628170;
        Mon, 21 Jun 2021 02:27:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624267628; cv=none;
        d=google.com; s=arc-20160816;
        b=E/k0VnFgKluSxRdmyAlA3owVQjiESMqssgUQV+rquF4z8zjSphtEBQ/8SaY0i0otoQ
         gzezlz4t07SmvOZXv1jcZMPPSscqyJAiAmhCDIou5/iTqDAQ5yFr57PM82qj4RITEktg
         H9EKCKeuAWnzXBLtogkgNq281cIob71z8D3QtlqE2G179xSlCXtFcJAasRwE61Ec4C50
         +Nlnp54SCOG+u0fhUjGNiViZXuulB/tDZwC6jr+5va3Pap2a4zQ7iDVLe/Wpu2QoLgGt
         Li9dKLx6G/ImH993/a/YNcyiHqUBa3CWJtz0ku0shD8as9vns6Glwcf1//7LzBuROr/b
         Y76A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=2bJhduk1JE2/nlWsz97OoiHm5V97FfHENyACfDAcD8Y=;
        b=aw69MMBPCuvLKJS/q4jQLtEH1HMHBAfdc/gSAiZBOBJgtEWmeT/cMeOY+9RemUe2Vv
         ua+kHJz27L7lNv5UjalAJ27UYl5EeTosfLlyWt8UjUDNfjU27cjRm7aMSr/dVzXvWHEW
         9tIsO/kCmQXa3fvYYKVgPogZOKl2d3c8SjFFlsE77VQdSr7vTTRbWL+MbFkDZG+wWOkV
         J4G5cAQwB4BTAT4BiWA+cK0AWEcfMBK8EOKYWHFZujd+KvwL43aDoU99TjbMqqE0sl3F
         d4eqgrfSG3w4cvhr25aWNyk53140kupfkoj7Iz2JU2eBoL0ou07n11ZPU1RAbtDtbU+K
         53JA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of k.kozlowski.k@gmail.com designates 209.85.208.45 as permitted sender) smtp.mailfrom=k.kozlowski.k@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com. [209.85.208.45])
        by gmr-mx.google.com with ESMTPS id j7si648826ljc.1.2021.06.21.02.27.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Jun 2021 02:27:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of k.kozlowski.k@gmail.com designates 209.85.208.45 as permitted sender) client-ip=209.85.208.45;
Received: by mail-ed1-f45.google.com with SMTP id df12so15483278edb.2
        for <clang-built-linux@googlegroups.com>; Mon, 21 Jun 2021 02:27:08 -0700 (PDT)
X-Received: by 2002:aa7:d799:: with SMTP id s25mr19113429edq.161.1624267627645;
        Mon, 21 Jun 2021 02:27:07 -0700 (PDT)
Received: from [192.168.1.115] (xdsl-188-155-177-222.adslplus.ch. [188.155.177.222])
        by smtp.googlemail.com with ESMTPSA id og37sm2625982ejc.100.2021.06.21.02.27.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Jun 2021 02:27:06 -0700 (PDT)
Subject: Re: [linux-next:master 5946/11253] ld.lld: error: undefined symbol:
 reset_controller_register
To: Philipp Zabel <p.zabel@pengutronix.de>,
 Thierry Reding <treding@nvidia.com>, kernel test robot <lkp@intel.com>,
 Olof Johansson <olof@lixom.net>
Cc: Dmitry Osipenko <digetx@gmail.com>,
 "kbuild-all@lists.01.org" <kbuild-all@lists.01.org>,
 "clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>,
 Linux Memory Management List <linux-mm@kvack.org>
References: <202106182243.KgZxMD9A-lkp@intel.com>
 <YMyzKmDO+SJt8n4N@orome.fritz.box>
 <b29290ec-679d-322f-0cd0-32358533aac7@kernel.org>
 <5455875a86b33ecbbc94156c0c799e7224bba93a.camel@pengutronix.de>
From: Krzysztof Kozlowski <krzk@kernel.org>
Message-ID: <a9a17943-e672-2475-5e30-244283986a7c@kernel.org>
Date: Mon, 21 Jun 2021 11:27:06 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <5455875a86b33ecbbc94156c0c799e7224bba93a.camel@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: krzk@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of k.kozlowski.k@gmail.com designates 209.85.208.45 as
 permitted sender) smtp.mailfrom=k.kozlowski.k@gmail.com;       dmarc=fail
 (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On 18/06/2021 17:53, Philipp Zabel wrote:
> Hi Krzysztof, Olof,
> 
> On Fri, 2021-06-18 at 16:55 +0200, Krzysztof Kozlowski wrote:
>> On 18/06/2021 16:52, Thierry Reding wrote:
>>> On Fri, Jun 18, 2021 at 04:21:45PM +0200, kernel test robot wrote:
>>>> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
>>>> head:   e71e3a48a7e89fa71fb70bf4602367528864d2ff
>>>> commit: 56ebc9b0d77e0406aba2d900c82e79204cc7dc32 [5946/11253] memory: tegra: Enable compile testing for all drivers
>>>> config: x86_64-randconfig-a001-20210618 (attached as .config)
>>>> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 64720f57bea6a6bf033feef4a5751ab9c0c3b401)
>>>> reproduce (this is a W=1 build):
>>>>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>>>>         chmod +x ~/bin/make.cross
>>>>         # install x86_64 cross compiling tool for clang build
>>>>         # apt-get install binutils-x86-64-linux-gnu
>>>>         # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=56ebc9b0d77e0406aba2d900c82e79204cc7dc32
>>>>         git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
>>>>         git fetch --no-tags linux-next master
>>>>         git checkout 56ebc9b0d77e0406aba2d900c82e79204cc7dc32
>>>>         # save the attached .config to linux build tree
>>>>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 
>>>>
>>>> If you fix the issue, kindly add following tag as appropriate
>>>> Reported-by: kernel test robot <lkp@intel.com>
>>>>
>>>> Note: the linux-next/master HEAD e71e3a48a7e89fa71fb70bf4602367528864d2ff builds fine.
>>>>       It may have been fixed somewhere.
>>>>
>>>> All errors (new ones prefixed by >>):
>>>>
>>>>>> ld.lld: error: undefined symbol: reset_controller_register
>>>>    >>> referenced by mc.c
>>>>    >>>               memory/tegra/mc.o:(tegra_mc_probe) in archive drivers/built-in.a
>>>
>>> Ugh... more fallout from that compile-test enablement. It looks like
>>> that compile-test stubs addition patch for reset hasn't found its way
>>> into linux-next yet.
>>
>> Does it mean reset tree is not in linux-next?
> 
> No, it is. It just has been merged into arm-soc/arm/drivers a day too
> late:
> 
>   $ git log --pretty=oneline arm-soc/arm/drivers | head -n2
>   25da503ecce8f523c1c1c678659cb484d3bcd73f Merge tag 'reset-for-v5.14-2' of git://git.pengutronix.de/pza/linux into arm/drivers
>   1eb5f83ee936de6a69b2bcee95088a6e0ab7c202 Merge tag 'memory-controller-drv-tegra-5.14-2' of https://git.kernel.org/pub/scm/linux/kernel/git/krzk/linux-mem-ctrl into arm/drivers
> 
> memory-controller-drv-tegra-5.14-2 contains the offending commit
> 56ebc9b0d77e, which depends on commit 48a74b1147f7 in reset-for-v5.14-2.
> 
> Is the arm-soc/arm/drivers branch still mutable? IIUC this could be
> fixed by reordering the two merges.

It won't change the bisectability, just the scope will be few commits
narrower.  The damage is unfortunately done.

Best regards,
Krzysztof

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/a9a17943-e672-2475-5e30-244283986a7c%40kernel.org.
