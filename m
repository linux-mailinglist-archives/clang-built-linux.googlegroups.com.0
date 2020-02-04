Return-Path: <clang-built-linux+bncBDQ2L75W5QGBBSMB4XYQKGQE4UDXI7Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33b.google.com (mail-wm1-x33b.google.com [IPv6:2a00:1450:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A289151853
	for <lists+clang-built-linux@lfdr.de>; Tue,  4 Feb 2020 11:00:42 +0100 (CET)
Received: by mail-wm1-x33b.google.com with SMTP id t17sf1114204wmi.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 04 Feb 2020 02:00:42 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1580810441; cv=pass;
        d=google.com; s=arc-20160816;
        b=YcgEeAHAAxhqbwCMZJJBVZM4NlNIAzk0N5gLtHunnsa229t5dvqpqu+Pae5YuWWUcE
         oW/VTsUUwSEDgoahTPavaTgDxhZU7ZoKnCd19ZPEiXnI+vK9e1DBpxnQPxjYcrLUspkT
         AUXpHbvrrez0J2OOxbF3XnIJRocZ4LGWF9/Rrsx+JnwWs2qhlcR0qkdnVqSlKSCvAZ8P
         8gN1rD7rsZmBUIN2DkzuvR1qoMwGvRaSS9jM+w/TvwKE845A2pbryX1kVtyVsJGMwTSF
         XCT8YWijlKDhBaxpKYDZU5DQr+1/0b/iWhS4/AWxlrkG8MquVGXnBGBq5oWNavtL8HEm
         6k+g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=1HX0CM3HzNzB/F6O7tJh9c6wXCbvhEngfkR7r5qVlrY=;
        b=uAKZRGwCaHEUTv02KAud/04PLPxCeN3q2+BN7UnjfThFDzzfjky0M1Y9+oIyXvzX0Z
         eXmc4sIJGGWUQheDFgn9WP6GeUyd8g+UzghaomunFIG8sYXBhn7SQUxgCsN8ATHxVyIY
         H4znZERexW2G464PzIPmSHM76SwnW4BqPcOnzEA3YEmFkAq1di23VUazjxZ0Mas/9yvm
         VWWU2uRpwFaKDaFsOO4jek9bDK74ZSo6JQMzAvP/jG6rJ0+ZSCK88R932FbnTAYry9HC
         a3nvOyYU/0xxk3HYsllHRoklHkVRixTD83Z3hwad4QGL/9diq9jzk0a27jZ2xjjSPiMm
         pdCA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@sirena.org.uk header.s=20170815-heliosphere header.b=FNpve2cc;
       spf=pass (google.com: best guess record for domain of broonie@sirena.org.uk designates 172.104.155.198 as permitted sender) smtp.mailfrom=broonie@sirena.org.uk;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1HX0CM3HzNzB/F6O7tJh9c6wXCbvhEngfkR7r5qVlrY=;
        b=isKYRW1nWb+cBFVLSQs8awOwi90+JGnSotLSEZYvwSu53LA6Hz3fB8PQNYE+cZVTfy
         l+POLdRjV4nXxtPPAXidbA9/EMMVqjZoyZRd82OJBMFeIvOBxkNbFXs8WTAyvjbuSUK9
         raRvuVEIH+tfAIVKYNhG8oVeI+keB4zzrqxKdjDC0hGRJ6qKVo4FoK/LK3SKBnirYo9H
         rBKVnunIWoYrioisdwHWtSPXKfFEM8IC5vHzvfGJeBLKTBOoNfWukva0WfL1Vbrh/moo
         x+tfu7kT/0dt/6dyBe93BzbOm9NHzFYMrOZDzSDkeRmaAu6SqOKdG2LxRn4bzXQjzxcF
         Pzyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=1HX0CM3HzNzB/F6O7tJh9c6wXCbvhEngfkR7r5qVlrY=;
        b=qQ4ZLyzQwLmFPKY/wl9t6WnDmVPXo1N0AYDkZAq0UBwAzvBCUVLZcevm77gQtFisaj
         meP633XHEu23o1q5VZGNl2nYjgtIwmwX4fqestFZjoitv6+HUGdx0gLaJjx+VMjsJg0x
         NkN300w5lD27UKdN62zYZRBSWKjUQYvRMejWfUr4o/8k9ufhCt2z83GwPRH5u9USiax9
         AcIQaoK0GJDExCTEb0vPUYxmPGaHR83NETgiRxdNh+UyD5Pd/RPFBXOqid4aucJqgQbg
         q3MR1JugICVb37xmraVVRlY/wTHRz3rXa+Y2d7SDKdQrwQsXOkYZzqRdq9rtEjLAtPgl
         AQqQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUKX3WPTG3iwGR3Z8+/wxT4D4H3Elr031c1QNGvvVwUYG7YIuH6
	2wGjWebZfiQhlzv+ymSCRSY=
X-Google-Smtp-Source: APXvYqzrS+5QnqvL1DKHi4OFUZuDlJdqaUjbnAfR17UWLys0pjV3uSJll50G+PGGRdxqCIHyjhGtuA==
X-Received: by 2002:a7b:c0c7:: with SMTP id s7mr5200774wmh.129.1580810441776;
        Tue, 04 Feb 2020 02:00:41 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:c0d9:: with SMTP id s25ls2365090wmh.0.gmail; Tue, 04 Feb
 2020 02:00:41 -0800 (PST)
X-Received: by 2002:a05:600c:292:: with SMTP id 18mr5204283wmk.128.1580810441083;
        Tue, 04 Feb 2020 02:00:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1580810441; cv=none;
        d=google.com; s=arc-20160816;
        b=O/n/WW4XwPTlPVtmA3jgX97FG2t0WAcRvxkQQh1evsfgy5TE9dfn9KVsWhvKNs+rr4
         w8fOruuUtjbkLchEAHZ0A9nNY1euiKxAWaIm8a0Pj760U1H4uWeLBFYwV/4Ufzbbdoe3
         f9ugBgurucfO8Zdokr89ogk5nbjKoy5vw1MmCYuOsnHT0SCcvnA2FK9m+JY88kmLegQ0
         +gr3OXHfq/+iJ6s0C3+5mL/8U1uTihHJ0z4fV1Qq7YVGf5e9od2F8LcQGusT/ncnBlIW
         BOj2DqjEXDjJsWaxUpriugjdK/vOL8eN87OqrY+AiHM18RC7WgewEleVMyVlj2se+Wl5
         dWvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=Ssxr3RN87YVt9erEY/AmThQqgJl7IC/HXQPGjVWT5dc=;
        b=n686oMvMSpyLqjf5r0qIKx7+lGonkmA3Qg11qiaazaJ/6aDVDVFpQB8gRsQyJNCxfi
         dTRdPpFcxlee79j52kk4Jkx9b+Tb2UxGxPFcdWDVh0KA4/qHleP35pefN5H9VRilxznk
         o1a4TLOw0XcA8J5GsRDw6pp/nLX3IDRwtL6FpxQj3a3s67n78uOxbMcSZPgeyvKY04w1
         ms9WcIKrnPensLkBLmnzqYdOHLwc9h88Ss0ffH9Cb6f4XXDok2FyfdQyUj7dhYsr3wYG
         Fyj5UVBGzs4QrzF6s7efGIdL/LcIIaIu/iIfx/IORtPWsvSigAJG5mSroRPeRjh7sH0W
         b5rg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@sirena.org.uk header.s=20170815-heliosphere header.b=FNpve2cc;
       spf=pass (google.com: best guess record for domain of broonie@sirena.org.uk designates 172.104.155.198 as permitted sender) smtp.mailfrom=broonie@sirena.org.uk;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk. [172.104.155.198])
        by gmr-mx.google.com with ESMTPS id w11si135485wmk.0.2020.02.04.02.00.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Feb 2020 02:00:41 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of broonie@sirena.org.uk designates 172.104.155.198 as permitted sender) client-ip=172.104.155.198;
Received: from fw-tnat-cam5.arm.com ([217.140.106.53] helo=fitzroy.sirena.org.uk)
	by heliosphere.sirena.org.uk with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <broonie@sirena.org.uk>)
	id 1iyv0a-000765-4J; Tue, 04 Feb 2020 10:00:40 +0000
Received: by fitzroy.sirena.org.uk (Postfix, from userid 1000)
	id 94AB4D01F30; Tue,  4 Feb 2020 10:00:39 +0000 (GMT)
Date: Tue, 4 Feb 2020 10:00:39 +0000
From: Mark Brown <broonie@kernel.org>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Liam Girdwood <lgirdwood@gmail.com>,
	Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
	alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] ASoC: wcd934x: Remove some unnecessary NULL checks
Message-ID: <20200204100039.GX3897@sirena.org.uk>
References: <20200204060143.23393-1-natechancellor@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ka8pmxPp9qZnI4DD"
Content-Disposition: inline
In-Reply-To: <20200204060143.23393-1-natechancellor@gmail.com>
X-Cookie: Programming is an unnatural act.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: broonie@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@sirena.org.uk header.s=20170815-heliosphere header.b=FNpve2cc;
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


--ka8pmxPp9qZnI4DD
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

On Mon, Feb 03, 2020 at 11:01:44PM -0700, Nathan Chancellor wrote:
> Clang warns:
> 
> ../sound/soc/codecs/wcd934x.c:1886:11: warning: address of array
> 'wcd->rx_chs' will always evaluate to 'true' [-Wpointer-bool-conversion]
>         if (wcd->rx_chs) {
>         ~~  ~~~~~^~~~~~
> ../sound/soc/codecs/wcd934x.c:1894:11: warning: address of array
> 'wcd->tx_chs' will always evaluate to 'true' [-Wpointer-bool-conversion]
>         if (wcd->tx_chs) {
>         ~~  ~~~~~^~~~~~
> 2 warnings generated.
> 
> Arrays that are in the middle of a struct are never NULL so they don't
> need a check like this.

I'm not convincd this is a sensible warning, at the use site a
pointer to an array in a struct looks identical to an array
embedded in the struct so it's not such a bad idea to check and
refactoring of the struct could easily introduce problems.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200204100039.GX3897%40sirena.org.uk.

--ka8pmxPp9qZnI4DD
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl45QMYACgkQJNaLcl1U
h9Cf8gf8CZ7NH/RKF60fNu1KZA25wBAuUOMAzTNY+DTfeFpZorShbSWMtzL1fI52
FeYZWbk/WzCbrCWG5PQAT82GJT5qevp2Kyvm88/LgHROfRtzZpKV5f4dNnrqWiNW
xH0sw4D/gdLq3i4nJGfENO+cywG/6JvuwlOE9A5NdabBR9RzfAfuDNNtCxXuiyfq
lb25cFa262Q0uwXVrPmFOFFj/OaEA2K88IQl4sFc0SwKu5gr1W1P3K6p6Y+c1jOW
0fm32OI5+0MqzRi60nb8IXFgwsCr0rCqSeoNPjM9xnLNxfJV8HPYvuVwuo0SRBsh
h70U8U+kRSGnqm/VsF0vNVUKWdey8Q==
=9EMo
-----END PGP SIGNATURE-----

--ka8pmxPp9qZnI4DD--
