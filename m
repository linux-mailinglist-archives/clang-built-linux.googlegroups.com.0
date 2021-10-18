Return-Path: <clang-built-linux+bncBCXO5E6EQQFBBU5NW2FQMGQENONZC4Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x139.google.com (mail-il1-x139.google.com [IPv6:2607:f8b0:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B909432337
	for <lists+clang-built-linux@lfdr.de>; Mon, 18 Oct 2021 17:46:29 +0200 (CEST)
Received: by mail-il1-x139.google.com with SMTP id b16-20020a92ce10000000b0025936b43fc2sf8273179ilo.6
        for <lists+clang-built-linux@lfdr.de>; Mon, 18 Oct 2021 08:46:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1634571988; cv=pass;
        d=google.com; s=arc-20160816;
        b=i/3CmMvQrnYlUThrtBTCZNloFTDA235wZU6JLfinOPVDxTa+dEhtuKTPgjh4vV8ik2
         AMdcYTfz8A06XWEKRAvSYi2JD0KKFV7wbZ8sgmMRegdBiEoQvahpG2Gt07LhkWIqVtuc
         Koi4maUMHKagVlawtzcvC/68OPPqmXOJXxc09Utxqc5VBrBnXYhSn7mVj37k7sKG/E3b
         c9EHG0ZHUftF4slJ7bf6njBfcrK1KlsY7i0YfNik3z/tnK0NI76di8CT9zEAEWkbXQmQ
         nkQ3RJvosfoIF4q11L/E0xYdjg84N7mzdWv3gyfh7cS2b0/BZYsCakOH+Lg63PgV5XUg
         /ebQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=Fo64vI2CxmDRdvj2HJbOPBK6auiq6ElAt1ozPGV8vmk=;
        b=SD6hUfzRf0asQdxHJ9aU5DTrgNxh6j6rJLmYJP43WPCez7BcpyAlAjgrkPIl8MYBuf
         uWJkWhN0UB83AyEGMuxpyGFZp7COzl1znj1YVHk1k6Bba/mUOwvUFFocMEqkkYZUdRf4
         9l+bhKzLc+KPtGyaDA18b5tCOsaranhYOzIr0CBnxzcFYpjzr/eUeqOH14q5aJPDnBhW
         DkoUXbZdKJdzCRLp7+pIQsknO3PahK3u49QMNKb4e9GGrzzlDt2ZBXm0d9mEb9MgaQ30
         3vxb4zHV8YUgRrO+DmhFDyV+aKyNQ+9YemwRqyEUVWhWytNrrEGhHjekhc7AaQLjldDR
         np+A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=vBnzxFy5;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Fo64vI2CxmDRdvj2HJbOPBK6auiq6ElAt1ozPGV8vmk=;
        b=M/U4iSEmpDmGuuTKfm66KNulsZWIN+uwY7v0GeJrVqfcW/TGNWo7dV6yUvfB0bfZKO
         yeZHLOSpDaBHm0M2hh1u4+Kxtxf3xMiliOIQjrEgrRfxs1TiruTcaXpfxskoEOtyb7lz
         4mgNAl4WhbQGqbwMP2DImMd/BV/9sgeaWJsRyYeCWVNF25dayB41+hL9WI1MaEaDLWKt
         80g8i8LwPxoCBq4e+HISaO/xXCvEmbYoWsMkFp4ULLjTthSIS1UkGUzebxdcuzWCAUSB
         8RWapeqJJUabCPHGb09bAubZ0iiPigDD5wbRe8iYuDgDB4mvFGpvHbAegRKCHu0vMhJE
         752A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Fo64vI2CxmDRdvj2HJbOPBK6auiq6ElAt1ozPGV8vmk=;
        b=tUfDeRHX50ttPQPN+vpAYy0hsGXvmEcNwIMdb84QpU14h/v+nNh4znAhjE/vJOanar
         aJyMxKMabKJ7Y0SDzxVpfIBNXXBHWY9a6DFkYzURBHsjs4QgyqShD/vVZwOOZNHCqRbs
         b167g9jjf2KTfP5fZTZnzw4m3ghpqCEAJb6rn1DoQGRggXggnf0NczGsu9yl3HG3rksU
         xVkvGbx8s/pag/nVjpD+UEzogk+HIR9SCDRa/rzxfKZ6dUQVXoVE9im4MBagskBfIhU+
         Ohm0UQg9l/qtMvd+5t8to1eKGZPH4NVS1XRcDfFa167O7IuNM2p1YdoFpzP5pyCUHeqA
         Iepw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530+zLPkZcJiOQP9gc0YK3mIxq+IPfBl2XZ/ndq7wPbDx3qOWvil
	wUqDq3/ZT7pdFewGSlxxubQ=
X-Google-Smtp-Source: ABdhPJw8qCWdsjGu/OO3bcYut1xhhypDZFV4ysrxLPR4EHujFWHMyytBDBbODqM+yWNF5bc+nifP2Q==
X-Received: by 2002:a05:6602:1227:: with SMTP id z7mr15087628iot.150.1634571987931;
        Mon, 18 Oct 2021 08:46:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:ab91:: with SMTP id t17ls2124836jan.4.gmail; Mon, 18 Oct
 2021 08:46:27 -0700 (PDT)
X-Received: by 2002:a05:6638:411f:: with SMTP id ay31mr392672jab.120.1634571987545;
        Mon, 18 Oct 2021 08:46:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634571987; cv=none;
        d=google.com; s=arc-20160816;
        b=u4rumAFv+96cikEMtPFw1YNzB45Tzx2rqMPbxSh/TKgD0XiHJAuK1C7M+/XrhY8sTO
         3RpvJwf7eADCBEUWvU8gmF/OZD+Y8FauThHmeh5Z6W+PdP+NZCRoUhgprM+HilCALGbG
         6PIv/X1oLw9dZr5B5avogr+CfkVGMUzKeYHktUhxk1MeB7LO0XZqQDernXwZ80yQz3C1
         YYTgcMjNamKtYglrNl+PXevL5OdOtnDMEF2JLVTe9KVl8kIVJCVaPHcnstnjDXVzMf/u
         Oyp/ZGjGcaSEV6nQIasMAZR0bQPojp1ilqp8qyNsXYLhjaz00z4QEnNdQfMDYt2LFm0A
         90AA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=hsmNf36P88eKpepUde1vJFwmkSGs1V+Gq6mqBadpNlo=;
        b=MKqEgffkvv3TPGmuNxrq6TpEWWHDmaadh3k8uR7AIf1H0D3Q7F5u+5J7Zg1gmDNTDN
         UwhBY0hqhp5yVlsPP2rLsQwYtzEoqBtaxl6tAT9Sc/DZRTUPOmYoJaokkPYhVDATG6ww
         wz37o2CHz9yLw1W3KL1edFfNEGYjEBSDtJ2gqhTaAOE6NN+DmJO7pN7PQUBqabrUDc25
         BJCHFpCqejyHBINUMx2puP3sqZg2e5J5vFjSZa7OgjKa1t7JkjtsbUeUS4QghOMZklVS
         hUutRH+GxcTq1eBezR3YjicxTX7MVsH3AZ3ly6tmw+itPC8+kDa2WlI4cB+xPbYfNkEX
         IiDw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=vBnzxFy5;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id q12si117486ilo.1.2021.10.18.08.46.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Oct 2021 08:46:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id C345460EFE
	for <clang-built-linux@googlegroups.com>; Mon, 18 Oct 2021 15:46:26 +0000 (UTC)
Received: by mail-wr1-f41.google.com with SMTP id y3so42398182wrl.1
        for <clang-built-linux@googlegroups.com>; Mon, 18 Oct 2021 08:46:26 -0700 (PDT)
X-Received: by 2002:adf:b1c4:: with SMTP id r4mr36465681wra.428.1634571985240;
 Mon, 18 Oct 2021 08:46:25 -0700 (PDT)
MIME-Version: 1.0
References: <20210822075122.864511-1-keescook@chromium.org> <20210822075122.864511-22-keescook@chromium.org>
In-Reply-To: <20210822075122.864511-22-keescook@chromium.org>
From: Arnd Bergmann <arnd@kernel.org>
Date: Mon, 18 Oct 2021 17:46:09 +0200
X-Gmail-Original-Message-ID: <CAK8P3a1o58qeUsn9_+o1v1POZ9=3p17TCEba4-TRQ7Hf5mRg1A@mail.gmail.com>
Message-ID: <CAK8P3a1o58qeUsn9_+o1v1POZ9=3p17TCEba4-TRQ7Hf5mRg1A@mail.gmail.com>
Subject: Re: [PATCH for-next 21/25] lib: Introduce CONFIG_TEST_MEMCPY
To: Kees Cook <keescook@chromium.org>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	Rasmus Villemoes <linux@rasmusvillemoes.dk>, Daniel Micay <danielmicay@gmail.com>, 
	Francis Laniel <laniel_francis@privacyrequired.com>, Bart Van Assche <bvanassche@acm.org>, 
	David Gow <davidgow@google.com>, Linux-MM <linux-mm@kvack.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, linux-hardening@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=vBnzxFy5;       spf=pass
 (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=arnd@kernel.org;       dmarc=pass (p=NONE sp=NONE
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

On Sun, Aug 22, 2021 at 9:56 AM Kees Cook <keescook@chromium.org> wrote:
> +FORTIFY_SOURCE
> +M:     Kees Cook <keescook@chomium.org>
> +L:     linux-hardening@vger.kernel.org
> +S:     Supported

I had added you to Cc on a patch because of this entry, and the email
bounced. It looks like you need an extra 'r' in the address.

         Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a1o58qeUsn9_%2Bo1v1POZ9%3D3p17TCEba4-TRQ7Hf5mRg1A%40mail.gmail.com.
