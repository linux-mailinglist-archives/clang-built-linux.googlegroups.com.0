Return-Path: <clang-built-linux+bncBC2ORX645YPRB2WF6TWAKGQE4UPPLUQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53e.google.com (mail-pg1-x53e.google.com [IPv6:2607:f8b0:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id 816DFD0482
	for <lists+clang-built-linux@lfdr.de>; Wed,  9 Oct 2019 01:59:40 +0200 (CEST)
Received: by mail-pg1-x53e.google.com with SMTP id k18sf319645pgh.22
        for <lists+clang-built-linux@lfdr.de>; Tue, 08 Oct 2019 16:59:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570579178; cv=pass;
        d=google.com; s=arc-20160816;
        b=IcCOxCIXc1wKqJRwzoci1TQB6/xcj0Dc+sUQfWcLeE0EtRsXRhCplW8AmKBuvaLyC+
         ZUpSCQVRyqeSWQwWld2GAhlWv1QUqsrkqINxq7gDsHEfuNWxbM00TwQ4YuLVYFAC9LLK
         NxMPBWlS7i68azlMxbieC5pJZsXLY0U2FfarJM5/PArNgD5DT34BpqbXDsEc9Gptg1sz
         EX1o4ChiuGpgHarWJW/yIAPofbUMGuUVpm8jzKJtESctUgxKkNhn2Dmd+HtxGLu4tEqs
         tE5hjsKOzu8DCAnQVYUTOdrpDtH2/IXf71XgODVOHozFTRlaEN3zi7TFC/h0nS5j24br
         fkag==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=ZiwJohizs+G+9iwRdypZD1GaTCTt+V1N6yB2fe5ozmI=;
        b=QHdlKmholgJcwyX2uOoQdhh3yV8AQy63r/06gCZizMwBipzrp1Uj8wEdPmx4L7gl45
         hPOU6wFeY7RBrJNTjlOA7oPcmQoelOCB20zNFUcXvNoyCBZH7CrwlO/2sTP9c89uvM8c
         iFXc0O9e6LW64tPed4uxJ3rbPokyMISFtEcFn4VaH9Q1x9GEFT4fTDgbD2Qq/bFNxP2d
         g10gUgsVJtAQnLHOnFQjOdwGpQ8JbR+FPf7ykH4R1Kp+Lajf0wt8lI5+ZcUj3Hp+aP2i
         /RU1Sn0XJ/biZDY2t6HBK1l+xsJwst9ftRjzsA3SbLLhF7nZx0bHRUmFqp9WZvenVGyG
         yg3g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=QE7I8H1y;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e43 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZiwJohizs+G+9iwRdypZD1GaTCTt+V1N6yB2fe5ozmI=;
        b=GMjR1AA4VVmtZ6CYd9a4zYL/T5OUZXXf/wDvX62NdVtolSMyrjK+8jsxqTziYqNGT9
         zIW3oPO0+UhWqIWbGykvzDN/C7dz/vkzKyQcx7teNOxTAFqMTr/Me7rimkt1SSFysciw
         XXwyUrGl+gBzXHOcUb6IzzHkZcssooQB5vY4Qpk5ZL9PRnD7nuT3EQP/y5fSEjKxJ8VC
         i5goS+RPHQ/YMz+aKGCkdr+lfU9f3iJhujhTTy174KQ+zKq7qUQkqL11WX/YfJAKEuEQ
         Z9qd00GyagaZSibAiVBsi/l9GZZwAxJDAxa33cr9I4IwnbR47Ew/uptTiMehmxGbuKVg
         +G9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZiwJohizs+G+9iwRdypZD1GaTCTt+V1N6yB2fe5ozmI=;
        b=YccqHv/uP68JKhN8nFkqCNhshk3zt4bfsi53yMNmYA6+ogl69GciCUaF4b8cdnWuNT
         VJ4R9RARiY19cK6nTu57vFgPsoi6Ir6qqcS5XD9sQS/h4qZrMUfTup+mBunQXWpkPuSA
         alU9j+4K0EHzCf2+MJyGNEwgx3Hlg5EI9Um4OJD0X4sc8UzV9irlfy+BhiafhLh6ie4C
         4Xp8R5R29TB0ek6jo+HIqHNdH6LkcuIi0DVSt0eK6NB7ipnYv9vTOuv83Lb2A9cviFiY
         uQp1ccCP8aXXkGSr2eUu/rf1iHBGqD5hTgKr3MQL3yUp3DTke+9R8x0dQOnlZ1kTQSEn
         J/Pw==
X-Gm-Message-State: APjAAAVZvawv5q0DUmxmnuFVquxeCsDVzVVe5AacQQZKzLYYAj492oqo
	ABGAkqAsJbWeJXhsA8wDZsA=
X-Google-Smtp-Source: APXvYqx1GngFC0E7ImWZUkrWxn4rPjD3LKKsySwmMNMJvC3kvBMNWk87OcARtNoHr6CxwTIdsnrqrQ==
X-Received: by 2002:a17:90a:1b2a:: with SMTP id q39mr526061pjq.119.1570579178754;
        Tue, 08 Oct 2019 16:59:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:8bca:: with SMTP id r10ls79036plo.13.gmail; Tue, 08
 Oct 2019 16:59:38 -0700 (PDT)
X-Received: by 2002:a17:90a:ab83:: with SMTP id n3mr15587pjq.21.1570579178364;
        Tue, 08 Oct 2019 16:59:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570579178; cv=none;
        d=google.com; s=arc-20160816;
        b=RyDeyOAbimZo4a6eSY/oqrH+kjVfc7rmtTFvGaRijTrry4bzAdaiwSVzsrcO1W5fWe
         hhG95VtRj+W/tuwrjO/UWg+4rTSaH0wG0BgAeRAWyy3fA/ZyNasBsXGI3suV01V2pgAm
         4libXK1Gayq7DdJOG0+hPfJvGoFFI/MQrlAKsFShr9FiTDrYjpfNJQvWaxHKTcZCjCea
         lagFO9FWbdGRDInGv+/nq4UCVulVz56cRY+OZNuWdEHqxU147Cq/Xt/ybWar8jMZ0qGn
         kZUExnr++BhgwG1pDSuhayba/FKWawL8Pnyfp7dTZrqDBUSYalcdOEJpMXzDmv83JEuA
         sRkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=IiU+G19i3fEefcyixdkbPWCOAivgpSzN7Ja8u7mhp4s=;
        b=hazWyjDdRn5AotO6Xqs7bEFNmML51BmlDNa06TvGAMHvqmxpB2fUxSKGRXZS2xcKEO
         C6SdmZCEjImnzek6r+cWVAjafPEsq/iCnNlJx5qqoIXEZ/KlE9+cuuUVAh76dnGjO9mT
         ymDSwHDNQyVHBShwRLciMsTyZXxftIrmxExyFh5eV35XtPUz1ftvDrCyRJPWWPXFP4O1
         ZBsprfXXKselE8uiWn5wLVzWeGWZCTikKiwGA+5gFF2gOqSwGCswOMpnfMgf/osGrOBr
         0YSODPjok6vLvUCWNV2B1Gi/dDMnhRyJnkp9JmGajTEkYd1gPrP+PMxa8OC8TGVE6Dp8
         O5pQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=QE7I8H1y;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e43 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-vs1-xe43.google.com (mail-vs1-xe43.google.com. [2607:f8b0:4864:20::e43])
        by gmr-mx.google.com with ESMTPS id d5si49106pls.5.2019.10.08.16.59.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Oct 2019 16:59:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e43 as permitted sender) client-ip=2607:f8b0:4864:20::e43;
Received: by mail-vs1-xe43.google.com with SMTP id l2so313413vsr.8
        for <clang-built-linux@googlegroups.com>; Tue, 08 Oct 2019 16:59:38 -0700 (PDT)
X-Received: by 2002:a67:ffc7:: with SMTP id w7mr268399vsq.15.1570579176908;
 Tue, 08 Oct 2019 16:59:36 -0700 (PDT)
MIME-Version: 1.0
References: <20191007201452.208067-1-samitolvanen@google.com>
 <20191008212730.185532-1-samitolvanen@google.com> <20191008233137.GL42880@e119886-lin.cambridge.arm.com>
In-Reply-To: <20191008233137.GL42880@e119886-lin.cambridge.arm.com>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 8 Oct 2019 16:59:25 -0700
Message-ID: <CABCJKufHzQamE5+JtH0J4TyS05kutkty_7GwJ6w8T-szdCwHvg@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: lse: fix LSE atomics with LLVM's integrated assembler
To: Andrew Murray <andrew.murray@arm.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Kees Cook <keescook@chromium.org>, 
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=QE7I8H1y;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e43
 as permitted sender) smtp.mailfrom=samitolvanen@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

On Tue, Oct 8, 2019 at 4:31 PM Andrew Murray <andrew.murray@arm.com> wrote:
> This looks good to me. I can build and boot in a model with both Clang
> (9.0.6) and GCC (7.3.1) and boot a guest without anything going bang.

Great, thank you for testing this!

> Though when I build with AS=clang, e.g.
>
> make ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- CC=clang AS=clang Image

Note that this patch only fixes issues with inline assembly, which
should at some point allow us to drop -no-integrated-as from clang
builds. I believe there are still other fixes needed before AS=clang
works.

> I get errors like this:
>
>   CC      init/main.o
> In file included from init/main.c:17:
> In file included from ./include/linux/module.h:9:
> In file included from ./include/linux/list.h:9:
> In file included from ./include/linux/kernel.h:12:
> In file included from ./include/linux/bitops.h:26:
> In file included from ./arch/arm64/include/asm/bitops.h:26:
> In file included from ./include/asm-generic/bitops/atomic.h:5:
> In file included from ./include/linux/atomic.h:7:
> In file included from ./arch/arm64/include/asm/atomic.h:16:
> In file included from ./arch/arm64/include/asm/cmpxchg.h:14:
> In file included from ./arch/arm64/include/asm/lse.h:13:
> In file included from ./include/linux/jump_label.h:117:
> ./arch/arm64/include/asm/jump_label.h:24:20: error: expected a symbol reference in '.long' directive
>                  "      .align          3                       \n\t"
>                                                                   ^
> <inline asm>:4:21: note: instantiated into assembly here
>                 .long           1b - ., "" - .
>                                            ^
>
> I'm assuming that I'm doing something wrong?

No, this particular issue will be fixed in clang 10:
https://github.com/ClangBuiltLinux/linux/issues/500

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKufHzQamE5%2BJtH0J4TyS05kutkty_7GwJ6w8T-szdCwHvg%40mail.gmail.com.
