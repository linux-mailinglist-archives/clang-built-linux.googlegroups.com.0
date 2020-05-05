Return-Path: <clang-built-linux+bncBDYJPJO25UGBB46EY72QKGQESCJQNSA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103d.google.com (mail-pj1-x103d.google.com [IPv6:2607:f8b0:4864:20::103d])
	by mail.lfdr.de (Postfix) with ESMTPS id CB7FA1C6394
	for <lists+clang-built-linux@lfdr.de>; Wed,  6 May 2020 00:02:28 +0200 (CEST)
Received: by mail-pj1-x103d.google.com with SMTP id l11sf286189pjz.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 May 2020 15:02:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588716147; cv=pass;
        d=google.com; s=arc-20160816;
        b=tNuETGrip59wxm9tjYXJ41cnIv/dkLOggBaRH4YwZRZCtU5xADNge8n9tw+pPLD01A
         YmWqerlwaZTau1XqSI2GPDpQMhNLUjG0Fc+0ePEy8VLbD81gJO8Q4/7xOvledc5mG50T
         +6RhReZSBc0cfhc2zYa0dlYOrchOaToXaYeHb6Lka/aRiyW4cbewfJIVk1EwcMcDeMUH
         y3MEY4Yy54Cf8SybLbCIKnU8ha9CyRvDRfUlYJxP51X8pX4tldqHV7PPiR8BX/DSuadO
         wk9hnldzYcV4PSr1QlfOIK6wzqM7nPoRSoIxIxYosQ0/KVxzzuAljBACZrutzt4CBRYl
         3cJg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=Kq6taaFU6cGt2WOfUzTBb81y3BjNzQs/WMSzMG0p8QY=;
        b=GqHYlAiZaIfdTeTOUPSCwNrSS36BRnL7zOlw7yiGrzzdvXL98qQvTTGlP2Y4cGzH21
         7A/onpefDauq1TF3j36f0ZOd+Bm0y2t+bH+KpA4MQHmlofcWW/zAEsFw6x4XPoy61q7R
         arpAYa9XnozTWeltmubzRUk8FrsSL17OusB1u63OgwnXhN0hS4zhjq76mKQatm1zwMnu
         P0WmbChOQqs6tQrs6Ku8aZ2afIB7WUf3ueHXT4JM2nyt6LSr9cWyTGKoQK3O99HthxgC
         aEEm55YfhaaN17mw2lDD0nJfqtp5sh8n7UTkDUO5YyPV9w6SwLFkZ9pyXeUJPJbjQp2M
         bcdA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=n4aYqZKu;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Kq6taaFU6cGt2WOfUzTBb81y3BjNzQs/WMSzMG0p8QY=;
        b=pz4Sfh8qGRUQVfTsCatpixkNssTblIhiybZlGwWVBeCJca7KhneKGK2IrbAvXZgPFa
         t6GkZz1103YcUT6yl/ntPGU6aA+xM9GsrfjGL56JnSSur4b389mODOJ76RtQsIsxkaAZ
         2FJnho/vFZt7mhozwGwOE8iDS6DHX+S6MWDMdWbjn7DCc7vfKNXL9DBbUEAtI+znNpzY
         7ENZ3mbwa0satJ7frDnDjgkMk+NFhU/ns5MaRdJeXRhTQkPS3F/X6Wozigtc69/siOeW
         T2mlorvvP3zq7nviPb7eOfrzlmcp+6ssvobOwkfpDv05sCeOzpI7RowHhe3YKg28AQF4
         8BSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Kq6taaFU6cGt2WOfUzTBb81y3BjNzQs/WMSzMG0p8QY=;
        b=SR29wN3rH+6xGYVKFibmgo6+tv7s6zmOTYs93ENYmTTBpyxktjkIV68TRVClU3jewv
         BS7aXVeFmxIdHJaEv9HmUCb0Z2RsOIgjnIURB3UEKOtHZc1bOO4i6w1tNFmjiy8ZNvLN
         NbTaI6bXicASYgnhxor7DUWFtL95qqBdFg34XC/pcZx9AO/luJIaschC0b1I7WwwfmZq
         Tj9xBpmub7w4NNFVW5SuZe3Rboj6tGIINC+vM80p9FBZxZhuePkL4bsx2L7phFq8a4Qs
         rtTWCheWKZafvPZnaWrTDz//997KgVwWzPRKKgofzi6mI03pfjMvTlQct/voL6wk1N2B
         yCRA==
X-Gm-Message-State: AGi0Pubulx4AixWldL6b4YWrtTrZ1Y81OmLBmlUKhwVZ1lVd/vXYS357
	Rv4ScZbyZ0caao9T+va4Hr0=
X-Google-Smtp-Source: APiQypJtsI2A/oji/De1gP4gJhWSKZ6/yetCv4ssXLBFsBiQ8Ikuzne3Dk50UeRBoxhwIB7oAeHkFg==
X-Received: by 2002:a65:62d5:: with SMTP id m21mr4369597pgv.75.1588716147500;
        Tue, 05 May 2020 15:02:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:6a48:: with SMTP id f69ls802885pgc.8.gmail; Tue, 05 May
 2020 15:02:27 -0700 (PDT)
X-Received: by 2002:a62:be16:: with SMTP id l22mr5340231pff.40.1588716147022;
        Tue, 05 May 2020 15:02:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588716147; cv=none;
        d=google.com; s=arc-20160816;
        b=OYo2fACqqhSLf9TSTQy9eUC4UaELuxK5c1+2HICROrG7ewb0YR6fvtoxNJJJ5JC8mH
         6H/EJx+etDU8Kbf1qN3jhbYlT6sA69OCmj5CDfd+ZcJiIhJmSKW56HA5IXujHJouvH3D
         1dz3xEWgzLy6gF+Gk3Ee0v1OQFtDN7236VzgqEM9pEPm4UBFxnOC7D0825uVhXJfIm1h
         B5kx6nrTKv0wXTphfzaONTfVK4Bx5qoAqs6z4BcCSxvgHvjrvooTZn0gDkNRlT2QBBPf
         dE7D9vAuuL451FvVNU5MZBB6RwsWXLjL654GZRs0Etuw6iqTnueavPgV3hoXmdipfbxL
         p+4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=meutyvpqi9+qTZ06UEsokNwwGPTMphxT3NcJSXe1Pt4=;
        b=he9rpeCRwog5PAkYmCQBZ/VXk34F9Rq4p1c/CyhaiOrWoYHSwWJZD9LcDN0Vpc/Y+6
         S3ZH7nmvKozB4XGBs+nrbXiuQNaaPhNDIl9VyeJyTLTmjJ7e7ohsjs1ci4Kw1zmPXLDj
         xe3SYleu8CenQhXLbMSbbuORwOjxnLVQ4e+oVjPR+9lsYl1UbhoHe6OXOUo6iZ4eTlf1
         WFA4ThFx8E7uFmbmJkyANvmmj/7tshjPrdPUTOVT/g1mOOqLCJr1tbV+vaufDAfb9qZQ
         8r2J6JO0RSzeXtDMtNoJicmEANt3VJ5Hp2nO/AxxJBsCmUyaUrECrBkZxFX+WMar10eH
         3DKw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=n4aYqZKu;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id q5si2958pgl.1.2020.05.05.15.02.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 May 2020 15:02:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id b8so1642577pgi.11
        for <clang-built-linux@googlegroups.com>; Tue, 05 May 2020 15:02:26 -0700 (PDT)
X-Received: by 2002:a65:5ac4:: with SMTP id d4mr4267862pgt.381.1588716146345;
 Tue, 05 May 2020 15:02:26 -0700 (PDT)
MIME-Version: 1.0
References: <CAHmME9oMcfY4nwkknwN9c4rB-O7xD4GCAOFPoZCbdnq=034=Vw@mail.gmail.com>
 <20200505215503.691205-1-Jason@zx2c4.com>
In-Reply-To: <20200505215503.691205-1-Jason@zx2c4.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 5 May 2020 15:02:16 -0700
Message-ID: <CAKwvOdk32cDowvrqRPKDRpf2ZiXh=jVnBTmhM-NWD=Ownq9v3w@mail.gmail.com>
Subject: Re: [PATCH] Kbuild: disable FORTIFY_SOURCE on clang-10
To: "Jason A. Donenfeld" <Jason@zx2c4.com>
Cc: "open list:HARDWARE RANDOM NUMBER GENERATOR CORE" <linux-crypto@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Arnd Bergmann <arnd@arndb.de>, 
	Kees Cook <keescook@chromium.org>, George Burgess <gbiv@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=n4aYqZKu;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542
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

On Tue, May 5, 2020 at 2:55 PM Jason A. Donenfeld <Jason@zx2c4.com> wrote:
>
> clang-10 has a broken optimization stage that doesn't enable the
> compiler to prove at compile time that certain memcpys are within
> bounds, and thus the outline memcpy is always called, resulting in
> horrific performance, and in some cases, excessive stack frame growth.
> Here's a simple reproducer:
>
>     typedef unsigned long size_t;
>     void *c(void *dest, const void *src, size_t n) __asm__("memcpy");
>     extern inline __attribute__((gnu_inline)) void *memcpy(void *dest, const void *src, size_t n) { return c(dest, src, n); }
>     void blah(char *a)
>     {
>       unsigned long long b[10], c[10];
>       int i;
>
>       memcpy(b, a, sizeof(b));
>       for (i = 0; i < 10; ++i)
>         c[i] = b[i] ^ b[9 - i];
>       for (i = 0; i < 10; ++i)
>         b[i] = c[i] ^ a[i];
>       memcpy(a, b, sizeof(b));
>     }
>
> Compile this with clang-9 and clang-10 and observe:
>
> zx2c4@thinkpad /tmp/curve25519-hacl64-stack-frame-size-test $ clang-10 -Wframe-larger-than=0 -O3 -c b.c -o c10.o
> b.c:5:6: warning: stack frame size of 104 bytes in function 'blah' [-Wframe-larger-than=]
> void blah(char *a)
>      ^
> 1 warning generated.
> zx2c4@thinkpad /tmp/curve25519-hacl64-stack-frame-size-test $ clang-9 -Wframe-larger-than=0 -O3 -c b.c -o c9.o
>
> Looking at the disassembly of c10.o and c9.o, one can see that c9.o is
> properly optimized in the obvious way one would expect, while c10.o has
> blown up and includes extern calls to memcpy.
>
> This is present on the most trivial bits of code. Thus, for clang-10, we
> just set __NO_FORTIFY globally, so that this issue won't be incurred.
>
> Cc: Arnd Bergmann <arnd@arndb.de>
> Cc: LKML <linux-kernel@vger.kernel.org>
> Cc: clang-built-linux <clang-built-linux@googlegroups.com>
> Cc: Kees Cook <keescook@chromium.org>
> Cc: George Burgess <gbiv@google.com>
> Cc: Nick Desaulniers <ndesaulniers@google.com>
> Link: https://bugs.llvm.org/show_bug.cgi?id=45802
> Signed-off-by: Jason A. Donenfeld <Jason@zx2c4.com>

I'm going to request this not be merged until careful comment from
George and Kees. My hands are quite full at the moment with other
regressions.  I suspect these threads may be relevant, though I
haven't had time to read through them myself.
https://github.com/ClangBuiltLinux/linux/issues/979
https://github.com/ClangBuiltLinux/linux/pull/980


> ---
>  Makefile | 7 +++++++
>  1 file changed, 7 insertions(+)
>
> diff --git a/Makefile b/Makefile
> index 49b2709ff44e..f022f077591d 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -768,6 +768,13 @@ KBUILD_CFLAGS += -Wno-gnu
>  # source of a reference will be _MergedGlobals and not on of the whitelisted names.
>  # See modpost pattern 2
>  KBUILD_CFLAGS += -mno-global-merge
> +
> +# clang-10 has a broken optimization stage that causes memcpy to always be
> +# outline, resulting in excessive stack frame growth and poor performance.
> +ifeq ($(shell test $(CONFIG_CLANG_VERSION) -ge 100000 && test $(CONFIG_CLANG_VERSION) -lt 110000; echo $$?),0)
> +KBUILD_CFLAGS += -D__NO_FORTIFY
> +endif
> +
>  else
>
>  # These warnings generated too much noise in a regular build.
> --
> 2.26.2
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdk32cDowvrqRPKDRpf2ZiXh%3DjVnBTmhM-NWD%3DOwnq9v3w%40mail.gmail.com.
