Return-Path: <clang-built-linux+bncBAABBAOYY3VAKGQEW42UE6I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x840.google.com (mail-qt1-x840.google.com [IPv6:2607:f8b0:4864:20::840])
	by mail.lfdr.de (Postfix) with ESMTPS id 05AF78A56E
	for <lists+clang-built-linux@lfdr.de>; Mon, 12 Aug 2019 20:12:18 +0200 (CEST)
Received: by mail-qt1-x840.google.com with SMTP id p56sf3266039qtb.10
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Aug 2019 11:12:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565633537; cv=pass;
        d=google.com; s=arc-20160816;
        b=RJvyO0t6ccGQT2UF42R9E1N0gm0hWVPh+UepMUTYKsTUK4F0ev6dVM0c0ZR/pLohaQ
         Ayde6AGUDRU4+uVxg7FDYKVto1zb8Qz+Y0SkzAsmQYrethHlqYvbY7m9pF4XsxHJXfme
         sCs66OsFpZN4/qQb3yvpmXqF8J6NOd5iWXO8b0PCHjti4VNsk3bJaItpE4TkuTpz56sJ
         cLfwiYsUAlJNYXY5G5bnhWmHI0b1K22Mbwewd75bS5QsqJskIOkfuCvBHvUbtb73VUYq
         NRPteuAdVsXah5QPOwuUwPZ2OMQxtPNQupsiMFnE9vobsGnCwlgblLt+ZJyDKLCBO9ot
         Q08A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=1alXIaLjAAzXRz9lucTJXMp3fo5GAJKFOVsPhPUHndU=;
        b=b2EK1m0ZgWIDSjW/YmueC8StoJ8GVVRCSBHOcYoje36kYMPdFBL0C153m9Ofhe8FbS
         qO0XBRBNbB6YvVDWvfN7QmvlU6vj+jzxgpw604vM/Jl25f9PwTeN7ZWkbkRLpYsPTHP2
         KW6Bv8Zugi0CD8M3WUEgd9Rk9Ai72vhIdNu3zcesOMEJp6IxRVqwVWguhzb9J1NLFWrk
         8fJ+OYlXQyl69mkbx164YtdB6iFSWB6vcJeDvono9C5cB7qXrUH41rG5bZHN1iKPHXOG
         xCvYq2UG0mj7JacBJbprYx0FwmERjFEmZyTfarGBor5pKec/29VCSvnBZFm2Mly5afmW
         phuA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@sirena.org.uk header.s=20170815-heliosphere header.b=T44Mwg8L;
       spf=pass (google.com: domain of broonie@sirena.co.uk designates 2a01:7e01::f03c:91ff:fed4:a3b6 as permitted sender) smtp.mailfrom=broonie@sirena.co.uk;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1alXIaLjAAzXRz9lucTJXMp3fo5GAJKFOVsPhPUHndU=;
        b=P4DCDy084k2g2+CMo7BMAonKM5dwAErykFXl133Z1pdZZgh20PwMuFL9szer7Hv7x9
         CYBNkYTGYACekCF4F24fg9w8fCBEimR7DdhF+pK1XwuD9yuqboah8ydvXcYXVwCTds7v
         phP/eFOmljv9UiUCbeNe/AQH6mGJYZhJAI7ig74qVh/zVZa4j+I3jpClNWAA0jSLtVry
         NSzpUoxTcNZQvCTQy263YKJrLugncLC/N327Ggno0fuuOeKxwCVKzRtVYghIIa3JenRJ
         CJ0+v5xnMNiCWDuHZITKw/iFohYSrrn0PDNAjHRNZD0ecANVV22Q6vrQ+5l5cbInS2d1
         Jtsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1alXIaLjAAzXRz9lucTJXMp3fo5GAJKFOVsPhPUHndU=;
        b=ClRWWUeKjgKWHXbCSpSbDR0E3tHL5TXgmPJXX2XS/sBaynx9ILLQzVhbpO635AqL5m
         pMucyLGf2t8alok2M5PJBoqeRqVsnlfaeOkPDYQphYt2/yQuKBolQRQ6026IfL4UVsLq
         oGZpOb3VRmaFmvyuQsRJ7zcpSYFApqDH50bNqRwSww4349q/qPnGm4GSLsctjYG2FvtD
         IoxmxNLXctu+3/TbMBsz7h8Dw6RF+7CkgS5wmbDO4rOvuWDPfZuEWi87ELR/S3ETCPDE
         /ac52D593V7dqJGjhngHj6tD25aVeajYsWgJL9iVNvwNzlIRRSLoNwWlsCNH5Zp6rC20
         BrYQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVENaitYxtot1TgX96Jk9R+RqJGaCapn1HPFuoT7YGM7Nc3nkPZ
	0k0VS5hOGKOjpFmDceEXT6s=
X-Google-Smtp-Source: APXvYqybLj5TMVnKws8pALakzt/Cbgpn9/MWS3TtFB5fyFVXbH5eIuntOC7qcVC1BdG2njHthhfAFw==
X-Received: by 2002:aed:3a03:: with SMTP id n3mr30044959qte.85.1565633537174;
        Mon, 12 Aug 2019 11:12:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:a297:: with SMTP id l145ls6299174qke.12.gmail; Mon, 12
 Aug 2019 11:12:17 -0700 (PDT)
X-Received: by 2002:a37:a142:: with SMTP id k63mr28336613qke.487.1565633537109;
        Mon, 12 Aug 2019 11:12:17 -0700 (PDT)
Received: by 2002:ae9:e406:0:0:0:0:0 with SMTP id q6msqkc;
        Mon, 12 Aug 2019 10:14:49 -0700 (PDT)
X-Received: by 2002:a1c:2d4:: with SMTP id 203mr322060wmc.105.1565630089381;
        Mon, 12 Aug 2019 10:14:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565630089; cv=none;
        d=google.com; s=arc-20160816;
        b=CPaKGMmK+yMTK8w9uz6TdGl08EyfEzHSHqdAqW0eoK7eTq1sRK3P65WJHC1anfXOXR
         KASWbLZpVsc3rvmofwVl1ooZBiwSkZZeQyWdmHzfvBExbr2MYP5CQ/HXzm/tTSHE3rNG
         jZA37tri44IzCzHPi5YFual3A6pssppcoMnd5iGwQMiM8ZjQUPr4W8iljPYNvMrl7xLu
         zlERtGEcVVkyfqVzX6iGgF7nfTu3m+vqsxLaN7hL3HU5/KA14C6WBLLIl/ZqsupqSAY5
         4f5L+NE9fcXpNe6P2LMbRO2fzW73l50nQq21LmW/nUVqO5CjygfNJS4fThFSl75bynKG
         w0Eg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=62DNhgY92I/xYxIIyuwUy6NI8Aqx9n6XDl+BIi0xY/E=;
        b=S7oBiwCtKz0XCxGwgazIpz4ptcnk20BPqZouQxYTQcuRCX2f8TZKsMM0c3HaiBH32V
         vKxkCWz10ai8blR7VbjxRycgayq8vfukDLXi+hLrjY0TIAaRzEZNDjwX0aLSBNciKMVP
         izzyAMl4+DKir4951zj5nkNs53AcSGjBWvF6dmLkPSKRAQ8FLH+tmuwuLPNMc8c+TQkz
         EZ6rb6E0JFIZbwAPYLhnFsHlRxzUAmA8/JnG5mWdigUMFMkWewfpI0z0iSSGGaROqxLB
         4RkIeE5+rDyqSt2+v1jYLdNEQorYdm7Ob5676UV+Ha0IBttozVqTjzxjXkjFR26RP1wD
         SUtA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@sirena.org.uk header.s=20170815-heliosphere header.b=T44Mwg8L;
       spf=pass (google.com: domain of broonie@sirena.co.uk designates 2a01:7e01::f03c:91ff:fed4:a3b6 as permitted sender) smtp.mailfrom=broonie@sirena.co.uk;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk. [2a01:7e01::f03c:91ff:fed4:a3b6])
        by gmr-mx.google.com with ESMTPS id o4si2038280wrp.4.2019.08.12.10.14.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Mon, 12 Aug 2019 10:14:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of broonie@sirena.co.uk designates 2a01:7e01::f03c:91ff:fed4:a3b6 as permitted sender) client-ip=2a01:7e01::f03c:91ff:fed4:a3b6;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net ([82.37.168.47] helo=ypsilon.sirena.org.uk)
	by heliosphere.sirena.org.uk with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <broonie@sirena.co.uk>)
	id 1hxDu9-0002MN-V2; Mon, 12 Aug 2019 17:14:46 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
	id 086D62740CBD; Mon, 12 Aug 2019 18:14:44 +0100 (BST)
Date: Mon, 12 Aug 2019 18:14:44 +0100
From: Mark Brown <broonie@kernel.org>
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Guillaume Tucker <guillaume.tucker@collabora.com>,
	Michal Marek <michal.lkml@markovi.net>,
	Guenter Roeck <linux@roeck-us.net>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	kernel@collabora.com
Subject: Re: [PATCH RFC 1/1] kbuild: enable overriding the compiler using the
 environment
Message-ID: <20190812171444.GL4592@sirena.co.uk>
References: <cover.1565297255.git.guillaume.tucker@collabora.com>
 <3885ccdcbdbe83eb367e8344584df944adc76e34.1565297255.git.guillaume.tucker@collabora.com>
 <CAKwvOdmOdJspcO8jqUhqR63-MOWkV3ZrVcCO6u=HG6peov8Htw@mail.gmail.com>
 <20190809051552.GA44466@archlinux-threadripper>
 <CAK7LNAT6Yp3oemUxSst+htnmM-St8WmSv+UZ2x2XF23cw-kU-Q@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="TnYVF1hk1c8rpHiF"
Content-Disposition: inline
In-Reply-To: <CAK7LNAT6Yp3oemUxSst+htnmM-St8WmSv+UZ2x2XF23cw-kU-Q@mail.gmail.com>
X-Cookie: Decaffeinated coffee?  Just Say No.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: broonie@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@sirena.org.uk header.s=20170815-heliosphere header.b=T44Mwg8L;
       spf=pass (google.com: domain of broonie@sirena.co.uk designates
 2a01:7e01::f03c:91ff:fed4:a3b6 as permitted sender) smtp.mailfrom=broonie@sirena.co.uk;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Precedence: list
Mailing-list: list clang-built-linux@googlegroups.com; contact clang-built-linux+owners@googlegroups.com
List-ID: <clang-built-linux.googlegroups.com>
X-Google-Group-Id: 357212215037
List-Post: <https://groups.google.com/group/clang-built-linux/post>, <mailto:clang-built-linux@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:clang-built-linux+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/clang-built-linux
List-Subscribe: <https://groups.google.com/group/clang-built-linux/subscribe>, <mailto:clang-built-linux+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+357212215037+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/clang-built-linux/subscribe>


--TnYVF1hk1c8rpHiF
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

On Tue, Aug 13, 2019 at 01:37:14AM +0900, Masahiro Yamada wrote:
> On Fri, Aug 9, 2019 at 2:15 PM Nathan Chancellor

> > This is problematic because there is no way for CC, HOSTCC, and HOSTCXX
> > to be passed to make within scripts/kconfig/merge_config.sh.

> Is it so problematic?

> If you start from make, CC=clang and HOSTCC=clang are propagated to sub-make
> even via shell scripts such as merge_config.sh

> Only the problem I see is the situation where
> a user directly runs scripts/kconfig/merge_config.sh
> without using make as a start-point.

This is really a very common thing for testing infrastructure to do,
it'll combine a base defconfig with a fragment enabling extra stuff
either to directly cover that extra stuff or to ensure that
configuration options needed for testsuites get turned on.  

> A user can wrap merge_config.sh with a simple Makefile
> if they want to override CC, HOSTCC, etc.

If we want to do that it seems sensible to provide that Makefile
upstream so there's a standard thing, it might also help people notice
that they need to do this and avoid getting surprised.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190812171444.GL4592%40sirena.co.uk.

--TnYVF1hk1c8rpHiF
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl1RnoQACgkQJNaLcl1U
h9AI0gf9HZ4+J2ZsyQX3ztFSIxR8D3kUiBnX52C6bGhvl4wjFmpM1b98dE4n5Ks2
a3gxDjMkFwBQX44p8he+xeV/UTqLgmOAJ9d3FuIpd+x1q3m8w6z95c5Icrgzc4Wh
ubsv3kqC34c70HZ1tuQIusrUyHNLBIsgp8dlvfDQdrOY7qS+VLaPPiFCdVYQI0g6
UEChNPLMspP/rlEvshD0x34SnTMGYNdrLK2hXNhoOlgtgu5+KEy4rFUb6mALWL2x
1LWKLnY1lZlxMs1lfLmcFzGHvZoCmfAX+/F7YtpclnovOTk1euRw0BmzCYt7S5Wv
8O51Orz7UWvcpyQDPMiiUXjcT5kLrQ==
=6R2x
-----END PGP SIGNATURE-----

--TnYVF1hk1c8rpHiF--
