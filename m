Return-Path: <clang-built-linux+bncBCLMHO6ARMORBDUQS7ZAKGQE6WF6VZQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x438.google.com (mail-pf1-x438.google.com [IPv6:2607:f8b0:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 533F015CDB8
	for <lists+clang-built-linux@lfdr.de>; Thu, 13 Feb 2020 23:05:04 +0100 (CET)
Received: by mail-pf1-x438.google.com with SMTP id x10sf4560948pfn.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 13 Feb 2020 14:05:04 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581631502; cv=pass;
        d=google.com; s=arc-20160816;
        b=ejgygRf+CtVnKX6zH2MVkW1yooyigro3xZGnSwU7fMaJADGT5xHTtFX10SwjfABmwt
         u8jrQu/vnJ4kaIIEc+9lckpAJj7WWXOrUMZtpsrJGMO7vdzMHxMU5421e/63eTOrvN1N
         xrzg+rv05jKHmCypNKxTboybGjpXuyddHLAKH67ulZl9UmXc/Oo4voGBX3xSz55d1vzM
         R9bdjhaWNfJrKR1tikkJaGdaijnAigNvPjMttgGkCXR5cox6wwoIj/p0xcWVyMQQNGSx
         fpzR/EFJ6ma3gqgCB7PYJtrI6gcIwHOQdtcFYqtdav9AthhuzP3A/SPEe4cJTdpbkBw0
         Es6g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:message-id:date:references:organization:in-reply-to
         :subject:cc:to:from:sender:dkim-signature;
        bh=5/4IbzOENHJvV1aaIr0TL0GNl4kJqKbvmQKI8ajXV/c=;
        b=QEh8i77yWzo5q6xmtpntN+6FeRuPMvaEVPBPHWxEZl3YYPQ5+7IuTA4EQsnuXD2fJB
         B0pywgp341Zid+e8ojRxqLdiG336HSUFdR5nGgIOJPfMalfqBGwfg3Q1ZX+GuJ0iHOGA
         BSoRNjW71GRBkCmQFtpXYwMIkP+kvb3amiPXg4MpGsYnGmffgfyzRCbhbSLPTL0+BAuM
         wRiP7xMwvnpXmzJdxMH03gv1eNW8fajhIfzk+uEnPuoPwrHRGH1D30Vp0tFsTv13fLTP
         CvCjf2VdgF6lj2RdD1U5eBG7DmiHaSBuba85em9t11j98VAy6jGlEYARztRvdbOU4rhj
         XoWQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of jani.nikula@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=jani.nikula@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:organization:references:date
         :message-id:mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=5/4IbzOENHJvV1aaIr0TL0GNl4kJqKbvmQKI8ajXV/c=;
        b=pq701KZom0xB95Oar/szctFbMEPzUiubFyagv/58n6z+dPPYJeVFATY9B0om0HeIzo
         A3XyeIvpv88snYas4WtzVkOagZFXhkySiJVr5HTsMljJ5+zeJHIvru8HOdCt0Iv3pV7Y
         68dqTQvN0tttkonI500BfBwReQUH8Yzfv/oTE/I5odqdyUTJ+9TLhMkcBKT2kEiCxyyA
         WSm092cH1bRKabqtuHF2P7+v3z1cXUZHc50RbTTGBSz4J1tbyns0PtrRIkfD+EyBP2zG
         YgZZWBWWiJCrTgbq4d/IDr4ZwmhVjT8e2DdJgcD7H8dLbi5GiGMIW74PJio9uZsgqOH5
         AbBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to
         :organization:references:date:message-id:mime-version
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5/4IbzOENHJvV1aaIr0TL0GNl4kJqKbvmQKI8ajXV/c=;
        b=pgTBZK8kKqU8x30QdV5r1WK5u/D8JdEqrJzWk+n20s3mxJsQ7jv0b6Uuef43sFn1T3
         kb3hHQsQawAtXRdQagP60yQPl5QKg5cMKXaAdz/R2zTW4XQovv2RUx3xYLHorKHSOEn6
         S0+p8+CScqlB/gzfku5ipytHeR1//8kZK20OOC4TEau6QYqTqLVM+qmr5LjDazEsLFeh
         gkStMjPhp0ICmo7cs7ED0dEjI6CbWPImg7YzwHFSSDPz7qI7eUYSYTstlzzM6VC186f6
         WMwiK2juZ0er3KFW70zulwbOhhnoPiWZihhUBQ9hoyAAdMeSZCJlwZjf8oulN//XIn7h
         JqBA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUXoDOjOlJqFVOLy5psViNirCnTh4OAbLJ82pzL0Hjvs6h5ZAjq
	VBS0EvNfK6dODT1KLy37dwM=
X-Google-Smtp-Source: APXvYqza5b57RBZU3nROnlUjZXSNWwjRkgxR38b+Ks54lHuoUGwfsODFO0lljYY1jXhq+Ck8pcI+zg==
X-Received: by 2002:a17:902:7006:: with SMTP id y6mr45665plk.84.1581631502474;
        Thu, 13 Feb 2020 14:05:02 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:7c94:: with SMTP id x142ls9677466pfc.3.gmail; Thu, 13
 Feb 2020 14:05:02 -0800 (PST)
X-Received: by 2002:aa7:8bda:: with SMTP id s26mr16216741pfd.194.1581631502040;
        Thu, 13 Feb 2020 14:05:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581631502; cv=none;
        d=google.com; s=arc-20160816;
        b=FyLp7JoJJbQauwNJLYE/Q33xasrf8LfHKc+LkpDQAn8tw5Foaic6EvBH5Ltw4ax7TD
         +P4JMXGn3W2TR1yXxPgNFDaBYFCDefb37k8ULRKX35b72Ub4P7rryHl2mHCGdxPhdWXF
         lEgHZ0p8LhR5C+8NnzI76w2LHeGwP10brQ1h2WZ7g1pv/tVXSDNO1J8Ypr8bD2Gyfllv
         Y9LomTjnJV0wggbbrhepFZq7f8OHDla/i+n437KQD6lwuG+5TQXluXrhqkawL07aYFsq
         5FwUtbq+gtzzGnVCpzPpPfE+bPsgBWs0uEFJvoHGea0IwUl9WGnlwF/0DGpUfMOwxT72
         Uk2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:references
         :organization:in-reply-to:subject:cc:to:from;
        bh=1AzpIjMfk9FvRwhZajt5Cuk5Ki1oH3ePepjfRBCgGcg=;
        b=mXOR9LknvVCxzh77B9zvOT9hoNwu2CYLud8OnUMdmX3H+kKC5PUvrHLqa03Rk5ChlU
         v8wHSxehsZmpOXHDp5C0K4uvNsP4tGQujqehL1/dfORvZoHvprVnH/UlYx/WtiXhHoGu
         Q1YsJBbZb/xvsz3Fee2GSVRq0IFqhHOMlynJwgvDSADJ69OS/Jk6ufh3TGa7HUg44Q7u
         zn9WKkXg+vc4MqJmBl7dOMTP9kzfGdEDRWD7ffou9gV4XBw0gvuq6VsTnHZaysz2fPI8
         KvKaemGsv4GZhrwcRpEd/iaii2sP6PfwqrGUawdW0D5C6/Lf718Ishry2dSwsa0bD6Y1
         vzvQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of jani.nikula@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=jani.nikula@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga01.intel.com (mga01.intel.com. [192.55.52.88])
        by gmr-mx.google.com with ESMTPS id 59si175928ple.2.2020.02.13.14.05.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 13 Feb 2020 14:05:02 -0800 (PST)
Received-SPF: pass (google.com: domain of jani.nikula@intel.com designates 192.55.52.88 as permitted sender) client-ip=192.55.52.88;
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 13 Feb 2020 14:05:01 -0800
X-IronPort-AV: E=Sophos;i="5.70,438,1574150400"; 
   d="scan'208";a="227391043"
Received: from unknown (HELO localhost) ([10.252.53.8])
  by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 13 Feb 2020 14:04:58 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Michel =?utf-8?Q?D=C3=A4nzer?= <michel@daenzer.net>,
 clang-built-linux@googlegroups.com, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Disable -Wtautological-constant-out-of-range-compare
In-Reply-To: <20200213214812.GA7980@ubuntu-m2-xlarge-x86>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200211050808.29463-1-natechancellor@gmail.com> <20200211061338.23666-1-natechancellor@gmail.com> <4c806435-f32d-1559-9563-ffe3fa69f0d1@daenzer.net> <20200211203935.GA16176@ubuntu-m2-xlarge-x86> <f3a6346b-2abf-0b6a-3d84-66e12f700b2b@daenzer.net> <20200212170734.GA16396@ubuntu-m2-xlarge-x86> <d81a2cfe-79b6-51d4-023e-0960c0593856@daenzer.net> <877e0qy2n8.fsf@intel.com> <20200213214812.GA7980@ubuntu-m2-xlarge-x86>
Date: Fri, 14 Feb 2020 00:05:24 +0200
Message-ID: <87mu9mw3bv.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: jani.nikula@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of jani.nikula@intel.com designates 192.55.52.88 as
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

On Thu, 13 Feb 2020, Nathan Chancellor <natechancellor@gmail.com> wrote:
> On Thu, Feb 13, 2020 at 04:37:15PM +0200, Jani Nikula wrote:
>> On Wed, 12 Feb 2020, Michel D=C3=A4nzer <michel@daenzer.net> wrote:
>> > On 2020-02-12 6:07 p.m., Nathan Chancellor wrote:
>> >> On Wed, Feb 12, 2020 at 09:52:52AM +0100, Michel D=C3=A4nzer wrote:
>> >>> On 2020-02-11 9:39 p.m., Nathan Chancellor wrote:
>> >>>> On Tue, Feb 11, 2020 at 10:41:48AM +0100, Michel D=C3=A4nzer wrote:
>> >>>>> On 2020-02-11 7:13 a.m., Nathan Chancellor wrote:
>> >>>>>> A recent commit in clang added -Wtautological-compare to -Wall, w=
hich is
>> >>>>>> enabled for i915 so we see the following warning:
>> >>>>>>
>> >>>>>> ../drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1485:22: warnin=
g:
>> >>>>>> result of comparison of constant 576460752303423487 with expressi=
on of
>> >>>>>> type 'unsigned int' is always false
>> >>>>>> [-Wtautological-constant-out-of-range-compare]
>> >>>>>>         if (unlikely(remain > N_RELOC(ULONG_MAX)))
>> >>>>>>             ~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~
>> >>>>>>
>> >>>>>> This warning only happens on x86_64 but that check is relevant fo=
r
>> >>>>>> 32-bit x86 so we cannot remove it.
>> >>>>>
>> >>>>> That's suprising. AFAICT N_RELOC(ULONG_MAX) works out to the same =
value
>> >>>>> in both cases, and remain is a 32-bit value in both cases. How can=
 it be
>> >>>>> larger than N_RELOC(ULONG_MAX) on 32-bit (but not on 64-bit)?
>> >>>>>
>> >>>>
>> >>>> Hi Michel,
>> >>>>
>> >>>> Can't this condition be true when UINT_MAX =3D=3D ULONG_MAX?
>> >>>
>> >>> Oh, right, I think I was wrongly thinking long had 64 bits even on 3=
2-bit.
>> >>>
>> >>>
>> >>> Anyway, this suggests a possible better solution:
>> >>>
>> >>> #if UINT_MAX =3D=3D ULONG_MAX
>> >>> 	if (unlikely(remain > N_RELOC(ULONG_MAX)))
>> >>> 		return -EINVAL;
>> >>> #endif
>> >>>
>> >>>
>> >>> Or if that can't be used for some reason, something like
>> >>>
>> >>> 	if (unlikely((unsigned long)remain > N_RELOC(ULONG_MAX)))
>> >>> 		return -EINVAL;
>> >>>
>> >>> should silence the warning.
>> >>=20
>> >> I do like this one better than the former.
>> >
>> > FWIW, one downside of this one compared to all alternatives (presumabl=
y)
>> > is that it might end up generating actual code even on 64-bit, which
>> > always ends up skipping the return.
>>=20
>> I like this better than the UINT_MAX =3D=3D ULONG_MAX comparison because
>> that creates a dependency on the type of remain.
>>=20
>> Then again, a sufficiently clever compiler could see through the cast,
>> and flag the warning anyway...
>
> Would you prefer a patch that adds that cast rather than silencing the
> warning outright? It does appear to work for clang.

I'd take the cast.

If that fails for whatever reason, per-file

CFLAGS_gem/i915_gem_execbuffer.o =3D $(call cc-disable-warning, tautologica=
l-constant-out-of-range-compare)

over subdir-ccflags-y would be preferrable I think.

BR,
Jani.



>
> Cheers,
> Nathan

--=20
Jani Nikula, Intel Open Source Graphics Center

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/87mu9mw3bv.fsf%40intel.com.
