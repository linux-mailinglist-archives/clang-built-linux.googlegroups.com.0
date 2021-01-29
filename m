Return-Path: <clang-built-linux+bncBDXO746SYYBRB5UH2GAAMGQEJDEB3JI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x638.google.com (mail-pl1-x638.google.com [IPv6:2607:f8b0:4864:20::638])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C702308B53
	for <lists+clang-built-linux@lfdr.de>; Fri, 29 Jan 2021 18:20:57 +0100 (CET)
Received: by mail-pl1-x638.google.com with SMTP id ba10sf5609642plb.11
        for <lists+clang-built-linux@lfdr.de>; Fri, 29 Jan 2021 09:20:57 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611940855; cv=pass;
        d=google.com; s=arc-20160816;
        b=eMN6LTQ/HPjIs3tRiQzIkKRRp0LOJSwB5plVI73Ns9DzkHjqw0ZEESKOq1MTrvH8w3
         xV/KEUYeBc+HNU8c2YLWzViSNc7F8Hi0Kk2BRV9TKvFgq0Cp4W3BkfW070Ehs7l+ZUEN
         LHzdGpQBCoIBNS18kxcIqqFrR8FitHuFuqVZf1m2LFuHMKXhsz1TDYjsKJrNT7gYvDSs
         W+ZWeu6v3CxkvrXoFFPz1BqfZJNIlksV2VfBQxtMGoeU0VJW5J79q4VrXzLgMvEcVhRv
         IqSe3pnWvqVVmPrS3aBLldrICYEU8bl8AkHeYl0SEH2oL6C0h251SXDKNHFCylBOoxAd
         wEmQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=4/8osuweEEQSdCgmhsOEkizAGhdVwn3JSeIBQIfcU90=;
        b=tO5bJp4dboSuZgfUMebxPM8Pk8R05+QDnN/UlX43v1YNa2CdPCP7SbWvW8QUyqg1CS
         fTkx2ejKAq3PP7X4hxLaUguuF+eJpTnlnBKlz6UTi5GkLZ++9QEs6k3KKdSswC7tQo08
         T1GavB2m2Jr0cFQNZgxqSqSYMK1B0IOybdkwAiFUPxlr2LkohSyL5vHbOCIWhQpGTMF5
         Ie2mMqB4uNaoOblOOk8GXiC0Fj/CTjYGpDWYg9WRVegsxweZePLXNxHCHXriXnO2hS8g
         fIyA/ELLvj0SfktnrLMWZQ9p/mFaTlM+LBEHk3t+GDegMS2u+Y7mRmG6Yh1jtymzi/r5
         o5gw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@hansenpartnership.com header.s=20151216 header.b=nn+1jji7;
       dkim=pass header.i=@hansenpartnership.com header.s=20151216 header.b=nn+1jji7;
       spf=pass (google.com: domain of james.bottomley@hansenpartnership.com designates 96.44.175.130 as permitted sender) smtp.mailfrom=James.Bottomley@hansenpartnership.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=hansenpartnership.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4/8osuweEEQSdCgmhsOEkizAGhdVwn3JSeIBQIfcU90=;
        b=Q3VTWEZD7uO/MRTCklgj/UJ95F+jXBYxVFd/6wMgVoXAoCwe0jlCIbvQAkdKGmZP/D
         1zAoRp4L1JkR1ozgardVKBxH7hyD0fvmQqqj09mRfjeAhCEspCAb2CC1gtzxHr5dTC5j
         117/qNTcmSy7+yxoZttgF2GWTI+PADTGbBwj5CYj7PgLrPPsjaTgacU3WiYcFHdTFGBb
         qzfjixolOHBBaiqPvf1/NHyGeZgtHdrRiejHcAgZD4ohA8OcFBbA6B5ZRm+St0QxeE+4
         hBL0ioEOwVhw8DghrHUiwiDQCNGK/TPpWchm266T+exzYe6Tu7iW/KKFxg4wMgtQiB61
         gbOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4/8osuweEEQSdCgmhsOEkizAGhdVwn3JSeIBQIfcU90=;
        b=ufy00e4oDhQf9YcMtNccUBBYGZBKuKJd6ioAUFzONwV9pvf5deO8izpMvT46NE+X+a
         cNrzOgWdu3PKaUBb6gOQlOH5SD9kMUg5RuHyisforCMFV83pR1i1ZXAiUhgskDnlz/A0
         8OOaoxGyq1hofKnR4+ZdUvyRpz4ku40C3jU6uHhePGdUJAO/hgnMSOy1h7a8kCyj5DXD
         g3k7NoqKJ0J+ftiBjbF621lECgWUUKaek+tD39UyUFNcLHX0g6t92uzu2FZ2AGzQ35my
         K6ZQRFBpD3Z2vDTy2keluNLTDk87mNuPlsLgU9edYfoCA8dkr2Q8Zni5sieKmn09OUTW
         mnrA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532EpP+5p8KYl9sKQfB+18ngM9hGApvkvwwwvp5MaFQav69MC8m0
	vYqhQr8t7uI3Whs9ta4ro+k=
X-Google-Smtp-Source: ABdhPJyHildyHE4GpAzGQF74NVSYu9J4vV5p2o4PyZRtEuUgdW0+P874b4u83y//S6gGdPGsRkTYXA==
X-Received: by 2002:a65:4788:: with SMTP id e8mr5739127pgs.72.1611940855026;
        Fri, 29 Jan 2021 09:20:55 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:6d0e:: with SMTP id i14ls3874596pgc.8.gmail; Fri, 29 Jan
 2021 09:20:54 -0800 (PST)
X-Received: by 2002:a63:f111:: with SMTP id f17mr5724800pgi.287.1611940854407;
        Fri, 29 Jan 2021 09:20:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611940854; cv=none;
        d=google.com; s=arc-20160816;
        b=cq479yeb688E/pq2+FmRrjoBc+RoXaJWCivDFuIs9OKBsALOm1HpUY/PiJfs5+2aeA
         9AdkYis9KSN5YihbQEtO8GSDmMTdq3sSoZmpS+rgwMKZwUnjEtCMoJazIM5VXNMfUIba
         wijqQJbiEYtXuh3k6WZmX0jQuwWa2eAvgpaYGupnEf8V52Nc/q3IrDDn90no5wh2F8Ps
         K0BPeEzuxfB2cdirQygbLdOMtvYRPtbFYJJQ3NAQMYJGorA6Rc8RUBEZHHHMeP9HVKmC
         4g93MXm/RsOE1OEXlzmUa850jSLn3NHW54gWhahzzU0yy4iElS2B3X7n6CUaodJBsX2E
         lVbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature
         :dkim-signature;
        bh=kaOQgDDu4mEO99kgvgP+8nGG6KrgEZm43bv8wywtlqY=;
        b=Y9MZWMxHzMHNpGhZFrYEsZwT6KaghgPgo2P+ei8sdF2b4RCseHAoM4K+Zk7HqniI+H
         Zt5Diev5WQKDiwOCqnyGK4wpWcWO3Z0b0/AMkf4+6N6JoCurGPlLytEKomV6yVSyiCO+
         Mm7X+MU58DezenDxFAkhj0y35EVHGIvh6TYwWPlgefbbAcW4lA0i2UkyWez/QIxU7yQM
         /2K742czzS4+aJdVfwFE9fsHKXEOvVqmlOkjYFHeFdFGF+lckJ+bgJ+WGKu54EVQFUtL
         oPHDT1hsAhuHk/bc6i8V2LGN314cS5aMXQ7CEpbv9tpKUTGjyynJptSWefwHfpvySv+7
         5EdA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@hansenpartnership.com header.s=20151216 header.b=nn+1jji7;
       dkim=pass header.i=@hansenpartnership.com header.s=20151216 header.b=nn+1jji7;
       spf=pass (google.com: domain of james.bottomley@hansenpartnership.com designates 96.44.175.130 as permitted sender) smtp.mailfrom=James.Bottomley@hansenpartnership.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=hansenpartnership.com
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com. [96.44.175.130])
        by gmr-mx.google.com with ESMTPS id f11si380648plo.4.2021.01.29.09.20.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 29 Jan 2021 09:20:54 -0800 (PST)
Received-SPF: pass (google.com: domain of james.bottomley@hansenpartnership.com designates 96.44.175.130 as permitted sender) client-ip=96.44.175.130;
Received: from localhost (localhost [127.0.0.1])
	by bedivere.hansenpartnership.com (Postfix) with ESMTP id 70BD2128082B;
	Fri, 29 Jan 2021 09:20:53 -0800 (PST)
Received: from bedivere.hansenpartnership.com ([127.0.0.1])
	by localhost (bedivere.hansenpartnership.com [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0joy9tFLy1gZ; Fri, 29 Jan 2021 09:20:53 -0800 (PST)
Received: from jarvis.int.hansenpartnership.com (unknown [IPv6:2601:600:8280:66d1::c447])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by bedivere.hansenpartnership.com (Postfix) with ESMTPSA id 198351280810;
	Fri, 29 Jan 2021 09:20:53 -0800 (PST)
Message-ID: <aa8e8553c1e94e2b2225aa66557f6a49886b0203.camel@HansenPartnership.com>
Subject: Re: aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from
 `security/keys/trusted-keys/tpm2key.asn1.o' being placed in section
 `.eh_frame'
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Date: Fri, 29 Jan 2021 09:20:52 -0800
In-Reply-To: <202101292235.TSfb52uc-lkp@intel.com>
References: <202101292235.TSfb52uc-lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.34.4
MIME-Version: 1.0
X-Original-Sender: James.Bottomley@hansenpartnership.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@hansenpartnership.com header.s=20151216 header.b=nn+1jji7;
       dkim=pass header.i=@hansenpartnership.com header.s=20151216
 header.b=nn+1jji7;       spf=pass (google.com: domain of james.bottomley@hansenpartnership.com
 designates 96.44.175.130 as permitted sender) smtp.mailfrom=James.Bottomley@hansenpartnership.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=hansenpartnership.com
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

On Fri, 2021-01-29 at 22:27 +0800, kernel test robot wrote:
> tree:   
> https://github.com/0day-ci/linux/commits/UPDATE-20210129-183238/James-Bottomley/TPM-2-0-trusted-key-rework/20210129-175906
> head:   d98ce41d6c32fa78e380385c6e146f752e4d3809
> commit: af175fe469c6f0bdd1e14a14a3d107e7adb122bb security: keys:
> trusted: use ASN.1 TPM2 key format for the blobs
> date:   4 hours ago
> config: arm64-randconfig-r023-20210129 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project
> 275c6af7d7f1ed63a03d05b4484413e447133269)
> reproduce (this is a W=1 build):
>         wget 
> https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross
> -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install arm64 cross compiling tool for clang build
>         # apt-get install binutils-aarch64-linux-gnu
>         # 
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=af175fe469c6f0bdd1e14a14a3d107e7adb122bb
>         git remote add linux-review 
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
>         git fetch --no-tags linux-review UPDATE-20210129-
> 183238/James-Bottomley/TPM-2-0-trusted-key-rework/20210129-175906
>         git checkout af175fe469c6f0bdd1e14a14a3d107e7adb122bb
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross
> ARCH=arm64 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from
> `fs/dlm/rcom.o' being placed in section `.eh_frame'

What's the problem here?  the file you're complaining about is pure
machine generated so I can't alter its .c anyway and this looks like
some type of linker problem anyway.

Let's start with what does the error actually mean?

James


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/aa8e8553c1e94e2b2225aa66557f6a49886b0203.camel%40HansenPartnership.com.
