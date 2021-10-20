Return-Path: <clang-built-linux+bncBDNIR65Z3ENRBJXKYCFQMGQETBFSZOY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x237.google.com (mail-lj1-x237.google.com [IPv6:2a00:1450:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id 902C7434EFD
	for <lists+clang-built-linux@lfdr.de>; Wed, 20 Oct 2021 17:26:31 +0200 (CEST)
Received: by mail-lj1-x237.google.com with SMTP id o4-20020a2ebd84000000b00210ae894d18sf2019081ljq.13
        for <lists+clang-built-linux@lfdr.de>; Wed, 20 Oct 2021 08:26:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1634743591; cv=pass;
        d=google.com; s=arc-20160816;
        b=umlnYrGY/5CWsufKrKmjinhNzG/wbn6kBbVjSgMbqL7nkm0/qV3eQsQ1vQP0Fqnd9V
         9zeMICGybJ4+yhTPIdCYU/9Ab+PouXFMqUvIVqxkzNOjWUrnY0BPA9EZMJ5EE2IaRvQq
         EaC5eQcb1bSJHjXO6GKAk/TB5gR2h1CVPf5sCFIfLfcUIhd8Gtc90KM4hCCI7w/WafmO
         Fa9Uh/DQ5qCl9cOnV7tFZAzFroYatMH1M5YJbcfC9ka/KMwD3MGf016qf/mzeLlXD3t+
         6whFXuiNXLu8WQxE03LI16aPA2iQUdMR/DY9pfiAcw6VfSBgPhCPM9WDmNGGIWdHMHZV
         bW5Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=zlGVJnKMLk+l9IErp32V5rR3bESQBoTt+5WEysl/RX0=;
        b=oS8+o1V/4fuInvDbaVPDKC+xOdCNk1/QtlnHuxh+RMiLIaPXquIyJX2e6/2d42Mjc0
         HqAMk3G/cjR91zqJ+2HSiA71QbZcn43gy1w951bWzwwapXDkkdcBJML6Pe6TLD+bzsjc
         716cJEVpmP/RTMH8dSwp4oTYhmtP8BdjI2oE+t82lsVz69W/SnyMEK5zPrGNRtNQvNXK
         nIQstswnNXhdVwwWi9tFcdd3gTbgTZaN3svbDkBpfVMo2RFdllFUMt8ZdE3e95EX/+lX
         IF7WtU3jfX1XP2f/DFUAIftYCOe4hAZ+qmx8C1fqJXsU33yED8za/a+PXmsleRsKiOf2
         yQIA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@cloudflare.com header.s=google header.b=nNru3vSV;
       spf=pass (google.com: domain of lorenz@cloudflare.com designates 2a00:1450:4864:20::12d as permitted sender) smtp.mailfrom=lorenz@cloudflare.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=cloudflare.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zlGVJnKMLk+l9IErp32V5rR3bESQBoTt+5WEysl/RX0=;
        b=Avc9pi/5MvLv6aH8VDtAMJVq9WVzIGQlIqvYAzQFeB2DSh3rLNAe2MOx1dGqW5PnwW
         Qnip8p2/9pTdHonHYEG2S0RR63O6/tEixiLstZU8Du8leZtHM6t/Rg2obOlmy4V1/+qa
         nxfbxa05XuqwaCqrMMiOteWQj/+Q4dbB+MG6MyuHj8CxIcz5nvv9K9WfDhd6lLdsEBl8
         Z8aRDOyQSgeVdCfilsfAEmF2zM+Qhwgo68VcLJfWH9euxsoVuijEZ7LjZ4gUXP6qDDrL
         /0gvHkBHvtYkNBvERd+LQAmE23RIPaUASy25kef8J20Uu7mZkk23Qojsle2G6nEkGVjn
         58cQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zlGVJnKMLk+l9IErp32V5rR3bESQBoTt+5WEysl/RX0=;
        b=wdcPxWbPUWhdeAmfwYWNWaf9TTy5JdqLZjm7x2vj40PNrN1zsNvx8rgzfKXNn8tKud
         fZkkKi8aiCeDWvyBAODgEwQ+IGMomBxKUfbP8B64KZtbjMJkc0OgljYWOT4CFQTGFFgp
         OycprLKbkoXnimyGbtOPumFClHB18S1ykcNWHm87ryqp4MA+zEm76d4+dFvJLg6AqKgI
         d9PK1v8CoNJ2U1eb8DiXlf8+gbm5iXuimUVfUb0XlXDZ8FsN3iUrggLY5V9Yt+2YaIeO
         R/uwwJekNwI54Jryw4+KpzFCdeHjr1iKkbYc9jIr4J1Pu6i4RDaaLalLAfrzKxUi8RLT
         X1GQ==
X-Gm-Message-State: AOAM530sTRmN0L3EPkQFEEjVWc0VZGsGdQ4LOLTPpRh9MJK3JQENDD3P
	AQFH6XUHUJef0Hj6e/dj3tc=
X-Google-Smtp-Source: ABdhPJz0AxET/ohRMY894w0hALfL0OJhMzZMCXnFMOf8OE1STMsU4stEK8N16B3RvqQsp3YcogfjhQ==
X-Received: by 2002:a2e:bf1c:: with SMTP id c28mr92486ljr.150.1634743591030;
        Wed, 20 Oct 2021 08:26:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:b9c:: with SMTP id b28ls1747670lfv.3.gmail; Wed, 20
 Oct 2021 08:26:29 -0700 (PDT)
X-Received: by 2002:a19:f71a:: with SMTP id z26mr75745lfe.307.1634743589870;
        Wed, 20 Oct 2021 08:26:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634743589; cv=none;
        d=google.com; s=arc-20160816;
        b=HPHvRWrR1yI0n9Yc2io+WEfgmCxtTwObowdKlXL9coKJkUfkv2WyKhyFC79C5mQTiU
         AdiMixBKJp+gFKJly5HE/GRQCBsbwD55Z2iXlAZ9IV2K9XPY+/weg/VE0VYGv6BwVhpM
         WaYKo7y06pfLrzfAnonji88q0uUVmot6+j+7Lj9QVUX8qa1Ky0Fh3yJi/I1pmp4Pt2gM
         YW6t4Hik18/PHyUvQogc4hinb56jwcW90/8jvQdc/SpxzhxaOodfszdlGpYqTM9JO6/o
         QDgPMll5aXi/sCzBzY9gMvvLmiarfcdZMRQux7IgAXawTX2Wo31JR8LlNHARQBL4Ps4e
         gIZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=rFXjFBnxgfxDGLhFCTKSXBoyM9+OzYKaEZLzSUyNRo8=;
        b=n3Dufsv6XlFQZPJEkdUYn5KkGhExGCtlOP4i/uGVqVHyjE//rH1Mng9nDtDL8hKTDo
         QFuanQRU9fFgGHC7FaUQw/gLXxl2TP/jZhLNnb/YxiwPMH+ADYvW2R9kZESTbjPc4iET
         KhJa20u92Anl8K/JDdiJNXnQzSHwAIqmoRq+O5wXAQWU1xE6/fJAYc6zkesQbqTm/wZf
         ZNFAu48sZ+nnCcA4L5t0g/NJ5ofsgqUJ0L0xhIUk5CWRhCstH8h/viDh6kGA3qVmcWRG
         xnjOsq272E2e1HivYgOGhvyo+BFpnrFuyDMZe6+FL/U3kiJ/8MXS9wDQtDsNOWw7o3NN
         cYqg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@cloudflare.com header.s=google header.b=nNru3vSV;
       spf=pass (google.com: domain of lorenz@cloudflare.com designates 2a00:1450:4864:20::12d as permitted sender) smtp.mailfrom=lorenz@cloudflare.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=cloudflare.com
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com. [2a00:1450:4864:20::12d])
        by gmr-mx.google.com with ESMTPS id j28si142000lfh.13.2021.10.20.08.26.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Oct 2021 08:26:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of lorenz@cloudflare.com designates 2a00:1450:4864:20::12d as permitted sender) client-ip=2a00:1450:4864:20::12d;
Received: by mail-lf1-x12d.google.com with SMTP id j21so16000166lfe.0
        for <clang-built-linux@googlegroups.com>; Wed, 20 Oct 2021 08:26:29 -0700 (PDT)
X-Received: by 2002:ac2:5b05:: with SMTP id v5mr93678lfn.39.1634743589600;
 Wed, 20 Oct 2021 08:26:29 -0700 (PDT)
MIME-Version: 1.0
References: <20211019144655.3483197-1-maximmi@nvidia.com> <20211019144655.3483197-5-maximmi@nvidia.com>
 <616f8cd0a0c6c_340c7208ae@john-XPS-13-9370.notmuch> <73133203-ccb7-f538-7b02-3c4bd991e54d@nvidia.com>
In-Reply-To: <73133203-ccb7-f538-7b02-3c4bd991e54d@nvidia.com>
From: "'Lorenz Bauer' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 20 Oct 2021 16:26:18 +0100
Message-ID: <CACAyw99Yj=oQF__sgJxAxJ20cnRfUA1qjPmgEKS22nCm=8nP1A@mail.gmail.com>
Subject: Re: [PATCH bpf-next 04/10] bpf: Make errors of bpf_tcp_check_syncookie
 distinguishable
To: Maxim Mikityanskiy <maximmi@nvidia.com>
Cc: John Fastabend <john.fastabend@gmail.com>, Alexei Starovoitov <ast@kernel.org>, 
	Daniel Borkmann <daniel@iogearbox.net>, Andrii Nakryiko <andrii@kernel.org>, 
	Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>, Yonghong Song <yhs@fb.com>, 
	KP Singh <kpsingh@kernel.org>, Eric Dumazet <edumazet@google.com>, 
	"David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>, 
	Hideaki YOSHIFUJI <yoshfuji@linux-ipv6.org>, David Ahern <dsahern@kernel.org>, 
	Jesper Dangaard Brouer <hawk@kernel.org>, Nathan Chancellor <nathan@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Brendan Jackman <jackmanb@google.com>, 
	Florent Revest <revest@chromium.org>, Joe Stringer <joe@cilium.io>, Tariq Toukan <tariqt@nvidia.com>, 
	Networking <netdev@vger.kernel.org>, bpf <bpf@vger.kernel.org>, 
	clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: lmb@cloudflare.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@cloudflare.com header.s=google header.b=nNru3vSV;       spf=pass
 (google.com: domain of lorenz@cloudflare.com designates 2a00:1450:4864:20::12d
 as permitted sender) smtp.mailfrom=lorenz@cloudflare.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=cloudflare.com
X-Original-From: Lorenz Bauer <lmb@cloudflare.com>
Reply-To: Lorenz Bauer <lmb@cloudflare.com>
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

On Wed, 20 Oct 2021 at 14:16, Maxim Mikityanskiy <maximmi@nvidia.com> wrote:
>
> On 2021-10-20 06:28, John Fastabend wrote:
> > Maxim Mikityanskiy wrote:
> >> bpf_tcp_check_syncookie returns errors when SYN cookie generation is
> >> disabled (EINVAL) or when no cookies were recently generated (ENOENT).
> >> The same error codes are used for other kinds of errors: invalid
> >> parameters (EINVAL), invalid packet (EINVAL, ENOENT), bad cookie
> >> (ENOENT). Such an overlap makes it impossible for a BPF program to
> >> distinguish different cases that may require different handling.
> >
> > I'm not sure we can change these errors now. They are embedded in
> > the helper API. I think a BPF program could uncover the meaning
> > of the error anyways with some error path handling?
> >
> > Anyways even if we do change these most of us who run programs
> > on multiple kernel versions would not be able to rely on them
> > being one way or the other easily.
>
> The thing is, the error codes aren't really documented:
>
>   * 0 if *iph* and *th* are a valid SYN cookie ACK, or a negative
>   * error otherwise.

Yes, I kept this vague so that there is some wiggle room. FWIW your
proposed change would not break our BPF. Same for the examples
included in the kernel source itself. That is no guarantee of course.

Personally, I'm a bit on the fence regarding a backport of this.
Either this is a legitimate extension of the API and we don't
backport, or it's a bug (how?) and then we should backport.
-- 
Lorenz Bauer  |  Systems Engineer
6th Floor, County Hall/The Riverside Building, SE1 7PB, UK

www.cloudflare.com

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CACAyw99Yj%3DoQF__sgJxAxJ20cnRfUA1qjPmgEKS22nCm%3D8nP1A%40mail.gmail.com.
