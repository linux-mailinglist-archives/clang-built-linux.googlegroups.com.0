Return-Path: <clang-built-linux+bncBDXIZGWDW4PBBREH5X5AKGQE44ZJBWA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x640.google.com (mail-ej1-x640.google.com [IPv6:2a00:1450:4864:20::640])
	by mail.lfdr.de (Postfix) with ESMTPS id 07738265C79
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Sep 2020 11:30:45 +0200 (CEST)
Received: by mail-ej1-x640.google.com with SMTP id d8sf4350104ejt.14
        for <lists+clang-built-linux@lfdr.de>; Fri, 11 Sep 2020 02:30:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599816644; cv=pass;
        d=google.com; s=arc-20160816;
        b=ewhmUeyfHMww7AR3B+5F0AGmNnlOxgQilozVT5TBaeP2dCU3NJqJyEpJixUQ1QFCy8
         2v6CF868+OYXRg11nrE4fw9jMj3p0J13puMsPNfDFR+jRwo9XXka43KGLDi2m2Pg/C5h
         ZcbHblCok7qV5xfET6ZqyHxJLr46g+ZrZjd5L4nGrc7tm3XXZIM3klNPQEtdhmMhddwt
         ZvKi/EBPCoZ0ocGvWrQxb5h4n6dlRe0f261xh4352fOD1JGgGTSqsaV2YSPUy6X2NsmR
         7a9QLFF/PmEuNCJgEvMc2eZ/dGRbaKK1sRNBZJI0foTxAqUv+pDwf0K6ftsgUmvnE6gK
         jekg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=gqVwJsWoapsWQ1Xtj4ubrpWYoGV9MoozgsQ0D2r8YKE=;
        b=nBCH+3InsOuyWTrI+JvlDEBY3qhNHf84EyBLoiw1vyt+QJxaQV0+suHwVGx+lIe2HH
         71p1q1P40ycSyzmUSXs3LbXgfjXV2AtRFpzEJobQBEaut3g/llPnIIEkHvLifGUeht39
         GGSc250NqWiWzqlApQxN0doivh4tdyawFynCjmnmDd4n5S3VlTl9sWPke2GRB5PvVeva
         be8Kf+6jRbf/Bhe8Yx8ct4vpfWZym3p6zT6y4ssJ99bDipp5kWRmv0EiBJ1pCK8WM1uX
         dLPgGU5uffySjU/nifiO2bhHHcQ8MxTryB1FkuLfNFnXm22bugRY0kvAOOnvQn3ZxUwD
         CSOg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@cerno.tech header.s=fm3 header.b=cVg7pVYo;
       dkim=pass header.i=@messagingengine.com header.s=fm3 header.b=dfH6sYtj;
       spf=pass (google.com: domain of maxime@cerno.tech designates 66.111.4.26 as permitted sender) smtp.mailfrom=maxime@cerno.tech;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=cerno.tech
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=gqVwJsWoapsWQ1Xtj4ubrpWYoGV9MoozgsQ0D2r8YKE=;
        b=peqPti386INH+DwrCUshqGM/HH5VFIflR9Wj/FjbqPWOdPsofqnN5KXLsMfplULIRN
         rdNlnvKhUmsMzUWaTGynDDHzJQaZZTpUcmbURkhZH0CvEgG8E0VQQQH/nS+pmK6DoV11
         TFetFeKBrpRzQQknZTeTvywGitz0sF2DwVC3m27R3qfm0N6DyX0yS6GQ7Bu9P78FOmzO
         C7nqUcVkk+Yh3zcttgORbkvMbX9oZOneYkwXCSvIUjlgNYNYXZULiEp3vZjRbFawED9X
         Zp/tZQ+11jy10C5F4KBLuhAy4dYrGOvitLBHU0Iph7/ffiYCQcn7QesOat71fnT57bvc
         poVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=gqVwJsWoapsWQ1Xtj4ubrpWYoGV9MoozgsQ0D2r8YKE=;
        b=E4umj0WA/3FZoEz29azHE1TGPXhhN7XG3KrZgjpDssuxfb9vbMf/JkS4erLbz6iTTD
         TYl4RpECE7PfGEzRQC2ShN0j7bdNDQSF5qeUoVcXjf2lKl/CQsbGh52YkI8juybl3o+v
         1ajRXmeY7J1i13gkZqeynFDxdGaJSGCUfgu57M/VwMxAaUKlSZrM8D4JxjSUvEczemLI
         8cSYFm8EkdqTG+DSmzy207IrcQxoOa2ahWU08TthKW3rrOZT+PgfKaxhpVKTCc9SRq0l
         QDK3QdhffIZRt5mnF+d2PQR5p0RFMuTKMBnmLq1syfBPtyJCo0j0g1WJOk7B2UV6cRq9
         Txxw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532Vg6XRsH+vwiiDOyz5/L9zJCarIB10qL4IhSMCdomRyIaJxPCk
	jpotPbHJ95Emdcaxv+xyk9Q=
X-Google-Smtp-Source: ABdhPJyFf4ZPySfmNi8wfQP9NxubK1AzaSvJKuxdhMePBpyK6p+6tQSWwPqS/zxPspZ1zDLcsH8jIA==
X-Received: by 2002:a50:e44b:: with SMTP id e11mr1051981edm.73.1599816644775;
        Fri, 11 Sep 2020 02:30:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:40ce:: with SMTP id a14ls757160ejk.1.gmail; Fri, 11
 Sep 2020 02:30:43 -0700 (PDT)
X-Received: by 2002:a17:906:6a54:: with SMTP id n20mr1200668ejs.401.1599816643841;
        Fri, 11 Sep 2020 02:30:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599816643; cv=none;
        d=google.com; s=arc-20160816;
        b=SDxZrXBC9EqStAnhOVfYSVhlAlRfo/mNCM/I/e3Rr+xMBnKYa3q7+Q63XX0HMkQ1UP
         eSv/Mp1Wz+YH1O+PUzCO2Xf4NqdZMO1XLVgYvhMDs1qlFCjp9Rv5GjKxXBKNAGuiZiK2
         fEHRpI+dWqy+b8GxVQLBqkYu+hxSSzyTWVPaUorjpe66mahiLt0GSxtd/JQQQbAmJWcq
         uKxJjnXsPqRzg2lweOLtbCN6/JkPRVIyNfCTbY0RXAHDp/YhSlosRsw8+lepPCg9PT9X
         aPRJBM79SF/X3yClVqAGLrraxC8PtbSEk+5RQfih/mevV9JSWYEBLJIL0mIIzjSf+mK0
         Bneg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature:dkim-signature;
        bh=4eZPvAv3U0ei+14UtDDh27zONnmUsYhV4QCkXaiv95U=;
        b=idpxCtbAXlj/1D5aT5ANInf+yoX7VCKM6RTw+R/5kD+m0BbRg4dqsaH25DdIAX4nX4
         skS7C/Vxao71ISv9/VZXq89Veu4kVSoFAAJaz97IX0x2r/WJk/O+ot+27hvoHPCvRru9
         MJBCV5d0BonSMZoxPTVSeAIEQnu+RF0OztbUJjSZfQG7k6igINYeHFlGqO6XdYazqgWs
         hXuoha97Q8QDOOZ59YYd+8TYWjq8BZh5iUgNuh8MFnK4oINEH1gFRNKCIiCl50v+wji0
         u+9oJ+7fprwDatUnLxK8+KK11Ut47pxzv0XQXgBb3vZHwKNMafWWxSBdVWAHRsldSrlS
         z1yA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@cerno.tech header.s=fm3 header.b=cVg7pVYo;
       dkim=pass header.i=@messagingengine.com header.s=fm3 header.b=dfH6sYtj;
       spf=pass (google.com: domain of maxime@cerno.tech designates 66.111.4.26 as permitted sender) smtp.mailfrom=maxime@cerno.tech;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=cerno.tech
Received: from out2-smtp.messagingengine.com (out2-smtp.messagingengine.com. [66.111.4.26])
        by gmr-mx.google.com with ESMTPS id f17si64485edx.5.2020.09.11.02.30.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Sep 2020 02:30:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of maxime@cerno.tech designates 66.111.4.26 as permitted sender) client-ip=66.111.4.26;
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
	by mailout.nyi.internal (Postfix) with ESMTP id C4D665C0143;
	Fri, 11 Sep 2020 05:30:42 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute4.internal (MEProxy); Fri, 11 Sep 2020 05:30:42 -0400
X-ME-Sender: <xms:wUNbX8wTwySe2pk7F3uY_ycdHvh6M32Ek5BDfp8yw12tMp5Wt2wrNQ>
    <xme:wUNbXwTS3lqYLsAyXhMID8LOWX1GMui7u9Eaa-9IvuMWJrfnx67Ckkgr9EiTJl14Q
    0MLNc83iZ9GFpEl_oI>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduiedrudehledgudejucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddvnecuhfhrohhmpeforgigihhm
    vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
    htvghrnhepveegudetkeethfetgffgtdekkefghefhffefgeduleehgeehieeuveefgedv
    ieegnecuffhomhgrihhnpehgihhthhhusgdrtghomhenucfkphepledtrdekledrieekrd
    ejieenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehm
    rgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:wkNbX-Vbn-y9gfr4apn-2UJzARWpt7QDKtizO8NjacHKtr5UwdWhEg>
    <xmx:wkNbX6hKaX5TlaS1j-Qb5OTHly_xAkRqZ2ylmIOpiGRFU060p30BMg>
    <xmx:wkNbX-B9CytH0zvYuu0RizjFeVFOQhNCyz7RPkvoKLuT_L5486YJ5g>
    <xmx:wkNbX5P-jTbyqZgGslD1VBdWSjMfVNvOkPVz2iLuiUytkIIynCtqGw>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr [90.89.68.76])
	by mail.messagingengine.com (Postfix) with ESMTPA id B14243280059;
	Fri, 11 Sep 2020 05:30:41 -0400 (EDT)
Date: Fri, 11 Sep 2020 11:30:39 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Eric Anholt <eric@anholt.net>,
	Dave Stevenson <dave.stevenson@raspberrypi.com>,
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] drm/vc4: Fix bitwise OR versus ternary operator in
 vc4_plane_mode_set
Message-ID: <20200911093039.ki55jtui5z5pftax@gilmour.lan>
References: <20200910171831.4112580-1-natechancellor@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="4mr3dssagjsp7qtp"
Content-Disposition: inline
In-Reply-To: <20200910171831.4112580-1-natechancellor@gmail.com>
X-Original-Sender: maxime@cerno.tech
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@cerno.tech header.s=fm3 header.b=cVg7pVYo;       dkim=pass
 header.i=@messagingengine.com header.s=fm3 header.b=dfH6sYtj;       spf=pass
 (google.com: domain of maxime@cerno.tech designates 66.111.4.26 as permitted
 sender) smtp.mailfrom=maxime@cerno.tech;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=cerno.tech
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


--4mr3dssagjsp7qtp
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

On Thu, Sep 10, 2020 at 10:18:32AM -0700, Nathan Chancellor wrote:
> Clang warns:
> 
> drivers/gpu/drm/vc4/vc4_plane.c:901:27: warning: operator '?:' has lower
> precedence than '|'; '|' will be evaluated first
> [-Wbitwise-conditional-parentheses]
>                                 fb->format->has_alpha ?
>                                 ~~~~~~~~~~~~~~~~~~~~~ ^
> drivers/gpu/drm/vc4/vc4_plane.c:901:27: note: place parentheses around
> the '|' expression to silence this warning
>                                 fb->format->has_alpha ?
>                                 ~~~~~~~~~~~~~~~~~~~~~ ^
> drivers/gpu/drm/vc4/vc4_plane.c:901:27: note: place parentheses around
> the '?:' expression to evaluate it first
>                                 fb->format->has_alpha ?
>                                 ~~~~~~~~~~~~~~~~~~~~~~^
> 1 warning generated.
> 
> Add the parentheses as that was clearly intended, otherwise
> SCALER5_CTL2_ALPHA_PREMULT won't be added to the list.
> 
> Fixes: c54619b0bfb3 ("drm/vc4: Add support for the BCM2711 HVS5")
> Link: https://github.com/ClangBuiltLinux/linux/issues/1150
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>

Applied, thanks!
Maxime

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200911093039.ki55jtui5z5pftax%40gilmour.lan.

--4mr3dssagjsp7qtp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCX1tDvwAKCRDj7w1vZxhR
xX0EAP47LWuq4yevIMaFjUP73PiNl7Exoby6G4mj8QuRY4gduQEAhkTXFPSjmzvw
gZ5q4Rxbxl+PYtOOngPfqyuIAelmZw4=
=WjzN
-----END PGP SIGNATURE-----

--4mr3dssagjsp7qtp--
