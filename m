Return-Path: <clang-built-linux+bncBDQ2L75W5QGBBKF75KAAMGQE5M37LHA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x739.google.com (mail-qk1-x739.google.com [IPv6:2607:f8b0:4864:20::739])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A04B30DA94
	for <lists+clang-built-linux@lfdr.de>; Wed,  3 Feb 2021 14:05:45 +0100 (CET)
Received: by mail-qk1-x739.google.com with SMTP id r190sf20471814qkf.19
        for <lists+clang-built-linux@lfdr.de>; Wed, 03 Feb 2021 05:05:45 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612357544; cv=pass;
        d=google.com; s=arc-20160816;
        b=JAEIY9Z+FPL33gSdRfcz9QP9SuQzr2F5OBpU0WD4R62/0DxkJ3vmB/REUKi1w9robz
         YGQWbhix1X0jTJ7jlQXOyqRSZT95rPjHS7MG/YEIwpHp4Je3R/WixvfUAAJF+AuM0Ca1
         SbERt8fKvLzlIVNwjOlYlxGnPE9iNxStREoW+jqAru0NilRLyZMu8Q5UOkyhd75cj67Q
         0n+53SPAc6e4iQeuFsKQWAjFtlPIV71TGoV3tLtUe7EvyPYIYh3xl/w/rRCo2dSaHCfK
         T7ex19UXINJTzr5v7MvoEsmscYPbeTnLIKKKyhFSZMWSQtnt5Z0Rh4S8KdppuyOxksSg
         u4uQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=V6/sFEfqzwDs5tWBywjOeOcVWz9XNzaGdTrOdYS6wWQ=;
        b=0xwn11eFw8hDyztFRk4snJIzcI/l0QhkTbdNEqDEO6W931srbRXX2LRWeqiDqsNqMP
         1iJwr2QyNfpCkWveWr8Rj/hfnA3BuVfeMVDQfXABqhjbEnHhKreKbp/xoKyA/MUc5wHO
         gwNSUZeTHXkCu5QdjuVp8z4ydshFgNCDtt4q7U/13SnpXzbCPL2MqQYqsbTP9MVZjmwn
         8TG9xVdr8r79rzuF9W/sKUMCPXbCEkK0ppbf+Tt3AjlKvRY7UfYwXLNGuXYtLzgEyqF9
         brabtlIFkhgX9FSydkT9KhirCoj70LNAzk44WtK+UfpRzHG/Bzd/4OVJrDnNPTVBQZ+P
         q6vw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=bE3VV0ls;
       spf=pass (google.com: domain of broonie@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=broonie@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=V6/sFEfqzwDs5tWBywjOeOcVWz9XNzaGdTrOdYS6wWQ=;
        b=CQR1IJMFVwwb4wSKTwTL/O9RdlelTBQGano+w1Q74Xyj7CP4PINFI4Sl/W1NVsSz33
         LBEPXaSNJtMouTQzxIwFJPY9K9eS5tPYXBToux9fA9hfgS/pTexVJmssSh1JkKv0AOWx
         mciB9WOIOMgGWPooWJf42aSEGEC3THm6Eu9WY0igtp9QSI4LXI4rmLQZqEQxu7lFSAic
         RgUycbb3pMp1GkMZ+64hKfbvZCS9IQf6qVOtjJ97AtEyvHPKbJ6yhkHCjuumQlQq4acd
         9s6cj5anGVg1txC1QAgwPLQurmKXn8KUW12iPpAgULayCo7ZrnrRmDoXRQMJc8WaRszd
         fWbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=V6/sFEfqzwDs5tWBywjOeOcVWz9XNzaGdTrOdYS6wWQ=;
        b=YD0bGDVTDHrkfVJ+30XA0g2Bszo81cwv4F/QGcu86v5macS5ZHWWMbUSgqrUx4ESuK
         Lz5rEovABXx0wEm7x/Ty8mVqkmddd/sVwoi9qZNZnmGNsw1Tcw7I51Gvvh8Vhc9KgHxY
         NMNZZ//2Qif0L4tjVgNWy1kGWaiKZY5irMOCHDFBGC/8tdTUhEU0RqFfxjl9RMrrLoPk
         UmX0m7hujQr04/39xh1lm862HFrqITdStGChNfO/hHr3sm1WzaSGoLZwCV3XlFzQWgth
         JxAUhS44XirBpmgJaYE+fBnuoiPP4MnSF4IM4fKkOYdwn19HMSzz829Ki8o0yac6LbMS
         sfnQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533JjyqFi2so08lte8Z38jShib6lRuHBl5l6YV+I0zsiK1f9R/P4
	5PIfuMJjUml43zd2MoE9Tig=
X-Google-Smtp-Source: ABdhPJxBdhUEODBMbMv6RzhZIhaRlbFvCYnDk1gtJYOp9qn8A5oKSaZ/n0nr3/BmiDvMO0zXwJUu3w==
X-Received: by 2002:a05:620a:2239:: with SMTP id n25mr2334180qkh.46.1612357544243;
        Wed, 03 Feb 2021 05:05:44 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:6fc6:: with SMTP id k189ls1154565qkc.1.gmail; Wed, 03
 Feb 2021 05:05:44 -0800 (PST)
X-Received: by 2002:a05:620a:98e:: with SMTP id x14mr2346995qkx.353.1612357543375;
        Wed, 03 Feb 2021 05:05:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612357543; cv=none;
        d=google.com; s=arc-20160816;
        b=pgpP5B71IXAQkilao7AO0rHXYM8OXNOXdiPtzgG2dVXw1dlbGeVheXZzHTP4PyU74G
         B5cgb3qxb6cb6+9OySHwgVbl2AScm95C37+uGcwVXwZJsBtqnjvQvp66QFNYdhIXhMq3
         olDa2sLjSZCPnx4NgTD8zC7scs+LSisIk+hF5YJAA5ZCMrSfQNaI2F4b/lgloav2Bqs4
         z/tq3xMXpYPXKJoUkg0OihH5JJY9zgGWcUm4LQaBl6DjjGgj3pJ43TvP0h/sSG7dyTvs
         DXsPrneGRCTS600BS7+jz/cutGH9fzVn11OprGItPzEl/aYPHAc81BOS9Oz/z1+9+6z/
         rxUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=EFe6kgNlIp+HO1GlEiuxvPcUJWLqxltf1a6xcuUxvMI=;
        b=sSFIHx2LsAlJycFiIvwd5k8rfyBwEN1Op0HTNEde/Cswi5e9pceXRZfJxky6+2Ezzg
         xg4ZDgC9Eq8MAIusJrsq0YrlAlJ9jaL4AccPNs0OW+nVV5kGIArQLV4DEJLmmXMKpAeK
         f6y9hto/cqdZAj2V18ZJB5snxJEmjs7R5e9UHNxopaNjF8WWMONqt1/Ck+H73ITLIRKM
         00dK/TyFCmiSexBkMlDR40kGyB+e0+JWXNSEFpvXu2kJnCLWkbytyqIqxkIWJvpDKKqH
         xAD6frCm1McgBxF3JTP8R3GnhEh59wVoQ6KYX30obBPx8m4S8WMChBNR6Cqnny+waWSk
         xdjw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=bE3VV0ls;
       spf=pass (google.com: domain of broonie@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=broonie@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id q24si135192qtp.5.2021.02.03.05.05.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 03 Feb 2021 05:05:43 -0800 (PST)
Received-SPF: pass (google.com: domain of broonie@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 89FE964E38;
	Wed,  3 Feb 2021 13:05:41 +0000 (UTC)
Date: Wed, 3 Feb 2021 13:04:53 +0000
From: Mark Brown <broonie@kernel.org>
To: Josh Poimboeuf <jpoimboe@redhat.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Julien Thierry <jthierry@redhat.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Kees Cook <keescook@chromium.org>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	linux-efi <linux-efi@vger.kernel.org>,
	linux-hardening@vger.kernel.org,
	LKML <linux-kernel@vger.kernel.org>,
	Mark Rutland <mark.rutland@arm.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	Peter Zijlstra <peterz@infradead.org>, raphael.gault@arm.com,
	Will Deacon <will@kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Bill Wendling <morbo@google.com>, swine@google.com,
	yonghyun@google.com
Subject: Re: [RFC PATCH 12/17] gcc-plugins: objtool: Add plugin to detect
 switch table on arm64
Message-ID: <20210203130453.GB4880@sirena.org.uk>
References: <20210120173800.1660730-13-jthierry@redhat.com>
 <20210127221557.1119744-1-ndesaulniers@google.com>
 <20210127232651.rj3mo7c2oqh4ytsr@treble>
 <CAKwvOdkOeENcM5X7X926sv2Xmtko=_nOPeKZ2+51s13CW1QAjw@mail.gmail.com>
 <20210201214423.dhsma73k7ccscovm@treble>
 <CAKwvOdmgNPSpY2oPHFr8EKGXYJbm7K9gySKFgyn4FERa9nTXmw@mail.gmail.com>
 <671f1aa9-975e-1bda-6768-259adbdc24c8@redhat.com>
 <CAKwvOdkqWyDbAvMJAd6gkc2QAEL7DiZg6_uRJ6NUE4tCip4Jvw@mail.gmail.com>
 <20210203001414.idjrcrki7wmhndre@treble>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="NMuMz9nt05w80d4+"
Content-Disposition: inline
In-Reply-To: <20210203001414.idjrcrki7wmhndre@treble>
X-Cookie: Who was that masked man?
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: broonie@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=bE3VV0ls;       spf=pass
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


--NMuMz9nt05w80d4+
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

On Tue, Feb 02, 2021 at 06:14:14PM -0600, Josh Poimboeuf wrote:
> On Tue, Feb 02, 2021 at 03:01:22PM -0800, Nick Desaulniers wrote:

> > I wonder if PAC or BTI also make this slightly more complex?  PAC at
> > least has implications for unwinders, IIUC.

> What is PAC/BTI?

PAC and BTI are ARM architecture extensions.  PAC uses a tag in pointers
to sign and verify them, presenting a barrier to ROP, and when BTI is
active only specific instructions can be branched to.  Since PAC
modifies pointers when it is active the unwinder has to undo the tagging
to understand what's being pointed to, that's already there.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210203130453.GB4880%40sirena.org.uk.

--NMuMz9nt05w80d4+
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmAan3UACgkQJNaLcl1U
h9CR6Af/a+hTHn/OAxEoRg8U3FQ8sbGU1efy2c412xJU7ZqPnGW5l96P6lNt4mXY
85GyLjKkQYBjZkC4t20+ug13zhghrfPoQt6sN+8nBjswZiOPqd/Zpwsznos8Eut/
8On39npKp4ur2GziLiDkTXZT77zknCoDVtH/gpEhAURL7mDcnhmesHIqEKcgbM9S
3WvuL6K8FFnXfECt09m1s6qP8jD9h/l4CV6dIhz/Ievk6hLOpX4ucTcJGVduTqjv
qa5xuLBioxKOC5PHo0iob9HaJClu9F5vCyPj8RdTxsyJs0TO6pW299UemUoOj40T
Dw4EtudvTIp662frrw8FTbvr930r3Q==
=DA8Q
-----END PGP SIGNATURE-----

--NMuMz9nt05w80d4+--
