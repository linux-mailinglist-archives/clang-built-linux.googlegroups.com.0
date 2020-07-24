Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBMXE5D4AKGQEZYR3CZA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3b.google.com (mail-yb1-xb3b.google.com [IPv6:2607:f8b0:4864:20::b3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 3400122BB2E
	for <lists+clang-built-linux@lfdr.de>; Fri, 24 Jul 2020 02:58:28 +0200 (CEST)
Received: by mail-yb1-xb3b.google.com with SMTP id j187sf8526899ybj.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 23 Jul 2020 17:58:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595552307; cv=pass;
        d=google.com; s=arc-20160816;
        b=cXr2evY+jEucRldXhFc7FhQXCDalMp2W5fSaBEJ8S/u+Hgov4g+Q6TTFhjkzfj5j7x
         CE37+Orhq0nxQDjUzSYtAvahQXO3GPvKcKH9Y0kpxRWe7lWMW8XE1HnIWyKWGy+0mm+U
         /1MoIt+Yhi+uRPAN6PXVfTpFkDWNa2nSYA78yizoZ3Kuwsp1oJJhkzVSOzgvB+arU4uk
         l7SRWIaa72ySn+yIKDaqC4CGkP8ENGL2elTmaNCoLZJYdS4I6TtXM9F4MW2/g8q5PkKG
         xk7EYTvUlZVLkzxvqtnCe/DqlHctgaINygGx85xr1Ju6nNpJhzH9fyQLcu/nKaaHLZeE
         N3mg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=Utu/wXFrq2VGIp5FcZr+/gFlhR1k6crA/Cb8354SD2w=;
        b=pQ9zWkTBj/xxbv/wZy5cmJCfHw+fTZWNpeGSQiR6GiEUg7W1c/XRsEJoWhS776fvtL
         4LkBHVg8a5b99oP46aKGoID1JoNhgVP/0RugWIvSKOgbboY0HTIxdO92Q9NYlrGuaKux
         cxcrSMdQLWqcvs+FhFhXzuJB/d1kSfwb3qzMm4aWHHONMDx0+95mg4S+fLn13jf93zEO
         P7fwAhpFqGJLf5a7sfg015Ob6+z0EUe9R0xWx8BEwpOgVFCwMtXop2hOHpPEGpg+J7sw
         0jOzuXryL/GQlwQGVN/m725VcXW54jA12+sa4rBiHkIQTv9TDkJEVzgcRGPapa5NXAFf
         Hx3Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bsZog7S2;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d44 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Utu/wXFrq2VGIp5FcZr+/gFlhR1k6crA/Cb8354SD2w=;
        b=FTVUDiSNOI4sO/sOLOdxK8rFYa4qkb05Wq3xVcDhrDAxrcYWqwrkckJoTM4ZO+5wYm
         dKVAmwgQxsIDwcE/3XANDs2RW2ld89vTlH+eF1ixdjPxglaEO4L6PXv+ZhhLxv32b+b8
         nLRg132ElOG2JBf6oAZ1S38mFj62nvkWWdIhLRFDApr3gZXOGkaCcumnpJGHmxQLCqBi
         uAejmhZ1YhigLd0GiXqYtp1PbyJ+nFESUWHfRS1v4AwP4atjFII6bS+rSUL2f+RSEA/a
         DE0yxIAh9cRP974jOeia82pRltJnRL45tkfY/WIfRob8VtKuRHwIB3dLuImqPYUSoilx
         0h0w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Utu/wXFrq2VGIp5FcZr+/gFlhR1k6crA/Cb8354SD2w=;
        b=JUXNZhtI8EAEyh0UN6Rxx0i2q0ZZ8SBavQU1wYlCAxoJU73V0pEog2MFHHHXStst3Y
         ClFRxnkSLFwjIIObL8ec3XO0Rl4kYmIb55LpDTj046K4E2I8LG2Vv+0F7IZiALONwT18
         zyQe9YVlLyMOuRH1UwRHNIl8w/bFFecSvQ1s6hLvGsxEskCk04JGha6QuULqqdYdrzLY
         F0/VREqqL56n9D5M6ODwIOyRJFeuAO5Ul2pWKjSA4+lL2ohQ6+GrsXXIwdyQOoYi5/yj
         8YnyHbWx+459hXlzlnon5Mi6qQ3M4q3f9I6rCs3Gw1mUMqKvP3sccgTYxnGv4sfqvpVv
         M0Ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Utu/wXFrq2VGIp5FcZr+/gFlhR1k6crA/Cb8354SD2w=;
        b=WpR3awyBJYBVDXIUZiIIRBRm7VFnZ+9R1sycC14Em+/YYmgiq+JetqC8mO4rYliah6
         fJT/b5I0uZvu9eeX/K6fG/BMTHicz74g33EZIXug+rwfYjASWVco87jWzSJn9IGU3Yca
         sJXA/h5UDSV3h6t0CvbL/NTBpSJP8mVCnoU4hSqtt5CAzddGrrbx3tuD8jhO/9Dl44V+
         t3kNXDpw4u6MaEsPn8D7ZpTyU8l/aobnMvMlrD9OAmyqAitYSPxo6V6Cz0ywrKM1bIDn
         jxdNFuCDKK0AaPqky3V632rcgZ6TmcwMtJ4P0HfHz7I2gcWjtag/v8HU8HZSK6ELN6TV
         TUjQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5314Y+LG+dnwZbBfTjb5g8xQVljY+YFEmO3YTQKQlcyqOgrIfGFr
	Zi1dWMcSOKfQCfwD7xN3HBk=
X-Google-Smtp-Source: ABdhPJz/rTC/q7Wjw6L3jY7DIaBqP992iDkcMZbWX9txhn37FiGqDoD4xUX1A16yh/CN1ftudXxbUw==
X-Received: by 2002:a25:be4a:: with SMTP id d10mr3500403ybm.184.1595552307058;
        Thu, 23 Jul 2020 17:58:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:23d1:: with SMTP id j200ls7044ybj.5.gmail; Thu, 23 Jul
 2020 17:58:26 -0700 (PDT)
X-Received: by 2002:a25:af0d:: with SMTP id a13mr11363692ybh.163.1595552306693;
        Thu, 23 Jul 2020 17:58:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595552306; cv=none;
        d=google.com; s=arc-20160816;
        b=YGfA+tHMPFr6F+D4micd9guQfG7feizm/hHfH5bIrqzUzWwIAFlUB6Ws1cdMl2ffOC
         3hpg96f2xr5G6niJVo0Y8AF1vamTevAK9/zpxp5nIwpvxTWy4BOotuoe8czwb52Y36xd
         PLrlRto24d6F1nvTOOt76Mbr5estY+L/UfQr2nvdNOJwNleZ87+RtPxSU/xIUiIqOnPu
         8b6A5/QZnlckx7HsMFvcAyhlpJunDASo4VodPrbq1zck+6NqzDUJwrxGXQ8D4Z0lA61S
         sOQImrluiVclbVn7/gCrEeIt4N5SZdtPm7ofRA53stS0gN7dZy6Fy/G76JDbLOdCdqNh
         NhoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=/hwv8aeqxQFc770ydGll5SHnDNU+mIuRLVZfjHpDppo=;
        b=qlTDx4iiwQ65kzwNsNabkucYnWcthygnQMQr2cRo19VYyMvdUpeugPYitpW/h3bp81
         1RNn8aSrr/4vbEGnXa1aBJzwOCW4pdM/BQuafockLDGrGYQCz7AeUXUHe1TPhPMkukYK
         Gdimse9ln0bMB7FDUGJuMMPyLYe/4uaYGGB4mOOOr8Jx0RcNVY7bN4F66YdmaRzpv7TF
         u6MNO91QPme5X/IpzOEwywLr0BVDCpob2iiIZmqcQD1BqwT2/gdTXW3fjTIUY8kn6dLr
         hWV7yI1nJC6ipx5tFBmv9PsZ0oHbfd790Fobhdo9qjNxfh49qJFsgzGYgxp3k/GUQU0O
         s+bQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bsZog7S2;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d44 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd44.google.com (mail-io1-xd44.google.com. [2607:f8b0:4864:20::d44])
        by gmr-mx.google.com with ESMTPS id l126si317736ybf.4.2020.07.23.17.58.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Jul 2020 17:58:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d44 as permitted sender) client-ip=2607:f8b0:4864:20::d44;
Received: by mail-io1-xd44.google.com with SMTP id z6so8252817iow.6
        for <clang-built-linux@googlegroups.com>; Thu, 23 Jul 2020 17:58:26 -0700 (PDT)
X-Received: by 2002:a02:a909:: with SMTP id n9mr7893683jam.70.1595552306254;
 Thu, 23 Jul 2020 17:58:26 -0700 (PDT)
MIME-Version: 1.0
References: <20200723205811.1104520-1-ndesaulniers@google.com>
In-Reply-To: <20200723205811.1104520-1-ndesaulniers@google.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Fri, 24 Jul 2020 02:58:15 +0200
Message-ID: <CA+icZUX0jMSmE1ruCKxEyMN2-qWgPLcGHmUJ8XUz3XD6G6CT2w@mail.gmail.com>
Subject: Re: [PATCH 0/2] tracepoint bugfix and cleanup
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Steven Rostedt <rostedt@goodmis.org>, Ingo Molnar <mingo@redhat.com>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, linux-kernel@vger.kernel.org, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=bsZog7S2;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d44
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Thu, Jul 23, 2020 at 10:58 PM 'Nick Desaulniers' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
>
> The first patch fixes a reported bug in iterating the
> tracing/printk_formats sysfs node, and is tagged for stable.
>
> The second patch is a small cleanup and is less important than the
> first.
>
> Nick Desaulniers (2):
>   tracepoint: mark __tracepoint_string's __used
>   tracepoint: used attribute definitions from compiler_attributes.h
>

Forgot to CC CBL-ML on...?

2/2 tracepoint: used attribute definitions from compiler_attributes.h

I didn't see it in my inbox.

- Sedat -

>  include/linux/tracepoint.h | 11 +++++------
>  1 file changed, 5 insertions(+), 6 deletions(-)
>
> --
> 2.28.0.rc0.105.gf9edc3c819-goog
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200723205811.1104520-1-ndesaulniers%40google.com.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUX0jMSmE1ruCKxEyMN2-qWgPLcGHmUJ8XUz3XD6G6CT2w%40mail.gmail.com.
