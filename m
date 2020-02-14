Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBKGJTLZAKGQEW3VCPYQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83f.google.com (mail-qt1-x83f.google.com [IPv6:2607:f8b0:4864:20::83f])
	by mail.lfdr.de (Postfix) with ESMTPS id 6416215D8AE
	for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 14:46:18 +0100 (CET)
Received: by mail-qt1-x83f.google.com with SMTP id c8sf5899744qte.22
        for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 05:46:18 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581687977; cv=pass;
        d=google.com; s=arc-20160816;
        b=kMsY8JEwwCecU8cpO8ZhD7X/gvqSnNfM+Ixix+jDBQAyiEqN6FGK42UYtu4I9PYTzQ
         9vCF/e8VU8lbzUbo9zPFhisf2uQB1YvRL9nlbE4z4qQj1tQFdsXbnQ3i23vqG2c31o5y
         ZA/cnbhQe9BvU+uXP1/OFvtqUhsu80EKWWdL27y1OqLFiC7AKxARv6LotNZ4ysQIcskK
         k8hDtEsBGXwq9djNKaNM5n6xjctEwo3h0PWw5tyJLuVDbYg2aJ8e++YPC2BKoSI8Qjr7
         Uwq8CVlurDWCYXLv5tlZMjrwuthS6NxL9ENgEDXYQPgrpTDRhy9+X1hA1ORgYRFrfJRy
         h74g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature
         :dkim-signature;
        bh=cV3+BHuVJ1xeEFcGSdWNyZUKsFpTgsJVuSKEMOwUJ+o=;
        b=AVad0hTCiQcsjf2TauhgFvUCVFURdeQEWlgZQ749q7UuZ3K4UdAu2xDTDmAjguBubQ
         VvIeFO+f8NUTJxAfTp5PYNCb3siBeqIoaamyyiLJsh6u8jLJgcFB/j1smaN14k1TOaCB
         pK82npW7PV+VMfgCPt4/QpxPaNxM5nfWRXNYV9EIPqzxgj3Nemb5sY6aR+bGgSf2sFpZ
         BThT30aZC2SObEjsvqhuFgXV5im/ZTqDuu2ezc7QVr8iYnIgHw8fAfuEzMn4SGm8E04k
         s9N3M+fh/oKzw+O7aRJI3H5I+tBUBgdk0KcWOVdtnh2wBb9Yuw6zoWpZJoTU02gW3C/T
         ZV5w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Cvlk7S2k;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cV3+BHuVJ1xeEFcGSdWNyZUKsFpTgsJVuSKEMOwUJ+o=;
        b=Wcl/QRIBL/A0q9f4Qc7mZ4mY6SD9Uycds4QoDiI4Y00XCrALpDVzt8TZN4dxd683zo
         gQY685VNY89uX8iVoo++VTYiXBIQX78o96pczA07MIj1x/i7JiUbexHoh2+g1niEA+MP
         g1WZRnfiRm9GWN2IxtWnTRb4wQL1ERV5nsLggAY5foBGcRvgs4tXNQbqiAjzpm1htxqs
         knMx0iPFA8L/3X/W8R1dS09WdccIo9tDStPargl53TTUAtbKZbIgbLagpl+GkQTJcK6I
         hnHz7mnB0rw6TDji5mbc8RKlb4nNCtugAK1EIIS49t9sCh6NUYAfODGqJ8xHN0nWYe/q
         VWYg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cV3+BHuVJ1xeEFcGSdWNyZUKsFpTgsJVuSKEMOwUJ+o=;
        b=Why+zAdm/H8hjMheHOTISmezUanX6RUBLpiLNwmvC4Sn7EWbhq4m7rPC4qdGf0YQyC
         qYQl+vEPiGd04nke6/+ZcHaF/5H43TqCnWFNCPLNPmD4saEVckvBEFb9JWP2VuLotkO0
         WrR8fCBYyfH8K1gIXjyMYsifLdrlTfZR2s3GgDxk8dfkvDNWYX8gvOkQ2afINppxyksL
         4UFfjsv1crDvng1rHp5/OLfbyyXXsr8nSgtzm+v/f/2ZMzYhPiwrlD/XJhkkWr/huuTm
         yjcN6ej+zp+f/qUvGqHXvlG7SGMXcF1u6QE3KjnIsTm9zZQMiHwUH+VzTC82NQNxSF1A
         FyuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cV3+BHuVJ1xeEFcGSdWNyZUKsFpTgsJVuSKEMOwUJ+o=;
        b=IuNpdvUoVV45TQen/nqr2GFx7piDkuDt8q6xp00j0SzVEoOos3Or/dkoyqZu2b9gS4
         dHKKTnR5QpweKrh2ns1oSiTFU/fkfkNAEuNpkF3TbPyqkEdYxG0S4TftFmK8Cx8vzzkg
         ZvhyLZSwHMiEdxtUpHodG2I4Hkoj+NNxYlDUf6qwaYU0wZwLoK0UyNwKtnUD1EWq87tl
         6w2cTqm7GZEpbM3VlfsdV34fsQ75QjEmHmbIOJI1IBEo5lK2EAcyvPSSi4FUKBAoBwIx
         GLuilY+p6Z2/3hb7MF8A8tVH9uyK/6V2hQ8wB3tovBdzzbHWdckfD+sJg1H2DzIR2S1I
         ALYw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVNbHOwnCwg0yAPK6h+tOfUOQPa5YsJDeFLzIioAuCvFtXVKzD5
	0M5+hVEaoweyDG67Ko16flc=
X-Google-Smtp-Source: APXvYqxCr2SgHGdU16fSRWGRhZK94dJ5Nu+hQxGX3DI4uDG4ZqX+acygdzjSw82tW8vc6P+ZMIBWHQ==
X-Received: by 2002:ac8:7446:: with SMTP id h6mr2600211qtr.274.1581687977080;
        Fri, 14 Feb 2020 05:46:17 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:2082:: with SMTP id e2ls882981qka.9.gmail; Fri, 14
 Feb 2020 05:46:16 -0800 (PST)
X-Received: by 2002:a37:a404:: with SMTP id n4mr2594341qke.247.1581687976651;
        Fri, 14 Feb 2020 05:46:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581687976; cv=none;
        d=google.com; s=arc-20160816;
        b=ahrtT6mpjDeLvLpYPeV9BlGf1dwTFhxVckmzy0zt4ckuDOyRWDPvfuuyLnpMBE8bAQ
         kz3oA9NKBkvU/MvZ4p4zSOiRlXS6zDtxWA0/SPJg4x4gOB/G4NskKMIVO48KwiuhJ7qz
         O7tn8gnP188fyk4AxGTZ/YF7P2B0zeITHFixhqet86VVZW1/AiNlhsYfhcAWTlwv90Hu
         jiBY8ivAMNZWWyEWSnc+qHcUvBfKsMHCxWEj+FYyMejWjIeGWNVRVN9wRj+6tUQDH401
         vJaH40Pg6XKtvV0vrChJQzT7hGRvoR6Pg+SU2HYyAoPjNyk17L9BMYp0Ap00uVvFpjmM
         BKSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=Z2AWHyN/sOb4PsOQdZpFIB/8+XI9oSRqPBfKZfRwFiU=;
        b=NTAZH77dHn1wQZnpN92zQiqF/UjNsJTguaLkCK5wYPh958soEw2/62Y/3tCAUJj0fs
         KvZIHMsreeN8dkaVnzFdzLtpmyMKUTrSBi599nv1AQG9RCHwIqPThkTsJrDpOvI+wz0N
         r51f3jCDUSU/taYEf24vg8mtQTH2mQXkSLRSFpDWeIR0GqjcCMlbo13WSBBg8oLjt0Uo
         t9h33VPQuqiD+nKa8ZSAcoIce6i8oeILg7XDc5KmkJ75yU9oD4igmllUspAyGK14EK27
         EPRcYZtu7KsQiZiCDGX7/E5l92Hss6PF/gO2E0GIFCb1oNi3hGmaUQcGC7NYKinxkrEv
         VdMA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Cvlk7S2k;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x244.google.com (mail-oi1-x244.google.com. [2607:f8b0:4864:20::244])
        by gmr-mx.google.com with ESMTPS id s25si297576qtc.0.2020.02.14.05.46.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 Feb 2020 05:46:16 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) client-ip=2607:f8b0:4864:20::244;
Received: by mail-oi1-x244.google.com with SMTP id z2so9437164oih.6
        for <clang-built-linux@googlegroups.com>; Fri, 14 Feb 2020 05:46:16 -0800 (PST)
X-Received: by 2002:aca:4306:: with SMTP id q6mr1922461oia.54.1581687975994;
        Fri, 14 Feb 2020 05:46:15 -0800 (PST)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id k17sm1885677oic.45.2020.02.14.05.46.14
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 14 Feb 2020 05:46:15 -0800 (PST)
Date: Fri, 14 Feb 2020 06:46:13 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Jani Nikula <jani.nikula@linux.intel.com>,
	Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
	Rodrigo Vivi <rodrigo.vivi@intel.com>,
	intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
	Michel =?iso-8859-1?Q?D=E4nzer?= <michel@daenzer.net>
Subject: Re: [PATCH] drm/i915: Cast remain to unsigned long in eb_relocate_vma
Message-ID: <20200214134613.GA41838@ubuntu-m2-xlarge-x86>
References: <20200214054706.33870-1-natechancellor@gmail.com>
 <87v9o965gg.fsf@intel.com>
 <158166913989.4660.10674824117292988120@skylake-alporthouse-com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <158166913989.4660.10674824117292988120@skylake-alporthouse-com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Cvlk7S2k;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Fri, Feb 14, 2020 at 08:32:19AM +0000, Chris Wilson wrote:
> Quoting Jani Nikula (2020-02-14 06:36:15)
> > On Thu, 13 Feb 2020, Nathan Chancellor <natechancellor@gmail.com> wrote=
:
> > > A recent commit in clang added -Wtautological-compare to -Wall, which=
 is
> > > enabled for i915 after -Wtautological-compare is disabled for the res=
t
> > > of the kernel so we see the following warning on x86_64:
> > >
> > >  ../drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1433:22: warning:
> > >  result of comparison of constant 576460752303423487 with expression =
of
> > >  type 'unsigned int' is always false
> > >  [-Wtautological-constant-out-of-range-compare]
> > >          if (unlikely(remain > N_RELOC(ULONG_MAX)))
> > >             ~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~
> > >  ../include/linux/compiler.h:78:42: note: expanded from macro 'unlike=
ly'
> > >  # define unlikely(x)    __builtin_expect(!!(x), 0)
> > >                                             ^
> > >  1 warning generated.
> > >
> > > It is not wrong in the case where ULONG_MAX > UINT_MAX but it does no=
t
> > > account for the case where this file is built for 32-bit x86, where
> > > ULONG_MAX =3D=3D UINT_MAX and this check is still relevant.
> > >
> > > Cast remain to unsigned long, which keeps the generated code the same
> > > (verified with clang-11 on x86_64 and GCC 9.2.0 on x86 and x86_64) an=
d
> > > the warning is silenced so we can catch more potential issues in the
> > > future.
> > >
> > > Link: https://github.com/ClangBuiltLinux/linux/issues/778
> > > Suggested-by: Michel D=C3=A4nzer <michel@daenzer.net>
> > > Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> >=20
> > Works for me as a workaround,
>=20
> But the whole point was that the compiler could see that it was
> impossible and not emit the code. Doesn't this break that?
> -Chris

As noted in the commit message, I ran diff <(objdump -Dr) <(objdump -Dr)
on objects files compiled with and without the patch with clang and gcc
for x86_64 and gcc for i386 (i386 does not build with clang) and there
was zero difference aside from the file names.

At the end of the day, I do not really care how the warning get fixed,
just that it does since it is the only one on x86_64 defconfig.

Cheers,
Nathan

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20200214134613.GA41838%40ubuntu-m2-xlarge-x86.
