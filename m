Return-Path: <clang-built-linux+bncBDYJPJO25UGBB6WRYP3QKGQE6LXKVZQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa38.google.com (mail-vk1-xa38.google.com [IPv6:2607:f8b0:4864:20::a38])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FCCC203DC4
	for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jun 2020 19:23:07 +0200 (CEST)
Received: by mail-vk1-xa38.google.com with SMTP id g3sf5145358vkb.23
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jun 2020 10:23:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592846586; cv=pass;
        d=google.com; s=arc-20160816;
        b=dSFqJywpiOIeJKybuJtStang51pCyl1w2hNnwWcesXuMcbrE84iHJazh8K0W6KcapS
         u3s+jmYOBkb8TFLBWbauyjTG491z3P+KGPncTv+8bsvlm+wHwrQgZGvJhFGFDAq25CR9
         dEvdczdlLx4quuCYltDAinm3BirD6Y0imzT7HVH4P1Mt0rao1E6vbAbBuqmbLQCRGu1U
         0IPU6y/Kd+J9KwG8mLkAuKXvcKtYqHeajERqLOul9rjsc13X5vifY9/GXF+a7CirhfrL
         TZHqBSfCOZZxD1AKhwTeeGw3JmILZN/p9C5QOiHNF587M0jfGkPO1XG7k574uWRrrZaJ
         Vscg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=ZI54QNtD9LuCmiPv1qipROJsbCUUY4bNI6LwjcFIFEM=;
        b=D4uT6d8zjn+6glclPgSNbcnraeJh4+1p4C5dMB49ZNFrV2kOQF6zhXMQZDy64VwxPh
         O3z6yHXU8EQjpSS9Q9AjpUcubrDIbhQKFY0DG6npGuc+GmNCzaVW/PXTj5DMWgfMX9oS
         U+P4q+IEyvHiQJNoYAtVDBg+PAjPQTYDy8Kcy2yvO19ugtwsYiuWo6kDLu6CyMgbCLAj
         0CeHPYg1zwVjaj8xDZ6PXcT/MIYdXlfSrDGeqOxSytCDk/CaUoyv/mNjIIV668SVy4fM
         sFw21p9NZc7QFHDtpNie3BnTQNsG0ZHn8QymcFO0d/x1cKsNNOK1ZficlAQxvJJVJ5ga
         MZhA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="T/gZ4H2J";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZI54QNtD9LuCmiPv1qipROJsbCUUY4bNI6LwjcFIFEM=;
        b=VVDw7O4u3s/6vykkx4fwqoWzNYDhAqVzVJFyebI+2ljYBic9MIhfzCweEQ9q/zQMGg
         4Tpm9/Hhc9v89tFLCkhzJpL4gm28Y7wlLkVq64flYL+pM/ESFJYHnvKSMu18i8tRgavf
         yBRUjoQHXNlJ7vb8sX3LR3yjrMdEUmzxfLOuU1mIZDiFroT2gmHZROiecef4KT59lO7z
         aD9V73/qQENQ1cAao4BmGqmIH08YkK9QddGswNr6AfaE7Vlv+XLslJwZjEOCnCMC1Vr6
         rsOHn0oNBtKKtOIddAhg5+RQLvM54MwCYojonPvNFbT/f/mFhaZXDPrfUqBKKWad3rE/
         Mz9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZI54QNtD9LuCmiPv1qipROJsbCUUY4bNI6LwjcFIFEM=;
        b=BKQMx4OMsl5JU4ORg7w9d6y94ZDSDxftxYFR508/+HNVUVUF8ilkOi4Qc+uzI8hQzu
         oIKZkJQxTjKn2dHft2tFiDhIfhx31Bb3UT6XuwUK0Tp5Xoa+RBnCOSHKe3i4Tz3sTPtx
         FIrDlBpQitHQLtnhqCMEUQHpfIrmN5ZEGBbagBW2DUox1oYFaesl4dh3g+MHGtcgLadC
         mWTbY2+Bg+dJK6y3f5UviaLHeG9P2e6ERcQSobfL97AS4xrpXRzwnPa2emP+7ZMQ7bd/
         Hyl1wMM1lWCwrquIEqx8Xnod+xRO5sUxYh564blqI2zCM7TgbDHJgmGRN6Z2vYCuxvDG
         ts+A==
X-Gm-Message-State: AOAM533d8d5OqVT75+KvJSuxd7SfJ2UsZB4CTtdh64lYSew2bHotHkL8
	quyD4ZPqbm4wmECEJ+O+pkw=
X-Google-Smtp-Source: ABdhPJxIcjnSeesN7z316MICqk9uZmJdDH/GjOwyqqwoAmEFD22VV8SrDoPHxvHJHH1KzQl96HWoRA==
X-Received: by 2002:a67:7c54:: with SMTP id x81mr16997798vsc.129.1592846586474;
        Mon, 22 Jun 2020 10:23:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:6e47:: with SMTP id j68ls2010966vsc.1.gmail; Mon, 22 Jun
 2020 10:23:06 -0700 (PDT)
X-Received: by 2002:a05:6102:2f2:: with SMTP id j18mr16152228vsj.47.1592846586040;
        Mon, 22 Jun 2020 10:23:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592846586; cv=none;
        d=google.com; s=arc-20160816;
        b=fmJQ3oulnhqT8VC5wbrbCHPbsqHdAPVpjO4QY1kPNu/FSkB2xMn5LMkz5bPFOHl+v4
         BwpCoeECozUv7a3ct5aUB0d8xUJR42uzrvNh+oRJ1IZ7PY5jirrQH/B30PK2aYwlRNQu
         Vk57oaCqpcrGb6cY/vIRQUaz3yZlptN6yhxtVcGTjTKiFkRtP79rkuXJupoF2yfgini4
         1cE0IQbvoPNhSzY0kpSyHB+sYP4DjKs2CK29fjjJ2siTWY9uTSEmmY48Sma1kD6szgIe
         SwwJaxjalWRH1oekwUXdCp8+9wAacTz7sKZnkeOlQc4HGK7ih0vnAPMzLLI3LTujl5Hv
         onyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=BqM48ZdR4QdYBTv2c7+F0igShsRmPGqVwAJTalrh3Vo=;
        b=njU/C53n2kPc1c5vqa6Y7KaeYX7iUQAkrtNpLE40QlQHhlDmyeUHqX8UB7yOdILqsk
         scvB9Ec9uXvVPub3+T6qDJI8bdWW1tL1dfzmxD8W4h1s53FjkhX0gEXU9rXQ4cPjk+ON
         MYanBGVDMMqv6HdSPN+44RFmC77Mjgxcg1PpQv6RlMQ5T5iT9uqcMToDOYa1vXA25+q7
         OEdaJPStvbn/rMxP3TLUOLDlNNS3FohsT1wyLSLH+5q+6gyO9uRbwciiFAJDsCHsjc5b
         rPuBVGRtuSxu/NoTWFEHzaqD+/Hp6RdCOYGjUr1C4UOHdUwaUqOnRh93nR4GYhVggjn0
         Lv+A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="T/gZ4H2J";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com. [2607:f8b0:4864:20::1041])
        by gmr-mx.google.com with ESMTPS id e10si823954vkp.4.2020.06.22.10.23.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Jun 2020 10:23:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1041 as permitted sender) client-ip=2607:f8b0:4864:20::1041;
Received: by mail-pj1-x1041.google.com with SMTP id jz3so134229pjb.0
        for <clang-built-linux@googlegroups.com>; Mon, 22 Jun 2020 10:23:05 -0700 (PDT)
X-Received: by 2002:a17:90a:1e:: with SMTP id 30mr18013542pja.25.1592846584932;
 Mon, 22 Jun 2020 10:23:04 -0700 (PDT)
MIME-Version: 1.0
References: <20200620033007.1444705-1-keescook@chromium.org> <20200620033007.1444705-11-keescook@chromium.org>
In-Reply-To: <20200620033007.1444705-11-keescook@chromium.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 22 Jun 2020 10:22:53 -0700
Message-ID: <CAKwvOd=N3HQNZfKMQ7eZWdawwNn13=YNNgMO0WAng2ERYX4Juw@mail.gmail.com>
Subject: Re: [PATCH v2 10/16] KVM: PPC: Book3S PR: Remove uninitialized_var() usage
To: Kees Cook <keescook@chromium.org>
Cc: LKML <linux-kernel@vger.kernel.org>, 
	Nathan Chancellor <natechancellor@gmail.com>, Linus Torvalds <torvalds@linux-foundation.org>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, Alexander Potapenko <glider@google.com>, 
	Joe Perches <joe@perches.com>, Andy Whitcroft <apw@canonical.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, drbd-dev@lists.linbit.com, linux-block@vger.kernel.org, 
	b43-dev@lists.infradead.org, Network Development <netdev@vger.kernel.org>, 
	Linux Doc Mailing List <linux-doc@vger.kernel.org>, linux-wireless <linux-wireless@vger.kernel.org>, 
	linux-ide@vger.kernel.org, linux-clk@vger.kernel.org, 
	linux-spi@vger.kernel.org, Linux Memory Management List <linux-mm@kvack.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="T/gZ4H2J";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1041
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Fri, Jun 19, 2020 at 8:30 PM Kees Cook <keescook@chromium.org> wrote:
>
> Using uninitialized_var() is dangerous as it papers over real bugs[1]
> (or can in the future), and suppresses unrelated compiler warnings (e.g.
> "unused variable"). If the compiler thinks it is uninitialized, either
> simply initialize the variable or make compiler changes. As a precursor
> to removing[2] this[3] macro[4], just remove this variable since it was
> actually unused:
>
> arch/powerpc/kvm/book3s_pr.c:1832:16: warning: unused variable 'vrsave' [-Wunused-variable]
>         unsigned long vrsave;
>                       ^
>
> [1] https://lore.kernel.org/lkml/20200603174714.192027-1-glider@google.com/
> [2] https://lore.kernel.org/lkml/CA+55aFw+Vbj0i=1TGqCR5vQkCzWJ0QxK6CernOU6eedsudAixw@mail.gmail.com/
> [3] https://lore.kernel.org/lkml/CA+55aFwgbgqhbp1fkxvRKEpzyR5J8n1vKT1VZdz9knmPuXhOeg@mail.gmail.com/
> [4] https://lore.kernel.org/lkml/CA+55aFz2500WfbKXAx8s67wrm9=yVJu65TpLgN_ybYNv0VEOKA@mail.gmail.com/
>
> Suggested-by: Nathan Chancellor <natechancellor@gmail.com>
> Fixes: f05ed4d56e9c ("KVM: PPC: Split out code from book3s.c into book3s_pr.c")
> Signed-off-by: Kees Cook <keescook@chromium.org>

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>  arch/powerpc/kvm/book3s_pr.c | 3 ---
>  1 file changed, 3 deletions(-)
>
> diff --git a/arch/powerpc/kvm/book3s_pr.c b/arch/powerpc/kvm/book3s_pr.c
> index ef54f917bdaf..ed12dfbf9bb5 100644
> --- a/arch/powerpc/kvm/book3s_pr.c
> +++ b/arch/powerpc/kvm/book3s_pr.c
> @@ -1828,9 +1828,6 @@ static int kvmppc_vcpu_run_pr(struct kvm_vcpu *vcpu)
>  {
>         struct kvm_run *run = vcpu->run;
>         int ret;
> -#ifdef CONFIG_ALTIVEC
> -       unsigned long uninitialized_var(vrsave);
> -#endif
>
>         /* Check if we can run the vcpu at all */
>         if (!vcpu->arch.sane) {
> --

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DN3HQNZfKMQ7eZWdawwNn13%3DYNNgMO0WAng2ERYX4Juw%40mail.gmail.com.
