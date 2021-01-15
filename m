Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBJGCQ6AAMGQEXHMKATI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103b.google.com (mail-pj1-x103b.google.com [IPv6:2607:f8b0:4864:20::103b])
	by mail.lfdr.de (Postfix) with ESMTPS id C39CF2F8491
	for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 19:38:29 +0100 (CET)
Received: by mail-pj1-x103b.google.com with SMTP id l8sf7878910pjf.0
        for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 10:38:29 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610735908; cv=pass;
        d=google.com; s=arc-20160816;
        b=LPxYtkLdw5hkWiWUVmHsLjNzd6MYvtJhQGBN1+YNFqdXGUmJ7POhkjkBL7DDptgroX
         zIyBXQr29Z0Yrwmvif5F58BNhhTL4dwWJKCK447vu8q1V4nNEqY8VvcFK6PTv0VaRhoi
         xfj3Sy+XHNQSLcZ4w3P4T1Q07UrDz+xURD0Pke7yP+cJ46OxrbSgV83bn71KypJwyGaV
         Wj9MjzF7BnTlmmKiXdNorDubiVWay2rO1EaPzqHDKjEtXpxMFNuF3oNPTOW4AamgqSdd
         gUNjYuXQNKJor+m4haEd7xAbl1bRAZHlGfnyXCMrLPwBpO4PYgjClieuSR0wg2zoQDfi
         TWfA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=8+WWmIAGkNoshx+AZhY2w8pKzjSbwltcfOei22dAjOk=;
        b=z75gZ25vYPaFuERft0ZDYTKRVoZtKL/uzUYPnd9ACmMzucd2k4Alk84UKgU81EkUP7
         vsaV9TaYNibmuI2NAY7jNELqlApA1/Fuj9FCDtOd3dkciLiBZWqFcCalMtmDQSk2Mx3b
         QFmYcAIMXEEjjUW/kG4dmRtsWU2pPZdhBJvlHn9fPwZGeyPzwZxFqlIot4lrjnh/Oy+G
         TVv9ukYHrNZWotkrzkuCLrx4T1xdgU0jYpBGEg+uvKsCOd8zrdKTuD3gPzBeLvGyuFXT
         yNesJKM1EGFalVeDHsAs7WUW/7bLQE86SMaA/abQeCftvAO05fUNuZOQ0kYAI6o/JvF5
         +ang==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="FinYw/4W";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::729 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8+WWmIAGkNoshx+AZhY2w8pKzjSbwltcfOei22dAjOk=;
        b=nH/Z4Q3++PQn4pf4M7Gxl38WgeDXcj80qca249Hipzdj/NXDE7fVrN9F+ZjpWbR2q/
         pbRu6tm4Izm5raJQfxVwj6BwXv3hREQipaIwsJ9rluDHbmjpiUR+24JbA3AkewyHBOtV
         YwOfyLNcQ6YgBa6IVQMmTqg5QjsyhDF8JWUi0g0ZmjD4VopQcLYJld65boMuvQr1XG8W
         nFfsMFDREOVb/P9kt7+NBia6YqsSF3Mj2EKMdW074gBs/q5Lcb8U7+uB01HrMlmuFlBm
         YrNpycnQ8o03FnhM2maQ7YVR+0g3zsPu0J58kaad3ACTZFPtmgM/INeN6YN0M5ijzVDo
         Jw3g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8+WWmIAGkNoshx+AZhY2w8pKzjSbwltcfOei22dAjOk=;
        b=LK7ghMYlQBSW4lU3l2ZYCJVZtUu+FGkswXlMfzNjLAD0euAN4v30T5V9aDV/MveEEY
         F1XO8B9LxDD4NnJN5E2J7DD6AtIR8hqtOuvKZ1YrvQKYgWCXSJYCOxbZArp9TczE6R8r
         lAmWE191iIS6J1AID+qc/lEmyLLJEq9mwlv9ALspA9/r5ZyQS0r8EJjRX+ywV+BQDa0K
         OuoZx3ho2dRHHZxsC4Es/c/mT7nCndB8ARcjjViqLUtcomT/GsOx6kIj8xi+BbHKT/kL
         yDg2mHhfIHqLjaa6W30CeukjlcE3YrbcxIAuAEPaOHrYy+mz10eNJ8wEOoV9FxYXG/lV
         +fjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=8+WWmIAGkNoshx+AZhY2w8pKzjSbwltcfOei22dAjOk=;
        b=rEhqyM/H0iG8Vbq9C1WGotZsHuSAjL+TAU5+3UXeFTfKLYSpM/YpDnXjyrMBOMostP
         WHtcgRaQ1Ij7koLonZZqMm/ykfrXbRCrwv2TZgBTz00oPNYHTwkm7wZnqRL2LnOxOTLw
         MGCkavg/T4aoK4vaaJHJCryWIVyUTkxrsf4jBYSgQOt/zoml/oggtLla24sh2YvcE/cv
         WqdmTUNZeKEdn43RahX+oFp4h13U6gZmpDiFg3OaGvURfRtSd+1TbwId/y5wIzuOpm1O
         yuHQOubNL1TjZ8IJbqZ0TLeP8kOPPfYggxaV09c4SSvS6MWfELRAbzXzlqYcBNELr8id
         2XmA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530o1hVEKlG7t3LR58g4vSaVYIa3JYTlLjDTPpFuIrD+yfkAJNnW
	rdkMDQagqqX9WAoNkyMCa8M=
X-Google-Smtp-Source: ABdhPJwWAn70W6lFPrFNijNZkZjnogRB3iWnGPyTT66GAfug1y6pSKUj58Tm1nbWNpvH3ZRw7+gK/g==
X-Received: by 2002:a17:90a:9483:: with SMTP id s3mr11824553pjo.85.1610735908229;
        Fri, 15 Jan 2021 10:38:28 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:a609:: with SMTP id u9ls4727716plq.7.gmail; Fri, 15
 Jan 2021 10:38:27 -0800 (PST)
X-Received: by 2002:a17:90a:c82:: with SMTP id v2mr11920729pja.171.1610735907536;
        Fri, 15 Jan 2021 10:38:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610735907; cv=none;
        d=google.com; s=arc-20160816;
        b=SY1neAqIkiH2C2AyDobbLEKFW0uDJpAT1S9uTEP8xwEpdOmPOW/lIsBPNz1pqEtuwr
         6eZAYAFi4ZCHEHU3gCj0qzIxSVKN7ofSUc2BopKMGxBcg1zHqN+mkJKP4oX1yi4MzRtr
         3xjvUCdUD0BGvIZizciSlvZAgqPYjF+SK7GULUNVTt3MTU9k7LgsnzlTI2nBATyl2Xxl
         P4O5CrB2liw4YwxE2QyAlmrKisQnLZLtIq64YkASbT1R2x4ddup2A9iHzXM+kV5wbPoS
         9SVOIudvaD7K6WgtitaRbfGKVj1DtHSQ/PHD8925wN4BcVS7KkUJfhWukLEU8vrSORjg
         40yQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=lpbx5IuXtyrVJCLCdm7CWpFGzxLbsst3nNSrDQhdHIs=;
        b=VsHSytlsV7WVKXu/9bQwXhiZ+GXnIqP2sI0s7DK6IXVyV9XWFov4jubFfgv0KnLFVf
         MFfj/ohJTPn/ETJ7Gp2y4J9PNZD9bYBF9pCiZjWWfpibLdYVNS9izerI0/tPBxBcNxi5
         m06IsF43NqDRldW7oxY+uVnkpb8zQwknkxuBCipHeRtBpe8vknjW8rjXbep9ebPI3tO7
         932x4i/uApfjJQYPT+tS9m2PhA1UCYkCVEaikmUQqXlVpF7qL+hLYWWY0TW98Ji3VUzL
         Nb1r8regToBIhwhNTX0o35HRKm0IXccoH2Kp1dvO+cqhBeRsqdBYs09SFGrWGU0w4kKX
         G1uw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="FinYw/4W";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::729 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x729.google.com (mail-qk1-x729.google.com. [2607:f8b0:4864:20::729])
        by gmr-mx.google.com with ESMTPS id o14si864211pjt.0.2021.01.15.10.38.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Jan 2021 10:38:27 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::729 as permitted sender) client-ip=2607:f8b0:4864:20::729;
Received: by mail-qk1-x729.google.com with SMTP id 143so12582507qke.10
        for <clang-built-linux@googlegroups.com>; Fri, 15 Jan 2021 10:38:27 -0800 (PST)
X-Received: by 2002:a37:74c5:: with SMTP id p188mr14103185qkc.263.1610735907129;
        Fri, 15 Jan 2021 10:38:27 -0800 (PST)
Received: from ubuntu-m3-large-x86 ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id c62sm5404885qkf.34.2021.01.15.10.38.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Jan 2021 10:38:26 -0800 (PST)
Date: Fri, 15 Jan 2021 11:38:24 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Arnd Bergmann <arnd@kernel.org>
Cc: Richard Weinberger <richard@nod.at>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Eric Biggers <ebiggers@google.com>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	Arnd Bergmann <arnd@arndb.de>,
	Zhihao Cheng <chengzhihao1@huawei.com>,
	Randy Dunlap <rdunlap@infradead.org>,
	Wang Hai <wanghai38@huawei.com>, linux-mtd@lists.infradead.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] ubifs: replay: Fix high stack usage, again
Message-ID: <20210115183824.GA2641750@ubuntu-m3-large-x86>
References: <20210114213020.4108485-1-arnd@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210114213020.4108485-1-arnd@kernel.org>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="FinYw/4W";       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::729 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Thu, Jan 14, 2021 at 10:30:11PM +0100, Arnd Bergmann wrote:
> From: Arnd Bergmann <arnd@arndb.de>
> 
> An earlier commit moved out some functions to not be inlined by gcc, but
> after some other rework to remove one of those, clang started inlining
> the other one and ran into the same problem as gcc did before:
> 
> fs/ubifs/replay.c:1174:5: error: stack frame size of 1152 bytes in function 'ubifs_replay_journal' [-Werror,-Wframe-larger-than=]
> 
> Mark the function as noinline_for_stack to ensure it doesn't happen
> again.
> 
> Fixes: f80df3851246 ("ubifs: use crypto_shash_tfm_digest()")
> Fixes: eb66eff6636d ("ubifs: replay: Fix high stack usage")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

> ---
>  fs/ubifs/replay.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/fs/ubifs/replay.c b/fs/ubifs/replay.c
> index 79801c9a5b87..0f8a6a16421b 100644
> --- a/fs/ubifs/replay.c
> +++ b/fs/ubifs/replay.c
> @@ -559,7 +559,9 @@ static int is_last_bud(struct ubifs_info *c, struct ubifs_bud *bud)
>  }
>  
>  /* authenticate_sleb_hash is split out for stack usage */
> -static int authenticate_sleb_hash(struct ubifs_info *c, struct shash_desc *log_hash, u8 *hash)
> +static int noinline_for_stack
> +authenticate_sleb_hash(struct ubifs_info *c,
> +		       struct shash_desc *log_hash, u8 *hash)
>  {
>  	SHASH_DESC_ON_STACK(hash_desc, c->hash_tfm);
>  
> -- 
> 2.29.2
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210115183824.GA2641750%40ubuntu-m3-large-x86.
