Return-Path: <clang-built-linux+bncBDNYNPOAQ4GBB3GGX7ZAKGQE6T4K3IA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x439.google.com (mail-wr1-x439.google.com [IPv6:2a00:1450:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id D3D26167F8B
	for <lists+clang-built-linux@lfdr.de>; Fri, 21 Feb 2020 15:04:28 +0100 (CET)
Received: by mail-wr1-x439.google.com with SMTP id a12sf1051847wrn.19
        for <lists+clang-built-linux@lfdr.de>; Fri, 21 Feb 2020 06:04:28 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582293868; cv=pass;
        d=google.com; s=arc-20160816;
        b=PZqiJ3KRHUiMgv8lBF0n1CqYcfPopFRhiAh79TEpPjHBnCPuguuBFLWz5+RvEZ12/4
         +yPuRBlWlAIoT3ZP8/YRapB+pPunRG8gkGHSGB/vsAVMDpVXo/gfmNN+Yf7piIVNt2K4
         3BoER28BBeY7m/BrvykfS/z+XCZzSlpTc8HPXFCXCvNT9X2TshCXSRpWHgNuYqz934AH
         HZmrTxXtmwgqhRg5yekErBSID3ypkJ8FpBcYRgwaVkalGIroYX3353tjouDBgvmQNsoy
         g6vtcTVi0eYE028Gc9zbm4AnsFxeLi9d17m/wlfs8VqcI7/NLw+o8VcF/QxStPzoaP0v
         GNOQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:autocrypt:from:references
         :cc:to:subject:sender:dkim-signature;
        bh=0Lgs0Ivp/AKatBQl3CUDioP+fDGWTBLeRs8ijx/NcRU=;
        b=kvMq/2g5Crmh/BGtOe9W+WwQv0JlTg+mR4ptxkT7TQ9dY5y32aJ4Cc9e0D6CuYTlY/
         U2/u/dN9SpiuoiHZPGGDjFCNbn8xVorZJb0AqMLFDSrhCR32NLNDF7kc1UxFpPH9mW71
         OqNdjcn4eSRSm70PQ7vjSL/BVYRJceC474I/eT2r40Al7lR7eSxP4CdrrH2t2CNBXRQ2
         r12f56pAad1Zvb1dePBKAS0JsN7eUdVMs14Kb+ymXWFvKRc8ivRwiFMLPUS33Up0t5Rt
         A6AY8RVTlgp8xdaSanbEmLRAaCd2SRtPE85G4SQD+EeQbQTyJp9hqWgV23U7MmY5YpYT
         q0mw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@embeddedor.com header.s=default header.b=yXvmLqdc;
       spf=pass (google.com: domain of gustavo@embeddedor.com designates 192.185.50.252 as permitted sender) smtp.mailfrom=gustavo@embeddedor.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:autocrypt:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0Lgs0Ivp/AKatBQl3CUDioP+fDGWTBLeRs8ijx/NcRU=;
        b=KkG34hmRQj3ijNJcAQ6aRXKAUugXZ3XydK3vPOnyFcajwjpOUWsD6zFiXWlQP+AjNL
         SW9wIhm0s9ohU/mqdLDFR1BaUokD5XNLz4zROErJy6UqovtTr7bSKyjKBZaOO+MTVM05
         +5pwnCSKqKkfo2AyyjODCOz2gzWOfc6XCX+J+E2AiXoop9VwkLSR1TDdA/1IzVkpkT6M
         J1jU4ADcgNRF2DL5JovQGEGegm2RrK+4ziJe7vCSkphz/w0l1U2WBU4BfzCY0eYgx1qj
         h36eJDbE5iFA5Dxm4TeuyD7Cd/JAalXn81teaRgUlaLNWOMbgCYuTnuH+ALdBpA+yf3V
         RCng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0Lgs0Ivp/AKatBQl3CUDioP+fDGWTBLeRs8ijx/NcRU=;
        b=kMfVkv45eBgOEV9AjNN8J/dZfqhdXvyxtSbd9SyzPsEaCNNvdeQuSFKN60PpJmNpeL
         kP+GOujFT+6P6mpX0WPgiOic4khYt4S8hVUUeSGvpbX28573RjrOnKLCJk24Q/m+z+Zw
         UG3P1Nh3KSuXJGfYgYVELIK5dBJm8+lL5L4ezjLq+7g6nxVVwSmMu5nGg60X+iXLR/2e
         uc6LT2w9wt0MJR76TrXLOliDcN86yhw6xjZfYg+qAbNFsUg/q/jRLy5owuSuf/dftWm5
         6DDq6YfJJLRve0nl6RzLhuYrNd15dAoFUHaWTkJwNnMWnHhTcXD/KAHQ434LqA8WsK1X
         PB6g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUfz2CZWqy7gp3dOjzW5AdZSd5jQkti36rMzHzMNANBNwgin5wy
	N7+xOMOIVeZhjknCp7EmXDo=
X-Google-Smtp-Source: APXvYqwEQWPNB27U88xNe7vD3cOTH8vZQbhMfgTAlEiiyEVO65/Q26DczPvX7ZbWb+/I0mEasc8R0A==
X-Received: by 2002:adf:e683:: with SMTP id r3mr51783691wrm.38.1582293868614;
        Fri, 21 Feb 2020 06:04:28 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:600c:247:: with SMTP id 7ls960711wmj.3.canary-gmail;
 Fri, 21 Feb 2020 06:04:28 -0800 (PST)
X-Received: by 2002:a1c:dfd6:: with SMTP id w205mr4193249wmg.151.1582293867441;
        Fri, 21 Feb 2020 06:04:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582293867; cv=none;
        d=google.com; s=arc-20160816;
        b=Kc/t3jder3zwC4webqBhFtybUEF/e/iNbnODSlntVRLce5Dhx8IXifG8H2DIrPx0aX
         +QbaAyn5JFr5vYsitn+I04t1GmVVfAlEIBYGho99D12Oh5tSscvcM52K2CCj5/B+7mkp
         Otq4/Lzc66meJpNoH5yHuKDZmP6xVr/xkVR8vru9LWjCrG2R7B7pqoxyDVQtAnsJRqd2
         Xvin/7hwTnCsVKiSryjURgrfoJPFPxN8lrMAG9HCSJL5cX7D9tf9ILW6NEPbvixGtNF7
         wL3OACu1PPGO54F2pOrr5CtPvZMOS6w+DjRYTgiVDjlSY5ChGZNIY+Vk4IeNBz+xq+xo
         F9vw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:autocrypt:from:references:cc:to:subject
         :dkim-signature;
        bh=Kd3S+wDZNKaqq1X2AIKteF9B07kyOS/ddfYm7ZalHUs=;
        b=zWnEZhQ9ZJTcvoJe0ihfWpL956ZjXNL140lGYTcLG2Fv4Cnnlv0ZYciq1t/j0MfW44
         zzQEqtbufl4efk5Kk9WNBXL2Uea2SEBYdZceqzjHFzpwZBks8LxfCfhv51Zc3yqnIMJ2
         rLCnfhtbpnoTFiGsvBPWus2VssHhFCKlIC1W+Dq3EnnOhZJL5MrFcC8B1V/TL9hlOUF8
         OfwMI8pHk7lLt/WQTt5+9iZLqF0FJxcS5Qsgi/4PX9348+Qk3HmPpJN/W251N4WtycXD
         bhFB2giVliPMGR9ufecoywZLOd3Ks8lUJ5WcmnnaTntLkdiyPyK8nBhQLESIWAnjwqCm
         g0tA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@embeddedor.com header.s=default header.b=yXvmLqdc;
       spf=pass (google.com: domain of gustavo@embeddedor.com designates 192.185.50.252 as permitted sender) smtp.mailfrom=gustavo@embeddedor.com
Received: from gateway24.websitewelcome.com (gateway24.websitewelcome.com. [192.185.50.252])
        by gmr-mx.google.com with ESMTPS id d191si312418wmd.2.2020.02.21.06.04.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 21 Feb 2020 06:04:26 -0800 (PST)
Received-SPF: pass (google.com: domain of gustavo@embeddedor.com designates 192.185.50.252 as permitted sender) client-ip=192.185.50.252;
Received: from cm10.websitewelcome.com (cm10.websitewelcome.com [100.42.49.4])
	by gateway24.websitewelcome.com (Postfix) with ESMTP id 74EDE2A56
	for <clang-built-linux@googlegroups.com>; Fri, 21 Feb 2020 08:04:25 -0600 (CST)
Received: from gator4166.hostgator.com ([108.167.133.22])
	by cmsmtp with SMTP
	id 58unjuKxpEfyq58unj1dCE; Fri, 21 Feb 2020 08:04:25 -0600
X-Authority-Reason: nr=8
Received: from [200.68.141.13] (port=8720 helo=[192.168.43.131])
	by gator4166.hostgator.com with esmtpsa (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
	(Exim 4.92)
	(envelope-from <gustavo@embeddedor.com>)
	id 1j58un-0030rB-0y; Fri, 21 Feb 2020 08:04:25 -0600
Subject: Re: [gustavoars-linux:for-next/testing 1/1]
 ./usr/include/rdma/ib_user_verbs.h:436:34: warning: field 'base' with
 variable sized type 'struct ib_uverbs_create_cq_resp' not at the end of a
 struct or class is a GNU extension
To: Philip Li <philip.li@intel.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>,
 kbuild test robot <lkp@intel.com>, kbuild@lists.01.org,
 Nick Desaulniers <ndesaulniers@google.com>,
 clang-built-linux@googlegroups.com
References: <202002211103.MQuVvnUg%lkp@intel.com>
 <20200221051144.GA47760@ubuntu-m2-xlarge-x86>
 <5c39ace2-394d-30cd-1572-118cade40fe1@embeddedor.com>
 <20200221085007.GF14818@intel.com>
From: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Autocrypt: addr=gustavo@embeddedor.com; keydata=
 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
 VtSixD1uOgytAP7RWS474w==
Message-ID: <97c34915-5e71-1e17-ada3-ef1d05dc363b@embeddedor.com>
Date: Fri, 21 Feb 2020 08:07:05 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200221085007.GF14818@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator4166.hostgator.com
X-AntiAbuse: Original Domain - googlegroups.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - embeddedor.com
X-BWhitelist: no
X-Source-IP: 200.68.141.13
X-Source-L: No
X-Exim-ID: 1j58un-0030rB-0y
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: ([192.168.43.131]) [200.68.141.13]:8720
X-Source-Auth: gustavo@embeddedor.com
X-Email-Count: 6
X-Source-Cap: Z3V6aWRpbmU7Z3V6aWRpbmU7Z2F0b3I0MTY2Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
X-Original-Sender: gustavo@embeddedor.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@embeddedor.com header.s=default header.b=yXvmLqdc;       spf=pass
 (google.com: domain of gustavo@embeddedor.com designates 192.185.50.252 as
 permitted sender) smtp.mailfrom=gustavo@embeddedor.com
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



On 2/21/20 02:50, Philip Li wrote:
> On Fri, Feb 21, 2020 at 01:16:02AM -0600, Gustavo A. R. Silva wrote:
>>
>>
>> On 2/20/20 23:11, Nathan Chancellor wrote:
>>> + Gustavo, since I assume the point of that patch is to see what kind of
>>> warnings crop up?
>>>
>>
>> Precisely! Thanks, Nathan. :)
>>
>> I would have expected to get this e-mail automatically... could someone help
>> me with that? I'd really appreciate it.
> Hi Gustavo, 0-day ci is working on this to send clang build report directly to
> author in a few weeks.
> 

Awesome. :)

Thanks, Philip.

--
Gustavo

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/97c34915-5e71-1e17-ada3-ef1d05dc363b%40embeddedor.com.
