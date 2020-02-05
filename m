Return-Path: <clang-built-linux+bncBDQ2L75W5QGBB4FO5LYQKGQEOQPZUUA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x337.google.com (mail-wm1-x337.google.com [IPv6:2a00:1450:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id 4153215290A
	for <lists+clang-built-linux@lfdr.de>; Wed,  5 Feb 2020 11:22:41 +0100 (CET)
Received: by mail-wm1-x337.google.com with SMTP id y125sf1777186wmg.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 05 Feb 2020 02:22:41 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1580898161; cv=pass;
        d=google.com; s=arc-20160816;
        b=Pdq1qUSWkBGSqS1gg8Frl2M/uksd41ENWWZnjXeZiJ0TZ4f3vHiuxGMLFmOCp+rWMW
         xLznhBLo+uD+nQrwmUeuonvuVqJ3D3XmP88aLo76PiXjOB4lkGnxgjIU6yGDHCQgCXjX
         OQUDZ9gX29JrDyGlNbHzUa+OE/MvMDZ6XokCBPi1EEGvkGZ++j5p2c0d86Q5AfO1tT5H
         ER2O/codb4KJkWG7f34jaZdsTuKeMZG7aM0M6tfZzWbn6eGZbtvF9AyAXt4Zervuig6N
         BTOt6taPGj4nPJwhVkvBXZ5nDWOCeERJgxWgiwT5qiNyIH5QZ8TMg2D0Hh60/Z0ueBSf
         1Bzw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=E6Ob69zolhIwi7iaqQt390iNVtnOIS1Qo+ZOvngUV7g=;
        b=dj/BhWcTnXmifo1YxGYxEymimAOHFrJIS6a7n5X7vJa005wNXST+ZazBSXqoYBXs4I
         SrQOcBAHuUY1E0+FakiqXifd5cRsedR6xbtQ/SL6trZE7yKaSBsp7skJXzDCq/iwVqma
         ao5pAG1rn31Lw4Dkq0og9KoBDRAOnBrza4UzoixgfgMpdoxyA5cWWPxn0J/cty80jrrV
         Z35epWDjglqrSaqfjIOcf5H7cWEZrQgynZ0c7/gOuXVcHo5TKujEw6qMBkLoLg1wrpZT
         t5dR4yfH3d+38Z15IwYE7TZTEAkozwiR31OjlV+Dm3XXkgiDZarIbeiZXQewOCVLcz2f
         SI2w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@sirena.org.uk header.s=20170815-heliosphere header.b=P27fPpAO;
       spf=pass (google.com: best guess record for domain of broonie@sirena.org.uk designates 172.104.155.198 as permitted sender) smtp.mailfrom=broonie@sirena.org.uk;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=E6Ob69zolhIwi7iaqQt390iNVtnOIS1Qo+ZOvngUV7g=;
        b=NiD/zhSR4zu73xX3gwnIshhyMjqwSbb48zawaQmrENUKxyqpY7k7WyaPeIl80e5yMV
         jMibjF/I8jscbDAx8gLEC/0acHiv4z3KRq+K/RfhN62pwTmkzgviGKhS6XrUaRsDcH31
         X6ddunEDFknRYlyOZfZVP+XOGY0Tn0H7NHpxG7F9YhBrl9r7xdRDTTEo1CiEYVWBi9C3
         L40mzSmCVNLL5X2WmmP7I/V7jU+znp3ORgrHAnFhL6JCUDyzGEQbXwBWf9JSIw4eur7H
         dtDAAQNkcx7EXuP4gaiaYqAg16Op7BJqj8qeyCGVBFJHmpPneSBcs67cwBAV+nZOtDlp
         klAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=E6Ob69zolhIwi7iaqQt390iNVtnOIS1Qo+ZOvngUV7g=;
        b=rEYcyUqwIa8TwNlraZ4jfUa9Afro7ULDwbaEh6HqPU7k8Tbbxam+zaV+QBjPvOWgiZ
         9aTkzPSorUZXYU2xgi3hQivd50EkSVEUCAWAeqH/uzg2KuZgxX7YCQlbZuTaU1H0zpAR
         wsKbhf0cr6aiGF04OIpurNABtmUkq2tgiYmkAw9yLKYDKm8FLjXZsNd1pMdTZpDQ/tSH
         9yptE6jpfzzKMzLmrXX6XLxrCv1AvZN1bWDStv0qFMGEMNw2E4XBzuy6mS6QXS6My5/P
         4htpyKhwG5fFsQvIwXCk+RUAWaDYyjSOV1xoBSb3btQ/Cqgd4ypmaueRSaPsTTlfkGFC
         4flg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXfMMBozJSopbvqfXBRpITm+SiMktM1Ahvbz4hyCYYdPZvLti0l
	M8/PkYFUsX7/XoemY6jNCJk=
X-Google-Smtp-Source: APXvYqwHo6jDzXOCmjOAPyispG4vQVPr+UOKmbk3+A6rmGoixqKpn9BJOiRju/hcYPdb9v72PYsHaQ==
X-Received: by 2002:a1c:9a56:: with SMTP id c83mr5022894wme.79.1580898160941;
        Wed, 05 Feb 2020 02:22:40 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:6385:: with SMTP id x127ls1097544wmb.2.gmail; Wed, 05
 Feb 2020 02:22:40 -0800 (PST)
X-Received: by 2002:a1c:4d08:: with SMTP id o8mr5080899wmh.86.1580898160203;
        Wed, 05 Feb 2020 02:22:40 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1580898160; cv=none;
        d=google.com; s=arc-20160816;
        b=N4VhaTk4JoDZwHYwJSnTq8DmQiPkXAlimVtROrmbsMsxd7pEZCiQ4qC6ouSjQQ5fWn
         Oz6SwRLQv92ZGiOWcGeuWmfJ57WQhjVBo/whmxPZ/tkY/5ouOWhWMoK/8l+h6/84aVuL
         yQZmf86u5XeqPS2V0JmnrIHzLnpuaPXp9KEC4eEA07f4+SFfAQw8K7UUqrNp5H3r+Q5J
         NZvcmTbIYmCnl5ZDYPG3luS07nMAV4VPGV4Kq4icpliVs5CcApRRbQctSatKl2aEov6O
         2qxOrdYOo33f6AGKkscJOOtZJptpQFD+zJl40VECFoHF+bRlS58zQCA+aRPsEG6ipeh1
         OqmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=/rtlxdlFXFw6Im6mj5PCy/VNag7UxeRqSrkOJffVA38=;
        b=xnhNJRvImf2FntDdAeX2MB30YlD/PPeGW2xUGsXnumcj+lBGa4VoMkfjoFWDxG69jt
         Aejv17ahtKoddsNswrgqdoiW0OSV+XzTVOUFzrnz9XWalPCTHtBlcbXKbD1MHHa0+Mcf
         5OElLOqoq/4kXG/MyGB+JTlJD8826WCP3k2LAixflviqQHkshNyrG4LChjE2w0XPM3Z2
         MGaOkUbFEf+YcKb6xbUAGhY1MT1gz7K86SOhVpf6PDdLMU0e5WYhqeYHYSIv2G6uczlg
         kCuXIOb1Bj0raDUbLW4eT79gg66X5KkmRIvwmRWxG/zHqyWQBKi7NCZvtIokNmwOpDsN
         NJ8w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@sirena.org.uk header.s=20170815-heliosphere header.b=P27fPpAO;
       spf=pass (google.com: best guess record for domain of broonie@sirena.org.uk designates 172.104.155.198 as permitted sender) smtp.mailfrom=broonie@sirena.org.uk;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk. [172.104.155.198])
        by gmr-mx.google.com with ESMTPS id p16si1015210wre.4.2020.02.05.02.22.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Feb 2020 02:22:40 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of broonie@sirena.org.uk designates 172.104.155.198 as permitted sender) client-ip=172.104.155.198;
Received: from fw-tnat-cam3.arm.com ([217.140.106.51] helo=fitzroy.sirena.org.uk)
	by heliosphere.sirena.org.uk with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <broonie@sirena.org.uk>)
	id 1izHpP-0003xE-BT; Wed, 05 Feb 2020 10:22:39 +0000
Received: by fitzroy.sirena.org.uk (Postfix, from userid 1000)
	id 07415D01D7F; Wed,  5 Feb 2020 10:22:39 +0000 (GMT)
Date: Wed, 5 Feb 2020 10:22:38 +0000
From: Mark Brown <broonie@kernel.org>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Liam Girdwood <lgirdwood@gmail.com>,
	Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
	alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] ASoC: wcd934x: Remove some unnecessary NULL checks
Message-ID: <20200205102238.GG3897@sirena.org.uk>
References: <20200204060143.23393-1-natechancellor@gmail.com>
 <20200204100039.GX3897@sirena.org.uk>
 <20200204193215.GA44094@ubuntu-x2-xlarge-x86>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="mOr7kNv8EL30+EI+"
Content-Disposition: inline
In-Reply-To: <20200204193215.GA44094@ubuntu-x2-xlarge-x86>
X-Cookie: Programming is an unnatural act.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: broonie@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@sirena.org.uk header.s=20170815-heliosphere header.b=P27fPpAO;
       spf=pass (google.com: best guess record for domain of
 broonie@sirena.org.uk designates 172.104.155.198 as permitted sender)
 smtp.mailfrom=broonie@sirena.org.uk;       dmarc=fail (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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


--mOr7kNv8EL30+EI+
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

On Tue, Feb 04, 2020 at 12:32:15PM -0700, Nathan Chancellor wrote:
> On Tue, Feb 04, 2020 at 10:00:39AM +0000, Mark Brown wrote:

> > I'm not convincd this is a sensible warning, at the use site a
> > pointer to an array in a struct looks identical to an array
> > embedded in the struct so it's not such a bad idea to check and
> > refactoring of the struct could easily introduce problems.

> Other static checkers like smatch will warn about this as well (since I
> am sure that is how Dan Carpenter found the same issue in the wcd9335
> driver). Isn't an antipattern in the kernel to do things "just in
> case we do something later"? There are plenty of NULL checks removed
> from the kernel because they do not do anything now.

I'm not convinced it is an antipattern - adding the checks would
be a bit silly but with the way C works the warnings feel like
false positives.  If the compiler were able to warn about missing
NULL checks in the case where the thing in the struct is a
pointer I'd be a lot happier with this.

> I'd be fine with changing the check to something else that keeps the
> same logic but doesn't create a warning; I am not exactly sure what that
> would be because that is more of a specific driver logic thing, which I
> am not familiar with.

I've queued the change to be applied since it's shuts the
compiler up but I'm really not convinced the compiler is helping
here.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200205102238.GG3897%40sirena.org.uk.

--mOr7kNv8EL30+EI+
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl46l24ACgkQJNaLcl1U
h9AAXAf+MO8n4UxQtouGrNdxFiwPsOIGewJMPd4vN1NCZTVDUBP55eWyQ4naXCsN
+BfzAWdmmwJn142SlhZV1P6qThjGkZwZft+PMVDW58zVRibxqmypybMitrQXPvQM
hzX56yshLBEYtaeps5/as2Iv0SU07tYFJ7g+ir1K0s8XOkYusOBWTGViOpO4JkH2
Js8aho28jbWGq8UaK8aH2eDhtLVPTmjYpN5Xk7qfbGvy5+Pq+HOmpLW0sM56uw9Q
nYPZOJbkFU+fIKXw8ZmxuuXs/vFeZHUqIdLAqcz+vIdxj6pxNnt9lk0uA6idJ+iH
+UdbUJ0BPsFyvzLEriFJEgwNnbTN0w==
=B63k
-----END PGP SIGNATURE-----

--mOr7kNv8EL30+EI+--
