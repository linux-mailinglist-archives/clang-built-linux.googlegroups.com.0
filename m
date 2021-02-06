Return-Path: <clang-built-linux+bncBC6JD5V23ENBBYFL7KAAMGQE23UU4QY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x237.google.com (mail-lj1-x237.google.com [IPv6:2a00:1450:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id B455F311D56
	for <lists+clang-built-linux@lfdr.de>; Sat,  6 Feb 2021 14:13:04 +0100 (CET)
Received: by mail-lj1-x237.google.com with SMTP id k20sf6388084ljk.19
        for <lists+clang-built-linux@lfdr.de>; Sat, 06 Feb 2021 05:13:04 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612617184; cv=pass;
        d=google.com; s=arc-20160816;
        b=nPIJGYEmmNTktLcXfYSetFTw7/XuzGfkv0Ko0OacIXsxTlbPVs+4uQ+GHarTT3Noy+
         GuSOBLOB9o1W2AhCf3tpOze09PIxxW9XPpKp+oFxsNb6s+j6e7Roi0CPXSmYgPNUTY6a
         7JJv0qC9ie42OaHPidiCB2Pv11aVPPOpCJ9quHkWU1y8gdKFWi6cZ0ML7MlEilfSCRjN
         KVVLWgcvFRY4nhGZRYYAT1Lk4o/9zooJWum26TyBolYbGZhLChi+s2tGb+t5JHduOcKz
         k+uAaBgo+rYxEfefeK40/F5z/mqsvqxdZ+w2kYapyBlR0mRkuGK3qYPpQ8EOBhhb1gQy
         0RlA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=SHDiS4jfKf6uxrRaUdnU3oRYuLs/jnzjy01JaV8EE4U=;
        b=ZQcwbsybHZeEwpoOywoK4nk0Yz2iZafXRaYxEtEHx3ieMgiIUp/vMePaeMITgH+F/X
         yd98zgM3HMm+IQRFj6m7scjflHS6M1ytny8eiiShLi8UYM7MnjhJrAQVGMXkUmY7JjDe
         8T7V0zK9QRJzmyh5kWOBXYx6k3hJYmnYaTEHoS3sFfppXbHmIY261UTTb05OxanqKptK
         8fwyQgA0d1InpDDtbM3yABoKtDmGDgIvzaPfpG6YHc7ba76n/qLhBLiEe0PjzyZgOOKP
         32uHYuRQBo2Tyk/e5nwvRcOW/Fgo+ZGjZsfP/ua7kLj7ei7i/PKNjWqIltwIMIMlMJwH
         c51g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of k.kozlowski.k@gmail.com designates 209.85.128.47 as permitted sender) smtp.mailfrom=k.kozlowski.k@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=SHDiS4jfKf6uxrRaUdnU3oRYuLs/jnzjy01JaV8EE4U=;
        b=Vso7Fa66Edd3O7BbAvfGmZx2aLL98ZeILsUg9X8lRxRxh8Ln3nM9teed6/YWFzJqCb
         ySDXTQGzTlzH55Tav0NamdKAAdBdrWbAeW9Nki+9h8pSwyrxhd4bFwbsi/JpEQEwiZbu
         /MtmhQ7nLUOKv9EH4bai+XZEPMdmtruLoL4+9AaMXqxKJCDx0k6nb1FNWFI9eXGAQ8Bh
         54GA1cfvgcBBkBLuPHgpW35WdAAqqqDanRYA9B14bLfGaxWW/0m/eOtQxUPQazXbidal
         JbmSicmXBB6qitVphswAv/GJ3fWEXtndPkTO2BTmPBnhe1j4uFG0pDCQs8oj05xcBff6
         n6uQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=SHDiS4jfKf6uxrRaUdnU3oRYuLs/jnzjy01JaV8EE4U=;
        b=UjHj8Rr8ZkN1al9SpVahzJB9aaqdgbQkpO0DtntdqNtaOgJBo3MdrwBAS0Vgb1ozNl
         pqiqx1R6Ao6EYjLsZ3sj1jc26gAWNW1AQIy4xWiW9vWOK6Codiyg2CGwLsAYGj9GnQm0
         b2WjYzWbzTsE+RG2VFWilH1MdEth6AVKpNUfn3jOwBteBYBE4KcYEeumzJLmYbrleF/S
         57YLw2dzrJMqOhqktkr8x+ZLTrodfLuUjOv5VXZEE8CW/eji9iZA9I36PD4TSr4wb9mg
         f7+A0o/HD6KnG8QNKAdw7bOAfhmTPDCX4Vbz1iNNXIKIFn421+7Eonn4zuaYb2sYfBMu
         Wldg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532BoBPFUmI3FH9cz5ojmgJdJhTEMGgpcsz3jUL+MfrSOoW9kKY4
	SYEZtpieaZEMfuQaXvvCQT8=
X-Google-Smtp-Source: ABdhPJytQxbOsDZNpqtSEtNjYemZZaJoBJqa/OaVYAHZtgK8EqqbY3NWeqZqaUHFLorCv8u4uYzR8Q==
X-Received: by 2002:ac2:5d26:: with SMTP id i6mr5103840lfb.445.1612617184230;
        Sat, 06 Feb 2021 05:13:04 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:651c:1314:: with SMTP id u20ls2118189lja.9.gmail; Sat,
 06 Feb 2021 05:13:03 -0800 (PST)
X-Received: by 2002:a2e:5c46:: with SMTP id q67mr5632066ljb.358.1612617183130;
        Sat, 06 Feb 2021 05:13:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612617183; cv=none;
        d=google.com; s=arc-20160816;
        b=eyaPUCtyTFuxD4QyHlHe4DRIcoJ9RR2mqmTF45D8KHEr5R+zIGaqXaWecPd4WYxhyB
         aNkvyPj/NOZWxtyz4BOg3vLQvLfwUPZ6/0liBlT8nCBpbzGKGr75eAC/xXYqSvdY4c20
         4H/GDz/H7kZbNWbSygZXjlMxd4m2MqQgjyKDWJa3bs2Btes168zuoK7Qqsr00+E6pj1E
         caDWRndJkOenwKR39q4bh2Cxp2RYVQYO2/xBi3+mU769z0JE10Ii0NAfk/hc28C88xHj
         6TQauZOkF8v5a7qMHgIg8Cll22ar5eO6ZvKMW3oyuwTA5oSPxaR8P0W2eJBBY/ltNXMG
         YjOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=TcWqlo7340ClwaNrU2G13HH3PdkJ5tma+WdPpB6m4uk=;
        b=i2BGOl35yedOSSJTkToKiR8rFt7G04F3ciL0fl/QFZCpgElQQo9grFwbMr2r5zCpBl
         COWJMMcpLJv/nEl9GE7koOowiXH/rJfetKOeF66FbQruYxqtaB2/4MhsmnUnQrUNDPkb
         kL4G9ljtp71pTi+lucXh7s+9S9Kdiu75fj+bgAV94G/8oOfm8QtY32Swyn7IT5J/3U9F
         3YaVt9aCoBRbSSMwyTXW1B+r5maa+lwV09zZzwdKBbgYMdLRYMadPZlclcoqizQYg8V7
         KGBrcm9JzKecaKPeQfqLQdXmGDoTvtrGeIBvjLe5AkzlKJBvNTTArWwD/PkPAFB6XhSR
         SpHQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of k.kozlowski.k@gmail.com designates 209.85.128.47 as permitted sender) smtp.mailfrom=k.kozlowski.k@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com. [209.85.128.47])
        by gmr-mx.google.com with ESMTPS id f18si666449ljj.1.2021.02.06.05.13.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 06 Feb 2021 05:13:03 -0800 (PST)
Received-SPF: pass (google.com: domain of k.kozlowski.k@gmail.com designates 209.85.128.47 as permitted sender) client-ip=209.85.128.47;
Received: by mail-wm1-f47.google.com with SMTP id i5so216936wmq.2
        for <clang-built-linux@googlegroups.com>; Sat, 06 Feb 2021 05:13:03 -0800 (PST)
X-Received: by 2002:a1c:a707:: with SMTP id q7mr7476875wme.15.1612617182491;
        Sat, 06 Feb 2021 05:13:02 -0800 (PST)
Received: from kozik-lap (194-95-143-94.dyn.cable.fcom.ch. [94.143.95.194])
        by smtp.googlemail.com with ESMTPSA id 67sm11724509wmz.46.2021.02.06.05.13.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 06 Feb 2021 05:13:01 -0800 (PST)
Date: Sat, 6 Feb 2021 14:12:58 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Arnd Bergmann <arnd@kernel.org>
Cc: Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Ben Dooks <ben-linux@fluff.org>, soc@kernel.org,
	Arnd Bergmann <arnd@arndb.de>, Stefan Agner <stefan@agner.ch>,
	Russell King <linux@armlinux.org.uk>,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] ARM: s3c: fix fiq for clang IAS
Message-ID: <20210206131258.du6tmx7lda35rg5l@kozik-lap>
References: <20210204162416.3030114-1-arnd@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210204162416.3030114-1-arnd@kernel.org>
X-Original-Sender: krzk@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of k.kozlowski.k@gmail.com designates 209.85.128.47 as
 permitted sender) smtp.mailfrom=k.kozlowski.k@gmail.com;       dmarc=fail
 (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Thu, Feb 04, 2021 at 05:23:42PM +0100, Arnd Bergmann wrote:
> From: Arnd Bergmann <arnd@arndb.de>
> 
> Building with the clang integrated assembler produces a couple of
> errors for the s3c24xx fiq support:
> 
> arch/arm/mach-s3c/irq-s3c24xx-fiq.S:52:2: error: instruction 'subne' can not set flags, but 's' suffix specified
>  subnes pc, lr, #4 @@ return, still have work to do
>  ^
> arch/arm/mach-s3c/irq-s3c24xx-fiq.S:64:1: error: invalid symbol redefinition
> s3c24xx_spi_fiq_txrx:
> ^
> arch/arm/mach-s3c/irq-s3c24xx-fiq.S:79:2: error: instruction 'subne' can not set flags, but 's' suffix specified
>  subnes pc, lr, #4 @@ return, still have work to do
>  ^
> arch/arm/mach-s3c/irq-s3c24xx-fiq.S:104:2: error: instruction 'subne' can not set flags, but 's' suffix specified
>  subnes pc, lr, #4 @@ return, still have work to do
> 
> There are apparently two problems: one with extraneous or duplicate
> labels, and one with old-style opcode mnemonics. Stefan Agner has
> previously fixed other problems like this, but missed this particular
> file.
> 
> Fixes: bec0806cfec6 ("spi_s3c24xx: add FIQ pseudo-DMA support")
> Cc: Stefan Agner <stefan@agner.ch>
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  arch/arm/mach-s3c/irq-s3c24xx-fiq.S | 9 +++------

Thanks, applied.

Best regards,
Krzysztof

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210206131258.du6tmx7lda35rg5l%40kozik-lap.
