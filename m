Return-Path: <clang-built-linux+bncBDQ2L75W5QGBBLNK6TZQKGQEF7DHXCY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x340.google.com (mail-ot1-x340.google.com [IPv6:2607:f8b0:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id 074C4194989
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Mar 2020 21:48:47 +0100 (CET)
Received: by mail-ot1-x340.google.com with SMTP id d4sf5733159oti.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 26 Mar 2020 13:48:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585255726; cv=pass;
        d=google.com; s=arc-20160816;
        b=RvsHqcXSD6mOYns4gJal0PWkjI7V+j0djLDR296tFwm7TaYnc/hKJLYWTgyrbmuNP/
         PL0kFSclb7Nw6yH5QvsM5W0T7yxYV+l33Ed/WjKJBMrQy0G6gYqGXx3z+qDwVdEhVFqn
         oA/p6gU4FUYBYsFOB9Zv7KDP2QICiSOdHH7XkhbwFvD0nip5wk69WddwbmXBq5mAf/+k
         Ypd7Uk6SHYR4qPMdMY91v/TjpxvT+3YhTMgXzvDNTYiRgpjsHrqGH+RvD80ErIJszi/R
         p1mCmou5lcgBlVXW/l1WJFkg6rfQaAnjd1PZXqoewhclSqt9RWppH5m3IBccLQkLPZyY
         iPqA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=ME1ru27PAkEUa5/TktivQA7p5atkk25u4yzZKIuDX9k=;
        b=d5yQ3kewcJPLzR6rRmOP3FiWBz5mTn248ZOGNEEBtT9HFKw61rgRNKYAG6Igtu0mU7
         AJnLhE6lvtjlkCpCdjmbd/qnm20NE4w7UGH2nNUzecnCUq29PlsRACSXtEo3qhMznuRy
         Y9K1m6ZkWwNHjsVptA+0k6P2L91zewkTKbl06IzKeprTRXMfDYvbywblW6Hdr1QMm2QV
         p6h7xY9oG3/bnsdezohHaXS+g+CfxhNiluxqAzCEecODqQWCAfEcdwbfVK4+Md5sfEsJ
         9lfXY4D393AYFhMm67GPlMOwQ8UGyFEEaoNm6lR0PUG+AXSqnJSt1qdDLtc+bREyZK96
         /ktg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.brown@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.brown@arm.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ME1ru27PAkEUa5/TktivQA7p5atkk25u4yzZKIuDX9k=;
        b=HMfEMMR5LcKAWIglcffrJDdMbjg8nC48CC4g8FWH1CuvTi7SZNhM0yebivkoP+oNkv
         mdW/88k87g86mR2XPkv/Rcl29TqQKCg9u8IKJAD2udddVC5AH+kWw/U5JQaqxUNM234J
         JOKTIE6skwoTXGPN32Z+7Nhxd5i5d6toG8zJ2ZFyytPpk/kXMNm0TBB10B+D57Q/IsQf
         omQE6E9AaPV8X+4KKXhcJ7mSRJrVmIulBi6AQl3BceNcFVWXd9ivtbZ4sN8Daxvd6zbw
         AEP7+7r4yST4qI/jBm8gLX1eez+9ACq8qPr2b/da4UZBqQg/H59rGjcd2+BhyXRxxkiC
         IyDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ME1ru27PAkEUa5/TktivQA7p5atkk25u4yzZKIuDX9k=;
        b=F7UrVNWLpraTbwFs5N4z5+PfqTbsydkWUJ37idjXdkLPgQTqQmJve6qItOG0qlxZN0
         Vzr9S7Dut5MI7eYvQsCfnHFOV4P8cXK92j1ZVtuBNLuU3AHzjJDLsAhX3U0Ga7jAdGCq
         0O8dEpx/GB/HKr0ngrD+OeQpEQumXFZZe6RSpTjNLqLZL+opBpBg0oZCHQd04UTsdIIi
         QALwPBX+gqNK0salJ0T4dWb2WOACa41IecCAr2PY2PkzZSKuJ/AVyyYWAOvM0SpyOMRz
         iRDwuvWLGzeh2f4wOxJPvVwk2+T8OMzCj4SZNVPWmQ1C3eZOVWtDki5Oi7IZ6ORO/re7
         jaZw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ3IVWoxVHNQ9dtVcwdzp2iPNXUJWbr1vAfgw3X8Xe76AvmBJPvj
	zthRROfoNZAkdKaum3ex4rE=
X-Google-Smtp-Source: ADFU+vve2yfaF4kGVqEinaAdgtwygV6WeRZyFZ7ZiCx4clFZwRgX4yOefxn98INvEenLoGGYOjl7YQ==
X-Received: by 2002:aca:b803:: with SMTP id i3mr1656936oif.92.1585255725992;
        Thu, 26 Mar 2020 13:48:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:ec0a:: with SMTP id k10ls2462625oih.8.gmail; Thu, 26 Mar
 2020 13:48:45 -0700 (PDT)
X-Received: by 2002:aca:ecd0:: with SMTP id k199mr568750oih.60.1585255725642;
        Thu, 26 Mar 2020 13:48:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585255725; cv=none;
        d=google.com; s=arc-20160816;
        b=s5OM4f0jSh9RaDjbKDw2UmbLhlIx4F/fijwoD3g7CqZhyD2g0SBOlnuF59zTyHqJ+a
         4yztD7j/wHscmoiaB31dkEnkA8ivtZJ8ipv6wDuwx0L6oFWFQ0nxOrlO+LVxu1a7zmLY
         8dWOEu9SbLsaIgmw+FWjmBndZHxh5l3tUOtV5ePFUuuxwaJNLq+GLnCMBS8FSZBs6bgj
         9JfTaMR9bE/uVPtGVkbmA3qzDqMaEzhWdfNNQsQ17t/Q+gnZfaUrbgFKOWjQ2ZSACnU2
         Qze/sLfQ17an5wUhD6l3nX4k8QvXQwcJUu+no9XZJclK9XxUMKKbqvJOWYbxuI9SgKi6
         or0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=stNI0i83EmYr5EFHjlBurUDDuz8z+jmZdtyWT5xMlNY=;
        b=ymDOULegOpx68Wzk1iOZ4Ff7waqJ791NtSPn2reS3c9Ia614HusPeOlO5rzanoJEaI
         Du98Z5v6rX0lDgjX7CL/uVWJEnAArC2fIedsU/Iszkg8bXtKiuftvqMatmJ8KgwqzP5V
         aIOLAUaHrpGj54UCw8MU8nI3Yr7aSYMVXjGa3yo6D1WVF3I0NWRkJGJjwZ5xd8CfdIXZ
         jox2h0dMZl01CYar5Y9nadVCvZp8Uko3Nh5yLbDGbicZBWe3tDi4tA0NAYX1o0/LLuS0
         BG54AnzyfYWH904SunEQ7KuaJtC+ilpX5oH/9GwnsVYCG0FOWvBazuJh6F2k9KZm8UY/
         8WSA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.brown@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.brown@arm.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id r1si296844oot.0.2020.03.26.13.48.45
        for <clang-built-linux@googlegroups.com>;
        Thu, 26 Mar 2020 13:48:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of mark.brown@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 32EEB7FA;
	Thu, 26 Mar 2020 13:48:45 -0700 (PDT)
Received: from localhost (unknown [10.37.6.21])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id AB7633F71F;
	Thu, 26 Mar 2020 13:48:44 -0700 (PDT)
Date: Thu, 26 Mar 2020 20:48:43 +0000
From: Mark Brown <broonie@kernel.org>
To: kernelci@groups.io, ndesaulniers@google.com
Cc: Guillaume Tucker <guillaume.tucker@collabora.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	"kernelci.org bot" <bot@kernelci.org>
Subject: Re: next/master build: 227 builds: 17 failed, 210 passed, 41 errors,
 497 warnings (next-20200326)
Message-ID: <20200326204843.GA24981@sirena.org.uk>
References: <5e7cb175.1c69fb81.d10e.6d4a@mx.google.com>
 <CAKwvOdkTh+uHOK0bd5UGGfYiFQU+MkeT71Yy7Ggof9FkQHCG-g@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ibTvN161/egqYuK8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdkTh+uHOK0bd5UGGfYiFQU+MkeT71Yy7Ggof9FkQHCG-g@mail.gmail.com>
X-Cookie: McDonald's -- Because you're worth it.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: broonie@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of mark.brown@arm.com designates 217.140.110.172 as
 permitted sender) smtp.mailfrom=mark.brown@arm.com;       dmarc=fail (p=NONE
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


--ibTvN161/egqYuK8
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

On Thu, Mar 26, 2020 at 11:49:21AM -0700, Nick Desaulniers via Groups.Io wrote:

> Oh no, did the format of the logs change with the latest deployment?
> I expected to see the breakdown of which builds had which
> warnings/errors, which is very fast for me to triage.  If it was an
> intentional change, can we please bring those back?

Yes, it was an intentional change due to the huge size of the reports -
the basic issue was including all the successful builds as well which
made it really hard to actually get to the problematic bit of the report
with all the scrolling and deleting.  Ideally we'd just be able to
filter those out and leave only the fails, I agree they make it much
easier to triage and report things but it's a more involved change to do
that.  Kevin, Guillaume, what do you think?

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200326204843.GA24981%40sirena.org.uk.

--ibTvN161/egqYuK8
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl59FSoACgkQJNaLcl1U
h9Bksgf9GY7DlxQrKRC8GFE8w+FslNiuxN4BCEPz5sEwX0WTQowHY2dXf4eIi4FW
9/bLQRnYty0EwpSj2wYkUYzrJJBQD3MXbMl9FLUQdiWYXbW3sLIOX8k2tAoEEJ07
aNrAFejA5ZAcbN8PTMXYoAM21c+Fxgb9kaGA5zmNh+cWse8pPABaXcNqnQXdNiFv
8h22zkRCJCT/sK4UM6shM44p79Ag/SfepklGUF+wDr9Ur+1p8x+r/8zw7PDGiK7v
Lx34NryZpWEq3f9PUAwt+fI9bGm3LQYEDCcDsNtv7bKd/1hyC8lyv0uae72lDg5h
vm/w+u9OEDNNChO8p2lMtnb01PgHrg==
=7FyF
-----END PGP SIGNATURE-----

--ibTvN161/egqYuK8--
