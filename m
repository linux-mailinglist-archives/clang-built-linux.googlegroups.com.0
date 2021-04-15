Return-Path: <clang-built-linux+bncBDDL3KWR4EBRB5PY4GBQMGQELHHJWSA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33a.google.com (mail-ot1-x33a.google.com [IPv6:2607:f8b0:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ABFF361164
	for <lists+clang-built-linux@lfdr.de>; Thu, 15 Apr 2021 19:48:39 +0200 (CEST)
Received: by mail-ot1-x33a.google.com with SMTP id l14-20020a05683004aeb029028919a6fae1sf3348430otd.17
        for <lists+clang-built-linux@lfdr.de>; Thu, 15 Apr 2021 10:48:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618508918; cv=pass;
        d=google.com; s=arc-20160816;
        b=iB+fQorBuAR6ry3mmkXvJgvTo69q+QTH77gxdQfYPSR3JTraGZSgfpJGGOE7wpgn5w
         NbXQM0HTsDjdOV6fdapz5A/JxfmVFG4Fh4k/Pr0IndgGagzlTiWrxtA4WW1nJNVOzqg6
         AU40N5dEhWrO/r+wRDiIH3SdjDDEX6dS8ScLIA5k957zt0wn1BefUo9SiWW6QUkUKhuO
         hs1OGXF57YagnYLXVfqs1vhkgiKqlSrhbI0CXRklOMGq14zZ5FhggtD4vqCVV8a0JIwE
         LASI9e+l1Rw6IElvA12T9JX7TkoPEiGOpue7r83Mr1xAdw8hMQTX66noHNuqXyQ4Eyp/
         eENQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=Xnj92ONcLfhyGMoZu1QDHQxgeO6NPbbnaDekQ2ZK/8s=;
        b=fWdOiWLvCIqE6e+Ux3X5tIsqUm6ii82fkm15jwyy5V6ZW9foM19RNt4wS8qDSqz7I0
         rgMzT5X1XQX3fTh1UrtwEKIY+O0repJiH6odIjpublQKzxFrGsh2oV1v5/9k3ySzI9Vf
         6RTb2vOjKtYZ3icJvPwx4IuenccTgUej/Yu/vASMN6yoWxjB6VFrvZu6Ca3dPZlw46Ol
         /d903NKbBaG6lJpj/pQDybMi6ALmcKlTUmvxfxZCO9EbT/xRaDPucaaDASHo6GE5+Dwn
         E2EZWZkmh9cNtvr8IwgvtlHY+LCl/2ocqQNIbfWdmv0EP4RHLlqU9elr5WvFk4OUPftF
         GAKw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of cmarinas@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=cmarinas@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Xnj92ONcLfhyGMoZu1QDHQxgeO6NPbbnaDekQ2ZK/8s=;
        b=c3PjBssooEApD0BxgOO/dK1MrHzLvkRYBoCPk83U4zyH7R45eLImLHYKUMquEKDgzm
         oHlGE5Zompf1hn9Xz650RIn3OZcoGWfBQL6Nc1oCOe1jFV0/h0MlQQY33flp6CkB2GK3
         IijVyDwt2lPOfpoEf8VMp2q6CkL6yFJKTefw9eGgwkMtxRyD4jEJwk7BbKiod8srHtZr
         BD/jkfUjasnqOTFY2fedRG2ekO5Fsw2/hD7kP5iG4O7A9z9RtlC/TGmld6hY7/J3H1yV
         p23hL7l/xywy0IWgzNmv1pKWCqnBn2RY2mM11+JwPGnclUrRnc/+g/xbjhXZMwezaqeb
         hPyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Xnj92ONcLfhyGMoZu1QDHQxgeO6NPbbnaDekQ2ZK/8s=;
        b=iHwJjDEHNav2mICROAXXWDCwcX8aJy6AvGWM13rJM7e2M9L8S3Eb8Mwk5vV/2/RS/T
         pAR8T5NcBbBcp21869GEUhJOnwZduJaRLCXrR5iP9v/PKAtFxEV3gDlnj8zhzNEN5qpq
         RdROThpzMSxZb4MsP9wSycYSr1LmCGmCxHHyzHw7wKdeHvsZ2fM3YH4Cv7fNyXCVP82Y
         omnUO6ZyJwIYfDpRfWioak3PyYzbtNnH5IsG3jEAD+u0CxLJgv8IMB4Kc5dc3S2PJarS
         xyqKWedo2a2rfTOPX5yEdNkVHVCdW27Hxww26izrKBvmCSIjqHCBq62c+p8AJztAgkIB
         3Z8A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532sGAWARC08le6MG6IApt9lk/s++pgIjvkY2j0PIJgivuvMcROT
	fGZRtgfHr5wuHZrdEBZyRJM=
X-Google-Smtp-Source: ABdhPJz9dnJY5JJaZuTDrWncxxZTMxotqnrvRzBUNIf+Z7CPO0AWZ/kbSCB4UBKRc1o2Zw1qBjsTDQ==
X-Received: by 2002:aca:4188:: with SMTP id o130mr3383499oia.101.1618508917984;
        Thu, 15 Apr 2021 10:48:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:13d0:: with SMTP id d16ls1496975oiw.10.gmail; Thu,
 15 Apr 2021 10:48:36 -0700 (PDT)
X-Received: by 2002:aca:486:: with SMTP id 128mr3408751oie.117.1618508916515;
        Thu, 15 Apr 2021 10:48:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618508916; cv=none;
        d=google.com; s=arc-20160816;
        b=0hLLOh0CGkmfCrwiPY+YBHnhmTKrGAlWLyWknHdJyP+WyTBc0UV0F5465u2x5frwm9
         mbeH9pwm8PlHNY7K3vw9jIh2pQBOWooAeyZS6bY3TCxTDJlgwahHFjUpmVMu8zamsvMR
         lua5ZREsLLRrsVSXVjqFq46R1xSkxBxBpJwkiuDV0e6D+MODU5nJESKxwrKGnoAkhS2P
         ZqlF/UQykNEgdV3js/9xuQZjIw9xlL7EOyzhZncpC0bwu4yDZ/H1yXxzqQMb75WqF3IW
         NilNhmvYuV6SiPm9nz3W4Yrd81t9fnio5SXsDtWiWp9m9/oYODjQy5rMLZ0JSZz1ec1C
         KG0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=v5+69grUwCMYuBYD9IobB8rg1T13GXOZyX/KwyLsQgw=;
        b=0akSDG8/sYXrZNQjNV9ex/j5KMq7jBqlCpIaqNziXiMrtUfhX+51ONAdJCOO5fzuXl
         61wzUoQTcRvXWbzl0vM9OL6BP+lTaCsr/rikwE8JDEKaE8GJI5TB7lRAXSqTImf9/xZv
         dee796WFvfz2tPL1+12JpcAeEsyU9npIlhQhKc8pXK6kyskX5Pcp8aNtISLMa4bSXqjZ
         Ye0Ips0twnUvs4EQ2dQUXgH59ZMV51tYDPzBIYlUjMOgoNjLKuxNAjLhQQNak2i5qZPG
         fs1aqr1rKx/kd/m4nTMwkkelahh9vIBAQG0hOpT9xPOQtE4AZ9C9h4aU88RzTo+Ie1GH
         /eaQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of cmarinas@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=cmarinas@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=arm.com
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id w16si271162oov.0.2021.04.15.10.48.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Apr 2021 10:48:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of cmarinas@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 2951D601FD;
	Thu, 15 Apr 2021 17:48:34 +0000 (UTC)
From: Catalin Marinas <catalin.marinas@arm.com>
To: Will Deacon <will@kernel.org>,
	Nathan Chancellor <nathan@kernel.org>
Cc: Catalin Marinas <catalin.marinas@arm.com>,
	Jian Cai <jiancai@google.com>,
	clang-built-linux@googlegroups.com,
	Nick Desaulniers <ndesaulniers@google.com>,
	stable@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Sami Tolvanen <samitolvanen@google.com>,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] arm64: alternatives: Move length validation in alternative_{insn, endif}
Date: Thu, 15 Apr 2021 18:48:29 +0100
Message-Id: <161850887861.19953.221061108559265600.b4-ty@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210414000803.662534-1-nathan@kernel.org>
References: <20210414000803.662534-1-nathan@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: catalin.marinas@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of cmarinas@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=cmarinas@kernel.org;       dmarc=fail (p=NONE
 sp=NONE dis=NONE) header.from=arm.com
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

On Tue, 13 Apr 2021 17:08:04 -0700, Nathan Chancellor wrote:
> After commit 2decad92f473 ("arm64: mte: Ensure TIF_MTE_ASYNC_FAULT is
> set atomically"), LLVM's integrated assembler fails to build entry.S:
> 
> <instantiation>:5:7: error: expected assembly-time absolute expression
>  .org . - (664b-663b) + (662b-661b)
>       ^
> <instantiation>:6:7: error: expected assembly-time absolute expression
>  .org . - (662b-661b) + (664b-663b)
>       ^
> 
> [...]

Applied to arm64 (for-next/fixes), thanks!

[1/1] arm64: alternatives: Move length validation in alternative_{insn, endif}
      https://git.kernel.org/arm64/c/22315a2296f4

-- 
Catalin

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/161850887861.19953.221061108559265600.b4-ty%40arm.com.
