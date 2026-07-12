Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBGPYZ7JAMGQE3GLQG4A@googlegroups.com>
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id OsSCMRz8U2pcggMAu9opvQ
	(envelope-from <clang-built-linux+bncBD4NDKWHQYDRBGPYZ7JAMGQE3GLQG4A@googlegroups.com>)
	for <lists+clang-built-linux@lfdr.de>; Sun, 12 Jul 2026 22:42:04 +0200
X-Original-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3c.google.com (mail-qv1-xf3c.google.com [IPv6:2607:f8b0:4864:20::f3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AAE3745DCD
	for <lists+clang-built-linux@lfdr.de>; Sun, 12 Jul 2026 22:42:04 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=googlegroups.com header.s=20251104 header.b=oGX+2XSa;
	dmarc=pass (policy=none) header.from=googlegroups.com;
	spf=pass (mail.lfdr.de: domain of clang-built-linux+bncBD4NDKWHQYDRBGPYZ7JAMGQE3GLQG4A@googlegroups.com designates 2607:f8b0:4864:20::f3c as permitted sender) smtp.mailfrom=clang-built-linux+bncBD4NDKWHQYDRBGPYZ7JAMGQE3GLQG4A@googlegroups.com;
	arc=pass ("google.com:s=arc-20260327:i=2")
Received: by mail-qv1-xf3c.google.com with SMTP id 6a1803df08f44-8e9489f62bfsf44807806d6.2
        for <lists+clang-built-linux@lfdr.de>; Sun, 12 Jul 2026 13:42:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1783888923; cv=pass;
        d=google.com; s=arc-20260327;
        b=lNck7P56YXXWIdOuxdHyvE7FUboBw+1W4fo3jRPoZJ7qHugRpYyyni24hL077Np+w0
         rCh/abU5c4NEfp+jj9blXXbGQlOkJzm7WiEMro2c0puhSHXrWu8wl5FT4Y/uypc7r9h4
         ePAP7oDVkgePdurpWuIv7eZ7gXH6RkS/9TOQ3e3vqjcA2+zzU0Roqj7ZGSHgmd3kt/K8
         B1hhopp8Ya8L1NC3mS94N8KkEvDdXCwTfYOHnr4FVP+8SDdMA3Hr8vQF+Y70qikn1jXa
         sQWlD8bIhMJ+8P083tFeZcj9t6EudtxiDK1j7w2PRgF1M7ilAiHp7DB503t8afknf7GT
         T6hA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:dkim-signature;
        bh=TI/Oni6Wp4jQi5ML6B1CEVU1YU/YUzEqCkNgScZwXT8=;
        fh=v3l5vSKfwDzMQt28R0A/t5Qz9pVgalTemSL7pdb4AO4=;
        b=Whf4nkVk/W4QGHWfPnSMXPG0UxH8Aklzuh0hzu07OR1zTKQm/M46XOo2BhA8ZX/0ys
         r6NOPDRACefRhU4uuzvgBrygwP2PjSWdc1Vem8Nghl/UtHoJZJ8hzKvOo5kZup5jCu3N
         JdJsDWRKUqVtjkDh3IUGBBZIGErCqMijfzT5V997Ctk9AuApmM7aS/26TpPjIpqp3Ix9
         0dWwKJNMthVlWVKU9+smapxygoSu66ZcmLH1qJqcvLbElJTLZ2LfEBG4u9O4GfIjzkws
         3v9S5KQ9xwoxsabzi+F7CQ68iDAqCcshTFSAsGPAFck1Oj+nCHv6eYqzD1JKuVQIcJwE
         RC2g==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20260515 header.b=cEOM0U3F;
       spf=pass (google.com: domain of nathan@kernel.org designates 2600:3c0a:e001:78e:0:1991:8:25 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20251104; t=1783888923; x=1784493723; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-transfer-encoding:content-disposition:content-type
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=TI/Oni6Wp4jQi5ML6B1CEVU1YU/YUzEqCkNgScZwXT8=;
        b=oGX+2XSavfBqHEz25QS2RGYIUZQGZO3VEwvx+ehpzAqeysn9jSgbs39E55K4YXwEOy
         4MsKBxmcfUpbNDQYjGNqwLCjIWVsUJOl+K1czzUCT3iXPeS1wVDEMwiHmjRPRQo5iSZd
         HHyk5KjPQ686uuNmZTtaUj9n72XL8teLeacJN9OezxuGcy24Fj78QFYYX0lCvOdcSQL4
         TXfmMbD0yq2arY3+KceF3xWMv8+qfPuuabUvlqi/8726l4ut1/Zu1ByXCiz/SKEiP9TI
         jQQijgDHko14mH4yanJvtS979O5uXHGuOgQe0MCKDAn42C1FGBFWeh9YE6eQ9Jx/YFxG
         6H5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783888923; x=1784493723;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-transfer-encoding:content-disposition:content-type
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=TI/Oni6Wp4jQi5ML6B1CEVU1YU/YUzEqCkNgScZwXT8=;
        b=ZXY6duBYqbEmW0yCAAEhNqjF8kOJatldRk+QlV0ciG6/M6/2fcxfzwT/K5Kk/g1Zmh
         XHw6lO98DplhZnH85MY0Tcv0bxZ76ij9uPg3mYOY4gY7PpByXPl9nBIRsN+p0AhiL5kI
         gOmtLK4pG2yDaU0FwMTBZIFYVV7wtn3hozDncduXBKIeMkC+gxRL75py23QPT8W78A9p
         zZKScgByhoela6UzA5vk/uKYtrKU8H0XwINkE+ZAz7x9o9ksWYJPHMzWL1KmiejNhCic
         JaxlW/lDxG6OpNdReOA+UmgkdKB5zc+2vfoxN0zhxpjvsvJLTR+jwdm5nLlt6IOiLOs2
         3QGw==
X-Forwarded-Encrypted: i=2; AHgh+RooRfMSg+ra3omQeXLXQolVP4TYjhTSH52lXhUrn+Ip2LexJV/8NiXQ8XwljdOUurUnzMV1jw==@lfdr.de
X-Gm-Message-State: AOJu0Yx+gUxZc9VM+RJxYuByWJEawV9+7gzLxm/attDUEZeFhVXRnMb/
	yQxgIqZU6tK/jicCmSVgLLQhqGybGrwInxyoLlceaktwgyFBC9NvBXBj
X-Received: by 2002:a05:6214:e6b:b0:8fd:6de3:bba8 with SMTP id 6a1803df08f44-904053d916amr77243386d6.62.1783888922586;
        Sun, 12 Jul 2026 13:42:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com; h="Aa7YSPRvJbdeQi6//tqGyrj9rzdyh1rqMSVpkM5YMEKsmgDGqg=="
Received: by 2002:a05:6214:768:b0:8fd:ed5a:31cd with SMTP id
 6a1803df08f44-8fe624fa0e0ls108143386d6.2.-pod-prod-05-us; Sun, 12 Jul 2026
 13:42:00 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AHgh+Rofh4eCbtQAWCFhWTImm4uxy5lH9g+RIb7vXx8Rl5RoblXtqt1IpW5HNbG+N4JRkOYkzKLo0rIgmBSRL8jeXZ3bfA==@googlegroups.com
X-Received: by 2002:a05:6123:2e3:b0:59e:372f:6db9 with SMTP id 71dfb90a1353d-5bfbf341d28mr3859955e0c.12.1783888920714;
        Sun, 12 Jul 2026 13:42:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1783888920; cv=none;
        d=google.com; s=arc-20260327;
        b=H2w/Jx9VibqjA4xXyBuugRJVlfy37grtCqoMl8sRMugAV90+o1NQGA1DXifpnlZRRY
         pLdQW7Cy0/QpfVjB4r5Oq5y+UOf+WXl4HUZwfkxd0wzJwnRw/MPxLFo5G2Ec614pFMLi
         7Fm1XvBWqlDQc9SkaeFudIZ6baTq+1ZBHxwyiAaHtk12bXNjblgzc+gMa+Am/mVW2Sxg
         oMdrYmgtQxTD6HksV6mdstQz4s/rnzQlBj4hTU4nBCGsfJz/PnMYpfZJqA4kwjyCsdMt
         UuxjcCHTuvOQ8I4BggUGp4p7iB4mCeTPOj0W3PRvcwd0LA5OcPtim+1TB4yBy5u3Lh0f
         kgyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=dLSOU1pu1ktkGkfXBrA/niWmFzF/2hu1aOV2pcJShT0=;
        fh=j/fu1O4hS3lNsLPO+NgOfk4Co0vixWmfeCTt+317tes=;
        b=q6AXuJOFtYXJUFj1jwn1TbvsiHK4Vsmg8t1LdUauyW5K/7wV+Cuw/Qu6qAyTDNC+tr
         enES35kJClIPM60a0sAuM1UMdC/MfgO7XIYsAvG97l1uM8MRCI1AmcsyEJmVPIl2cfV3
         HQlPgZTy3fJOW8GFK+39I1fI3NrIA9MX9vp0bmKljtTVnpjWizQ9vcHj+irzyD1cDtIv
         WmAvYlLqAgDkXkaDmBuS1t/9GNsv42E+WKjtNDQanum3NmxtWpdEMr9rPDMzFZTXYIMS
         BVt9Q3/wkVm1YamrSDPV60VAoMx1q0I8UDU7G6c2Ejw25hG9dCvtAXEThrJz1ZQaA6Jw
         RTHA==;
        dara=google.com
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20260515 header.b=cEOM0U3F;
       spf=pass (google.com: domain of nathan@kernel.org designates 2600:3c0a:e001:78e:0:1991:8:25 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=kernel.org
Received: from sea.source.kernel.org (sea.source.kernel.org. [2600:3c0a:e001:78e:0:1991:8:25])
        by gmr-mx.google.com with ESMTPS id 71dfb90a1353d-5bfaa8cf428si243127e0c.6.2026.07.12.13.42.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Jul 2026 13:42:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 2600:3c0a:e001:78e:0:1991:8:25 as permitted sender) client-ip=2600:3c0a:e001:78e:0:1991:8:25;
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id B4C9840A4E;
	Sun, 12 Jul 2026 20:41:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9C5361F000E9;
	Sun, 12 Jul 2026 20:41:57 +0000 (UTC)
Date: Sun, 12 Jul 2026 16:41:54 -0400
From: "'Nathan Chancellor' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: "Christophe Leroy (CS GROUP)" <chleroy@kernel.org>
Cc: Feng Tang <feng.tang@linux.alibaba.com>,
	kernel test robot <lkp@intel.com>, linuxppc-dev@lists.ozlabs.org,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com, oe-kbuild-all@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	Marek Szyprowski <m.szyprowski@samsung.com>
Subject: Re: ld.lld: error: relocation R_PPC_ADDR16_LO cannot be used against
 symbol 'init_task'; recompile with -fPIC
Message-ID: <20260712204154.GB1697833@ax162>
References: <202607100652.WPUlEAfx-lkp@intel.com>
 <alBeJUafPKhx8RMS@U-2FWC9VHC-2323.local>
 <37fe4a15-e51b-411e-9667-a1c670f413e1@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <37fe4a15-e51b-411e-9667-a1c670f413e1@kernel.org>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20260515 header.b=cEOM0U3F;       spf=pass
 (google.com: domain of nathan@kernel.org designates 2600:3c0a:e001:78e:0:1991:8:25
 as permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass
 (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=kernel.org
X-Original-From: Nathan Chancellor <nathan@kernel.org>
Reply-To: Nathan Chancellor <nathan@kernel.org>
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.71 / 15.00];
	ARC_ALLOW(-1.00)[google.com:s=arc-20260327:i=2];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[googlegroups.com,none];
	MAILLIST(-0.20)[googlegroups];
	R_SPF_ALLOW(-0.20)[+ip6:2607:f8b0:4864::/56];
	R_DKIM_ALLOW(-0.20)[googlegroups.com:s=20251104];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bncBD4NDKWHQYDRBGPYZ7JAMGQE3GLQG4A];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:chleroy@kernel.org,m:feng.tang@linux.alibaba.com,m:lkp@intel.com,m:linuxppc-dev@lists.ozlabs.org,m:ndesaulniers@google.com,m:clang-built-linux@googlegroups.com,m:oe-kbuild-all@lists.linux.dev,m:linux-kernel@vger.kernel.org,m:m.szyprowski@samsung.com,s:lists@lfdr.de];
	REPLYTO_DOM_EQ_TO_DOM(0.00)[];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_EQ_ENVFROM(0.00)[];
	DKIM_TRACE(0.00)[googlegroups.com:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[clang-built-linux];
	HAS_REPLYTO(0.00)[nathan@kernel.org];
	ASN(0.00)[asn:15169, ipnet:2607:f8b0::/32, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[outlook.com:url,01.org:url,mail-qv1-xf3c.google.com:helo,mail-qv1-xf3c.google.com:rdns,googlegroups.com:from_smtp,googlegroups.com:email,googlegroups.com:from_mime,googlegroups.com:dkim,ax162:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4AAE3745DCD

On Fri, Jul 10, 2026 at 06:33:49AM +0200, Christophe Leroy (CS GROUP) wrote=
:
> + Clang
>=20
> Le 10/07/2026 =C3=A0 04:51, Feng Tang a =C3=A9crit=C2=A0:
> > Thanks for the report!
> >=20
> > Add Powerpc list.
>=20
> This is a Clang build with Clang linker, did you reproduce the problem wi=
th
> a normal GCC build ?

This does not reproduce with either the GNU toolchain or LLVM + the GNU
assembler. It only reproduces with clang's integrated assembler. I am
pretty sure I have seen this error before so I suspect that this
bisection is bogus like mentioned below.

> >=20
> > On Fri, Jul 10, 2026 at 06:18:50AM +0800, kernel test robot wrote:
> > > tree:   https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3=
A%2F%2Fgit.kernel.org%2Fpub%2Fscm%2Flinux%2Fkernel%2Fgit%2Ftorvalds%2Flinux=
.git&data=3D05%7C02%7Cchristophe.leroy2%40cs-soprasteria.com%7C016c05b801ba=
48f2593f08dede2e29c2%7C8b87af7d86474dc78df45f69a2011bb5%7C0%7C0%7C639192487=
094863506%7CUnknown%7CTWFpbGZsb3d8eyJFbXB0eU1hcGkiOnRydWUsIlYiOiIwLjAuMDAwM=
CIsIlAiOiJXaW4zMiIsIkFOIjoiTWFpbCIsIldUIjoyfQ%3D%3D%7C0%7C%7C%7C&sdata=3DfQ=
m6QfsJ2ggaKoRJWCz4dsaquz7Wo3uhRnOexVUrTnQ%3D&reserved=3D0 master
> > > head:   0e35b9b6ec0ffcc5e23cbdec09f5c622ad532b53
> > > commit: d5cae2261b86913e602452ce4a07e6aefc0f603b dma-contiguous: simp=
lify numa cma area handling
> > > date:   6 weeks ago
> > > config: powerpc-randconfig-r133-20260709 (https://eur01.safelinks.pro=
tection.outlook.com/?url=3Dhttps%3A%2F%2Fdownload.01.org%2F0day-ci%2Farchiv=
e%2F20260710%2F202607100652.WPUlEAfx-lkp%40intel.com%2Fconfig&data=3D05%7C0=
2%7Cchristophe.leroy2%40cs-soprasteria.com%7C016c05b801ba48f2593f08dede2e29=
c2%7C8b87af7d86474dc78df45f69a2011bb5%7C0%7C0%7C639192487094899182%7CUnknow=
n%7CTWFpbGZsb3d8eyJFbXB0eU1hcGkiOnRydWUsIlYiOiIwLjAuMDAwMCIsIlAiOiJXaW4zMiI=
sIkFOIjoiTWFpbCIsIldUIjoyfQ%3D%3D%7C0%7C%7C%7C&sdata=3DBkT0BYyJtniz6YPzGpYb=
O0jn2T7vBDBLaK2Tsh1LcnE%3D&reserved=3D0)
> > > compiler: clang version 21.1.8 (https://eur01.safelinks.protection.ou=
tlook.com/?url=3Dhttps%3A%2F%2Fgithub.com%2Fllvm%2Fllvm-project&data=3D05%7=
C02%7Cchristophe.leroy2%40cs-soprasteria.com%7C016c05b801ba48f2593f08dede2e=
29c2%7C8b87af7d86474dc78df45f69a2011bb5%7C0%7C0%7C639192487094917538%7CUnkn=
own%7CTWFpbGZsb3d8eyJFbXB0eU1hcGkiOnRydWUsIlYiOiIwLjAuMDAwMCIsIlAiOiJXaW4zM=
iIsIkFOIjoiTWFpbCIsIldUIjoyfQ%3D%3D%7C0%7C%7C%7C&sdata=3D5%2BLVtRoojuNbhEMr=
3BhM2xF50PV%2FIYh%2FWw3ipDIWG%2FY%3D&reserved=3D0 2078da43e25a4623cab2d0d60=
decddf709aaea28)
> > > sparse: v0.6.5-rc1
> > > reproduce (this is a W=3D1 build): (https://eur01.safelinks.protectio=
n.outlook.com/?url=3Dhttps%3A%2F%2Fdownload.01.org%2F0day-ci%2Farchive%2F20=
260710%2F202607100652.WPUlEAfx-lkp%40intel.com%2Freproduce&data=3D05%7C02%7=
Cchristophe.leroy2%40cs-soprasteria.com%7C016c05b801ba48f2593f08dede2e29c2%=
7C8b87af7d86474dc78df45f69a2011bb5%7C0%7C0%7C639192487094935016%7CUnknown%7=
CTWFpbGZsb3d8eyJFbXB0eU1hcGkiOnRydWUsIlYiOiIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIk=
FOIjoiTWFpbCIsIldUIjoyfQ%3D%3D%7C0%7C%7C%7C&sdata=3D%2BrpcCLuNecZIfyF6N5X%2=
FFcHhdG9YzLBAErvBGHyjjak%3D&reserved=3D0)
> >=20
> >=20
> > > All errors (new ones prefixed by >>):
> > >=20
> > > > > ld.lld: error: relocation R_PPC_ADDR16_LO cannot be used against =
symbol 'init_task'; recompile with -fPIC
> > >     >>> defined in vmlinux.a(init/init_task.o)
> > >     >>> referenced by head_44x.S:101 (arch/powerpc/kernel/head_44x.S:=
101)
> > >     >>>               arch/powerpc/kernel/head_44x.o:(.head.text+0x42=
) in archive vmlinux.a
> > > --
> > > > > ld.lld: error: relocation R_PPC_ADDR16_HI cannot be used against =
symbol 'init_thread_union'; recompile with -fPIC
> > >     >>> defined in ./arch/powerpc/kernel/vmlinux.lds:133
> > >     >>> referenced by head_44x.S:108 (arch/powerpc/kernel/head_44x.S:=
108)
> > >     >>>               arch/powerpc/kernel/head_44x.o:(.head.text+0x4e=
) in archive vmlinux.a
> >=20
> > I checked the patch and couldn't find obvious clue between the patch an=
d
> > the error.
> >=20
> > commit d5cae2261b8691 only changes kernel/dma/contiguous.c, which is un=
der
> > CONFIG_DMA_CMA per kernel/dma/Makefile. In your config above, CONFIG_DM=
A_CMA
> > is not even set, so the contigous.c should not be compiled. Could you h=
elp
> > to double check? thanks!
> >=20
> > - Feng
> >=20
> > > Kconfig warnings: (for reference only)
> > >     WARNING: unmet direct dependencies detected for HOTPLUG_CPU
> > >     Depends on [n]: SMP [=3Dy] && (PPC_PSERIES [=3Dn] || PPC_PMAC [=
=3Dn] || PPC_POWERNV [=3Dn] || FSL_SOC_BOOKE [=3Dn])
> > >     Selected by [y]:
> > >     - PM_SLEEP_SMP [=3Dy] && SMP [=3Dy] && (ARCH_SUSPEND_POSSIBLE [=
=3Dy] || ARCH_HIBERNATION_POSSIBLE [=3Dy]) && PM_SLEEP [=3Dy]
> > >=20
> > > --
> > > 0-DAY CI Kernel Test Service
> > > https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fg=
ithub.com%2Fintel%2Flkp-tests%2Fwiki&data=3D05%7C02%7Cchristophe.leroy2%40c=
s-soprasteria.com%7C016c05b801ba48f2593f08dede2e29c2%7C8b87af7d86474dc78df4=
5f69a2011bb5%7C0%7C0%7C639192487094952205%7CUnknown%7CTWFpbGZsb3d8eyJFbXB0e=
U1hcGkiOnRydWUsIlYiOiIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjoiTWFpbCIsIldUIjoy=
fQ%3D%3D%7C0%7C%7C%7C&sdata=3Dsqz%2BJ2dpT3ZZjlQyyvAhgPdP9jS0kJLpbRKTcV4rM50=
%3D&reserved=3D0
> >=20
>=20

--=20
Cheers,
Nathan

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion visit https://groups.google.com/d/msgid/clang-built=
-linux/20260712204154.GB1697833%40ax162.
