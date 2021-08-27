Return-Path: <clang-built-linux+bncBCY6ZYHFGUIJTUFDREDBUBDBDEITU@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23b.google.com (mail-oi1-x23b.google.com [IPv6:2607:f8b0:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id 196213F99C1
	for <lists+clang-built-linux@lfdr.de>; Fri, 27 Aug 2021 15:26:56 +0200 (CEST)
Received: by mail-oi1-x23b.google.com with SMTP id s1-20020a05680810c100b00268d4e0d155sf3284741ois.15
        for <lists+clang-built-linux@lfdr.de>; Fri, 27 Aug 2021 06:26:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630070810; cv=pass;
        d=google.com; s=arc-20160816;
        b=SIagjvVL6aAoTJv2H1kA8MJVkooESGR10F4PA6mPaKkZIU0JckNr+CE3tKTcP8PJB9
         IED98DGDMD3gXB1PzsYifiYUwspYNPXGny5Yt2WDKRlxfMQFO9Bu6h0BpAc5Z2ZF8H6q
         rh/eLsGL03gFNkAWNuGEY3QsR5sq3CvUv83dua5TjuubMaJsJhVFaX6+D1O08sQkvHuX
         H8+5S6oh1CdP0Zyq8SkVkant1F5It9MJgYkU8jnhz686swcNMdcRJE4QBYzB3huefi2J
         vKjdjQnsTOdb6WohJ0DDEX5n2NVtmbAFySGUazzNha4tdyJFONyhrNe4kSC1fCWJLA8p
         GCKQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:date:message-id
         :subject:references:in-reply-to:cc:to:from:sender:dkim-signature;
        bh=vNSZpxXnPxuAGUkGklDrntr1y0V0jhueAJR3w4Q21Yg=;
        b=akCmioJhLc5g7FWxGkmUOinqL9qzIC3Oo2RAjs5+VFYcS07CQ9Cy4U7icM7FaAfnCu
         UZXKjU02/UG+wCLHq2mGEk6H54Ux/eFFwUtJXnOxZCU1DzYIiWLILw7huhDVxaUu4IPf
         F4ChImZ6IP8a3tzGaYrfLGnotY1yJKqU/+pXKJJrGQC2myBjA+wY3zx4uLpa8lhSQtlx
         kCSa8NcgQKJN83ZFWMHAJkJs/LHpzQZ6ZiZ4Bkwc7R5A4l6WjXE0Lw9NnTwt/QeLa53z
         qFJpyuoWD2qy1BVZD7OUvCdYpUncgxiBWzZ/fVaZRKbYWdwAho25RLl8RK+lgz3TaRsS
         gDZQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of michael@ellerman.id.au designates 2401:3900:2:1::2 as permitted sender) smtp.mailfrom=michael@ellerman.id.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:in-reply-to:references:subject:message-id:date
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vNSZpxXnPxuAGUkGklDrntr1y0V0jhueAJR3w4Q21Yg=;
        b=XGwf0/WntqrnQM/AuXTGCfpwgXsZQhVy6YUPNFwcRMu+3r/Guct3vInhgWT8sTMrWN
         IRcH7U3iEstUY/WUGBp+kf1j0YmGBAjttqrVQ+RqcZxe5OeMZ6GJFBdgYHXCjnAWghHJ
         PUV3CgPHtiRfSJ1lFgOVomRnIrRJNZxHPOBpyjOY2ru/67BrqWwBBGRTO4TT2b64Ze/N
         XUGJnwmq1oKXPX5/cetwAS34m48FvSjthxDp8Uq0ZXFST3q32+ZT8jaSvh5sY4KooPok
         P1bvnDIWJ7Ir94VDljvjO5PQZDjxo1FaDieRFaL5vJUYumFsN034pEzFYYYGFL1UWtb5
         S8Ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:in-reply-to:references:subject
         :message-id:date:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vNSZpxXnPxuAGUkGklDrntr1y0V0jhueAJR3w4Q21Yg=;
        b=Kt6Rfv8H3eFNPBefMyCc0zDjN1A+LA5bQpBz9NUOE/9XHVyRHkN+x4yPxKpl5qJFLj
         CpwqPH0OpzwvM3sGhifgoAlFaJKhUN91tguf+kPLA1+JhbTdCb6lUtKxdVjpL3k7TnJt
         LDhQJ6KrtL8GkoBeEH3fwQY0Ro9t/XhNHOqt5405do3MpEZ4VoBO11UA4DnevlENwlLm
         RIPJ1WeIK+hgQVYGYP5l5lWiKfRf18zwheMmnhh9kq8pYTRw/2yj62+TE4Y/KxUZ0Gkl
         fObkAWfjqdSedIppgxCbRv+eASxShxFvdAluptqmtzXdwmDzOz8uovdvRI1DAr8PUGAy
         Wukw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530uUkYPasT3VHHL2c5t0pLvSQDe57/Oj9Mtl8Bj9NqrbE09LV0Q
	xcwU2K8xE+qkpt49c7XHepI=
X-Google-Smtp-Source: ABdhPJz+uEm4Xb27pxoLjfzv1E5FGNxYfU9gIq7aXWi/JGp28AANvx0STuz9o5zUHvZiT616W/olgQ==
X-Received: by 2002:a9d:6b97:: with SMTP id b23mr8203504otq.312.1630070809948;
        Fri, 27 Aug 2021 06:26:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:20d:: with SMTP id l13ls1966842oie.5.gmail; Fri, 27
 Aug 2021 06:26:49 -0700 (PDT)
X-Received: by 2002:a05:6808:291:: with SMTP id z17mr15336078oic.177.1630070809421;
        Fri, 27 Aug 2021 06:26:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630070809; cv=none;
        d=google.com; s=arc-20160816;
        b=QBjS3U2MWIVaFmwVHIq4gkcn1bL5p8NmCEtKUMxhaLLOsgLvfdVQVNF2/KFwGM9P/o
         U2BBzoPKHOpDyzrLACATtH3fiNPt7O1myL4//6zSiSQv1I5X6WL4IVxi9FtWAF1n/bpE
         PwqVozwM4XenQZ9V40m2upV9QYYvDUU46YQf78BrBsFacYMSMtEiXxwA9qzrQPLw9Q8Q
         erb8PcElXodYaW8KDiSuBn1RdCTin2PB3dagyoWu/61WaO8HMyxCSmjMh2qTYheBdDPm
         Z0b6BAZDYe1zabyRyVrQPUuR6cTA8K64aL6Iip79ob6IZj0S098CIhlu/AV1BJhHrBFb
         E39A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from;
        bh=YTgREeTM9CM3Rf7jzkhK4EwqAIVgMeU9WLEs9hhWDmM=;
        b=pjlgzvp7loAEB2kW3QS3RqZ8M7AVi/MrF688fWf5PYQOjrBqOprRrtWHiM11I1RIdN
         rHUGi63kMmNRVMesgxhjJcI9VduTjq6a1VGotNfKIc9INDUJ0SLLA3Q71dPU4TU5Rl8C
         vkofsVuRZphgMYLRGhfgqE5AA9pcxLcaJmRrqsfsbQPu/bZpNJjsj3ROQrlPSmfLSAkS
         eSJsckzxWt2gBradQ1irZiozBAHLREDNS9jD7aSqfSM1uSvMoCtEVPhIgLNcbDoRk+ky
         zb7WV2A7vnInIvKjf/R4GMfozxtfy54EXQeIlOxVihsmBBDMgKxx81YQliXLE7D7saOv
         Ktog==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of michael@ellerman.id.au designates 2401:3900:2:1::2 as permitted sender) smtp.mailfrom=michael@ellerman.id.au
Received: from ozlabs.org (bilbo.ozlabs.org. [2401:3900:2:1::2])
        by gmr-mx.google.com with ESMTPS id b26si395710oti.1.2021.08.27.06.26.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Aug 2021 06:26:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of michael@ellerman.id.au designates 2401:3900:2:1::2 as permitted sender) client-ip=2401:3900:2:1::2;
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.ozlabs.org (Postfix) with ESMTPSA id 4Gx0qQ66mqz9s1l;
	Fri, 27 Aug 2021 23:26:42 +1000 (AEST)
From: Michael Ellerman <patch-notifications@ellerman.id.au>
To: Nathan Chancellor <nathan@kernel.org>, Michael Ellerman <mpe@ellerman.id.au>
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>, Paul Mackerras <paulus@samba.org>, linux-kernel@vger.kernel.org, linuxppc-dev@lists.ozlabs.org, clang-built-linux@googlegroups.com, Nick Desaulniers <ndesaulniers@google.com>
In-Reply-To: <20210816185711.21563-1-nathan@kernel.org>
References: <20210816185711.21563-1-nathan@kernel.org>
Subject: Re: [PATCH] powerpc/xive: Do not mark xive_request_ipi() as __init
Message-Id: <163007069928.56462.2139354750294195638.b4-ty@ellerman.id.au>
Date: Fri, 27 Aug 2021 23:24:59 +1000
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: michael@ellerman.id.au
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of michael@ellerman.id.au designates 2401:3900:2:1::2 as
 permitted sender) smtp.mailfrom=michael@ellerman.id.au
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

On Mon, 16 Aug 2021 11:57:11 -0700, Nathan Chancellor wrote:
> Compiling ppc64le_defconfig with clang-14 shows a modpost warning:
> 
> WARNING: modpost: vmlinux.o(.text+0xa74e0): Section mismatch in
> reference from the function xive_setup_cpu_ipi() to the function
> .init.text:xive_request_ipi()
> The function xive_setup_cpu_ipi() references
> the function __init xive_request_ipi().
> This is often because xive_setup_cpu_ipi lacks a __init
> annotation or the annotation of xive_request_ipi is wrong.
> 
> [...]

Applied to powerpc/fixes.

[1/1] powerpc/xive: Do not mark xive_request_ipi() as __init
      https://git.kernel.org/powerpc/c/3f78c90f9eb2e228f44ecc8f4377753f0e11dbab

cheers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/163007069928.56462.2139354750294195638.b4-ty%40ellerman.id.au.
