Return-Path: <clang-built-linux+bncBDXIZGWDW4PBBWEH5X5AKGQELUZUB6Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23f.google.com (mail-lj1-x23f.google.com [IPv6:2a00:1450:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id 04AD4265C7B
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Sep 2020 11:31:05 +0200 (CEST)
Received: by mail-lj1-x23f.google.com with SMTP id 184sf3373811ljf.14
        for <lists+clang-built-linux@lfdr.de>; Fri, 11 Sep 2020 02:31:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599816664; cv=pass;
        d=google.com; s=arc-20160816;
        b=D/+JLjLcp1XtnSJyvJxcfT0Fs/7bR90+H9f6sPHEORbresojqsG3mB/o6U/qkIhoEt
         Cu4s/gm2yD1xi2KPolmf0oN2UcBWIqd5Vvq9mHnABbe70abcnDamtgl/jJhWkt//YYjX
         jzuDnAYr5R9H1qXjA31++5o4yFK/UqQEPbWzwPhqa9yhc/d73vrfRpfzctY8JMenlvg8
         39/cLP7Zzk7UY99H84tQDiSKKVVDR7sE1OPupx0VLGlJXvBmFRzt5BUHZGbPJOzNjzZ1
         eM6qW7eKrSUq6i+RRr7uIyjm7PjmiAk7qudtKiu/OVCyyMB6SNCjtatBUdj0AgBzYbU5
         W3rg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=wyMPEXPu2DuQCJZogmjhAEKZCYiACTaVQmSL5n7Zc2A=;
        b=uXSVcQkHEMatbfOH7ExwDweCMP0XlF1M9YZb9j0P0ss5Ad5iGntxHLtzxw+thvvbwH
         eogCiq4DU9HvYxntnm/Qas+uExCHxvMb1nJwYqqLF4o6KfBgtnoWpkCs51G1672m+Swu
         gj82J5omtaGw4PAR5V+ILkbkpaJwc8WUwBB1XGudSPgHgf3FuXuJI9GuiaYQoQLxgeBT
         P0NkzaiFg854SYUnwPSzQrUWj+wiHcwlBukpL5Zrs67MUJgnnajfAHZhFL7wAOkr21lL
         zPxFl2CcqJtQN1vl+FgsC28J+JjYa3hKZSvDAOTNKS1mN2tJTLcRcTd6BgtoQ4o2oB/i
         ItkA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@cerno.tech header.s=fm3 header.b=AhubxJJT;
       dkim=pass header.i=@messagingengine.com header.s=fm3 header.b=OM3FsQOX;
       spf=pass (google.com: domain of maxime@cerno.tech designates 66.111.4.26 as permitted sender) smtp.mailfrom=maxime@cerno.tech;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=cerno.tech
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wyMPEXPu2DuQCJZogmjhAEKZCYiACTaVQmSL5n7Zc2A=;
        b=sdXCBVyeW/H7328hZEkO8LedZG+2l+LRoJdQv2dTZAlWaAXN2gnwGA/NaG0ZNiKTYf
         0UFT4cpJbsMgX6VUrx9E7QGW6sEAUQQ9fNBPWfmphEEGICaCVWLoI9wNDe/rztosVWo1
         4nBQswgz4gjqxo1h2YUf/VVLRyHBL07CV5uqLCyxrWrgXQ2NE8Y+Lnw9oJ20zAWWNZV5
         iY40f0q/A6PnBVPa7r7RtFowA6XRFw4aHCYrs2+ACCqfZ+fp1ZoNiZsKvyG/yx72D8To
         K8yttjVy+4JJYJ0Fxr8dguZffTG6s42WAOjYDARCT0+LWQMKFOKJDDkkOsgJa/ee/eiz
         I25Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=wyMPEXPu2DuQCJZogmjhAEKZCYiACTaVQmSL5n7Zc2A=;
        b=rkk05OCsSgTb6+tggzMgKcyS60HDC1Fg4w5ZidmzUqASFyVzhCUKzLKbMIGScJv3b3
         zzM1g6I3LcPygmQRelpuh1EjT8348wXw4lw+VTpk2lyNjdo9dl1qvBaXOiPd1EybeEGv
         h+b2sbVJkB8tgfF9uEQWQa8Q4zuPjeVXU2IQvuMLycRxIUyvrowQSbBsCxYBXYWwvq+x
         HqDv84ROm0Af1XqYlJXXr+GhFDgT4G7Q6cZgx3fTD4SH9RMOxYMDFG8ZW71xJiLD1cmQ
         s1sqdncS3T5s2BH32tjkMDwK5GNrO9qPZNOp2LiHBmblCAWq7JLEMnh8R3InkU5D5QYs
         IORw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532DR3+wPWByq0YnIweL0fV175FGL53EhWn3wv6GMpBfX3u5vUi9
	U7IOnjs//oJaHl910qdXjdI=
X-Google-Smtp-Source: ABdhPJybjmZnZwN2McaWNpnFK+e6LZLtyr9camCVjwdf/b4KD2NkPD5D9Xr6snrIR3QDixq4Z1w9gQ==
X-Received: by 2002:a2e:3208:: with SMTP id y8mr545504ljy.216.1599816664513;
        Fri, 11 Sep 2020 02:31:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:6e4d:: with SMTP id q13ls450966lfk.1.gmail; Fri, 11 Sep
 2020 02:31:03 -0700 (PDT)
X-Received: by 2002:a19:7108:: with SMTP id m8mr24203lfc.335.1599816663488;
        Fri, 11 Sep 2020 02:31:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599816663; cv=none;
        d=google.com; s=arc-20160816;
        b=k4ydjC3i7zrveMSunIphcEa6BMU9hBNPjGeJRzgFuxQ5JikPIpUwu+xnEhkEpPXBVW
         d4fSx/g49K+CDxKvwqpZRXFZ+15ByIub5pdPVL9XrykUvc5MzoSqX4NhjZJoisPbLNqP
         uV4fBBgnEi5PILESnC7mIrqp5Jp5GWmZMTbv5e6hVosdHcW4vj2/dTVBIS77fDegss3d
         g8DbTAU8ptEQJvP94RNZc8tdC/9zAyDif+Sb/OexqJrIRO6FM5RqnEbQqiTqsbG9oVCg
         +rjAqXYL3gJ/vAf879KUVt2+gR0x6iWkEZ+Sbt9fydWgYtBb93EU2zB+q6ZcG4+E0Qpu
         Dcuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature:dkim-signature;
        bh=ZwdqKhGGpnOv01iu/ZFbhMuvlS1d50CA8GNjVwdf/1M=;
        b=t1UOE8mEDTKcEvzOAqagMKARZ34hbxvIh8dlK7hYZden85ocsHSFTHqpT+QFaN95Gy
         zSwSM0nF9JwbU4UnmdKasQhvCJwFdN9oxpzrRy+akdKCSLvevtYb7j96fqbpNR4Uwn86
         o5g0MS+kxoTRlgoc03XjQdR9wDWyqXAb4BJBqAqCo6opF54VAcrwurrxiQPl16KCpGUn
         Z0c8dYpIUcG/ImrV8jL93LAY1EMAWwqCX8mIIJUi5JAPQVKftr5rCQ5v6Epjb3nfBxqo
         yi/99Jsv/1GID8m3+z4x+C4mRqi4xYRYTvYOgTpjRERNv7MHbyHNbl0PyY2N9rlmIgFD
         D3gA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@cerno.tech header.s=fm3 header.b=AhubxJJT;
       dkim=pass header.i=@messagingengine.com header.s=fm3 header.b=OM3FsQOX;
       spf=pass (google.com: domain of maxime@cerno.tech designates 66.111.4.26 as permitted sender) smtp.mailfrom=maxime@cerno.tech;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=cerno.tech
Received: from out2-smtp.messagingengine.com (out2-smtp.messagingengine.com. [66.111.4.26])
        by gmr-mx.google.com with ESMTPS id r6si61923lji.4.2020.09.11.02.31.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Sep 2020 02:31:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of maxime@cerno.tech designates 66.111.4.26 as permitted sender) client-ip=66.111.4.26;
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
	by mailout.nyi.internal (Postfix) with ESMTP id 37F135C010D;
	Fri, 11 Sep 2020 05:31:01 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute4.internal (MEProxy); Fri, 11 Sep 2020 05:31:01 -0400
X-ME-Sender: <xms:1ENbX2QFNIJTqT3Hn-cL4HEVs0d5RxEISiHHzWzL2zgdAxfnmOQyQw>
    <xme:1ENbX7w_JCUd-oW8BJy0-hCgib14b9B090jqZp8lfFbjKY2y8V4v3VM00d5XEThja
    Oym6Yqw_v0lGKKaVbo>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduiedrudehledgudejucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddvnecuhfhrohhmpeforgigihhm
    vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
    htvghrnhepveegudetkeethfetgffgtdekkefghefhffefgeduleehgeehieeuveefgedv
    ieegnecuffhomhgrihhnpehgihhthhhusgdrtghomhenucfkphepledtrdekledrieekrd
    ejieenucevlhhushhtvghrufhiiigvpedunecurfgrrhgrmhepmhgrihhlfhhrohhmpehm
    rgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:1UNbXz1jYiJJWUhQ6Ownjb1CV_JvcGaWJvpOhwRSWBo11yTyNRTprw>
    <xmx:1UNbXyB7LLBWEUNfkc-WQaWT2XI01tkuqguyD0giHHKJC70DGgCjrw>
    <xmx:1UNbX_jwUndZBPhpMljWvgpxpuIWtIDQzYQmXwxMDMCQ20tEmMGymg>
    <xmx:1UNbXysl_n15gmh8uFTiDi6_jut6NsTXQXc48BbJI743IVIiHgWMvw>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr [90.89.68.76])
	by mail.messagingengine.com (Postfix) with ESMTPA id A6BFD3064685;
	Fri, 11 Sep 2020 05:31:00 -0400 (EDT)
Date: Fri, 11 Sep 2020 11:30:59 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Eric Anholt <eric@anholt.net>, dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] drm/vc4: Update type of reg parameter in
 vc4_hdmi_{read,write}
Message-ID: <20200911093059.seyflq66mbvyhsb4@gilmour.lan>
References: <20200910170401.3857250-1-natechancellor@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="nivno6pymk5epqhf"
Content-Disposition: inline
In-Reply-To: <20200910170401.3857250-1-natechancellor@gmail.com>
X-Original-Sender: maxime@cerno.tech
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@cerno.tech header.s=fm3 header.b=AhubxJJT;       dkim=pass
 header.i=@messagingengine.com header.s=fm3 header.b=OM3FsQOX;       spf=pass
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


--nivno6pymk5epqhf
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

On Thu, Sep 10, 2020 at 10:04:02AM -0700, Nathan Chancellor wrote:
> Clang warns 100+ times in the vc4 driver along the lines of:
> 
> drivers/gpu/drm/vc4/vc4_hdmi_phy.c:518:13: warning: implicit conversion
> from enumeration type 'enum vc4_hdmi_field' to different enumeration
> type 'enum vc4_hdmi_regs' [-Wenum-conversion]
>         HDMI_WRITE(HDMI_TX_PHY_POWERDOWN_CTL,
>         ~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~
> 
> The HDMI_READ and HDMI_WRITE macros pass in enumerators of type
> vc4_hdmi_field but vc4_hdmi_write and vc4_hdmi_read expect a enumerator
> of type vc4_hdmi_regs, causing a warning for every instance of this.
> Update the parameter type so there is no more mismatch.
> 
> Fixes: 311e305fdb4e ("drm/vc4: hdmi: Implement a register layout abstraction")
> Link: https://github.com/ClangBuiltLinux/linux/issues/1149
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>

Applied, thanks!
Maxime

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200911093059.seyflq66mbvyhsb4%40gilmour.lan.

--nivno6pymk5epqhf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCX1tD0wAKCRDj7w1vZxhR
xSMEAQCO33V9mqU3u9rBqhRNWajN4iqpvngIcDpnvW4MIldO7gEAqQSnWKYHs8I9
BUH19iF7iojqi5m2AoKIPCbJIyzAvgg=
=YcrL
-----END PGP SIGNATURE-----

--nivno6pymk5epqhf--
