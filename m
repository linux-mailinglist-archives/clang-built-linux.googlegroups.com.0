Return-Path: <clang-built-linux+bncBCTZ3GVV3UCRBX7NRHZAKGQE7Z7DQYQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33e.google.com (mail-wm1-x33e.google.com [IPv6:2a00:1450:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id DEBE9158C00
	for <lists+clang-built-linux@lfdr.de>; Tue, 11 Feb 2020 10:41:51 +0100 (CET)
Received: by mail-wm1-x33e.google.com with SMTP id g26sf1089575wmk.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 11 Feb 2020 01:41:51 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581414111; cv=pass;
        d=google.com; s=arc-20160816;
        b=n95oH7WRaBYEEHQ3oVP3LjqzvPMLOyST6Zxy1Gq39XP9IdDf5A0fdVywPbkx/Z6Yo1
         gWbGcpEi08WL0Ih9UFXyZTeoNTpfsXrXEfRd6Idad1ltuS1nT+1I0Y2GYccmvYmV+O2Y
         dw2ubVwIC/4lVkYdzcskWxQmzC0kBHDxRJI7CiD9DzCMOCf9C5aCoiD+um7qM4uQ8OQw
         fHXOZjzGaDvLQjlV3f2n5bGP+2vxtg/OPyH6/oRuY+hzWJX+G8WL/nleKpmqwzUE+hqG
         vWB9M/ZgZgtPrhSwB9lV7LeOumQCp9f96y014hAayWy2iwo/NcILu+pHpm3cBB8lOldw
         /2Ug==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=a1PbWyMfCNM5523u8V2fFxjhMhHwINbncRhWdD/0W1U=;
        b=lzDv6n1THGs0ZbD7UQmeErqQl6StGwYi7Fj3P70tzS26LIOqBQ/Ky8RoXE3zIGIG4v
         qDXdwlEYgoP2KJNWRmnMS2Q7TvP+xjPQEPn6YS526Zq2H6LvOEeAmkHd0C4TlnGvEw+C
         uTShtlvcf70ncFqM59JafCUDcwydv/SPpw8mbJJaq1gFtx3eKoASgvv0vYrSMYWRI8t0
         PZSRZs7uCPjjyD7wkWsMF1pK723fg6PCvLTBQfXQdM+hfuV0y8V7RN1eii4hLc8kMiLW
         pGRHIVxmydUMDobVctA2xioR3fVkXtp63ZqPpnsN68AC0KQo6U/aymx2TUtYWRUFlzMz
         NqBw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 148.251.143.178 is neither permitted nor denied by best guess record for domain of michel@daenzer.net) smtp.mailfrom=michel@daenzer.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=a1PbWyMfCNM5523u8V2fFxjhMhHwINbncRhWdD/0W1U=;
        b=ASz3TFc4tcVOYO+b/v2MagTghZ/fXZTmRNxLWWy984slWBGCqxSkOzLlEYVbriv3jR
         I7yuJmB/wQqj1PRmRnWjrvzSn16WqO91O8Obv1at3X52H2ieQeERfar8y2NWwVc34P71
         3DRzfONAaMwEp9iU5hJmuBttfmBs8oAVSgBvjyatjYngBmgKbs8mgi3XzeKuhjiYplTI
         bFjBZFdgal4jQREmF2VxhurWv7Qex9vEYMDnuptY32d6OizY1oTsiqRs50ibbhtyzSaR
         imCQQ8K0Uyo5shSeCVnXRmyA2PSIMb/Gpymy/WOcCfunLf3bYvON0/T1jiOXc6Kixl2Q
         FTjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=a1PbWyMfCNM5523u8V2fFxjhMhHwINbncRhWdD/0W1U=;
        b=N6Vy10EeScHIUvcNEeIW/BiWI23jOadg5EaXaxXtuwnVLyI0S+3O1dcrK4IBB+blp/
         eXwaxlCNmKNd7+mz6IY57RaVJVZgY2Uvh9A2FY1fOYoxNp8pOLpuGwS50DbsgUBIxQ5v
         xRTddVDCFLgfr39T9uBSTpr0YHMeKQM3fLht26YJpINQsbJseKRk5oY3XkS+23sMmsAg
         dr7+8cHMmmJHCI+q4LSdI8xyjLGPIeScYf28sd4fKeSalEpjj2eU0tEGbf6N61kefuTD
         +t9aXCoCtU59hkf1IMtyceJuYln3pTNhp4hhGBUdoDyaT1gfU0bj498EhO26JVLs1sSc
         oQ6Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUMvSf+QiYp2XzuakfMa1lF/Kp1OT1+mdOSM19JnFuo2KyMyhFv
	LdrgGhiiz41d7X9QvPo7NhQ=
X-Google-Smtp-Source: APXvYqyo/A68CBB8y/vnVduV+iZlNfoaePCGnef9NpxKbPrjqbdbLI708w5FNOuUk+baGL3GRU1o3w==
X-Received: by 2002:a5d:474b:: with SMTP id o11mr7880023wrs.255.1581414111630;
        Tue, 11 Feb 2020 01:41:51 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:c4d0:: with SMTP id g16ls2535281wmk.2.canary-gmail; Tue,
 11 Feb 2020 01:41:51 -0800 (PST)
X-Received: by 2002:a7b:c407:: with SMTP id k7mr4810831wmi.46.1581414110954;
        Tue, 11 Feb 2020 01:41:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581414110; cv=none;
        d=google.com; s=arc-20160816;
        b=L4XuifJ9tgVkZJmU429QNC2RVKT1KyfI81QLeeZqbmduIXSHP/oQpIXo2/17F1RCyC
         53Rj1/LN0IuOu4okllht2VNJ0nPkyOBZrdo1cQ6A4psttLHJveh43BoihKnONacEcGhz
         yjnT4yxQvRZXmbgE7+o8hOUWuSOiUh/lX3A1cGm+P3wKHKpFfp5hLN2l1zp9tDd8LOir
         I6UObRSGS+ukJCG5raLIkG/WTWRSJuGhMLR4Cg7+H3IG9ZF0gJiFoyIJGf/36k6x7J+j
         +mw+Pggy9SLB20AsaR+nc1NQgxrO+HTjz9e1pnhJWm83zdRvrmu7O70vZQ1kz7DZ1Nwa
         wdYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=zwK4lOdomHLvdxeRmWGm/zKU7NTlzZJzI/Qk3lqcvJI=;
        b=fSCZjJ9NyNvOljpndoxkcDEhRkQ78bbjow1qj1Mph2btdSDEqFIy+sLFjV9iQ/czBz
         +uQh9JEl3HwK+1P12B44s4/dCpSFcOI0l6drkK4GAQP3kuakAc6cbn+WYNq39Dtqf61p
         D+rfZOSu4Y/kPkoVllaDaTenzvJHEOLeH4xw9q0iGviQAw1rH+Nqr5KMoQoX1rlQ4nvq
         igukKPo3iZt7MAh1D+HRAlDFyVpZWpYuRJj406acFZzX0iosd2uG1GxIhQxfJgkc+7rP
         sCsW0DHxkCXpeZa94PsLgGk+Di8NFLEtA8eAu0VFRW8O/24kQ7Qv+BBkOACy84V3UVFq
         UqQA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 148.251.143.178 is neither permitted nor denied by best guess record for domain of michel@daenzer.net) smtp.mailfrom=michel@daenzer.net
Received: from netline-mail3.netline.ch (mail.netline.ch. [148.251.143.178])
        by gmr-mx.google.com with ESMTP id d191si91950wmd.2.2020.02.11.01.41.50
        for <clang-built-linux@googlegroups.com>;
        Tue, 11 Feb 2020 01:41:50 -0800 (PST)
Received-SPF: neutral (google.com: 148.251.143.178 is neither permitted nor denied by best guess record for domain of michel@daenzer.net) client-ip=148.251.143.178;
Received: from localhost (localhost [127.0.0.1])
	by netline-mail3.netline.ch (Postfix) with ESMTP id 577EE2A6048;
	Tue, 11 Feb 2020 10:41:50 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at netline-mail3.netline.ch
Received: from netline-mail3.netline.ch ([127.0.0.1])
	by localhost (netline-mail3.netline.ch [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id Y5c4P5LHANWr; Tue, 11 Feb 2020 10:41:50 +0100 (CET)
Received: from thor (252.80.76.83.dynamic.wline.res.cust.swisscom.ch [83.76.80.252])
	by netline-mail3.netline.ch (Postfix) with ESMTPSA id E7C9F2A6046;
	Tue, 11 Feb 2020 10:41:49 +0100 (CET)
Received: from [::1]
	by thor with esmtp (Exim 4.93)
	(envelope-from <michel@daenzer.net>)
	id 1j1S3A-000eJE-I2; Tue, 11 Feb 2020 10:41:48 +0100
Subject: Re: [PATCH v2] drm/i915: Disable
 -Wtautological-constant-out-of-range-compare
To: Nathan Chancellor <natechancellor@gmail.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: clang-built-linux@googlegroups.com, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org
References: <20200211050808.29463-1-natechancellor@gmail.com>
 <20200211061338.23666-1-natechancellor@gmail.com>
From: =?UTF-8?Q?Michel_D=c3=a4nzer?= <michel@daenzer.net>
Message-ID: <4c806435-f32d-1559-9563-ffe3fa69f0d1@daenzer.net>
Date: Tue, 11 Feb 2020 10:41:48 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <20200211061338.23666-1-natechancellor@gmail.com>
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

On 2020-02-11 7:13 a.m., Nathan Chancellor wrote:
> A recent commit in clang added -Wtautological-compare to -Wall, which is
> enabled for i915 so we see the following warning:
>=20
> ../drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1485:22: warning:
> result of comparison of constant 576460752303423487 with expression of
> type 'unsigned int' is always false
> [-Wtautological-constant-out-of-range-compare]
>         if (unlikely(remain > N_RELOC(ULONG_MAX)))
>             ~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~
>=20
> This warning only happens on x86_64 but that check is relevant for
> 32-bit x86 so we cannot remove it.

That's suprising. AFAICT N_RELOC(ULONG_MAX) works out to the same value
in both cases, and remain is a 32-bit value in both cases. How can it be
larger than N_RELOC(ULONG_MAX) on 32-bit (but not on 64-bit)?


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
clang-built-linux/4c806435-f32d-1559-9563-ffe3fa69f0d1%40daenzer.net.
