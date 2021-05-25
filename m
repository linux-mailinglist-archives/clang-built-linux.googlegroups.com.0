Return-Path: <clang-built-linux+bncBDJNHL5JSEOBBQUFWSCQMGQERSDO32A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x237.google.com (mail-lj1-x237.google.com [IPv6:2a00:1450:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EBC139033C
	for <lists+clang-built-linux@lfdr.de>; Tue, 25 May 2021 15:59:31 +0200 (CEST)
Received: by mail-lj1-x237.google.com with SMTP id r15-20020a2eb60f0000b02900eddb317c52sf13408504ljn.21
        for <lists+clang-built-linux@lfdr.de>; Tue, 25 May 2021 06:59:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621951171; cv=pass;
        d=google.com; s=arc-20160816;
        b=eagNI/8fYMKBurtMm3Uc5FmrHsrwZUIOeu+x9bl4z0f1ay8zXScPaLpgLMz1oHhrNO
         7JNNGQr56ElUrd/kB/5D5meV05GjUsmlER6BlUltfxRXd8S3LUXM+D/3hOewG/1EY277
         gltmo1Wr6TSVWxoQBRjhcgAJ8Ok2cSSrsWG26upXjCvYSTHRFFEn6PTzu2zu1C2vtWKW
         3GRb7/YBIjdjxWje+CP6hloGtciFh/3DB4qgcmEwSVlnWHVogc98W7M1eU8hn+niIXc+
         qVRF0HHwNM5yfHiKPzQt+2dvOmHxzCXJ/Ce5NSPv3QbX/LT6Twk7CT0vSrCqd1spBPAN
         XBTQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=F0sZwAIkfM18YztihX6EeJsapgqpEAIwHGh0R/WXpfs=;
        b=AoCT6yeEliDbATKbkhx8RhE3q4lHdFLPrEaf95JHMIY2oSuWdZcY46kS360h6r4jfe
         UkPo1Qzw0UUTLu2Pz9i8787OG49SfsUlt2Xif6FQMbwehtz35i6jdt7N+0EDjaP968aF
         rR4KpksRHOERrcCcIqIseh6oeArLXzdQebtKbcj9lTmCwYGDkgJnzkRxxdB/4wd+ncoo
         b21Wiqx8ZmXF/oCXpz4vpJBiDUBht5KuKVMrs1No8gZ7LZGdJ6PVuS0x7lU+YhdbQF8B
         /WhyyrgoGF1bEldVjaat24rmTPuTVfLJqvyzaRU6mpI/vWWV363/2hMf51FmsI+fXDrw
         8sFQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@lunn.ch header.s=20171124 header.b=f+dvmSu3;
       spf=pass (google.com: domain of andrew@lunn.ch designates 185.16.172.187 as permitted sender) smtp.mailfrom=andrew@lunn.ch
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=F0sZwAIkfM18YztihX6EeJsapgqpEAIwHGh0R/WXpfs=;
        b=JhEflfrb/Zwh/d3r5qnJ3TBTos25GzkL1XCC3j3WSwJLwNZPstYCVfaR7v9NXl37jn
         j9pCZPLlOFKIIAU9WvZNHVPlhrGN4LLq/W14OqnmladBNvHvWbwra/ZS3sOtHN8GqgcD
         JZCdkJr4RgzZC1D5fFRG98YrqFILFAWrof3lnA+TE1xB0jdY30ClvQ+K2eIaK3Suj1Of
         tmyKOnIdtKzbzRflB6yfnXg6MS9xOiweZdm38n65MqhRu5/zSr0cw8q27JXUvzvFbUHT
         Pxq+Nh8gCmpd+nhg5kIlBRExY+RApPLJLHEQBd635PhQ/znehWSMGRRFm8eGcw89Jaz/
         UyEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=F0sZwAIkfM18YztihX6EeJsapgqpEAIwHGh0R/WXpfs=;
        b=hgegJFj+a7kffw7L90nvoV+yuIYGKCVhuJ19N1fHOHdGgHpS5YnEKdDYPsmmQdVzqk
         xYpH8Kv1QwNN7/ay5UPE8786a6qkRnNC6qUe7kLdt2aeYqFhEmn4sYwD8EiyBzqzy8qE
         t5LZCkkAVEQPEd/u/B+ZprDIp42NTyZkglf/BGuFUjeKNR/C/y806M0EWzMYBmsSvmEd
         uI0RdwXtwL/KsztInqlh1OE/t00jOktBrGBsISDiGYuYcFtP/j3qkwm8XjJTJj7eHX6m
         uf2+tFUfSzw0Np7iCgbmn2ApUrfhVCtTxdkn+/E2AdP1doCl+j94YXwIVcopDMdgJqUy
         Ab6w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531j9IiBEe6uLg0QhVt8OAYfDYTA1OqEuWlgcU8WmBLn1NEu+wEG
	/Q6+/ttdoGIfz521lN/yPfI=
X-Google-Smtp-Source: ABdhPJxuaihqPB3kokkIQ1sUgJbS/YULPuR/UWdItQn7P0BvJdC7kE5YjFrPy0FtJ68UTluYsz4/hg==
X-Received: by 2002:a2e:160f:: with SMTP id w15mr20691876ljd.357.1621951170934;
        Tue, 25 May 2021 06:59:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:3f94:: with SMTP id x20ls2786559lfa.0.gmail; Tue,
 25 May 2021 06:59:29 -0700 (PDT)
X-Received: by 2002:a19:5e0d:: with SMTP id s13mr14062202lfb.229.1621951169704;
        Tue, 25 May 2021 06:59:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621951169; cv=none;
        d=google.com; s=arc-20160816;
        b=coKxxyoh9Mz0muGTngyypaag2oNyseVYa/b1NddusjLDxGLVZVFch/GPNDBq86goC3
         rytMQpWEgLaYq9zD1V0Oe47+vcPqYHko3ORFIZX20ROKaH5yoDTa+VaRxyNo+KyiHV2D
         yeTbn16ppdxQvpls/8CIRoVPbXJua2m258x5id6SLeuw2T57QqnCYP1RIZhe6tdAqHkn
         moP/c0rgK6q7trBv4uFahU3tQejUKPuc60wLE03ZfOiqwQAUHukaMohe4dNeiJ+DeZXs
         aYAliaiX+NEaEiRXcBIOi/K9dbNmusbpKeq+NiIG6Fp/QrVEfk1KZWBqYO6PfGQFgMU3
         1gow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=yk81UTHHtZAz6QPhDLpMTcZWhZ+n8sv02uF2NLJsfVo=;
        b=YRbAnwyGPv4T/uKE1DA5DvrETyOHcSLt6IxsXocBPOOoJtSau+l45/0GSXqz83Jcn8
         XHgF/zD1Ui8OIQ8a4iVch51EDrbWSiHDSZKgR9rkACzhW28BbHeu/n9OeQSohmvZleTk
         kkQ6BMpRQtaULp92+MInrQDfZKcmntrsnuBcdDR6aY9rddKg0zfVidJ10OsMVP8E+AWM
         Ti0OxEiQly5BhRv3Lqrwb/uCEA+w86M8Zov5cHeyZK7TuagEKZZYMHkSOzNanXdSvOgQ
         KHh/GNpO7IKNt96apKRIxbAzFPYSyKgCXGvRoqLdpztG3Nd02fevvvVJUT2aVtKEymD6
         /tcA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@lunn.ch header.s=20171124 header.b=f+dvmSu3;
       spf=pass (google.com: domain of andrew@lunn.ch designates 185.16.172.187 as permitted sender) smtp.mailfrom=andrew@lunn.ch
Received: from vps0.lunn.ch (vps0.lunn.ch. [185.16.172.187])
        by gmr-mx.google.com with ESMTPS id i14si713092ljg.7.2021.05.25.06.59.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 May 2021 06:59:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of andrew@lunn.ch designates 185.16.172.187 as permitted sender) client-ip=185.16.172.187;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1llXac-006BGy-D2; Tue, 25 May 2021 15:59:22 +0200
Date: Tue, 25 May 2021 15:59:22 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Peter Geis <pgwipeout@gmail.com>
Cc: Heiner Kallweit <hkallweit1@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	"David S . Miller" <davem@davemloft.net>,
	Jakub Kicinski <kuba@kernel.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Linux Kernel Network Developers <netdev@vger.kernel.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	clang-built-linux@googlegroups.com,
	kernel test robot <lkp@intel.com>
Subject: Re: [PATCH 1/2] net: phy: fix yt8511 clang uninitialized variable
 warning
Message-ID: <YK0CujhxK0pKF9xq@lunn.ch>
References: <20210525122615.3972574-1-pgwipeout@gmail.com>
 <20210525122615.3972574-2-pgwipeout@gmail.com>
 <YKz1R2+ivmRsjAoL@lunn.ch>
 <CAMdYzYqHYu_aMw+EjeFP70HnbzJfC6md1fMT-yx0cs3MEF12ug@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAMdYzYqHYu_aMw+EjeFP70HnbzJfC6md1fMT-yx0cs3MEF12ug@mail.gmail.com>
X-Original-Sender: andrew@lunn.ch
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@lunn.ch header.s=20171124 header.b=f+dvmSu3;       spf=pass
 (google.com: domain of andrew@lunn.ch designates 185.16.172.187 as permitted
 sender) smtp.mailfrom=andrew@lunn.ch
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

> Do you want a v2 or will it be fixed on application?

A v2. And please remember to add the Reviewed-by tags.

  Andrew

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YK0CujhxK0pKF9xq%40lunn.ch.
