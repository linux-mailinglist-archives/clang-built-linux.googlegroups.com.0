Return-Path: <clang-built-linux+bncBCTZ3GVV3UCRBZXZR3ZAKGQEHAPOURY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x538.google.com (mail-ed1-x538.google.com [IPv6:2a00:1450:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ED0A15A3F8
	for <lists+clang-built-linux@lfdr.de>; Wed, 12 Feb 2020 09:52:55 +0100 (CET)
Received: by mail-ed1-x538.google.com with SMTP id n18sf1359299edo.17
        for <lists+clang-built-linux@lfdr.de>; Wed, 12 Feb 2020 00:52:55 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581497574; cv=pass;
        d=google.com; s=arc-20160816;
        b=mGoT1wDINNlF00qFGDZOZB2sY6/ToKmEnbliWu3DWuxeiF6+aDBBhf6TOs36DY72mg
         JET9gc/sb/7uCzskRPIhZmMcMzgaJBD7E0CFtWtVH5cvFQ8l+kBXeg7ndYEdzvwfp7+d
         Cnnb7qQU7izC1hzJuJDdWirljhfuDsGOdPhhjhPSlhPJ8kJqSOWFKNw/TcQpS7YcgvtU
         4vZ1Pf+jmGfaX2Sdw6ihmLoL1Pr5y8ONtYO8fq9gf2Sr7I+VUaZjp3LM3XE9LhQLj1Lc
         G0Du0EyVn59OSGisKuxiPjH1O/hlsbGOA+gbtLY2V5aQXBdfTATyZKgHtyuvnkjgayfp
         ZNfw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=z2WPXov3gC1ZQymY9YhtAl4KVG7FaBVpjjpotzcPupw=;
        b=hPX2kgbF//0wHAPxbBSN7d45MDDNf7zmnJy6fXFeuIa+cP0LsKvKhuf2nyGvzXMDV/
         gPDdaW6Sifkn5V3xa+qYx8iINA6N+lMwvJ+58HoTuFlCjczx8d1uS4MvGU0GBhqKcKeJ
         l02Upc52MbNwt6T6X85g0aUPWUhebaYkBwiNv8E/Cv5N4wTVas6h9PyKobvGEcY6+fH+
         klnDNeYz6YHnYBjseKnkVRvmO97OPzXN7qNN4YOGneOGVjgoZ7PW0gExAY9+IoshKMii
         AO+3dxMN7PfUpgh+JmgY0g2Dbq4bDdd12wWYGMAyiQE7CP2tKFXh2qX7g+PLYWeePCoC
         EdOg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 148.251.143.178 is neither permitted nor denied by best guess record for domain of michel@daenzer.net) smtp.mailfrom=michel@daenzer.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=z2WPXov3gC1ZQymY9YhtAl4KVG7FaBVpjjpotzcPupw=;
        b=F3iDBMKL4B1jT+41xxQt7a7B9hy2GfqpgtQGUdAy3W/ZaemapS4og9WfMZ3FAIy9rd
         Owk3aHthaML+vva1fk25XtMWXH/cTTFlZg2Bdkkui64RcSEIU6O5QBgulBEyPE74D/Q/
         ILkUhbm8a/Ykw3DfFvDoLnRP3zOvZnbCcPlfjtut0XlHLQ4D1ImCXsuCdjVeOUyPOk7r
         DzCrim06Lv2xpTiXD5XIvT4ZtsPEF9wIUx5t1GQbA2/IGmm8nN3VTwPg6TVS6Bhv1pGI
         qPUqmWX/flH1eBVVk3NFTpgctCGGh8teacCErb8YzxdoTdPaL4dlOX/DU/7e9hJRqC5u
         zbbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=z2WPXov3gC1ZQymY9YhtAl4KVG7FaBVpjjpotzcPupw=;
        b=N2vs1mM37UhgXi9dWQTIAlVBgCenDY3P9nax/gJjuFEKUZyl+wZuEKkB5YPu9Zoifa
         TsbVdjGrEAyaliuTbBEjNOglEFZRnxq8zRK7aXpEL0u5k1x3WEJ5gHxc4ZExfbTy/Fo+
         QVIJr40FDtFg2geXUTTS6YrVVpRQvLO+Vax62vcucLyiMStVfhjS8Cpcceg5B0dDH8RT
         CLxOqELPwil6cY6+08r7cOWc6ZK3sQAcV5efWxZJWsvA1IrW3ce3ZCl6yOjmv7/K1QO8
         9gahblFevOutBOhd/q0G2rFyCQUpw3SbBi/fvRr/Ub0IJ4VFzTRBTrIlOWTTxKLQQesp
         kgiQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUIOjBZyKyktg3V7oq4TwH/axEy2WaxSJsuoLGijITFrER578G+
	HeUfh5qdMwrdxeI7PqUiqsY=
X-Google-Smtp-Source: APXvYqym68Oy/x0jAPfiRv1GGWDK7PlhSuq2oBbjxWacOs8LgBWUwIiIBuBNRYIgGROnIFv8SfbwjQ==
X-Received: by 2002:a05:6402:1764:: with SMTP id da4mr9977326edb.24.1581497574372;
        Wed, 12 Feb 2020 00:52:54 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:907:118d:: with SMTP id uz13ls9304407ejb.0.gmail; Wed,
 12 Feb 2020 00:52:53 -0800 (PST)
X-Received: by 2002:a17:907:10d7:: with SMTP id rv23mr10206726ejb.38.1581497573730;
        Wed, 12 Feb 2020 00:52:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581497573; cv=none;
        d=google.com; s=arc-20160816;
        b=V/dYoC4FMnDWcEF2pibUpUDH0Yf663T3bL/LHyoUpFXZAa+hg3zm8WBxiJG/ECJG2e
         +NBYfOli0vcev6/arkintQm1ss+3Xb+BCg4QnvRtAa3FxAyZnLdrVFUqQvO6WXlbPXlt
         xQ6xPg3t6+S+62gSchSqRr6QywONwqFLY+1iy2rJhr5Wkc4J2Un9MpXIVW4TYa4ubCgH
         oM6cngGrn3QOfrsogfbbcCoi73M1YjUbOMHSUU3a/KBZiyqu01B4R2KVvQcBZswL2D8U
         HR5AnfPlah8bZ3WSqLmDeYGztsjNK0oIkMX0my79PVZU4zBEyKza8R0MYumS6AJ4Qtmg
         ATJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=2D0f69R0/VYpo650IQSo4v6AnZ+lCCQLIW48PqneNXc=;
        b=D+czwUKdWt9czXOL2cosyFSfb5D2sLqVPkiIzAXYi6W2jDvE6v2ZWo+iier6le+pNB
         4fHPW8wZObxANe5yFyhvrSZbUvJKhBfEgPIA2hWC3DbM4QZJQQ9gDI7hGoLpoW5r6m0D
         H/tS0oyDcYkvIUis6ZNrVDrpHyG0vk2L5HKecPUG8nd0ZAw3j/Bxs1aj3Ji9AGv8NzbP
         b0mFsEsFxvpy2t7dA80qiqKQ5oyC8eF4VpswF2rDMD/M6UK7wlxvcS5gkiZiG0mtpGfo
         OF2EtRybIm3ePLzm1T+e7LFAcs3VSSrar+pZPT8FnS4CW5r+6BmOeWojtc5p7q/0yE49
         gdtg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 148.251.143.178 is neither permitted nor denied by best guess record for domain of michel@daenzer.net) smtp.mailfrom=michel@daenzer.net
Received: from netline-mail3.netline.ch (mail.netline.ch. [148.251.143.178])
        by gmr-mx.google.com with ESMTP id z20si258150ejx.1.2020.02.12.00.52.53
        for <clang-built-linux@googlegroups.com>;
        Wed, 12 Feb 2020 00:52:53 -0800 (PST)
Received-SPF: neutral (google.com: 148.251.143.178 is neither permitted nor denied by best guess record for domain of michel@daenzer.net) client-ip=148.251.143.178;
Received: from localhost (localhost [127.0.0.1])
	by netline-mail3.netline.ch (Postfix) with ESMTP id 4B3042A604B;
	Wed, 12 Feb 2020 09:52:53 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at netline-mail3.netline.ch
Received: from netline-mail3.netline.ch ([127.0.0.1])
	by localhost (netline-mail3.netline.ch [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id TBwHZvsU78He; Wed, 12 Feb 2020 09:52:53 +0100 (CET)
Received: from thor (252.80.76.83.dynamic.wline.res.cust.swisscom.ch [83.76.80.252])
	by netline-mail3.netline.ch (Postfix) with ESMTPSA id F28972A6046;
	Wed, 12 Feb 2020 09:52:52 +0100 (CET)
Received: from localhost ([::1])
	by thor with esmtp (Exim 4.93)
	(envelope-from <michel@daenzer.net>)
	id 1j1nlM-000lgh-8D; Wed, 12 Feb 2020 09:52:52 +0100
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
From: =?UTF-8?Q?Michel_D=c3=a4nzer?= <michel@daenzer.net>
Message-ID: <f3a6346b-2abf-0b6a-3d84-66e12f700b2b@daenzer.net>
Date: Wed, 12 Feb 2020 09:52:52 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <20200211203935.GA16176@ubuntu-m2-xlarge-x86>
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

On 2020-02-11 9:39 p.m., Nathan Chancellor wrote:
> On Tue, Feb 11, 2020 at 10:41:48AM +0100, Michel D=C3=A4nzer wrote:
>> On 2020-02-11 7:13 a.m., Nathan Chancellor wrote:
>>> A recent commit in clang added -Wtautological-compare to -Wall, which i=
s
>>> enabled for i915 so we see the following warning:
>>>
>>> ../drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1485:22: warning:
>>> result of comparison of constant 576460752303423487 with expression of
>>> type 'unsigned int' is always false
>>> [-Wtautological-constant-out-of-range-compare]
>>>         if (unlikely(remain > N_RELOC(ULONG_MAX)))
>>>             ~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~
>>>
>>> This warning only happens on x86_64 but that check is relevant for
>>> 32-bit x86 so we cannot remove it.
>>
>> That's suprising. AFAICT N_RELOC(ULONG_MAX) works out to the same value
>> in both cases, and remain is a 32-bit value in both cases. How can it be
>> larger than N_RELOC(ULONG_MAX) on 32-bit (but not on 64-bit)?
>>
>=20
> Hi Michel,
>=20
> Can't this condition be true when UINT_MAX =3D=3D ULONG_MAX?

Oh, right, I think I was wrongly thinking long had 64 bits even on 32-bit.


Anyway, this suggests a possible better solution:

#if UINT_MAX =3D=3D ULONG_MAX
	if (unlikely(remain > N_RELOC(ULONG_MAX)))
		return -EINVAL;
#endif


Or if that can't be used for some reason, something like

	if (unlikely((unsigned long)remain > N_RELOC(ULONG_MAX)))
		return -EINVAL;

should silence the warning.


Either of these should be better than completely disabling the warning
for the whole file.


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
clang-built-linux/f3a6346b-2abf-0b6a-3d84-66e12f700b2b%40daenzer.net.
