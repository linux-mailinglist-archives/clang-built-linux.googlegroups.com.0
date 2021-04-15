Return-Path: <clang-built-linux+bncBDDL3KWR4EBRBPEJ4CBQMGQESCHHGKQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x437.google.com (mail-pf1-x437.google.com [IPv6:2607:f8b0:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 44483360575
	for <lists+clang-built-linux@lfdr.de>; Thu, 15 Apr 2021 11:17:50 +0200 (CEST)
Received: by mail-pf1-x437.google.com with SMTP id d130-20020a621d880000b02901fb88abc171sf2423142pfd.11
        for <lists+clang-built-linux@lfdr.de>; Thu, 15 Apr 2021 02:17:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618478269; cv=pass;
        d=google.com; s=arc-20160816;
        b=bh80kK6asGKBq6cbnrXBHZjTKTsECnkAflf3ooYqK/ZLab10KfQReMlQ0QGRDjj2kC
         DVhcswJ8+at7NSX5c2ZZFnhzdPllEmr/6f+1s/cNMS/zK9F9IZry3gmDRzCf7aUxS7qE
         mVl3kq3+4+sW+wFTeYHPbN2cyVmBjI18uUv0R29TotcNUmXUNV+o5pQQywyJJj5U684L
         wFs88AknIlhEsr8A3W03A2gF1Y3hDKf2FodoOg/3zxbHpVzWspk0eG8p6fwh4dRjCpq5
         rTUqRtKJHH3R62RDitZvsqWyOMklGrV5OcHHaKgoJPM8QiTTRfW7Y6lRoem61mvsh+hk
         awzQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=98laBYyLSyKKdXOtR+rV/2JCQUruTWXE3p+amB3vKJE=;
        b=D8vftyDXpqvrLhyH7sUvDaWOuPacLxRd8TYSKmbfbjxJpPP07eF1XcD7MUlq4FDR6c
         /01VHVShFt6o6wqz4pTSVR/ju+vY2ZL8PjR3o80vs7HdJ/kIJsfbs4zrMt9yE+xFHcVe
         UZ8l7Z9rskUoAt1u5VXLmmY1bRRro/NxzxF7CSOQGYl+nOngaUuFXRnv1O9Omc0yftIL
         MvqRMRbcJtnKpqGR5L8U5MJBate5merFU2qcFWy7cB2Y7yXrKco4/OPEJWgS6cJIVq9R
         Wxetc3ZH7haQL6loWQXPPVCVBfFinMXY+YoOML4OmLoUmTr9iJRwVY9/CgpeU9n9uLpI
         MSJw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of cmarinas@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=cmarinas@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=98laBYyLSyKKdXOtR+rV/2JCQUruTWXE3p+amB3vKJE=;
        b=Hl5xsQm3zywW/XVdLp3x7dA5kavMc4ley2mjscjFp7w8xFJkz/OnSinsjY886ZUl98
         tEiiULw//jDeoQqVvj6jNIGs3y5fFhwdT8/OE/AVBMLFOu3250Ywgvm0OUJiDZOmxplD
         Fx/6nk7wG7aPXwL/cWfH9lY32Fgy82X9Cg+FzneFwR8BPzyA4Nyx/QUZR5P/vcq9VqYl
         QYCLDIb7HLKDQKxrGAo7TneGFGgx+QDcZbZiz/MhBAI3QgnGQdsPD5C4qMVYdv1+LWh7
         /fze98a6b+d9Tr5ScHg2yYSOpNsZDB5yYDZLN7p+MVWQEnEZNEP4MiKIseSg9cwFeUeG
         HwSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=98laBYyLSyKKdXOtR+rV/2JCQUruTWXE3p+amB3vKJE=;
        b=f2wn8qtQ++wyip82oNV8oDlJHylOtIlK/e/l6DNp5C0I26CAp5j8Nr9YVkX9L6GykM
         +zBxsqRxuv5dpDVGhp8QEmmRXosJbgl0KfITL1LNe/QUEAkyH3AH8bcN2yPgVQEXwdB+
         NC3PpNLzKjgb3ZgySrelrH+OCDbAZ0MU85/JzFJKCIfOgrxCIfHUy/ceB5PdqIiy9aR8
         1PMzmex0oXtkWGqrYEpNw434N3AWNXlxP9BDsBrAwIIvQk7T2j7Q9E20vcvcvJ+hOnw1
         /VJwj8hevL5CIrH/mKDEaKFEYelc9P9KiF8g9DKbYhKgh7y4DfhULmDXAeBPTWDmIYts
         AIfw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531iJ2fm//t8VwR0GkudBWvKmtwbMpGZT7fbnEgsfZ24jbPK4i7X
	olwpfRoL6AV/l86tAUVPP3Y=
X-Google-Smtp-Source: ABdhPJzn2/5mmYZbMn9LpajfH+Qwqaed0uJUI9zu4pqK11tgkCVyGO+xa0hsmU2PGWrGdMyrZgpxEg==
X-Received: by 2002:a17:90b:78d:: with SMTP id l13mr2908155pjz.182.1618478269018;
        Thu, 15 Apr 2021 02:17:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:c70c:: with SMTP id o12ls2871221pjt.3.canary-gmail;
 Thu, 15 Apr 2021 02:17:48 -0700 (PDT)
X-Received: by 2002:a17:902:7589:b029:e8:c011:1f28 with SMTP id j9-20020a1709027589b02900e8c0111f28mr2812058pll.35.1618478268446;
        Thu, 15 Apr 2021 02:17:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618478268; cv=none;
        d=google.com; s=arc-20160816;
        b=BchVbow9IbbbNMkDeQ6sA9rUgn0xPM8UIe+o2D1WtRRm1jxuQafIk+960AWXXLmD5s
         i0dTRg1U7O3GEniH1p2L6mtTt/P71mUpbA/vIJFnhJUFxtUfk3x71E1a9OyXPeleKuVG
         Xsi7q7FL0+M48gJPz21hnzEbepGmQN5RtpgAtJE84EwRNxITv5hmIsw670c7JUT50KY3
         mkCjEfAYNNAuWoN63dbUS/j+ztbbyCVRcovhlOMGCiKPzySlxAKY0pLjH/aDyJLL8jhC
         yMzi2FRyCqD8vnp4O80NQwGLGH1CVflTuwivCYF1w0X1HpqMFfGPqfeobeiJ95A8bKhv
         0Kmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=iFoLgjh+u0bjGdt0Cs2U+zl8pEizKEWT7jUS0fhWV5c=;
        b=Bpw5yo0qw3FOQptXWeQBmraDYkohpuG0B40WeweCDHQVpjZ788hBH2sVt3Gd6kltbv
         sXYrePxTu/x3sgt8i/lBZSkPYaatDpLn/zKDsHAXdvMffyOIvmh7oLn+ZEJ8BHZxlCdl
         xhYmQYSLRReMzpiXZeYeVBxmAO0KO6JL11yAVIziC1/fwvIJub6EP1XdnLw4On0oMUR4
         P5OrAOfpLOOLrMw2vRcC8dGl5CA9ngag5hRyfaLSkIyCgHar5JIS6++Gx1a70Ni3Qi7u
         x/l9MqDUrRiFwhk/0+4y/9LSrqLnmADpVnx+x70fAmdMDRBkFs5dk48YXewQe8JQ6e7k
         C7YQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of cmarinas@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=cmarinas@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=arm.com
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id y17si183730plr.4.2021.04.15.02.17.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Apr 2021 02:17:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of cmarinas@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 70B2E611F1;
	Thu, 15 Apr 2021 09:17:46 +0000 (UTC)
Date: Thu, 15 Apr 2021 10:17:43 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Nathan Chancellor <nathan@kernel.org>
Cc: Will Deacon <will@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Jian Cai <jiancai@google.com>, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
	stable@vger.kernel.org
Subject: Re: [PATCH] arm64: alternatives: Move length validation in
 alternative_{insn,endif}
Message-ID: <20210415091743.GB1015@arm.com>
References: <20210414000803.662534-1-nathan@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210414000803.662534-1-nathan@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
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

Hi Nathan,

On Tue, Apr 13, 2021 at 05:08:04PM -0700, Nathan Chancellor wrote:
> After commit 2decad92f473 ("arm64: mte: Ensure TIF_MTE_ASYNC_FAULT is
> set atomically"), LLVM's integrated assembler fails to build entry.S:
> 
> <instantiation>:5:7: error: expected assembly-time absolute expression
>  .org . - (664b-663b) + (662b-661b)
>       ^
> <instantiation>:6:7: error: expected assembly-time absolute expression
>  .org . - (662b-661b) + (664b-663b)
>       ^

I tried the latest Linus' tree and linux-next (defconfig) with this
commit in and I can't get your build error. I used both clang-10 from
Debian stable and clang-11 from Debian sid. So, which clang version did
you use or which kernel config options?

-- 
Catalin

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210415091743.GB1015%40arm.com.
