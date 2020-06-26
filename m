Return-Path: <clang-built-linux+bncBDTY5EWUQMEBBYVR233QKGQEWNNP7FA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x340.google.com (mail-ot1-x340.google.com [IPv6:2607:f8b0:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B16F20AC75
	for <lists+clang-built-linux@lfdr.de>; Fri, 26 Jun 2020 08:42:44 +0200 (CEST)
Received: by mail-ot1-x340.google.com with SMTP id t10sf5264310otl.19
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Jun 2020 23:42:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593153763; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZzMCIHkjEWXq5x2IagqkEBeGynuN89+nBjg+0a9V+aqFz1Oz98eY/XykPbNP/SaazY
         FnHfksrlTitQAhSCpuFDLAnI7PRpppEo/oRDYec16PD7m+x+ouIxpm0qe/1rIlc1fCmY
         oKOJ1v03duFUEf32xuayhcnLNvsziEjCQY96uLZyClsIUxX8Bl6dlcgQnZh6AMAN7+AA
         yWJRYqoqrS/Pd4fV4DTL2sSVkjXeY8t56m2GPNpgvVm0DCqUdF2f3fydkhuVkrsqUfBr
         oN3LJpncTnEnHSOaFbI4TTv5FUhMsp2E5OgnsEQ6wZFDj1B5e3Y/1rlaW5BafC18hlIl
         qMww==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=CEpqjB678jnJK0xCAs6i+tHfmnDa9w3z6O1dQ5e1vhg=;
        b=F5x0A8/1/U5kI92NaCNxs8mqmzE6Ys9R4pc2Pi7hN7whZw9tIkaG1WpbZ1rwEa+KG6
         xIqXvMfdqI7nHfb4tyTwoez7Gmx5dvgaTy6jcv3wr9nzG3womOC20JOpvsKqxust7tDt
         myCuxRJV89GtB1/s0taYqPFRlZjLE6LwYf0GhYGSSUY00xeNOf97pA+YW1ci8JlluGnX
         RQ21ztkT/7hDggnBtXuobqV/GFY9pDXXZREB+HnRGGD9WfhaHcMc0NynOGeR9nMOIEIR
         qwNUaMnkSILwCnKN8uUHIU7l08cZ/ZUXYEaI7uLyzjUCH/i8DHl3e3tGxtin0Wlgnjh4
         P/kA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of herbert@gondor.apana.org.au designates 216.24.177.18 as permitted sender) smtp.mailfrom=herbert@gondor.apana.org.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=CEpqjB678jnJK0xCAs6i+tHfmnDa9w3z6O1dQ5e1vhg=;
        b=bB4E8BbjaOK8U+WLlEdiypJzr4/zUTRZD5aP6FgDbnOQ6ZMqPWwI+WnHZuPkJZrFN+
         wJfTyzN7X27cr6Ku4AU2bjiJM+vdLcXmnhMSHwFHwvFbw6KuI0CGGQBSg2X7k19q07en
         x5uT3tWDN36C5eedK5pPzkfJ7JgqIH7sUqq/n+wqxLCLjhT42I3FSsVUGElhP8EV3PzS
         loI4vGgo98rtF5ZuTscxh29luWGoancAIrHuEETrLDjCZ9KJivg/mdTfQlMO1uXkRukS
         kB58LXQDhdEPJjcIpEQum+qxKnlssU8qIcH5IRbMIi0Dm1PKPpvILgNND45mc2y4lpaB
         xhtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=CEpqjB678jnJK0xCAs6i+tHfmnDa9w3z6O1dQ5e1vhg=;
        b=TSmG5ipQ8UOGh8zibTbWOyr/hI0EgvrFHo6tOFcIN3bKhF793zeQbSvn0742Bw0Bla
         4/rdL7VAH7Oam2t7p9+O+Atb6dh9aXwy6/PXYxo1OFIEUkCRhGpQpgMZjJvqyyiM4bEw
         RPWcfE9aysxu+Pp+BBLaN8a42/WmdcJrr6f6oh8y+u5M+kn3r8TGqSn5B5IJ6oBFxm9+
         yptewbH43lG9TbDW8YjuJYoKzRRCKTECj5f84J7h2blaVCfYsrJn2wSN4qSw0Ovzu5al
         4EKqzgND8C7kFubvcpY9IhGXPSKxLzEmy+980fLiiOX86D6LIkg3Vn+AZ2aNAhJF1rSq
         LsoA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532zPD3faY28u4GabjBXW1AI+F7UYjL4AzZdS5/MGXkH1F3BvNA0
	ibqQcqPBInOLDbc75t9kTEA=
X-Google-Smtp-Source: ABdhPJx2s2vy8uFOt8b4uzQnM/GdfxS3zkpiVdnpUsWpZ3GN2Vgu19v8a7+a6jST3v0td/f2NiM56A==
X-Received: by 2002:a05:6830:1649:: with SMTP id h9mr1169612otr.225.1593153762936;
        Thu, 25 Jun 2020 23:42:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:eac1:: with SMTP id i184ls1616879oih.4.gmail; Thu, 25
 Jun 2020 23:42:42 -0700 (PDT)
X-Received: by 2002:a54:4102:: with SMTP id l2mr1308687oic.29.1593153762152;
        Thu, 25 Jun 2020 23:42:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593153762; cv=none;
        d=google.com; s=arc-20160816;
        b=PP/fbuasJ23QaaAEfXDcSrMV9R9vtJpAs4+deGPHTly4RHnLpqEVtM8ohsKXBLVH9x
         KBLoMrVP9SCe3Op/PcMRuefmV2lDtfsx92ulx1m4Slvaj5PxxZmZyKlRcnuGkzKooMVw
         9No/Vy8JcF+fjd+oXB4geYqPST7dQmke3kd/WsDrl7i5Y+OUhJnJkWnxGex2ffInKC0U
         JGMC8L69cncmhd7V9AIe2iVI/UiaNQDpxUDVsHbqRrVZdinaa6jHqeRmFcj48aWv05C7
         /5B50F8mydXIQtr9YVDOrduiyIidX1rqZiZSlL6Pz+jN+cOHDac561YPk1Gr77ksJKAl
         i5AQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=d4cJxhEf1MFTiiP2hY/DjulCDfNuTvZbYaewabB3lxQ=;
        b=q05IrYPJD6sw6ed8459FrYzsH+5VZWdkptZtX13aYJAyDj2tKt/QZ1B2LCeLLxbYxi
         6z94xJsZDnjk2AacPOScp5j+ChmxUZAFPleTyyV5WNx/IivDVWOXBDMdCQnJ0Zv9kqvo
         qNWzDCYg+Bxt+JRvFTabhydZVZ+rjlu+KHSPqXMf+UJgeAd6NthddPpYDlQmehxxTCPZ
         b0S/7GWRhQ46uDDCvHiRdJ6tJnDErIPe99LbX2GyLgozFnC7JqcDpy+LlobjTJSkjxAD
         8SS/8PlBNSg9/DkwUp4t7F/KmT4DUW2BWyGU0NstabOmJsYhNqmQ/Tv1dlPc3Ppraa45
         xMqQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of herbert@gondor.apana.org.au designates 216.24.177.18 as permitted sender) smtp.mailfrom=herbert@gondor.apana.org.au
Received: from fornost.hmeau.com (helcar.hmeau.com. [216.24.177.18])
        by gmr-mx.google.com with ESMTPS id m26si1249338otn.5.2020.06.25.23.42.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Jun 2020 23:42:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of herbert@gondor.apana.org.au designates 216.24.177.18 as permitted sender) client-ip=216.24.177.18;
Received: from gwarestrin.arnor.me.apana.org.au ([192.168.0.7])
	by fornost.hmeau.com with smtp (Exim 4.92 #5 (Debian))
	id 1joi49-0004uf-T4; Fri, 26 Jun 2020 16:42:27 +1000
Received: by gwarestrin.arnor.me.apana.org.au (sSMTP sendmail emulation); Fri, 26 Jun 2020 16:42:25 +1000
Date: Fri, 26 Jun 2020 16:42:25 +1000
From: Herbert Xu <herbert@gondor.apana.org.au>
To: kernel test robot <lkp@intel.com>
Cc: Tomer Maimon <tmaimon77@gmail.com>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org,
	Daniel Thompson <daniel.thompson@linaro.org>
Subject: Re: drivers/char/hw_random/npcm-rng.c:166:34: warning: unused
 variable 'rng_dt_id'
Message-ID: <20200626064225.GA6023@gondor.apana.org.au>
References: <202006232136.vz36SNV9%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202006232136.vz36SNV9%lkp@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: herbert@gondor.apana.org.au
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of herbert@gondor.apana.org.au designates 216.24.177.18
 as permitted sender) smtp.mailfrom=herbert@gondor.apana.org.au
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

On Tue, Jun 23, 2020 at 09:58:39PM +0800, kernel test robot wrote:
>
> >> drivers/char/hw_random/npcm-rng.c:166:34: warning: unused variable 'rng_dt_id' [-Wunused-const-variable]
>    static const struct of_device_id rng_dt_id[] = {
>                                     ^
>    1 warning generated.

The kernel is supposed to be built with -Wno-unused-const-variable,
so I guess this is a deficiency in clang.

Cheers,
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200626064225.GA6023%40gondor.apana.org.au.
