Return-Path: <clang-built-linux+bncBAABBLN7WCDAMGQE75V5IGY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63c.google.com (mail-pl1-x63c.google.com [IPv6:2607:f8b0:4864:20::63c])
	by mail.lfdr.de (Postfix) with ESMTPS id E82803AC1FB
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Jun 2021 06:23:10 +0200 (CEST)
Received: by mail-pl1-x63c.google.com with SMTP id 62-20020a1709020544b0290116739a77a4sf2487139plf.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 17 Jun 2021 21:23:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623990189; cv=pass;
        d=google.com; s=arc-20160816;
        b=cZIhRfBfVQb4H3SSdHJSPu3JgQwxntUBLYI1uxvOizDIXFaaZfxhXvSaxmjcHm+9gN
         QbjsTgCXspB0XDmrKGM2bWe97459RkkWU/MvHLF0YwVPFMaxvtkXYorD3a5VKxcao8SF
         E3TFEM28iBT7/Z3ZwXSOvVbTB1apB1sHgSWVM58og3hkjnZxbATBCqz1MRyA7QvtViHV
         V2Goe4AaJ0/iEOJrhs8Ancij1e6Qik43xLf4vrVUQHmsnyxKYJJaNAJT6Efv6lt2t94a
         MSyxY4g+T6oYP7FBqosm+S31wEySUAtK0bG0gwNCAwEytP2HQ3NQlhGEvhBs4cqZ4lZO
         E7Qg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:date:message-id
         :subject:references:in-reply-to:cc:to:from:sender:dkim-signature;
        bh=gSw56LjNjHOZqgluCWGXqyRk7vaj2VXcMvRUCYyGUKs=;
        b=KPRQ4O2HOPD3QByLQLHAeXMDoQtuE6H0YcokwwUvsZAwm/lVTjHFSJnDQKc1iyTt+B
         weUJMnpnQrxphJMdQQXoTZbPJA1WHZx2kpYoXEYBD0OzAEXKPZt6zbtykmwHX/lez9JD
         pCIH0wZqGSbN1yh/7iRUJfgbvnqRvJqRsePdmnt9fLVIbY/6Y6gqKz4s1LHndqqmmcru
         UdHTkWAUQpmtSfIrPN3Z1OWOcU82E//E/PfFJb0CGWY2UTVV1NLl+qgVjlFo1WLY7CQc
         ANls1qZ/j8A9nZwp5cS1LszYwsSr7kbHxGOwb68UF/PC3/pK1ZwH8BJGRfOV8NDcOTHc
         f6Tg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of michael@ozlabs.org designates 203.11.71.1 as permitted sender) smtp.mailfrom=michael@ozlabs.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:in-reply-to:references:subject:message-id:date
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gSw56LjNjHOZqgluCWGXqyRk7vaj2VXcMvRUCYyGUKs=;
        b=ZgOKELHIC/D3M8tki06IAkT7EbLOBpqa5EIncTlnbJKNoUVi2syqeZE7uAFwRSBMSL
         8NaVMh1k5uu76lJSzXhWS1o2V40A/e1xeqhEQkyjUs6/yEuNjnjNJfJm3P2P1pdahYBl
         VMiSbmLRWw6hlh9UMTPJcRnUFHT8/B7PPTlIme+b1l/5ixqYEw01vZ8dXstEPoQwky1Z
         dxxLG5FwfxY859RwEFC6VG9EUBwjZ2Xx4TTlK27V0GpkUwDNrwqwSfMjWpXbf5gH0/+K
         zWq3hHHNbWGmOkq6Sf1rpxKkzPEMPqUe3ALsDoDKJ0WdJJQdiEyKtQGrBxMJ4PHoGKS4
         afFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:in-reply-to:references:subject
         :message-id:date:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gSw56LjNjHOZqgluCWGXqyRk7vaj2VXcMvRUCYyGUKs=;
        b=B7kiP9xPHvKQLizi9TfrX5RK4gYJG5LA2tDcJ5IeNWNzm8gPQSWt+C2vmLP+pH7s9V
         DMC+AwN53jkHbCuowf46bGjI2X/g+1nY1UwSIxTe4vvC323hSu7lphUWfcfk4XaSgiHC
         yQFYd72FYoc290brtYBI5vCSyzkrh8J7fEyJ230lEctdgamHyI5hdoNlx3PxFyo5Zehs
         94mU+F2iKpqagGrwN+2VaN8xjHkz6PlzY31jPGosukB3iC1SweSuyAAUVPg6LhmbUaUC
         u8LLo5YF4/6mnW2S8GGY86qQE1ENiigpLMf+R47SxfJ+0pUllC37SrLCgdCBs2u8/Syk
         z2IA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531ADFlJZPiT0fULMOLgFISVL8A/NFZfw29l+WRc/62GhwrqYOYq
	ZFDf21Iy7vc9TIZb8SU9R7U=
X-Google-Smtp-Source: ABdhPJwnPS99hvB1kBCJuJyvx/8NSTvRgCc1UfzsvkDGEOkd5WrBlQKx8IaFM8DbZsuCv2m40kh+7A==
X-Received: by 2002:a63:4b5a:: with SMTP id k26mr8163069pgl.105.1623990189558;
        Thu, 17 Jun 2021 21:23:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:ed82:: with SMTP id e2ls4083386plj.2.gmail; Thu, 17
 Jun 2021 21:23:09 -0700 (PDT)
X-Received: by 2002:a17:902:740b:b029:11e:62b3:e452 with SMTP id g11-20020a170902740bb029011e62b3e452mr2899800pll.13.1623990188996;
        Thu, 17 Jun 2021 21:23:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623990188; cv=none;
        d=google.com; s=arc-20160816;
        b=0ybIMPKBPEzRQVjEFtDMRBuC3/6O4xtMYkoMtAOySqSDaK2KbcMmZLz90vxVw1BFE4
         uAEh9+2jhXme+qSYy1yLEpnndWGrspHpPKFjZNuKWTTJGmMZXXbCjlz9sG8BJb7n4xYy
         R2rb8Fq0qlqElAKZVE9Vze7uIa1H3Kc/CY7GRksy+DX/1QV6LP4G62A8eAb3wzED5Wpy
         hsz4zdgO2miha5XnPZsaxYcGmJ8cCmX5vcDhcywaXnfwaUgIrWlp2V5pqZTmfko6v+2Y
         7bt7SVFGqcam7dxl9Bo5oHGd0w2qXXzg7ygek8tEw52537NGJ5hT8IFyV4yjRouSqGY7
         Ixgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from;
        bh=z7i9z49Yb5IhTD8sW+Q87H1fC9t0P9w17LAMiyssZjQ=;
        b=VWYO1LUAcPyo0PLnJPJo7tTcljcd7oQ0a6LxzthTIXE6PAHYCJqZgU35I7Um69TF5l
         IRXojCOS/h00YhGm1Fga0BsP4d/IVq0L+c30k3ey15FvKDDZUimlP/M69W+tJEsEU5+r
         RxA3v9rmHI9rrq5hztDxdeGUowioSDkBQw3rbithKPHCrLHxFbVVs152rM+gAI1Dqxvz
         zxcWZvf2DGFUfLHEDuPQmMLRMrVSsnT50CiQMwAbua8Cham85pbngsWNkHxqK+23JCT9
         Dc6WT2VESMoHFVjYLqSz8LfYw6pIdgq/J+PQqhU4Vp5JiF6nJxVMYnOIN2qge49w5gvj
         d1vQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of michael@ozlabs.org designates 203.11.71.1 as permitted sender) smtp.mailfrom=michael@ozlabs.org
Received: from ozlabs.org (ozlabs.org. [203.11.71.1])
        by gmr-mx.google.com with ESMTPS id ob7si518750pjb.1.2021.06.17.21.23.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Jun 2021 21:23:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of michael@ozlabs.org designates 203.11.71.1 as permitted sender) client-ip=203.11.71.1;
Received: by ozlabs.org (Postfix, from userid 1034)
	id 4G5m4S5Qndz9t0k; Fri, 18 Jun 2021 14:23:04 +1000 (AEST)
From: Michael Ellerman <patch-notifications@ellerman.id.au>
To: Nathan Chancellor <nathan@kernel.org>, Michael Ellerman <mpe@ellerman.id.au>
Cc: Paul Mackerras <paulus@samba.org>, linuxppc-dev@lists.ozlabs.org, stable@vger.kernel.org, linux-kernel@vger.kernel.org, Nick Desaulniers <ndesaulniers@google.com>, clang-built-linux@googlegroups.com
In-Reply-To: <20210528182752.1852002-1-nathan@kernel.org>
References: <20210528182752.1852002-1-nathan@kernel.org>
Subject: Re: [PATCH] powerpc/barrier: Avoid collision with clang's __lwsync macro
Message-Id: <162398828610.1363949.4994127237137922755.b4-ty@ellerman.id.au>
Date: Fri, 18 Jun 2021 13:51:26 +1000
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: patch-notifications@ellerman.id.au
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of michael@ozlabs.org designates 203.11.71.1 as permitted
 sender) smtp.mailfrom=michael@ozlabs.org
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

On Fri, 28 May 2021 11:27:52 -0700, Nathan Chancellor wrote:
> A change in clang 13 results in the __lwsync macro being defined as
> __builtin_ppc_lwsync, which emits 'lwsync' or 'msync' depending on what
> the target supports. This breaks the build because of -Werror in
> arch/powerpc, along with thousands of warnings:
> 
>  In file included from arch/powerpc/kernel/pmc.c:12:
>  In file included from include/linux/bug.h:5:
>  In file included from arch/powerpc/include/asm/bug.h:109:
>  In file included from include/asm-generic/bug.h:20:
>  In file included from include/linux/kernel.h:12:
>  In file included from include/linux/bitops.h:32:
>  In file included from arch/powerpc/include/asm/bitops.h:62:
>  arch/powerpc/include/asm/barrier.h:49:9: error: '__lwsync' macro redefined [-Werror,-Wmacro-redefined]
>  #define __lwsync()      __asm__ __volatile__ (stringify_in_c(LWSYNC) : : :"memory")
>         ^
>  <built-in>:308:9: note: previous definition is here
>  #define __lwsync __builtin_ppc_lwsync
>         ^
>  1 error generated.
> 
> [...]

Applied to powerpc/next.

[1/1] powerpc/barrier: Avoid collision with clang's __lwsync macro
      https://git.kernel.org/powerpc/c/015d98149b326e0f1f02e44413112ca8b4330543

cheers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/162398828610.1363949.4994127237137922755.b4-ty%40ellerman.id.au.
