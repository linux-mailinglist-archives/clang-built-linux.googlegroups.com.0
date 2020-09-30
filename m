Return-Path: <clang-built-linux+bncBC7OBJGL2MHBB2ED2T5QKGQEIQM6IYA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3d.google.com (mail-yb1-xb3d.google.com [IPv6:2607:f8b0:4864:20::b3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 8178027F4D9
	for <lists+clang-built-linux@lfdr.de>; Thu,  1 Oct 2020 00:08:41 +0200 (CEST)
Received: by mail-yb1-xb3d.google.com with SMTP id r9sf3136056ybd.20
        for <lists+clang-built-linux@lfdr.de>; Wed, 30 Sep 2020 15:08:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601503720; cv=pass;
        d=google.com; s=arc-20160816;
        b=0Za05emFIdnO98DfccfQLTXxwYqcWDWcR55p8jKhM6JFETkLveKGY5TJ7e2qjorv4p
         uUEnIaus8Dvr0dGmaXvVRg4XfdklOvL7SyrW/7O6urfxAfAF3mb0VuR7exlc3T4grp7A
         MCsn2CKyp8NTjNXi25QzLWK4moPrSwGnigggiM3LCZifqZ0edyf4xoQzDamLcQLb47+F
         6RaAlJOFBxU9o4fGJjqeQCNIZ6hWw62cnuGXXjeuVj6f1gWuSTM46jUq2bzCTYWYBFh2
         LHlFjWLqCvExV7kWgCy7e5dLcrPnfanAHonsAexf7QnXNanTYnanNPQrfXaXPaz8Frgy
         cWZg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=8w8SO5LXPeIG7jT+ePAcJYkMzqmCTjNxe/cN8U4LRAM=;
        b=ykpf7VeryvoTRjtg8kiNAovvvbbnq1oaiIsGUUyA+iYyyVlUZalbGuf2dfJy1s7NnA
         WXqt7+0IAaW+giqJat9DipqSYRJzSxurf8uRx/7k56NZsLffdhgknzPrCRLg2IB19hIX
         QB5wpy7Qz1WrR2a2NXYA4+YXgWyyu2brxHeTuLgR/1xZnXig4ohaZpTpdCkaGqMsXscM
         QPY8UdV/8HZDVc4Y7WTOM/3GVok84NN753JUJTAJZ/2NKF9O/f6QiSp3d8Du8Jr5bEcQ
         Ox2MhDcZClH9iy56spHEo/mxolagPfpUoySc9U5B2Y7jrrbPkz2DfxVrhCxosTXBCtdk
         FEZA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="uHj/P8pq";
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::230 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8w8SO5LXPeIG7jT+ePAcJYkMzqmCTjNxe/cN8U4LRAM=;
        b=A8cdjNPc/WFPz9j5BFm36llodObziTmgvJrn8uNMOm9MUvUazVFKSIraLEvOAUSQ7r
         BsWXtbhQDDqt3CxQZaafzITXlw83aBHbA3BRP3A8PzZVNR5llkvsGS3cXcGgOLLcs+mz
         zD+hB0NPm6CxrkvZOmIGs5Pc11ES1hG55meX+CJnE173Cn+YQNmc1+ZmmzgjNs4WjRX0
         G8Qbg6wb2Qz9+xQzdRdObvzxL35xGzW66QnXceEPizxu8y6ZUnJU+cFRUwkk6G7rWX5C
         PSUESCxJiag0Pfdp5AoOuhRZp7vTGFbcx6X7GGkal4LOQYE7KdKmBzYvpJRS/s2prIND
         FaGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8w8SO5LXPeIG7jT+ePAcJYkMzqmCTjNxe/cN8U4LRAM=;
        b=gwRiqwZe3W6jS43urvO9xkMwjO6PE0YwJN1HE+TIdzkn4UuIVfeeXClBn6AqL/Uxme
         SohIz/Lvz4AbcULTzAYjyIGjiRGP55tr1yGiKzU7SYOttvTOQ2uSoC7HGBHcAHay8ZHu
         CO5YrWe/qQQEEzZ+mALP9p8M88fQajOU3r1OtMo4Pb0/GU4aaZTdvHijTQeSjWXNrg5V
         bKmz9XFEnivOl0O4vjDygeWvBHdgSjKUEvNNEdMvqFDaN5zNGQiFR7BsMzmiVjDLN8li
         iIxgu2edBxxINDeP8PY31n9MNVSfMalTCQ7qCJaoR+K4whJwPTUQKj3CHqWuceOeGLTG
         vgMA==
X-Gm-Message-State: AOAM532TwchS9DdXYODLzC3OiasY2kyPSNqGr9htX9pTUcUxxFllEUc5
	zBWdN7rUYEpLJqD8/nD84ZQ=
X-Google-Smtp-Source: ABdhPJz3ZsiHZ7EsYrR6sh3WfPiNs5lKDURJylyr9u+bwgH+S9DMJShr0uIK9XfwCTc21Ksq7QV6RA==
X-Received: by 2002:a25:6e87:: with SMTP id j129mr5628158ybc.424.1601503720383;
        Wed, 30 Sep 2020 15:08:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6902:511:: with SMTP id x17ls1579785ybs.11.gmail; Wed,
 30 Sep 2020 15:08:39 -0700 (PDT)
X-Received: by 2002:a25:44b:: with SMTP id 72mr4088235ybe.406.1601503719868;
        Wed, 30 Sep 2020 15:08:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601503719; cv=none;
        d=google.com; s=arc-20160816;
        b=P7QR4NFjHlgdQsMsKPIZo6nG/2HYJJ89c8/HyZpdh89ei3Db0ks14/eNFwsra7p2N8
         6QnvGMdontnu9In+OIz02fVjUv7bMorEZGV7L5fnIcP/vvMIr2Edp7t1fEKohIBDwWjS
         E2a1mElZn4Ow1Ru3YSfK01fNpCLnTTIbOQXV310ZgOHB4Fo1YkET6GE3OVNjLks2uvZx
         +Q9okX5QLHQAMCwGyGZ+KxvuUJjpQ+PCQX9JSn+ny6+6tsL0QNGUGhlS65evtVWfkQCl
         hrCFyBsdD958n5RgjeIRAJUBO7fDJskPCtyiJpq+/k6FEHYwT1EWet0iRUVehng5Qtkq
         QIcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ZFURCNvPU9H4YHkX8QM4xSgvVH28qIZGRs1NjSVSyfE=;
        b=f/N4HPUXJdrpUPy1qY+P3j3RVqq9pjW933E6waTbWAwhAuRNrklLa1wc3pDUS1qdWb
         1GtaZ0Sebey/t4wi8DTWdCOgtgERgOjgkn0XTGHdzRtCzB7YjReczNSitlG3e8hWoetz
         T4rZYDy0dlqjQ2NChl36y/Zj7pF9/cUbCVFx2lP/X8c6qfYI86eOSaSK/pR5V7/WJXyo
         Ete8uK4wkKmST+esTBZgSJBLEKh1zjctOABFR0sDKIBSlTKqNrcY26VqDIXt8581SUD0
         NZUDdwrcYCRxuMjU3uvClBAmBnFW53/66Lq555nqHNXVQr+XxjfgRJvp9/HaqSXKIqUc
         jceQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="uHj/P8pq";
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::230 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-oi1-x230.google.com (mail-oi1-x230.google.com. [2607:f8b0:4864:20::230])
        by gmr-mx.google.com with ESMTPS id e17si252440ybp.1.2020.09.30.15.08.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Sep 2020 15:08:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::230 as permitted sender) client-ip=2607:f8b0:4864:20::230;
Received: by mail-oi1-x230.google.com with SMTP id x69so3435650oia.8
        for <clang-built-linux@googlegroups.com>; Wed, 30 Sep 2020 15:08:39 -0700 (PDT)
X-Received: by 2002:aca:3d07:: with SMTP id k7mr2611883oia.172.1601503719171;
 Wed, 30 Sep 2020 15:08:39 -0700 (PDT)
MIME-Version: 1.0
References: <20200930153642.GA319225@elver.google.com> <CAKwvOd=0FV_VoSD8j4xP_k5esOtQ7KQHOq1cFFAkXYM0UQ2-ww@mail.gmail.com>
In-Reply-To: <CAKwvOd=0FV_VoSD8j4xP_k5esOtQ7KQHOq1cFFAkXYM0UQ2-ww@mail.gmail.com>
From: "'Marco Elver' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 1 Oct 2020 00:08:27 +0200
Message-ID: <CANpmjNOvDR-rCn=1Q7Sj-cOuXORTwZj0Ceg2cAH3XpH2EicBhg@mail.gmail.com>
Subject: Re: Clang 12 possible memory corruption
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Alexander Potapenko <glider@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: elver@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="uHj/P8pq";       spf=pass
 (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::230 as
 permitted sender) smtp.mailfrom=elver@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Marco Elver <elver@google.com>
Reply-To: Marco Elver <elver@google.com>
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

On Wed, 30 Sep 2020 at 23:03, Nick Desaulniers <ndesaulniers@google.com> wrote:
>
> On Wed, Sep 30, 2020 at 8:36 AM Marco Elver <elver@google.com> wrote:
> >
> > Hi folks,
> >
> > I would like to escalate
> > https://github.com/ClangBuiltLinux/linux/issues/1125 (if the problem is
>
> Thanks for filing a bug in our issue tracker! Bonus points.
>
> It sounds like you're running a bisection? Please let us know how it
> goes and we'll help get it resolved.

Looks like this is in Clang 11 RC as well. I commented on the Github
issue. Looks like:

# first bad commit: [4b0aa5724feaa89a9538dcab97e018110b0e4bc3] Change
the INLINEASM_BR MachineInstr to be a non-terminating instruction.

Thanks,
-- Marco

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANpmjNOvDR-rCn%3D1Q7Sj-cOuXORTwZj0Ceg2cAH3XpH2EicBhg%40mail.gmail.com.
