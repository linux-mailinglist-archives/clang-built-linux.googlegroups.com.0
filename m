Return-Path: <clang-built-linux+bncBDSMRV4B4MERBKESWX6QKGQE5U2ZP3I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43c.google.com (mail-pf1-x43c.google.com [IPv6:2607:f8b0:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 504162B07A9
	for <lists+clang-built-linux@lfdr.de>; Thu, 12 Nov 2020 15:39:38 +0100 (CET)
Received: by mail-pf1-x43c.google.com with SMTP id 64sf4088816pfg.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 12 Nov 2020 06:39:38 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605191977; cv=pass;
        d=google.com; s=arc-20160816;
        b=J0GwXtRCefidkbngu7KIgH2G8YE6T+CG7nhn5zRaUUHPCB4f6F5AMicsxUL4HgyQuz
         Cn79lkA4UXAKA2zchl2hRGbQflWhDTkJR9qsqM/rjIrnvZm+3sC1vA31XkJQbkBUcx9a
         4hYJAvGyJncVXvj6h8+wNSSMkouj3tH3RCQIrnJVtyK7Hb3vgag1Ar5IjdXHJ3jQ02+A
         /afb0BNQd/2KBdNGmYWvWqB6HZ6l6fZI55UsmiCYEVWlcVPtOM+CWUCT7DRBz6ykrW1x
         TJ/ywYxm9RI3RkQw7EniFwZsnpa7C2JgMoc2puom9ImNSNTyVrJlZec0IVfJujInDnPg
         QuQg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=QJqsy8keqkf5vCyP4RVAZUK1rPj73SJdKe5MK0K50rM=;
        b=u9r+znhRpsZZKt5u3VFGF4S3XBRS2iEh6dIgU4jgG+VcH0Akttp4FwVzjpiZgRru0k
         ZhNfBan/IY1bk/+2dx0MabFDS6GlGVhsrsSz3/Zpj8w0Ph5ljhISBTGPxUjReTE6txPU
         d4YINw4De9U8NqEPO1fKtgWq0GmUYcYCxETqGnrN3iFe5Gmi1TCpaF1Mz9y7GSppJayO
         /xKtQlClw8LqMDmuwDNK1e07lQc93CetVIMTyNCz/j355H9UBdrZSWqUvBt4Pivgw+M+
         djdswMKWrFRRcrTZNPK0JrbpE3tbYjKrvROSPh3PDZOZICyTq1U2riRExZsMeEm+RRby
         73Sw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pCgZktk5;
       spf=pass (google.com: domain of thesven73@gmail.com designates 2607:f8b0:4864:20::e30 as permitted sender) smtp.mailfrom=thesven73@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QJqsy8keqkf5vCyP4RVAZUK1rPj73SJdKe5MK0K50rM=;
        b=XgSA+fk8t8Rm8GfnhL5Uv8jma181427nYJIXpiT+2Sho7CRxUAA9gbhur1M6A8TgOv
         g9aReZA/7Z1J6XSjv5KMbFmhgzDn7pG0xPOk6R3oZw8NmN5Bgd42Y19fDeyLVijDaxil
         jUyiA7Rp0p/kp3CR6ea3HZzqhJyHv3FcLjB5TN6gQskZQhegn1u9iOnSnMeIHIqCyItG
         eHAIe/AEuwGor0ThokgVLcofxvm5sXj53k/gza3N+8JiOHVULmuL19hHtldpdr89sGWv
         WiqmRaM1PxChvsMBmLZL/xYu+HSCK/NVXTLSa5i1qrVcBPngp5iXgm0NRNw3VBLCgOyv
         cT9g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QJqsy8keqkf5vCyP4RVAZUK1rPj73SJdKe5MK0K50rM=;
        b=qLyqr7k8GhYYxmpzUi1Dd+rSNzqbusnVjg2DU8k7WTLxIHuCTJYqXnHfPk8pj0KROM
         FvmrA71Wkto9IsYSEdrTKBql+Hi6nzQIhRMh8gEEMmmjxM8H19jvjRu6COFWdOajTvMv
         SncomXhe6cyugi66ND3qZ3Raqv8eb4kf7uFQIHjIOFRfOte8Y6tcUjhro+03zwV668xq
         mNjgPo5DjW9Wbr64FHY9719lVZVKXk+R3lwh59MXvyWSF/PcTBMsjRENzO47RWcW3Vqc
         s2agxZH4P3uZzNnzcXDCZzprL9XYyg7TbFiK7S1vj5MZo6uo6oEbAEU5hDqGRwtQAv+E
         zD7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QJqsy8keqkf5vCyP4RVAZUK1rPj73SJdKe5MK0K50rM=;
        b=SpN+Kv0ng4MmAOe9q93y9o4ko7TuapupPwMendYvbJzxVPvAIZxxeiATz6qIszfsV7
         wgQDEVKE8DHnr4kWONZ6NFwuKCj9MXhnJqqxeO/mBQnjNudqodUGLRTDflJWzDnmuQud
         JGYAuUe6h60PrZreroGaDcir4aclRmOCmDTapvLeMAEE7R0JHnERGqQ8SEqiI3cBinpR
         pj5vE9HVHQX27+umOHuG/5MZG9pbCKQuhALVXyPpOHj5k/oakJ8yctiIfk7ou1pH51s4
         7tI3lS5dXGq0ThQvd/1WOhsNA3r7MuTx4eV7kuDmu6FKD6t5UKMtDfzybswrwpimaoNl
         5Www==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530cYyFqZfd6BR4J0hTKJJooV1gCZNqo00WW6OWWggoXUI39prBN
	P9NHe78xuhEkFSSFIGQi6Ps=
X-Google-Smtp-Source: ABdhPJy7LVzRdtCc7DvHMCfLdgSNLO5GQJEtqionVSq4lNvaDEk5BPt9yBpwnLhCPFdcx6qhx6zL5A==
X-Received: by 2002:a62:5253:0:b029:18a:b277:6be2 with SMTP id g80-20020a6252530000b029018ab2776be2mr28872963pfb.0.1605191976930;
        Thu, 12 Nov 2020 06:39:36 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:8055:: with SMTP id j82ls1098938pfd.5.gmail; Thu, 12 Nov
 2020 06:39:36 -0800 (PST)
X-Received: by 2002:a62:f909:0:b029:18b:588d:979e with SMTP id o9-20020a62f9090000b029018b588d979emr28393032pfh.48.1605191976290;
        Thu, 12 Nov 2020 06:39:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605191976; cv=none;
        d=google.com; s=arc-20160816;
        b=SBR3a//vg14ed/JIVUtxh+O+g6Xk3GlPn6ZW8jXNvo3qvrEU2jVGyDdazUZJfFVYdp
         J211FtHj0YedNRfxb2R9x59NHKTiTweS+e6NZ4f9nflqNKaNjavMzq3sVcfyELoBxkrI
         hj4fGaqmIr0oJn/lpgu02s//1SZ1f+ai+nfn5Aa6xQ2r5SrWhKS7q+Q+XoCzVfOhGUX7
         k4eq6hJELz+7XUTPaIQaO1o4zef4u0cCPbRp0gS8foeZziVMB8vrGc5fXVAtV0kc0mLN
         E2tnXzSKn73FvYFuhDg0YOVD9p6SCfxp0oielkjlG8E6OvGRhDoE532NydVLYWuhs5d7
         27/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=mTDghVFXxrn6iqL1HuFOpmQXicNPoS369BqdNgcYAm4=;
        b=EYqrvneyTz+tClxOYWmO+BJ3aBC14lG64DlyCS1V8rMQq1rq5Gk5sC03u9mkIzlG/q
         tL69MkH/+s2g9wlFXmxqXH8flR1kRPxMuSARQ3n+pfcMnOGVDv5ikEcD96SU8I85Arw9
         dR7sqw9poY3Qbqb3p31pgkSBDx+WB5Jf+tRLY8IOEU14sRdTSEVaOishbVDQTdiddnVJ
         /8lRAT7SZ1k+26WnNp/T/jTwXwunijjdTSkPDV22heQ+hxnBjd1zHeB83efUVQkqDnMp
         9Z7va5qIwK1zpr0d4FkMwTzL7ljpQN1Fz09SdnsivmoQVV0aJah0C0aTm837SnYSxtsP
         ietA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pCgZktk5;
       spf=pass (google.com: domain of thesven73@gmail.com designates 2607:f8b0:4864:20::e30 as permitted sender) smtp.mailfrom=thesven73@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-vs1-xe30.google.com (mail-vs1-xe30.google.com. [2607:f8b0:4864:20::e30])
        by gmr-mx.google.com with ESMTPS id i5si841219pjz.1.2020.11.12.06.39.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Nov 2020 06:39:36 -0800 (PST)
Received-SPF: pass (google.com: domain of thesven73@gmail.com designates 2607:f8b0:4864:20::e30 as permitted sender) client-ip=2607:f8b0:4864:20::e30;
Received: by mail-vs1-xe30.google.com with SMTP id y73so3344735vsc.5
        for <clang-built-linux@googlegroups.com>; Thu, 12 Nov 2020 06:39:36 -0800 (PST)
X-Received: by 2002:a67:b347:: with SMTP id b7mr19889958vsm.15.1605191975500;
 Thu, 12 Nov 2020 06:39:35 -0800 (PST)
MIME-Version: 1.0
References: <202011121142.Q0lZFTlD-lkp@intel.com>
In-Reply-To: <202011121142.Q0lZFTlD-lkp@intel.com>
From: Sven Van Asbroeck <thesven73@gmail.com>
Date: Thu, 12 Nov 2020 09:39:23 -0500
Message-ID: <CAGngYiXruNNFoOhgVp9iHeJtKSNqwzf=4Kmvd0OOQmbGD6S17A@mail.gmail.com>
Subject: Re: [netdev-net:master 13/24] drivers/net/ethernet/microchip/lan743x_main.c:1030:6:
 warning: variable 'phydev' is used uninitialized whenever 'if' condition is false
To: Jakub Kicinski <kuba@kernel.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com, 
	Andrew Lunn <andrew@lunn.ch>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: TheSven73@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=pCgZktk5;       spf=pass
 (google.com: domain of thesven73@gmail.com designates 2607:f8b0:4864:20::e30
 as permitted sender) smtp.mailfrom=thesven73@gmail.com;       dmarc=pass
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

This definitely is no false positive. I'll submit a fix to net soon.

On Wed, Nov 11, 2020 at 10:56 PM kernel test robot <lkp@intel.com> wrote:
>
> >> drivers/net/ethernet/microchip/lan743x_main.c:1030:6: warning: variable 'phydev' is used uninitialized whenever 'if' condition is false [-Wsometimes-uninitialized]

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAGngYiXruNNFoOhgVp9iHeJtKSNqwzf%3D4Kmvd0OOQmbGD6S17A%40mail.gmail.com.
