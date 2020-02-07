Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBZEQ63YQKGQEV2BMVJQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x339.google.com (mail-ot1-x339.google.com [IPv6:2607:f8b0:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CAD5155B38
	for <lists+clang-built-linux@lfdr.de>; Fri,  7 Feb 2020 16:55:18 +0100 (CET)
Received: by mail-ot1-x339.google.com with SMTP id b21sf1381045otq.16
        for <lists+clang-built-linux@lfdr.de>; Fri, 07 Feb 2020 07:55:18 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581090916; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZKGlbySEu7KsxjUdvUdtyaeuIwuTWbzsBpy1nzdqkXoeyThLxlbVsLJWUOa1u3huHa
         iXKOjC4KDOgVjPxJ28o4Eh9iTt1StQKTpPx/ltBpphsXEGroLosEV5lG1Qmb65rktbFQ
         rrDqtfHQmLWk2z7RD+/OZ+oxpIz82IQ3nlPVgomsiCJ7t8yZVfP/g6sKtf09ZCRhvr45
         5v5y12QNiTpZrmSVRHBC87eZ4eRSLTnN3BVjXuIsTbA223GjE4oXgk1SQFJIyrKagbGe
         XK5CrnUqiXH2TKpvBGpZPqgS+gVgylzah9dN6EYpYRj8l/3et3A0blbJTVz8PFVe4n5C
         /Y+w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=uwkmfCk+XZJNMt0NjhgPB/LWGQh4WAi7yTPZ2NxNVgs=;
        b=weVQXcmIxZYgnxtPC/BA7u1n9vYd9XwuBWGO3bjfJfKflibAgc5g5y0CYDMnnxhSNp
         1W7W6UHcLdn3ttUKwNDUptWhwzDpApL26vW2Cw5Zsy5ed+Yip0HvrwdSo3bf8RBZy84z
         rLML3wXp+rUiiGmSUasxIpntJmbBJI9OsBHNsWQMzV2++oDxersr8YqIhdAYbNw6uaFR
         ot5XJK2f5Dq8a4onrPCXOB7HD5+QJbZrdN066ee+IcqJCdwtln0+mfv9qQhaaCJOloq6
         nKGtBxQhHNrlMn+1mG2bWUN6/KxO0rAvvU1QIpjstTlV6cs7ERWudANdsk2j4UzNjhcB
         TOhA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qObnlMK6;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=uwkmfCk+XZJNMt0NjhgPB/LWGQh4WAi7yTPZ2NxNVgs=;
        b=lw4xMC5Zi0i2LGWwSMN/A4fTW1FVAEAivghIf8pSYceNYNQTcpJLhLi3txQUWUHEBh
         yohfSMmw0b1QwSDKGwRdoWivxrdvsOfvGt8D7CkdUQOrBstrCz96GG0hqG1DpCcgSFg2
         hIWiEe17Kljd9HX5GuLnK/Qwj1wSjIMCUOBI7Vu8grmK1FO5VpT8YJ75Wk0JYdUAxfSq
         NAPJmrTW0yPLk4fspYlouPXgy7hmU3VoLSfw156rsxT+pAuooBtpXqknubDPVvQ8mxXW
         /70y36gjAnasuDnZjj7OyUDsMQtYV2l9jgo0ePf+xBk0DjgacG3U9BJscbZoWIQnZuEb
         sbbg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=uwkmfCk+XZJNMt0NjhgPB/LWGQh4WAi7yTPZ2NxNVgs=;
        b=BcAbVBPzLYrnfWw4eGl8oL8TmsLyWm6vN2g3VcMUGIyripXYrvfwqCvZnZ/LVnB4Ap
         qBayHN1+sLuyhLwPyGGJXVngS+yIS3GAlvkL+SPCalkybgYcPVOGy57l1S23Gv7qMHHB
         V8trHKLb32vYBCCka5U4gQ6L/pQYxpPajNkks6ei/XsxEzVCKigatt7TcnF6SNZGNTK4
         70ebWYmmRi4y4f2vXkt07NQ2irD8jx175Antfb57glQPdSZdzvDTUv/m0WLSxQS/E8yo
         77YxG8zFl/krwzpVEb6PPkXfQjOBqIf+t6845Ug7t6m3b6X85sIT6dympmt1FJFbRrzy
         mhSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=uwkmfCk+XZJNMt0NjhgPB/LWGQh4WAi7yTPZ2NxNVgs=;
        b=taXJpzwjCWV1CFo5mr8IkpHmsNANiKLoj/YR4L5Fub0yETENSrUoSwTn5U61FylO5n
         KM2m5fJWactOiIzL6F21aIuum24dqwwbGvA1ZykUnf3aC/viqrpKNprODfYvPnpm8S2c
         k3ymhZ8gunUevpXAgSin1UvFzg2WJiR/sgaQG30sNoSNV11lilAbBvC7atABocBbbVCr
         u5cF8DweD96WkJDuNNjnl/Lgh49RFFHOVOy5GQEMTDteRRGH6rLIXQvYh4ya0yCzpDx+
         yCdXlEQ0kFrdq3jUdWwpp7V3+ta2xj088QXE8DjGGFILDKqydgZfOmFuSVbZqpaIq4SH
         QBKw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXsQaOdipXNO2Bi3s5qhJ7DNRqmLTCYgVrUH5lPgQzQ0ViAb+oO
	7R9Tb+7N48oOISkmjtMOw18=
X-Google-Smtp-Source: APXvYqxioj6CluuoL14bFfeghrHk833AcyP+Gq3wLZUTd7+LbBX7GdPrYnAKFamp1y5rFUP8OaOaAA==
X-Received: by 2002:aca:ab53:: with SMTP id u80mr2452808oie.94.1581090916442;
        Fri, 07 Feb 2020 07:55:16 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:7281:: with SMTP id t1ls3001614otj.7.gmail; Fri, 07 Feb
 2020 07:55:16 -0800 (PST)
X-Received: by 2002:a9d:4541:: with SMTP id p1mr8874oti.199.1581090916072;
        Fri, 07 Feb 2020 07:55:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581090916; cv=none;
        d=google.com; s=arc-20160816;
        b=D+7nZBCHwhYJ/j5iaATv1VxLvbuE1u0+7+e1xT6rP2eXTeI164IBYqE66ZUlsaW1uR
         2T5cw2zfv2iPqEZYAuYzyFK6ONrCDW1ROc8nVe0GYL7Dl7cdE3yitl8eKaFOFn6fgLDE
         ckQ60TXTAxKmL2cavegN9qZucuv8o3S2yZdmFkxYXDtBFG2NMEpwcrhs8Ayf2ZLKzSQT
         CLW9qGp55iC6tzmcdJVmdPtlP994M04qeuFomFcCLIqFjtFQ2KP2ud/VdTN2clvS4rO+
         rru+WVaS4wDzvC0EVgU2BVRHz7z3W4eLWzUjWdiFVspHtB3ETs3uhCxzZYh6Xymq3MPU
         AP6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=+LNSiCPpNydIUncSmrJC4lpWishl0wVNc6IwQYhTCnE=;
        b=xkC2YGI/BYaZk+kIaw3RguEEBLSXr60as6Hjr1M1jyQHiyRYq7a6+ovEvy1TNz6l4I
         Ico9wE+cPgu4dbuGfyQqm1sH+ZtS9WLctw9kk02cuBnOgdHV6javAWTBZsln+w6iqsMx
         TIZwrffkZTxD3fHBVCyDVT23Zlh1ljZce2JubZveq/MYeQf01+quluj6IO7rsyKbgXet
         121DCaf04en1cQDnrr+AIUCCvyRQqpQDj1ZsXUo4Qnwftmmm1gV2GX6WpYbF0H8F+uXy
         ndRm8SkmCrYIakQ06bRcIUeWfHEbvVtIYJ69UlSN5tHrD14eQadaJpWNaaAL7WyMgRS5
         OctA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qObnlMK6;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com. [2607:f8b0:4864:20::343])
        by gmr-mx.google.com with ESMTPS id o11si211929otk.0.2020.02.07.07.55.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Feb 2020 07:55:16 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) client-ip=2607:f8b0:4864:20::343;
Received: by mail-ot1-x343.google.com with SMTP id z9so2584610oth.5
        for <clang-built-linux@googlegroups.com>; Fri, 07 Feb 2020 07:55:16 -0800 (PST)
X-Received: by 2002:a9d:7b4e:: with SMTP id f14mr3134961oto.355.1581090915717;
        Fri, 07 Feb 2020 07:55:15 -0800 (PST)
Received: from ubuntu-x2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id a1sm1205615oti.2.2020.02.07.07.55.14
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 07 Feb 2020 07:55:14 -0800 (PST)
Date: Fri, 7 Feb 2020 08:55:13 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: kbuild test robot <lkp@intel.com>
Cc: kbuild@lists.01.org, Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH v2 3/3] crypto: qce - handle AES-XTS cases that qce fails
Message-ID: <20200207155513.GA47742@ubuntu-x2-xlarge-x86>
References: <202002072251.BOSrhGhj%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202002072251.BOSrhGhj%lkp@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=qObnlMK6;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Fri, Feb 07, 2020 at 11:39:11PM +0800, kbuild test robot wrote:
> CC: kbuild-all@lists.01.org
> In-Reply-To: <20200206012036.25614-4-cotequeiroz@gmail.com>
> References: <20200206012036.25614-4-cotequeiroz@gmail.com>
> TO: Eneas U de Queiroz <cotequeiroz@gmail.com>
> CC: linux-crypto@vger.kernel.org, Herbert Xu <herbert@gondor.apana.org.au>, "David S. Miller" <davem@davemloft.net>
> CC: Ard Biesheuvel <ardb@kernel.org>, Eneas U de Queiroz <cotequeiroz@gmail.com>
> 
> Hi Eneas,
> 
> Thank you for the patch! Perhaps something to improve:
> 
> [auto build test WARNING on cryptodev/master]
> [also build test WARNING on crypto/master next-20200207]
> [cannot apply to sparc-next/master v5.5]
> [if your patch is applied to the wrong git tree, please drop us a note to help
> improve the system. BTW, we also suggest to use '--base' option to specify the
> base tree in git format-patch, please see https://stackoverflow.com/a/37406982]
> 
> url:    https://github.com/0day-ci/linux/commits/Eneas-U-de-Queiroz/crypto-qce-driver-fixes-for-gcm/20200207-051805
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/herbert/cryptodev-2.6.git master
> config: x86_64-allyesconfig (attached as .config)
> compiler: clang version 11.0.0 (git://gitmirror/llvm_project 924c9030a89d0ec258bd3a2334bda3edfc17f0f0)
> reproduce:
>         # save the attached .config to linux build tree
>         make ARCH=x86_64 
> 
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
> >> drivers/crypto/qce/skcipher.c:232:26: warning: '&&' within '||' [-Wlogical-op-parentheses]
>            if (IS_AES(rctx->flags) &&
>                ~~~~~~~~~~~~~~~~~~~~^~
>    drivers/crypto/qce/skcipher.c:232:26: note: place parentheses around the '&&' expression to silence this warning
>            if (IS_AES(rctx->flags) &&
>                ~~~~~~~~~~~~~~~~~~~~^~
>    1 warning generated.

Already reported with GCC:

https://lore.kernel.org/linux-crypto/202002070726.DasuvD5C%25lkp@intel.com/

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200207155513.GA47742%40ubuntu-x2-xlarge-x86.
