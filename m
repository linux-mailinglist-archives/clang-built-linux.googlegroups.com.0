Return-Path: <clang-built-linux+bncBDDL3KWR4EBRBP6W5CBAMGQEYVSVOCA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13f.google.com (mail-il1-x13f.google.com [IPv6:2607:f8b0:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id EFE003466CD
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Mar 2021 18:54:08 +0100 (CET)
Received: by mail-il1-x13f.google.com with SMTP id y8sf2386562ill.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 23 Mar 2021 10:54:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616522047; cv=pass;
        d=google.com; s=arc-20160816;
        b=DTDQmt1IZ0vVWb11T/EtDPoLM6EeK3CbiN8l+wnoGVPLb5YwZ8gC4LkhEMWeRUbU98
         dg2cydXtemVY650tMWndnej/7vMUUZaaSWOi3dKJpQ6nsMm8yeM8trT1TzQrXP1yZ/x7
         Bh8sfX6zHXvtPQ5/sZ07QS9RMSRbClTCvy04EB5rdIfO6SegphNn6ZLVp7CUd3VCGmG+
         MqHahg38Hogwey2aKWfJAOXlk9A//SIbZ1KnVQUMvozYo7IXhuoBV3sHZMFvg+m5uHYX
         MPU1UCPoYSa7b8Rw+gTjsKti2jKCI9tLoLsVPi8Z6rTOv6t8QSIeNSCC4GEDTeH4ipml
         cHOg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=Q1CHzu1DvtfV/4QK5thy5ymvv6Pcbj+rNXx4mbzjj38=;
        b=ffKTk4L05pDFjXUuP6R/yaYFYiOr8J98QyR0NjVtI8X3HsIupZ4YEaZ8Z81fSIyLRV
         wtKEKDNscPW+T+ilMVgEqn1LuYcTFenzKOhb8T+8akrFnPOrK2kVpbLUd8rgnOCnMnCC
         M62W9fGKC/NThpsISs9x8EHGtMAD1iMTY18gtyq1R413wrO0w0dgAtbpIouwxoNb3XJo
         EwlY9vPva0h75wTTWvqceMdEOTOprWhe3n52uCge34UvjoHikPGElGWml6Ak7rwRc2zN
         sww8tz5V5nWXw72sFmuMhvbqA6PxuBwJj77mFXsnCiUQSv/btytQSCA35LoI/JJBeRne
         bKoA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of cmarinas@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=cmarinas@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Q1CHzu1DvtfV/4QK5thy5ymvv6Pcbj+rNXx4mbzjj38=;
        b=s5wAcbeFFqokLjzVI5SuCWGHJNwi0BxdMxxvA4NZBhgNKmR9CGbpygNwFwSkjRVXhN
         +nEyIu35azErDygsq7xuwLmVgWAQBr1uDziGCq5hW8Uvg2WPt3XblnW6YGHAntKsk7k3
         P58InH+2Nma2hLSc2Jy2/LL0zuu7CyVS6pXninjyHY0CHBNcsuwIexRB8QttuwqStJj6
         GMykD591wmiJLR3EXRriZWkgSSBBXvStW2Mc4VYk1QEQwOm8vS25kXSRkI9H3QAyOKQx
         C9+XgPZQpHieYNiQrkOFwbhktrElp+DT943qSjPgRrHp7guqq9EoW5wakaKW+QNDDaYu
         algQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Q1CHzu1DvtfV/4QK5thy5ymvv6Pcbj+rNXx4mbzjj38=;
        b=MUOQN/JZPbSLvLYYaQLa2oIerPnI/D1aEHTO3Kap3xY6THLYKp/d7iWPf2msY9XXjj
         VMDtDTrN62szeY6LMVQ64QM4FMfsPi9FwKP4jD05r0fMMUqL0C2b4jlT4GrxhywvtObq
         WzAgNQExwYYmlR6h/IxaZJGH7IFWveCEqxbv2d+CVaqqcDOTQMh+8Vdhyt2oKdcabYPH
         KB+1RplVzBK5KweN2mBtS861qSZnPYtB06BVQVVDOJEAQc2WmwEzWcy9xtqFk90Ww/o3
         O5GAfoHUEnOdoPLdxBnnQJIF3YNwx4jMhvC5FwMu1zZLiFBhSifybeYl7BDdaTZvIZrC
         OOKw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532PgKYiZW47RDKPRWNG3q/4tSiqy7k+pm5xtsLQPka8j7d75Ujq
	lDZO7vMzMaXIXMQzKeBzd5U=
X-Google-Smtp-Source: ABdhPJzVmKWZZIuRaF/hiIaFu6Rd0sENavt55E8Ux/SFM7BWj+WTpFiICWFXvRXGteadm/XJ67YSOg==
X-Received: by 2002:a5e:d908:: with SMTP id n8mr5394897iop.121.1616522047710;
        Tue, 23 Mar 2021 10:54:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:2184:: with SMTP id j4ls1868447ila.8.gmail; Tue, 23
 Mar 2021 10:54:07 -0700 (PDT)
X-Received: by 2002:a05:6e02:e0f:: with SMTP id a15mr5705249ilk.203.1616522047280;
        Tue, 23 Mar 2021 10:54:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616522047; cv=none;
        d=google.com; s=arc-20160816;
        b=gCEUo2QMJlSJrUMlAZ0tNu1tVJH3goSkZ9w4nCH0IZrDjQx/2joWVaUqS1N/iFHwez
         1Mto7IESH2HosdTOGbqZSIv/SfXf3oWEHI+1ddy1JOfKVd8v/RMdvf91phv69sZx2o7R
         XF9fenRWY/c/6Ifix4x/lj0Yb3zjEpDpx6OjUvUH0zGb3h3QgGB2T4uN05wvCcVLaS7B
         V528nhtA9ulpya9tdKgMVwQ2v3Ls6loW8ji9/uqtdXjt4wbYTKpAMI7Wv4Wq9VYtcsyx
         Jd+NxQBqI36+hMNmnjZqT+QjrZygLA1gxF+gPqWy4uI6Pt3MUQxF4fmbNFtQcYrY9rcX
         NQbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=8G3eAAXLO99g3u3L4wMCifqbvLII2nrQCEEaV7PSO/o=;
        b=Yg4whBr2mbmfhwFfleuLIYXwgEEjgL3CxjnL/azi3J3Z0YWdcZ8g/6FU7/ahbxCQYv
         xo4GdR4kmIiBfN1YJV2fJsgIlWmmkFG1SuCKKO/bFGJxs1neTiiOJQddEhuzDS7p+p5n
         M9Y4MKiWs4GugFEE6WXELBSfni0mxjcaNAe9lYv85X+LXPWYW2QaLqgu51BhSQdLWsh+
         BWtORFBoQi8jobOCYZdLVkdULZhq2IYeYidKGKG1NCaDBXZMwY6M9yhOR8xBeXxgy0vn
         /1aH8obodqY2n5hDZDI8yXeH3D2yPY50Ktg7KsVeppqaiDngPNPv/7EKSZ9sF83D/tAP
         9ceQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of cmarinas@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=cmarinas@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=arm.com
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id s4si990280ilv.1.2021.03.23.10.54.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Mar 2021 10:54:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of cmarinas@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 1D61E619AE;
	Tue, 23 Mar 2021 17:54:02 +0000 (UTC)
From: Catalin Marinas <catalin.marinas@arm.com>
To: Will Deacon <will@kernel.org>,
	Andre Przywara <andre.przywara@arm.com>,
	Shuah Khan <shuah@kernel.org>
Cc: clang-built-linux@googlegroups.com,
	Nick Desaulniers <ndesaulniers@google.com>,
	Amit Daniel Kachhap <amit.kachhap@arm.com>,
	linux-kselftest@vger.kernel.org,
	Mark Brown <broonie@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	Vincenzo Frascino <vincenzo.frascino@arm.com>,
	Nathan Chancellor <nathan@kernel.org>
Subject: Re: [PATCH 00/11] kselftest/arm64: mte: Fix feature detection and compilation
Date: Tue, 23 Mar 2021 17:54:01 +0000
Message-Id: <161652203083.28887.4073099105213789837.b4-ty@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210319165334.29213-1-andre.przywara@arm.com>
References: <20210319165334.29213-1-andre.przywara@arm.com>
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

On Fri, 19 Mar 2021 16:53:23 +0000, Andre Przywara wrote:
> When trying to run the arm64 MTE (Memory Tagging Extension) selftests
> on a model with the new FEAT_MTE3 capability, the MTE feature detection
> failed, because it was overzealously checking for one exact feature
> version only (0b0010). Trying to fix that (patch 06/11) led me into the
> rabbit hole of userland tool compilation, which triggered patches
> 01-05/11, to let me actually compile the selftests on an arm64
> machine running Ubuntu 20.04. Before I actually fixed that, I tried some
> other compiler and distro; patches 07 and 08 are my witnesses.
> Then I got brave and tried clang: entering patches 09/11 and 10/11.
> Eventually I tried to run the whole thing on that model again, and,
> you guessed it, patch 11/11 concludes this apparent "2 minute job".
> 
> [...]

Applied to arm64 (for-next/kselftest), thanks!

[01/11] kselftest/arm64: mte: Fix compilation with native compiler
        https://git.kernel.org/arm64/c/4a423645bc26
[02/11] kselftest/arm64: mte: Fix pthread linking
        https://git.kernel.org/arm64/c/e5decefd884d
[03/11] kselftest/arm64: mte: ksm_options: Fix fscanf warning
        https://git.kernel.org/arm64/c/31c88729a7ad
[04/11] kselftest/arm64: mte: user_mem: Fix write() warning
        https://git.kernel.org/arm64/c/40de85226fec
[05/11] kselftest/arm64: mte: common: Fix write() warnings
        https://git.kernel.org/arm64/c/4dfc9d30a8ab
[06/11] kselftest/arm64: mte: Fix MTE feature detection
        https://git.kernel.org/arm64/c/b17f265bb4cc
[07/11] kselftest/arm64: mte: Use cross-compiler if specified
        https://git.kernel.org/arm64/c/28cc9b3d8996
[08/11] kselftest/arm64: mte: Output warning about failing compiler
        https://git.kernel.org/arm64/c/6b9bbb7f934d
[09/11] kselftest/arm64: mte: Makefile: Fix clang compilation
        https://git.kernel.org/arm64/c/adb73140eec7
[10/11] kselftest/arm64: mte: Fix clang warning
        https://git.kernel.org/arm64/c/005a62f6d269
[11/11] kselftest/arm64: mte: Report filename on failing temp file creation
        https://git.kernel.org/arm64/c/b4985bb88afb

-- 
Catalin

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/161652203083.28887.4073099105213789837.b4-ty%40arm.com.
