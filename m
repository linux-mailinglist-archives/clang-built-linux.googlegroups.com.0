Return-Path: <clang-built-linux+bncBAABBMX77ODAMGQEE6IJRLY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43e.google.com (mail-pf1-x43e.google.com [IPv6:2607:f8b0:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id 76CDC3BA022
	for <lists+clang-built-linux@lfdr.de>; Fri,  2 Jul 2021 13:59:47 +0200 (CEST)
Received: by mail-pf1-x43e.google.com with SMTP id o11-20020a62f90b0000b02902db3045f898sf6097482pfh.23
        for <lists+clang-built-linux@lfdr.de>; Fri, 02 Jul 2021 04:59:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625227186; cv=pass;
        d=google.com; s=arc-20160816;
        b=MjWrj6IWUhi7WvtVM2yp763/xhjm8Tq4nFS3V1ZPJRlMvXbwHrimrS6hTU/weaFl28
         rpr7/mzTwoqiyQBgoVF0AR5P1Ur01o9OYcARHDThdFcy6m89syS0WIS53k5K6yRebhLB
         rps8QoZEIMHtVVL9R3XVphAaujhr2mKg6gcwwj2Ewu8qzlnNB+eeCy15pJA6wfkXN9Y7
         /ZuKcMhyEH/MbBT62qaWFlpFK6+bVGZKbpwZNZhR6KZ4HaM6GYUy6C4SX19tvBXNJ5rv
         9Nr0+t93SjVKpkSB1BrSSI8jrRotBTrwy++SBzIFjij0POylsr7lKj4UIKWP3gTjmaPU
         +I0Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=vYCxpH6FP8m2c7jeAAgYSVagQGV/s34C6R5AWkmqG7A=;
        b=tdfXVIk3rvMvMYQkAH6du5TtQz0Chh0szvM/Gdo5hfLdPSL6Tk6WA69eKR39AG4gro
         YiZ3giTS+YdgikptL9g78bEONxYrfMeZfqs6SEHqBSJHQme6Ko84eswhfIOGOBpm5N1S
         /bF24Ydgs3fmqBX9R0SEYogHH/v1KnZykxYklB0B7dyG3YGx1IC2pPNJRtI9+Ne1CmnV
         X/myU9vtgfnZRUb9TEu1BF5CA1Z8F/gVeNXSFe8FngXIjUh/e44IsuTxvhKwHyRmtbOC
         m7jgbV8AqDv6pn7wU8PBVQUQcTrI58nddMpaC98+skQsytVbQoe7poICgHWbVfuEW1YB
         lPRQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=DwP+PEkt;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vYCxpH6FP8m2c7jeAAgYSVagQGV/s34C6R5AWkmqG7A=;
        b=AlRpjMzNUddbWEx+mVP34fE5h2QD0OrrT7+isw7mod9hGRaU2FyGYgcvO43UwfiWew
         NXNzYqG8T5G/NAzNwOS2Mzaf5Ot3JSgEI80vNy0ZBfEH0vOrENsvy1iLg4sKPJTgTpGJ
         iluDpQLH+ZsxCMcd9A5TzKdkotnaogjXuZvo7O9Q6teBP1A6/YfRd8BaNuaaVQB87lEm
         J1881+jA5cBJA3/ewYwkN0xq7mxDa9bG0kOoBgjIeQjH5ncFbGcA3HhwoZtlxT2OINjy
         y5/orsZ7wZQWXx0iNNt7jXeymG+MadfbhzkK4IUZpdJgTY6+pBBHC+CxQlgtvolr1V4z
         mJLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vYCxpH6FP8m2c7jeAAgYSVagQGV/s34C6R5AWkmqG7A=;
        b=r59S5b5VW44Y5EtSksapuDwBGFznqjKRVyWobM5q49yzEq3jUPLmFBKw2NK0YH+EcY
         +poBm3i7fPWggtU21iVnUViUry1zHo3i9ckl0tBJEoJm4UWYcrIXQm+iKvaNGRsyaGc+
         druwM8xK7SLJgvjXM19K1lCq0o5o5qwFZSaC9SB/BscKVBjjmPcv5Q+jx+6hwufs3CFD
         CqwDfc/dnLJRjmUySHE3K9N8MNTqKV1BFhP18BXa6F83aOO6mQPpvXSq//LowpDVsVzy
         WpFGm4mnmPUW1//RNfzb7vFcgWcYV/HdiU2WGLDblt4p5y6OOy7mFJcJMUwhi8YBu2pc
         XJbw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531DSQrknDy7AEzp1vEzVVryT0Cr3VEu23Sj2hy3x7aIgkooBuqV
	mc0eubsvoi4Y/X7G+ahwIXE=
X-Google-Smtp-Source: ABdhPJwWJYEl7ZzH5Xs+9ZwJxwzEIqkYR9mVPwBQ+827obI0Zv3+QSC8ukZj1TfNdC1ze8M6JRfriA==
X-Received: by 2002:a17:90a:8596:: with SMTP id m22mr1326519pjn.110.1625227186185;
        Fri, 02 Jul 2021 04:59:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:bb8f:: with SMTP id m15ls5019573pls.3.gmail; Fri, 02
 Jul 2021 04:59:45 -0700 (PDT)
X-Received: by 2002:a17:902:6bcb:b029:127:9c65:f1fb with SMTP id m11-20020a1709026bcbb02901279c65f1fbmr4042257plt.64.1625227185768;
        Fri, 02 Jul 2021 04:59:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625227185; cv=none;
        d=google.com; s=arc-20160816;
        b=YnWG956spgERgg39noWlCCsz+XjTcz24GYV+Z/3PozO5iCSdN3ufGoFq5nVGyXFfWY
         duVABOvx3h5VFxKKrjl2FpbQ9I6QlufWL0JZuJKb2ze2ZbmrZshqM+wwQtL4GKmijgLb
         MlTgGijX9qwyLYOCuJwBxJOa1ml0heaFUtDfxCs5cEFI5CeVGMoFPCVZSL/7+1jjKN6f
         E5gAuEc1d3O5e7Cuw6VbGqzTZtlzXqR8MvV2rmLrF3htiJStI/MZp9WJU/GTEz+7Ovhp
         naZrjJEddI1hh+mbNELw/AOpBV+lGwxWigkA6F0ghXk8+W72lPtpPshk4WtA0xm9JkU7
         GTxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=QlWcY3fADqOolPhUTAVl3xjBQhVgUaPUv3eRI605fS0=;
        b=vv2fnPZYUlhCLivYpEpXVAVF4frQC3rvVBDh75pXVm9u5UaIXxyG1bCLLZ7/1uyHwC
         6TBPbAiEGPmTOPqCi095BeIeMazcoiz9+gGofKM9QqXGLAGIYr1rFANaegfeOyKuGkkn
         e4OIl6mH9a84Qkk3umt9rJHMIsI6HTi+IGT4uUBMSLi4DEeqz+UeWjw94esiWx2CEANj
         lDH+0XixDaL/HfxUyTePqxRbffqUwodfMt//w8Abngi41oKxGA6nk+isNARNB2ipB1W0
         f0qayFV3epGp5x39FNzUxsLtV1JAqOMdtv6bZTrXPYg9MQpYOIRxn8JvWIFppBDg5K9Z
         hWlw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=DwP+PEkt;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id z10si278184pfk.4.2021.07.02.04.59.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Jul 2021 04:59:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 7C6D3613E2
	for <clang-built-linux@googlegroups.com>; Fri,  2 Jul 2021 11:59:45 +0000 (UTC)
Received: by mail-wm1-f44.google.com with SMTP id u8-20020a7bcb080000b02901e44e9caa2aso6201497wmj.4
        for <clang-built-linux@googlegroups.com>; Fri, 02 Jul 2021 04:59:45 -0700 (PDT)
X-Received: by 2002:a05:600c:3205:: with SMTP id r5mr6678910wmp.75.1625227184199;
 Fri, 02 Jul 2021 04:59:44 -0700 (PDT)
MIME-Version: 1.0
References: <20210701235505.1792711-1-ndesaulniers@google.com>
In-Reply-To: <20210701235505.1792711-1-ndesaulniers@google.com>
From: Arnd Bergmann <arnd@kernel.org>
Date: Fri, 2 Jul 2021 13:59:28 +0200
X-Gmail-Original-Message-ID: <CAK8P3a1EfBNxaMbsp+s2BiYHGKPK4NeRR+ugM82jfY43Pq7-Uw@mail.gmail.com>
Message-ID: <CAK8P3a1EfBNxaMbsp+s2BiYHGKPK4NeRR+ugM82jfY43Pq7-Uw@mail.gmail.com>
Subject: Re: [PATCH] arm64: drop CROSS_COMPILE for LLVM=1 LLVM_IAS=1
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Masahiro Yamada <masahiroy@kernel.org>, Fangrui Song <maskray@google.com>, 
	Nathan Chancellor <nathan@kernel.org>, Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=DwP+PEkt;       spf=pass
 (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=arnd@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Fri, Jul 2, 2021 at 1:55 AM 'Nick Desaulniers' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
>
> +ifneq ($(LLVM),)
> +ifneq ($(LLVM_IAS),)
> +ifeq ($(CROSS_COMPILE),)
> +CLANG_TARGET   :=--target=aarch64-linux
> +CLANG_FLAGS    += $(CLANG_TARGET)
> +KBUILD_CFLAGS  += $(CLANG_TARGET)
> +KBUILD_AFLAGS  += $(CLANG_TARGET)
> +endif
> +endif
> +endif

I think only the "CLANG_TARGET   :=--target=aarch64-linux" line should
go into the
per-architecture Makefile. It doesn't hurt to just set that
unconditionally here,
and then change the CLANG_FLAGS logic in the top-level Makefile to use this
in place of $(notdir $(CROSS_COMPILE:%-=%)).

       Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a1EfBNxaMbsp%2Bs2BiYHGKPK4NeRR%2BugM82jfY43Pq7-Uw%40mail.gmail.com.
