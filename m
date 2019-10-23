Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBN76YHWQKGQENZUVTEI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43b.google.com (mail-pf1-x43b.google.com [IPv6:2607:f8b0:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id A8F14E208C
	for <lists+clang-built-linux@lfdr.de>; Wed, 23 Oct 2019 18:26:33 +0200 (CEST)
Received: by mail-pf1-x43b.google.com with SMTP id 194sf16560559pfu.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 23 Oct 2019 09:26:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571847992; cv=pass;
        d=google.com; s=arc-20160816;
        b=YIVaPmvv9MLzNbg0X05jRToeI4F60wvHq2rUrzdNxK2Lt22UXpxWtpAoUg/QUjNqur
         rje2e8/51rMKEjtmpFyvrL09EV0MSqR9aKeUcPzd5rz+Vl3kTbv6PxU4fJQTCdVSnxkT
         9zOk2Q1qNk4FjMaLFqevbPOpXdW1YJDXFXZavw4DMtSkm+hCHueukkTPAt/AndpeQEGz
         MGxP5cj6NoZCYuu0kaHWVJkLnKAox3LTwZ6goQvb6H6Dubee9vy32rhHJmyzNm056LFb
         fZWRGSHvBAQQZI8LoyeuIytYALRX837xDWTpRG5AJBHN08nvBC4n0vCwHelinJCkXAZ5
         zsPg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=kkXomCiuEuNknw0Hu8IBmaQzRpofC2umyIC9YD071EQ=;
        b=YuqYRS2CVUU38q4LG2TM/KG+xG5qt35pQnoqPxT8WAuseS9FfVvBXDQD4PVksUH5N1
         L7CDPg5TzNbxPOCheKSeMr4ReWHxn9NOaCA5lz93g6watqQhu4MJkg45WMsIeO18UXcn
         wHPN01mwQQqlv4fzMfluYB2zImXY0HJZAhZeI7p/Pt5yMZFocP9eCMxwcCyhb6P2OjKD
         6jG9Xo4qNCr4KeQuQg+rLG+79AoG3McyZVY391OK4IZsZozIVVreI9gAHcEod9DTol2E
         MwpcUVbtoPYJuAzK29It1ydnzWxk6S5W+228FCOjrAGt6h1vm0CcDdIJSTB8ZugxxEGQ
         lQuA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eSVKJPPS;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=kkXomCiuEuNknw0Hu8IBmaQzRpofC2umyIC9YD071EQ=;
        b=WZCdFdXLquogDHcYibMx9pxyqHXL+GSX6Nva7bJhZys4uzNWNhj/K0bdzIuobfXGCy
         Z5SKsAOYWkfYZr2NixJVLfGlaapJJFnKP5Lyk3xxWpaMBoOxs/cKOKX/V3Z/xK+VXQv5
         M6CvgeMpzYXCrMqeZ2XkWJ72JRTO7JINYdcPT9uwl9sAOY9+ctR2tq1ObuCd5AD2RRS7
         TxhlSOPzX+5G6gLviNxi+2U0HLf1OyvCCcTaSSQktjNHyAhuuEQnHf2kgg/UuAG9eQuT
         o2wnPhVxO0IKHxyiZJuKUguX/gvyT5irdIAPLL0UliIA0sZCEDHeowO0mG14FihJrs85
         yg0g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=kkXomCiuEuNknw0Hu8IBmaQzRpofC2umyIC9YD071EQ=;
        b=HWxpu5RyD2HMuR3myd4jULZyadqIl2svqyLWwx7ZMoor6K4KR9AzE2vfN32zcVzlc+
         J2ZGttVXzGobtatd1+4M3lSE7hhDI688FGwp1IGn2rYXJ0ij5P9fOXfWO2dRjMnKkUKh
         Q0MWncuTGt7rVpuGakXD184JeUxpi17Vq6Pu3PvLMtTVYUw40XFAUN2fy8R0avZyiqvg
         JuAF6fUXmfnAx4iA2LJ/Tz1OsuGOEuCnrsnKU7I0K420v8wyTZ+GzYugpxIBQR+6wFSL
         2YutzBKfhP61iiwaMTCcmHTTbqsW4vmo8jujG8trS9NuDRpwALl0U3H4j5py1Rd40TSv
         nXVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=kkXomCiuEuNknw0Hu8IBmaQzRpofC2umyIC9YD071EQ=;
        b=qWebBLSJICK+gFbkasEf5NDcvRKzkGW64ykJ115dp54PFMSsWJlcI0qNRkz+EfmgYy
         HsJHO5kzvSM6Ew064f3X33pN6XYk+uMmw3pvxB9531SEM3emoK1Oh+BwJZjY2k8prYpE
         mpyFPLayZJvoZ7kTpLLEdF0zEYvCCVsNVDL+DQad14X329w3K86xvI9CRF207Ko6hbat
         2+FiJCTxuKCjFBlgR5uP3WxEeUMjazMBsA/5PKyCnRxS/N5gjWtzyVpraGzuoSDFqhac
         FY6U/qtPGOxwfnykGrX0xLVf78b/+t3HTv1lD+ujfdeqdlfp7TbqjYxQZ+J2duvsXzyO
         YdqA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVj4qfhkboeuNDvIduBLRQ24TwiHW69Na50scTY5i49jYONYLPd
	s1mR/lq1byRRJuUpf5Y1UAc=
X-Google-Smtp-Source: APXvYqxmqsDICQNyEENgjtjmVzD+z8hjyGebwQ69pnDtjk/LeuvJ4fX9JlypurXLzN16k2ttrxntnw==
X-Received: by 2002:a17:902:525:: with SMTP id 34mr7669556plf.267.1571847991780;
        Wed, 23 Oct 2019 09:26:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:59c7:: with SMTP id d7ls843425plj.1.gmail; Wed, 23
 Oct 2019 09:26:31 -0700 (PDT)
X-Received: by 2002:a17:902:7e4e:: with SMTP id a14mr10835964pln.68.1571847991314;
        Wed, 23 Oct 2019 09:26:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571847991; cv=none;
        d=google.com; s=arc-20160816;
        b=o7ohYyVvMjpMObQBU5f8IZyGg60x8ApPk0eZTMclfwQY32rfHxoX9m8DcDSV8KmdJn
         xHqsPBzn9UXte96zIz7aVDNXsNX5Hw4VIvbaNzQyMQ2GcpIYhYvsZZfzH6bvp7GDy+Hg
         QXjTo6wZw7yZB/46UTXBDYjT+O+CaFWinxkIuHZZDpy47O0ujlo/wGZAtWQUWxX1jcmI
         8flaSJ4zl6mdlpsluqEiIA9dpkkPNe1sbXDTB1vCa2Wpugiu0QsW1UIlUGQjAqLl2dV9
         whDdtlOBTF6ndl9gKY1OzwY+4s4OizYaICN14vmYUjfDhaXzH7hkkffyACDoygk+N0yJ
         F4Fw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=EAeizC7dUymc6uqIjtz5jyoFjB5RNX3davj32nJWlag=;
        b=nRFzxaRPslPm2rPMrepFjemnTlFQITTPMkoLDUsVx1BzBhqRm1zMGzA0izZWKuml8l
         zSRFufyjMrxxtR06kNSF1IGVNPxF730Ytf79EwRn+5Co6nHTQLPQYbGhzsd2lcZpi2YA
         PK6dKc7PLjqPyUsTinOuaFIHmm6cefSyUh4qdaEyvp2OCLaEPJgby9LrW1wa1qU563s9
         AMpydKUOvJyGyMVv+MNZc5PH7R3b0rMOz6VspJOgZvZhXADypIQCZTyCC54JRYrTQX7P
         tkhBKYGmJk357CvXsc9PhXOnbiAvutwFopq4qNf47pkbP0V87buszmZOKIzFr6EieStT
         Vrxw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eSVKJPPS;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x342.google.com (mail-ot1-x342.google.com. [2607:f8b0:4864:20::342])
        by gmr-mx.google.com with ESMTPS id u9si296965pgf.4.2019.10.23.09.26.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Oct 2019 09:26:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) client-ip=2607:f8b0:4864:20::342;
Received: by mail-ot1-x342.google.com with SMTP id c7so7186261otm.3
        for <clang-built-linux@googlegroups.com>; Wed, 23 Oct 2019 09:26:31 -0700 (PDT)
X-Received: by 2002:a05:6830:1685:: with SMTP id k5mr8411180otr.203.1571847990325;
        Wed, 23 Oct 2019 09:26:30 -0700 (PDT)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id k19sm5688229oiw.31.2019.10.23.09.26.29
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 23 Oct 2019 09:26:29 -0700 (PDT)
Date: Wed, 23 Oct 2019 09:26:28 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Mark Brown <broonie@kernel.org>
Cc: Viresh Kumar <viresh.kumar@linaro.org>, Kukjin Kim <kgene@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	"Rafael J. Wysocki" <rjw@rjwysocki.net>,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org, linux-pm@vger.kernel.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] cpufreq: s3c64xx: Remove pointless NULL check in
 s3c64xx_cpufreq_driver_init
Message-ID: <20191023162628.GA10997@ubuntu-m2-xlarge-x86>
References: <20191023000906.14374-1-natechancellor@gmail.com>
 <20191023032302.tu5nkvulo2yoctgr@vireshk-i7>
 <20191023104304.GA5723@sirena.co.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20191023104304.GA5723@sirena.co.uk>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=eSVKJPPS;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Wed, Oct 23, 2019 at 11:43:04AM +0100, Mark Brown wrote:
> On Wed, Oct 23, 2019 at 08:53:02AM +0530, Viresh Kumar wrote:
> > On 22-10-19, 17:09, Nathan Chancellor wrote:
> > > When building with Clang + -Wtautological-pointer-compare:
> > > 
> > > drivers/cpufreq/s3c64xx-cpufreq.c:152:6: warning: comparison of array
> > > 's3c64xx_freq_table' equal to a null pointer is always false
> > > [-Wtautological-pointer-compare]
> > >         if (s3c64xx_freq_table == NULL) {
> > >             ^~~~~~~~~~~~~~~~~~    ~~~~
> > > 1 warning generated.
> > > 
> > > The definition of s3c64xx_freq_table is surrounded by an ifdef
> > > directive for CONFIG_CPU_S3C6410, which is always true for this driver
> > > because it depends on it in drivers/cpufreq/Kconfig.arm (and if it
> > > weren't, there would be a build error because s3c64xx_freq_table would
> > > not be a defined symbol).
> 
> > +broonie, who wrote this patch to see his views on why he kept it like
> > this.
> 
> The driver should also have supported s3c6400 as well.

Kconfig says otherwise, unless I am missing something.

config ARM_S3C64XX_CPUFREQ
        bool "Samsung S3C64XX"
        depends on CPU_S3C6410
        default y
        help
          This adds the CPUFreq driver for Samsung S3C6410 SoC.

          If in doubt, say N.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191023162628.GA10997%40ubuntu-m2-xlarge-x86.
