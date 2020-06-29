Return-Path: <clang-built-linux+bncBDTY5EWUQMEBBMWA433QKGQEESKD6UQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3f.google.com (mail-io1-xd3f.google.com [IPv6:2607:f8b0:4864:20::d3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CFF620CD1A
	for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jun 2020 10:03:00 +0200 (CEST)
Received: by mail-io1-xd3f.google.com with SMTP id i5sf1693919iow.1
        for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jun 2020 01:03:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593417779; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ea0ZZBWUevkhSDcJW8E5coj6zYLjArkQEB1iVGqgc8WL6I5r2UHx7v0ilZaqQg8l71
         O1tO/HOm9gUV4gJ8/FkzscM5e9HfzJwOt7IDGEzIRSoOlZrXKJEClEBU51dFeMjbSS6U
         EWlCAoOS+vMHeT8JfQX0ye60hFD/qC2eYM6AUrzYvSBhMAxrXQZNl2w1ZThVryFlo6g5
         zo6nWtpkt/lbyUJsA7M9pNE5hRPRebdDANQE8JtdsH82HLXBKYG7EChlmMLYC3VXZvlg
         Cfo7H/LYZOQnFJfchNGTNUgbue5E0Zk13jgxZWJ/1dlP9msL4yx3tUru9hwk5GwpfPvB
         uIvA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=pSnLLVZOrkRgjWZTeLeRDwVWfvUYShf4LcRIs25gPp8=;
        b=BeILLHFCT/nWF+GUjyoKEs/j6Lz9JizQqeNu554VDgH5ONK1NVFEqJC5ZWM7v5CDGJ
         kFlxsXOcd6N8I95yExIf8Egm0PUNhrcWPbh5VZ+fye4YHNc0Zy91HL9QWcNtwNIZdoKs
         m/HnDcMi+wo9iZlmNS1eduB2IGFYVBcq5NhMdKoiOWC/VfbvwhkEkjLyITS3B3STtPKx
         cTNJnpJF8vcHLH7+PM5UPtiyxkmBUohNncJHPeD/8UboL+BybN6j6bbgoO1ufPPvHKsM
         cY/vTl3HSBgsbkg2oERQB02XIVRIUz0I28jab0KSRNcT5jJTf7ICJDt4qnU2lWzFYJR9
         +zwA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of herbert@gondor.apana.org.au designates 216.24.177.18 as permitted sender) smtp.mailfrom=herbert@gondor.apana.org.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=pSnLLVZOrkRgjWZTeLeRDwVWfvUYShf4LcRIs25gPp8=;
        b=F6s/2AFAf3sEftIaJHH/F4Zy58d8qnT9pZGsjGDtDlhHvVTV/SzIPGRx2awbBm14dA
         G6ZhCvGLgKbdUVYmU963IebuhJEA8KNL4ZQxp0bpUqf0sgUuNDqrq30iYplYvXV+Gv9D
         p86uF+pFOVlSTZYW32rbQ9AkJmXscqEI0GThdDP1J+4LPi+wq4yPLP/J8rwF1UmcC7+I
         dLA39bGXWSkltbzMIkM6z6ef3up4AwiDSRKhQN/343D0mRVb7IA/eP9unf7p9om/Xn3S
         DzxyVd1jv+JUd7dtjLVl8bXgnHt3Px592QgxqH4fb3tmzCysQUS2OaO4Xs8+/PVDUhxh
         uN7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=pSnLLVZOrkRgjWZTeLeRDwVWfvUYShf4LcRIs25gPp8=;
        b=XovXhsAKyB2L2J1xCBHWgQjuG54MRbvz/snHJjFTMGTL3pUXOG26citbbBMoEs4zxb
         mM/ZwjVlYYopLMxKM9Ayj7F9Vdy11ckqOet76fMt7B48hLnwVH6PrU40wOyLeT7EyjSW
         ac313fvaiGRd/Zof4Fl9ifiBgwRFP4pJ2MeMsLhovvKEzn7lkTEMIzFuZtAPm4/v0Fdr
         f/yZ+u+LfiRo2HjsuvGL5xKelrKTRSLlOztmUjRonRhvsTQ307BvsODbzArERQfNW7bq
         iQT70higFP4yj7P922vLSPn7kVnlwlsIfm2BQTEa56MhGa6dYnVLzL6xHHlD+zV7c/gv
         kz1Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533Z1DWm9EEfgDmSIxLPn3erdRo/cU1n1Zmru7tJWZobeeofRBtx
	IG7gqWERqZvEg8V1+Vr6KbY=
X-Google-Smtp-Source: ABdhPJxIqXYrEmCHlONzMinQDf6PFRRo9FbSkXrajaPtxvcFLspse/6GrTtNJD92mKlemhR/w3WH6w==
X-Received: by 2002:a05:6602:5db:: with SMTP id w27mr16151571iox.58.1593417779208;
        Mon, 29 Jun 2020 01:02:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:1389:: with SMTP id w9ls2242968jad.4.gmail; Mon, 29
 Jun 2020 01:02:58 -0700 (PDT)
X-Received: by 2002:a05:6638:168e:: with SMTP id f14mr10267512jat.64.1593417778511;
        Mon, 29 Jun 2020 01:02:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593417778; cv=none;
        d=google.com; s=arc-20160816;
        b=ln3QGK+MLWjkeV/ttHlZwnKdg0w1Ol508NG0fJK7dPm7lRqcBeA11f+5C+xXLd+AQP
         loKY8JnCtLKiC+zMKXVYDSHPWAfx/oUXTfFjCV5IgaVRyO5DVVM0SEIoQh1vhkRSIMzM
         HxS9Mgif1s2XRHzP+KUG5V3c5+qSsELk34Ahowz/uQ8f8PICNOA0m74ydfWm8+yk9xQV
         zGa8SXfQjvApNMPbpfI8Y5QeMf48CP/W5jbFgKyEGNNo8ThMhu4B5QosA+nQda4vGMQq
         xvEYVRpykZgxpwnrMGPJt6Noec3tbcPYr2amTxyBxpmkaHRrTslNsJQSbb5t/J6cmOEI
         50+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=mremMeb59tRNXSghkhkMkIoQfSeWCVQsZ0y4LprLAn4=;
        b=mXNHPQ89Ym4J4eMmUrRoq5yHEHXnS4/1H9q2a4RlVi9neL/LJHsx1o3jIFWCiwSy54
         8CpSZrC7UYJJKclgjN9K/m01fHOg2UWaem2XZQK5h5ftkpqY9wJAHFmYVaZA164S75PP
         mdbCqYcvBX6MHGm2MDA1drzVyrXrnysv5U+4031k/H4EDQULHo4VmnKRcMZVg8FZ1Z3V
         GZt4sX/kj6qxwKRXFjjGtHQcOTHPhmF4RBZcjWtFFfLbN/XTlUNpkj/rllMd7GNyEDnU
         tKsFyr1jsAfuVYmvQqAWjVqImFMBfL+cANM2C2y1OUmcBAa5bs+vb+C60idIm/TzG93n
         kPpA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of herbert@gondor.apana.org.au designates 216.24.177.18 as permitted sender) smtp.mailfrom=herbert@gondor.apana.org.au
Received: from fornost.hmeau.com ([216.24.177.18])
        by gmr-mx.google.com with ESMTPS id v16si1445072iol.1.2020.06.29.01.02.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Jun 2020 01:02:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of herbert@gondor.apana.org.au designates 216.24.177.18 as permitted sender) client-ip=216.24.177.18;
Received: from gwarestrin.arnor.me.apana.org.au ([192.168.0.7])
	by fornost.hmeau.com with smtp (Exim 4.92 #5 (Debian))
	id 1jpokF-0003vM-Nn; Mon, 29 Jun 2020 18:02:28 +1000
Received: by gwarestrin.arnor.me.apana.org.au (sSMTP sendmail emulation); Mon, 29 Jun 2020 18:02:27 +1000
Date: Mon, 29 Jun 2020 18:02:27 +1000
From: Herbert Xu <herbert@gondor.apana.org.au>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: kernel test robot <lkp@intel.com>, Tomer Maimon <tmaimon77@gmail.com>,
	kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org,
	Daniel Thompson <daniel.thompson@linaro.org>
Subject: Re: drivers/char/hw_random/npcm-rng.c:166:34: warning: unused
 variable 'rng_dt_id'
Message-ID: <20200629080227.GA11211@gondor.apana.org.au>
References: <202006232136.vz36SNV9%lkp@intel.com>
 <20200626064225.GA6023@gondor.apana.org.au>
 <20200626065247.GA2956367@ubuntu-n2-xlarge-x86>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200626065247.GA2956367@ubuntu-n2-xlarge-x86>
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

On Thu, Jun 25, 2020 at 11:52:47PM -0700, Nathan Chancellor wrote:
>
> No deficiency in clang, it's a W=1 build, which explicitly enables
> -Wunused-const-variable per scripts/Kbuild.extrawarn. The 0day team
> decided to enable W=1 for all build tests, hence the comment in the
> reproduce notes. A thread with discussion:
> 
> https://lore.kernel.org/lkml/202005200123.gFjGzJEH%25lkp@intel.com/

Fair enough.  I'll fix this by adding __maybe_unused.

Thanks,
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200629080227.GA11211%40gondor.apana.org.au.
