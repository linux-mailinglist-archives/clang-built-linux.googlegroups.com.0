Return-Path: <clang-built-linux+bncBCLMHO6ARMORBIV6SXZAKGQE7JUSDMQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x438.google.com (mail-pf1-x438.google.com [IPv6:2607:f8b0:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 5100915C072
	for <lists+clang-built-linux@lfdr.de>; Thu, 13 Feb 2020 15:37:24 +0100 (CET)
Received: by mail-pf1-x438.google.com with SMTP id r29sf3823103pfl.23
        for <lists+clang-built-linux@lfdr.de>; Thu, 13 Feb 2020 06:37:24 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581604642; cv=pass;
        d=google.com; s=arc-20160816;
        b=pFJLJfWCa52zNZkdksAsEHu/80cOgtlFetCJtN9g4IWTgruFR9B9bV5ZUbsSKs8Lws
         q2ZuaU1m3Rppir/rtjrHHMa/SpcT3/zsCHw6AaeMhdpJxqmN+uuGSXmgNFwDnD5g8zdf
         x4rt61u+Sm6G+9c5AuwWIiaYSV8ywZ268ZzL2wVMHqDD7M7cO6udzqcOJ0EsQfQr4frD
         lmJQAlRGVw1KHkIGjS/VGoXQkF7mWeCNi+TR5FyCF/hnjLO9le14109I3/88oSYzFiNt
         +43bf/Re+pzIxxBD04Xrs1LWanmDO49AyzOaaufT5DBaP2nwVGmQmhvoq/A5TCofmedf
         3UjA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:message-id:date:references:organization:in-reply-to
         :subject:cc:to:from:sender:dkim-signature;
        bh=as/2R/aiZHsOf2DryqbJPKc0inf/3jZR/lwHTqgXohw=;
        b=Bw2fFmKVDUxItqT1JM704zzHno17SU1n4amiKFBg2ODiVk2b9r7o4R1Z/8hxQHqdW+
         kzkLfym1uQDXiznQ9cte8F4c+jwm2GFOXqKOxYXnca3lLvvzmMFyiUor8cZizNEPHBI9
         TpDZsLh26uae/tVDPfg0z/YzmyineUHLdL4y8CY/W/wnGuRH64AoOcD5NADzE+BjFOXC
         w+qfwBIIhIYa6vwfvNHXqvv4s1fE1ijb2oOil4M4IWY+sKDw0GbHqggJB/dta/5fUqSE
         ZtFe0/i6KKy6nyJQGakHweMex3YNGKg9zkGhkerc2iAuWZq+2+aJt/izn6STDwRxDChV
         L3TA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of jani.nikula@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=jani.nikula@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:organization:references:date
         :message-id:mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=as/2R/aiZHsOf2DryqbJPKc0inf/3jZR/lwHTqgXohw=;
        b=G4dmqhvVN0nfTsCoBwke0DKv33ULHckNIEdDa3841KziENs0pwKucGNt6LDxyw0k1E
         SRBxA3/WZ13I7rRlszmySHFwTPhuiMSt8Y+JXR7OmkDLNGV78xBl6PVckyycyie6dFjS
         Rz/ZbLxziObDibl6fYbHsjXMFWHEHRuX1fPpn80lIvuszFF08Ri84weeYTUw5PCONKd8
         snBVFOhnne6bUyV2GwnUSwu2w3jVkbXqQ4mfKjsRKT7jSForBsUtJ79j9S9vtYpCNfG7
         65l9n5fbH1cdBl/UgE2CCQ7zZoOd6S3plCEObfIDKMe6ucQZXdU/9qtd06J8dYEU9DdV
         ZW1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to
         :organization:references:date:message-id:mime-version
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=as/2R/aiZHsOf2DryqbJPKc0inf/3jZR/lwHTqgXohw=;
        b=UwU0O1O1u7tJ3qBgmGu0sck2Pisq699XYsB0hgymNDnhvTgZJ/9CeSig52WpZ/x9DB
         kWO/tk47OMwA+KHZYhSzDwAdkBPZiDfaH+h/wLhP+qG1jvP0oUs7EH+07GUnx5GgNA0z
         YIQaimHMD+WTu9eDd0BjWPWG+QB/Qee/78LUvDBVzYNRCklAx+QydDNVhoVrscBIqS76
         HRynggiQRHvbfqvbRdSNWzjVnD42ps7FqFH5z37YKIfbO+Afxe66Mp1iWN8/BbFB8334
         M/sUUAVUHaDHPA8yLkKdFV7MtawTVZUhylIpV7VX10EG01R0FKr8nrVssbTvFHVbEIrk
         iYiA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVz5iX0vjJXHnaXQcSyfv3bEubccvoUYL42xYpuOZPKMfLgfbVb
	tJpWNSYlgdq/ukfj8Z0XyT0=
X-Google-Smtp-Source: APXvYqyNjZNG93AS6sMbtQhuRoq4ww9/H2oia5+z9pfmHzxPrCV5a11lm4wSjjKv7ctbj6r4UicBuA==
X-Received: by 2002:a17:90b:254:: with SMTP id fz20mr5425372pjb.25.1581604642444;
        Thu, 13 Feb 2020 06:37:22 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:ad06:: with SMTP id r6ls2100337pjq.3.canary-gmail;
 Thu, 13 Feb 2020 06:37:22 -0800 (PST)
X-Received: by 2002:a17:90a:8d81:: with SMTP id d1mr5573926pjo.63.1581604642021;
        Thu, 13 Feb 2020 06:37:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581604642; cv=none;
        d=google.com; s=arc-20160816;
        b=G+PXEg5YYUOvojs4upo2kCLGjPNd8jRbIG1Tan1R5v4E9LCPULI4dXXDI1DrKexlC/
         unif0oyNacb92+lSmGfxP+p1bzUmuVcl3LzlQplZPEHlZFvL1AbJYl/xiFw+gmJ2SsuU
         uIHjqNeJxHH84ZyJw/o0/QGY6t2PTJ/fiHX94QuIPovZFGbgzujiyAJVml5cWA/DT+w+
         dPzbtzIHj554KCnDMEacYHiJXKrVqmX/VFlrtsEeweVNqHJU0ruXP/JpEE9RsKmzXoW+
         IHFwG6T3QmNasogqqg/TeFKrNuEIfWe8UN2fvVtRtcB+APZZC2B8Fxfg7prJQLSm8w5e
         QcUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:references
         :organization:in-reply-to:subject:cc:to:from;
        bh=osDgUAlzM63Pc+8qMfPEP82zBT8VpokzbpNumBV9750=;
        b=qiGNHB5WKRHfY1XMNEAeTM1qZDXfncaOA7+GD0hZAqyqTIpQtLwA6ciVT6gpL4XsCP
         bdm4rIqYRweKG+eOkSKuV4ZzTFqRfmHSMUqioToD0Tm7U46wWoLH/wenAOOBIpJo69uq
         9ZvWXIM0IAZ8mv1IALgLZgAwEIql8drdk6ej5XgLXsBczmMOG+HfiKQaW+yXK8iH/VNf
         i/gXVr/mk/oGdZznEfZK3bP/PQq9wcan0EWKEp3FxRo5PIbQkqywQT6rhUYus45/95Dv
         vQFS/Pmw8vlowTbk+uiFXeYUe+g67UN8ojgvEeOOzhbK3D2QaZO42TgU+4xpPP9tfznp
         2c/w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of jani.nikula@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=jani.nikula@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga18.intel.com (mga18.intel.com. [134.134.136.126])
        by gmr-mx.google.com with ESMTPS id o9si136263pfp.0.2020.02.13.06.37.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 13 Feb 2020 06:37:21 -0800 (PST)
Received-SPF: pass (google.com: domain of jani.nikula@intel.com designates 134.134.136.126 as permitted sender) client-ip=134.134.136.126;
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 13 Feb 2020 06:37:21 -0800
X-IronPort-AV: E=Sophos;i="5.70,437,1574150400"; 
   d="scan'208";a="227248670"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
  by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 13 Feb 2020 06:37:18 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Michel =?utf-8?Q?D=C3=A4nzer?= <michel@daenzer.net>, Nathan Chancellor
 <natechancellor@gmail.com>
Cc: clang-built-linux@googlegroups.com, intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Disable -Wtautological-constant-out-of-range-compare
In-Reply-To: <d81a2cfe-79b6-51d4-023e-0960c0593856@daenzer.net>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200211050808.29463-1-natechancellor@gmail.com> <20200211061338.23666-1-natechancellor@gmail.com> <4c806435-f32d-1559-9563-ffe3fa69f0d1@daenzer.net> <20200211203935.GA16176@ubuntu-m2-xlarge-x86> <f3a6346b-2abf-0b6a-3d84-66e12f700b2b@daenzer.net> <20200212170734.GA16396@ubuntu-m2-xlarge-x86> <d81a2cfe-79b6-51d4-023e-0960c0593856@daenzer.net>
Date: Thu, 13 Feb 2020 16:37:15 +0200
Message-ID: <877e0qy2n8.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: jani.nikula@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of jani.nikula@intel.com designates 134.134.136.126 as
 permitted sender) smtp.mailfrom=jani.nikula@intel.com;       dmarc=pass
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

On Wed, 12 Feb 2020, Michel D=C3=A4nzer <michel@daenzer.net> wrote:
> On 2020-02-12 6:07 p.m., Nathan Chancellor wrote:
>> On Wed, Feb 12, 2020 at 09:52:52AM +0100, Michel D=C3=A4nzer wrote:
>>> On 2020-02-11 9:39 p.m., Nathan Chancellor wrote:
>>>> On Tue, Feb 11, 2020 at 10:41:48AM +0100, Michel D=C3=A4nzer wrote:
>>>>> On 2020-02-11 7:13 a.m., Nathan Chancellor wrote:
>>>>>> A recent commit in clang added -Wtautological-compare to -Wall, whic=
h is
>>>>>> enabled for i915 so we see the following warning:
>>>>>>
>>>>>> ../drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1485:22: warning:
>>>>>> result of comparison of constant 576460752303423487 with expression =
of
>>>>>> type 'unsigned int' is always false
>>>>>> [-Wtautological-constant-out-of-range-compare]
>>>>>>         if (unlikely(remain > N_RELOC(ULONG_MAX)))
>>>>>>             ~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~
>>>>>>
>>>>>> This warning only happens on x86_64 but that check is relevant for
>>>>>> 32-bit x86 so we cannot remove it.
>>>>>
>>>>> That's suprising. AFAICT N_RELOC(ULONG_MAX) works out to the same val=
ue
>>>>> in both cases, and remain is a 32-bit value in both cases. How can it=
 be
>>>>> larger than N_RELOC(ULONG_MAX) on 32-bit (but not on 64-bit)?
>>>>>
>>>>
>>>> Hi Michel,
>>>>
>>>> Can't this condition be true when UINT_MAX =3D=3D ULONG_MAX?
>>>
>>> Oh, right, I think I was wrongly thinking long had 64 bits even on 32-b=
it.
>>>
>>>
>>> Anyway, this suggests a possible better solution:
>>>
>>> #if UINT_MAX =3D=3D ULONG_MAX
>>> 	if (unlikely(remain > N_RELOC(ULONG_MAX)))
>>> 		return -EINVAL;
>>> #endif
>>>
>>>
>>> Or if that can't be used for some reason, something like
>>>
>>> 	if (unlikely((unsigned long)remain > N_RELOC(ULONG_MAX)))
>>> 		return -EINVAL;
>>>
>>> should silence the warning.
>>=20
>> I do like this one better than the former.
>
> FWIW, one downside of this one compared to all alternatives (presumably)
> is that it might end up generating actual code even on 64-bit, which
> always ends up skipping the return.

I like this better than the UINT_MAX =3D=3D ULONG_MAX comparison because
that creates a dependency on the type of remain.

Then again, a sufficiently clever compiler could see through the cast,
and flag the warning anyway...

BR,
Jani.

--=20
Jani Nikula, Intel Open Source Graphics Center

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/877e0qy2n8.fsf%40intel.com.
