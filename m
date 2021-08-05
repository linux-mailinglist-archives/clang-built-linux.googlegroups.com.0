Return-Path: <clang-built-linux+bncBCR5PSMFZYORBYM2V6EAMGQEYYOBCAY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3c.google.com (mail-yb1-xb3c.google.com [IPv6:2607:f8b0:4864:20::b3c])
	by mail.lfdr.de (Postfix) with ESMTPS id BB47B3E13F7
	for <lists+clang-built-linux@lfdr.de>; Thu,  5 Aug 2021 13:37:06 +0200 (CEST)
Received: by mail-yb1-xb3c.google.com with SMTP id i32-20020a25b2200000b02904ed415d9d84sf6029916ybj.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 05 Aug 2021 04:37:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628163425; cv=pass;
        d=google.com; s=arc-20160816;
        b=fMN4lOIj4pL3M6mxFd6kcTD630ijCVk4OBbgCuoDteIoWvGAEPzSYEPbqkQhxAkZwQ
         z2Ju7m6HunSnK0BOhtyGmBsppaTlGWCNu11CLca7SZo9vESHUeWqRELfL4IJWinzsjdw
         3GM07D0v8NXgh6xm5h7j45pDy3qIaq1aEtViF50NmoEgplwkIg3THVZmzrYMl/zd0ADr
         nK2IhHXqMn5+9wv8kk6W+lwBzEd0ViiR/MNc8Nmr0doR+6I2O2QvVkynCPVrN/um8YA6
         wmf4RS4hhWiZuOxuRl9CumstNUf0o0w0JyTdpsmyRpUuMZzwvOVKbu9D7f4bvpswV6mw
         oz2w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=UhbiyrqA7/32/5nscH7QCo+FeW25ZZ1JgPfjhGPlONA=;
        b=YRHWq4Qkq55ihI93hgMg+ekYjDOp47mXa8Dru31mq3KuMYezajQHlCYEP5tF+Qdus0
         1bBWVTTDoVAbi0nYVS3qzcZyYODEyQS9+pad1LKCBsPkKRPCBAzKiqtx1Pru+cyZ+yi8
         1synKb46482bVVnQ9hIGU+BmQaUsr8CeXM0JUmSHrljpZGne1IIFxr0mSiA+NfHGrdw2
         V6kpGcoUyzsECUpfmQcVikiHO4NAzo9zM1DeRfxiaSJSJpguLwommHn8wRsWfGqfDwvM
         N8Ky0Pc8XJqST9DBLgYnOPh1xdkCo4pEI6S212vH9T34KZqYG4CM0497rRnR7n8jIRYa
         rgEQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ellerman.id.au header.s=201909 header.b="SF7x/1Bv";
       spf=pass (google.com: domain of mpe@ellerman.id.au designates 2401:3900:2:1::2 as permitted sender) smtp.mailfrom=mpe@ellerman.id.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UhbiyrqA7/32/5nscH7QCo+FeW25ZZ1JgPfjhGPlONA=;
        b=rfjQDxRVtVTCU0V50mOuAcQKrwl0HfRt5gtr6OmCyuMpRwsekMZPMwTLslZy6YnNTg
         bugcs0rAM8KAsJxOADdY1LKorsecoU7HocUdttwtbJNqQCHhfNijsYWpuKWBYGFYNTSA
         erLJrbOb8+FKmt1cx6A0IBCYd5ubQBXrnQQeCS9lglwGbd+AtK99mnUytj+9Mv77Z3Vs
         IT95goD0m0Va2rM1axuBJcNDRjnH+/oS/y1Ap5CKxbWk4qQqjH5uVDdZwmtZGoLwzl/W
         90VAJS/gjjvX2AnMAsM1fWA8jjIFy4I4HYtf75Xr6G/3E8BYLlCSugv5h6cTm1YcIAv6
         Hbrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UhbiyrqA7/32/5nscH7QCo+FeW25ZZ1JgPfjhGPlONA=;
        b=DbDfwRqRTXfom2YwQX2trUrGdN3bnTWmmhJ1uGpJ8OR6ZyrKlQJEHtHMCutlnF7fLu
         clk4Xd1w0/0l72+A2dRpZRmFkVel1aXW+lhY2vwOYnEAcZHQUc3v4c0Bx5gjYs15efPD
         WTJ1JGm/zccirzRXs22jDOa0gFMhUvxSNaSdTFknZnXuxKrzNh9z90E7eo95NTvtdU9i
         oXYLvGSsUSNg7EfaFbTM7ImUzAp2athSg5dAPQsMYI0Ax9gPEh5gMV5qiuTb1wGo4FUj
         HjE4JreuLyOxKb68CHoXYS0sA4hBbWEF0Bsbp0NJJCkOBFqOkpzNnsug8x1tAtikYl6i
         O4Ng==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530fRc4M5uyflfxnKYWGjooZWkoYLWTW1Q/fIPM36t1wIQMWxIYq
	XmCVoKkkPSopHTtoEyYQL5g=
X-Google-Smtp-Source: ABdhPJyCoXZG5WZb/3XH86waEnyX+K5HihGe7clXkf5388ddxxZsyPDCkhbGB/f484M/8UJyInASkg==
X-Received: by 2002:a25:d290:: with SMTP id j138mr5758294ybg.151.1628163425720;
        Thu, 05 Aug 2021 04:37:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:c70c:: with SMTP id w12ls2526300ybe.4.gmail; Thu, 05 Aug
 2021 04:37:05 -0700 (PDT)
X-Received: by 2002:a5b:c52:: with SMTP id d18mr5461002ybr.248.1628163424970;
        Thu, 05 Aug 2021 04:37:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628163424; cv=none;
        d=google.com; s=arc-20160816;
        b=lGL3Wa3qpTfUF1qCl1knyWqmBsyB6y2xx+MaCa6/gfe5eQuJeyCNWZTh2q2v6OFvEU
         /w94gugul9k9jnXljmGjeaU6+8W0v28aP+fLlhelBt4ayvtFxkiTK1mFeyDaBG1hnwOG
         PsskjWJz3bpcIshW54HZAdzfdKrExL9PuUUKz9YMoayhQRyQ8pXEagFFCq17C8P+RhbM
         JuBcSHdT4k8Ug3tz4NkyVSEjkdpF4/nZNMUs8DUhjIUVjbKlyfvSV9t36Hs0ryLWa/Nn
         LuG/TQVQ0UfjNKXA9YOYcxTWnTMftapRL/ZrwssPzbmWcjFc/1QLHw0NQi81ZLbmXWuV
         +36A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:dkim-signature;
        bh=LUuDWZ6QjdYX5SUcL0rg4SU99LJt8O7kFIHfniH4Wkg=;
        b=JN8uVT4a7z240zYcJn8Dp2LPHYLxjqH9m5v+j2/wHj5gT3+T5g3I4KOi3BWg44l8Nn
         UocvcOdbmim+Yg1dANhibPhNtxMP0f9TQR3lxkgQ6vSCa4F+KFFeVU3fdDtbZhu3BSgj
         SlQX7UC3lvbGmhgwOJq9GPqPeTIxBW2qSX+yeUWae4aVQ4to3hp8hqK3T621S1dVTPPh
         +KK1YaMRetQyqgqI0YYwZQ07BpbyF2ZIV0D7JxznOSLVGwvnWx//ptLAT8yBe7/8c+PD
         6H/Wj4coMxRX5sKcfvzKTIF+Uu+sNH8RZAoP4FcQloumqf0zsoTtjlNZgMq3Xj3g1hy9
         kWjw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ellerman.id.au header.s=201909 header.b="SF7x/1Bv";
       spf=pass (google.com: domain of mpe@ellerman.id.au designates 2401:3900:2:1::2 as permitted sender) smtp.mailfrom=mpe@ellerman.id.au
Received: from ozlabs.org (bilbo.ozlabs.org. [2401:3900:2:1::2])
        by gmr-mx.google.com with ESMTPS id q62si245300ybc.4.2021.08.05.04.37.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Aug 2021 04:37:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of mpe@ellerman.id.au designates 2401:3900:2:1::2 as permitted sender) client-ip=2401:3900:2:1::2;
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.ozlabs.org (Postfix) with ESMTPSA id 4GgRQx6y6Wz9sRR;
	Thu,  5 Aug 2021 21:36:57 +1000 (AEST)
From: Michael Ellerman <mpe@ellerman.id.au>
To: Kees Cook <keescook@chromium.org>, linux-hardening@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>, "Gustavo A. R. Silva"
 <gustavoars@kernel.org>, Keith Packard <keithpac@amazon.com>, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>, Andrew Morton
 <akpm@linux-foundation.org>, linux-kernel@vger.kernel.org,
 linux-wireless@vger.kernel.org, netdev@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-staging@lists.linux.dev,
 linux-block@vger.kernel.org, linux-kbuild@vger.kernel.org,
 clang-built-linux@googlegroups.com
Subject: Re: [PATCH 58/64] powerpc: Split memset() to avoid multi-field
 overflow
In-Reply-To: <20210727205855.411487-59-keescook@chromium.org>
References: <20210727205855.411487-1-keescook@chromium.org>
 <20210727205855.411487-59-keescook@chromium.org>
Date: Thu, 05 Aug 2021 21:36:54 +1000
Message-ID: <87czqsnmw9.fsf@mpe.ellerman.id.au>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: mpe@ellerman.id.au
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ellerman.id.au header.s=201909 header.b="SF7x/1Bv";       spf=pass
 (google.com: domain of mpe@ellerman.id.au designates 2401:3900:2:1::2 as
 permitted sender) smtp.mailfrom=mpe@ellerman.id.au
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

Kees Cook <keescook@chromium.org> writes:
> In preparation for FORTIFY_SOURCE performing compile-time and run-time
> field bounds checking for memset(), avoid intentionally writing across
> neighboring fields.
>
> Instead of writing across a field boundary with memset(), move the call
> to just the array, and an explicit zeroing of the prior field.
>
> Signed-off-by: Kees Cook <keescook@chromium.org>
> ---
>  drivers/macintosh/smu.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/macintosh/smu.c b/drivers/macintosh/smu.c
> index 94fb63a7b357..59ce431da7ef 100644
> --- a/drivers/macintosh/smu.c
> +++ b/drivers/macintosh/smu.c
> @@ -848,7 +848,8 @@ int smu_queue_i2c(struct smu_i2c_cmd *cmd)
>  	cmd->read = cmd->info.devaddr & 0x01;
>  	switch(cmd->info.type) {
>  	case SMU_I2C_TRANSFER_SIMPLE:
> -		memset(&cmd->info.sublen, 0, 4);
> +		cmd->info.sublen = 0;
> +		memset(&cmd->info.subaddr, 0, 3);
>  		break;
>  	case SMU_I2C_TRANSFER_COMBINED:
>  		cmd->info.devaddr &= 0xfe;
> -- 
> 2.30.2

Reviewed-by: Michael Ellerman <mpe@ellerman.id.au>

cheers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/87czqsnmw9.fsf%40mpe.ellerman.id.au.
