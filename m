Return-Path: <clang-built-linux+bncBAABBV6NQ3YAKGQEYGLQTWY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3b.google.com (mail-yb1-xb3b.google.com [IPv6:2607:f8b0:4864:20::b3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 23E86129DE7
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Dec 2019 06:49:13 +0100 (CET)
Received: by mail-yb1-xb3b.google.com with SMTP id w201sf14649864ybg.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Dec 2019 21:49:13 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1577166552; cv=pass;
        d=google.com; s=arc-20160816;
        b=xV1HatiLGyeotyDveoGlD/u8DY6eWLxMaT4N2LFDZrG/rjzHjqm6GAaLvg5Qv6Jgxb
         bl9nmtSYWOkdnbMKkDFMhkehYS8f2wfj495HgAKECbjTYFUs1D6xZQNZ+xiQNJJEUKdT
         Y+71EDv64hdQKt8nDAfIL+IY3JaghszJD9iypVl/78lJGMk4hmZI2NAhxToxZ7e4Pimr
         CeriBHeUV1jkL9hSUgAm88HDNIqXUQfUEzTCG/tTI+8eahQT8BlkMRjNSvS8tLqhDcY0
         Locl2ndCfDptc6Kv6ubpNy7koyQuxKSTGpr3ngczwh7v1iPVV/lNtW8vEUADzLO0EavI
         1aeQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=p1UB22inXhDEAI6YfvlbQJEaPFKUM969S8FuF2/dVe4=;
        b=y55OqTm7QnBf1QJvd4PYe5Hzi1XVeQmzWog1st1MV2/JWzt1ny7YxGtANnjyJm2NHI
         sckdZMU80Nm4qsF43N+3xqqvkYr4SMlpsvahA/r41PxRT1x4GV0RwbHY0Z8xD60pDcyX
         rYPPPjy46VEtCxAA1biE0C7e0qV12wq9vZis3ttYF0QqAWvr2or29dsZXuxu8QUJVM5L
         wW6MoJvRM6vcdDOXmTJ6ryCeeuwTMKg+tpikmP3E+kMCcEjaD4qWoeG1gHhK32KAjAqG
         cQeYLBHFxzMfP4cS/q3rih6djsSJgyO8kyBfOE5pUEl446o4cAmWBZBx1K/4eHU040I3
         eqTg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of rahul.tanwar@linux.intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=rahul.tanwar@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=p1UB22inXhDEAI6YfvlbQJEaPFKUM969S8FuF2/dVe4=;
        b=ZtCnF7NyVqD3SVhv1fmpqVrWaYpwVUgYuMCzsBqZczZh6anlMqVEDqqIx2oT9QlNlD
         1VcVPYQCIpGGDuL3Qs4Qa01kXvXb1ggzmsSPnUHS1cBo7jG+U0m4mRKN6cKQP67O6KO0
         Q0xdG7lLKLiWC3Njt0ApkcPKghhbdc73AYaUxHVJr3b8Cndo6/48jq6q3TU3YsuLA5XO
         J/nlluAtYdSbOhXMhzdQpnvNEDOSgrjzroQ38nW2mT3BmNcSCD29IrtFFpw8/OGFYHe6
         ocAQ88uP1HYBybQFiDykBCOzVUFwNt4+wzc2ziS6btvbN77A3d8g79vpzRCEh1Tgm7HH
         xrDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=p1UB22inXhDEAI6YfvlbQJEaPFKUM969S8FuF2/dVe4=;
        b=B5BtQcryzCZTsUDgZrQ4+J36W7rmcva/RNlmhuJnPvoh637GSas7CCiOC3Wr4hCurM
         Bp3vcVfOesN936yYETXD/yc+Y33AwzRAGJCbg8xqJJydL2unLoKo/MdVEl6wnkD2ssFc
         i9q3n3S4bfpT5WrzJslESrLJ7H1PsyjQtCrgACMk9nTmN4MViB485eMdJJA+TOX2jV0h
         thtYLCtuwpIgwmkX8KU7lXg2pXNk0DOQKpZGGs3etXQa7w1ab8DtQH5pyKLLgN5TCXuC
         iXeDxK7m1J/jgYOx8OqbnTiyVjGGFT+DEbLO69D2FNif99wJEgHbq79naCtkY/TYPhlx
         BL4A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXvYH5dGHu6GGD1nbfK/YqrBPXBrpC/bzIVvfoAORtxGzAcpgqT
	h+KeaixBcj+S8qVHo0k+ko8=
X-Google-Smtp-Source: APXvYqy1+I6T9tLriZkwAaC87oMPJ+K7UhJMbCj5NFyABXCWn6avNTAqkWPkk+qaVJ6bLjBEk29jUg==
X-Received: by 2002:a0d:ebcd:: with SMTP id u196mr25407046ywe.338.1577166551760;
        Mon, 23 Dec 2019 21:49:11 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a81:9444:: with SMTP id l65ls2754812ywg.5.gmail; Mon, 23 Dec
 2019 21:49:11 -0800 (PST)
X-Received: by 2002:a81:1913:: with SMTP id 19mr24686648ywz.17.1577166551433;
        Mon, 23 Dec 2019 21:49:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1577166551; cv=none;
        d=google.com; s=arc-20160816;
        b=ctPHPm7VsHNoriL7KH5v+umKdiD7XQVvHNMhf3SScJ+c6UR7vJ5GpQJFHGSK51Kt1T
         s8dSufWFg6YFPJYGpBw2w2YvSt56amzLNjoOO26oVbUWo5tsXkj4B/HngZOgdCFJdkHR
         QaxTiy9h2MMWoDfatiy501U2tCoGRBmCugD8WxxpQvpuSNtGCb/eW68jEeL3Yzrjvcnf
         GaJDPPJVNhQeCExAwbRWVhRQn9ipFzzM9YFhACzV9wcR2fQPVAV6ezqLuTCziMnDGETr
         8Hnlbn+qRkOJw5I7/JPjr5W6IONu948C14NosEFFe79zjT6gsAJYiPYwpK1n+CmLDXxC
         HaUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=Lv95wMDQUVR5W7IGvfu+z4xh7nEJ79f1Cm2txBNPjnw=;
        b=YJVzkTybGi2Ss3kkyaSADHwuR8/TtAtOiXWRs2LkGg3rxbk42fyf/s8H1OwSvQhC9Z
         +6VoNQs97EXypmEHgcCJ8pVkVfSgzIwpIJiIHgPWdtnXnbi900tWdmn5VDTT9Ou7Gr7M
         dg5o4lxzYNTCtyVNg6Aput7MAJyRNZEJidfp3bknQe8gOwQ2qY9lDSE7hD/ZrQzGT+cm
         HUF09hpPi8qwaeLjUcvrjZEir6/3Ucyed+fT/0ABySERsOqSFcLcGWAIEe95cWLLCqNM
         Y54CCeuaC5agigE1g4bBpxr/+UBOg324g6ooJA4lMQgE7JMF8/0Kl4J4vVYJI8JZRz8u
         KFeg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of rahul.tanwar@linux.intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=rahul.tanwar@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga06.intel.com (mga06.intel.com. [134.134.136.31])
        by gmr-mx.google.com with ESMTPS id z5si964578ywg.5.2019.12.23.21.49.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Dec 2019 21:49:11 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of rahul.tanwar@linux.intel.com designates 134.134.136.31 as permitted sender) client-ip=134.134.136.31;
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 23 Dec 2019 21:49:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,350,1571727600"; 
   d="scan'208";a="242421618"
Received: from linux.intel.com ([10.54.29.200])
  by fmsmga004.fm.intel.com with ESMTP; 23 Dec 2019 21:49:09 -0800
Received: from [10.226.38.1] (unknown [10.226.38.1])
	by linux.intel.com (Postfix) with ESMTP id A898E58046E;
	Mon, 23 Dec 2019 21:49:06 -0800 (PST)
Subject: Re: [PATCH v2 1/2] clk: intel: Add CGU clock driver for a new SoC
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: mturquette@baylibre.com, sboyd@kernel.org, robh+dt@kernel.org,
 mark.rutland@arm.com, linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, andriy.shevchenko@intel.com,
 yixin.zhu@linux.intel.com, qi-ming.wu@intel.com,
 rtanwar <rahul.tanwar@intel.com>, clang-built-linux@googlegroups.com
References: <cover.1576811332.git.rahul.tanwar@linux.intel.com>
 <ee8a8a0f0c882e22361895b2663870c8037c422f.1576811332.git.rahul.tanwar@linux.intel.com>
 <20191224052947.GA54145@ubuntu-m2-xlarge-x86>
From: "Tanwar, Rahul" <rahul.tanwar@linux.intel.com>
Message-ID: <c61235a7-969f-f534-e25f-e3990b9c8d11@linux.intel.com>
Date: Tue, 24 Dec 2019 13:49:05 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191224052947.GA54145@ubuntu-m2-xlarge-x86>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: rahul.tanwar@linux.intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of rahul.tanwar@linux.intel.com
 designates 134.134.136.31 as permitted sender) smtp.mailfrom=rahul.tanwar@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
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



On 24/12/2019 1:29 PM, Nathan Chancellor wrote:
> On Fri, Dec 20, 2019 at 11:31:07AM +0800, Rahul Tanwar wrote:
>> From: rtanwar <rahul.tanwar@intel.com>
>>
>> Clock Generation Unit(CGU) is a new clock controller IP of a forthcoming
>> Intel network processor SoC. It provides programming interfaces to control
>> & configure all CPU & peripheral clocks. Add common clock framework based
>> clock controller driver for CGU.
>>
>> Signed-off-by: Rahul Tanwar <rahul.tanwar@linux.intel.com>
> Hi Rahul,
>
> The 0day bot reported this warning with clang with your patch, mind
> taking a look at it since it seems like you will need to do a v2 based
> on other comments?
>
> It seems like the check either needs to be something different or the
> check should just be removed.
>
> Cheers,
> Nathan

Hi Nathan,

Yes sure, i will fix it in v3. I anyways need to post v3 to address review
comments received from few reviewers. Thanks.

Regards,
Rahul

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/c61235a7-969f-f534-e25f-e3990b9c8d11%40linux.intel.com.
