Return-Path: <clang-built-linux+bncBDV37XP3XYDRBEPJWTVAKGQETEFNUXA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53e.google.com (mail-ed1-x53e.google.com [IPv6:2a00:1450:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id 60C4A87498
	for <lists+clang-built-linux@lfdr.de>; Fri,  9 Aug 2019 10:53:37 +0200 (CEST)
Received: by mail-ed1-x53e.google.com with SMTP id d27sf59884023eda.9
        for <lists+clang-built-linux@lfdr.de>; Fri, 09 Aug 2019 01:53:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565340817; cv=pass;
        d=google.com; s=arc-20160816;
        b=kXGfzs+zpqPFzZnffEvwUquC3g2Z/2PxPMwoQ+gDotHMDy4H8wOogQ+O1wFfzzKbQX
         Hlc/qMi3yucfjwTk6Vg7yJMltmvSeWoKDQY/AIeSC7Kr5ruycfcxOSo/EUzvbWiVYVyK
         RYYXmjWsy1xn2NxR3jBDj8jgd5X+TpXdYO0a+S8RTl0VcSSHuQq4GmA6DM6wshPuVSdp
         33r9mSz1ryAojRBJfBeSi3O57usjbHd7/6wwyeO3P0QztD+aP3ANfbk6iOTCSM2aBndT
         cG8q7/kEUdIfwEPOs1u0JQmZQMgITCn4R4c59dDR9gX30cd72Kt4fCVtzKmQauxWK6rD
         S7ww==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=7SBJUutv8i1/h+IqXQDaapD/iMVsmLTO3P+cj58P1NY=;
        b=carGQWtamKQlD9bYINCnknWRHjBvJjX2xf9mMUEp4TwpIvoaAZ+mLG7KuMyiCzQgnC
         K1cqifN2XtSgq9HfmZbssAfd4BJyVByGFlU0Qx9UUOs+iwdNUKV0vt4OHNfYTC4+1M+X
         lM9iTKQagZMYnZmpeWUJWMDeFA0Dlk8hwM4IX2bkvjbwlrMCqCzaSbv1KVN5HFuRGNa+
         4FSGEKOn5+7jqlYy169d6I3zMn+/B3Ogca8w4Ri3DhGjGhYSTBfN2jVv02NzteCgtkcQ
         M4RVEjnIldr5z7gS8m+Kx17nOAJPUjOwiXhdZqh9LNhkGl2vJoOPL2enhqsN/myGnvWw
         /Fgg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.rutland@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7SBJUutv8i1/h+IqXQDaapD/iMVsmLTO3P+cj58P1NY=;
        b=JFO9HjyYe1vjWmojorvvV3Sp8JNrmcmfNhEf50YLAP6GtNht9FlLoYWfP88y93yY3J
         S5p76f0OejUbfeSeb6Wbc5mxraGD0vQigSd/+qY2rTIEXy48vNQOchqmtZsOTIBHb/ng
         p10mdqRxsm6+fsM4DCyQK8i7K6rdWPGf58ktLSEnLdlH4TIB1uRawoYS1y4+1DspL/a9
         YWXAzV/M1TNuV8/CT1V439aMxtT7dYivO/1yy5dsFsZVurabSbJxCqU9JETdfiPgprbO
         vt2nTnX507muJ90IBgnY+rWp0fscue7h//LapFcKOeiPuB+qzz4ERBVApAErGf2dTQwm
         a5Hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7SBJUutv8i1/h+IqXQDaapD/iMVsmLTO3P+cj58P1NY=;
        b=bWNq3l7ZRYWv33jm32B2i0wM8Slfh298Qib7jbi0BrQHzoNM2pgnRo/bnAJC8xXx52
         jSanRzcBCcS6svx5qyxDlAxGERARhN9halZ9QWRdtScIpO1h/DUCbY/4ZSTSGTfYRGdT
         eYBlITedeRstzBmTx+6roNMDx1bQK1g2Q8utIogxOHyW/50/gjbys6Tvk06moVpjGwjj
         I03afMz183mKqvLC/Y1FuYszi0k/hr1T0ZFWoiZj6rSbzH+cX5sB2aB5iE3NIiC6Ot0r
         TRLV55YOVaC7ONMlOyVxzH9D/OR8T5QMJiZOLYdsKq09gNf0S0oKGUSXNhWKMl3EY5hz
         ojVg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAX0G7DVXulRFMAGg7K0hH8dk/rFn+ZCRQB0aPvrQhtVMrTYAL3f
	Lnwt7Lb6kEWISyqX0p8K8oQ=
X-Google-Smtp-Source: APXvYqxNyEDIc/uW80etdHqrRmPw1hFja1pi90AwaFDRpq5kbb0q+nRMsKidkIIOrSAszZ1CUKWUhw==
X-Received: by 2002:a17:906:724a:: with SMTP id n10mr17065169ejk.54.1565340817106;
        Fri, 09 Aug 2019 01:53:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:9583:: with SMTP id w3ls27163353eda.5.gmail; Fri, 09 Aug
 2019 01:53:36 -0700 (PDT)
X-Received: by 2002:a50:c8c3:: with SMTP id k3mr20297128edh.189.1565340816573;
        Fri, 09 Aug 2019 01:53:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565340816; cv=none;
        d=google.com; s=arc-20160816;
        b=GPPVo+Qy9SS5SgSYucj/Z06hRFviwjFLE9OCpKRBNcTS3RrlZMkbEQDsWUwjjvZMyU
         FNj27wa1qp2G6Do2CuTcF8DqIKdmEl+9ymzW0YUMyNxmz0reD3RkG0p36K+csZzznpcq
         3RhEgnDZhIpDvCWMIlRw9u8Ok8foPCNJlF0RbGE3VgTKUBZ28X/+HmYjhbv6Cpr19D0t
         FYggMY8QlegNojcDj/GnexTQOVkzB0WdKT58i8gJDaROAAgpqyLD8j+nwFEGLlLNpLPp
         WP/FUPvKCyaDD/oAzYUFvuqzPsBPycu44T8bzj6mM9l0URIUM3ACcHo87eHU0R1w9RB9
         Aljg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date;
        bh=3Dg96jaZypclHbHXLiUPViJtJhcqsYLR7EOliMX+DUU=;
        b=0XUejh0GZUlHdRvt5tsruqmg/L+g/kyCBrdMhoZBVnUlx1GbrzwpTtxk5XxQcNjw9D
         /6AAXr+MqsiCS9BcoRR97vWSd93Xqgh2WbL+iC3IQTTfZaWhVOm9oxRuog3iykWHxSQf
         bRpYetJAswtJ48HjfLtQBYdj+L7QrHUw5JkjyMxgXjFXA6nkQ1p8PjZzNKmgwAu2CF5k
         mgJESUJT6KM0x5EyrHUnHbrkXhY9ur7X9r/WlBhXzzmk6ejRAVGxOyFELwHckTlxmaAo
         vAIWYBAC9YPcPp/kNgrTez+mT8fHbkR//a92nPM1aIPAgJ6y+yeNU0gmSTBvmlE3ez90
         EhFQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.rutland@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id s30si2266119eda.4.2019.08.09.01.53.36
        for <clang-built-linux@googlegroups.com>;
        Fri, 09 Aug 2019 01:53:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B9AA8344;
	Fri,  9 Aug 2019 01:53:35 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id CE65A3F706;
	Fri,  9 Aug 2019 01:53:34 -0700 (PDT)
Date: Fri, 9 Aug 2019 09:53:32 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Qian Cai <cai@lca.pw>
Cc: Will Deacon <will@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	linux-arm-kernel@lists.infradead.org,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Linux List Kernel Mailing <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] arm64/cache: silence -Woverride-init warnings
Message-ID: <20190809085332.GB48423@lakrids.cambridge.arm.com>
References: <20190808032916.879-1-cai@lca.pw>
 <20190808103808.GC46901@lakrids.cambridge.arm.com>
 <D2A2F2B9-0563-4DF6-8E77-F191A768CE4E@lca.pw>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <D2A2F2B9-0563-4DF6-8E77-F191A768CE4E@lca.pw>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-Original-Sender: mark.rutland@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as
 permitted sender) smtp.mailfrom=mark.rutland@arm.com
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

On Thu, Aug 08, 2019 at 06:18:39PM -0400, Qian Cai wrote:
> > On Aug 8, 2019, at 6:38 AM, Mark Rutland <mark.rutland@arm.com> wrote:
> >=20
> > On Wed, Aug 07, 2019 at 11:29:16PM -0400, Qian Cai wrote:
> >> The commit 155433cb365e ("arm64: cache: Remove support for ASID-tagged
> >> VIVT I-caches") introduced some compiation warnings from GCC (and
> >> Clang) with -Winitializer-overrides),
> >>=20
> >> arch/arm64/kernel/cpuinfo.c:38:26: warning: initialized field
> >> overwritten [-Woverride-init]
> >> [ICACHE_POLICY_VIPT]  =3D "VIPT",
> >>                        ^~~~~~
> >> arch/arm64/kernel/cpuinfo.c:38:26: note: (near initialization for
> >> 'icache_policy_str[2]')
> >> arch/arm64/kernel/cpuinfo.c:39:26: warning: initialized field
> >> overwritten [-Woverride-init]
> >> [ICACHE_POLICY_PIPT]  =3D "PIPT",
> >>                        ^~~~~~
> >> arch/arm64/kernel/cpuinfo.c:39:26: note: (near initialization for
> >> 'icache_policy_str[3]')
> >> arch/arm64/kernel/cpuinfo.c:40:27: warning: initialized field
> >> overwritten [-Woverride-init]
> >> [ICACHE_POLICY_VPIPT]  =3D "VPIPT",
> >>                         ^~~~~~~
> >> arch/arm64/kernel/cpuinfo.c:40:27: note: (near initialization for
> >> 'icache_policy_str[0]')
> >>=20
> >> because it initializes icache_policy_str[0 ... 3] twice. Since
> >> arm64 developers are keen to keep the style of initializing a static
> >> array with a non-zero pattern first, just disable those warnings for
> >> both GCC and Clang of this file.
> >>=20
> >> Fixes: 155433cb365e ("arm64: cache: Remove support for ASID-tagged VIV=
T I-caches")
> >> Signed-off-by: Qian Cai <cai@lca.pw>
> >=20
> > This is _not_ a fix, and should not require backporting to stable trees=
.
>=20
> From my experience, the stable AI will pick up whatever they want to back=
port
> not matter if there Is a =E2=80=9CFixes=E2=80=9D tag or not unless it is =
one of those subsystems like
> Networking that exclusively manually flag for. backporting by the maintai=
ner. =20

My point is that this patch does not require backporting, and hence does
not require a fixes tag. The stable AI may choose the patch regardless,
so it's irrelevant.

[...]

> > What about all the other instances that we have in mainline?
>=20
> I have not had a chance to review all instances yet. It is not unusually =
to fix one
> warning at a time, and then go on fixing some more if time permit.

Given that:

* All the suggested code changes so far are harmful to legibility,
  robustness, and maintainability of the code.

* The majority of the warnings (by orders of magnitude) occur for
  intentional overrides, rather than unintentional overrides, as
  assigning default values to arrays and structs is a common idiom.

* We have no known mechanism to selectively disable the warning on a
  per-assignment basis.

... I do not think that is an appropriate strategy here.

For example, I'm fairly certain that if you try to "fix" the instances
in syscall tables, many more people will complain.

A much better approach would be to analyse the warnings, and either:

* find the _real_ bugs where we unintentionally override fields and fix
  those first, or:

* Find the instances that produce the greatest set of false positives
  (e.g. the syscall tables), and figure out how to suppress those
  without harming the maintainability or robustness of the code.

> > I really don't think that we need to go down this road; we're just goin=
g
> > to end up adding this to every file that happens to include a header
> > using this scheme=E2=80=A6
>=20
> How about disable them this way in a top level like arch/arm64/Makefile o=
r
> arch/arm64/kernel/Makefile? Therefore, there is no need to add this to
> every file, but with a drawback that it could miss a few real issues ther=
e
> in the future which probably not many people are checking for them of
> the arm64 subsystem nowadays.

This isn't arm64-specific. We validly use duplicate assignments all over
the kernel, and my position is that we either:

* Find a mechanism to suppress the warning on a per-assignment (not
  per-file) basis, without altering the structure of the existing code.

* Disable the warning tree-wide.

I would vastly prefer the former, as I do agree that this warning _can_
find real bugs, but similarly so can a script that warns "Line $N may
contain a bug" for every line of a C file.

> > Please just turn this off by default for clang.
>=20
> As mentioned before, it is very valuable to run =E2=80=9Cmake W=3D1=E2=80=
=9D given it found
> many real developer mistakes which will enable =E2=80=9C-Woverride-init=
=E2=80=9D for both
> compilers. Even =E2=80=9C-Woverride-init=E2=80=9D itself is useful find r=
eal issues as in,
>=20
> ae5e033d65a (=E2=80=9Cmfd: rk808: Fix RK818_IRQ_DISCHG_ILIM initializer=
=E2=80=9D)
> 32df34d875bb (=E2=80=9C[media] rc: img-ir: jvc: Remove unused no-leader t=
imings=E2=80=9D)
>=20
> Especially, to find redundant initializations in large structures. e.g.,
>=20
> e6ea0b917875 (=E2=80=9C[media] dvb_frontend: Don't declare values twice a=
t a table=E2=80=9D)
>=20
> It is important to keep the noise-level as low as possible by keeping the
> amount of false positives under control to be truly benefit from those
> valuable compiler warnings.=20

I agree that we want to minimize the noise, but not at the expense of
the maintainability and robustness of the code, and not by disabling
warnings for arbitrary files.

> > If we want to enable this, we need a mechanism to permit overridable
> > assignments as we use range initializers for.
>=20
> I am not sure that it is worth filling a RFE for compilers of that featur=
e.

If that's your position, then I see no point continuing this conversation.

> I feel like the range initializers just another way to initialize an arra=
y, and
>  it is just easier to make mistakes with unintended double-initialization=
s.
> The compiler developers probably recommend to enforce more of
> =E2=80=9C-Woverride-init=E2=80=9D for  the range initializers rather than=
 permitting it.

From my analysis in a prior reply, the vast majority of duplicate
assignments in the kernel are intentional. We do that for both arrays
and structures in order to have defaults that can be overridden.

If the compiler developers don't think that's worth supporting, then the
feature is not worth using.

Thanks,
Mark.

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20190809085332.GB48423%40lakrids.cambridge.arm.com.
