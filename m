Return-Path: <clang-built-linux+bncBAABBR7JUH5QKGQEHEXOQHI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3f.google.com (mail-io1-xd3f.google.com [IPv6:2607:f8b0:4864:20::d3f])
	by mail.lfdr.de (Postfix) with ESMTPS id E627C271F0A
	for <lists+clang-built-linux@lfdr.de>; Mon, 21 Sep 2020 11:39:20 +0200 (CEST)
Received: by mail-io1-xd3f.google.com with SMTP id y16sf9468933ioy.6
        for <lists+clang-built-linux@lfdr.de>; Mon, 21 Sep 2020 02:39:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600681160; cv=pass;
        d=google.com; s=arc-20160816;
        b=g7mrCEOJgnPTFqPNJZhoj/FvV7bpRCO+DazUPLVWUGDVb1TLti32U4ksQsdqgURh8D
         uYfbaUDZY+yl4/Xu4hDQ4BJHgJNThnFV/V3q/6UYTOQZ5bcG73ASSZrTwbAors1RHF0O
         JfBLHkOO7u5o5QbncsNiarvRCTAu8aHVdhrsVQaEfW39PvwdMS2fWIwBeYlivL473KYR
         76kvzUF7pinlnjL3sznlxDqDtTbpAgFd/nRvFLJt6+D3NwWrPqIsEoE4Hi7tXYmg3jPd
         yVyh8GNgTM8zpJbY0jWpkhZ4a9blsjxm/Pd64pU4yJvRioMjiQUrTLYm/L9qaAfHtqT8
         RhcQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=jgEq3txCc9JTqdCVJIDuulRRslbyEAOJEXuMcZfHA+c=;
        b=sz2pJ3EudWmWO38SW+Tr5XDfcYs23NhqEGzPwfOWpTWSgT/TmTVvOIMvxfQiYhUsat
         naX0T4gXSveqa60vbb+1ER3Je3KVX1pWWODySoOsa2IXYesKr91Ad6ArhKdBXk1l2y/s
         zsS8UtzsT9Po+X8o/8q6xS1ufvESSRycT8JgbiaorQdkS8JL7C96+8BTa7Lp1q1SO8WU
         Y00oI31V0MojfCekRS62A9FuEtcrp+kYXOWng8bz80GzNhgE1ocQF4kBnIjRf41sq/dU
         oAk8kJ9cvFcSnz3tafkXWcKbr6Nh7gyDaiOXykI17fw0N1Y+EUrs/KcM1zIwxoc56cih
         zI8A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Q5Dtqh6r;
       spf=pass (google.com: domain of wsa@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=wsa@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=jgEq3txCc9JTqdCVJIDuulRRslbyEAOJEXuMcZfHA+c=;
        b=Vdt6uWqEU0TE8e2pNXaRsUtFX1R2mmdePIlOyfzljTCSZgdhff0HMcKSvX2Cu6ADl1
         /gLqbOO/Via79F1z4lkfDQ+uFLwQB9GO1kh2JWh5TrmWYZ9QJk7G6hKOF1c52Y6HYSTB
         TUQb7nkH7n20FOnFfAw0Bv+hLh8JLmcxnPOnRLUn3m6e7BrTfisUOYEwjg+bKePGmrtw
         RyKsgDW2MnXhqy/AUyhERvqk/kOXA8z7/sycwgIZAsmp4Og6ZTKiLaSTHxyoC3dZI6gu
         QTgdMW5lF4HUrIs8+Zsh8NzKGRpjUyRCrs2RRkNBGSkgDiHJC39OZAO9TYkLwwhxnDeM
         dEPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=jgEq3txCc9JTqdCVJIDuulRRslbyEAOJEXuMcZfHA+c=;
        b=TNm9rkeKZ+cMdTuzwmlV7BOH3cE/0XGAYWdG1dJEhHQZ2d+XtB8xLKd8iKwVXNxHwH
         U0cHdKHAnV7vFvDdGkn/rpmO3s5GGSB0db4igmGa5Q8uDDkLTzYWIurFUXSNXM8KkjGN
         j4KFveGbgaZgleXliyzQO06kajP4gN/oAwHWD88AMdGfkZue6GLF8WY1WXw9eCAD1WLC
         AKq9R7n50AO3YAYy4lhs2EuAWuXMU1v4sXaCSd142GnsOOLR0R5/KdhbahG8OnchSVNh
         CyUiOLkNDJm3FjtHP39Yu5lB9X/FDGsyB8am07YnzlIEwCa0rVzvXYh72cm9E206LVmh
         6tiA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532ipuWff7nXSPOmhTbeH23rvkXyo34z0mww34XgKqC1WJwXusaQ
	qf7M8o3DXlyrrMkshrHR4rc=
X-Google-Smtp-Source: ABdhPJzHI9boVCyJyRmdcsFyTib5fCRuDavWfIpOxfVQExT0ev8EEotNaosIinYUEqXoRwH+8xxRnQ==
X-Received: by 2002:a92:6901:: with SMTP id e1mr39658090ilc.209.1600681159864;
        Mon, 21 Sep 2020 02:39:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:c148:: with SMTP id b8ls3241958ilh.9.gmail; Mon, 21 Sep
 2020 02:39:18 -0700 (PDT)
X-Received: by 2002:a92:79d2:: with SMTP id u201mr29828280ilc.83.1600681158339;
        Mon, 21 Sep 2020 02:39:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600681158; cv=none;
        d=google.com; s=arc-20160816;
        b=PWayXkBcOd54l3WvKkJvf3PrtTjK+LMoz3h+y/7oUzl0WBVIfzeW4NPQohPjDB2apb
         KkSQAB9YxhET9vvC541MM99JcnL9SL4eKcOJv4/g/DibTzizjDjR9JqS1CfdJaROKjm1
         gVjA971LrURpMVc8drHM/UugOHsrsxzg9/CZK/aZuXNFPK+tatKsqcwaUge4WgJPvUtv
         IRP/13qOggAt22xWicWWU5t6M1z76l7g1VLuyntnz1N0DlCtO70Cl0mi4ykXX4rdMSng
         MSUbszdyNlbn/i7ERWMK1KoxavonBABmkfJdYeViLOuOy2PAvMN0rc2AfnJyd5tEYxAd
         Mlpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=Xo11H3SINyUPeRRZirK3RI3tsYdtx9uldHQSR/SV7e0=;
        b=ZF94YZ8h1jAK37Dmr6SLsTMyfKs5m09MZ8ly5JTmYjtNqRwhDoLG+F+aS8e28zgnN4
         /+VG8C3XbfSEna55nUuXmJXBaTSBPs6a8GCxPxa8R4xXFBeAQy+mD2c5rLz1DZxNkGJX
         5RTRtAQ+TGdEt/dnpJ61LHcI8jrUzbD7mTnXPkbQN9Mg8fFMHH1Pnqhod1YVF+2LeJ9t
         MMgKXYf7bZ/csxmw2jkxgwKLX3KuUwy+IwYZVEensmONFrawcSHiCa4FmOq7E6N8NG86
         2cl4BDTQs7VPlXDRv3+G3hmmm++21xBgTufkKTq9Jwl1wgqPoorAKc6Oa+5BJe083Ikm
         2uZA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Q5Dtqh6r;
       spf=pass (google.com: domain of wsa@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=wsa@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id q22si618874iob.1.2020.09.21.02.39.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 21 Sep 2020 02:39:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of wsa@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (p5486cf2a.dip0.t-ipconnect.de [84.134.207.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id E3A0B2151B;
	Mon, 21 Sep 2020 09:39:16 +0000 (UTC)
Date: Mon, 21 Sep 2020 11:39:14 +0200
From: Wolfram Sang <wsa@kernel.org>
To: trix@redhat.com
Cc: syniurge@gmail.com, nehal-bakulchandra.shah@amd.com,
	shyam-sundar.s-k@amd.com, natechancellor@gmail.com,
	ndesaulniers@google.com, linux-i2c@vger.kernel.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] i2c: amd_mp2: handle num is 0 input for i2c_amd_xfer
Message-ID: <20200921093914.GJ1840@ninjato>
References: <20200904180647.21080-1-trix@redhat.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="GvznHscUikHnwW2p"
Content-Disposition: inline
In-Reply-To: <20200904180647.21080-1-trix@redhat.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: wsa@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=Q5Dtqh6r;       spf=pass
 (google.com: domain of wsa@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=wsa@kernel.org;       dmarc=pass (p=NONE sp=NONE
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


--GvznHscUikHnwW2p
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

On Fri, Sep 04, 2020 at 11:06:47AM -0700, trix@redhat.com wrote:
> From: Tom Rix <trix@redhat.com>
> 
> clang static analyzer reports this problem
> 
> i2c-amd-mp2-plat.c:174:9: warning: Branch condition evaluates
>   to a garbage value
>         return err ? err : num;
>                ^~~
> 
> err is not initialized, it depends on the being set in the
> transfer loop which will not happen if num is 0.  Surveying
> other master_xfer() implementations show all handle a 0 num.
> 
> Because returning 0 is expected, initialize err to 0.
> 
> Signed-off-by: Tom Rix <trix@redhat.com>

Applied to for-next, thanks!

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200921093914.GJ1840%40ninjato.

--GvznHscUikHnwW2p
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl9odMIACgkQFA3kzBSg
KbYswA/8Dr/QwVbjfGkDlOvW2zJybPB+fpYamXJdBiftsNc/WyLDoLrw3236A987
oRLA/UXcxyVRaXsFNDc7hoGG1GwxpqmiVFL34mGo02O20PtpO3VBFbDGk+oDYyF7
AqWjxFw1xLSWx2pYQM6KXcd4JG7+wPT/XJ5eoRayLabLMoIboQWTM6LB2QxH4HV1
/uDlVXuIY/q6kWJLuR1kUJ8loYo2n2TV5+9LSPLxNPfkmfnKfbDsf1AnqNEWRG+3
y8CSda2VL/jvP3FAfsef+4i+2hKpW3PWoFrClgSl5mErw5g75+AO9P6WO7mQGdyd
I4RybjsfXh5BaEMzyRVu1jcefcTdsir3Qt5025hRloMxZHNa3FnEU4XYvqHmNchG
zSpMR6ynpQgbUGYh1N0Vi/jv1EJgPVi/vjH7XlA7+wMBOt9lIUiXdABSrWDEquOQ
k4SJpDfIrSc0s2PWwMKiSPZkIH+wcrEnbXiFv/oVEw/AFf6mOihCVGbsomGn0hMh
jSaHryCszQlzWn3J0NIyu/1v6chPTL/WuP9tVXP0lKRmSFzAdCUxupemqLWnIwuf
I454ZgIKhZLsWk7v9qicDG9MTpJEEK63U4tBtmjHzCsg0f5cHO7YY/+liIT4H5/b
Vyp27XqWrVJMriJda3rfF8htS3BcN+FXZtBVmXk22NCGQqhYN6I=
=Kytx
-----END PGP SIGNATURE-----

--GvznHscUikHnwW2p--
