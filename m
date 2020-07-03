Return-Path: <clang-built-linux+bncBDTY5EWUQMEBBR7R7L3QKGQEFFSOCTI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93c.google.com (mail-ua1-x93c.google.com [IPv6:2607:f8b0:4864:20::93c])
	by mail.lfdr.de (Postfix) with ESMTPS id 7270D213320
	for <lists+clang-built-linux@lfdr.de>; Fri,  3 Jul 2020 06:49:12 +0200 (CEST)
Received: by mail-ua1-x93c.google.com with SMTP id 14sf2526344uak.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 02 Jul 2020 21:49:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593751751; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ce4yD9D7eMRqNz5VP/CyoZqLG4KzLEeRl8a645bGNxGPAaNgyI0IppgS7lMS7fvKXm
         XwgyTGIfTwaVcEToOLEwiTUCwiR5cNIOxp+M9KI9pgbOxsP5IEoQ29NoParr50eVsdUq
         4sA0vQxfuM514hfOG8nhhCF5cd/grfToWoTfwY1ytS3FY3mDZmqiMs7fmaBzuk8gZvGI
         DlG5c5EpTdEMhZTmtPxCS0WKBTReq1rFWCUOfYIDWa3vrNqW6PZASc++DdLq293aHrAc
         k6zktU8SC0NJKKyzZcx7KZ0ZyeZ6F1G3gCBDqvOW2Z3a8NvnPX6gPCBHlDRR3WNyGxyj
         JdqQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=hpTe0CM63C7K4gW+eQTlGV89dvOiVMA7ZCsjLJHLR5Y=;
        b=nqxES1fIy2CyBRxYMvp7pfO+aZmSDQqAIZJeNqK0R9LWngwJBV6eWVOIszkCvRKjUr
         mGIe/5PA4SthcfArg3Cg9RE9OkrbX25cvGC2c5pZ9U95scNMGLY3lhEtmhWaJo2PFdj/
         wvN7LAM2cZV3irZX0cVI9hTVQrB7MT8E4a3+/EgDo3olyCPLh10QwIYerXQ8qLELyPTh
         hbASV566VLRZ+qRWC/7mV0xgX4wnwFpIee1RjWOIWo5eBhHK/7WFfh3x++zjY6PNeex4
         i7TV/KSwlisSZ5eHsbzWBKDU+Q3hD2holWekB8FbLfGbVZ43CqnYwNh2wwRtgXDo6d9l
         EANg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of herbert@gondor.apana.org.au designates 216.24.177.18 as permitted sender) smtp.mailfrom=herbert@gondor.apana.org.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=hpTe0CM63C7K4gW+eQTlGV89dvOiVMA7ZCsjLJHLR5Y=;
        b=DPHf1QzCHfcicjVgSOPB6aEJC8dOUJSnzmrSc35TDas3eMKlByYpxEZrZMRNq11xEe
         8mFFBmfCnJxYGqqsBQ6vLE2Dx0+BlIliA+RDbKJA599ku9amyf2RE2ZAcugmmsBc93JB
         vDQQSTjrjMK4DMzxyBd2xqfUlv/b2Lb9ZCTtyi9hQyy6b1HYjuvrwBiJwb7yr+r/esKD
         haWRZMfciuhInLfpo5GSxhKznmNKRt7Hv91Um8B41Rnux3g8z0IEADk96SZ9Mmiv/+gU
         5JbpVuyVNj5rvr5kIwPFC1lVkFxcZzuSm3zMJOASPhD9w4JaXqnS3Q06pUC1J/VnT+s5
         zIeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=hpTe0CM63C7K4gW+eQTlGV89dvOiVMA7ZCsjLJHLR5Y=;
        b=VX7PG2bmo7VNrpRcIOlIqkyu51f8JtMPJQeS1XNPNLUO5n8KDf38Pd2dCkrJNXAmqV
         QBuZAm4xaR3EQzDCWCpWpLxuRrFjYSG5qEe0cBvMv8Z9Ro6MepJzQVBM98EB5EPkctU+
         JoLko85JlOnmEf2Zzj31jVdoyJugH4UfO4HWmuSEoXL/r3/+P+wVk9SiiV8m+dbRDesK
         DgIaTGa3Es4NWiNZMe9LA4N8Xk9W145LjgQKqchdB+iCvgScz5qw9jGj2FEeEOKKMLMG
         xpEJ4IxBs9I8PiDCj1LO7KpPmylMpQk5WlXHDk1Af6QN1iF43HbreO7jAZTMbemL5OwK
         /njA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533nyN/Nfp4Y0NBXouG9L0EdTKiuVyuG1ImBWeoS9rZt/C4zvnDa
	bJIn4MBUAYUQpl5z6ZKdsl4=
X-Google-Smtp-Source: ABdhPJxb3ebL0Vc2CYCalSMJmm9uq6l/90ho5ZWWO9roifThXglJ1o9qQdCkNLAOi3QKLbCewVnMwA==
X-Received: by 2002:a05:6122:104c:: with SMTP id z12mr23125497vkn.37.1593751751144;
        Thu, 02 Jul 2020 21:49:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9f:3e05:: with SMTP id o5ls619618uai.8.gmail; Thu, 02 Jul
 2020 21:49:10 -0700 (PDT)
X-Received: by 2002:a9f:22e1:: with SMTP id 88mr24824785uan.19.1593751750774;
        Thu, 02 Jul 2020 21:49:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593751750; cv=none;
        d=google.com; s=arc-20160816;
        b=MHFS5zKAMECbO167tG2I/ehaMA8w16r23cBQIg7KbhpvzKr0v3pphRRP3D4aWcmKa7
         wTN3MBLyeN5CiydeVcLlJI7qw6GLJMqUbFyzickbCjvlCyTIu3y7SsSh4DX7J1wDzhjF
         Rx1YajzTBciOIsmvxXH9HCuC/eI6MlV92/D8Xy6OFRcG3aX2yc7T5jnOduZWPiGnzdPz
         /TUeIZS1eJNV7SmDToIBeHz1jp1dZqUehMS2D21sQIr82bFuo61RT2GRWZHG12ysW4ir
         2YJIW5zpCmkBLgCf0+z8LAix38QnRfCLYtOaoH+mQ1yMnBGHj/QwWlT3w8XtzBMCXTT3
         ntrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=0blTd17lYIRtlrT2juI8+tEtg8M8qxr1GoLFf13FKSQ=;
        b=zS/ckYwSME1vLk4rw5UJlFHjdKRg4+QFc396zCacyRgNmOrqNn5waqS/UoMqLJpR4H
         akhSifkYgj6y1O7vmf7iGBnOqYwSqlF1+A4f3H17yfXGTw4hkC6GlumQVCA80HQ1AR9d
         gRrPp7NvUjkwKWQMO212WI4fIG7YqdJ7O3fXAZuen7ionDYwjClaG47ujCYob5wmceNL
         MegpJNP40wxf1+5/T4Pg6yt6JaSqj2xMbQbKZB8mdj4xrh4oWHqE+Lv6I1XyzHt13aCb
         7xhSPJiA+6eDtIK7pmPV/SEic9UdQqdsjdBI1VQAxA421b38Uo7riKoFhJlltETu71V0
         qqJA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of herbert@gondor.apana.org.au designates 216.24.177.18 as permitted sender) smtp.mailfrom=herbert@gondor.apana.org.au
Received: from fornost.hmeau.com ([216.24.177.18])
        by gmr-mx.google.com with ESMTPS id s7si189720vsm.0.2020.07.02.21.49.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Jul 2020 21:49:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of herbert@gondor.apana.org.au designates 216.24.177.18 as permitted sender) client-ip=216.24.177.18;
Received: from gwarestrin.arnor.me.apana.org.au ([192.168.0.7])
	by fornost.hmeau.com with smtp (Exim 4.92 #5 (Debian))
	id 1jrDcm-000826-Fg; Fri, 03 Jul 2020 14:48:33 +1000
Received: by gwarestrin.arnor.me.apana.org.au (sSMTP sendmail emulation); Fri, 03 Jul 2020 14:48:32 +1000
Date: Fri, 3 Jul 2020 14:48:32 +1000
From: Herbert Xu <herbert@gondor.apana.org.au>
To: Jian Cai <caij2003@gmail.com>
Cc: jiancai@google.com, ndesaulniers@google.com, manojgupta@google.com,
	sedat.dilek@gmail.com, maskray@google.com,
	"David S. Miller" <davem@davemloft.net>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
	x86@kernel.org, "H. Peter Anvin" <hpa@zytor.com>,
	linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] crypto, x86: aesni: add compatibility with IAS
Message-ID: <20200703044832.GD23200@gondor.apana.org.au>
References: <20200622232434.162730-1-caij2003@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200622232434.162730-1-caij2003@gmail.com>
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

On Mon, Jun 22, 2020 at 04:24:33PM -0700, Jian Cai wrote:
> Clang's integrated assembler complains "invalid reassignment of
> non-absolute variable 'var_ddq_add'" while assembling
> arch/x86/crypto/aes_ctrby8_avx-x86_64.S. It was because var_ddq_add was
> reassigned with non-absolute values several times, which IAS did not
> support. We can avoid the reassignment by replacing the uses of
> var_ddq_add with its definitions accordingly to have compatilibility
> with IAS.
> 
> Link: https://github.com/ClangBuiltLinux/linux/issues/1008
> Reported-by: Sedat Dilek <sedat.dilek@gmail.com>
> Reported-by: Fangrui Song <maskray@google.com>
> Tested-by: Sedat Dilek <sedat.dilek@gmail.com> # build+boot Linux v5.7.5; clang v11.0.0-git
> Signed-off-by: Jian Cai <caij2003@gmail.com>
> ---
>  arch/x86/crypto/aes_ctrby8_avx-x86_64.S | 14 +++-----------
>  1 file changed, 3 insertions(+), 11 deletions(-)

Patch applied.  Thanks.
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200703044832.GD23200%40gondor.apana.org.au.
