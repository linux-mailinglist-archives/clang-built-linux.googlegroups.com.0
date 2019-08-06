Return-Path: <clang-built-linux+bncBAABBROQU7VAKGQERWFKC4Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83c.google.com (mail-qt1-x83c.google.com [IPv6:2607:f8b0:4864:20::83c])
	by mail.lfdr.de (Postfix) with ESMTPS id 765CB83AA5
	for <lists+clang-built-linux@lfdr.de>; Tue,  6 Aug 2019 22:51:18 +0200 (CEST)
Received: by mail-qt1-x83c.google.com with SMTP id e22sf14425306qtp.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 06 Aug 2019 13:51:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565124677; cv=pass;
        d=google.com; s=arc-20160816;
        b=bws7Jin5oHGVBfdhdTln5YOAEeLvlnDbMxd02X7V8j0G+tho96Y0epE9uIz62L1JbA
         NQAqrUYnTwnu89Hqlj1qopHpzfBXHtEOVVwjjlDzje0GMuon+sFykKYfCEKj4EJ5dSvm
         sx2BH3hew1TOjyR6e2W0g2LZ/FyWUvQTo0ha4yvN81DZEGa9AL7BkxyF579L0vCYogEa
         o/A3x66a+bDkeHN3ORjyvqzhfnLB2Hq+bgtfI6OTjTTWQf7KpkaDj0yOwchWrdDMabpF
         tZl4ufEyb42tbkKmRlPdkRDlHwNpJYtAM8fY+/HcG41EdYltUqHBq/DE0oslfadnB00I
         j1EA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=0HkKM1yz3Ra3CSebznpwBOMxtzr9Y8Tz/+DgZEbIz9w=;
        b=SLQDWkjkE8tmu+e5ve6M8qE9cY4sixAULt14Y8cRGV9YMO371IQQcJFdtXhAUz4HZ1
         VpVZr6rS3r1WyWlSlFNk/p1w98niYZP7tR/LnkZW4LgkhEeRXExgIhRYlgMxwi8iZL0s
         u1in1guemLIlRPAQGN3ANaDsZa9IZFA84Xnm+dDHcTIY8jl7FG3Y59rPd8OeD0wVQ/pZ
         GrIeRtcz1Zny78Q64u+OOGdGcjdDpwD+W2k7PmN/9Z5T4cq9zgk3L8aKjklHLy934HzI
         e9uwJkpUOQJdtB+sWI15gN3LoVaMMKEgAwb2Fpazq/Nhq5qALl9Kq6/c06L7vhEmo7NS
         8Lhg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@sirena.org.uk header.s=20170815-heliosphere header.b=VOOPFqSy;
       spf=pass (google.com: domain of broonie@sirena.co.uk designates 2a01:7e01::f03c:91ff:fed4:a3b6 as permitted sender) smtp.mailfrom=broonie@sirena.co.uk;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0HkKM1yz3Ra3CSebznpwBOMxtzr9Y8Tz/+DgZEbIz9w=;
        b=JYZw3DMt0XYhZ9UZeJieWYm64U698kCTOCX8j55PyzvCmhOpXR7mbddIRWecE4hgSu
         pLnIvMguCEy42IC91r5hPOTM+anOWEQGpy11lBKHkVeVLn/kgxYQsTrZo9FuO1+MPIxE
         RespC1tghspEGpkESOTYBffVv5YuiW5xdrdhJmurXSjuhmRFpdKPucBd3jZQKEW6ghNs
         JRRgDN++xz+SacfQrJX91kJwESwJJzbQw+/t1iotLXFnCb/fdYnr4HrFHnWuKKS5VK9Z
         D3yG6T3xTQxFtAQ4wiggE6KW07eBlLekyWeL6HtvEmbsuxqtG30o0zuoI6+rKRw/FPbC
         mltQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0HkKM1yz3Ra3CSebznpwBOMxtzr9Y8Tz/+DgZEbIz9w=;
        b=DMyiAqKaZsh0/mRG4+zw3TZemm5LwaequwaFDx30p1251gcuzTcASaGojfbZvbwspp
         8gYG397FwsuZ5Dv0RM5ROzLoQ4xi1lvHRV0+IS82OeOaMDcvWNd1KzsT7hnRkdVnBjCD
         vwfhjwq3ZJtmVm9vXkhfomOfb3kXIBio+BtCC69TRaklVHVPpqDuPoDPaAIDJLVtnL0Q
         RIKjngtY+bpOb+X4S0ETf2ZoYcWY8wZ3rwvRgcNXzBlp9Y/B6U4Kd0Rj/EOjOaZ1MEXd
         avVEH0xGyV4KpIhD+DuP1Om3vxfCdSJhTpSXEjIRMO43c0FNB0Wbabb4Okrj/NB7tJek
         ER5w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUCY2NPp0c1afLdMLpeL5V+hNxQS0NrBRazUctiGodgAknLnbZa
	lbSgAIjEiVo4CeWBcflqQ88=
X-Google-Smtp-Source: APXvYqxLLIRkMZc8YUxYpqEVQsmhmmV7Y5hqi0wtdue2FJ/7oCphle0Ye1ktAa0y9f+RmSU9OB3wcg==
X-Received: by 2002:ac8:29e6:: with SMTP id 35mr5004340qtt.116.1565124677526;
        Tue, 06 Aug 2019 13:51:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:129b:: with SMTP id w27ls234623qki.1.gmail; Tue, 06
 Aug 2019 13:51:17 -0700 (PDT)
X-Received: by 2002:a37:d247:: with SMTP id f68mr5335784qkj.177.1565124677433;
        Tue, 06 Aug 2019 13:51:17 -0700 (PDT)
Received: by 2002:ae9:c317:0:0:0:0:0 with SMTP id n23msqkg;
        Tue, 6 Aug 2019 12:02:57 -0700 (PDT)
X-Received: by 2002:a5d:5186:: with SMTP id k6mr6430797wrv.30.1565118177295;
        Tue, 06 Aug 2019 12:02:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565118177; cv=none;
        d=google.com; s=arc-20160816;
        b=Qqo/rK1Ss1aHHf1GyrALYp/XyvFL10M0t8dNZr8GQUGQ0UJBPdk9i9qOfvktR/MXcH
         OGwpaR7GeQJeLsd3BJN+XCP64X/6iV2ZWYobOVEbGNtuow0RZEMHYz44zM92ULz0OSiT
         uwlk66MTyjJgd6GDOVhxX+8oy3FP0q+02ZsUuLtbPx8zU3YB3dA08cu6vuI9fJccDluD
         rSV9yzeNEg1BQA7MVZQIWOcKNJGUlhaDONUnugcKeCM4VWNlKtpDOjd7Hl1+jY898zpj
         633rnYLsf3eeX4eVRCX+5Ef6SvWnO7XD4foQVceZJimo0rwr23xx/JoYRtwSi4+MoM3K
         PpKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=xuunzx9catvtj0GKErYl8ASB+qyXiGce06t8EZjC81w=;
        b=giRcNG3MtoLLD3dDVqVPJQFVooEixSR5ZlRnMXwfuUVs19j3ALbUV+kXt6Rp2t0net
         dDU8OSmRaSsY8vb1slMrjy/dkFkvP5rKzfQf9psbQzoP7SrJxiAMLGzzK/5/cQQJT9UV
         H3EQsx9LdNP13Nx3nbsAokvPRnN4ucAKOl6LrJqn6KHsjDAKZoniINsNkoVf3yYzO/B6
         L2rLKeRIhVVrqDhlsuDv9NbmJfjYSWVd7+FvuagEDXwkJTDoV+mZl5HOntDGvZLqgUB9
         iQKQQZzmJJOLI8XDKytouL46EYY8oMGFM6zPxcUzkWZAX5xz2k1znaSe1GRXU3DWJ/UJ
         exwg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@sirena.org.uk header.s=20170815-heliosphere header.b=VOOPFqSy;
       spf=pass (google.com: domain of broonie@sirena.co.uk designates 2a01:7e01::f03c:91ff:fed4:a3b6 as permitted sender) smtp.mailfrom=broonie@sirena.co.uk;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk. [2a01:7e01::f03c:91ff:fed4:a3b6])
        by gmr-mx.google.com with ESMTPS id e12si707296wma.2.2019.08.06.12.02.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Tue, 06 Aug 2019 12:02:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of broonie@sirena.co.uk designates 2a01:7e01::f03c:91ff:fed4:a3b6 as permitted sender) client-ip=2a01:7e01::f03c:91ff:fed4:a3b6;
Received: from ypsilon.sirena.org.uk ([2001:470:1f1d:6b5::7])
	by heliosphere.sirena.org.uk with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <broonie@sirena.co.uk>)
	id 1hv4jY-0005XD-79; Tue, 06 Aug 2019 19:02:56 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
	id 173092742B68; Tue,  6 Aug 2019 20:02:55 +0100 (BST)
Date: Tue, 6 Aug 2019 20:02:55 +0100
From: Mark Brown <broonie@kernel.org>
To: kernelci@groups.io, ndesaulniers@google.com
Cc: clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: aarch64 Big Endian
Message-ID: <20190806190254.GH4527@sirena.org.uk>
References: <CAKwvOdn0kv+N5raBDE_aPv637ROHmu7C1_C9F3PXNnAYSMTOYQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="NzX0AQGjRQPusK/O"
Content-Disposition: inline
In-Reply-To: <CAKwvOdn0kv+N5raBDE_aPv637ROHmu7C1_C9F3PXNnAYSMTOYQ@mail.gmail.com>
X-Cookie: All men have the right to wait in line.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: broonie@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@sirena.org.uk header.s=20170815-heliosphere header.b=VOOPFqSy;
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


--NzX0AQGjRQPusK/O
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

On Tue, Aug 06, 2019 at 11:45:25AM -0700, Nick Desaulniers via Groups.Io wrote:

> I was able to "boot" a aarch64 kernel with CONFIG_CPU_BIG_ENDIAN=y,
> but without a userspace image... the kernel seems to get stuck in a
> loop somewhere.  I would have expected it to panic somewhere since no
> rootfs was provided.

> Is the boot failures KernelCI's reporting a boot timeout or no output at all?

As I said in my previous reports and the linked logs I gave show it gets
to userspace but can't figure out how to interpret init, there's plenty
of output.  You can see this in any arm64 big endian job in -next.

> [    0.351576] Unpacking initramfs...
> [    0.451870] Freeing initrd memory: 14796K
> [    0.454334] hw perfevents: enabled with armv8_pmuv3 PMU driver, 1
> counters available
> [    0.454815] kvm [1]: HYP mode not available
> [    0.732776] request_module: kmod_concurrent_max (0) close to 0
> (max_modprobes: 50), for module binfmt-4c46, throttling...
> [    5.882267] request_module: modprobe binfmt-4c46 cannot be
> processed, kmod busy with 50 threads for more than 5 seconds now

This is the same symptoms, it will eventually time out trying to run
init and generate a panic.  Those request_module messages are it trying
to load binfmt_misc which is how the kernel handles unknown binaries,
it's trying to run userspace but can't work out how to do that.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190806190254.GH4527%40sirena.org.uk.

--NzX0AQGjRQPusK/O
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl1Jzt4ACgkQJNaLcl1U
h9DjIQf+Jbh2whfQAhlVZr/5rZPr5rsXc8Ktn9n3kdBNe8nJW5QD4JaTwjJjZnTt
WlDs/sO3HUA0yF3AsyZfBUGtQqcKdCe40zoY/ZjY1pmttP9PxiIrW3WX4ewk9m1l
NwNhjSsoia1IAbVw0Tavm8GoagENhzHilOyUuMLxeAvtCo49cvflg+RgEfciSe4T
WT9AlWi6+DCRjAOTOdzu4O55OBSpT1MWRLbEDyQLifa7V+r/hNTvVvC/WZ9hZejW
8GDAnOYBVUGzyIR/JhgiqAMbtRd74QgH0UQ+FxFvo+5aTTUeoTpnmkdQY0Btju/z
dr68pUXLaJj53uHqIJ3OstEG5E1hSA==
=FJZ0
-----END PGP SIGNATURE-----

--NzX0AQGjRQPusK/O--
