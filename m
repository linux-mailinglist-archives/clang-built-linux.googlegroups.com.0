Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBA4LTL5AKGQEH6G7YRI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3b.google.com (mail-oo1-xc3b.google.com [IPv6:2607:f8b0:4864:20::c3b])
	by mail.lfdr.de (Postfix) with ESMTPS id BC127253406
	for <lists+clang-built-linux@lfdr.de>; Wed, 26 Aug 2020 17:53:40 +0200 (CEST)
Received: by mail-oo1-xc3b.google.com with SMTP id r66sf1243223ooa.17
        for <lists+clang-built-linux@lfdr.de>; Wed, 26 Aug 2020 08:53:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598457219; cv=pass;
        d=google.com; s=arc-20160816;
        b=F5VzxBx4wXrVa8uYVfanz9l24LUEERE/SygAbqLOb9efCcGGMkcGjfw7u6MbodrBQ5
         5/acHCERkiHQzOaor3fNJBjJcWfXrZMTiMdG9ktxT/oW+KaL8Tac/pF6y+7szYZp6tDH
         YPWBY5D4Ry3M43ugh3ExFaPEwHzfu4wYzbv6e6bHc7BfhB4wogRfJj5f0FE7PWbpR0k2
         jF5AehH+XJmFsfWyWm5x9VJx20gtB53ZTcqtMgIfSDkPyxuvPoTobNt/fAOZ/e1c+Jj/
         8VqDTXl0tWrwfmkTspq65+i4oRHDXKN7Y9kUUspksSISPvNhYzKF57cSarCNxYMihlSZ
         UWGg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=2r1CB3sftbADY738OETRBfjD3ZsrxsgbEwbQNsHAu9k=;
        b=FGf80gX1tpqSuqwr3+/ZCgfhhH4JR4KSKRNxV/FPD/YQ/aWz0eGUo0NF9L27ox+UT+
         T4anGBAQvnqSSLJdm5hAnSNNvqhMTecayY4EHfa1eSeQDhDW4WVgPq/nLxcbvVrdQr07
         0MZUsSedfAHN9C7d2RhFUL+gtiRlOCL0bL9yNYqxFxADTEmBVd651mkEWyvIEIzyvfzN
         z/28hp2A2pKhHRYYvAbQfk+oG48KAdtwCT+U2q6EiEo8QDw7xc+dcN73bpV6Kjm+9tnJ
         BySJaxbVx0wJF1EILz/GyIe6OGAZ8FtYURGOBibLiGvXnYn9rihx+pGcIb3ij4LS9Wm+
         o43g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IRq8tSuY;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=2r1CB3sftbADY738OETRBfjD3ZsrxsgbEwbQNsHAu9k=;
        b=PZtSLbJ+WQrTZBlgZ0MusfYZAhlgyBi9K+5uoUZtkGxN6p21ANAQJ984hzKavRIs0q
         6pdwL8tyYa+bQIsJEst3AH3e5tXfC6jozWixmQ7QK/9qoHqtbPPI0cGDD/ynHxOw7/79
         R7S7ymS6HWrfXIZTd9QH3D+GatHFoSb2OtBiQO/UrRbNmNzuoDcZgEubtFcqLZ8I8Mq6
         VBKWJh1WzkpgKvd+xslSxj77QB96q0dg+sWoHJSm3K4k2SuYkuUjoOmz+eHVDdoPoIfy
         ROb/H3tjUZT/VA8XcmEBmVADYRRpGMTBsAkPf+RdbFpUIAX9pleqWG/cqftaCOpXU3LT
         lqbQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2r1CB3sftbADY738OETRBfjD3ZsrxsgbEwbQNsHAu9k=;
        b=SNuiCC3x6oZmmL5CzlWeQHsW4FIzZNiKeSQ+R7zy62jpNXWcStP3RgcwmzirQVG+Og
         eSuXCuu07wshJeARr61ItmF+KHFIa/74hB+awsqYPaVWM4MnLEfRgGMIz/8/PUOZ1nIH
         igyr+gqD8+HiibjT9LiirBQ/LyLk1ADp4QnLxpaYRyCkZA4F5opfhaKQckL9YH3xu+qi
         QbxSIURcF+dNDtlWis7vacihvmM7T2XeevVkVxqPM2DR7IJnoaJ9KI6d+vPoFhuOko9T
         2nvgY+xyv2jxmRftjhhFMhqroqdJiet11YDwefBjTqPpbFZB7hlAJbo/kEI5d645AIR3
         W3iA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2r1CB3sftbADY738OETRBfjD3ZsrxsgbEwbQNsHAu9k=;
        b=X7YzGyL6ODgaIC4h4vaL1s2cFZl9g+78RRxw+VVQk6fDSwZryZtKBlKQTOmHgrr8lh
         ZknRG8TYi9tYFT7nymjDwKwQsuYETqqujX3onsGJFg6I3Rvn0kTFRAKJ4HxYnj212CEC
         MI69BNz0R6N5OIvFWxmWwpj4uyy+vP/fSFIxovDv0hgaellrcMfyITmE15czg/TIdqUJ
         NFaFY4wYeNAlNJpxUjIc2W1GGI/t8ZNpvu/KI6oksyaJWzWzDDh0oAMngb+oyBQV/LKG
         8unBWsQmsgsE2UGue3ag0FwWJMtrAgqUvARm1tT+ZYR/kmGE8C+ZFJVQU9kPqbyLG+DZ
         ARPg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5332vzwHiqy1HwOwc/CvkwaZ8VCgm2d7aVR/DdKwTC7LYCX4F1Xk
	5hm4Wiiso+fSlT2VdZoOQsw=
X-Google-Smtp-Source: ABdhPJwnP6juSqLZp+HoFQVtowRjmuJ7Kz0GZ+GOXAoHOzRaRm+ueRxolUPcN6sM+saPCHBBOg1FJg==
X-Received: by 2002:a4a:e9bb:: with SMTP id t27mr11064412ood.18.1598457219407;
        Wed, 26 Aug 2020 08:53:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:66d7:: with SMTP id t23ls665501otm.1.gmail; Wed, 26 Aug
 2020 08:53:38 -0700 (PDT)
X-Received: by 2002:a9d:8c7:: with SMTP id 65mr10736841otf.267.1598457218857;
        Wed, 26 Aug 2020 08:53:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598457218; cv=none;
        d=google.com; s=arc-20160816;
        b=YiUmYmyOqNUJakB4bxqN/JpvqJchONhrJIRsYk98wnel9k3QUlzFEfg/czPEWitU7c
         tgqWup6opWFiQ0z1rVjCqFg9scQSxWYXc4tUTRSCpV9f2upYgi65BRrwWrQxwEiTEA/Q
         oxFN93Ix3F8PPBuKh2W8ri+Ivpc/iN0T0DWyX1WZpXVRvvex/w2+Nj+VQX/NfWkiDSmM
         iA/9b3TiHiz1GN6gAV8HGnJSEx+wCQp24yGOPL1pNBqqu1rjOLMFfzzeGKx/EZ66WWB+
         fQW95HnY/C9tOfr2z6KAtu9sn2Ns7voUSF6AcR4Vmh60DzNiuD6KWIAj/Jz4Cfjwf+K0
         YWfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=o3hN2x+K2/a0e691YPA0Bl66LAw1FrnMBO3y3+oCnw8=;
        b=AkN5Ptofmrl4Eg3Ury/kEbNIWeQc+VWyGjWvRbcB7z/y88hfMJ5+AbgbFGn3Duo1Gf
         MM1uP4auPy8OvmT1p7NJmHB2sXSXKRJ5HYyOHbiFvZ9HwQuij0+qKOKLLtByGuiDMu5d
         EYpqEUfojN3iW3KR/dKzf+f0GXwhxwhHCfOUHkE7fbQrqbUA/EVZU3+Ac8TUNFkkXTLK
         /zFlQnwWGf+DYKxm+OyMmqcnSMskc4cAWiTGMRE6vZFYMKtvm1Yi6soelgJlqcjiTKSd
         z7MJkMGKmcOgs5YSENROyyzkN4atL3S0X4r2A1ZMRsFpVrqzkkhorSNBS21O7pdAsue9
         FA5A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IRq8tSuY;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x241.google.com (mail-oi1-x241.google.com. [2607:f8b0:4864:20::241])
        by gmr-mx.google.com with ESMTPS id c199si133894oob.1.2020.08.26.08.53.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Aug 2020 08:53:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) client-ip=2607:f8b0:4864:20::241;
Received: by mail-oi1-x241.google.com with SMTP id j18so1933096oig.5
        for <clang-built-linux@googlegroups.com>; Wed, 26 Aug 2020 08:53:38 -0700 (PDT)
X-Received: by 2002:aca:3157:: with SMTP id x84mr1273577oix.70.1598457217075;
 Wed, 26 Aug 2020 08:53:37 -0700 (PDT)
MIME-Version: 1.0
References: <20200825222552.3113760-1-ndesaulniers@google.com>
In-Reply-To: <20200825222552.3113760-1-ndesaulniers@google.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Wed, 26 Aug 2020 17:53:26 +0200
Message-ID: <CA+icZUVhwqF=TT2V3XOw1RbdX4g_i5qVX-5eTkVcsgEbfGyJkw@mail.gmail.com>
Subject: Re: [PATCH] Documentation: add minimum clang/llvm version
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Michal Marek <michal.lkml@markovi.net>, Jonathan Corbet <corbet@lwn.net>, 
	Randy Dunlap <rdunlap@infradead.org>, "Theodore Ts'o" <tytso@mit.edu>, Kees Cook <keescook@chromium.org>, 
	Will Deacon <will@kernel.org>, Borislav Petkov <bp@suse.de>, 
	"Alexander A. Klimov" <grandmaster@al2klimov.de>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, linux-kbuild@vger.kernel.org, 
	linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=IRq8tSuY;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::241
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

On Wed, Aug 26, 2020 at 12:26 AM 'Nick Desaulniers' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
>
> Based on a vote at the LLVM BoF at Plumbers 2020, we decided to start
> small, supporting just one formal upstream release of LLVM for now.
>
> We can probably widen the support window of supported versions over
> time.  Also, note that LLVM's release process is different than GCC's.
> GCC tends to have 1 major release per year while releasing minor updates
> to the past 3 major versions.  LLVM tends to support one major release
> and one minor release every six months.
>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
> Note to reviewers: working remote, I'm having trouble testing/verifying
> that I have the RST links wired up correctly; I would appreciate it if
> someone is able to `make htmldocs` and check
> Documentation/output/process/changes.html properly links to
> Documentation/output/kbuild/llvm.html.
>
>  Documentation/kbuild/llvm.rst     |  2 ++
>  Documentation/process/changes.rst | 10 ++++++++++
>  2 files changed, 12 insertions(+)
>
> diff --git a/Documentation/kbuild/llvm.rst b/Documentation/kbuild/llvm.rst
> index 2aac50b97921..70ec6e9a183b 100644
> --- a/Documentation/kbuild/llvm.rst
> +++ b/Documentation/kbuild/llvm.rst
> @@ -1,3 +1,5 @@
> +.. _kbuild_llvm:
> +
>  ==============================
>  Building Linux with Clang/LLVM
>  ==============================
> diff --git a/Documentation/process/changes.rst b/Documentation/process/changes.rst
> index ee741763a3fc..6c580ef9f2a3 100644
> --- a/Documentation/process/changes.rst
> +++ b/Documentation/process/changes.rst
> @@ -30,6 +30,7 @@ you probably needn't concern yourself with pcmciautils.
>          Program        Minimal version       Command to check the version
>  ====================== ===============  ========================================
>  GNU C                  4.9              gcc --version
> +Clang/LLVM (optional)  10.0.1           clang --version
>  GNU make               3.81             make --version
>  binutils               2.23             ld -v
>  flex                   2.5.35           flex --version
> @@ -68,6 +69,15 @@ GCC
>  The gcc version requirements may vary depending on the type of CPU in your
>  computer.
>
> +Clang/LLVM (optional)
> +---------------------
> +
> +The latest formal release of clang and LLVM utils (according to
> +`releases.llvm.org <https://releases.llvm.org>`_) are supported for building
> +kernels. Older releases aren't gauranteed to work, and we may drop workarounds
> +from the kernel that were used to support older versions. Please see additional
> +docs on :ref:`Building Linux with Clang/LLVM <kbuild_llvm>`.
> +
>  Make

Thanks for the text - a first good step.

Do you plan checks in the source-code - in the future (see [1] where I
played a bit)?
Arch-specific supported LLVM toolchain versions?
Feature-specific support (like KCSAN, Clang-IAS, etc.)?
In the future we should introduce some checks for this to be user-friendly.

If you talk about "Clang/LLVM" does this include the LLD linker?
Personally, I think LLD is worth a separate item like GNU/ld (BFD) linker.

The last few days I was able to build with GCC v10.2 and LLD and even
full LLVM "bin"utils (see [2]) version 11.0.0-rc2 on Debian/unstable
AMD64.

Just some thoughts - for the future.

- Sedat -

[1] https://github.com/ClangBuiltLinux/linux/issues/941
[2] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/kbuild/llvm.rst#n47

>  ----
>
> --
> 2.28.0.297.g1956fa8f8d-goog
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200825222552.3113760-1-ndesaulniers%40google.com.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUVhwqF%3DTT2V3XOw1RbdX4g_i5qVX-5eTkVcsgEbfGyJkw%40mail.gmail.com.
