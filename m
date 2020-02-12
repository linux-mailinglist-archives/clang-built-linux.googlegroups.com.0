Return-Path: <clang-built-linux+bncBCTZ3GVV3UCRBE7GSDZAKGQETSL3YFA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x539.google.com (mail-ed1-x539.google.com [IPv6:2a00:1450:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id A92EC15AE91
	for <lists+clang-built-linux@lfdr.de>; Wed, 12 Feb 2020 18:17:07 +0100 (CET)
Received: by mail-ed1-x539.google.com with SMTP id dd24sf2569327edb.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 12 Feb 2020 09:17:07 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581527827; cv=pass;
        d=google.com; s=arc-20160816;
        b=VcU7k9sFC2jdJNPZMnFfi5Vx7O+cuiG7paNKOKFDwelQXbMOI0FRoX2AtuYRxAduP8
         0hdw6LE1oc2FQboHsd50m6HN0B5vjVMxsfw/teb1Duob6OMEeS0p4/84HTjrlVENIM8B
         7qsv3dTyoVvgme1pnW7yzFakjLx7gdXjWeZHa8KHU88UvRbiAXhFiyY9OxJuT9/JLT8A
         fgxpVCPeiLhVSoScbUh2oTGQcKO+JqQX3aYf5wxEAjZWMjf5TLXhaZ05uo8eOqAho849
         1YQhSn62MxxeLV3b/jerHD5WJdp0yvx9Qw9BUmkNqFjqXxHaciQMK/RaU3I2Wqr1Se8O
         UnYw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=fHwvBEOuD9TfgYCw9qR8Tb9qsY14TGhJ/Cwi4plkFYc=;
        b=KcOHg+Tg3a7VWCHJLAtoossJC6CKhnpD9yVZzIFrAQe/fqAy+djTsdS+/ffizM5eK9
         UbDWx0bD6cWxiIYNtWHidd8/UXL+UlW74uzVMcJDVd1w/FXtDjz/YJ0+SrXES9QuBw2W
         qMvplp117857Q9JLMGvusbmiPNcFIFTM94LDaplTCXrx0U5zWfhHc9aUPWx0JRZOe6j6
         fIsWkLu9/7Hg27ONxAhx/n13SHw2dURCONao4d0gW7jjpUiyK0lHEhmFvxs6IKxI3iUJ
         y9mIt7dZWqVZCZF2PVF4+baHjrvWVKWUcZpKNiT6cSr6EBn0ugw6T0qHXM699BK9RQPL
         IAdg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 148.251.143.178 is neither permitted nor denied by best guess record for domain of michel@daenzer.net) smtp.mailfrom=michel@daenzer.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fHwvBEOuD9TfgYCw9qR8Tb9qsY14TGhJ/Cwi4plkFYc=;
        b=V+1yr1PpP/tK66CTPZjNQ/XFjWEH+abtrH9VBh+vJnuAo6tQfAVVL6F+T0p8TDeIkN
         h817WNN2b3U+3HRT/u4QFRSwRxg4+gnTmVhcAnWd5Wzqou83QNvbvQQ8HUy9G/dEd2ey
         UALp/kh1vcBBZ5eqtz8sUwkKRpLxIfzBH57DGOduopEpISn64Q/++YZdaT0IgByg77pF
         lp7GttZnv1jveH6tolVNR1FdeyIkVPCivnuEueXnWzJrxWbc1dcReaRyLwSHL/ygGm2N
         7pIxb8DRhe5ieMnfqfehNuz+mqJdwBBjJBKjwy+nofGYtb5za51SQDcvfhWktrhl+dtU
         hSlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fHwvBEOuD9TfgYCw9qR8Tb9qsY14TGhJ/Cwi4plkFYc=;
        b=h/1T0yC4ouOjNeSFzlS/Yb2c+VWXI51RunWR9xuC8VoqL3E9GoWW+iZ5ccSs4eKTTV
         P+M4sOI9rEIL1A7jryUMZqjoB5uCb6TtMMEV2miOFufSl9eg2JkbsWce7cafBLvnFZmh
         pbzNuMOggZo5DWMlWMrTVEQS9lmzYvDK6QVTDAbkljpO9as9ID3eO2VAQWXIRe5WI3EX
         jEbUfMe6kCwRb8BPkVjqzpQ4q8z/gu6aiDm5y4VBrXtE1nq47zAtdRMbjhhc1FYht3D6
         2Ihv8SeCFTcTBVR9IIUCn01hShJuvBoTXsAhS6l0XXaOw0bjYmzbcszF9mP3EawGUwdS
         +mTA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUafXZj1X3CwU72x/iRfKFMzsDPZhjj/iDOddfLHkDRCtL5QcMk
	iLPu7V1lsNccjp+zT6yW8xw=
X-Google-Smtp-Source: APXvYqzAytnr2Y+xtj6hvzq8FMTy3uCc5gtDOOQAQGx2SiNaH6sfm0pfLavtWSN3PF4he+hhmXmCKQ==
X-Received: by 2002:a17:906:5193:: with SMTP id y19mr11643896ejk.4.1581527827436;
        Wed, 12 Feb 2020 09:17:07 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:fd15:: with SMTP id i21ls9220184eds.9.gmail; Wed, 12 Feb
 2020 09:17:06 -0800 (PST)
X-Received: by 2002:a05:6402:655:: with SMTP id u21mr11850296edx.78.1581527826699;
        Wed, 12 Feb 2020 09:17:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581527826; cv=none;
        d=google.com; s=arc-20160816;
        b=U/uBp4gAHApgfBxR8/o06t5fn/IP8fyYCJaVwWEWj79ArC5nRiXun4xlM4zg/xcM27
         C/F4Im2L9+vRWduX4kerO2I+upR4Ve463mvBbMCRGtwrCN4DgUKLhIXMRcvfQ59xw6aJ
         4HsK/ZqYtyHPwroy560Wgbee74KxMnRcG/a18k1dxrvVnplEqFED/+MYSNcuBWPFLf8I
         m0GVBUXKb+ioo8wk6YhHJVumQ2n6pFtbqxa5eLPyqkSbFIEULCHkzGk31g0ZX7J25nAm
         5KCsAioVMZslnsHWM3ff/dlolzyTUck3ol1O7xfMS9HSXffNr45etAoVL9YxewrRG10h
         C/fg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=LJC1hqZoMvLofXefUc9ebaJYZfqEeMS3K8gi4YGYApw=;
        b=Z0hBNGmg36Oe6AeWIzSszNkb9vSDF+neM3yqNLXPZyKyDu7U43TW2WtzG6de6RU/z0
         b7vOid2yevWhCTYVMEpM7iATYDPP88sQrKqZHpZovjkzdbWgZSThmbcIhrU+7sCqa9ZS
         9W3xhtmJIW3MNOCF/v0WvEKHivt1LmIOAZwH8ckhWobSMT8VpihwjcwakZhDUEezJGpX
         ZuUgCvZOHLNFwllKVPdEFQKmMb9zlqsAF9YoHQb40Q5ulj9z9IxfxgsjmtViPiGsQMih
         CBINzoGy8cLVsbR+4cA0hm9FuGNjPGrWfNz0JzYltmAsP6gN8rOc5pjf/f0u9IlRYgvH
         GfQA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 148.251.143.178 is neither permitted nor denied by best guess record for domain of michel@daenzer.net) smtp.mailfrom=michel@daenzer.net
Received: from netline-mail3.netline.ch (mail.netline.ch. [148.251.143.178])
        by gmr-mx.google.com with ESMTP id df10si74547edb.1.2020.02.12.09.17.06
        for <clang-built-linux@googlegroups.com>;
        Wed, 12 Feb 2020 09:17:06 -0800 (PST)
Received-SPF: neutral (google.com: 148.251.143.178 is neither permitted nor denied by best guess record for domain of michel@daenzer.net) client-ip=148.251.143.178;
Received: from localhost (localhost [127.0.0.1])
	by netline-mail3.netline.ch (Postfix) with ESMTP id 514DB2A604B;
	Wed, 12 Feb 2020 18:17:06 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at netline-mail3.netline.ch
Received: from netline-mail3.netline.ch ([127.0.0.1])
	by localhost (netline-mail3.netline.ch [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id TidibmeR2N2o; Wed, 12 Feb 2020 18:17:06 +0100 (CET)
Received: from thor (252.80.76.83.dynamic.wline.res.cust.swisscom.ch [83.76.80.252])
	by netline-mail3.netline.ch (Postfix) with ESMTPSA id 01A9A2A6046;
	Wed, 12 Feb 2020 18:17:05 +0100 (CET)
Received: from [::1]
	by thor with esmtp (Exim 4.93)
	(envelope-from <michel@daenzer.net>)
	id 1j1vdJ-000ow8-2f; Wed, 12 Feb 2020 18:17:05 +0100
Subject: Re: [PATCH v2] drm/i915: Disable
 -Wtautological-constant-out-of-range-compare
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com, dri-devel@lists.freedesktop.org,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
References: <20200211050808.29463-1-natechancellor@gmail.com>
 <20200211061338.23666-1-natechancellor@gmail.com>
 <4c806435-f32d-1559-9563-ffe3fa69f0d1@daenzer.net>
 <20200211203935.GA16176@ubuntu-m2-xlarge-x86>
 <f3a6346b-2abf-0b6a-3d84-66e12f700b2b@daenzer.net>
 <20200212170734.GA16396@ubuntu-m2-xlarge-x86>
From: =?UTF-8?Q?Michel_D=c3=a4nzer?= <michel@daenzer.net>
Message-ID: <d81a2cfe-79b6-51d4-023e-0960c0593856@daenzer.net>
Date: Wed, 12 Feb 2020 18:17:04 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <20200212170734.GA16396@ubuntu-m2-xlarge-x86>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-CA
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: michel@daenzer.net
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 148.251.143.178 is neither permitted nor denied by best guess
 record for domain of michel@daenzer.net) smtp.mailfrom=michel@daenzer.net
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

On 2020-02-12 6:07 p.m., Nathan Chancellor wrote:
> On Wed, Feb 12, 2020 at 09:52:52AM +0100, Michel D=C3=A4nzer wrote:
>> On 2020-02-11 9:39 p.m., Nathan Chancellor wrote:
>>> On Tue, Feb 11, 2020 at 10:41:48AM +0100, Michel D=C3=A4nzer wrote:
>>>> On 2020-02-11 7:13 a.m., Nathan Chancellor wrote:
>>>>> A recent commit in clang added -Wtautological-compare to -Wall, which=
 is
>>>>> enabled for i915 so we see the following warning:
>>>>>
>>>>> ../drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1485:22: warning:
>>>>> result of comparison of constant 576460752303423487 with expression o=
f
>>>>> type 'unsigned int' is always false
>>>>> [-Wtautological-constant-out-of-range-compare]
>>>>>         if (unlikely(remain > N_RELOC(ULONG_MAX)))
>>>>>             ~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~
>>>>>
>>>>> This warning only happens on x86_64 but that check is relevant for
>>>>> 32-bit x86 so we cannot remove it.
>>>>
>>>> That's suprising. AFAICT N_RELOC(ULONG_MAX) works out to the same valu=
e
>>>> in both cases, and remain is a 32-bit value in both cases. How can it =
be
>>>> larger than N_RELOC(ULONG_MAX) on 32-bit (but not on 64-bit)?
>>>>
>>>
>>> Hi Michel,
>>>
>>> Can't this condition be true when UINT_MAX =3D=3D ULONG_MAX?
>>
>> Oh, right, I think I was wrongly thinking long had 64 bits even on 32-bi=
t.
>>
>>
>> Anyway, this suggests a possible better solution:
>>
>> #if UINT_MAX =3D=3D ULONG_MAX
>> 	if (unlikely(remain > N_RELOC(ULONG_MAX)))
>> 		return -EINVAL;
>> #endif
>>
>>
>> Or if that can't be used for some reason, something like
>>
>> 	if (unlikely((unsigned long)remain > N_RELOC(ULONG_MAX)))
>> 		return -EINVAL;
>>
>> should silence the warning.
>=20
> I do like this one better than the former.

FWIW, one downside of this one compared to all alternatives (presumably)
is that it might end up generating actual code even on 64-bit, which
always ends up skipping the return.


--=20
Earthling Michel D=C3=A4nzer               |               https://redhat.c=
om
Libre software enthusiast             |             Mesa and X developer

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/d81a2cfe-79b6-51d4-023e-0960c0593856%40daenzer.net.
