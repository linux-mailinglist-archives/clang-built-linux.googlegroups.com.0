Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBH4IS7ZAKGQEHDV46VY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x238.google.com (mail-oi1-x238.google.com [IPv6:2607:f8b0:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id BD20A15CD7C
	for <lists+clang-built-linux@lfdr.de>; Thu, 13 Feb 2020 22:48:16 +0100 (CET)
Received: by mail-oi1-x238.google.com with SMTP id d9sf3527769oij.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 13 Feb 2020 13:48:16 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581630495; cv=pass;
        d=google.com; s=arc-20160816;
        b=cr+Ody6r/of7pZKYlJbzdspoHyWpSNtmpze3K7xD8Y8gohv7oMADBQUa4EexvOgeKu
         lW5wq5DObDVAD31+2hr7tybOXTl84lWFfXkv0pMuQNt879P4Dace0fkb53TGFTJ0ASV1
         qbkFEWb8URq4Uowu5luUsWnO/4tw2rLOHzZ8Z9fiVlOzFf/0Jl/P9g5iL4KiLcLn1YV0
         th58p2zhKHLHEjq0uA7gWdCMOwBbtqS9nxUBMbcLin0cSJ2RVeM6wHCxxzrwEnnEH8uC
         vCnj2Y00DDKGHHKoO1YNVuEaojt1zF/u8gr0d5DDni7rLY5itx1uVv9SzDCVd5OLU4fk
         rO8A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature
         :dkim-signature;
        bh=z1eF8Ji/ltNMAGpL6hDE6TC3+mq2QPQqgw//RIqJTcQ=;
        b=zx2nwf6agQyRBwoc+qNUUmZmPGsydqC4XsOiSTnXM8m442unQB5F9aYtwnHUrukuLE
         ACWcBrVryxMkqREHFTgSMIximkala1iajSyyqUt1LOlJvUHmvZaAA0Mz8hGEthKo5bzx
         BhrMTXfT3Du7YmS5Fa+izu7t4OJCMGNBlG2tS7o+7rP3EuvFhQaOgi9UBjKXtogKvDGO
         yArRFTVfXHt4cWjkJbrkwg1faa3TnBgufRLJ/rSbSLsxTGklcRUqKbxEnmt1OWYzM7VP
         2fvf97ngcH5eexBL0VGpXtbaPLdImSk4bKyuQqcChJ6w4IG5PKrGbvDhooN5uMVhxxol
         9UAA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Yjbihcz/";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=z1eF8Ji/ltNMAGpL6hDE6TC3+mq2QPQqgw//RIqJTcQ=;
        b=BsxFUiV8dzhAtF7r3tArwQOIlgoL1NaZioYpof2WlDDooaw14gqrEovOq8W3yjCqyu
         KRejm2wz5hedgTHj5XwrYmu4ixs1KAGa/p5Rd5HtFrjdI1orRH2lVzIPB9Wlv0Qcx2xs
         wgUdQhyvRkdBN8UCHXD3YxvVijW52Q3vyMmTevF8GJQmauNAhNLwiExgoUZnawSSi/C2
         Z/sLCKyHQ24q9rz0SPKxwmqRA+VgQuWJtMFXNTjQhrgdZ0dIemgBF+E0n5aqd2OuaShL
         MA6iB+nbexUrfhAgdoC2WvA5TT9rI8eGchdf476MGad6HmsFgNv55EtbBXiRqf4e9mHW
         ltlw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=z1eF8Ji/ltNMAGpL6hDE6TC3+mq2QPQqgw//RIqJTcQ=;
        b=CRXqlZLiZ9aBkq4byNQvSMCOIzPIlBNcbGySmC5vNDr8qsxd4utn/LYXoS/4L8Frer
         epCZ7GUZX298VO5Bi5BuITz25Kq3D/Oab/lR4zUw8VPNqXjNEqv1GWWHjLSXQK8wYdk8
         Hwv0AiLbKl5WrdsjfuPmkZaqpUCcYT8/cSIXbbyCfVqxi4BjZsnlqXrJEEIHxzLqrEDy
         +Sg3J1pMbF0Hdxi3JguriRXpPpIeiXX8n/mOW4ylnT7vAbkt4LLfHGDUR4cUCpE9f9EL
         MTOlU3EUsIPKaCWvyNfkuRiCfsCaWtEytFHKyR7kaWFM57NEEi+KmAGJLrOEDZas+E8+
         voLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=z1eF8Ji/ltNMAGpL6hDE6TC3+mq2QPQqgw//RIqJTcQ=;
        b=nEQTqvVDqfJkd2CU62b4dIRTp5B7REVSZ+LveD3nMfBRwjXTeKqkflf54d87dO6aO6
         odp3GGdGmhGp9UJPDOy1ckrMbm2Dn2PUqRugCB0ooRwSh8O0JGmcBpSIjG2HBFbv4fBq
         YzBM5yJPKv4Hqnv8dMLvRR/yoGkcT3yMVB30Gng3yeSJji34aD8Py49v96z6ARnbWhBw
         2pUD8tGu8JBIZNfeIiHYcT4J0fRvAaEYk4SCcbrjqsfKMxsjXnaIrR+1d62IJQwiwr4T
         LoRTL6V/5s46zjPCN3n8o+pYBx46uxPNvHIZUSnnM2PanCQhlnw0t98ivlHtRV3PvaIh
         jnXw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUIzJ7KrNzOx0AHc1b/2iLqbvzfvBrwpaKh3OKmOUXre4MGsDNI
	CJxnBmKV3bbkVaewjs0+xNg=
X-Google-Smtp-Source: APXvYqxpyhB21Mo7p8pu3eBVnaQZZ2nNQ3sy91hcXVX76hxJf9yPu7G2hORbo6XsyGalGHuHBkNFjg==
X-Received: by 2002:aca:fd16:: with SMTP id b22mr4414984oii.73.1581630495405;
        Thu, 13 Feb 2020 13:48:15 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:c694:: with SMTP id w142ls7933319oif.6.gmail; Thu, 13
 Feb 2020 13:48:15 -0800 (PST)
X-Received: by 2002:aca:f305:: with SMTP id r5mr4573959oih.174.1581630495035;
        Thu, 13 Feb 2020 13:48:15 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581630495; cv=none;
        d=google.com; s=arc-20160816;
        b=dXtJiUt8e/vjWYhWuNzw/uh3+QR1Vkh/MeV1t92z4jPXxJy3dChHczsK5i9VpgDbN5
         nhdszGoI3yNbeje+MOHMUhYVGw6Ta3CFCAAAbpmsWi6qFzdFxKd0D0hEsEyRllJKIMWu
         u9EVwiZxPMUJ/lycnSsm7kq3LWAXSR6hr9JNFMHRXhPCR+9IzYt8L3ciit4Bz7JTxx70
         nPgWZgzuTlaHjwYWoCOA8X6EsTq4wHl+uZlnmZ8oc4Hi4MV/QTVNK5/4fEWkCtG6slnm
         5Yx0OAZHcJWGSlVPOubCYbKw1Xbxd7amw1Zhv5BDL0Zh7cMKEQJr5EL/S1/+Ikj5tYpm
         tl7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=OA6xe4auWdZmJjRQ/wLiVug/7u1e1T2hWJ4r61PFbbI=;
        b=s1Or3wvi4/7RslMxkx8imBme9phClT2LL9/VW/zb/aXDAVd1UOuOk9fZFso1UzShqn
         V6xDJ9k3R8WDaCGnNmGkHBRBHv7aOu8HitW4rs2vcZd6+hITAueqd++a/kBbPn8mvKRm
         yZmHtFQ0Ta1lbwyOcwdMTnUznpiT1htDAPf4oPUj+iAoluc0s700uaZDDWpKKyCOAp80
         nByZgRYVre1WnWvkstJowaRrx41eT9UmXALK7b40/eqhhTqqi0PnROXJJ9pywsPXELVu
         kMNbuiCCB6wcNlDqCrsSb0q3fJbBXIg1+ssjNcT0B7dpPor/1blGheinQAhsKvPnVUby
         hRrQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Yjbihcz/";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x341.google.com (mail-ot1-x341.google.com. [2607:f8b0:4864:20::341])
        by gmr-mx.google.com with ESMTPS id d16si213218oij.1.2020.02.13.13.48.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Feb 2020 13:48:15 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) client-ip=2607:f8b0:4864:20::341;
Received: by mail-ot1-x341.google.com with SMTP id h9so7109686otj.11
        for <clang-built-linux@googlegroups.com>; Thu, 13 Feb 2020 13:48:15 -0800 (PST)
X-Received: by 2002:a9d:138:: with SMTP id 53mr8087394otu.334.1581630494627;
        Thu, 13 Feb 2020 13:48:14 -0800 (PST)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id q6sm1225527otn.73.2020.02.13.13.48.13
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 13 Feb 2020 13:48:14 -0800 (PST)
Date: Thu, 13 Feb 2020 14:48:12 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Michel =?iso-8859-1?Q?D=E4nzer?= <michel@daenzer.net>,
	clang-built-linux@googlegroups.com, intel-gfx@lists.freedesktop.org,
	linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Disable
 -Wtautological-constant-out-of-range-compare
Message-ID: <20200213214812.GA7980@ubuntu-m2-xlarge-x86>
References: <20200211050808.29463-1-natechancellor@gmail.com>
 <20200211061338.23666-1-natechancellor@gmail.com>
 <4c806435-f32d-1559-9563-ffe3fa69f0d1@daenzer.net>
 <20200211203935.GA16176@ubuntu-m2-xlarge-x86>
 <f3a6346b-2abf-0b6a-3d84-66e12f700b2b@daenzer.net>
 <20200212170734.GA16396@ubuntu-m2-xlarge-x86>
 <d81a2cfe-79b6-51d4-023e-0960c0593856@daenzer.net>
 <877e0qy2n8.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <877e0qy2n8.fsf@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="Yjbihcz/";       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Thu, Feb 13, 2020 at 04:37:15PM +0200, Jani Nikula wrote:
> On Wed, 12 Feb 2020, Michel D=C3=A4nzer <michel@daenzer.net> wrote:
> > On 2020-02-12 6:07 p.m., Nathan Chancellor wrote:
> >> On Wed, Feb 12, 2020 at 09:52:52AM +0100, Michel D=C3=A4nzer wrote:
> >>> On 2020-02-11 9:39 p.m., Nathan Chancellor wrote:
> >>>> On Tue, Feb 11, 2020 at 10:41:48AM +0100, Michel D=C3=A4nzer wrote:
> >>>>> On 2020-02-11 7:13 a.m., Nathan Chancellor wrote:
> >>>>>> A recent commit in clang added -Wtautological-compare to -Wall, wh=
ich is
> >>>>>> enabled for i915 so we see the following warning:
> >>>>>>
> >>>>>> ../drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1485:22: warning=
:
> >>>>>> result of comparison of constant 576460752303423487 with expressio=
n of
> >>>>>> type 'unsigned int' is always false
> >>>>>> [-Wtautological-constant-out-of-range-compare]
> >>>>>>         if (unlikely(remain > N_RELOC(ULONG_MAX)))
> >>>>>>             ~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~
> >>>>>>
> >>>>>> This warning only happens on x86_64 but that check is relevant for
> >>>>>> 32-bit x86 so we cannot remove it.
> >>>>>
> >>>>> That's suprising. AFAICT N_RELOC(ULONG_MAX) works out to the same v=
alue
> >>>>> in both cases, and remain is a 32-bit value in both cases. How can =
it be
> >>>>> larger than N_RELOC(ULONG_MAX) on 32-bit (but not on 64-bit)?
> >>>>>
> >>>>
> >>>> Hi Michel,
> >>>>
> >>>> Can't this condition be true when UINT_MAX =3D=3D ULONG_MAX?
> >>>
> >>> Oh, right, I think I was wrongly thinking long had 64 bits even on 32=
-bit.
> >>>
> >>>
> >>> Anyway, this suggests a possible better solution:
> >>>
> >>> #if UINT_MAX =3D=3D ULONG_MAX
> >>> 	if (unlikely(remain > N_RELOC(ULONG_MAX)))
> >>> 		return -EINVAL;
> >>> #endif
> >>>
> >>>
> >>> Or if that can't be used for some reason, something like
> >>>
> >>> 	if (unlikely((unsigned long)remain > N_RELOC(ULONG_MAX)))
> >>> 		return -EINVAL;
> >>>
> >>> should silence the warning.
> >>=20
> >> I do like this one better than the former.
> >
> > FWIW, one downside of this one compared to all alternatives (presumably=
)
> > is that it might end up generating actual code even on 64-bit, which
> > always ends up skipping the return.
>=20
> I like this better than the UINT_MAX =3D=3D ULONG_MAX comparison because
> that creates a dependency on the type of remain.
>=20
> Then again, a sufficiently clever compiler could see through the cast,
> and flag the warning anyway...

Would you prefer a patch that adds that cast rather than silencing the
warning outright? It does appear to work for clang.

Cheers,
Nathan

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20200213214812.GA7980%40ubuntu-m2-xlarge-x86.
