Return-Path: <clang-built-linux+bncBCLI747UVAFRBZFDYOBQMGQED7QL6AQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf40.google.com (mail-qv1-xf40.google.com [IPv6:2607:f8b0:4864:20::f40])
	by mail.lfdr.de (Postfix) with ESMTPS id 476B335A8A6
	for <lists+clang-built-linux@lfdr.de>; Sat, 10 Apr 2021 00:15:01 +0200 (CEST)
Received: by mail-qv1-xf40.google.com with SMTP id r14sf1876658qvr.14
        for <lists+clang-built-linux@lfdr.de>; Fri, 09 Apr 2021 15:15:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618006500; cv=pass;
        d=google.com; s=arc-20160816;
        b=WtAKdKFoNn0+kkSa7JmgtNOb7cPhchGK2otnlGC7Abc6p5LRR6rLgFJiOlqeq8HBh2
         w5ce65Z01x6XVSbQVx9Me3TFDq2Jmr4XbDg1ZGGSUjMT48BrBRsczzp/nSXLrmKwp2nx
         3fv9iq/4iDamh1BJDKxXN5sdyHWhuqO3EpbBIvC/5cTcFlxEWaYguivs9WIR8WhiTR6M
         02oHVqImUZMajAGD74M4ianB8C8wp241ajnPUoPYWlGMlicwaOJAm2zux7WpDp0vFaAR
         JLMLDPvtWsxbtlZo470I+7wsmeotx4cTEXUPebT7lKAKbdtawyaUjbTvcNZYR6WHN1LN
         nefQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=pB8VXhLJN1LOmFYU0V3cR+Z0GW1Dz4fojkGKU9yidpI=;
        b=DZ4gpsuf3PefIG+ELlPZm8pzQSWxnPJBH6Hg2IvWbGweh/RXIyzXNLP3bUiOY3vHwV
         eoYcslu/2wR/HU9kuQHku6d6WnqmRdsi8M1/Gf+xE11cm69dkSMVVizMur+U7u96Zj2+
         WwAPr0KHNzTDZMfiGx+aoV/aSlMb6gzYfPoepJW6u5aBFsMk+nvKxUfn8PzmdaUV8xhV
         XsaJ7H3edQq0bOuDQ94cbtYy7tVpmp5utNp4j5IfdUFRb7vLnsj8FOmaIW9OA5eiUEVI
         chY/IgIEGYl6UHwbT211noPFhKUJ3pyoKUrxNo0+a6PYunU7wfibskHrm0vxg0ItWG2P
         ID1w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@zx2c4.com header.s=20210105 header.b=ZUdMEW9I;
       spf=pass (google.com: domain of jason@zx2c4.com designates 104.131.123.232 as permitted sender) smtp.mailfrom=Jason@zx2c4.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=zx2c4.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pB8VXhLJN1LOmFYU0V3cR+Z0GW1Dz4fojkGKU9yidpI=;
        b=NEUDrUNwA3GEYu0GBnmz1wdFg/hQJ3u+VpuB8vKkRPdtFl0L8A8XygJmMEZOQ/6Bp1
         ythBYu/7dy4MWp7W4WvaAeR5ekR81TPn3DIhuUaLbuwHUqH9Z2cPnp4tJmGOpyyvHKRq
         bYuFDFQPP2omEpaT75fRnW07fwl1mlv5+3jMEX2rD7wgpA65U5fx0wg7bwfBxQSeC/yD
         CXZc/j3m2s2NMxyYP64KdxyBeCgxk7YUHxrGfJGR7tCojU/TWJkPEONuYe8fVjMKgaLQ
         InwOEJUaWhVL4/IBVA5BH3yUqmOy5t3kum6wpvHlF4SjIS+24eOaeJPGId+Lz4VaNswB
         BFAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pB8VXhLJN1LOmFYU0V3cR+Z0GW1Dz4fojkGKU9yidpI=;
        b=eQvP65L8A8F+jBtL7hgoBX70nvgIlgw0bbB+e0J4zIDXXRZ+wb96kFY8tRbLanMSl9
         Y8NThzIne8G2TohpgATT1kbbEgsmjze1t/4FReABTyJpj0byJKrN8ZYnY1a28KI8I58T
         +8RXZXHurw3xSaCB2sOLbGi6U0rOmFZemy9UtSAS4k5R8La+bvlkMgEKM3PDMYrEB6xZ
         B18oUA0bvRVxl5P6G8EVVxFlVTUtrwYPjcIf1/BL+oWKXnlECXP8bKn74/FUsIlXrC+1
         Tu5zNSalGARLM3118g53sgMmgeCmO3/NWFHe93u91dVIwR4IOU8wLmAbKFC+e2MuPF8o
         8uAg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530AxgE6P3h/X6YuNVDuV7uMaDf4rDvtlXQNVS6c63RxN8XsdLam
	v3ERtXxHg7Zk8cy0amJPIfg=
X-Google-Smtp-Source: ABdhPJzbdtAczct06F9seooaHCg0Cgz6H+X9mhH2hcEi/IGcmdro0rLZ5BmpTDp/MXHF00iy4gHmqw==
X-Received: by 2002:a05:622a:1341:: with SMTP id w1mr220235qtk.347.1618006500286;
        Fri, 09 Apr 2021 15:15:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aed:2091:: with SMTP id 17ls4346147qtb.10.gmail; Fri, 09 Apr
 2021 15:14:59 -0700 (PDT)
X-Received: by 2002:a05:622a:d3:: with SMTP id p19mr14962393qtw.53.1618006499901;
        Fri, 09 Apr 2021 15:14:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618006499; cv=none;
        d=google.com; s=arc-20160816;
        b=mHPS00QG+ZH+Ms4PR6ucDW7gREV47KMKfAh5unb3dtwtU+gBfGdTNLf4o6HDYGNcCQ
         3hUOGzVoonydjnh3GxWQFCrJmaa6MgCnS6V9xJbKhWKB2pVVEutBnpNRbDUG87TroFgr
         Geyy1bnTLJAw53ZBdeHMkTklYrEXmNie2c5R3xj+a6fWmc+4SmvMCUcuHvjwhQs7F9WL
         xFk//SVi4UCJWyrTfvBvIEZ1ASITbwTZrsV0BOR1Wti7RewOE+cMdCOQmTjDXtY6K4WD
         OV5oBN5BXDoYsGMuk5RD/G65tlGsEFZd+rGWtw/QUWiwKfLHPmx33nRQfnJ/nmTQeLOA
         h3tA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=UASekFbVhQj5MYvWTJ3Pb9W7iYXFe8RQLalyImAe1zE=;
        b=K3eV5NbXYh48zJG8Nlnid6YEgi9cb85gsukXGoDAhE2rF+3jr8nY/LV1Gf8/JLuxZy
         WUozu26YBv6vIHYnMe3DlFNgDtJ8D8jXk4x9hV1tVyi1GstULnOx1jxvNQaeK6gszTJn
         wvfNhlPXw1CkwpG8mwV2L1uo03vA7OUooKelZXMwOwoojP8UyFkJZN1yIu4/HfTYHIV9
         7wrbCJ5wxozEY8t/QrgBf4AcVEtUzn9cpyC974ZcbrrJtEc+2bU2n6rzmlm16RK9J5XV
         ywpXKkutg6KXrkrbmHXnjYQxRy37e7g8xr2/Axpf1NDZ6mvpb5lO8ZxgQJC5+XcVkySD
         AT3Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@zx2c4.com header.s=20210105 header.b=ZUdMEW9I;
       spf=pass (google.com: domain of jason@zx2c4.com designates 104.131.123.232 as permitted sender) smtp.mailfrom=Jason@zx2c4.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=zx2c4.com
Received: from mail.zx2c4.com (mail.zx2c4.com. [104.131.123.232])
        by gmr-mx.google.com with ESMTPS id r26si420852qtf.3.2021.04.09.15.14.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Apr 2021 15:14:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of jason@zx2c4.com designates 104.131.123.232 as permitted sender) client-ip=104.131.123.232;
Received: by mail.zx2c4.com (ZX2C4 Mail Server) with ESMTPSA id a4d8357a (TLSv1.3:AEAD-AES256-GCM-SHA384:256:NO)
	for <clang-built-linux@googlegroups.com>;
	Fri, 9 Apr 2021 22:14:56 +0000 (UTC)
Received: by mail-yb1-f169.google.com with SMTP id g38so8185637ybi.12
        for <clang-built-linux@googlegroups.com>; Fri, 09 Apr 2021 15:14:56 -0700 (PDT)
X-Received: by 2002:a25:a3e3:: with SMTP id e90mr19023469ybi.279.1618006495224;
 Fri, 09 Apr 2021 15:14:55 -0700 (PDT)
MIME-Version: 1.0
References: <20210409221155.1113205-1-nathan@kernel.org>
In-Reply-To: <20210409221155.1113205-1-nathan@kernel.org>
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
Date: Fri, 9 Apr 2021 16:14:44 -0600
X-Gmail-Original-Message-ID: <CAHmME9raNqAftSHuJZ1VE0Xp=yGfuVN+i1j2tCAEDSynsgqy7w@mail.gmail.com>
Message-ID: <CAHmME9raNqAftSHuJZ1VE0Xp=yGfuVN+i1j2tCAEDSynsgqy7w@mail.gmail.com>
Subject: Re: [PATCH] crypto: arm/curve25519 - Move '.fpu' after '.arch'
To: Nathan Chancellor <nathan@kernel.org>
Cc: Herbert Xu <herbert@gondor.apana.org.au>, "David S. Miller" <davem@davemloft.net>, 
	Russell King <linux@armlinux.org.uk>, Nick Desaulniers <ndesaulniers@google.com>, 
	Ard Biesheuvel <ardb@kernel.org>, Linux Crypto Mailing List <linux-crypto@vger.kernel.org>, 
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, stable <stable@vger.kernel.org>, 
	Arnd Bergmann <arnd@arndb.de>, Jessica Clarke <jrtc27@jrtc27.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jason@zx2c4.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@zx2c4.com header.s=20210105 header.b=ZUdMEW9I;       spf=pass
 (google.com: domain of jason@zx2c4.com designates 104.131.123.232 as
 permitted sender) smtp.mailfrom=Jason@zx2c4.com;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=zx2c4.com
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

Seems reasonable to me.

Acked-by: Jason A. Donenfeld <Jason@zx2c4.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHmME9raNqAftSHuJZ1VE0Xp%3DyGfuVN%2Bi1j2tCAEDSynsgqy7w%40mail.gmail.com.
