Return-Path: <clang-built-linux+bncBCGKDNPO5QBRBDGBRP4AKGQEEMC3TLQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23b.google.com (mail-lj1-x23b.google.com [IPv6:2a00:1450:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id E06052153FA
	for <lists+clang-built-linux@lfdr.de>; Mon,  6 Jul 2020 10:27:56 +0200 (CEST)
Received: by mail-lj1-x23b.google.com with SMTP id z12sf15730534ljm.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 06 Jul 2020 01:27:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594024076; cv=pass;
        d=google.com; s=arc-20160816;
        b=pmBm+e7DweQYhC2j5owjmwgkQlu04T3rylhoUXCSSoa/7jl/vO+oRdUAUln2ELckE/
         V4/qUc2DL1++QwZ80ReX2dsqtoG1WDrQmMU022EGjRulzo71odi575fPENZOVT3HXJf4
         D+IMbftswTcEhh19sfB6nYUJuJG98s4soDepNpHY4jrB87098dLo7i6caQg0WbHBh6wo
         kMNRSnoyKyVtZL4uH6K8fS6dRJTI9xHjtDXi2csRkxLrOpdcp+udUFocAaACSb2yH94R
         su17HGQHUWB+PeJQ42YINDCpuGXC7GHs/GgLd+P7P1IIqwTF30nCloPezGZFIJHanre/
         jdMQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=ziESqo1J6VPWh2Krgns5FEAXTvXQ3/1DG6zr1BL+WSY=;
        b=SI0EJLYfdJ3jrAHPe+6IQNUYOtavf+HTX3YRIb4BTJUX7IAj7oO/NjNHtFlraGlrGF
         Ok30/Ns6W/AD+Ktkmx9P3C4hy93HGTCo+PG82utNtI27c1WHcCSuGbfBz3/1dH/KiBUb
         vJan3jvM0GLw1lVO+nJTjv+6/PFXdBQ19Yynthth2Uv8v/ZB8OEbAzBXAcX/ls9e40HC
         2pzL1El/g5idD7KvI5zWzUkLE2ZEuQFcCcJFHh1dd36MZx0zOm0Q8Ee/GMHnFRA/KrcA
         J5TLV8OtPrRuyOgJa07s4jmPf7Wq7t9Ye5r07i74QczJBYv69vsUYeZPLbGYy2OBj95u
         9lzA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass (test mode) header.i=@sang-engineering.com header.s=k1 header.b=YAC9YcME;
       spf=neutral (google.com: 194.117.254.33 is neither permitted nor denied by best guess record for domain of wsa-dev@sang-engineering.com) smtp.mailfrom=wsa-dev@sang-engineering.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ziESqo1J6VPWh2Krgns5FEAXTvXQ3/1DG6zr1BL+WSY=;
        b=M5LWWuGLivlt1omManmXcz0Pb9L6qx8IFy/OEu6tkoO7A7PtCLsJnPFCnzeELQKL6K
         viV0r1PmAEbJOdlaVjDamVFNzM2c4ZWlyKtgkD6v3gBE8F005B7BOpX8Z4CGP6eUZHc+
         n5VLVk2b7P7hefN2OGuLqtwXplt+b57zU6yuqp2Q3uxeJLp1vKql8/sCxZrCSHVqXAy8
         lGkkANNVVGsFpCs50FCLj1Alz/HGp+pnpzzTTTBu3CdeD946/h5/SQBMNTkAndCEKJMu
         PDPRnbFk+1xRfMrK9aAVpPvHbmnap4M+Zk5HxFEa5ej0AAb2Quxmjd0gz/Fa322rGajT
         /f0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ziESqo1J6VPWh2Krgns5FEAXTvXQ3/1DG6zr1BL+WSY=;
        b=WATCOSv2cIxVxoAKvKt2My/QKP6jeEy9s6d1Qg64Oh7HEOYjsB5JhhPrQu2UkGgLQT
         xh6SZuUY9POh1lRr74mkOEgMYwHRZlQV0Teq+9GIUeltTMJn5ECTSgMeJKPUpar+F1/b
         Xj9jH15AOg0LCqlWWoz1tIAUBQqE3AMRSaBxea2BJoqiCbd9g5fFEZhUmD2bV/lBbJFN
         X9s8mnfG7jtOtU6HegwRyuqmplUyVC9WkmNtG8LDk6kyj3oh8q39l0bFn42Xj+Zgc//k
         1j8f7Q447gW7iZuhS3BRDObi1WC+b9e1gqbIbe5lS7FJLMVrauSC8guYdlRDzfT2V/1t
         QbbA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532ZglZiN04lh7MRkBNG3vmnchMxWhMYE9MpzyvgvUWDUvVNVVTJ
	sDSLjQcejlMjYWC6kHM3MrI=
X-Google-Smtp-Source: ABdhPJyd7BqrHRIn1GgoUdZbGUsoaiMikmpBArFh19s6ftsz2gXWawwxcjPDQWvuIv2XBZmJBW3JKA==
X-Received: by 2002:a05:6512:3398:: with SMTP id h24mr29134135lfg.135.1594024076403;
        Mon, 06 Jul 2020 01:27:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:8592:: with SMTP id b18ls1038035lji.0.gmail; Mon, 06 Jul
 2020 01:27:55 -0700 (PDT)
X-Received: by 2002:a2e:8804:: with SMTP id x4mr26857521ljh.56.1594024075887;
        Mon, 06 Jul 2020 01:27:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594024075; cv=none;
        d=google.com; s=arc-20160816;
        b=JU/WDCfuoBU94BVvM+fj3WJ1OKIYChPmngdM9C0llTCM3rtmi12H7Yn/OaazBN7Zn9
         I+gB/y1pic2U/8fumuNNvJcgyaSb7GEiTJ2CkPqY7hJ0qACle/R17Ac1++dt94AYpn6P
         R4a79Flcj8jUk45PPXbE4ma3cJ9jrvRp+BYIRB65k0e99tVY7U7kQ6uVSWElbjsTuaY5
         iDgIaeni5Q5iBh9IFHORmbGoKDsjoM4XmuEnxdAxputiHt1Ltx2gTZVP4rMRd0OazW5W
         E9kvs/NdJSc+X214BNKHV+mlvo/QxO9JAYcW0d0jJCdjsHrs2WGy2EC3ULtqk4vtmsgI
         Nu6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=JLBKYcH0cP6zKODxIPmtSzeDbzIREJZHNRSKpWsOxhM=;
        b=WrXSpcHPNYO8cxWQ03iwqOKB42FMbFwerR6g4EnqB9Hj/WQs9ScxkdrKMzPfLiEFn0
         iNbTXyJCxnANO5BSuZK/t0hsyGF4A1tg3NVXNtm5MrA0hYA7FKfgTBtb66Go+WMOyt02
         sXG5IMgdLZiCNE8ddHtt9kAlaeNQlZqJdjyrWXoITrPqMQZ93UVvN2TogL6x5hAZb2iW
         0lbQYfM993Zfs++ap4TBZ+oudEidZnSzAz7YAosutTLIrubSFLLpVYqb1zputoZX7dO6
         O/+K2vcb7D1bXr4yT9vDe9M6uEZmANLi5wz/pvmZevYKwfXeapacVjSPDcaDLxvLwdqK
         iYbQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass (test mode) header.i=@sang-engineering.com header.s=k1 header.b=YAC9YcME;
       spf=neutral (google.com: 194.117.254.33 is neither permitted nor denied by best guess record for domain of wsa-dev@sang-engineering.com) smtp.mailfrom=wsa-dev@sang-engineering.com
Received: from mail.zeus03.de (www.zeus03.de. [194.117.254.33])
        by gmr-mx.google.com with ESMTPS id l6si820224lji.1.2020.07.06.01.27.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Jul 2020 01:27:55 -0700 (PDT)
Received-SPF: neutral (google.com: 194.117.254.33 is neither permitted nor denied by best guess record for domain of wsa-dev@sang-engineering.com) client-ip=194.117.254.33;
Received: (qmail 2011977 invoked from network); 6 Jul 2020 10:27:54 +0200
Received: by mail.zeus03.de with ESMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 6 Jul 2020 10:27:54 +0200
X-UD-Smtp-Session: l3s3148p1@0du3psGp4oIgAwDPXwSPAD3C42NrtmEM
Date: Mon, 6 Jul 2020 10:27:49 +0200
From: Wolfram Sang <wsa-dev@sang-engineering.com>
To: kernel test robot <lkp@intel.com>
Cc: Mans Rullgard <mans@mansr.com>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com,
	Sasha Levin <alexander.levin@microsoft.com>
Subject: Re: [linux-stable-rc:queue/5.4 109/220] /tmp/filter-273424.s:50187:
 Error: bad expression
Message-ID: <20200706082749.GA1046@ninjato>
References: <202007061558.jOn3THo0%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="BXVAT5kNtrzKuDFl"
Content-Disposition: inline
In-Reply-To: <202007061558.jOn3THo0%lkp@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: wsa-dev@sang-engineering.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass (test
 mode) header.i=@sang-engineering.com header.s=k1 header.b=YAC9YcME;
       spf=neutral (google.com: 194.117.254.33 is neither permitted nor denied
 by best guess record for domain of wsa-dev@sang-engineering.com) smtp.mailfrom=wsa-dev@sang-engineering.com
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


--BXVAT5kNtrzKuDFl
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi,

On Mon, Jul 06, 2020 at 03:19:59PM +0800, kernel test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git queue/5.4
> head:   bb26a37d5a4bf25b8377c83fa407a219b3822ed1
> commit: 5cee9e67596f7d694e94d7def7cd9d65a7599f66 [109/220] i2c: core: check returned size of emulated smbus block read

This commit has nothing to do with net/core/filter.c.
Also clang is involved instead of gcc.
I consider this a false positive.

Thanks,

   Wolfram

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200706082749.GA1046%40ninjato.

--BXVAT5kNtrzKuDFl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl8C4IEACgkQFA3kzBSg
KbZalxAAqInBjwOfMXUSGm6gYZeIJWYJOqa+c6Ne9I2rRBI4LNN/mZEb3KTDnaIU
vnBy9A4OwIMbxjnLxSeac6gIxC6VS1y3QhH3vAD99y/TNVQiY1DNUJVlbYD+COcD
7X7a6eYDglZNOCk6y+ECuRI8j2W/jX5FX7Jw95Aw2ADhZzs8RtDoUJ8+FRtcml+D
mpO0wuz9n6fVErfIXLhV3s7XaFzeY2ZqTATnLcoG/KpCl/xT/Uvv13GHEyBZ471j
WxNa5XAepYN41RAusBl+wQsbyVBz/g3hjQEStnvbF8bv5K+l9/G3XaDiO5eFFgl+
nwgSGUV4DBRCFsohTkDvSKdQiJLQxlLnKOqN3kg8os/fZBooch2f0lskznQvELy9
xJfgm/PuLG5qOV44lwJO0akhDwNYZlP6k5NYTpY7lksBMAql7tn2s+j2JEY0iCsd
85KKqNu+Q5E9GiXy7/p6hmSMGXQlEO5D/cuzxUDLO3nydcrilXME2ciwlCXEEFTS
8816hzWF+3U51ZObU6YlH0CmMtYDhC/MPfJVp51uYqK2M0TV7iHSG1TmlpkLt/xF
FT/xqM56aSdcYKzycXJULl6CoyRTAdva14Od6rLGKPrhUCteG4WsUpOGq+jX8zDR
clVcdm72v7tZJI+DNKaFT042aIhUdE2BSjWu/4rOixHK60IzIyY=
=GbHx
-----END PGP SIGNATURE-----

--BXVAT5kNtrzKuDFl--
