Return-Path: <clang-built-linux+bncBDQ2L75W5QGBBQMZQT3QKGQETYYVOMI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x137.google.com (mail-il1-x137.google.com [IPv6:2607:f8b0:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id AA70E1F593F
	for <lists+clang-built-linux@lfdr.de>; Wed, 10 Jun 2020 18:39:30 +0200 (CEST)
Received: by mail-il1-x137.google.com with SMTP id c29sf1874636ilf.20
        for <lists+clang-built-linux@lfdr.de>; Wed, 10 Jun 2020 09:39:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591807169; cv=pass;
        d=google.com; s=arc-20160816;
        b=jHNW2N4M96VyqfiPAsrNbuwKp7yybpRRmXUT0R9uSiVPZC+O+MWPfv6qx6i1W3xlGg
         g+4JFeJDJTo7Tn3/cQgcht70t58MZz8yu0+uod5RZ17IIl6pK6gHaxnuQWp7GBsjNJXc
         PxfxCbxanE6F1XueZnAEaAz2cWRQleKcXhJhLJJdjj+HwTMj9xTPP06gEuRruQnTA03o
         uVnSVs3iI1dXXyuEz9T58KhvDGlXRE56kzFYvutDU2v7yCJKQr9Tl3ytAfhKMB6cWs5I
         wQB/1caZPLV/sgXlgDFqh3wi+LUqrKsp8ZAr6nG5xOarXDdyN8VkA4+6Q/yS5SwXJXzI
         XDmA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=UyR0pKS6CsjowWRHjv0fNmYjHR2feQA0o9Wd2275HQY=;
        b=guxp3DuIzvKkAPvCmWNPH4YHnzHfkzdRPCgLxWhgHeXeWGF1GdbHKF3GuKR+kNs6Pb
         CJqO6xWRBBncU8/837kTebeOWdCaKADshGd83LinhvblzAOG1noYXnuqI1I6ghVTzMBU
         yZSaYkfw7SOJcJPJXKh4zCur3ITa14sXtEozATn0unVkGU0zWmQU9P0pX7E5EVHZ4Zpr
         qRt4x3aFq4v3+uyQm9rSRd+/rJxO+9UR7SB08Twsqoj/6s12jyURBluEYBewjFv7rrtX
         K3q3CZdK7QwOJHZUTvrjCut9wj5OrcXLQyHP3+MupJQySmV31vDdviiXpi9VxFWdXFix
         iUFQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=kcMyQZXV;
       spf=pass (google.com: domain of broonie@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=broonie@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=UyR0pKS6CsjowWRHjv0fNmYjHR2feQA0o9Wd2275HQY=;
        b=laWJKb3aRZ0lf0FA4Yb9vq1l/TluizxRHrhZxfEw9OIjvDfXG6mqqVKHnplhjiXMPv
         dt879g4x1mssUaRgv13ZTzaKiHgrXzwqy/VhXNDPXtgGe7nTCwYnlks+s9zKecTDDmJP
         g8T4RXcvvgZc6BJa+VrfNcIpBUoH0EIJfOjGGan8TcZhIJ/pf91r2KV/3d6k0onuMb91
         5V7WxECslmrr9SEi7OVWnce2ZcipUNvGVyPpZMoG4WYlOVzZ4mwxotBCQBwds1gZzieY
         GFcAW2OliavyBhwJ41ee4eht5DqWc2yuNpBJ/oOQByosoNARTUCH/C0KW3Dc7lv2tLBq
         siLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=UyR0pKS6CsjowWRHjv0fNmYjHR2feQA0o9Wd2275HQY=;
        b=XPoXo+I9Ai6hzUhC2dw/ZE46oLW/z2xb6xmiZ04/Q5PgUk6Rrv0jY+w3fArFouAaVz
         5Ui6iaLB+9CXJ3B3+UfRb5WxHYOQ49lc9Vq54njKr2v/Jj8nTWfwpshtaxcckq3PQxy4
         DKDh/i7SNWQDWhLPddchvrhSfhMYykpgQCyfHPCDyea2u8LE4v2cYPkDwLfAELXJGHRD
         Cy4EzUrbamWjLLm6JZUywyi2lKoXcXHR7K3DaNiJ1a0R8RjJdXp/Uj1yUrvXY5I6NM6l
         IKIdynusVr8ApMcCnu+mwNg1U/14Kt716hAIyPNvbzKRkk2+fZwRFxsvGmhiuqaAnc5b
         OovA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530hviUzr7ACcWd+hlBEoGRPAIN27sZGKncyL5nFa8cRp6ZL0VNv
	X0iVelckMBceu//c+YYm7Y8=
X-Google-Smtp-Source: ABdhPJykE2Z1H064h0rDV8SXfn1GTOlFV1CyMyUL1pc0nLq5cnIozXnKGklYXe2a1JppIaec5RmoaA==
X-Received: by 2002:a02:a518:: with SMTP id e24mr3834506jam.72.1591807169653;
        Wed, 10 Jun 2020 09:39:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:c205:: with SMTP id j5ls6555208ilo.11.gmail; Wed, 10 Jun
 2020 09:39:29 -0700 (PDT)
X-Received: by 2002:a05:6e02:1242:: with SMTP id j2mr3728896ilq.303.1591807169328;
        Wed, 10 Jun 2020 09:39:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591807169; cv=none;
        d=google.com; s=arc-20160816;
        b=F095n4I0ZF8ibr2ZEqhJzI6NjD/jme+jS05Wq9mQqtshKMioMKmrnZMPIrEgBG91Wl
         4DhYA6Txdel4ooTK+bz4CCnLYpimesRN+Zdg9yhMENXor3DCKDPbu/5bhk/Srfv66e7B
         Tr95C/Z4Yxw+5ybtGUU1H63qQu8XAfduO7+xP6jGpb7LTzU2b+jBTJ/BdVlUD5WQIhlZ
         0SchDj5zNggb5wBMYN+cCkooggGiylR9q9yGe5n3HkK+yt4fvWlpTQ8xOIvrZojPa4Dk
         sTBbiTeeE2fZWQJ279C3u3a/Kf82iSMfvi9LDcg1jGy+bn+IeUJMFz/NnVmV/zSeamV/
         Qokg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=r1yGF+uQ2Nr9wUo6VujDIN/5HHhoEEnJjSUViFks9pI=;
        b=UQsLbEgtZhuXIy/fnd1/g3c3ay7CKRLrJNfHDtdcFaeG3zccIjZBRD0qZdBUp7AuR/
         n6Ym3MbmjYk//tigqn9ECJEUGdrKQ72PzuwR1/0HobvF2D0t1WaricOPe0yMo+1dyBfC
         p9VAHAcwQw3WD3Pz5Kc84kar0kXE0UXhAaNlV9x4lmjHZlxkh2JN/1aJPs5MjRmgbgey
         DD2jEmAK72NPlKa6S5gsUXTkh4U6yyygitBzQhioZTLIVXU4pC7JuEsksv79wYtVyEhb
         MGlgzD2Sq8HtwCONyO9Kr+FbJd+wiBT08WoRPfbTolS/KXf+d/gaREtdpb8wUhcaz6ST
         6SgA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=kcMyQZXV;
       spf=pass (google.com: domain of broonie@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=broonie@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id z11si37885ilq.5.2020.06.10.09.39.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 10 Jun 2020 09:39:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of broonie@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 23F9120734;
	Wed, 10 Jun 2020 16:39:27 +0000 (UTC)
Date: Wed, 10 Jun 2020 17:39:26 +0100
From: Mark Brown <broonie@kernel.org>
To: Jerome Brunet <jbrunet@baylibre.com>
Cc: kbuild test robot <lkp@intel.com>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org
Subject: Re: sound/soc/meson/t9015.c:315:34: warning: unused variable
 't9015_ids'
Message-ID: <20200610163926.GI5005@sirena.org.uk>
References: <202005311147.iLK0hQoe%lkp@intel.com>
 <1jftb32b0o.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="vs0rQTeTompTJjtd"
Content-Disposition: inline
In-Reply-To: <1jftb32b0o.fsf@starbuckisacylon.baylibre.com>
X-Cookie: fortune: No such file or directory
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: broonie@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=kcMyQZXV;       spf=pass
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


--vs0rQTeTompTJjtd
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

On Wed, Jun 10, 2020 at 05:31:03PM +0200, Jerome Brunet wrote:

> I'm not sure what to do with this report.
> I tried to reproduce has instructed, the log is full of warnings and the
> compilation eventually fails to link.

> It seems that most (if not all) drivers with a MODULE_DEVICE_TABLE() show
> this warning with the provided .config (COMPILE_TEST).

> When compiled with gcc, no such warning is shown.
> I can remove COMPILE_TEST for this driver, it will make the warning go
> away but I'm not sure it is appropriate.

I'd just ignore it for now - it seems like there's lots of false
positives from this warning which like you say are more global issues
and only show up at W=1.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200610163926.GI5005%40sirena.org.uk.

--vs0rQTeTompTJjtd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl7hDL0ACgkQJNaLcl1U
h9BxXgf7BwJQWORKeCwngQf1DmeQvUUe+nF+p9S6HjqN0eAe6pNQaOCjFUp2T2TV
BdCBM1kFxSr1bQjpAErNa6mb8WijKyqlJQh0D5gDQNhRijQn4ay8lXDqQGuFi+NJ
wFc2cWUjyxV24o865SQdVbw8r0nYQcz1snHw5UJnNHo9Mmi+rRixy1Kl5D8qXf/R
kQi5Xvx/UDbvdIIhE6WnJGSzGf7M70hGb2zJ2q3bEmEVihdoOK+N+DNwHqYRMNny
SRXG4Zaj9xPhnoJJuLWyBhpw53tHJlWBeUriLsQssKkshbYOPWMDhd5ifowxtDuG
UgtRVEsCU+6KbkEWMTPIotbr4aOJXg==
=Fp9y
-----END PGP SIGNATURE-----

--vs0rQTeTompTJjtd--
