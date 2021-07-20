Return-Path: <clang-built-linux+bncBAABB4F33ODQMGQEJVLKCEQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53c.google.com (mail-pg1-x53c.google.com [IPv6:2607:f8b0:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id E44E73CFC4E
	for <lists+clang-built-linux@lfdr.de>; Tue, 20 Jul 2021 16:30:09 +0200 (CEST)
Received: by mail-pg1-x53c.google.com with SMTP id i5-20020a6551c50000b0290231057cbc8bsf6350978pgq.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 20 Jul 2021 07:30:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626791408; cv=pass;
        d=google.com; s=arc-20160816;
        b=EbppIS3lNtRIsfQmApndpzTmUrzxcV+c9BrSLBgmL70indwc8pw61ycc04MoWsea2l
         Awng64of0K2cdMz6Gv3Ea4IF+jvCk28QUH39GLRNSYHZs+Rk3iQr5X9xjfEmZRMm9aV3
         r9MzP2RFpkdQ2/KLyhfoeERk078m79ksVy6uSFEKVqkEy5aLJpR2MzPBqXF7/IGEqfmA
         k2f1slz41iU6Gsf01og88U/sORYDvSokkH7h9UmALwOluZ5f/g1cijwW06Uyx+IhFavd
         dl+l4m+SIDg27u21gWTr1dztjdSM4wbfFZhFzQIAdr5y0C/kjVQ7Z2uSK2v5nlwd7Q0K
         CgrQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:in-reply-to:references:date
         :message-id:from:subject:mime-version:sender:dkim-signature;
        bh=ejBjuKGd8+pj6ZO3ERpb6xeo2cc+fhCsy/cvqZlsLPg=;
        b=tvu6a4T4G26IyOKRrpUfdj4LUWS7XWzIucgSlgdLT3zHSART5IEaKI4UfKW1H22eav
         0rZZgfT57EA2/lfcp9MAYIH/mzVAeyykZ6hyffC0BHSk3QT8O1Qmn4TD9Yi9TuWM/Kos
         DeVlt7Vr6+drYycBqyojKoT2BdtEA5GnrzPYQkSkixd5QbIly90k4BhmYNpm2ZxAsNvQ
         P8gqdOSMCLOIiMfAJDgusqzgzp4+T+AXkFoHiAgmYvgLtSdkj+ujKX/FN/7/jhTsj3Vu
         B9Y/gLmT3EZTC5ZqiCP1YdIsR6589kNVEpdpycnNQK7p+gO3jYhXadRJx+n6ceiS93Rl
         Ysyw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=kLtUnEPE;
       spf=pass (google.com: domain of patchwork-bot+netdevbpf@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=patchwork-bot+netdevbpf@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:subject:from:message-id:date:references
         :in-reply-to:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ejBjuKGd8+pj6ZO3ERpb6xeo2cc+fhCsy/cvqZlsLPg=;
        b=GGWAzlg8dkdiSCFzx6JnMVL2uTvhxsgjCWDI643qYb3qxBHnxBDoPnjuyZzBlNNcuG
         Bj8hERreOKEtPPemZUlTCQxdPqByDCnnNhlbeqXs60Oc2THyPSL3F+PNk1PhYrKFrfok
         KA7mTTkv8s3TSjd2GRnzdvwE0UvkQx+M8Q6ETqaDAJVVu/rn2/nfat8y6bsHwtWCK0fq
         dl5Lmn59PZ56KbJhmlRAc3eEi34TKgp23cQ8JuPpwpgjgQbEvjEbPCgYExG2ao891x+r
         ZKeuI892LMC9VMeUoyuk7tGHCvJqj/wTia/TCLhLRplTqWq0NfDcdKjETSS4i/734EWE
         1/8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:subject:from:message-id:date
         :references:in-reply-to:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ejBjuKGd8+pj6ZO3ERpb6xeo2cc+fhCsy/cvqZlsLPg=;
        b=jbFuykx6iCtjhjiQORidtNV3h9yCmQLh23dIaRf3N918aj9jm/btEwT6wZTz5uTtPX
         DIEpujEJ6HehYbYjmoTxjrTxEvivzyrOjoq4FImot6HTM42E8p/TGOFZ5LQy7G1gN8Xj
         TNOfIbih95aNcUjUstviktJrSiYEzz3siSxgPYrpB9T890HULOU+60FnLIPq226dV6Yf
         pcIbeTmprpz4jIVYYEo5b/6ePrzKazFOPjz+4sW4YwdAhJuHfGCHNGG5Zcuz5pQtbqPL
         BytJNYSG5c2KhN0jDwZzPAUDieDK5uE92wN6yHEW3/13V9cv7cAwejVPdynHCtltQXP6
         VfNw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531wsqAgqLQThKtvaWluUWkFt+H5UduMCkbsrZofLhObSE9eMw6V
	CZRTU3TBSIXnpJ7HyVIGe08=
X-Google-Smtp-Source: ABdhPJxFugJsCQ/ipYF7CnT4OvoZ2qOB/gSxaH5OhG4fhWFNEntXsnMu3Zzb/iiGIzNvfen8Exs7XQ==
X-Received: by 2002:a17:90a:e7c4:: with SMTP id kb4mr35160959pjb.43.1626791408452;
        Tue, 20 Jul 2021 07:30:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6a00:139e:: with SMTP id t30ls10737095pfg.6.gmail; Tue,
 20 Jul 2021 07:30:06 -0700 (PDT)
X-Received: by 2002:a65:4342:: with SMTP id k2mr18844951pgq.138.1626791406687;
        Tue, 20 Jul 2021 07:30:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626791406; cv=none;
        d=google.com; s=arc-20160816;
        b=KNeCBg/UDFUUK7VWkC4e9Xw4tcf+84eoGZy3xnzf1kN0yC7zVkGON4ySdDt7QzzQom
         b+wByExTaVjJCxKjjtZJ2R8r8rERjVXFjRF4RA9AsinyQqBNnUgNG/i4jYw9YR1IBLnD
         HFPhapvNBlmkifumOUe8bqL9PKQygbHXDTDVEIT+tAOBJJUhraB2otjVeGvDftLie83E
         utcPgc951XeaBLVdvTRrT6tZllf0ow1kj2YqAUU96yJycDDUW/fVK2cPHJi/xlns9gSh
         ya24+sL/a2kPVMgwoNQvue0JcpRHaeRgfdVsoxKDqPJwQOF0+jAd9WbHRoY9LAMLgn/j
         N62A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:in-reply-to:references:date:message-id:from:subject
         :content-transfer-encoding:mime-version:dkim-signature;
        bh=Uib0rl2j21uP9oZBMXJsrt9ypWGhPMIDPuhG6Z2D60Q=;
        b=uzyw83cE+vg85yXWca8xXvIq2xsG/EZP1NWPJTa54Jem7w4PKqHv7krrBnBioRBupw
         I9Ewh7fg6ERZ2/3r1V2LmHlI2DWs1q5WILAtyDc+96mKc6WX5yqURh74h93kDYTdsVU/
         84fX9pMjxhK/daybAfzWtbjwsWUcK3X8D/6Qj9KTnlp6yid1iRUhxFq1mGrHm6crDJPW
         ipR8C85XgQdp7mGM2XYs9/7YFR/YPHzeckKI3V61iORjeRLYnh4So2q09XVJOCw+Y9Uj
         i/bw3CdYzCs8Ls90f+Y5YpLFG8HgeeeQ8tC0UnJ78pxq5dry4zmVRdo2HYjDdgig5Hzj
         SFCw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=kLtUnEPE;
       spf=pass (google.com: domain of patchwork-bot+netdevbpf@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=patchwork-bot+netdevbpf@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f16si1369274plj.1.2021.07.20.07.30.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Jul 2021 07:30:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of patchwork-bot+netdevbpf@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPS id 5CB9561244;
	Tue, 20 Jul 2021 14:30:06 +0000 (UTC)
Received: from pdx-korg-docbuild-2.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by pdx-korg-docbuild-2.ci.codeaurora.org (Postfix) with ESMTP id 54AFE60D02;
	Tue, 20 Jul 2021 14:30:06 +0000 (UTC)
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
Subject: Re: [PATCH] net: marvell: clean up trigraph warning on ??! string
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <162679140634.23944.13639576500085016559.git-patchwork-notify@kernel.org>
Date: Tue, 20 Jul 2021 14:30:06 +0000
References: <20210720130311.59805-1-colin.king@canonical.com>
In-Reply-To: <20210720130311.59805-1-colin.king@canonical.com>
To: Colin King <colin.king@canonical.com>
Cc: thomas.petazzoni@bootlin.com, davem@davemloft.net, kuba@kernel.org,
 nathan@kernel.org, ndesaulniers@google.com, netdev@vger.kernel.org,
 clang-built-linux@googlegroups.com, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org
X-Original-Sender: patchwork-bot+netdevbpf@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=kLtUnEPE;       spf=pass
 (google.com: domain of patchwork-bot+netdevbpf@kernel.org designates
 198.145.29.99 as permitted sender) smtp.mailfrom=patchwork-bot+netdevbpf@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

Hello:

This patch was applied to netdev/net-next.git (refs/heads/master):

On Tue, 20 Jul 2021 14:03:11 +0100 you wrote:
> From: Colin Ian King <colin.king@canonical.com>
> 
> The character sequence ??! is a trigraph and causes the following
> clang warning:
> 
> drivers/net/ethernet/marvell/mvneta.c:2604:39: warning: trigraph ignored [-Wtrigraphs]
> 
> [...]

Here is the summary with links:
  - net: marvell: clean up trigraph warning on ??! string
    https://git.kernel.org/netdev/net-next/c/fa660684e531

You are awesome, thank you!
--
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/162679140634.23944.13639576500085016559.git-patchwork-notify%40kernel.org.
