Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBYFVU33QKGQEPSGYIQA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x337.google.com (mail-ot1-x337.google.com [IPv6:2607:f8b0:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BE7E1FC50C
	for <lists+clang-built-linux@lfdr.de>; Wed, 17 Jun 2020 06:24:02 +0200 (CEST)
Received: by mail-ot1-x337.google.com with SMTP id e66sf501602otb.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 16 Jun 2020 21:24:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592367841; cv=pass;
        d=google.com; s=arc-20160816;
        b=KymxDPavGQE6w7oCRR3G5W60pu5Isf7JPTh7IT7HW4EBf+jCsyOF0y4HBD/xzY6Vwt
         gc7JFv7S0P7dlYt46+5OlfypsTEjJqY1yV+SxOiZ6zJeHoz+GcLAJO5TPqfVcjnzzlsE
         NkQMr2WJJOPsCMzKVI/qEBytS/ELbvZWNY4v1raAcp2WLE0L5PB1fzG9JDuv0ZM7DzwP
         cY5kI17R2c7hiz7/KnBRL5DgXst4xJ3ExPNfaR4CzkIey0VFZdnbMj7dlG/2m3KpsW6Q
         rM0mY7RtkAqrv3FGNIET3YmySXmSiXRtSQB5hZ8oQhDRYaSrw9gvY8w1lOPXSEyDQaIj
         lO/A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=e0GGP4NfMbQBNMBXbFr8ErJHLZtZnSLE4bmikrZJZJU=;
        b=SNOacBQI12hPqL8ys4yzKWPvCcSyhvSKQSXJne58Yx97fusmXoAdvpkx+EnNYSdvbJ
         kWDWXlq5f6hMaJqN+fvA1UUOc66vETDHBWZYmFT2LkRNLOF2q00sa4weCKIrn7jL1GIv
         kTfam/ckesnmMApgYP+DJl8ve0/2JBqCsogFtMGg/Hn2FckHx6iLN8Wb7GzR2CFb2fBq
         FW8ydqv4gUckR89tIF8Z9+5NttFt36F3RFg27ZBkHj2G9ngCMeKazjr/CJM2v8yo/Dmi
         alDwII3TRRD6x8tTVQeTF4Lcr0iVJGWg9I4Qpaj7wWxmYgIbNFA+xVgh1IiqWPEykTs9
         6aLA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nufeHlQ+;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d42 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=e0GGP4NfMbQBNMBXbFr8ErJHLZtZnSLE4bmikrZJZJU=;
        b=pok+Rljcqxt61nn4rWxlFPepoPYPUCRylOXuGB//SNQ8RhsOq1xRuLGTTLd/d00zda
         MlfTILjf9zdMamwjG6Alp5E3/rXHSp2S4Q6KGwvyP8MJt9NLI1awebdC7hHRfnX8250t
         2P2mzFRAzdVo0kGGZWzw8ph1OkMsBqEVnJvhM60kkGC+uYvmgI2D+3O+k0Tua0wnqgEi
         XqhFG8epPXcXd++ce7RIm3xArlL3uhS3zR2Waeo5EFK16L/Qkh+5nk2QE5eW5mnm3Z74
         aRvv3kzQbZqHOicV6jgt8rv6yAYPVp4x3i06CqwXgWvFEZ3vJM9SHJmZsTfzaI2xUpDR
         xoBg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=e0GGP4NfMbQBNMBXbFr8ErJHLZtZnSLE4bmikrZJZJU=;
        b=sNGh6oZLuptv/fycts+QggPBk53ltIzJaf9zkHF9CcUJ/lhAG6uB0VaW8XjB3GzaHE
         Z9HZtNM0fyBFz3UoOS0z+QBYIDdjFu0plW2BDc1JwLjTwWISeGkBWbioVy4F4lpAvju6
         K3Ks85sONqO0KrhfXqIwH33VYD6Oc1x+AUZUeTVStfHk0rYAKflPgcrdAyor5haKqsIF
         bZ5EKbifep7gP+MaL9DZGejhqV5W2Wg1j9KgtB67YgTwHi2J/JiBxtkS3nWpl8mrLVfK
         2oGB0hPWknv1t25+343r97XkSDZHs3iPc+vXp5o1UayOx59sdcCOqWi0Pg8UGzSwg0d6
         qNJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=e0GGP4NfMbQBNMBXbFr8ErJHLZtZnSLE4bmikrZJZJU=;
        b=FA76IL9uWNK3dNyiEenhNb8W1Gz5PD7xXgK2Jjr7ARgHiJKvr/YzniR8RiPC9Gwpbh
         1Ff2xVA4Un0ZpaOUThQy/RXqTqkRytmuCq7cIi/69J0uYXxDGZe10cUZ3nW6V7nJePaO
         C8hfvoTLQHudOn5sDTFrwhFYfSj9JbyfrDQIouQRLhvmWPIx+N7fvIBH5xARrGFm7A19
         02K+yOD+xxRVJ4w7WtVPMxlVX83e2zLcI50JBQlnh7qwxRlGT2SWLv/rs4h6+J4XwzFq
         C6kCaKICPrpFJVHQm/v6ekX54hy9KnCVNOxb78EfCUysXAjCt6Ef7dM6kN1vR8aoo0pX
         mgqg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532ULLmHkIn5IgqG1brjjj2ABu9Sb5IzyaKAbBBs7DAIq6Bdl56p
	sRX/SCFmRt6CzTyqqXucHQs=
X-Google-Smtp-Source: ABdhPJz6D7HVU2VzKSz6XSckHq/GyH/h+ad5CadssVWn6+hIcibahE3c4/q48V4qtBddsts3OM60PQ==
X-Received: by 2002:a05:6808:aa3:: with SMTP id r3mr6309369oij.170.1592367840866;
        Tue, 16 Jun 2020 21:24:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:5788:: with SMTP id l130ls184530oib.2.gmail; Tue, 16 Jun
 2020 21:24:00 -0700 (PDT)
X-Received: by 2002:aca:530e:: with SMTP id h14mr6011286oib.172.1592367840449;
        Tue, 16 Jun 2020 21:24:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592367840; cv=none;
        d=google.com; s=arc-20160816;
        b=V7lJj2rXpa8mCQRkEA6E+oTsOSnG7w7aetOcub+9eYXkWbgFewUedExqR0l6/08yVV
         5UedvNz38MDMwNHZ80oKEM51Y1HUcc557um9PZcQzQbSdGG6HlKyIEWqU9T/SQ/RHIt7
         gBEqvzyXCZ984xM9rKe1EF2w2f+AmHkzm6R8VvwOHnNus86942NUTUcDuzE+/pdVkFMK
         U9YSG97z9ncagMvW/RGjmHwg0m2GbwyxShSc5liWo8H3cXzx3AHQNO+safnJ8Gm6NHMI
         yJXrxItRQxdXLshfA/djOBIsNoz0VqWfolYDA/TNjBKdfkSLOomx2zCJLSpyYPAriv6H
         Rxpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=qnyhMMIEN0LrK0bROeu2AicdajFIxeITYjNsoHRgC8U=;
        b=UjDdulQiK1D1+2khSoR8Od/YGt4rZkQdtl3Lca8HLPOn8jwqMjAXVymr1XDS0M9dvL
         GmTnh4bS/1fVStj2uqO5nesnQlzoimuNeeIa38sHchqvUabF65VLCDUvFuFI3jNlZPUD
         AA8rV7syiZ0/UGOXRGGxIzX7dR94K8Z7YHr46S6zJ/yaXCh4aV42wVPDaxMT9ZKv9IVR
         KTiTFtZqQizZGYFeeJ4nTPf3s018uBsS9MMSTaPO/JmsQYiZWtKfvl4p7XC5dI7YOaz5
         MtAEXwiWe1pj9dqmBBb+pahQDEIv8IJx+whiGgK0madB1cYur7zp4WcsK2Ix5u/hvcxE
         62rQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nufeHlQ+;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d42 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd42.google.com (mail-io1-xd42.google.com. [2607:f8b0:4864:20::d42])
        by gmr-mx.google.com with ESMTPS id m26si366841otn.5.2020.06.16.21.24.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Jun 2020 21:24:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d42 as permitted sender) client-ip=2607:f8b0:4864:20::d42;
Received: by mail-io1-xd42.google.com with SMTP id y5so1191452iob.12
        for <clang-built-linux@googlegroups.com>; Tue, 16 Jun 2020 21:24:00 -0700 (PDT)
X-Received: by 2002:a05:6602:2c45:: with SMTP id x5mr6354932iov.80.1592367840047;
 Tue, 16 Jun 2020 21:24:00 -0700 (PDT)
MIME-Version: 1.0
References: <20200616223633.73971-1-nhuck@google.com>
In-Reply-To: <20200616223633.73971-1-nhuck@google.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Wed, 17 Jun 2020 06:23:48 +0200
Message-ID: <CA+icZUW4Jv7589yCU55+C-P0=B0ztzvsOZ9TEMcTt4vKjFU1dA@mail.gmail.com>
Subject: Re: [PATCH] Fix unwind_frame for clang-built kernels
To: Nathan Huckleberry <nhuck@google.com>
Cc: linux@armlinux.org.uk, vincent.whitchurch@axis.com, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=nufeHlQ+;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d42
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Wed, Jun 17, 2020 at 12:36 AM 'Nathan Huckleberry' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
>
> Since clang does not push pc and sp in function prologues, the current
> implementation of unwind_frame does not work. By using the previous
> frame's lr/fp instead of saved pc/sp we get valid unwinds on clang-built
> kernels.
>
> The bounds check on next frame pointer must be changed as well since
> there are 8 less bytes between frames.
>
> This fixes /proc/<pid>/stack.
>
> Link: https://github.com/ClangBuiltLinux/linux/issues/912
> Signed-off-by: Nathan Huckleberry <nhuck@google.com>

Just a small nit.

Please label your patch with: "arm/stacktrace: ..." or "arm: stacktrace: ..."

git log --oneline arch/arm/kernel/stacktrace.c
...is your friend :-).

- Sedat -

> ---
>  arch/arm/kernel/stacktrace.c | 24 ++++++++++++++++++++++++
>  1 file changed, 24 insertions(+)
>
> diff --git a/arch/arm/kernel/stacktrace.c b/arch/arm/kernel/stacktrace.c
> index cc726afea023..76ea4178a55c 100644
> --- a/arch/arm/kernel/stacktrace.c
> +++ b/arch/arm/kernel/stacktrace.c
> @@ -22,6 +22,19 @@
>   * A simple function epilogue looks like this:
>   *     ldm     sp, {fp, sp, pc}
>   *
> + * When compiled with clang, pc and sp are not pushed. A simple function
> + * prologue looks like this when built with clang:
> + *
> + *     stmdb   {..., fp, lr}
> + *     add     fp, sp, #x
> + *     sub     sp, sp, #y
> + *
> + * A simple function epilogue looks like this when built with clang:
> + *
> + *     sub     sp, fp, #x
> + *     ldm     {..., fp, pc}
> + *
> + *
>   * Note that with framepointer enabled, even the leaf functions have the same
>   * prologue and epilogue, therefore we can ignore the LR value in this case.
>   */
> @@ -34,6 +47,16 @@ int notrace unwind_frame(struct stackframe *frame)
>         low = frame->sp;
>         high = ALIGN(low, THREAD_SIZE);
>
> +#ifdef CONFIG_CC_IS_CLANG
> +       /* check current frame pointer is within bounds */
> +       if (fp < low + 4 || fp > high - 4)
> +               return -EINVAL;
> +
> +       frame->sp = frame->fp;
> +       frame->fp = *(unsigned long *)(fp);
> +       frame->pc = frame->lr;
> +       frame->lr = *(unsigned long *)(fp + 4);
> +#else
>         /* check current frame pointer is within bounds */
>         if (fp < low + 12 || fp > high - 4)
>                 return -EINVAL;
> @@ -42,6 +65,7 @@ int notrace unwind_frame(struct stackframe *frame)
>         frame->fp = *(unsigned long *)(fp - 12);
>         frame->sp = *(unsigned long *)(fp - 8);
>         frame->pc = *(unsigned long *)(fp - 4);
> +#endif
>
>         return 0;
>  }
> --
> 2.27.0.290.gba653c62da-goog
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200616223633.73971-1-nhuck%40google.com.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUW4Jv7589yCU55%2BC-P0%3DB0ztzvsOZ9TEMcTt4vKjFU1dA%40mail.gmail.com.
