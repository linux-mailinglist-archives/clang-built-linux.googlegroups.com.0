Return-Path: <clang-built-linux+bncBDTKFPPJUEHRB2NWTSAAMGQE7MS6VDI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73f.google.com (mail-qk1-x73f.google.com [IPv6:2607:f8b0:4864:20::73f])
	by mail.lfdr.de (Postfix) with ESMTPS id E76EF2FBE36
	for <lists+clang-built-linux@lfdr.de>; Tue, 19 Jan 2021 18:48:26 +0100 (CET)
Received: by mail-qk1-x73f.google.com with SMTP id e25sf21019771qka.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 19 Jan 2021 09:48:26 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611078506; cv=pass;
        d=google.com; s=arc-20160816;
        b=rWgZXnj3q6B2muzz1Gsvhq6z082NPIoQswQWHGrT/EklEfqtkU1B5XLc5EDEQz3krl
         Tk0XgnwppkTzVqIiY8tShfG928hC8YsiNAbp/l8b+Q7a5yR60EzerutBBrx8MO5WF5rC
         zkBQlVIIu5p9lvFjrHB79rvpcGm69LMAbNjugNHMf4XLglF0VHS2jOA+YZ535/pMbXT0
         u8oUUL7bcOYdcBD3g2h26A+ljekfVlR7Y7X/Kg0YuwJY2w2/SXkSiHNnyLtEcab0nzs+
         1UkKGqBkA1NJwPsqJXO72y57CqTSr8/MDb5PstAr2j0TvlOjPV5ACcbMpU6gbU/W8EDX
         A2sw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=9uJLVVMTRmUMmp2Hj0bKyVIbhTKidWdZy8sgKkWJCZQ=;
        b=F6Q2yuOuoYsxMcJUj76nh1Dikx8PQj1+BCVc16UabF2SuqMz1g/TWA+bvShoWmFEiv
         ygRXlrJxoCv0Kh0JS8tdVRBnb1LTHe16J90e+NRzTUsUEhH3xzXtCAhfzYC1vCZsttuh
         A4d8T9BuQQdo8f/xpK6WXJfzIERJN5PLbDZel0ZzN8LiMDVVAh7QPgqjdPnXH195QeCN
         g6KiDMdy41kB2+qghwialup4Q7Ll7mY10agPc5LohyPMNOVtbxpL/iE/IyQ6FMv7kd3W
         3DurxRULTSKjQzEMxvqnIMJgHQNqHYNsUrY4kI6sxIzK57jcLycQP24dJ5ZisqZ61mQl
         tzjw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=B8bu++PF;
       spf=pass (google.com: domain of thierry.reding@gmail.com designates 2607:f8b0:4864:20::72c as permitted sender) smtp.mailfrom=thierry.reding@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9uJLVVMTRmUMmp2Hj0bKyVIbhTKidWdZy8sgKkWJCZQ=;
        b=MT84F/KPQrxMPmmD3jayfTslT446cvhMwZDodTPaplS+/yZ97X7iJtessFlZ8yl0Ij
         m0k+NwbnRQS/QuXy6BjN107buFaDFdn9kDsb+roeUxv1H2iSyVjKf7+a4x+AuV2sKx4D
         HQH5jBLy5v46tufYQgNlTus0JPV1BW/KvMBPjjtziGum8lIosubBCNmQ/xQBjcl48f5Q
         rWawpxaqPB51KIVRfoLSD7V8HuTwQjBAenxU00sDiknDNEVOikAJVeD27NymU9UOOfmw
         978ATr4nbwnPrbbRjKyvKXT5BGYnz0Tou884P7JNjSqMyu7QUnpg7f9gdlPl3J9c2EGL
         XwDA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9uJLVVMTRmUMmp2Hj0bKyVIbhTKidWdZy8sgKkWJCZQ=;
        b=A92i1aXXkhUOnH0S2jGsK7PZs06TctS4pAVaOaXj8LDvcKJ+BkstOANPid10pIiaLs
         bTFR5KBD8T2jd0g4HqbREmtfdQgfHcSoKkpxP6JMJ7YPNIbwj+Y+2ahoHYuBy4kfyncj
         RKPI2LcdwInesE5nnpg5AX3b0AflMYAaoIfrHW939ReZJRXpKpoYv41WMeYc9ir3cszT
         6w8RJdUWJ0GQ5he0MUuc94jDfDuevsC76MtDAPLE0rkuv6sXqIf/VyVa+DmF5ARme+YZ
         VsJ8Ki0I8tS3FodHttfBTN501KMzlLoJ8zRnBxGIwuPEhk7NH/TBQziV1cL8mA8C9Ri4
         cnWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=9uJLVVMTRmUMmp2Hj0bKyVIbhTKidWdZy8sgKkWJCZQ=;
        b=UvfPEZfshWvfn3JmqZ+1E6lljSZ04txmt8EKFC96xLBjPOJD+wxDCWT/fM9nVbQxiB
         qs0yENVDjg3K5Pa4jBS0wQqZoMozJPEouYsZwmcEE5uddbW7Pgd7o2LJUMo+eD7q019H
         1KQqevEy+zOZkO3YKkualTwYC0C8P8CTl+pBsBh7l7t02F/tHHIh9TR9FnV8cH5+LvZh
         3kKOJmOeTJuF7948+8tDr0m4NRLlG8VXStBv8hwYbyrTV3Ii68jGy//Ayd8Y/dBzWP/4
         n8NYM6ctgnDyY5Moq7S2Vj0FZF/yKKSqXniDqFKrqgvPeElqkwq8dLCr8/cPqCqulMLr
         v76w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530SVvjBOPnYKFf1GlS5we6QwJ21BjxY8Lr3BKF83rXV1vnvmgDX
	z46i2QFm9Egn4gY2bkKiipU=
X-Google-Smtp-Source: ABdhPJzkG8fXjB2KIEsoCI+p60wxqfj9Eo+TJmU78wy+QdcHwPDA/JhqhjdtYRoM+dcv1iMOcWTd4A==
X-Received: by 2002:ad4:4426:: with SMTP id e6mr5318684qvt.51.1611078505910;
        Tue, 19 Jan 2021 09:48:25 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ad4:4787:: with SMTP id z7ls4875318qvy.7.gmail; Tue, 19 Jan
 2021 09:48:25 -0800 (PST)
X-Received: by 2002:a0c:edc4:: with SMTP id i4mr5557350qvr.43.1611078505549;
        Tue, 19 Jan 2021 09:48:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611078505; cv=none;
        d=google.com; s=arc-20160816;
        b=K6/wa8F7/88zlI+FYGFbiyFpGVp0z6PXjnkDSUIpLGXyA98+BAxEJxnKHNaTePvM07
         uF2Ei3q0oY4M0RJt1KpV9ep34KpCUww/tPRMQ+RfDEJOF5Nr1h8DHZfNhY1dfGU+tLaV
         Sq7T+5ocM2ybTztPK0+GgcspPiX0ORCzbehOOXBvh6VI+AGLxeSVfxrIfEcelUOJxruS
         3zBEb2lN/kEzFwk1os6Ht4BovLqt5cTqXQu7qyQv0lTEqCx4I1lEnsq6antfY7+qlAeL
         0JUwQzns30dDe2X36BrrAhFnpURQ2Gfva1AObZcCaOPrOnQXmPEycCCs2c9SjPlwN3ii
         +jaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=f4E5ZdTb/c/05OV3aNGXqZyr3BVid89a31XNJo/J7Bs=;
        b=gKmz+gnGbw2xywyv0CsEJ3Tah8f/J3phvYjB2+NNFSRua/Yh2/IBfPU8CwQIB3k/Pv
         /D0KgEjH8ililbqkMwxGWi+CizsKsuo+hbo/BITHkjbyr7k36w3DlKqjlX5IXR5HUcC7
         siHksAj9/aflZqnJw/0f1CBPLy5LIv27FnBz0bO/EcUNWr7vXhRe0Wcaz4tf+Q+Lre/W
         WLUTBKmCIad+EoQAc0RgLRbdWokCp7H6l1qGQTrQFSr3wea7OEBisiJs+YlpO65WiEm8
         +kBhLM6pwwNeRwNIYLJVod03Fr8fkujYi58jV291tktO39FM0iuDK0hfZtNYFfyh2eR3
         40yA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=B8bu++PF;
       spf=pass (google.com: domain of thierry.reding@gmail.com designates 2607:f8b0:4864:20::72c as permitted sender) smtp.mailfrom=thierry.reding@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x72c.google.com (mail-qk1-x72c.google.com. [2607:f8b0:4864:20::72c])
        by gmr-mx.google.com with ESMTPS id p55si2432958qtc.2.2021.01.19.09.48.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Jan 2021 09:48:25 -0800 (PST)
Received-SPF: pass (google.com: domain of thierry.reding@gmail.com designates 2607:f8b0:4864:20::72c as permitted sender) client-ip=2607:f8b0:4864:20::72c;
Received: by mail-qk1-x72c.google.com with SMTP id z11so22665502qkj.7
        for <clang-built-linux@googlegroups.com>; Tue, 19 Jan 2021 09:48:25 -0800 (PST)
X-Received: by 2002:a37:9dd3:: with SMTP id g202mr5578423qke.488.1611078505338;
        Tue, 19 Jan 2021 09:48:25 -0800 (PST)
Received: from localhost ([62.96.65.119])
        by smtp.gmail.com with ESMTPSA id o5sm12769923qti.47.2021.01.19.09.48.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Jan 2021 09:48:23 -0800 (PST)
Date: Tue, 19 Jan 2021 18:48:21 +0100
From: Thierry Reding <thierry.reding@gmail.com>
To: Jon Hunter <jonathanh@nvidia.com>
Cc: Linus Torvalds <torvalds@linux-foundation.org>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	Kees Cook <keescook@chromium.org>, Emese Revfy <re.emese@gmail.com>,
	linux-hardening@vger.kernel.org,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	linux-tegra <linux-tegra@vger.kernel.org>
Subject: Re: [PATCH] gcc-plugins: simplify GCC plugin-dev capability test
Message-ID: <YAcbZRViwlAwl62q@ulmo>
References: <20201203125700.161354-1-masahiroy@kernel.org>
 <b9b17126-9af5-2f73-526e-91bb9fd27f71@samsung.com>
 <CAK7LNART2qQBY7Vc8rhMiXS_Fwty7qpWjwwfPrUegTb-gjy6sA@mail.gmail.com>
 <9f959875-1a30-b1a1-b626-3805e24a6df3@samsung.com>
 <e5b06d9a-9b24-2440-e0c2-8bf7095eccd9@nvidia.com>
 <25030057-86b1-5619-25fd-acfa0728b850@samsung.com>
 <4ab4f62f-8b37-01e1-f81c-270155b13a51@nvidia.com>
 <7e691a61-bf4b-0594-8d6d-36d62a5def0b@nvidia.com>
 <CAHk-=wjjiYjCp61gdAMpDOsUBU-A2hFFKJoVx5VAC7yV4K6WYg@mail.gmail.com>
 <95ce88c6-59bd-55b9-9299-51fa20aeb95c@nvidia.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="7rm5qQeEd3jZvY1U"
Content-Disposition: inline
In-Reply-To: <95ce88c6-59bd-55b9-9299-51fa20aeb95c@nvidia.com>
User-Agent: Mutt/2.0.4 (26f41dd1) (2020-12-30)
X-Original-Sender: thierry.reding@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=B8bu++PF;       spf=pass
 (google.com: domain of thierry.reding@gmail.com designates
 2607:f8b0:4864:20::72c as permitted sender) smtp.mailfrom=thierry.reding@gmail.com;
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


--7rm5qQeEd3jZvY1U
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

On Fri, Dec 18, 2020 at 08:33:37PM +0000, Jon Hunter wrote:
> 
> On 18/12/2020 17:54, Linus Torvalds wrote:
> > On Fri, Dec 18, 2020 at 7:33 AM Jon Hunter <jonathanh@nvidia.com> wrote:
> >>
> >> However, if you are saying that this is a problem/bug with our builders,
> >> then of course we will have to get this fixed.
> > 
> > This seems to be a package dependency problem with the gcc plugins -
> > they clearly want libgmp, but apparently the package hasn't specified
> > that dependency.
> > 
> > If this turns out to be a big problem, I guess we can't simplify the
> > plugin check after all.
> > 
> > We historically just disabled gcc-plugins if that header didn't build,
> > which obviously meant that it "worked" for people, but it also means
> > that clearly the coverage can't have been as good as it could/should
> > be.
> > 
> > So if it's as simple as just installing the GNU multiprecision
> > libraries ("gmp-devel" on most rpm-based systems, "libgmp-dev" on most
> > debian systems), then I think that's the right thing to do. You'll get
> > a working build again, and equally importantly, your build servers
> > will actually do a better job of covering the different build options.
> 
> 
> Thanks. I have reported this issue to the team that administers the
> builders. So hopefully, they will install the necessary packages for us
> now.

Just to close the loop on this, the builders now have libgmp-dev and
libmpc-dev packages installed and the builds are passing without the
workaround we had used.

Thierry

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YAcbZRViwlAwl62q%40ulmo.

--7rm5qQeEd3jZvY1U
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAmAHG2IACgkQ3SOs138+
s6Ht2xAAu0L1jit8d2ZxSzQyJH8jOz7gwm9N2twAnmXa51SkLH7/ZUnt7hkbnjcd
M3XS33eXTd60Aj0IFpMwhUfzDRWmXVlIbhTfotdWp6655KxbThC513SdvEMQiTlO
/bn97HxU/azt3xe7pGYEhyyx0UruX/jtYnC35gE5zqzujM3uVcvqh8q0O62dcKGM
gZi5U0OYYpMXRTJRIWKAD/+ytrfJyWNvFFcO8SVoLg+cKtZ0S6Q4Xt5wNgHGFemL
gRDqQZFrJDUCFBysQR1lN/9AUw/f0EmNmvqjc6HG3hTdwA18sOq0rpHdynaNa0RM
vjKI+qQ8kkCBhZl4ZqC9KD7GEwxuspESTInrD3YQx9fcZwhCq9JDjE6y9KHwalbW
C1JHgMr6ZL/vNC7/Q7CyALUzyaZBXU5eJgL9dN3SpCCjEzvUJmHaWaTe9CFGGYVx
D9QRNgjhpkBweaF2+J9K3infuyFEZmg8/7JyuYW2QbZ9/iS7/pzw9wzw8OEZiSin
txGU4UeWnSq7Fxmc5yaip4aTGGn8Rgv36MA8dQB8GQb2Ipvx5iJaBJuQGT5W4zPI
7gQkWpWk8QUuXBFng3cj0+5kCR6tZao7J/at06iOyAtbpIYPekA956dTBUysW/qM
108q895PsmRm7+jvd9ATrCUH7/sWlswwZOGHHjfM3tFNMg6GlUk=
=bF1k
-----END PGP SIGNATURE-----

--7rm5qQeEd3jZvY1U--
