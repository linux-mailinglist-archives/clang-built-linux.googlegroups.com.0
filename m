Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBCVCRTZAKGQEIAGKRRA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x238.google.com (mail-oi1-x238.google.com [IPv6:2607:f8b0:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B72E159A9D
	for <lists+clang-built-linux@lfdr.de>; Tue, 11 Feb 2020 21:39:40 +0100 (CET)
Received: by mail-oi1-x238.google.com with SMTP id k6sf6658634oij.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 11 Feb 2020 12:39:39 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581453579; cv=pass;
        d=google.com; s=arc-20160816;
        b=rbX7GUdsvMT5hagwi3ncldRo6fg5npGSE/pTlsJXh87rpUWLXCa15IBYYM1lzpSCJG
         d3c0WyeBJ9PLXyUmft7/FcpOwNV5/VQlEAAUDF/GuaPuo9g4PTKH1D2UKLDBo75/RME6
         56D0ToK0nL+CO/FKHGx9Zl7V2aFeDc2PKfeL/+6X+bO6Dke/3I+LQMkDcQTJZCKiedWJ
         kPuTikowIQ+u9UxInOqccK+b4f1jJ+YBOFeLHHjk/6Iij0e8VzgNDV2Gi5u/u9NNUhhx
         YIjbi3gcMVQJC5YOGomWIuSchJCNv9UFBSCfMPxSVOkN5JfqLlDnvOaN8autibALGP9y
         6L4Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature
         :dkim-signature;
        bh=zwVz1XqXmKyUpoGzSZVqlvBztLxgvfd1ZE3fLe6IIEE=;
        b=A0YoU66fvuPJLe4PnuxmPrSgwp0Mrnb8B7ku+0Q1egdUtNgOIysMF1RD8dwoY9vQTi
         8fw/BRhhB9cFVYzpBohJq2+5ALpU2F31VJ5Dk1XEBaUCe2QaoxC48qOCYPIBc2mpTJ6x
         Hnd+3/ZdM43XPrg2Pc7tje7YOlsEdWplUMOpKFYmWYUK54x3rpOaEb5Y0oNrxzy7qX7j
         rNhYqQB02F3J5YPOE95Q+LhAuPloTZ1NxY9BoS1I4e+iQFxaZvaiYl4mZx1lmSH2lzOz
         Frw6nddK7cpxRbaW6G+voU1wagQIEk4PxoyOrkSMELgTKDFtzAoYGtPq11cma/MMMn8h
         7ZGQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=guvCAd2U;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zwVz1XqXmKyUpoGzSZVqlvBztLxgvfd1ZE3fLe6IIEE=;
        b=CBIq/G1hOHJVyF65ZzT9BkJL53QcrLoHERu1sJXOEiEkdJRPIyK2rhoINUcVR6M1Q5
         eTL/q1v+nOkVHb5Qdk9Ubqv2PROkwHIkvihVyneG2txepBRRhDjAyMv9JvBuV7wGKX85
         uCGwp+wRrnDeqqdtxSThcxv6jyC2bVf/0gqAsv0j86Pm374UCzPI4duuYyy4BTPYwYLt
         KUQCxb+EHwek0kCeZJyVGK4MFk5brkRXBQNqzcDX56Oi/kgUBA9LgGO41wpM4Or3rGSt
         2dTl3HcNV98407cxzBEEPjpaerpUTUqd3Auj8vwr1bep2gaSwkH23ql6LDN8pgy47LiK
         XNcg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zwVz1XqXmKyUpoGzSZVqlvBztLxgvfd1ZE3fLe6IIEE=;
        b=fip2bMgC5J54OI5o0UZPHIbLbcj9UjU3y5vjI9497nsY/OWRNGTD/5o6NwC2hrfuFE
         hQzjAB35KU29rCjvtSV0ym56SmuzOs7Q5FU1e5Q/VU6puHDxBqSX/dNfgRz/4FEQecT3
         jzcaVsUEvv3LlF2y0ACM99TplDxoWNB4w7ROpAU+Kbnvrf7yhY/BVzZJXcfHQH1zBTMP
         CJNAfZAjU7JuBrTUWob41GrVP+0t72tZ1T9F6nTQztCEt+cPHeOaWQQfHRZqRxKfzNv4
         fRsAQ3EreZcpOlfiujniQlCzjXBKJ+fjR9SfEys7Cz87kC2iJHXqaVhWhUwBis17FxLp
         niUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zwVz1XqXmKyUpoGzSZVqlvBztLxgvfd1ZE3fLe6IIEE=;
        b=Q1PbnisDfy407aiFEPpLdgYkPYceEc9D3SBMRW/52gduX6z59Ow3wlDGhOh+jvMTl5
         Z50lJt+vT3KgWO2tXPqOP2nnIWKqKkBlib0kcMYd+sCwDyvibam0yQ9ApWa5Fu5s8/a4
         FNGhpIgNbmA0b7H51Us8cD5B1tsczj9WDyTVOcRNCSm2zHEb0ttKdskSFcDV6p1Gr1ew
         +vSfSqflzMO/q48pFjtl/xJ1gFyXi/wX7LShQ89KHzXau8ukM2uBViCjD9itJw8eQXpv
         H/RwaicVEfp7tO3ztP3NslG+dwML7y0SiSm5SoU8DNircKGABHKJp4DdmsU/V3H2f/NC
         ucXg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVLSbh+B70h3RbMKbn3BPua+vFSw1gJkIurkNtz7vEJNfZN3JZJ
	utXLlTTxjTKW3CFJ6g1VebU=
X-Google-Smtp-Source: APXvYqxmHVbi7Y4PjoxBsm72CyDmbCgm7v7sHeLbzmExR+lYWtrT9c8JnIIUV+F1+3CaAoDKqgpGhw==
X-Received: by 2002:aca:bc0a:: with SMTP id m10mr4128573oif.77.1581453578674;
        Tue, 11 Feb 2020 12:39:38 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:c694:: with SMTP id w142ls5979819oif.6.gmail; Tue, 11
 Feb 2020 12:39:38 -0800 (PST)
X-Received: by 2002:aca:5fc6:: with SMTP id t189mr4206954oib.166.1581453578234;
        Tue, 11 Feb 2020 12:39:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581453578; cv=none;
        d=google.com; s=arc-20160816;
        b=W1rsw1E+fDgrmycC3fVlHmhkMXMtt54I5PdGt+wNR3MX8DMZ/v5vW97TpJxYJrpPm8
         3fOwJwcaexicXoSf7bswF+65NtHGwDswoAbmIuVGWr137O4+jzj3yi1PIbOyafkE0vwh
         P0VfbkvL7CG7YmCdevEZCu4Enc2SUhxf+lplJyguFOf9SzXeTeeIOQEoSoUESSw4Uvbt
         Fg/6OzHRDER1eOXxAF4e0c6TEN52zds7UGzzObDp6fy/KU63aJl7cELBs1EmYSmpGu9z
         XPukHfv6xemtOkddnOw4oL4O/MOevpTb6+0DH2Oio8AFtMfmOINqJxzTza2ht3XvtUoe
         zAtQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=FkiL+nwntyVL1Depk52x54ARrFLNbJ/q2cGreWUpoIY=;
        b=YmeNxlI5rH277K5zYKLPTXaBq3nqcW7NiGt+srui2sQ48+fDjErag8glntGFggZT9L
         lk3kKamRHKSEU64f2OtEfOTZ2i+E7Yq8O9A5TwRtWDTu4gcBEYGlZCz2J9nd21qmra82
         nNjSIv1KW2nOP/2hQRFc2aX7qiTaMgPop6IfRsXh8uEsuAM0K+y/N5NOwT/5y9KRn0Ww
         L7E1GDOxRhpF5lGD18Q7oba3Ma2iAq3FbIAM2wx1jEj8MBtLCJT9lqPT9+n5wvWdO0D8
         NTLJ/+ivbDzKNKle18vzhbjdpFWImMPo97//k/+bD+SLOO27pSj3oMU4hIETjjORgQy8
         ZIFA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=guvCAd2U;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x342.google.com (mail-ot1-x342.google.com. [2607:f8b0:4864:20::342])
        by gmr-mx.google.com with ESMTPS id o11si253379otk.0.2020.02.11.12.39.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Feb 2020 12:39:38 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) client-ip=2607:f8b0:4864:20::342;
Received: by mail-ot1-x342.google.com with SMTP id i6so11519743otr.7
        for <clang-built-linux@googlegroups.com>; Tue, 11 Feb 2020 12:39:38 -0800 (PST)
X-Received: by 2002:a9d:64ca:: with SMTP id n10mr6692357otl.325.1581453577909;
        Tue, 11 Feb 2020 12:39:37 -0800 (PST)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id w8sm1537795ote.80.2020.02.11.12.39.37
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 11 Feb 2020 12:39:37 -0800 (PST)
Date: Tue, 11 Feb 2020 13:39:35 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Michel =?iso-8859-1?Q?D=E4nzer?= <michel@daenzer.net>
Cc: Jani Nikula <jani.nikula@linux.intel.com>,
	Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
	Rodrigo Vivi <rodrigo.vivi@intel.com>,
	clang-built-linux@googlegroups.com, intel-gfx@lists.freedesktop.org,
	linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org
Subject: Re: [PATCH v2] drm/i915: Disable
 -Wtautological-constant-out-of-range-compare
Message-ID: <20200211203935.GA16176@ubuntu-m2-xlarge-x86>
References: <20200211050808.29463-1-natechancellor@gmail.com>
 <20200211061338.23666-1-natechancellor@gmail.com>
 <4c806435-f32d-1559-9563-ffe3fa69f0d1@daenzer.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <4c806435-f32d-1559-9563-ffe3fa69f0d1@daenzer.net>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=guvCAd2U;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Tue, Feb 11, 2020 at 10:41:48AM +0100, Michel D=C3=A4nzer wrote:
> On 2020-02-11 7:13 a.m., Nathan Chancellor wrote:
> > A recent commit in clang added -Wtautological-compare to -Wall, which i=
s
> > enabled for i915 so we see the following warning:
> >=20
> > ../drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1485:22: warning:
> > result of comparison of constant 576460752303423487 with expression of
> > type 'unsigned int' is always false
> > [-Wtautological-constant-out-of-range-compare]
> >         if (unlikely(remain > N_RELOC(ULONG_MAX)))
> >             ~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~
> >=20
> > This warning only happens on x86_64 but that check is relevant for
> > 32-bit x86 so we cannot remove it.
>=20
> That's suprising. AFAICT N_RELOC(ULONG_MAX) works out to the same value
> in both cases, and remain is a 32-bit value in both cases. How can it be
> larger than N_RELOC(ULONG_MAX) on 32-bit (but not on 64-bit)?
>=20

Hi Michel,

Can't this condition be true when UINT_MAX =3D=3D ULONG_MAX? clang does not
warn on a 32-bit x86 build from what I remember. Honestly, my
understanding of overflow is pretty shoddy, this is mostly based on what
I have heard from others.

I sent a patch trying to remove that check but had it rejected:

https://lore.kernel.org/lkml/20191123195321.41305-1-natechancellor@gmail.co=
m/

Cheers,
Nathan

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20200211203935.GA16176%40ubuntu-m2-xlarge-x86.
