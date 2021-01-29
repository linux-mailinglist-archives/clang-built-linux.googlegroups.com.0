Return-Path: <clang-built-linux+bncBDGKJJF25QHRBNGMZ2AAMGQECA3XTMI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd39.google.com (mail-io1-xd39.google.com [IPv6:2607:f8b0:4864:20::d39])
	by mail.lfdr.de (Postfix) with ESMTPS id 48166308570
	for <lists+clang-built-linux@lfdr.de>; Fri, 29 Jan 2021 07:07:49 +0100 (CET)
Received: by mail-io1-xd39.google.com with SMTP id k7sf6011210ioj.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 28 Jan 2021 22:07:49 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611900468; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ii/P/6ScxV4iBf6UMpOWBcLBWOjDAmh0sEIpNbrw/ka3kGjr/R6kiUq2LyV4VsipwE
         Sm+/jo9uWgwnXjF27iwOboL2g4iBUc9mdQDJByQXJSyiFK2eFu65tgcT2Wd6BKGZB10u
         E0BD21WpADx+kTVkXdOfqQKFP2beUtI/5yUyCyRd3Potjc1GYbAU3ywpLXAx/rqaQXRi
         enYlRhfMx+c2EkOnQ43ciIq/1/w7LjTeBhp2FgRj0A3wcsqY4bywPH7xR2b0nDhJzJX3
         tgfTIbNTKmhzZmPdQX8eaGg1c5i7W+VAggxS1dLwZph3g1SWJls2fCdm9iRSc+s3iKvm
         w8/w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-language
         :content-transfer-encoding:in-reply-to:mime-version:user-agent:date
         :message-id:references:cc:to:from:subject:dkim-filter:dkim-signature;
        bh=V/T9wg6pRAFNdgsbvP27AKj0vOoXM0iHJ3GB4Tw5+lM=;
        b=XfdSEBPdVOKOiXxgeKuGdbai+nu0b880st0t8L6fe75khpryQOwwyJd6wkINkN5o4a
         oaXoeH8WsgKy3XpvZLJfyeOxACXnG3lH0/2JF+e8aqdfwHstxwTvZgQTfC7sG2LbAeAs
         If9fB17Fokm13S0uetTBYcOXHfHOSCoDWv0FeU2S+bxiolLgpzrH/i5qFWhwzekOf3n2
         bcWuY6spws4PUKUxWEMu0A80qPlwmSAN+wDF08Tjryca94hwBiFdbV1Yg9FDl4MM5Y1q
         kYIL8tZ0WUg/1rlkioe5pNEXbQr3Q6CaZeicgp90TAM82ozhr8pILtsoCRZNcQEguDwL
         AMBQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@broadcom.com header.s=dkimrelay header.b=b4b5BOxB;
       spf=pass (google.com: domain of scott.branden@broadcom.com designates 192.19.221.30 as permitted sender) smtp.mailfrom=scott.branden@broadcom.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=broadcom.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=dkim-filter:subject:from:to:cc:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=V/T9wg6pRAFNdgsbvP27AKj0vOoXM0iHJ3GB4Tw5+lM=;
        b=RqAVUSbVl23atsH0wRxERveMQ0TS12/ysqk79ksYU3gKNlp1o9KlsQyYSLGChCNh93
         YBABn2Hc84+sdPOKDhXFiRdJIE2PTI1W6ABZoKePDrqBORynU/6anGihhXJnUce2eK6u
         Qjin17gr6T5SLfUp00FI4dnjWpllaYTg1quoPCxfxfCn/QTYGU6o/i0Q0eVyHMgNUNqf
         rUDWj/e+m2nuXas94ExOtLyAGp3ZUBIqk1vhsr2frfAll5z01r9IQTWKygJUKYDZy3e2
         pUW/m24p3/PdTs/Ee1zFyQ6IeMxTtWHlv50nR/ZDhfD3SCyjBsPAzscbA5gycsBj6ETm
         tCDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:dkim-filter:subject:from:to:cc:references
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-transfer-encoding:content-language:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=V/T9wg6pRAFNdgsbvP27AKj0vOoXM0iHJ3GB4Tw5+lM=;
        b=Es8UflCY1TxfyJVkXFHy2vFVQUELIRwC97PqVMQIUKGz45ar5IwPjJxUUeJYNZOuXh
         mHk+Toh48jt9V8k7hXZOG31AOjLimWEFOF2dtaAlpdadkgV+zCOR5MbD0T+IToCKxePy
         lBivmpjGQk/y1fN8qzPCvd+ljduMuAdD5u68x1Bfwgd48sCX+lYyjxmhImB8hWqu+bpg
         /sqmexMTEwwBVBPWvQ3SQiBYzhUhUpFBhWGVZnNOQSHplItY7Qc8JMO+Hv3S2BCn7xVE
         DtuCQQtb8Bt3/EdcQEoQpjEU9caXbPgTFeWxmhy3LjX+7adDQSBjCbCu3vrjQZ+1toJi
         iOXg==
X-Gm-Message-State: AOAM532JAdX81q8M4yE9UVeWI113YYtNU24P+oDNk+PuHMQtsSJtWc6s
	jEYJ2ugmvc2pOzCDdYqB4do=
X-Google-Smtp-Source: ABdhPJwDoskin2kby0Lpz33eR5SPueown8ZycP2Jc8KX4TRrn5srb9aw6MUq4XPo8IpclvRnuqUc2w==
X-Received: by 2002:a05:6e02:c2d:: with SMTP id q13mr1956787ilg.83.1611900468130;
        Thu, 28 Jan 2021 22:07:48 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:9914:: with SMTP id x20ls1150228iol.7.gmail; Thu, 28 Jan
 2021 22:07:47 -0800 (PST)
X-Received: by 2002:a05:6602:2351:: with SMTP id r17mr2221961iot.137.1611900467647;
        Thu, 28 Jan 2021 22:07:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611900467; cv=none;
        d=google.com; s=arc-20160816;
        b=0LdGtVWP1Q4JiZaGZ7J2Ul5Wp/cPXJnYSDb6Ntt0uf8JneA+OBmM+ODIEGIFTpqfj9
         Sx9gmJvXsygWDbJc9Q/2axe6vo8tkgDD3FK8/9EDnzJpNc2aCLlPfZXtoj02cRX46aYw
         1lqNuXX60ia9cNO+ADiv5r8+Fq+EiGjK2QQc/c8Yv7F0HqleHEwAm/Goi0b0BLwvUhiO
         k5m4or56id3w3RUP/jhrOtezNyaqDQ0eDOEbWtKv41kuBhPVrah68jhvw6mRLEvmVRYH
         ITUhVoqqW90Nh30X3qdPMe50bbTLiwgTdf2fGzk9w8fzV/xttSfKJYDymkJT6l3cOvq7
         4ebQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:references:cc:to:from:subject
         :dkim-signature:dkim-filter;
        bh=MX+VUjHNVvPkK6Bt0c8MD7ofhjKbNY71Jer/++CDa0Y=;
        b=ETN2sANE4i7qUOQaOj4V6Rvpv5zxUMn252kCmpkUL+JWxZXv7ySHpwcUtHitTDYoaN
         D1PM0c1k1byraTOZzPko0RtOLn3XbsIhXe1mLR6oc2NfJ1vZ9pf3f0MruqsLJp0drBkI
         2H+Q1HMGRc50Nwy97IL8Cbx4esPSc56v3gVd0cOcVn9t9cxKXEC+cb+8YfE3IHSz/0L6
         JNteTVfdwjqK4DnxKkxDdaBF3lkSZ2YGsIqwXLI1yrpXGA/9noQH+EfzbMVAJFoq5Lie
         p1aY6UwPUWligjmGdgq8eGRwtLTUIzYCObffGCcc4RFWVw7jMVvWSlfsDXSWJrTDobPS
         NkfQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@broadcom.com header.s=dkimrelay header.b=b4b5BOxB;
       spf=pass (google.com: domain of scott.branden@broadcom.com designates 192.19.221.30 as permitted sender) smtp.mailfrom=scott.branden@broadcom.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=broadcom.com
Received: from relay.smtp-ext.broadcom.com (relay.smtp-ext.broadcom.com. [192.19.221.30])
        by gmr-mx.google.com with ESMTPS id o7si26233ilt.4.2021.01.28.22.07.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Jan 2021 22:07:47 -0800 (PST)
Received-SPF: pass (google.com: domain of scott.branden@broadcom.com designates 192.19.221.30 as permitted sender) client-ip=192.19.221.30;
Received: from [10.136.13.65] (lbrmn-lnxub113.ric.broadcom.net [10.136.13.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by relay.smtp-ext.broadcom.com (Postfix) with ESMTPS id 54C7B80D0;
	Thu, 28 Jan 2021 22:07:44 -0800 (PST)
DKIM-Filter: OpenDKIM Filter v2.11.0 relay.smtp-ext.broadcom.com 54C7B80D0
Subject: Re: [char-misc:char-misc-testing 33/62]
 drivers/misc/bcm-vk/bcm_vk_msg.c:56:35: warning: operator has lower
 precedence than '|'; '|' will be evaluated first
From: "'Scott Branden' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
 Desmond Yan <desmond.yan@broadcom.com>
References: <202101281343.HHBfhVkw-lkp@intel.com> <YBJwjTi77iQWwD3s@kroah.com>
 <baec5e4c-e4c4-d53b-5ce9-e616a5abde76@broadcom.com>
Message-ID: <4a651a2c-67e0-c14e-c3df-a5827a916e02@broadcom.com>
Date: Thu, 28 Jan 2021 22:07:42 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <baec5e4c-e4c4-d53b-5ce9-e616a5abde76@broadcom.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Content-Language: en-CA
X-Original-Sender: scott.branden@broadcom.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@broadcom.com header.s=dkimrelay header.b=b4b5BOxB;       spf=pass
 (google.com: domain of scott.branden@broadcom.com designates 192.19.221.30 as
 permitted sender) smtp.mailfrom=scott.branden@broadcom.com;       dmarc=pass
 (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=broadcom.com
X-Original-From: Scott Branden <scott.branden@broadcom.com>
Reply-To: Scott Branden <scott.branden@broadcom.com>
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

Hi Greg,

On 2021-01-28 4:35 p.m., Scott Branden wrote:
>
> On 2021-01-28 12:06 a.m., Greg Kroah-Hartman wrote:
>> On Thu, Jan 28, 2021 at 01:42:55PM +0800, kernel test robot wrote:
>>> vim +56 drivers/misc/bcm-vk/bcm_vk_msg.c
>>>
>>>     52=09
>>>     53	static void set_q_num(struct vk_msg_blk *msg, u32 q_num)
>>>     54	{
>>>     55		msg->trans_id =3D (msg->trans_id & ~BCM_VK_MSG_Q_MASK) |
>>>   > 56			(q_num >=3D VK_MSGQ_PER_CHAN_MAX) ? VK_MSGQ_NUM_DEFAULT : q_nu=
m;
>> That is a pretty horrible chunk of code, Scott, can you make this a
>> "real" if statement please so that we can read it?  :)
> Changed to readable if statement and v10 patch series sent out.
> Also fixed compile option if CONFIG_TTY is not set in series.
Apologies for sending out a full v10 of the patches with the corrections.
Sent out individual patches that can be applied to linux-next to correct th=
ese issues.
>> thanks,
>>
>> greg k-h
Thanks,
=C2=A0Scott

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/4a651a2c-67e0-c14e-c3df-a5827a916e02%40broadcom.com.
