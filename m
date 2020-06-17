Return-Path: <clang-built-linux+bncBDQ2L75W5QGBBR53U73QKGQEERIYFJA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3c.google.com (mail-vs1-xe3c.google.com [IPv6:2607:f8b0:4864:20::e3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 760B51FC989
	for <lists+clang-built-linux@lfdr.de>; Wed, 17 Jun 2020 11:09:28 +0200 (CEST)
Received: by mail-vs1-xe3c.google.com with SMTP id 184sf245412vsl.0
        for <lists+clang-built-linux@lfdr.de>; Wed, 17 Jun 2020 02:09:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592384967; cv=pass;
        d=google.com; s=arc-20160816;
        b=Pba4Z9xhWvaP5mICMpczE13lO/B3AHfOnLdJdTNkFa+Lc2lUfldeDiF52OCjiST370
         hqRlX9txWRIC1UdP2g0FLoUSc4q5+KSQ+ek9DjV5XFNTj6Qp2QNEAQVfIipVPh61BCdc
         Ggwtsab6liNkmLP7i03ThsfGZY1JPeuUsRFQQ0HAkIJfS/jzo6lSChUiRrD1780FVK/i
         BVTkwjvEEos9IO10wSzS73DqY2C4H2AajMqsW58QUhRZZJJXkYY2Pz7Vy/vsKgJzB2rS
         oJu5Sam//gPwXRqKXYbI/5vj84z8lMAE3mgWzzR0dBZ/MvtHaoSPbFXYAaitafbgxTbX
         HxCw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=jrrb0BaBzoNNrWiBwdlg5MA6k4DY0Pc8uAwhNZftAeE=;
        b=tvVAH7z5I8TnTK3JMPkeBOirrOKz3kT0itgAqzXMfjoc2OwA9Z4c01of4vnZOBdkM3
         jWfsEfN87bSBMqIIq754wZuU5zoX+HX/Wdr4vMIhGg5uf9f0xBf2FN9wPrcZpovZ3PFQ
         w1DRWqXT9YrCLtD23xEKmygSkAnJLjUZ5cHJPryrjo4Qu8MRt7brjw08wUo4sx1M0WBp
         w3nfeDasTuTE6na+e6wpoTJxGhooSC8ys0wfPjbsxkCuqQcJvUSrmCxUxOCa6M53SMb2
         8wqy+laVV98sdem04sO6bYnGHjle4bgML7nOe0emUVnKswg0rHBxFN4rmPwnfX0K4rqw
         YP4g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=j2cHRRCu;
       spf=pass (google.com: domain of broonie@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=broonie@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=jrrb0BaBzoNNrWiBwdlg5MA6k4DY0Pc8uAwhNZftAeE=;
        b=LR9AgrswfwbXwsI2AHiq+Z9Q54+To/i+svvLJLr+67kHbDQ42/sRmOlc6dPMga+3Qm
         lVBek4r1aN9IKtKjJQAVWpaBrNoPFRpGjbsgOk0MQbwVCVoiwqUJb0DW+baLFJHizNG9
         HIWL3zNIH70fKXX4LmEik9USQ2Yoi6FQTwyg2Jyd798f+r1KQKAVaYR2csQ9O94sGWCI
         7mPobxglF6rBsO2TEjkdXLR5Ke0lxLHv6VNvRyWBmCp7dGO3Qlb9B3Gdkg9jZXxw5cqo
         mitnT5cYS99sAE/xjQ1Rj1SbToE3h1jr34F2beqhLeOqz5qp6ZBXg1P4PEjvYNL8I1re
         s6kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=jrrb0BaBzoNNrWiBwdlg5MA6k4DY0Pc8uAwhNZftAeE=;
        b=uBTLxuWQ8x5mEzfsGUF9ui6FLRHZdXKC3MOMU7w/jO7IvoVpPDijSuD0WamKNysVNl
         as+IpqD8FvkQoCpB8H9tiFC2N9CdI455BEeRpqbipzNbDKGg7zzn3bSLYY7UAn7uYPlH
         CFn+d7gZjz3a6DV/fwMug0ov9JbLlF2Rn6YsnP61UwzRUlNdCEdQDYh3cOEZjhiN0LKB
         MsnHfyJbe89duBbKyBKn3cAiLOQaZm3c+RgS1cQEfTNBKvldB2MAHmOfLAIJTVCUke/R
         QzRnPQqvy9hGbf4O0rJeEgisxaC7Lhz60vJsB15dtUpdiRQKbFQDgulAkR4TGM+ZEg+P
         sajw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531RHFsNYn5HMH7Oxiy6EQOVfkCRRLTMlc+Of/fbkBg2P2pSLn59
	ipzKAaalj07ekkJYKn1YeOE=
X-Google-Smtp-Source: ABdhPJwc9ymTaHsbLgue6xdBWaTy8KUnfDNvkakIkqpxCvVgruNG5AhC7xZZ6/MkzQrS208WUInrfg==
X-Received: by 2002:a67:ea85:: with SMTP id f5mr5136809vso.234.1592384967439;
        Wed, 17 Jun 2020 02:09:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:8717:: with SMTP id j23ls197814vsd.11.gmail; Wed, 17 Jun
 2020 02:09:27 -0700 (PDT)
X-Received: by 2002:a67:7c94:: with SMTP id x142mr5066742vsc.192.1592384967071;
        Wed, 17 Jun 2020 02:09:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592384967; cv=none;
        d=google.com; s=arc-20160816;
        b=a8tyzw1fbhEWR4aVZPldJExs+avUzj90ElsifO4y9He/oqGMjIOBRY2F/8wdCnjhRX
         luEh66NAQ8tDZQrB4r4h+1SqygKUbwshR/QTNtOk4nnMxpSj8yZVmyDUKf1PLjYZLTDK
         OCM83qGQqaD0hjhFYXGXJqeJtJh38u1F2yorWoygNj6qmmi98jOcjaN5R/Ch32zpuOYi
         nbN3A4uluHzwhaNj4QyH4DzeVxuAFTUeuyr+EqFFrcZtTTA1s5gGBeYzxl+DpBWwc4Ts
         bS3nmUoa6V762zhy+3HM/dfQsrH7fVNPg12HLyk65JUYunqZWVkwxDwNcycPmP2Sz8KE
         nsKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=ieEhBHn0zjZVdmCJs0hpHz+m0bC8GBa6T/TMMAW6fY0=;
        b=D+akjPxw3aAUIgD4QS3hyDbbUryTI5UeSegn7c7QwCOuNLJhJ6inIdNmvQh0hPPfm9
         F82kOrsVc2lbmiMG2Y/0KAbIg1PuD0SxQZ0R+AyVg47GKxTY4OcwZ3mv1VlVWmQDbEf3
         L0on0VDYIS8KcHfBzcjCbdC/v3aoEC/8KCqeO25H9l2vOr2arvmvI7I7TQ7QcPDLALPq
         RsH93SZcn+Z/ko0IYa4tQLC8Od/zvPLQp+pgBzR6ec+bFPkVIMJAOvQfCCmCeTHaYhL0
         1iPk1tAer8uQSffEFSp9JSt3fLUc5YeZ/gL7T1OeSLizb9bIwIJ5aUc6G4quNwm5kXi8
         hvVA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=j2cHRRCu;
       spf=pass (google.com: domain of broonie@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=broonie@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id o18si1036447vke.0.2020.06.17.02.09.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Jun 2020 02:09:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of broonie@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 72B24207DD;
	Wed, 17 Jun 2020 09:09:25 +0000 (UTC)
Date: Wed, 17 Jun 2020 10:09:23 +0100
From: Mark Brown <broonie@kernel.org>
To: Will Deacon <will@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, kernel-team@android.com,
	clang-built-linux@googlegroups.com,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Tom Stellard <tstellar@redhat.com>,
	Daniel Kiss <daniel.kiss@arm.com>
Subject: Re: [PATCH] arm64: bti: Require clang >= 10.0.1 for in-kernel BTI
 support
Message-ID: <20200617090923.GA4613@sirena.org.uk>
References: <20200616183630.2445-1-will@kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="nFreZHaLTZJo0R7j"
Content-Disposition: inline
In-Reply-To: <20200616183630.2445-1-will@kernel.org>
X-Cookie: This fortune is false.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: broonie@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=j2cHRRCu;       spf=pass
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


--nFreZHaLTZJo0R7j
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

On Tue, Jun 16, 2020 at 07:36:30PM +0100, Will Deacon wrote:
> Unfortunately, most versions of clang that support BTI are capable of
> miscompiling the kernel when converting a switch statement into a jump
> table. As an example, attempting to spawn a KVM guest results in a panic:

Reviewed-by: Mark Brown <broonie@kernel.org>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200617090923.GA4613%40sirena.org.uk.

--nFreZHaLTZJo0R7j
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl7p3b4ACgkQJNaLcl1U
h9BE5wf/as6VaLvXELFzdA6mxgqPgBFParFFa7i/JsgBzdb7hd5Z5q8GeeqMpYJu
udyuxtHuSlduMup4htT/qb5XPSOcg3QbNLd2ug/3T/RnYLgCx4kO+yDdy7JVf1Wj
ZAiDT+y9texULXRy1ZctkZXD7mpV88tWzhJV/wAPHNK6WxUBQwjhZNWvB3W9dJGe
6gkuFlgPcBTVoMMWUia0hHArQz5KViX43YufS3i3UwCvklxeBZg4v3QAqq/JMntP
Orm/xhUxn28HMNVKsdRt5lIDTP07d3PsHzI1YLHfH6LrCbEoUvrl6IDMZJkPKy+I
czd7jKX598iWtg+GhKJlpiEWeAV9Iw==
=WE9k
-----END PGP SIGNATURE-----

--nFreZHaLTZJo0R7j--
