Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBQ5W233QKGQE442FCAA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1037.google.com (mail-pj1-x1037.google.com [IPv6:2607:f8b0:4864:20::1037])
	by mail.lfdr.de (Postfix) with ESMTPS id F1F9220AC88
	for <lists+clang-built-linux@lfdr.de>; Fri, 26 Jun 2020 08:52:52 +0200 (CEST)
Received: by mail-pj1-x1037.google.com with SMTP id t12sf5036309pju.8
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Jun 2020 23:52:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593154371; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ge3x1bu1cjbEOh5TH/rlvZU52D8TsxC1UTcKAmhKhnQ42wmdhCfx6mMe9EG10ggPjR
         35rj1rzWSSLe6UMelcqNJNAzMgW+2FhHAdpgrUK1PEWKPF9gzlEFVYXMkIPMQFPw9gBE
         0Q025x8sZRhuwom59BLDupRrlYSVm96QEX99cC2Wr7bqZJoy6GW+1r2HRLP+7PpeWJpA
         jezWQVMyAQ56VEPIx7bg8iCo4OAFKhbLNd82Yn+cPnQzeNcsxkmbf0wclaO1WDa5JBsE
         exYcUZbd+RGhC0rmewNvpAPCykjNo9BEpVQbAOhIl/Lic6+5aJH3e35vZTdhaXJZGX2b
         7bUA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=I5c83xHCuI3P/NApDRFd9PvCQ4vMjxTSDUkYBG9kH2Y=;
        b=VgXr9Dpn/OY/LtRZxFU5oDaAVGBWMqf3UIpLk7NUaPTDkngW7uxKBeFsSd2LZpxpHc
         VthnU9mZZf1hfHcyF6gW2Rw5LdilUxU8E5l1xfuwphZtZOGyKFhMraHX0nC28E0Oe4zi
         jsVTmMBdPAiAoHectspQ+ahXA+cryyxB1MYZ0F+czlQP7f8dCfHE2fS6utcuI+CzyekK
         boHA84mAdB2f2RfCm652bEtCghRs9e3972RHSNOdrNgfUuwsozVpLCeyidOsDx/xXU2z
         zA8QHwQYx/DiE8+cW5QPGcxw7qLcNtKh9XTW8C2V6or7LXFNIh/oXeW6ezYgKDRqFWjW
         OMiA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mVnXs4rb;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=I5c83xHCuI3P/NApDRFd9PvCQ4vMjxTSDUkYBG9kH2Y=;
        b=an4tv5z8vWSXt11xHZoxmjgroYOXReYluSeUBgPW7OFQ/xVxS2Ez1c97MZMRIsanlq
         hTitBuuKfcwob5rXzW7UtT6cEcRsYGihZqJIt9rSuUqLKGXP3Xn6Z1QIqcb7uK5xijg6
         AgNVll7vvL+tGmFNVY6qkmmhOhACMf1kOd4mleabHhF60pw0E/gfPOAWwEI1G2JkwRUo
         EDQv8pSvSgs5tD5w/MfE9Mvc7lb+O67BfL7B40fu3zEiMFV4n+Mhk9p6uMqBLziiOY31
         tVjkpSLSQ+ZspVjD52TZ1C6e1VMHp+GKpWEYgz7j4TbRu7UJxd4h7NpXabR6RWPd9JjJ
         oMjQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=I5c83xHCuI3P/NApDRFd9PvCQ4vMjxTSDUkYBG9kH2Y=;
        b=pzO5MhqMx97FY0qXSLWH2zIgvSPhP8CGnch97yftA8tEBqIyszFSwiI596WCBMXk+I
         01PGj3T1Wi4h/tfI26CSSTBOjENRoAXjTMdscAWDc9InM0JQS+cdRX0yYu4SGQg3DAfJ
         755UTg3qfXeUIXpE4H+cgWGyuxjEY5DvbsYVmvEFXTY6HwA/gdzSJHxRwNfYe6BZtswV
         nb9BzDL11bvAshZD9JCnIsINr3LaaggJpPSiqtv18JpAhRtkeC+b/NFwFp/xr/+eYHes
         N6Mm5PkWOjlX4+/jSQ9cVmWjqPIcM76BuAog3qSRgU+Ikq3Hji3x+xs3k37JTa7bC1SV
         3jeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=I5c83xHCuI3P/NApDRFd9PvCQ4vMjxTSDUkYBG9kH2Y=;
        b=Dn9QHWxhfdML8sHG2CMgFg5DjDqVrDefL5pf+yss1qI5ee7E2l+GO4MnZoVa/zQCqO
         czTWHdkeT0HR91lbJdwedY6OFyebv2uiCfaTduP76t+XZkq9JfSQonQj7xCqcyS5/UHz
         MzwFTWypqoLAXhdQkUD1KGbqok3OaPvN3v6YPcgKtTpuXJJRz2jbNNS5KO7nxhMCfqkn
         qAd1Tn/Suod7T7wpZ4Jvh7sFgOdqsRnArUPbwhqIXDBa9ZkKdDGmge+HsTbO5jU9GDJ0
         6QzD6oskPkmzNMViJ9dRKuQdcU7aevFurT7WTy7drsJl1JQgjlTejEbIvTGyohVNjJIx
         2HNg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530BeRwT1JkQTMLVE1ZZl4cVceMUwSJEIg1717iv/mIBmbKwteSJ
	TkM1w5SQzB6N/509gbwX/ao=
X-Google-Smtp-Source: ABdhPJyLu4ZP8JXvQf6hhmKSy4RRuPGTWnRRBozndJptiDdQpnG7qNvOcq/wYVlH8mFqauEN00rUCA==
X-Received: by 2002:a17:90a:5d85:: with SMTP id t5mr1936889pji.154.1593154371341;
        Thu, 25 Jun 2020 23:52:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:384c:: with SMTP id nl12ls3624838pjb.2.canary-gmail;
 Thu, 25 Jun 2020 23:52:51 -0700 (PDT)
X-Received: by 2002:a17:90a:df8f:: with SMTP id p15mr1995053pjv.164.1593154371005;
        Thu, 25 Jun 2020 23:52:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593154371; cv=none;
        d=google.com; s=arc-20160816;
        b=oTEnFk9h+ywl7tObgy90On+6MwkP7BI3jSMMNsQqRUy0GzDfqlEQANGKTm7Ns4yiX3
         4jycBcUFPxv3VLqPwPPYYQAi6K5bEBp9JC1lThcOO7VWRj0nC40SLDr8k/9xbDyy5PMv
         S4gZOznxUar3Oi7TtW1sFsOmSpqwW1GXfHZrLMLQnKoTOUxUeGWJHA+IBJUdRYGAfOhI
         qvJJcdonv+Z1uA0elMBT11CaHuyrIf2k5cCYZemgxPcCqUBePrrfAWh2WpEoRuNQSSMN
         yuz4uAC9y6RoIrPHzNvc4L8gTvGj+8bwJ7ve/blLZIa3fLFRMvvjYHCxKpCUyTHEJDPw
         lHXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=qJtsXy9mC7/pKufhaTGbW2CZ1AND1qbdt8LzPm3EIxc=;
        b=cBxcSHxiQEiG3Zf7ppW+DCqPquwffSNVtWHG9YZJqP/fPbsNdKykTMtCwosl2ql+M1
         gsNc31l72XJ6C6uezd8I3PJU7oHUOyIzNLth89D44LMNWZ8iTWHhzhfFaaKSZqJm2nsj
         ttcFTeiBpY83NGXBoeS0UDTM2szDGzzx0bwrdYVFW3v2PQu7ixpv4ytdLtkEJGyb9PHQ
         Zfn4u5fdVRLmzkQJGnar7iXmRqx9MRFKibC8yWJfFFuVhKgjylgQMBeHqL1EZmLTjLo5
         GxOrLqjX00CYsvpNgrd+HD1zENjHkmS3gy1A/s3J+MS9JUyNq8hEtfuedRhCnNevWg6n
         SJQA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mVnXs4rb;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x244.google.com (mail-oi1-x244.google.com. [2607:f8b0:4864:20::244])
        by gmr-mx.google.com with ESMTPS id y9si1261927pgv.0.2020.06.25.23.52.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Jun 2020 23:52:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) client-ip=2607:f8b0:4864:20::244;
Received: by mail-oi1-x244.google.com with SMTP id j11so4549960oiw.12
        for <clang-built-linux@googlegroups.com>; Thu, 25 Jun 2020 23:52:50 -0700 (PDT)
X-Received: by 2002:a05:6808:aa2:: with SMTP id r2mr1115333oij.162.1593154370316;
        Thu, 25 Jun 2020 23:52:50 -0700 (PDT)
Received: from ubuntu-n2-xlarge-x86 ([2604:1380:4111:8b00::3])
        by smtp.gmail.com with ESMTPSA id c1sm6099493otn.81.2020.06.25.23.52.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Jun 2020 23:52:49 -0700 (PDT)
Date: Thu, 25 Jun 2020 23:52:47 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Herbert Xu <herbert@gondor.apana.org.au>
Cc: kernel test robot <lkp@intel.com>, Tomer Maimon <tmaimon77@gmail.com>,
	kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org,
	Daniel Thompson <daniel.thompson@linaro.org>
Subject: Re: drivers/char/hw_random/npcm-rng.c:166:34: warning: unused
 variable 'rng_dt_id'
Message-ID: <20200626065247.GA2956367@ubuntu-n2-xlarge-x86>
References: <202006232136.vz36SNV9%lkp@intel.com>
 <20200626064225.GA6023@gondor.apana.org.au>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200626064225.GA6023@gondor.apana.org.au>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=mVnXs4rb;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Fri, Jun 26, 2020 at 04:42:25PM +1000, Herbert Xu wrote:
> On Tue, Jun 23, 2020 at 09:58:39PM +0800, kernel test robot wrote:
> >
> > >> drivers/char/hw_random/npcm-rng.c:166:34: warning: unused variable 'rng_dt_id' [-Wunused-const-variable]
> >    static const struct of_device_id rng_dt_id[] = {
> >                                     ^
> >    1 warning generated.
> 
> The kernel is supposed to be built with -Wno-unused-const-variable,
> so I guess this is a deficiency in clang.
> 
> Cheers,
> -- 
> Email: Herbert Xu <herbert@gondor.apana.org.au>
> Home Page: http://gondor.apana.org.au/~herbert/
> PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt
> 

No deficiency in clang, it's a W=1 build, which explicitly enables
-Wunused-const-variable per scripts/Kbuild.extrawarn. The 0day team
decided to enable W=1 for all build tests, hence the comment in the
reproduce notes. A thread with discussion:

https://lore.kernel.org/lkml/202005200123.gFjGzJEH%25lkp@intel.com/

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200626065247.GA2956367%40ubuntu-n2-xlarge-x86.
