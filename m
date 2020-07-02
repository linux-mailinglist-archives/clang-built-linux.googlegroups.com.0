Return-Path: <clang-built-linux+bncBDQ2L75W5QGBB6XX673QKGQEDKS3LSA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93f.google.com (mail-ua1-x93f.google.com [IPv6:2607:f8b0:4864:20::93f])
	by mail.lfdr.de (Postfix) with ESMTPS id CB2F52127B3
	for <lists+clang-built-linux@lfdr.de>; Thu,  2 Jul 2020 17:23:39 +0200 (CEST)
Received: by mail-ua1-x93f.google.com with SMTP id h88sf5342098uah.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 02 Jul 2020 08:23:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593703418; cv=pass;
        d=google.com; s=arc-20160816;
        b=kNaH+XrraoaTG16L+m5Luxfud77nEHUaAE89W964rdAaoq1s6bRhLewQOulsw3rxXH
         CnzLyWdH+OC+saFletmTmmLiPOqQjtBVO6fZt+bew7zl1aSeiUOwCMCEBdgFGXOM0kOB
         Z6oGQD2RLcNyflz2zSbZsdww9AoVODB9Iy5Km2rPYWd9+t5GkUUcs8HRoSxowFanVI2E
         thv//T88jOHI4IL+d5MhkEyQts7mXyMRwQqWJdqR5eNYrU4++s0JwRzwKWMMjiT3Bh1/
         r1SaSvyU7BaT1VXWNVsppIiRLxD9ZVx7N33EfUaQw49N0+AkZLVsK+kEqtrs+FDWLZ9A
         uiEg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=DyDr8j+fzm7/I9DB0OFeidHA1tFYLzKZctxxWYMVerk=;
        b=BRGPQ5652ePmXJXqLzN0VHbfV5m3AONe/2PLms/lQaoDnGZXD/YYScY6gQ5cg7VAbf
         e4LD5Id4ZVdKU+xZa+WK7bvqLjtmePiU4xlPH1AgFowmCEjdCz9hbtGjc/rYDIguHIb/
         MGLx3FhX9sL/FdepTJldhSgRWpOg1SQT1foQ/AbtYVYYub7sWiP8xb+JEPmqYWKSI64P
         hCjD1e9YleCWb8vMH9ChtHZAefml2EF2MaoTO1zlJvuGqHS1vacr1mMlJL51fEyWdF1m
         d6z5FWRcCNAQ1HH8FwIc7l7ddSwWICWp1p2uNVuttk9ifBeCydAgM4qGW6640lNGouGK
         uGhg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=IO27kxXb;
       spf=pass (google.com: domain of broonie@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=broonie@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=DyDr8j+fzm7/I9DB0OFeidHA1tFYLzKZctxxWYMVerk=;
        b=Kk2Qikep6XDqRIK3niXS2XYjVyutxtjS6CHavg1E7PhLyyZMPAJtJOrkp2uchLhbSS
         fmJCPF+lK0fJbABcV7VSrFpgCNlPVgWIYqyUSUpPz2ukYqMXJ8Mryevzv5bxkOirlssz
         95meBlksoUeimGOCnJQe2xGM2vl6pVBmZkaLeCgiNxqUFF/7XxNydu1PPtTFinRXSA0O
         IGAGii4dqA5IRs286FyX66A9puXvvhUjWlNRMd6AJcX1TCoEh0OLf19EHsUk4OYC9MRi
         Yb+b+500TAOS8YrLh58rERY+V+kZoEFUelctPUTUUcUtzb0uTayqoASESBwhunN/iDvM
         +TbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=DyDr8j+fzm7/I9DB0OFeidHA1tFYLzKZctxxWYMVerk=;
        b=i0l/O27WNLYCo1qY0vBWZKN51CUQyTYf1CAUggi3rNyg94MMRwkgwxr+QUWliCGaN5
         KYI/TL+jXYVw7jwegNywspEL6QdNlFjayNi2/B5ac4lcWwlemDrLdCUliZiFMJ8d+aA0
         d11g4HIcAia1zbCKZb6xNvH32EY50bkooIQTeXZ4xAH1L05A7AFbrYu2P7Vb+XZM46u5
         ssSO5wJ/YgT6uZLVgwza5WFeQtK1/9GAHpVZz2GL+Gn1Po5qocd+jFw0KLFwcl6n3nZu
         Fbv0IsVkOUIL7XWVuu2TlORLML5mzLSCaSnAGW5E6Vw5a3D307YA3TSEghaZ15OUPfQH
         djZw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531jKOrgzM/kN5fwb+I7RxUK7ml4kXJV2DYsgX2X6E08wSg4l664
	k9UBTHcPq38DZQ7TxCNqqSs=
X-Google-Smtp-Source: ABdhPJzt0+n6aAH2I17sE31KjfcxVsAyXnlChPgq4cG0Zn8h+246jG1OrgZx3z20mX2E6+mLIEVbmQ==
X-Received: by 2002:ac5:c189:: with SMTP id z9mr22756139vkb.79.1593703418766;
        Thu, 02 Jul 2020 08:23:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:2ed3:: with SMTP id u202ls796062vsu.1.gmail; Thu, 02 Jul
 2020 08:23:38 -0700 (PDT)
X-Received: by 2002:a05:6102:243b:: with SMTP id l27mr23268887vsi.173.1593703418461;
        Thu, 02 Jul 2020 08:23:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593703418; cv=none;
        d=google.com; s=arc-20160816;
        b=rFm6FEFwjIv/Lkt//sZ3zikX87orL1Wvwv684zRYcJDs4BbJcrRqZn721UJs+rmsz7
         AFdHCQnsFc1JJvJqFi3EYZPJB9LMwt3JohwN2EMMd4VKSatpVMLwJTBpOi95x9p3Lcqg
         bdaLuGr8po5oCnfnkDm/T6o6mYe0I8VUAfcZv6g+biE9amgXhsL8z34uzPmj0p6mDRr/
         359asaU9wb7z6P37z+/lgbiaHip2SeKKsah3EwwqVB/p7N//d3It4m3LYQxg8oi3Xtu0
         dzfVnBlm64+zTHhNO+DhS11x+NJVUXXOivUQc3jcbcyxTjV/X1+yIwSE/61c669yVuCf
         Zwow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=WNTkJbutilXS82yRZLpy+ORdJKpcXG8AaT4h8ivgBxQ=;
        b=wBuaRMXPs+o3BlodoSdrKvS9UG1jBEAbF7DPKainlpt8854hQMz3CRXOIKmL022ACa
         4Dd7ZnlzMvhNagqC66NR5g64esy4/IqIxYDvnC/K7hZRD9EhvcVgwvjzQ9RRABUI9oR2
         mEp08nXEjQQsKAfdswZL2WlW95i2KcQQReg61Vf7qAvxF/Sv5X02Dguu2bZI8kgcqOhs
         oI+Wa1dHv4xuCOjO4+IUkIcAoHsXw3bTIOFjWdkEbZQlrz4AF/vZt4EY0YCl5kf3vsut
         jyXxN2NVzZXtwnoNdeRrKut4IwnAp4etTWUVtmpB6/qY+zuzvze0f91DsKF2SXwLak5M
         8O4A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=IO27kxXb;
       spf=pass (google.com: domain of broonie@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=broonie@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id v13si500619vsk.1.2020.07.02.08.23.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Jul 2020 08:23:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of broonie@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id CCF68208B6;
	Thu,  2 Jul 2020 15:23:36 +0000 (UTC)
Date: Thu, 2 Jul 2020 16:23:35 +0100
From: Mark Brown <broonie@kernel.org>
To: Kees Cook <keescook@chromium.org>
Cc: linux-kernel@vger.kernel.org,
	Nick Desaulniers <ndesaulniers@google.com>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Alexander Potapenko <glider@google.com>,
	Joe Perches <joe@perches.com>, Andy Whitcroft <apw@canonical.com>,
	x86@kernel.org, drbd-dev@lists.linbit.com,
	linux-block@vger.kernel.org, b43-dev@lists.infradead.org,
	netdev@vger.kernel.org, linux-doc@vger.kernel.org,
	linux-wireless@vger.kernel.org, linux-ide@vger.kernel.org,
	linux-clk@vger.kernel.org, linux-spi@vger.kernel.org,
	linux-mm@kvack.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH v2 08/16] spi: davinci: Remove uninitialized_var() usage
Message-ID: <20200702152335.GJ4483@sirena.org.uk>
References: <20200620033007.1444705-1-keescook@chromium.org>
 <20200620033007.1444705-9-keescook@chromium.org>
 <20200701203920.GC3776@sirena.org.uk>
 <202007020819.318824DA@keescook>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="GlnCQLZWzqLRJED8"
Content-Disposition: inline
In-Reply-To: <202007020819.318824DA@keescook>
X-Cookie: I'm rated PG-34!!
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: broonie@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=IO27kxXb;       spf=pass
 (google.com: domain of broonie@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=broonie@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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


--GlnCQLZWzqLRJED8
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

On Thu, Jul 02, 2020 at 08:21:40AM -0700, Kees Cook wrote:
> On Wed, Jul 01, 2020 at 09:39:20PM +0100, Mark Brown wrote:

> > Please copy maintainers on patches :(

> Hi! Sorry about that; the CC list was giant, so I had opted for using
> subsystem mailing lists where possible.

If you're going to err in a direction there I'd err in the direction of
CCing the people not the list - I only saw this since I was looking for
something else, I don't normally see stuff in the mailing list folder.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200702152335.GJ4483%40sirena.org.uk.

--GlnCQLZWzqLRJED8
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl79+/YACgkQJNaLcl1U
h9Djdwf9FVJo+4ywgEFtzDJmcKhgfjUWwqu3KS6uuCh0kB55Sw1SQjJSSXpOVAxD
c1THQwWtp3yoK50+wen7yecLtGzYsGfOc1qPCbtoHXUb4vt9F+2dUN3fYKlp5OkY
ptmLndV7KSAVJLXgCq3TadMYTowK69OXYgiVLB63DplYlmYfBulsIp0tstfTNxTd
/9OTPNQwCTG4HFHZcCOoKL62qCNCSgYJEamVHX8CAIYb1B9JHmPQQg5lm9xja8Do
f9XUirVfGI8NG4jqh51RT140BT7QOzzj5jZIV5wOf+fFu6SAD35MvR+YlABDxfNx
sED17NzL1wIx4PO0x1a//RB9L31ujg==
=X/3I
-----END PGP SIGNATURE-----

--GlnCQLZWzqLRJED8--
