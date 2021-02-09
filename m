Return-Path: <clang-built-linux+bncBDAZZCVNSYPBBS53RKAQMGQEW2SPP6Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23f.google.com (mail-oi1-x23f.google.com [IPv6:2607:f8b0:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id 530363151BD
	for <lists+clang-built-linux@lfdr.de>; Tue,  9 Feb 2021 15:35:56 +0100 (CET)
Received: by mail-oi1-x23f.google.com with SMTP id k22sf3921953oiw.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 09 Feb 2021 06:35:56 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612881355; cv=pass;
        d=google.com; s=arc-20160816;
        b=Em7xGG9feAmhDIXZaB4alU+AdIJyAKmoZVERLU8yAygRA3dU0GG+9QBlnK897MCZJF
         uOP2uMTvUShjbLI7dzzDb9ucw1AuNm9jMrpMtS61Mpk397VWOYqH26DjFN86GnfIwJmJ
         2Oz21Ixi3kG2P9uPkuae1iPpxm7xrMmVrd5+5cPGuiB4edHc5bjlU3axk85lLetta/5c
         A0iSNmjVKbSFh4xHlqpMBJI3ctcan3DtSgSppj+zfNHtyYGXQAmJ7XJ5KdfKFwFy1xOS
         A514DjYJlhMeTla3bsDqmXoQhFosyss69LNmJL/y9bgGweuYokiSXIxd6PK2n3hqyPo9
         gTmQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=sAiiFU/EPYBM2CR9QirFucR7LpZOEoKBpVqfRHRPC7U=;
        b=gfMACpAneCPyZ7Z+PbVZcuq9M/s0F7J12fOu6B1P6pIAwJLsv6s8wGwF9ArOeQb7hI
         ESGe+WOA/dtmki/+4FPr1UVFHjxl0BFh3WgMTtZLTCHnebqzx6BTRBcY4sTI81Rc5CMR
         N0e5zaTd+DdCAkw4RebyEVkl8gfZiLzKNOhz8jjUfk/JvO7w3Tq9X6uTvQ1+xe7muI+G
         WYDoe/Z4Ox6yRiqatGo3pSCqLkMTJNOlldMdWzOdnEp7CZVp+4StwHDMxmd3J70yLjlR
         34EOVb4o9W5216wfqy9Je6UwbvXXOQXBoLPCW8zKQhKaiy/k6pRfetdUzIdL//BIy498
         72jg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=SXPdjrRd;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sAiiFU/EPYBM2CR9QirFucR7LpZOEoKBpVqfRHRPC7U=;
        b=A0Y+L/0zdqFRcB5GDFXv6Jmw0/SyunzK4SVGOi9ttMjr2qp1/4eKm0D1GxNvSh5pxi
         n+AHFs7cX6wR58dB8/fC03JwEpMs9167p9udKQ6p/MlC/O48TBtsQ2ZTYlrs5tuJ86dt
         vzkEO0hI46shLgY40QJ8T69HjVsUWGlbU37H7OqvoSQ/QhNT5FYtUNaUDMo3oX52c0rZ
         458e1b/5S8j5RJh2vTUlojO3FGrpXp6fzeP3dzxwU4G24IeboNJmakOO4xgm9kR8Jtp+
         ZNDMPnKlxDa6+LVxUHzLKtL7fkw8Zj3UCj3f2kS28axf3iQblnqMQZd71lsXt7qG9+n1
         MrUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sAiiFU/EPYBM2CR9QirFucR7LpZOEoKBpVqfRHRPC7U=;
        b=Lof15oD4TaYFTk4brJcKKO9T+IY/mgJ+DzO/++7zXJo1u0AHu9AsbZv49G8BmXnTrZ
         7XhT8rfsaHao8Wb1MAXbbG55dfvjtUmtjNF+h5KzVqZvfqLGT6XYYdRtU2sn4FTeZYZD
         lYUEnCZIpUeXbE8unaSc1umbm6FR+GsZ0GPhE+/K9uOvdz0OkUvOIBzwatQUzc6pKZzN
         fW2G2/0kg9JSFfDNOgIWAY7kuWILpmpWyLqeMalTQNLlxxvDVnhloNLyliGICp8nK+w7
         67HA83Qh3RZ7txTcoku5XucWG5flVTutOnsvl9ZVbTXrJzz3Z6TuJjLkR6WpEJQif/sc
         ItuA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532kalQ70anUrbGmuIH07kFSb7uGkzB57Dfz8QOgAYbdG+3F+ox8
	ihKaAYhXg5KFstsl3mMNcy8=
X-Google-Smtp-Source: ABdhPJxF5QCIqd5T0aqtP0IaCcVyjg/fPQdBhzvgy59FxpA2jKxe6VRc6Fn/M3q2jnr6r20C958h9g==
X-Received: by 2002:a05:6808:1287:: with SMTP id a7mr2524781oiw.151.1612881355386;
        Tue, 09 Feb 2021 06:35:55 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:9c89:: with SMTP id z9ls1272974ooj.1.gmail; Tue, 09 Feb
 2021 06:35:55 -0800 (PST)
X-Received: by 2002:a05:6820:414:: with SMTP id o20mr16242763oou.46.1612881355016;
        Tue, 09 Feb 2021 06:35:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612881355; cv=none;
        d=google.com; s=arc-20160816;
        b=OUdSAJkerfZx5fOu/shfVpzCYgntA6KrZjCDGrs3OilOLs9f/PTCSycB/g9b0Z0ZJA
         4BYdCeiRXwZpi/VPMkxEv8cqBSs0BDhVLl/XqyB2Ms3eiI2lXs/3PgqOPKWTM8pgu5xL
         IOfyfCv795fqXZZRNfOIRBHmoptqeprLUf9U+lzYlvkJ2FwbOHb1SK0bsCFbrLLzy/AC
         SJ2gSahPVgQUd85dqsY5uGL/LG+jTMi4RHtsbzbFytMcnJKPogTg8H0r8Zc/R1SD/YVh
         y2r4MrNluTAiPL1UC4pyOeJXQFEJWbHdJNlj7PhFPVL29ohRncC7A1fTbWbuhAx5J/cn
         u/vQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=BgmkLVs62z0wqgKDoc3cUIVuFf+pJqlEFGpWFvq2zXs=;
        b=UCMVMBQ2UYKQS96IDYPwYvxBHJSXa7giuQKgbJAT6UevAVXYnaOaeYJT7ZdCGrra64
         MHLnevyvmL5bxYB7AvbpuWlAaygHJLYQ3HyRQHOj6BDwcAVpU7FlmVI1so3YIEYaMy4T
         cbQMqbhjJJ76/DqvDvfpwgVWWzwT46DFPBvQoW1f3ja4FdRJYKBO4kUozSvGwAnqJSSu
         C3jPXxwsn3Q6cfv76IDa8ZL73WEg9Nxl6B8XQrd4RF3XGWUmgpaLldh1NDyNT/IYNY9m
         ffBHctcRrwKlqWcWrbAPpGEVE5jfMp7NLf2X3U5Hh0oZQQCugeeRHjf9mWwsphhLVtb/
         swQQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=SXPdjrRd;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id e206si1195207oib.3.2021.02.09.06.35.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2021 06:35:54 -0800 (PST)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 6AC9664E4F;
	Tue,  9 Feb 2021 14:35:52 +0000 (UTC)
From: Will Deacon <will@kernel.org>
To: Nathan Chancellor <nathan@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>
Cc: kernel-team@android.com,
	Will Deacon <will@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>,
	linux-kernel@vger.kernel.org,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2] arm64: Make CPU_BIG_ENDIAN depend on ld.bfd or ld.lld 13.0.0+
Date: Tue,  9 Feb 2021 14:35:46 +0000
Message-Id: <161288087156.126822.7923858337003340850.b4-ty@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210209005719.803608-1-nathan@kernel.org>
References: <20210202022441.1451389-1-nathan@kernel.org> <20210209005719.803608-1-nathan@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=SXPdjrRd;       spf=pass
 (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=will@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Mon, 8 Feb 2021 17:57:20 -0700, Nathan Chancellor wrote:
> Similar to commit 28187dc8ebd9 ("ARM: 9025/1: Kconfig: CPU_BIG_ENDIAN
> depends on !LD_IS_LLD"), ld.lld prior to 13.0.0 does not properly
> support aarch64 big endian, leading to the following build error when
> CONFIG_CPU_BIG_ENDIAN is selected:
> 
> ld.lld: error: unknown emulation: aarch64linuxb
> 
> [...]

Applied to arm64 (for-next/misc), thanks!

[1/1] arm64: Make CPU_BIG_ENDIAN depend on ld.bfd or ld.lld 13.0.0+
      https://git.kernel.org/arm64/c/e9c6deee00e9

Cheers,
-- 
Will

https://fixes.arm64.dev
https://next.arm64.dev
https://will.arm64.dev

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/161288087156.126822.7923858337003340850.b4-ty%40kernel.org.
