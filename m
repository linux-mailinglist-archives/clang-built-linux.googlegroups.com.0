Return-Path: <clang-built-linux+bncBCUY5FXDWACRB7HMY2FQMGQEB4YK52Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13d.google.com (mail-il1-x13d.google.com [IPv6:2607:f8b0:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id 07A89436AE8
	for <lists+clang-built-linux@lfdr.de>; Thu, 21 Oct 2021 20:50:38 +0200 (CEST)
Received: by mail-il1-x13d.google.com with SMTP id r13-20020a92440d000000b002498d6b85c1sf939602ila.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 21 Oct 2021 11:50:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1634842236; cv=pass;
        d=google.com; s=arc-20160816;
        b=KsSzfIBsOi56AdJeZP3tSqXlOyUwXHvtwOLFKKfoSwAwaG4EhyISGMqg7HdYW0evWs
         iSw1khUQUKFEC2nQU5KTQwSxY8UudIhjxerwcQ6CbtrTydD1R3ecDFt9mXgLn4pEO09g
         MC9Fy5Ip+f4dVV4+SzlGb6DC1ik6d4Wxx9cLrqIxzFqDQu2M9aH9De7Ap0x0FYYqD0Ag
         aj8mzMqhDu6JxVtQi0ohkglesztI0ZVb5B+y5cj4DsRrcF+6xHG5N9/v+ykQrfjXWb+S
         kJ3udaZmrkIV+uzZaeyATeG15FDI+lS49Mn5BDJ4sCzNFQ9pizPA5FGoFVLPEZg2ZqQn
         jdbQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=H1cYAVfZvBKO4Jrzvc6+C1dlUP4wq58+sZFV7ezHvrg=;
        b=oKUrUrBcACha6rtr7TlwID/BmQZnV9vJSecHzV4O2oejcIegjCaxkYk0h2PSH6aFTS
         8uBbWs73MXLIueZMvPXG1jmeA8SD1aomEwK8CYel17wgWGZvUfeAMtbedhp29bM0Zct6
         0tk7ziYck2lTOeTLIvqhSjKtK51AobipS7YzplrNdtWHAloIunyzUWZLLWgElKTWstTO
         nRzDJ4f2jAjdpt3KmpKYrNBJNNF6oawhw8Qb9Oew7gjsi4ftYLjaHWZpEfWMVhoblt2K
         0kmEA2BrvR5aegdgCRqJGrw72L6Tr97m6qfwMGzTE5UWGLrEEx8TwmZwZSHUr/cJtJIi
         M+rg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=nhHAyQRv;
       spf=pass (google.com: domain of alexei.starovoitov@gmail.com designates 2607:f8b0:4864:20::62c as permitted sender) smtp.mailfrom=alexei.starovoitov@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=H1cYAVfZvBKO4Jrzvc6+C1dlUP4wq58+sZFV7ezHvrg=;
        b=Xc+h56ltRN78MS5l0KcYLhjB7sm5gffBeaoed05Pwg4bRXIWi81JR1poDMxTyMP2sS
         qIOnqhkbMy2atlITbPbokzN8YetAOXfhKA81V1ercVtkA6Asx6yQnh1X1BQSrW+i6LkP
         zd5JMzuZSVJlFeMb7UmEMvsej/Y5CiHlBNPvbfRfC9LCe+3dok0E+bL3Z/W1WlqGIY1q
         7RP+xaw0tUevKuoiKS1bYvB9e5+UtCTkHm1zuUbzTb7clJsvEBm/hztYs6CysIy8TOwP
         6ye7hhqggtTYGL4k1v6lUNg7qZpmfUSqOl71dGuO2FQv3+F2meXRcH6sTeE7YF6CbvAW
         Umog==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=H1cYAVfZvBKO4Jrzvc6+C1dlUP4wq58+sZFV7ezHvrg=;
        b=KSxR6RgfUtZAMDnHj2rH4qStmyQjZwhazh70p/q2x+gpw9ze5V0Yd/NtC+Um87SB+y
         l6FklUZYBbyYUSPOPSOeGFSAAsQtOkiMwW4zS41oQMKREGCCxsu7jYJjI74Bkej9iOd0
         ihcX585rLBeA9LwHG5xex9tAF1WH+jBXJdNNbmDViY9MdYDX/oydMKckbmqkuAy1HfaE
         BU3ElhwDr5bp1NSy+jc45ivVaqpTl4MGCoFOGdVFcj1LXVnEaisqsrln3t7lO53mb/9K
         QG/KxogGZayPKA6Ri5iIM6O6mT6c6c2RkVUp6Uuof2XWdlcs2dzXl2JdOqHAUGJqhJZO
         wrqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=H1cYAVfZvBKO4Jrzvc6+C1dlUP4wq58+sZFV7ezHvrg=;
        b=pe4GdOOQaFrrHJ3Ks+L2LaPX+5wnslg/pxedxiYWcn2ylvD1Mb1Tfw/s7cE6HyKJv8
         mpQ0bU1jsdrSGZdI93z5AsWbDmLmo6GRGR9nUfSPkfMtNMMxogVPBVf6BQiBypEg6H6n
         uTUScM5YTCrBf16T9rBVfkK/9abLtZxrziRRowvD3IQwDmHuxZ99BXIztuN5Dz+Zz5re
         xdH/Li+2dxpLqJ9/hXnhnMRQw2mxgtq0GlwZFJMLScuVF+8yE6JAV8KO6Q5E2t0TJZlb
         0NZb87v8mWsLwZlzJYJW07N62Ipr3wxAmfUeTdNTxOvZnerRMmAI4OlQAI7Gxhrw4Ow5
         zKsg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5337e19knrFlASJAgPAus4vlC3ekjYxxSApVwfd/iAQgQAzK5K0P
	YtFSbnkdNAx2SdmJ3Yuj0p8=
X-Google-Smtp-Source: ABdhPJx2jnl25teh0o/HelAnf8syp+xd+SDM3NmnT40JG5p9lxhXhQgup4N3GFPVJ61JpIHvkTaazg==
X-Received: by 2002:a5e:c204:: with SMTP id v4mr5228236iop.183.1634842236545;
        Thu, 21 Oct 2021 11:50:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:3b4a:: with SMTP id i10ls863941jaf.0.gmail; Thu, 21 Oct
 2021 11:50:36 -0700 (PDT)
X-Received: by 2002:a02:a409:: with SMTP id c9mr5181672jal.39.1634842236107;
        Thu, 21 Oct 2021 11:50:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634842236; cv=none;
        d=google.com; s=arc-20160816;
        b=RmyPzRo7zoZPEt7QahNnUpZknwrF+lt2TUW1mIhxbrp1anGbUzWqtDqnKpGno52iuH
         cuj0s7qVRy6r/eIEyD34TK3bPJj3S5kyE2Huktr7gCN9rs6OFVUhQJfpI5Ubik6umCBC
         4p7MZZn4hoNQ/zIQFGhjZI72LH92Q9YBPcJ6himCDj0hI6U3oj+sH2UWh6jSuMXbTis6
         BDA67JpEX3EAtEJrfvqxNwSIcwvBL5pmU2WqfUm6cdkPCpAsi8JaQqbfw5iKy1r4GFV5
         2fKzbAFbO/6y3qv9VbElyhr6JNQCszmO9cCy5BK94Z3/fg0NfHLOQipIYLdySkbvLAso
         f6tQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=WKYdNAdb6PyaWMwkCssp4dF025r/v851J5DQkxIhrbA=;
        b=NvbZqUoQ0vxBak2WF/xjYZ2HP9yHF2MYmHu9g7/EcG3YguoGuSIMgsu3am3dC6A08R
         OztXWEowqQYwFMcbnfDgQ5z++syKGXhtDTnczzjg4cEG0a1+eYBXBK5MW+ZXruCmi9HL
         VADz9glRypgvVJBYMZ/cgfkjhG9EoIPmXVKw2c/cBHkZfH4YH3bFVZ5FA0zdJL7Usjm/
         Lf4TZ8O13a3tA6sGHEjt9JUVHrGmdoPPHp043T9C4SPh2wlZeLQqIH4A2AxRw+LHhDOL
         unOa2IxJ/ZvSL3tT313JFJLOs64POFU8Idp1rfBi8vlMkl5FLpH7sXYE1kKCUiUgmiCP
         CUtw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=nhHAyQRv;
       spf=pass (google.com: domain of alexei.starovoitov@gmail.com designates 2607:f8b0:4864:20::62c as permitted sender) smtp.mailfrom=alexei.starovoitov@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pl1-x62c.google.com (mail-pl1-x62c.google.com. [2607:f8b0:4864:20::62c])
        by gmr-mx.google.com with ESMTPS id q12si506018ilo.1.2021.10.21.11.50.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Oct 2021 11:50:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of alexei.starovoitov@gmail.com designates 2607:f8b0:4864:20::62c as permitted sender) client-ip=2607:f8b0:4864:20::62c;
Received: by mail-pl1-x62c.google.com with SMTP id n11so1057240plf.4
        for <clang-built-linux@googlegroups.com>; Thu, 21 Oct 2021 11:50:36 -0700 (PDT)
X-Received: by 2002:a17:902:ea09:b0:13f:ac2:c5ae with SMTP id
 s9-20020a170902ea0900b0013f0ac2c5aemr6802426plg.3.1634842235777; Thu, 21 Oct
 2021 11:50:35 -0700 (PDT)
MIME-Version: 1.0
References: <20211019144655.3483197-1-maximmi@nvidia.com> <20211019144655.3483197-11-maximmi@nvidia.com>
 <20211021010605.osyvspqie63asgn4@ast-mbp.dhcp.thefacebook.com> <055556e9-8028-a399-a099-f141a63cfbb5@nvidia.com>
In-Reply-To: <055556e9-8028-a399-a099-f141a63cfbb5@nvidia.com>
From: Alexei Starovoitov <alexei.starovoitov@gmail.com>
Date: Thu, 21 Oct 2021 11:50:24 -0700
Message-ID: <CAADnVQLD00wz8jivthiZMz5=ZhvpfMKqQJF7WwswL5JaVBVf-w@mail.gmail.com>
Subject: Re: [PATCH bpf-next 10/10] bpf: Add sample for raw syncookie helpers
To: Maxim Mikityanskiy <maximmi@nvidia.com>
Cc: Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, 
	Andrii Nakryiko <andrii@kernel.org>, Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>, 
	Yonghong Song <yhs@fb.com>, John Fastabend <john.fastabend@gmail.com>, KP Singh <kpsingh@kernel.org>, 
	Eric Dumazet <edumazet@google.com>, "David S. Miller" <davem@davemloft.net>, 
	Jakub Kicinski <kuba@kernel.org>, Hideaki YOSHIFUJI <yoshfuji@linux-ipv6.org>, 
	David Ahern <dsahern@kernel.org>, Jesper Dangaard Brouer <hawk@kernel.org>, 
	Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Brendan Jackman <jackmanb@google.com>, Florent Revest <revest@chromium.org>, Joe Stringer <joe@cilium.io>, 
	Lorenz Bauer <lmb@cloudflare.com>, Tariq Toukan <tariqt@nvidia.com>, 
	Network Development <netdev@vger.kernel.org>, bpf <bpf@vger.kernel.org>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: alexei.starovoitov@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=nhHAyQRv;       spf=pass
 (google.com: domain of alexei.starovoitov@gmail.com designates
 2607:f8b0:4864:20::62c as permitted sender) smtp.mailfrom=alexei.starovoitov@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Thu, Oct 21, 2021 at 10:31 AM Maxim Mikityanskiy <maximmi@nvidia.com> wrote:
>
> On 2021-10-21 04:06, Alexei Starovoitov wrote:
> > On Tue, Oct 19, 2021 at 05:46:55PM +0300, Maxim Mikityanskiy wrote:
> >> This commit adds a sample for the new BPF helpers: bpf_ct_lookup_tcp,
> >> bpf_tcp_raw_gen_syncookie and bpf_tcp_raw_check_syncookie.
> >>
> >> samples/bpf/syncookie_kern.c is a BPF program that generates SYN cookies
> >> on allowed TCP ports and sends SYNACKs to clients, accelerating synproxy
> >> iptables module.
> >>
> >> samples/bpf/syncookie_user.c is a userspace control application that
> >> allows to configure the following options in runtime: list of allowed
> >> ports, MSS, window scale, TTL.
> >>
> >> samples/bpf/syncookie_test.sh is a script that demonstrates the setup of
> >> synproxy with XDP acceleration.
> >>
> >> Signed-off-by: Maxim Mikityanskiy <maximmi@nvidia.com>
> >> Reviewed-by: Tariq Toukan <tariqt@nvidia.com>
> >> ---
> >>   samples/bpf/.gitignore        |   1 +
> >>   samples/bpf/Makefile          |   3 +
> >>   samples/bpf/syncookie_kern.c  | 591 ++++++++++++++++++++++++++++++++++
> >>   samples/bpf/syncookie_test.sh |  55 ++++
> >>   samples/bpf/syncookie_user.c  | 388 ++++++++++++++++++++++
> >>   5 files changed, 1038 insertions(+)
> >>   create mode 100644 samples/bpf/syncookie_kern.c
> >>   create mode 100755 samples/bpf/syncookie_test.sh
> >>   create mode 100644 samples/bpf/syncookie_user.c
> >
> > Tests should be in selftests/bpf.
> > Samples are for samples only.
>
> It's not a test, please don't be confused by the name of
> syncookie_test.sh - it's more like a demo script.
>
> syncookie_user.c and syncookie_kern.c are 100% a sample, they show how
> to use the new helpers and are themselves a more or less
> feature-complete solution to protect from SYN flood. syncookie_test.sh
> should probably be named syncookie_demo.sh, it demonstrates how to bring
> pieces together.
>
> These files aren't aimed to be a unit test for the new helpers, their
> purpose is to show the usage.

Please convert it to a selftest.
Sooner or later we will convert all samples/bpf into tests and delete that dir.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAADnVQLD00wz8jivthiZMz5%3DZhvpfMKqQJF7WwswL5JaVBVf-w%40mail.gmail.com.
