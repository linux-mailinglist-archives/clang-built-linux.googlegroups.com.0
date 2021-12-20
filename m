Return-Path: <clang-built-linux+bncBDK73744WQBRB67SQGHAMGQEZNBK5OA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33b.google.com (mail-wm1-x33b.google.com [IPv6:2a00:1450:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 5085547A9CC
	for <lists+clang-built-linux@lfdr.de>; Mon, 20 Dec 2021 13:39:24 +0100 (CET)
Received: by mail-wm1-x33b.google.com with SMTP id ay40-20020a05600c1e2800b003458b72e865sf402730wmb.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 20 Dec 2021 04:39:24 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1640003964; cv=pass;
        d=google.com; s=arc-20160816;
        b=pUDYmp4nIdra/kZcoMlBhy7GJAzidRGYDbRbx+S3OV/Oji4zd+eiaVp/Ybl2IAgrhL
         FvI49jaTepzQpvE0DF9srSTqH9cfNckPDISoEkTuLyHzJrPSrthhhP2H7gHEmww6W9fg
         QkrQXYhoq4fnSHkjBRn53xDPnHrkafcJUjp8zTUvtaFUKhOkTEiS1KDvxRlQqkdeb6NT
         nZyvK76Pk+M2Zq4muhKM3h6rGjYxkmxzQcWTwpMIi1Ohi90SM2pmwSu1epXQuxuwfowx
         4NsNvs8p0J7YeEJcap5+bsMW6c8/QbS5I2hPNyvTa2kaBZUAjdSPRxEe66xfGaYqb0AF
         LNmQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=NlqCW+QExlfLjzHmzKz4ngbg66hzI07QeefYCZIbJWU=;
        b=R0dwVNlH5MV/4mqHcKAIGkz6Zd/XohHkKXwlQwp/lwYE0dl6sJ9oyEzp6KAKWUp4oG
         azXL2gTZfRkvDxkDGQD41vYh5DJlWwJGKqF1bMk/PEtnJgqd89iVVcTrfoBhgvog+RPe
         EgOGQsGekCp6By2xS6FQ1EKPq+PQ2ZQWK2xSXciPK/fj7egwWPjtbpuVowbtMwitOAsk
         7Yo4qpR3518bduawR3lpVkc2H3MAWbiAxJhTJ4hgjZFFwE92QS12bQV1baA6MDUh8+ha
         BlM/Ik+X6RXQzR3hqkINUDeMczBmWsXSeBiJMHQz8S9ZBiVNK6U2+UVcpdrgUl94LyS8
         Arzw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kroah.com header.s=fm2 header.b=iIAdXOiq;
       dkim=pass header.i=@messagingengine.com header.s=fm1 header.b=RS+LveO7;
       spf=pass (google.com: domain of greg@kroah.com designates 64.147.123.17 as permitted sender) smtp.mailfrom=greg@kroah.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=NlqCW+QExlfLjzHmzKz4ngbg66hzI07QeefYCZIbJWU=;
        b=Kk39yEWe1GZNXg4tGM1cesu3oE2FkpKuHDm6td25p+RuPNYWxQJrg4SDPZuKCZxaCq
         y87cJg9foegXdZBYUM0alDZp1JaqCI7eJ+2csyTD8QAYvBTPDFMfiXPI6qz+GZf0PL+p
         SbZ0oa7nvr7UQdqxoRfs2E6Ysopo7/AcwzsozopjYbldDkpubZ1FKTB/rlqz5rsrjELb
         vpNJjItpV6LXpb60CjeOFJ/k9DztZ0e5xJMjCd7wTSRAm8qIymSagmktoO0gCVwUmaTH
         9S+yZBjMz1wmKk00cHqA4Jq+NNInhwMGjpdwKmVmTYfPnblhGPxMR8NbYfSu7DHLzf22
         BTPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=NlqCW+QExlfLjzHmzKz4ngbg66hzI07QeefYCZIbJWU=;
        b=5PUaPxl5RnP4aEgOfoSXenjjN8TKSXSVCR8PAXFFYi/AoZ3bqTcXXZFESfFNx+3Mpb
         6DIQy5hQGTWxYAg3QkOR0ORXRbiupM4lw/oUB26bhSKtDqqL1tOOEDxTajSzhVcainhA
         gnNpU9B4C/XdqTzDgRc28ZZdsq2+zOr+rwzp2z02G4m++5DeNRWOPEYCkgW542RHBuMp
         gVrd8DhdbhfPbcxVoKmQY6kfdGechdqyYW4MDboVI3fgiy+shybljlOlV61Pd4SWee3I
         o9dFImXbhYFHzvtLFBLMvtSya+WyUpfQf8dradGPejLDhYD1kaQL/CDSMDFjQKQeB0lZ
         D5pw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531V/KLTFcN1UEz/XoKuu/C43Us5lzPS4xCpuVh27OJa5hCsK2zI
	tSGEAzluSRqDXQVTcw4C9ZE=
X-Google-Smtp-Source: ABdhPJyUjwnyveuf4nGh4TkiM/mdFIrMNtcW4jVg7rKlu79TEqaCmjDren3tRz8HIM53NogywOxO6A==
X-Received: by 2002:a05:6000:120e:: with SMTP id e14mr8196812wrx.392.1640003963960;
        Mon, 20 Dec 2021 04:39:23 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:d21b:: with SMTP id j27ls4391137wrh.3.gmail; Mon, 20 Dec
 2021 04:39:23 -0800 (PST)
X-Received: by 2002:adf:dc84:: with SMTP id r4mr11968803wrj.307.1640003963080;
        Mon, 20 Dec 2021 04:39:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1640003963; cv=none;
        d=google.com; s=arc-20160816;
        b=0P+IPX/e/21dNMc+poD+k1vMaQE2Js8rHFTUalbUj2+fdQpagcG/HGVxlrZ4xFhVvC
         /iKlHhPaQ5YqoxtEQYsO+vhTPCgUxhoHSIAgXXabVBH8fSpaCywi9SDerA6DoFK+3/+S
         4Jnja98WsOUaDKet7FsqheP5ufpPy+UCFD0ckTJuJxszZMJ971e5OK2xiH2+bpQK+iYD
         ohDkktMRObTvUR3AN2oV1aHLopcl3DU6NsY5CFj56XU+0TUe4ZBErfdxGAyUHRiq4K/6
         xtGKpUo3FtslK/3UV/FLYNxRtBwPq0yYtlQBPaEkO+IuQW4DerOquY7eFBpg2U4LXH6q
         Qpsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature:dkim-signature;
        bh=UEKM6353gMtwbj5uogFb1YAwTYEFzwELjSHU5Fnkdf8=;
        b=Jm78T0a+8uDGrunkE2CkyfrAB6o9yxDHf/Mhr7vDAZLIuwgxaFFs1nkUnN0EzHKrR2
         3W/nqRYaarhngypRQbvHsJGxKaYUY1i5NXg8ovWN637NompuNFT69fNTiiB3op8itYgL
         UUj4fGP20j5nBHfcYp8EX14RYjJeKIluDUuWd056QnpatTTnohkIdZz4nDGgm/ZtXIoL
         8i83V5Rzul4xwQMtbWyRvQgI/jPHf19CSf56+/kOM1MHJarQZG4lGM0TK5lGzsXLTGvK
         q7/SswA1DztmOGT3avn6YBBwlgx2wem03aAsdBj59qSzR8CPrTL+AZKiJvvov/eo2Ed/
         xX3A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kroah.com header.s=fm2 header.b=iIAdXOiq;
       dkim=pass header.i=@messagingengine.com header.s=fm1 header.b=RS+LveO7;
       spf=pass (google.com: domain of greg@kroah.com designates 64.147.123.17 as permitted sender) smtp.mailfrom=greg@kroah.com
Received: from wnew3-smtp.messagingengine.com (wnew3-smtp.messagingengine.com. [64.147.123.17])
        by gmr-mx.google.com with ESMTPS id p22si113740wms.1.2021.12.20.04.39.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Dec 2021 04:39:23 -0800 (PST)
Received-SPF: pass (google.com: domain of greg@kroah.com designates 64.147.123.17 as permitted sender) client-ip=64.147.123.17;
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
	by mailnew.west.internal (Postfix) with ESMTP id D5FB92B000C1;
	Mon, 20 Dec 2021 07:39:15 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute3.internal (MEProxy); Mon, 20 Dec 2021 07:39:21 -0500
X-ME-Sender: <xms:cnnAYVTeIaz3W5-lKbZ4QsA87-e6sD8tfg5PGWAHqjhq3EYe3wm00g>
    <xme:cnnAYew9kc3u4P0-FYddHrmgoc9os6LHwxcc_KJXnR3w9NxqDgiaukqxP1WjsUcUG
    _YGUSpuQ1-HFw>
X-ME-Received: <xmr:cnnAYa29abms16yQYDwTh_a-91-y7pf82VjsGgm6RWnXfROpBD81CumwZc1Kh59i_t6Jlo6uoJx8PxkcVJRc4OtfXnfjWSzS>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvuddruddtvddggeegucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvffukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpefirhgvghcu
    mffjuceoghhrvghgsehkrhhorghhrdgtohhmqeenucggtffrrghtthgvrhhnpeevueehje
    fgfffgiedvudekvdektdelleelgefhleejieeugeegveeuuddukedvteenucevlhhushht
    vghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehgrhgvgheskhhrohgrhh
    drtghomh
X-ME-Proxy: <xmx:cnnAYdCczhiKrP_qvxqIJ8jUmnIPab60PWh-JHnYf84tTQ35kficzQ>
    <xmx:cnnAYeho31zb2JpAAllfw_cj09IXVsNEW3D2Fo24788vXuTRIqbVfw>
    <xmx:cnnAYRq3Jqp1UQOCwEsIbZucbJLIhMDV1bprGLNhNH_uaY_fwC2hyQ>
    <xmx:c3nAYUIp5PIKsl0Pm2qQWT3hoGvd0E3V22bmR-HxIkwLrL9gAwEWKtQKyf4>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 20 Dec 2021 07:39:13 -0500 (EST)
Date: Mon, 20 Dec 2021 13:39:11 +0100
From: Greg KH <greg@kroah.com>
To: Anders Roxell <anders.roxell@linaro.org>
Cc: stable@vger.kernel.org, linux-kernel@vger.kernel.org,
	woojung.huh@microchip.com, UNGLinuxDriver@microchip.com,
	davem@davemloft.net, netdev@vger.kernel.org,
	linux-usb@vger.kernel.org, clang-built-linux@googlegroups.com,
	ulli.kroll@googlemail.com, linux@armlinux.org.uk,
	linux-arm-kernel@lists.infradead.org, amitkarwar@gmail.com,
	nishants@marvell.com, gbhat@marvell.com, huxinming820@gmail.com,
	kvalo@codeaurora.org, linux-wireless@vger.kernel.org,
	rostedt@goodmis.org, mingo@redhat.com, dmitry.torokhov@gmail.com,
	ndesaulniers@google.com, nathan@kernel.org,
	linux-input@vger.kernel.org, Stefan Agner <stefan@agner.ch>,
	Russell King <rmk+kernel@armlinux.org.uk>
Subject: Re: [PATCH 4.14 5/6] ARM: 8788/1: ftrace: remove old mcount support
Message-ID: <YcB5b65dVUIhzgIh@kroah.com>
References: <20211220122506.3631672-1-anders.roxell@linaro.org>
 <20211220122506.3631672-6-anders.roxell@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20211220122506.3631672-6-anders.roxell@linaro.org>
X-Original-Sender: greg@kroah.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kroah.com header.s=fm2 header.b=iIAdXOiq;       dkim=pass
 header.i=@messagingengine.com header.s=fm1 header.b=RS+LveO7;       spf=pass
 (google.com: domain of greg@kroah.com designates 64.147.123.17 as permitted
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

On Mon, Dec 20, 2021 at 01:25:05PM +0100, Anders Roxell wrote:
> From: Stefan Agner <stefan@agner.ch>
> 
> commit d3c61619568c88d48eccd5e74b4f84faa1440652 upstream.
> 
> Commit cafa0010cd51 ("Raise the minimum required gcc version to 4.6")

That commit is in 4.19, not 4.14.  So are you SURE this is ok for 4.14
and older kernels?

> raised the minimum GCC version to 4.6. Old mcount is only required for
> GCC versions older than 4.4.0. Hence old mcount support can be dropped
> too.

And as I asked on the 4.19 submission of this patch, what does this have
to do with clang?

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YcB5b65dVUIhzgIh%40kroah.com.
