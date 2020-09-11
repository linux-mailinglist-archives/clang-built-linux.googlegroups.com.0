Return-Path: <clang-built-linux+bncBDAZZCVNSYPBBN5M535AKGQEZI4INQQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43e.google.com (mail-pf1-x43e.google.com [IPv6:2607:f8b0:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C09D266203
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Sep 2020 17:22:33 +0200 (CEST)
Received: by mail-pf1-x43e.google.com with SMTP id h15sf7342215pfr.3
        for <lists+clang-built-linux@lfdr.de>; Fri, 11 Sep 2020 08:22:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599837752; cv=pass;
        d=google.com; s=arc-20160816;
        b=icZNyf8zX3e3gsQ7ygZ3tOPAE11YuvrYvrQxS+wasuY2nKk1VtbWtxhGp8u/HSNEa8
         vOTUhWGIE7WAd2JFoKWArM3Zo7OxiEPIRNreyGipubXkfrunFu2+VTxq5WiS0hGx3Ftx
         7YebXBccZbZ0bzJYl7UVXugUZk3FXzU6gnaDswHpMiFxR0qa+RT1++TJeJPQDgJlrWE1
         3zAmb6NCE0k2J4ngcAsA6VLmdYdn3+3PC5mDEm6QEebue0kLOGKFYji7HVjOjoTIv6KP
         VFs9Q3YkHtxuKdAIym1//+aj8vlQ+phgYQk3UeWMWJJl8pKQubnq/Cx/LpP64NHSICfk
         00pA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=+swT7K8gCkanzd+t5z6BZq1qgx3R4Bs48j80YxSX79s=;
        b=CvRqZ+VFRj+puYZr6RyYtaUFIM2a3aZ+bVupOZKujQ1gu43vZOAzSPEemQl0S/gj0y
         9GWTN5boSKN+1n6gfhFxSe7UPSK7p4WDEJEkvjE5tmgAs+3UwckIYfc141mtwFjVclde
         uAKDrhCpP392xj7Ufm9Vv/xyOTt0A9jjelYW8xUnnma1o6rCqh1zpnreJy/EnnH64zWd
         iqpMLSQQ42XYk73LLr19Kv0uYmlKD3Qi0xRD7aNmg//0oO+90zUmP22v+8zIUw2sS0ZQ
         /QTCBZ1044swfM0kKZwpmPUU/CzyCo4MoFmVoSyxukkYla2h1l0mryHZK8qns369nzd0
         h58A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ZaScDjks;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+swT7K8gCkanzd+t5z6BZq1qgx3R4Bs48j80YxSX79s=;
        b=lHVx0AUAKyFa3jYy40GSQB+M1wkbmiiKRKyGmf7sxHGWwtYQYjaI4bEl2EGRLUaWC9
         mXudXB+nOL/VniL3++oINVR2jdHLAX9Qlo/Z8MnfcmDKVj6g1sxkdmMZCY//F0BsLtLy
         vffXt2tAO4KDAkYo3Z7mgstF2M8JnQPzPRNiotyhq0BkTcv4Sh3Ipzi1z7Z9oaofhuZP
         rkw7kNfwDR7vH1YOtPbLJkIfLHC5urGolxxBEbgasxXZyWKCmZx6OkIR2ffye/auMp3r
         cj2c7wZzrFVlCot4qTGOkhem6SzWPBI6DsM4bQ6zSmfnfA2og/s7nStvkSz18t2G+LkG
         /ibw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=+swT7K8gCkanzd+t5z6BZq1qgx3R4Bs48j80YxSX79s=;
        b=fVkYvfuPpwptnptiJl8+tcSyutItFsVCFpwojjVaCfFwpX84VEiE61nHm6tGtrCEI+
         bVO55zvysKp8LXKxRUKlafKhPJs2GKA+2TD2UmLeDVTB35SMh9hQmZx5LXUkSN9d6LJN
         IcVk2JoR76X1BoL2ic2eoMtBXBYvP0tona1devCWdJ3ruFtt3u+iMQXLgHT1m3qzTjEA
         gJKA4MONigUw0GeLa3VI6x7bLj7HR1hVIWDBWpUDfpjaSE406vXNmtS2af3MF1gsamzf
         0k91YGpCIQ4HitnvvjXYbrBaUCyETSyyscIKRSz2NjL0saesY6QNhv9ulN57q75Xbrfc
         9J2w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532o9nq4SPvPrQhpgejjxxm0miCCFMprKRS6hhs8KKZ0cjiWyuMd
	kJDgbEtOyXaIb7zZoCxLBxg=
X-Google-Smtp-Source: ABdhPJw47p69hR1MO9CJnIGHmjLkNwawjCrk/ao3xJ+Xs45Fed4daTNODSNLuItmtMggx4odzOiKkA==
X-Received: by 2002:aa7:9286:0:b029:13c:1611:66c1 with SMTP id j6-20020aa792860000b029013c161166c1mr2534119pfa.12.1599837752164;
        Fri, 11 Sep 2020 08:22:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:f158:: with SMTP id o24ls805823pgk.4.gmail; Fri, 11 Sep
 2020 08:22:31 -0700 (PDT)
X-Received: by 2002:a62:8c86:: with SMTP id m128mr2561930pfd.111.1599837751500;
        Fri, 11 Sep 2020 08:22:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599837751; cv=none;
        d=google.com; s=arc-20160816;
        b=Kf/kFU/TIeUNptkWdGGoKj8+t6LDHb2oQRyK+N+MyoOq8juWR0g7KX5Q6PgX2OCEhy
         ICXBTETAnJzH+TA0/W+egZlbiMLRxnFcI41CABsjIWO8uRvE4xguk8VC9mhcEWGbQ8DN
         fBo3z+ETXLGYJvI7KQSzvB5+I7tSBEq3b6HhLKsk/8z+tEaZupKlTCo0vhdMfBNyb6Av
         E4EDaklO081+IJSqxXTsX0FF5v5RGFo2StMFlb3t7zU8Y1lJ6YISotlnwu5hPIKAaco9
         1Q69ioLF+Z7ywMlYsl0EdDX6+HE83NZ0ooKW3MvVauOQvF//s+tNv+udkYM5/6+jln2q
         xDYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=fUqQV2aok/sqWUaiF4tee7BjG1x9+e8DbBGw0AQhsWk=;
        b=A4E5inxnH8nmrrsGFxda5PuzuCnsSYVlMEHC2v38lrjhh/5ZGEFmLZxS9nvvTdg5B8
         Ll7bntBb0y1aH/q5cPsJ83OehoAmsnuy76NvI7iPI3po/3erOX6kk9Lu5s+d30vhEFr+
         NYkeJ/AVlpNZLJzeQC25Dj7xG4PkN74DSQ5BLVBEjMUypzK/zk83bFjmxMI0VtlkEJGc
         Wd1UrzHIqegtWq4dcTDKRJ31jJ3S1wVJumd8dgYAXTfSnUqWdQaODdBT6ACWzKcQCNcF
         263USZ/W6Hj8/3wtKrjTL6IdHmlLlwbwR3sSV1rCTgKZqOrmHGEOqlBzfLzkpisYTxDX
         NAWA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ZaScDjks;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id w136si166643pff.3.2020.09.11.08.22.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Sep 2020 08:22:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 208ED2076C;
	Fri, 11 Sep 2020 15:22:28 +0000 (UTC)
Date: Fri, 11 Sep 2020 16:22:25 +0100
From: Will Deacon <will@kernel.org>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: linux-kbuild@vger.kernel.org, Ingo Molnar <mingo@redhat.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Michal Marek <michal.lkml@markovi.net>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Stephen Boyd <swboyd@chromium.org>,
	Vincenzo Frascino <vincenzo.frascino@arm.com>,
	clang-built-linux@googlegroups.com,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/4] kbuild: remove cc-option test of -fno-strict-overflow
Message-ID: <20200911152225.GB20374@willie-the-truck>
References: <20200910135120.3527468-1-masahiroy@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200910135120.3527468-1-masahiroy@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=ZaScDjks;       spf=pass
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

On Thu, Sep 10, 2020 at 10:51:17PM +0900, Masahiro Yamada wrote:
> The minimal compiler versions, GCC 4.9 and Clang 10 support this flag.
> 
> Here is the godbolt:
> https://godbolt.org/z/odq8h9
> 
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> ---
> 
>  Makefile                          | 2 +-
>  arch/arm64/kernel/vdso32/Makefile | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)

This, and the other patch (4/4 -- I didn't see 2 or 3), look good to me.
Are you taking them via the kbuild tree, or shall I queue them in the arm64
tree? Please just let me know what you prefer.

Will

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200911152225.GB20374%40willie-the-truck.
