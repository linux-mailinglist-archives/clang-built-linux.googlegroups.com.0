Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB7PEQ74QKGQEB7WLC4A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103f.google.com (mail-pj1-x103f.google.com [IPv6:2607:f8b0:4864:20::103f])
	by mail.lfdr.de (Postfix) with ESMTPS id 7664523274D
	for <lists+clang-built-linux@lfdr.de>; Thu, 30 Jul 2020 00:04:47 +0200 (CEST)
Received: by mail-pj1-x103f.google.com with SMTP id d8sf3141461pjj.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 29 Jul 2020 15:04:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596060286; cv=pass;
        d=google.com; s=arc-20160816;
        b=zh/w/yPQMY6PVVqFZa8Xc2F8QF0ITDHx1c0v17aYsmQJ7KT16YkpkcX3vP4O6IeNDs
         oKmxqYfuFiYJlH5b13VGARIIB1OjcFuJc3VZ7ncHq7t0qDot/XIgaictu2MTfisv8rn9
         1NkCnmyJEzbHdWIC8evZ+KtYNRcR//iuRz4g+x+RXy3RE7bg+hFBcnMmx1hsyC4Q/FxT
         Zs1Bh8kcJT7ceMD+oRYjgoM3Cz9NqACRM3BgGHRo8VZDSB4v2EjzVaa/tMIsMwfkxS2L
         licbwpRBr3h8WvYq7skX95QJDdrBoZYpmbRTWMKG4TqBeDie1+1Z4mWt2mFKxl+DF+Cw
         oLMQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=shU/Ld4Xy6R0vcwacQsWY6Q20QQc8wIiOF7B9TelACU=;
        b=HdB6zdfrXZJIy00Z+YRxnNw4eyIHLETexulMwYnR9hZurdQdIxgUzRwXEtLO6BTpUY
         jAyIOLSeTbRDTz44V9Z9YMj8WsCDaYKduF7zVw2KbqUu2ZPwzyTEkSZ/xJUIPVp/DLEA
         oqP6N57F8bnSOaCvd5w3YrkGlybrrMrEVM0Y+C/IXjb+yZxaYizLHo0tlTLn7V/9Agvs
         o1DaE7qtQZk+qQnURJSS69l9gtHjvmf/UgSBwS5k3KknMjV+oJskCIcvHWpBAyZXNe5G
         7qEKGjKfVSs8EdM4RV1rrKkJqGJQS3nRgPUaW3xVgv0UPkvGP70GrMRokoiB5iyicDm4
         RfWw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=LmCSkNmG;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=shU/Ld4Xy6R0vcwacQsWY6Q20QQc8wIiOF7B9TelACU=;
        b=foCr90KMsbtZ4h9fzNR2z7TlLbJcAubCRAhl5ydnhyBQPBTLt65bYpnRJKLQjOe1cf
         euYV+dg7WjLvb72Brp7xjqKS0KBouaK3h2T+pL1LJGwFKhrWkTn7CwDfzNc26mKMYe2w
         TbXSqfY+rTFOB+W7Y8E2IQMp6z7jwk5fB5f7DcwDz0hRFSbE7/cRkbjrKX0qcSDvhNaB
         V1iGrPuxivEwb4IWaxZi2gVAbc11186Kkp31+In0jCTn6FEkhpVbNWRICe1hNS1ApLDF
         r/GU7Qzc+iWkEPlZWXm3oJurTcdZiXku2q/6Btc3a7s3B5VIftMo91rfmlE8vWyFZUip
         lDIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=shU/Ld4Xy6R0vcwacQsWY6Q20QQc8wIiOF7B9TelACU=;
        b=dwHnfPwUbmDSCdlt8yj8mSw5y7RqXeT6E7dQSLMTazzy8wOmLTdMD7YGe329YxY+Pu
         dGKwkfxJ8yDfHr4zHGdtDEe62gm2Vhf5gIYzSvM68UY1rXmaZQ0peBAK6uH4ETHHPqNI
         Oq+8e/gaTqs/oWGHyhwnD4acfMg26p1P3SSHhU/SP72SqT940GpXzGrnqB4VVxAKGAbh
         QuZ/xeoEMZk1VIAVeajt9yztCGfPb1DFbvRPO95R2nkyIVV0VkcprEabw98sr5cDtsiR
         FUS9C7qDv3GPKf9hfNsQbYsc4HRk3KFzUvbCICxoSvh1WVzcpxFcjGzY8tuaLlIwJ5kn
         IwBQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532rpo2VdkLc9giQ+0j9p2wk/C7Bl8Hz/mvMbvInUccEDAX+56AE
	SSq2jqvS39lOjV+fhYWXkVE=
X-Google-Smtp-Source: ABdhPJxkcLjgjR68mcFzl+sHAKpQjveNjItSQG/e8+fVUlsXoVcDHONXb7SiwFADTITwPFpfIf06Rg==
X-Received: by 2002:a63:2d44:: with SMTP id t65mr32165342pgt.257.1596060285892;
        Wed, 29 Jul 2020 15:04:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:8306:: with SMTP id h6ls1160847pfe.1.gmail; Wed, 29 Jul
 2020 15:04:45 -0700 (PDT)
X-Received: by 2002:a63:5258:: with SMTP id s24mr8333902pgl.293.1596060285482;
        Wed, 29 Jul 2020 15:04:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596060285; cv=none;
        d=google.com; s=arc-20160816;
        b=VuZoqBDv/c80fxqnMr/h5GFI19vU8ZQfUr+jwyuR7fh2/mNvVeIrPjfqMnuZIJD1rn
         WQz24Pq+AgOj3fN1TNIUPCK78SRQUuSU1OY7DUMlLzEXzhmpVpKYugp875SLi2SUq1Mr
         fzwhMdfJ9Uld3T4ZoIj9ZsMVlpvpdzdiBydH/tBTZKHLkJCFrU00Hc2m5t6ZyCXW4P9S
         /e570h6b/xTGoRQKb3tWvvOirrFkMmpXcEOCYFqG5u2LiMoTjOJbUwHH9ue3pGc4zx2o
         qWbmUHpq1aSYFqlFk8LPPW4NceDXoZsOWL4BY2A1z7wJf1yW/NV10xKgg7miy/cRawQu
         kZOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=HjociY7OAB6oMEemFlGGf0Ydinx3jHC68l3tE+c8Rt8=;
        b=TTXQrpZ7iXoIUWcyVt19Kzu3R0+p9dXXM+Ckj0oC+1z3PZ+YOjjhtvAMmW9uIE4XyT
         2OiwimjoDpzIogEs+3Atu9jG7ZCBnBXkXXUy9hCEPIyoqdi0J6+40bHh01Ckm7TUhzd/
         z4i+Igz/UZdANTyBz6skjhhge0Yus2pbtZclO1zwqKE/Dr72eDWIUfLM7p/X1zXrCB8G
         IqGEN7Skz8V+L/sAS4HPooPz2ycjjy8w86/J9vH9+l69y0a12vR1rAGIL5VGPcqGG55X
         7GPXEMEyKcqRE/fmlXJ9dLRAeEBT+xuQyeMUOqlwCYel3xChrV4vB87IQ7U4/c3Mqrpj
         spLA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=LmCSkNmG;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id n3si370589pjb.3.2020.07.29.15.04.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Jul 2020 15:04:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Received: by mail-pg1-x543.google.com with SMTP id x6so49863pgx.12
        for <clang-built-linux@googlegroups.com>; Wed, 29 Jul 2020 15:04:45 -0700 (PDT)
X-Received: by 2002:a63:4543:: with SMTP id u3mr29084995pgk.398.1596060285159;
        Wed, 29 Jul 2020 15:04:45 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id j94sm3165634pje.44.2020.07.29.15.04.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Jul 2020 15:04:44 -0700 (PDT)
Date: Wed, 29 Jul 2020 15:04:43 -0700
From: Kees Cook <keescook@chromium.org>
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>, "H. Peter Anvin" <hpa@zytor.com>,
	x86@kernel.org, Nick Desaulniers <ndesaulniers@google.com>,
	Fangrui Song <maskray@google.com>, Dmitry Golovin <dima@golovin.in>,
	clang-built-linux@googlegroups.com,
	Ard Biesheuvel <ardb@kernel.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>, "H . J . Lu" <hjl@sourceware.org>,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH-next v5 0/7] x86/boot: Remove run-time relocations from
 compressed kernel
Message-ID: <202007291502.18DC4C0F@keescook>
References: <CAKwvOdnTbatx8VB-rJSzyFPwfYnkMYK28yLBn1G+hUu8dyfYRA@mail.gmail.com>
 <20200717201801.3661843-1-nivedita@alum.mit.edu>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200717201801.3661843-1-nivedita@alum.mit.edu>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=LmCSkNmG;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::543
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Fri, Jul 17, 2020 at 04:17:54PM -0400, Arvind Sankar wrote:
> Same as v5 previously posted, but rebased onto next-20200717.
> 
> v5: https://lore.kernel.org/lkml/20200715004133.1430068-1-nivedita@alum.mit.edu/

BTW, some bits of feedback on process:

- please don't re-use version numbers, this is confusing :)
- please fix whatever is happening with the "In-Reply-To:" headers, the
  threading is extremely hard to understand (each patch isn't a reply to
  the cover letter, and everything is a reply to a single earlier email)

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202007291502.18DC4C0F%40keescook.
