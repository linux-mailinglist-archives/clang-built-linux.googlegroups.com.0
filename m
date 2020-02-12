Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBWPBSDZAKGQE7CGU5CQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103d.google.com (mail-pj1-x103d.google.com [IPv6:2607:f8b0:4864:20::103d])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AD2015AE13
	for <lists+clang-built-linux@lfdr.de>; Wed, 12 Feb 2020 18:07:38 +0100 (CET)
Received: by mail-pj1-x103d.google.com with SMTP id hi12sf1713921pjb.7
        for <lists+clang-built-linux@lfdr.de>; Wed, 12 Feb 2020 09:07:38 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581527257; cv=pass;
        d=google.com; s=arc-20160816;
        b=XGzjk71DebUb/BLhiWXLFxX9UjLauIHiTiZLEhTH0X/axhoLpZOFxhrlhOYliNbeFZ
         2INB9MRchX1xbkKwABV/TOnWpmIcyPCADowbzkRM5rwvKh4C0ccR5De9FI5u7QV112++
         D48QvbeKtN3h4UIHa7WVvdB8u4V8q1ip8kJRL1dfZCR59w0TfEsrLIOV+khZU5jUt0Oa
         iq2Q0C+TOTvxVmb4kf5N20nl2JCujat5Wl+9gexrAujWQ9PAqzQjqSye8M14cG1/NSbb
         hGsv61z4X6jKGewscbBWMw4ZNqBEuY/mxVnLpOExXV5QGrMMpwGdOEwZUCgKeRNjVHzq
         pAug==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature
         :dkim-signature;
        bh=zcc0LmiqUrLp0BeuHCFnrrxrM5lFfJyQiVT0HLJAYq4=;
        b=qYqAzMlQv2t6lM1uhDU1FseOjRLrZvMNx644M7cRWoH4NxHBOWkuvJHl1Fx5PU8Min
         QbdgpceBN3zXxsLLv390eUpWTCstlaeJeetdfNAsv5w+xfHMXbl5RobirzDWqshaTJhY
         gI7or5uyumMHoH7vH6ERmdLYolztfJr+RtgO8YFe4eM9oHLC9z8svAk5qjakgvW7XQY4
         mtcS1osweSswmeIbXkqB6WUxCuwJZHhEBV13SZeZ5WDzfpF9xblcM4QI5/ygUZScb+ot
         w1oNQZMdHh5UOEZJD8Rq4X+sh9NtHJ2APH/q6oIj9HUYWBPEA2J5Wiv/K9WhpDEUyAAN
         cS5A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=X6dnA0RT;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zcc0LmiqUrLp0BeuHCFnrrxrM5lFfJyQiVT0HLJAYq4=;
        b=G93mRWWBTrvwoNYW+Gw0OxOffmbPvWbAMXhFuwkGVsDbF1EMUt4L+3FwCLAOaCBbfz
         KdaGVgFVGKR6Y+Be6XY1pKtafuSkpDHKEouLgZu4qGw/VYx2u9m9PGXt3NJgbfLM7GyO
         RZp1rl+Vpz9N9756qHlZRG7hmasdr87I29u9lNSmvYN5UCq+ijfv/1HRh8z779yy80Ml
         SykDtnCKUJ+tvIWMcfmHoKU3b2olEya3my7Ex5IH5n5Gcp5OJcvoB9cWpw17XIoVEJic
         okSFzwFOo2B1VL5GOpjeK2MZk9wCx7E7dhZJmNzC0kXP5rJyDxK6bG0p7LaK0ezXwEx8
         L/rw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zcc0LmiqUrLp0BeuHCFnrrxrM5lFfJyQiVT0HLJAYq4=;
        b=RFl1QFki8VS8e0DPhd2+FdKk/wVk+rcto+jhAMY+lGNkRgg8t8USYvHqjIh6ltIz2m
         zpIKyVJ1L0WPNVcPqncNLoGEENPbhcOuTuHQ3npzHz8wnoMBm0J8KKmAWhivf0iwrA+B
         jXaCPCQ1t1ZN8qBzQYbvxP9Rr+umokLPdqhBvyVAaw+MvRCDLUjcCcZ+/Bom5T/vhnnS
         9jXN2kaekw4Of+V/M+Ami8dFOEPqOAWS+YLocSyYO/4dbiqWGTm6033etbxs2JIwWlXi
         ZjSymrBULZm8p5I4eBFQQAhCAiTy9Zu0FY/r/4aNn0qD9iePC8H9ie0cyDImiLUqjPlP
         qVQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zcc0LmiqUrLp0BeuHCFnrrxrM5lFfJyQiVT0HLJAYq4=;
        b=jrW7OuwfD62fSJiZBo0zhE7+PQbNX02xo2hDn9wPbilr57gfYpbwYb8wpNaNmFddM+
         c0snlbuiIyEuAytoiNZiqMVX2KqOlwC+RrX3joYnQIDF8A/ie0HeWx2A8gcfiugx2MIg
         QGpqlOGF6lQm9DT6axdx6vZZTE3v+800qN9/PYYWgk21I9jUY7SHNYjxnmZGf6ss+Ogn
         ct59DHHulNLZfpm/RgYa1LSyKLEashFUfiuzaPnIo+rgGNQwpLMxreJC/2jZwcLTAH9v
         AuLSdul/yC9lKAlyqT+RZ0kg4MAxG5Frvomg7QHF4bQEGxHmtQpSRFW7hHVvyJeUr+WP
         L8lA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAV+UmxVr70mgyjCZgo9wRuMp+khZFy9FPQL3LvoUXEXVVmWE6g1
	z4Zg5WBndz2D6UFeeTdWo9g=
X-Google-Smtp-Source: APXvYqwDnL1IioAjWpZYXQQFw54SCnMwqw5W83VAyv+iBh3Wur5mO3vZRSZy91Tnxv5q8VespfuLvQ==
X-Received: by 2002:a62:7681:: with SMTP id r123mr9345139pfc.169.1581527257183;
        Wed, 12 Feb 2020 09:07:37 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:46ce:: with SMTP id jx14ls27451pjb.3.gmail; Wed, 12
 Feb 2020 09:07:36 -0800 (PST)
X-Received: by 2002:a17:902:bb93:: with SMTP id m19mr9580923pls.310.1581527256777;
        Wed, 12 Feb 2020 09:07:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581527256; cv=none;
        d=google.com; s=arc-20160816;
        b=yCdfJ1CAJpfQVRQiXgIALerd/b/gfiBdpPbs2LJOBsb3YwlW7VxBuxR+x+IG9DeXnL
         TvjpdyOpdD5F0gdqOXMs5o3nUmahGxUar8uTNKNZbOKhwEqKIWWFpFa4QwX46lhNjTGm
         DZ8v8Q4Ju1aBdl26O/e9/YmITV+HaUaQUo8+jw5UpMRfxiRP0ZHvMlDUD5a53zsnWPmT
         R2H57iF05+iiLnI/Tn3ZXpK/B00YRHmYk48RWgBc5O8Xe01fGUepFEpKarjW/XzkZPnH
         C1k1O+nr4N/JW64je+o1UzhKeSpmgs3/FVt3+lg7p0GYwA4+D4JyfZrhcjvszHUoug4i
         m/Ow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=q493gbsIG2nzkYQNNXMk8303hOGd7AofSKLTmVfJkrQ=;
        b=D68PqZ0MtnLMPP7upEFLG3TkusgRDxwPdLwSfw7ElcGMlwuSckg5sOk3DT7njllJ6p
         BQurluk3N3kZHvbGFwCOl+OPKcduTZAbqOpkMzepPSEGJOw95uox9huQK9w4NoKSgQGO
         lPqqomxy93bwQo9NhWtT0Ci2EykDSVhTjSxP9wY5CyOxw2JYBM+QCs7Z+UM3G2YggklR
         dwNrBrcTmIwsyulQn4eYl9VZ3MmEIA4jod0OHuuIz+G33iRZMv967/FKDRuVDc0bjdJn
         /lAUhhtmL3PUQx3JYF0dsKBytV3LmSOswNYnjEu4HcwqOCGkfvZlfuFvVpSK8V5G00ZJ
         Nh0w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=X6dnA0RT;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x244.google.com (mail-oi1-x244.google.com. [2607:f8b0:4864:20::244])
        by gmr-mx.google.com with ESMTPS id a5si348622pjv.2.2020.02.12.09.07.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Feb 2020 09:07:36 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) client-ip=2607:f8b0:4864:20::244;
Received: by mail-oi1-x244.google.com with SMTP id a22so2672688oid.13
        for <clang-built-linux@googlegroups.com>; Wed, 12 Feb 2020 09:07:36 -0800 (PST)
X-Received: by 2002:a05:6808:8ca:: with SMTP id k10mr36867oij.164.1581527256335;
        Wed, 12 Feb 2020 09:07:36 -0800 (PST)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id w20sm343637otj.21.2020.02.12.09.07.35
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 12 Feb 2020 09:07:35 -0800 (PST)
Date: Wed, 12 Feb 2020 10:07:34 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Michel =?iso-8859-1?Q?D=E4nzer?= <michel@daenzer.net>
Cc: intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com, dri-devel@lists.freedesktop.org,
	Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: Re: [PATCH v2] drm/i915: Disable
 -Wtautological-constant-out-of-range-compare
Message-ID: <20200212170734.GA16396@ubuntu-m2-xlarge-x86>
References: <20200211050808.29463-1-natechancellor@gmail.com>
 <20200211061338.23666-1-natechancellor@gmail.com>
 <4c806435-f32d-1559-9563-ffe3fa69f0d1@daenzer.net>
 <20200211203935.GA16176@ubuntu-m2-xlarge-x86>
 <f3a6346b-2abf-0b6a-3d84-66e12f700b2b@daenzer.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <f3a6346b-2abf-0b6a-3d84-66e12f700b2b@daenzer.net>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=X6dnA0RT;       spf=pass
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

On Wed, Feb 12, 2020 at 09:52:52AM +0100, Michel D=C3=A4nzer wrote:
> On 2020-02-11 9:39 p.m., Nathan Chancellor wrote:
> > On Tue, Feb 11, 2020 at 10:41:48AM +0100, Michel D=C3=A4nzer wrote:
> >> On 2020-02-11 7:13 a.m., Nathan Chancellor wrote:
> >>> A recent commit in clang added -Wtautological-compare to -Wall, which=
 is
> >>> enabled for i915 so we see the following warning:
> >>>
> >>> ../drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1485:22: warning:
> >>> result of comparison of constant 576460752303423487 with expression o=
f
> >>> type 'unsigned int' is always false
> >>> [-Wtautological-constant-out-of-range-compare]
> >>>         if (unlikely(remain > N_RELOC(ULONG_MAX)))
> >>>             ~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~
> >>>
> >>> This warning only happens on x86_64 but that check is relevant for
> >>> 32-bit x86 so we cannot remove it.
> >>
> >> That's suprising. AFAICT N_RELOC(ULONG_MAX) works out to the same valu=
e
> >> in both cases, and remain is a 32-bit value in both cases. How can it =
be
> >> larger than N_RELOC(ULONG_MAX) on 32-bit (but not on 64-bit)?
> >>
> >=20
> > Hi Michel,
> >=20
> > Can't this condition be true when UINT_MAX =3D=3D ULONG_MAX?
>=20
> Oh, right, I think I was wrongly thinking long had 64 bits even on 32-bit=
.
>=20
>=20
> Anyway, this suggests a possible better solution:
>=20
> #if UINT_MAX =3D=3D ULONG_MAX
> 	if (unlikely(remain > N_RELOC(ULONG_MAX)))
> 		return -EINVAL;
> #endif
>=20
>=20
> Or if that can't be used for some reason, something like
>=20
> 	if (unlikely((unsigned long)remain > N_RELOC(ULONG_MAX)))
> 		return -EINVAL;
>=20
> should silence the warning.

I do like this one better than the former.

>=20
>=20
> Either of these should be better than completely disabling the warning
> for the whole file.

Normally, I would agree but I am currently planning to leave
-Wtautological-constant-out-of-range-compare disabled when I turn on
-Wtautological-compare for the whole kernel because there are plenty of
locations in the kernel where these kind of checks depend on various
kernel configuration options and the general attitude of kernel
developers is that this particular warning is not really helpful
for that reason.

I'll see if there is a general consensus before moving further since I
know i915 turns on a bunch of extra warnings from the rest of the kernel
(hence why we are in this situation).

Cheers,
Nathan

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20200212170734.GA16396%40ubuntu-m2-xlarge-x86.
