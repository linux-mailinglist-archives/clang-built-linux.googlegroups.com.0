Return-Path: <clang-built-linux+bncBCT4XGV33UIBBUGLZ37QKGQEBMZDUFI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33b.google.com (mail-ot1-x33b.google.com [IPv6:2607:f8b0:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 427C42EA0DF
	for <lists+clang-built-linux@lfdr.de>; Tue,  5 Jan 2021 00:33:37 +0100 (CET)
Received: by mail-ot1-x33b.google.com with SMTP id n108sf21847039ota.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 04 Jan 2021 15:33:37 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609803216; cv=pass;
        d=google.com; s=arc-20160816;
        b=oBi0BngyUEb4kiWM/TW1mYx61OGfEkBjpJVWvfbN+bncJxWQLsDe7c69ITlFHHH70g
         vBnq/YDMgn2SEdW3cq0F1HgzVYhhrNEcodc2FVEpvjn8m+1R3cr+hurdHwsc1U+20U+k
         iw59jRDJA6RJGoXiu6yOn3YA0tywrQqleVkc/3Za/sTHVM/mp/n8alGV+hxz657GWTdX
         7TeIk6ZRpIvQ5IrhlGAASmT9Pt74VDecWnYHRBvqjsDyajAeX48xrCivZycG7JZKrKOZ
         T6/CMCNw9mDDoEsXq3/zrLEFkqjDkvbGVM0U+gkcTKLaj5Y/NIDnisOPQST5gPhzXqmm
         REuw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=6CNrku/2ia6c9eLyncalhjYqf91w2sctTxX9htXqH3U=;
        b=tBXaMXFhBxhWkdcJyK3de00X8ZCFQv4JefLv1ZRbeJWlruritHug7xNNHmuGeTIuOL
         WzwmnMMmAU6meCdaMoFG6uxf0JRW+Qo/Fyae8I7hMAO/olSlRnSOhd8SWlf3scFE3Q59
         /cZfiIR0+ykFhkWjHQeDVs1oAvlJjl5l/SHOabggO0GtzyGdZnVnBr1b2cKppBX7r1Yk
         lPESoyh3EVhkyZxtamuByE4s91sHqQ+xZPuJy/SBQ87piLX15UARpPRduojQcbSgp+dt
         DFOREZEuXVF6DEl5U8XBmSlIHcR+08jFRBXqFqH3I5rL+vshfSTMonKYw5l/t1gNhcRi
         MPEg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=korg header.b=AmtRy2OB;
       spf=pass (google.com: domain of akpm@linux-foundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=akpm@linux-foundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6CNrku/2ia6c9eLyncalhjYqf91w2sctTxX9htXqH3U=;
        b=kCQb3fwoM7oUjLVHufKnhLHaKGZpa03PrbqJ1bOIKbK0tdFQ9vC3j9KZAC9b58M1x/
         bcRjazWwn3M/XmC7Onobcb5NHXe6QVwtNrJVwJfQ2nGcDw0kETJ9iif7h5tvC4tU9KZB
         XusMKjaQ7NpGtCNUlJxcFMXa/ChvqSwVuiENDVywmVF8ZEP+mTw+H1I2hWuvIBrD8Cbr
         rfTk2W6QfCHZfIf+ZZMaTGVM6i+zBi52+LR8nt+TSv7TqIG+zysSoSSt3bpSiYgPakcG
         M13X1RD1yfcIiIDZRVCxvjmsptt3udom8shnUNgXCYle/1kCOUl2m4nSIiIsIyz6VEZd
         6c4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6CNrku/2ia6c9eLyncalhjYqf91w2sctTxX9htXqH3U=;
        b=Phg0nYqGv/6baM4l56HhuTw4VNBLngOOOZiMRfyi4FPudPSsGJ6EOSBnkqYtnTa86G
         bqk+xmW4oW1nPgnP9ygI9MVzAAS/d9WM7qMGVlsg3yJ9dDRNXsMoD5N7MQT5tG7gebrI
         eKwv7YWwe+OGVwG4tZHDVCTaX6RUTFHEPwtx/X6VdHBt+d5VrbSTJs+rNK7nsy74TSyW
         5XzeyX8906F9OUX9uHT8+ph04ZhAGzIhc8iLoJ978LazaEjq1zhGSRtEE5r51T+HzUtp
         9NrAGAxAHHa+NDLaA6Vh3o1dpNU9jUy0kSO5mQs9t+s3OuDhxcAImDURv9BU5JrKaBbb
         ggTg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532N31FM/2XTMpZJ7iqzltwOmG0uvitXXf3zQhiCKz06cepIjIHp
	nE55KNvGFO6uQE38gFtJZow=
X-Google-Smtp-Source: ABdhPJyP2N3fTGqZTm3ADEHdCVIsefavrtkTSvZX2ZveTpB89lxVH7B9GvET0Td+j9VwnKow0axDCw==
X-Received: by 2002:a9d:170d:: with SMTP id i13mr54321093ota.106.1609803216285;
        Mon, 04 Jan 2021 15:33:36 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:cdc1:: with SMTP id d184ls20010459oig.10.gmail; Mon, 04
 Jan 2021 15:33:35 -0800 (PST)
X-Received: by 2002:a05:6808:3d3:: with SMTP id o19mr916190oie.164.1609803215736;
        Mon, 04 Jan 2021 15:33:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609803215; cv=none;
        d=google.com; s=arc-20160816;
        b=0BWQWdbG84OZS7XMhqyzlBYxraycoaUz7sVO7Lq1ZB0Yp91YOITg/pxnlFPSrrNwQG
         gJb+wPWYrg7pUBBT5+bp0JTvUGEsK545StpzsHYYVFmC/M8KRkSHLEbaACtSWAc/MNG5
         OCRo2EN46ohAfHGSoR1aV0yHvLoLDgQZblHM5Izt2m+0WgEVfmexZ6su45uUUI0UrVMv
         ZQy4yfnKrN7rxFtmby49h8nLGxPxM6IInwDwo968Cq6qqidQ4aDCE0NLSFScfCj3GFqK
         Vf43dTow9kB0QwZjFyxsVO3/XCgxhQ9qT+dk1FTgYplpyVIZeDfOn+H0S1Z4f6e6WAHU
         fz0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=1KVe2J+YannpkkWUZqt2Uq/KJcVTjct/OgswGlunXN4=;
        b=ix6FsNx35huWaQtkZJFtTBkSMeoeMuNzz1Qy3/XyURmAHXdmzieQg6nPM65Ko2MINn
         thpkXL2h76VTaVN+c7GHDX+Bn9wuQZIwuKNP1mqgqdfvf9TYyZUF9969QCmaCIJDIYt9
         CyebihDFtOy5ocY3/wHeoqwf5k5vcYUe+E6ravMHacPJStLNY5yK1kvL1nQ6yVdIHSO1
         L4iaJuFfwI3haQHCXvCrYpJD7ve82j23m9z0ryxJ+yHyX1mooMAgDQKpAo8C8L0zR5A5
         R13dIeDFP5XIkfETiTL00ZMwPE4v9gAr8rLUm+gpJFKP5yBTcnoEO36Gysst4CHiJ/pP
         NBbw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=korg header.b=AmtRy2OB;
       spf=pass (google.com: domain of akpm@linux-foundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=akpm@linux-foundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id u2si6142398otg.1.2021.01.04.15.33.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 04 Jan 2021 15:33:35 -0800 (PST)
Received-SPF: pass (google.com: domain of akpm@linux-foundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 79EB022286;
	Mon,  4 Jan 2021 23:33:34 +0000 (UTC)
Date: Mon, 4 Jan 2021 15:33:33 -0800
From: Andrew Morton <akpm@linux-foundation.org>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Marco Elver <elver@google.com>, Arnd Bergmann <arnd@kernel.org>, Kees
 Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>, Nick
 Desaulniers <ndesaulniers@google.com>, George Popescu
 <georgepope@android.com>, Stephen Rothwell <sfr@canb.auug.org.au>, LKML
 <linux-kernel@vger.kernel.org>, clang-built-linux
 <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] ubsan: disable unsigned-integer-overflow sanitizer with
 clang
Message-Id: <20210104153333.4b6c7ae49edc4182d53bd17f@linux-foundation.org>
In-Reply-To: <20210104223336.GA2562866@ubuntu-m3-large-x86>
References: <20201230154749.746641-1-arnd@kernel.org>
	<CANpmjNNGmbgg_pFMC6X_6vZcj53jy7PsNyZAC88rOQC5zrOiFw@mail.gmail.com>
	<20210104223336.GA2562866@ubuntu-m3-large-x86>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: akpm@linux-foundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linux-foundation.org header.s=korg header.b=AmtRy2OB;
       spf=pass (google.com: domain of akpm@linux-foundation.org designates
 198.145.29.99 as permitted sender) smtp.mailfrom=akpm@linux-foundation.org
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

On Mon, 4 Jan 2021 15:33:36 -0700 Nathan Chancellor <natechancellor@gmail.com> wrote:

> > > +++ b/lib/Kconfig.ubsan
> > > @@ -122,6 +122,8 @@ config UBSAN_SIGNED_OVERFLOW
> > >
> > >  config UBSAN_UNSIGNED_OVERFLOW
> > >         bool "Perform checking for unsigned arithmetic overflow"
> > > +       # clang hugely expands stack usage with -fsanitize=object-size
> > 
> > This is the first time -fsanitize=object-size is mentioned. Typo?
> 
> Copy and paste issue from CONFIG_UBSAN_OBJECT_SIZE

This?

--- a/lib/Kconfig.ubsan~ubsan-disable-unsigned-integer-overflow-sanitizer-with-clang-fix
+++ a/lib/Kconfig.ubsan
@@ -122,7 +122,7 @@ config UBSAN_SIGNED_OVERFLOW
 
 config UBSAN_UNSIGNED_OVERFLOW
 	bool "Perform checking for unsigned arithmetic overflow"
-	# clang hugely expands stack usage with -fsanitize=object-size
+	# clang hugely expands stack usage with -fsanitize=unsigned-integer-overflow
 	depends on !CC_IS_CLANG
 	depends on $(cc-option,-fsanitize=unsigned-integer-overflow)
 	help
_

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210104153333.4b6c7ae49edc4182d53bd17f%40linux-foundation.org.
