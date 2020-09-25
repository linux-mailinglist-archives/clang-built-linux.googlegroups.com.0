Return-Path: <clang-built-linux+bncBDQ2L75W5QGBBU5IW75QKGQE6JVJN2Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf40.google.com (mail-qv1-xf40.google.com [IPv6:2607:f8b0:4864:20::f40])
	by mail.lfdr.de (Postfix) with ESMTPS id F179F2785CD
	for <lists+clang-built-linux@lfdr.de>; Fri, 25 Sep 2020 13:28:20 +0200 (CEST)
Received: by mail-qv1-xf40.google.com with SMTP id k14sf1384410qvw.20
        for <lists+clang-built-linux@lfdr.de>; Fri, 25 Sep 2020 04:28:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601033299; cv=pass;
        d=google.com; s=arc-20160816;
        b=aZJk5WQVyXNtax1kAORFJfrZWIHOoJx+o09D9srgmxW/Vj8pQMdijdMT5NvS2h0ddh
         NSRoDzpDkV9MkRXQE8+1ifNQRx7dV/3+NiK8UmF0iEIMqeV3P7gfycoDWXW/kVIEzuwc
         1b8ZFKK+pZ7In5SbRJy4gsH3r+JwmwJpzLef1tKwdykqYzaRAXLmZbOSU9acxv/CRneb
         qTSc3cNojGIMS+7PPLGIPbT75wa1MNxxXgBVSgQqyXAYOElDOwQejP3+RpaOEH6sg6uY
         ECqbbd3lNKPMsHlNV+JOTQWUqdmeGyRzrSjZHzcU0dy2ZhEqnhUlDGjb3gmFxhj8AFh8
         Pakw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=RMWjS4f5McIZczepBykmKquHiaqQFhAOVtASFEME3vk=;
        b=hmRx1QKZ+NpGHJsYKt2O7vIVX3+WQDo69fMOxDns5MYKLx2o1OUMCilO6nHbVyPjFQ
         brxqbjugL+4QOkkLsuXZ/t5nkBg3cDeOhv/P0wshssOUe1p7pBNltsGuPG3fgO0Y43ho
         4g35Q/B/rqKuHpLa3l2ycVmYuQQ0Kcz3AZ4wo6YjywlyZkGlV9VBrhgOuuZlvqVMEG4b
         V1MPODU94g81NVn3xX+wxCHNq+NPDIG9+xfaIRzhITHtzpgRLcnkb2KIpeV8KZzNiEzd
         LrPoCMTiHU0Qks3vRYQzZClkw5M2GOvscGlpPz2MUxf72eClzDwe+Ul/Cu9LiSyXnN3O
         BlBg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Jc3SKVW+;
       spf=pass (google.com: domain of broonie@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=broonie@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=RMWjS4f5McIZczepBykmKquHiaqQFhAOVtASFEME3vk=;
        b=mRgTzEe832DoyYPNo6W3b2+iJ0c3+zOPwJkXuWaZ0Nsc8tZZYZO0uAYJHne1WVnqLb
         FcT9AnSSrsHwXsPsUYj8ezoT6k3OJ7LgFX2fYVOxdGB0kZios1DsLRomKOLFgHuIdfoc
         Fxjb9IaiFo2g0DRD6+hIz9BOdj2CLXUlU157SYfKzrgJ6vjJJ3KW+u6Gov/lPq6NxFmX
         AS3r0Nu1/WWUqtviKP7Fa9n6oQPLelLfyww4rpYes1mpZP8ir+ksMc2GzH5JVraRXf5+
         9VdjYb1BBAMmq3NY2mYOfqxiIoeUW7mfjMUqrnaikmqmfL/EjSNWYYSaFZ22C9c8Vu6T
         ywkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=RMWjS4f5McIZczepBykmKquHiaqQFhAOVtASFEME3vk=;
        b=lb/4C7Ypr6BjgzDls68xqDxDvdeBFwK3mUhpMWIqzpaCLhGRkLfb/ubULbA+pBBYGn
         a3C+Z7AVVSGL9Ty/PShBKhCcN7XEIyLt2VmIbXC3TaS8Yk6yeDoA7krbGAUuCWZGpN4R
         2TOP2YUAYoRX+XHJWlYaQsdbiKVimudDgKVm25WUm3X44YR/M3S/zm4MRZdDvpx/07uH
         G081QY69BTl9TUENFCsuUUwdUm3fhO8kxhTN8y/h8OpSpmuPegUvmf5byWViVXl1Noyk
         OduLY/i5QNm+xXdiFVFJClW/ejO4j0Ufo33geT+B9RPgBLlcLqxJNdvteZV3oj417+ke
         IaOA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530V9HM2A4vRy94dU6fvaw4bfOifO2Acgzw4wweg86JI0UKZVA9t
	vBwdEJT1wMEiCrZaGheHtP8=
X-Google-Smtp-Source: ABdhPJzNPQmUIi/afdqSp9Rss8EkydQvQW/HQ8FC0fOyjzK2O8EuFKQQGBFc5iMpZtsqEy9nhGbKqg==
X-Received: by 2002:ac8:7b95:: with SMTP id p21mr3728480qtu.139.1601033299652;
        Fri, 25 Sep 2020 04:28:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6214:4d4:: with SMTP id ck20ls643468qvb.7.gmail; Fri, 25
 Sep 2020 04:28:19 -0700 (PDT)
X-Received: by 2002:a05:6214:1784:: with SMTP id ct4mr4140636qvb.10.1601033299215;
        Fri, 25 Sep 2020 04:28:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601033299; cv=none;
        d=google.com; s=arc-20160816;
        b=PPKm+MvDRqiXWBaDulGzDgrgE0jsNDX4aZ8qjRTQaXMWmHpnKEqpoaudCV3roVnbew
         DLrDCTbdv+FgdEZOhQoBg5hjrVoRwxqr5ZQXjhomtSS0/K8IhYVO6Kz3OOZypp+YS/iR
         DEUh9NfRtTlsDK44Ap01oNZ3fVlVraZAsMc02GtGh1rn06eb5k1TlXjupexeqHg2W+jH
         KMpOZKuJbDaSXHfmBZrF6WHQRUvXryDawM0PSl8ELaJ1Zhoq7rWLz5ck3k374AP13Fo6
         ufps2e0AQVp4jkX8v2tjaUQLJNn1Aat7Qmjw7Aj/CRMuko1ytwm/H1GqsC3CdC3oeuYk
         /Vsw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=0qBWR99wLEdw3Mdk8ebyUqm3qW4QtbL6m4S65p6z35M=;
        b=0qM9c5BA30JRfR+e0MmHT7vlL+mEKBCZU4IvhwG87n2s6Xs64UyfplFPfB7xRQXfUF
         Gvr7Z0XZ1ZAHZgwT67clQhET/0+E5ZGML+Y7smoZHcveuJ0akShKBypxtSerAqRmVX0n
         MORENtOtMItju3T/52Cyo7UY/XUQ6M4qV+00JdnjYeM8AMRCYP/X5pbGy9VrXvIf6S8w
         H6It7T3Davp9SowbX6ryyahFiYmJXSY2y34Yu5b/z3r58g0GhesqQ2VV2u2TmKA9WtpV
         wSOPLC8XtjNhbge8zvQyV9b8wrXv2BiGPDT1O9pwGo/DEDmBq580dD+XZw9bUeGZwXD9
         s63A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Jc3SKVW+;
       spf=pass (google.com: domain of broonie@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=broonie@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id e1si127557qka.0.2020.09.25.04.28.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 25 Sep 2020 04:28:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of broonie@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 6EADE20717;
	Fri, 25 Sep 2020 11:28:17 +0000 (UTC)
Date: Fri, 25 Sep 2020 12:27:22 +0100
From: Mark Brown <broonie@kernel.org>
To: Anna Schumaker <anna.schumaker@netapp.com>
Cc: Joe Perches <joe@perches.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Trond Myklebust <trond.myklebust@hammerspace.com>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	"Gustavo A . R . Silva" <gustavo@embeddedor.com>,
	"Gustavo A . R . Silva" <gustavoars@kernel.org>,
	Miaohe Lin <linmiaohe@huawei.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Hongxiang Lou <louhongxiang@huawei.com>,
	Linux NFS Mailing List <linux-nfs@vger.kernel.org>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Andrew Morton <akpm@linux-foundation.org>
Subject: Re: [PATCH v3] nfs: remove incorrect fallthrough label
Message-ID: <20200925112722.GA4841@sirena.org.uk>
References: <ce28bb9bc25cb3f1197f75950a0cfe14947f9002.camel@perches.com>
 <20200917214545.199463-1-ndesaulniers@google.com>
 <CAKwvOdnziDJbRAP77K+V885SCuORfV4SmHDnSLUxhUGSSLMq_Q@mail.gmail.com>
 <ca629208707903da56823dd57540d677df2da283.camel@perches.com>
 <734165bbee434a920f074940624bcef01fcd9d60.camel@perches.com>
 <CAFX2Jf=JjVOjDKj_rpst35a+fqbiq4OpVFjztaeKcbTSNapnCg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="J2SCkAp4GZ/dPZZf"
Content-Disposition: inline
In-Reply-To: <CAFX2Jf=JjVOjDKj_rpst35a+fqbiq4OpVFjztaeKcbTSNapnCg@mail.gmail.com>
X-Cookie: Onward through the fog.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: broonie@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=Jc3SKVW+;       spf=pass
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


--J2SCkAp4GZ/dPZZf
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

On Thu, Sep 24, 2020 at 02:11:59PM -0400, Anna Schumaker wrote:
> On Thu, Sep 24, 2020 at 2:08 PM Joe Perches <joe@perches.com> wrote:

> > Real reason why not:

> I'm planning to take this patch through the NFS tree for 5.10 (along
> with the patch that apparently causes the problem). I didn't think it
> was urgent so I haven't gotten around to pushing it out yet, but I'll
> do so in the next few hours.

FWIW NFS is quite widely used by CI systems so any build breaks with it
in -next have a pretty big knock on effect on testing, even beyond the
distruption people working on the build test side of things.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200925112722.GA4841%40sirena.org.uk.

--J2SCkAp4GZ/dPZZf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl9t1BoACgkQJNaLcl1U
h9AQfgf/QGhP/HeYW+S1uZwXjRE61tdtxw8+QQillMq6Sd9RuOXGNcbRKgJfQ7H2
8Zt6U8pwlrPUGWpbrHzKM2dZ9qarLmCpqxdGWParPmJF6D1Hy8zo0R7tojGFQxA8
kGQCzBlw0nYHitjwAEISJABPMJRugrKOXSFOZJ4jYN/XwJ1Hip+q4l6K8eVz24af
QxpcMNdbpSYYBeMaPKI7JeHl6fAdTP9hdG9oMEf1yNJ7P8nfx35KZ3UilPMkUzMI
yZrx4vNyWE0xXRE+xn4DKgwbTrXQZnAxbZvG8RE+ntoQa1I+52MKzfZ04FaqYnXz
jsmdG833nCS8zVmHwt7nxNr8aqL2qQ==
=CEEL
-----END PGP SIGNATURE-----

--J2SCkAp4GZ/dPZZf--
