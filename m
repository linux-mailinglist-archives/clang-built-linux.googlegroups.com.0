Return-Path: <clang-built-linux+bncBDK73744WQBRB6V27DXAKGQEXG42OLI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43a.google.com (mail-wr1-x43a.google.com [IPv6:2a00:1450:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id 09B7510AAD1
	for <lists+clang-built-linux@lfdr.de>; Wed, 27 Nov 2019 07:53:47 +0100 (CET)
Received: by mail-wr1-x43a.google.com with SMTP id f8sf6468086wrw.21
        for <lists+clang-built-linux@lfdr.de>; Tue, 26 Nov 2019 22:53:47 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1574837626; cv=pass;
        d=google.com; s=arc-20160816;
        b=f2pgpsGmES6YYAN/uehhO5+HWNs3ew3qDCvjdhvP55OrB8vlj7lsXr1ry83uNeeT7L
         iFNkG2hML4kUc5R91Mc0bGTd0VMQZxx3mnIE76q7/+nWfGoqSX0YC+9O6BOaA6tzCtZe
         j/b9mM0QnGEKaTIsrfWtU44ERC76CWcX+HIQicwKc/HBp53rxGNFw5009Scf4VSEFZiy
         riMk5eEeqT6tRYg0XhJFidXDxFStuZCIkw8ebcj6cL+uOtQcjOF11BrDsWp9aWpQV6Bn
         K4nJbWur6rE0UB4M8MMldQPiAOXpuDtbjvci2Af1rAFoqhM4zjY5BAWMuQFF88jR6ncn
         xb1A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=mjNdPr5f8OJLgSLCg7LTltC+Rcth6yapTQq0xR0jnR4=;
        b=e29Ugnnd/4iPaaO/1BMSgZl9PK7CuKgHtHAVcJepJ84BDEzRydjd5bRj/+7dtr7NeD
         o9g94RMYOIlgfS5kTWlo4CK9lr7vy91R8wZvwvnINlRgO5zdz3iRFoSpKKOhX82lwyep
         UUJcjGXmGD/s9k+UGcRxRRjQhdSStXMjUgy2/ILng8Wmk7WqiCGfMgsdTE+wwnk2VAxV
         zymqt6g00bHwfxJNUvKp7GnaHEGyIOg4CbwhuB23yycjmmmaIF+HLLWA+inla3FkAs4A
         RntAzCOmWkkNroUqB3E6MRLjCc8ZScSuFMJHD9Y9qqlW6hqmFNifDh60Riv1Mnc99Fab
         0MmA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kroah.com header.s=fm2 header.b=nCPps3pw;
       dkim=pass header.i=@messagingengine.com header.s=fm1 header.b=CZS59tom;
       spf=pass (google.com: domain of greg@kroah.com designates 64.147.123.26 as permitted sender) smtp.mailfrom=greg@kroah.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=mjNdPr5f8OJLgSLCg7LTltC+Rcth6yapTQq0xR0jnR4=;
        b=mMv7Bf3E5Pkrdg8yYklW9WtW6hUupuSoEfm9tkEnOJ9xol5tMGB8TAum9qqQxW1MrZ
         OqPJ/x2hF6GCBOmi5yvwwGTcPdrojvBbr34SU8t9BBHFAt/+7HWH2Q/5HKMaqnx6w8q/
         N3D+Kf4tRz8CvuSTL1R76bYUNUIzEIDPTwPMQ/8LX/joO8RX8kssr10feu4kNHEuGzNK
         qB0g2G6zCzx268nI15CCG9KvGw8B7Fc/kZcZwJhZqNG84miZq5mIRIwE+/eMGa10VWeq
         n/bsRv6Hrtu1GOd9NS6InbJjhWwtMx7JO2I9ZghH2216UBFpZPMEFpUBJwcDwHY2bcid
         c/1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=mjNdPr5f8OJLgSLCg7LTltC+Rcth6yapTQq0xR0jnR4=;
        b=csg40335/EqBobjx2ZAGccIfx9Vpb2qZTK1I0srP6M2yhjCmobMobrrIEDligMDu1d
         Dmlt5YU04AisXEv+SG34Tbb0mVMXPhZkIVfvSNvhwXKMDX2kOFWwyapVVX5wrAiyd4Rj
         LZxCkWmUI38XptpBRmBTmDJmaifu9zP0jwKl9EIdlGI9dZlHUcGnrcePDqBK1STQzDr/
         4VlHFqn1MMidZXYofj3rJAh/5bmaD2oKyYDgscXBSmMYOpI/vIAgwHQoH/0adD9NbwrF
         rpnBbPxcdqF34gLeeHUWnERa08ntL5L8qgZoMi2kt6CiFZha9I42Bc7kQx4eEkWWvLiT
         79rg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAW24kQ4w0Rd3xgz3VjuX7ObKAx4BkT0gg2rkLdGmRx+qe7MLz5H
	YOzjeQrZmpatEQ/V9UPhtJU=
X-Google-Smtp-Source: APXvYqzQd3rto2//C40ngSQEAdJxePHLUFVOaabQ00z46AC+xaHrmyawJ/e563nYfsBeVx8h0r6ETQ==
X-Received: by 2002:a05:600c:2257:: with SMTP id a23mr2749583wmm.143.1574837626652;
        Tue, 26 Nov 2019 22:53:46 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:4645:: with SMTP id j5ls9381978wrs.0.gmail; Tue, 26 Nov
 2019 22:53:46 -0800 (PST)
X-Received: by 2002:a5d:6192:: with SMTP id j18mr42289757wru.239.1574837626173;
        Tue, 26 Nov 2019 22:53:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1574837626; cv=none;
        d=google.com; s=arc-20160816;
        b=O7MjpfmsS/tD/rg1TYrSW5kKl1l5fE4yH2MCeleOUrfxxstscEeNj0b+XSabX078kS
         IMqEHIS1fnM4ZCWXf0xDnquOK+ABrtDO5cSpuCfyDZaui++LmTTlNuhobWKwZjHeJMxw
         RjofwA/1FnHpET1IHBN/TAEPkxvWA6ZhCPlQpT24CAU2koBLHOp+TB3xK4tpwVsThgjw
         MjFuhYc+Bn6rU4Wq1c6RpuUIBBtOnBdVeZ4p+oktYhyeVEUG8O9udfSZ3RowmQqHrGpn
         b7CexWFtYyq56Z1b0tBCXJsOI7SBJkl04CZGN/j1WUSwvqQZ7+dxXYFW0O75l1lJaL88
         OCMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature:dkim-signature;
        bh=B0mPw++l8p6HLV7BgESX8Ad2sitvnZ/g/HTnedtorqQ=;
        b=dB8rxzrJ66IEszDalpq/McUmrKWQrSkrmxaF3lEgpITLnOxsU4RcMB2ZBBAjrlJi7r
         b3mXGp1ZWMuK0thZb/SOShcDyWoaV3hi6VASX+pySglQirwP1LV1d/eoUJ6+vmJ6emvK
         LpT02G1OKTwUzPmZZoqRmIOSlXFgYyLzLYpiLbsFfrFnwMq997oj89RLNTfDRLmEgOPV
         svaR2zvEMFFhKP5Xs6PH29SRm4sdebt1eoyRAHn4EytSDP+IMabI+Z4Ku6zQSzTgRbVy
         SWpc7KpTlGX2SBkqrJYA5NR5tDme8NTV0zxPRPtXY/G+U4NIDHB5x6wVMtpbv408MJ9q
         3OOg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kroah.com header.s=fm2 header.b=nCPps3pw;
       dkim=pass header.i=@messagingengine.com header.s=fm1 header.b=CZS59tom;
       spf=pass (google.com: domain of greg@kroah.com designates 64.147.123.26 as permitted sender) smtp.mailfrom=greg@kroah.com
Received: from wnew1-smtp.messagingengine.com (wnew1-smtp.messagingengine.com. [64.147.123.26])
        by gmr-mx.google.com with ESMTPS id b66si212728wme.2.2019.11.26.22.53.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Nov 2019 22:53:45 -0800 (PST)
Received-SPF: pass (google.com: domain of greg@kroah.com designates 64.147.123.26 as permitted sender) client-ip=64.147.123.26;
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
	by mailnew.west.internal (Postfix) with ESMTP id 05DB47BB;
	Wed, 27 Nov 2019 01:53:42 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute6.internal (MEProxy); Wed, 27 Nov 2019 01:53:43 -0500
X-ME-Sender: <xms:dR3eXWzvjcvjnSUgj7wDcVjx4lwzJ-SkO0XNtRXPoExntf3dwhlXIA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrudeigedguddttdcutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
    enucfjughrpeffhffvuffkfhggtggujggfsehttdertddtredvnecuhfhrohhmpefirhgv
    ghcumffjuceoghhrvghgsehkrhhorghhrdgtohhmqeenucfkphepkeefrdekiedrkeelrd
    dutdejnecurfgrrhgrmhepmhgrihhlfhhrohhmpehgrhgvgheskhhrohgrhhdrtghomhen
    ucevlhhushhtvghrufhiiigvpedt
X-ME-Proxy: <xmx:dR3eXenlxFH3JATnk-4Vp00G0RTMaUUON3kXpOoThfdmt_QD7eylRA>
    <xmx:dR3eXbFDMMfaqP2J_zp9c7FoPuEZPK3qcOPsN-HfXtHXp_c48_TcVA>
    <xmx:dR3eXeV3Herp7KxpD-ja_Qt6UwewanwPQxTusqXu65phobU5sKBvcA>
    <xmx:dh3eXcSxu4Oot6AuwErPz_OW1V9Orkmhi1ywd3eu-cUeMsBPC9cAINGtfik>
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	by mail.messagingengine.com (Postfix) with ESMTPA id 033F98005B;
	Wed, 27 Nov 2019 01:53:40 -0500 (EST)
Date: Wed, 27 Nov 2019 07:53:39 +0100
From: Greg KH <greg@kroah.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: "# 3.4.x" <stable@vger.kernel.org>,
	Nathan Huckleberry <nhuck15@gmail.com>,
	Miles Chen =?utf-8?B?KOmZs+awkeaouik=?= <miles.chen@mediatek.com>,
	Masahiro Yamada <yamada.masahiro@socionext.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Russell King <rmk+kernel@armlinux.org.uk>,
	Tri Vo <trong@google.com>, Arnd Bergmann <arnd@arndb.de>,
	Stefan Agner <stefan@agner.ch>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: please apply mbox files for CONFIG_UNWINDER_FRAME_POINTER clang
 support
Message-ID: <20191127065339.GE1711684@kroah.com>
References: <CAKwvOd=eubuZH-tVY_KX2pjp4rnTzLBkk9iPfaHkRDqg2zaBKA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOd=eubuZH-tVY_KX2pjp4rnTzLBkk9iPfaHkRDqg2zaBKA@mail.gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-Original-Sender: greg@kroah.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kroah.com header.s=fm2 header.b=nCPps3pw;       dkim=pass
 header.i=@messagingengine.com header.s=fm1 header.b=CZS59tom;       spf=pass
 (google.com: domain of greg@kroah.com designates 64.147.123.26 as permitted
 sender) smtp.mailfrom=greg@kroah.com
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

On Tue, Nov 26, 2019 at 03:12:43PM -0800, Nick Desaulniers wrote:
> Greg, Sasha,
> 
> Please apply the following mbox files to 5.3, 4.19, and 4.14
> respectively.  They enable CONFIG_UNWINDER_FRAME_POINTER support for
> 32b ARM kernels when compiled with Clang.
> 
> This is upstream commit 6dc5fd93b2f1ef75d5e50fced8cb193811f25f22.
> 
> It's a clean cherry-pick to 5.3.
> A slight nudge was needed for 4.19 and 4.14 since the config name was
> changed in upstream commit f9b58e8c7d03.
> A further nudge was needed for 4.14 since a4353898980c and
> 469cb7376c06 don't exist there.
> 
> We're looking to use these in Android. Trusting the better judgement
> of the stable maintainers, we're happy to carry these in the Android
> common kernel trees, alternatively, but I think these are pretty low
> risk to take.

It's a new feature, so no, I can't take this for the stable trees,
sorry.  Feel free to carry them in the android trees.

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191127065339.GE1711684%40kroah.com.
