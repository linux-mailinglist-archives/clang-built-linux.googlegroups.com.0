Return-Path: <clang-built-linux+bncBAABBCFSQHXAKGQE2HZ6PHA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33e.google.com (mail-wm1-x33e.google.com [IPv6:2a00:1450:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id 765FBEE55E
	for <lists+clang-built-linux@lfdr.de>; Mon,  4 Nov 2019 17:59:52 +0100 (CET)
Received: by mail-wm1-x33e.google.com with SMTP id l184sf6325799wmf.6
        for <lists+clang-built-linux@lfdr.de>; Mon, 04 Nov 2019 08:59:52 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1572886792; cv=pass;
        d=google.com; s=arc-20160816;
        b=PnDSdO0HA9MAsO8ftfNeWxluw1O4V+e8pavSkJNpiuFCxNNeO2N9yNeez+ONbkXnWs
         s23vQFC19b4puS42Y9WVmXyHxGfHlwPXe8mOv69mpB/yKxQwCs8owK3z50gD1vQIsFqG
         zorlW4l6n4iHBJwjOL/ja0G6D89P7GEEDsuS52SMGTjbBVP4FaAEouWn9Yfh0T2FNA14
         p2N6g9jMsDT9S5Pzhpg00BtFeeWhBs9zMZaZg9gCE2AU9T/iHHVSC0+s+T7cJlEn+JPm
         JzaK9SQILVh1FX2BjZaqtHErs6kUQgWcLpniPUjMh0rIVkZvDfphF/QcqyTTO/GAKMhh
         AUkQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:message-id:references
         :in-reply-to:cc:from:date:mime-version:subject:to:sender
         :dkim-signature;
        bh=+GGrlG8gtjPRt8MLGOLWUFlLwocmnGDW4gw7D+ZhzKw=;
        b=cDUCXKwwSvMN7lJPO+YhqHs6+141hRYCfs73UFqM6Js0g72ewKTPxxt2tj4Jxlf7UM
         IoaRVbWHzc6ACPeJJJJaARyMKSpqV6tp9MXdLzgGF08F+/BYBbfdeDNOBK9CZms2aP7Q
         Tq45U9cZ+EWcKNUaNwCYg/AhE6OG6hgHbHgU39sfORVMz8wc+wFRNCc73pzZWSKtdXbb
         qBTHGg4sQCulHIAK5x/DcwrE0cC5ShWuOup5vUPOwN6WZm066uI1wGnRAAawwtpoieuN
         igj492IdUgsN7RXfpAbijRFflFb4xkVec34d739o6HRkCbmhtoygFqQs+zhmUZ05Y4Z4
         kkPw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=softfail (google.com: domain of transitioning maz@kernel.org does not designate 213.251.177.50 as permitted sender) smtp.mailfrom=maz@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:to:subject:mime-version:date:from:cc:in-reply-to:references
         :message-id:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+GGrlG8gtjPRt8MLGOLWUFlLwocmnGDW4gw7D+ZhzKw=;
        b=aMJ1HzdG2YRpifpogBTCX3DwPuvfCqwwZRXq7iuNpYa3VDbcBrY1sIfVMEV78tDsiY
         1RVAcoLBr5L9VuK/u8ZXrULw7N6bw4vT2uDgeVrLVLWImfBN3q6EhQB59sCGgtHrkQJL
         mW2poStJVS5XGHQTMmKXsCgH1CB5tE9yQavxgv4fDZD8nrNNR5NSJIVNrJYa1N8v7W99
         DJUebbA97Csk6vwJGB4Lqm0CvhMNTrJw1OdmCMUy6r4QLzJyfA8n/Vup+gYDUSdrkSSX
         OUhZnG1S+9/vzRmQ+JQG50rtASbx7tnxVlq3HfmsFxegfNZBi0tg/XWYRUDIZvxvPo7K
         yL8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:to:subject:mime-version:date:from:cc
         :in-reply-to:references:message-id:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+GGrlG8gtjPRt8MLGOLWUFlLwocmnGDW4gw7D+ZhzKw=;
        b=kxFgWtPNLSWAlpYepozxMBIgoIU4AzeZmCH02Ari+cHj3Ku+vU2gbuSNMXtc+SabMk
         CVheU5MKWHqUyhzWrQirp7u+t6atFHv3jb06kvEU2EAtBdckeue0EIh+H8LrgIHEwlFT
         4foKD0Tfj5M4dKxOeWk1SqyZwZwfOQoho7tMiCjpEkGvqRHo5SsYOcjv0wrvN5sEKncX
         nZefMDiNDDw6LPQ3tlukN5CezOHCN43Qf2O2ABqOG/1//X0U4OYBBVGdEHuqrGCJ/Mqp
         99epWZqnJW+CAIWormVF+uI2YMadDRnm4irvcGwe9Vz75+XnMbowf2UIKFC0lyj9lP52
         8VTw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXqsy3YuBgp5KqM68yiQ5eZsUNDvF85Ex+FP7bEvJ0Zn47V9T5J
	qD8bTYOhNC7uy9UiUY2PNvM=
X-Google-Smtp-Source: APXvYqy+ktRVJZnjejkJbSkt9mpbwveaEe228aQ9r84pnVVV5hP0c++CVhAYtSd3GlCeZqZv6POnZg==
X-Received: by 2002:adf:ef8a:: with SMTP id d10mr20360086wro.314.1572886792279;
        Mon, 04 Nov 2019 08:59:52 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:387:: with SMTP id 129ls3358wmd.3.canary-gmail; Mon, 04
 Nov 2019 08:59:51 -0800 (PST)
X-Received: by 2002:a1c:dd06:: with SMTP id u6mr53111wmg.109.1572886791962;
        Mon, 04 Nov 2019 08:59:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572886791; cv=none;
        d=google.com; s=arc-20160816;
        b=cN0mZL+NinlJ8/R1v1bTETZF0qMYPJizw0rHChs9XBdmPieJa4Lqk3M9AUsZ4bU/FC
         2+8CfTgQCVUxi4nRmNKYXWyL2UEW5GzPvAw5QacKip5CbIjQBvWhsnP0s5UnlbQhqRlR
         rB4EJznFl1MTRfQaqncV6Xwid9TKrHWM7bzHMrncKYw5obo1tt/L3EyLYghyg/Jc9MHe
         0zquPuFgqx661WIcXtrEYjSbPHOoUkJQpeGr+y1NURnCK9ZSoWCnPQlSXTzQroGfhMIo
         GSnVDBbe6xdrc1Aip3AttaMqmkrHFGu01mZlkFhuqu9UoWJngxM7hjX9UdT591+hPFDZ
         FIww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:message-id:references:in-reply-to:cc:from:date
         :content-transfer-encoding:mime-version:subject:to;
        bh=IQi6ZxjeuNmz5uDppfgbesIc603xmTvIAGbOblIpeeo=;
        b=pOkGSsMsGaFXPOO5jFx0EVTUpvwO2fder6TWyn1UPs0T3IuInu6Hh/NGbysUzMAlQ6
         J2L0WUtwl46eMJzHpdrLjHol2MscIrVEbKG/G3Je1DIGp+jn3MSKDVkP710D9QxWev/m
         Yh3MaRkAnq3stooIPHAbogZFIjAlcNzVGnNcPIqdtSEFNSI/B+yv0PwuHMySaldWFThL
         ymrcp+2ioW/3OmtWe6YKdheKpakmqx6eP0KaSqnfNb0KwklYQ3TGVFpAm5jybDD85axQ
         hFGqWxeIxb1KHhyWvZElhHDaqvZd1CJ/U3FZmGWIXG1xOIqmbdGg7Hbg1grMnptK5Qra
         qOdg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=softfail (google.com: domain of transitioning maz@kernel.org does not designate 213.251.177.50 as permitted sender) smtp.mailfrom=maz@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from inca-roads.misterjones.org (inca-roads.misterjones.org. [213.251.177.50])
        by gmr-mx.google.com with ESMTPS id t18si987112wrw.0.2019.11.04.08.59.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 04 Nov 2019 08:59:51 -0800 (PST)
Received-SPF: softfail (google.com: domain of transitioning maz@kernel.org does not designate 213.251.177.50 as permitted sender) client-ip=213.251.177.50;
Received: from www-data by cheepnis.misterjones.org with local (Exim 4.80)
	(envelope-from <maz@kernel.org>)
	id 1iRfhR-0008Lz-89; Mon, 04 Nov 2019 17:59:29 +0100
To: Sami Tolvanen <samitolvanen@google.com>
Subject: Re: [PATCH v4 06/17] scs: add accounting
X-PHP-Originating-Script: 0:main.inc
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Date: Mon, 04 Nov 2019 18:08:50 +0109
From: Marc Zyngier <maz@kernel.org>
Cc: Will Deacon <will@kernel.org>, Catalin Marinas
 <catalin.marinas@arm.com>, Steven Rostedt <rostedt@goodmis.org>, Masami
 Hiramatsu <mhiramat@kernel.org>, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Dave Martin <dave.martin@arm.com>, Kees Cook <keescook@chromium.org>, Laura
 Abbott <labbott@redhat.com>, Mark Rutland <mark.rutland@arm.com>, Nick
 Desaulniers <ndesaulniers@google.com>, Jann Horn <jannh@google.com>, Miguel
 Ojeda <miguel.ojeda.sandonis@gmail.com>, Masahiro Yamada
 <yamada.masahiro@socionext.com>, clang-built-linux
 <clang-built-linux@googlegroups.com>, Kernel Hardening
 <kernel-hardening@lists.openwall.com>, linux-arm-kernel
 <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>
In-Reply-To: <CABCJKuegREpQiJCY01B_=nsNJFFCkyxxp63tQOPT=h+yAPifyA@mail.gmail.com>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191101221150.116536-1-samitolvanen@google.com>
 <20191101221150.116536-7-samitolvanen@google.com>
 <791fc70f7bcaf13a89abaee9aae52dfe@www.loen.fr>
 <CABCJKuegREpQiJCY01B_=nsNJFFCkyxxp63tQOPT=h+yAPifyA@mail.gmail.com>
Message-ID: <5aaee4e0339daef7deadf29db9ea1747@www.loen.fr>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/0.7.2
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Rcpt-To: samitolvanen@google.com, will@kernel.org, catalin.marinas@arm.com, rostedt@goodmis.org, mhiramat@kernel.org, ard.biesheuvel@linaro.org, dave.martin@arm.com, keescook@chromium.org, labbott@redhat.com, mark.rutland@arm.com, ndesaulniers@google.com, jannh@google.com, miguel.ojeda.sandonis@gmail.com, yamada.masahiro@socionext.com, clang-built-linux@googlegroups.com, kernel-hardening@lists.openwall.com, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org); SAEximRunCond expanded to false
X-Original-Sender: maz@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=softfail
 (google.com: domain of transitioning maz@kernel.org does not designate
 213.251.177.50 as permitted sender) smtp.mailfrom=maz@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On 2019-11-04 17:52, Sami Tolvanen wrote:
> On Mon, Nov 4, 2019 at 5:13 AM Marc Zyngier <maz@kernel.org> wrote:
>> Is there any reason why you're not consistently using only one of
>> "#if IS_ENABLED(...)" or "#ifdef ...", but instead a mix of both?
>
> This is to match the style already used in each file. For example,
> fs/proc/meminfo.c uses #ifdef for other configs in the same function,
> and include/linux/mmzone.h uses #if IS_ENABLED(...).

Ah, fair enough.

         M.
-- 
Jazz is not dead. It just smells funny...

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/5aaee4e0339daef7deadf29db9ea1747%40www.loen.fr.
