Return-Path: <clang-built-linux+bncBCUY5FXDWACRBFOLYODQMGQESJ4IPLY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23c.google.com (mail-lj1-x23c.google.com [IPv6:2a00:1450:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A2E73CB08E
	for <lists+clang-built-linux@lfdr.de>; Fri, 16 Jul 2021 03:49:10 +0200 (CEST)
Received: by mail-lj1-x23c.google.com with SMTP id v10-20020a2ea60a0000b029017fd05dc0aasf4197371ljp.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 15 Jul 2021 18:49:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626400150; cv=pass;
        d=google.com; s=arc-20160816;
        b=FXpq18pJLL9hWWhmHXSV0c+0m+zKAAX5+O0r3B5YrIP7bBGe8fHx56mVSUyZeyw1Fc
         t3goVCdICSwjuLC6pCV0XRIblOAoWrb4KU998nJAHVK6Qm2Y2rgCzN7bu+ngAJ9Zh75q
         hLj+eSCF5zZbu3ADeS+1yV4XZg8+D6sDKC3KBtbPyJaSLtJ1Ppnk5KjxHKLCI6l6lZuC
         t3g3N0+glkZNPiQNQDaKUQO2UGA3z4Ni7VBHGjMr2LSsYhH7NIFxUfu0QLEhxzwJvirm
         7yJ/rp89U/nlxxKrbvaAJ/6mrRJEQTLnC23w7iX/ccOCYWC0GSKMu8x5dpHMh5VuYvu7
         KaFA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=TbUXEht+lzXAb1TXAEehO0qlvQvikfphroiWUJ6AvS8=;
        b=xoLNuWciiTpfYpF71QNY+kwDmIJl7Ior7y7xppgICGyKts3X2ipNqpN7+n35bKEnao
         adzMDt9/3Sj+zpl2wklivDSYRdEW36e+NKblOPdzspFArdCxEpVE24InB8XtFtveuG+l
         k8k9POXcGaKmkWnPooh3uWGAv8axaiedR/3Ov4iEOVTFO0vKSjf+VPsjXwin0aZ69Cx4
         +c3cUF7wdIC1kOFRuaEjVTXnjrBql8kkVpUR3w0F08/DXKNCZFB7U5zlTTW4ExgzSFoA
         MMvuGn3vyIjRQGNS7IExvPRJbMjAyXx47IwjkzxgrrqDqhvkJ/eeU/SO+hRaRFz/kQ+r
         s9KQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IjXqonnT;
       spf=pass (google.com: domain of alexei.starovoitov@gmail.com designates 2a00:1450:4864:20::22d as permitted sender) smtp.mailfrom=alexei.starovoitov@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TbUXEht+lzXAb1TXAEehO0qlvQvikfphroiWUJ6AvS8=;
        b=OJ64+oPS/k4iMehvVe9c3gxkQUWrrjIul02HcO0xkprgK5ZN61P+rob5aGkcFVEAAD
         QUwnoWJ1guj1nuW7YrokOYcQGNiawNgo3QpYTLfw7UIyXcaiWXklwECyMk+yWb/dJN9Z
         S0xE0RGAfkYUjGN47loJHVkTSOl/IU2P5v+THEIzYTnRbGraEB34nSTMxmyorJsDSkTv
         Zzr6wmX7519euFQlPW5hJ6ifFhkzLLCuAY5bYVU25v+W1R2eacVoHtjxj0305aEfEIY4
         pC4n267JzzRP5YMhMF2wA/7/0WY33LWK4TG2VELVdgvP+UeBERBi5xp4HWOdlbLE0QeH
         pvgg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TbUXEht+lzXAb1TXAEehO0qlvQvikfphroiWUJ6AvS8=;
        b=O4ms3XPI3Y6+M2T3PFJO2dH7MxDcrtqDRPa1bscGmbwaenM7bw2dEhPS/lFAe27ZuW
         w7EcRSeqGgYcUl3U8wwUdJpJwXfPwnY6wjCpaAIfVDoef8ho2pJrZ9G2uexo3j2bmMMX
         UHEsWaF4ga79AKWsQVZZET2YoO8PEzBL6bcImKrL38RhdXWz7+kRBw5MQxnhmursUes0
         tchbVnue0RDiuUZXiSPhN8wpVhRh2zHL/gMo8mr/n89ExW6JIhjbjwAQrllkrrUhEM4b
         sH2NXpEOdXNJ7nhVK9tGLp+pSyh2GRapkHecMajs7CbEuoYQQSZHuYJa3bSGAXhi4VGE
         CZyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TbUXEht+lzXAb1TXAEehO0qlvQvikfphroiWUJ6AvS8=;
        b=oBjsuU/2UkjmmaEATlBt1etrJubdojHMg/AnjpVED/AY8K8Z9EawQ50ocRYRqqlaVu
         uaLZYowQRpwvG+zO/wi7Zw3tLiCQJDB2pg1kY32UJhaJitf2wTFvBx/kEMqthG4LoE1X
         4KnxasFUQe5ro4KfponK30TwckZX1HDVymhgwNyEap25XFCWQTLfHKGbU5TGV1xiQdXY
         BfflaS1y75alD/BCJNdg2m4xzgcuki3zStRr+5JuWnp0gBJMmumPszP8TUPmgi9Y5WqI
         idoQFdPEFEsLoK6qoqEKiOGYp0F55QAb8lO0aiqDvrSqI7bRqZ7p6bq3CRv36Oj5RX1e
         /1zw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530rueyNxIF0zlOVQ+WMBNk++GeTKLlM3Y8WSeOHQZV2yWT0SstE
	dylZ24OGjyad2AdkJf/RSjc=
X-Google-Smtp-Source: ABdhPJzp4Kc7A+lsNJ6MObxhXG2oJG1zMUvo8uij13OeOkZtLMyIQFjosZZNSfBRxec2kr24Qgtbig==
X-Received: by 2002:a2e:8447:: with SMTP id u7mr6617783ljh.356.1626400149999;
        Thu, 15 Jul 2021 18:49:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:430b:: with SMTP id l11ls2058908lfh.1.gmail; Thu, 15 Jul
 2021 18:49:08 -0700 (PDT)
X-Received: by 2002:a19:fc03:: with SMTP id a3mr5721977lfi.327.1626400148914;
        Thu, 15 Jul 2021 18:49:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626400148; cv=none;
        d=google.com; s=arc-20160816;
        b=p13utZ66DtH8zGFs15aKjF231bXCnFy+r+l/ws+AYKiSWPQZxdPsJh78Ebd3fIYhjx
         RabNaWn4OQD4WtmKmmVpnYZKP+pzKcoHGb/gG6paV177/0MASVe2NDNaPc2uNAciw/PZ
         J53adPduj7xGvH9nv03gFHjpMT+Wwt1UYxsS6AZCyNgR/6JJz5IL7+oDSufRAeSD5U6p
         MaY+ESFwioWDGbK8zSh1Pa8sLkU0c5Hc0T+4c/Pi2B7YfRUEAENfmq9UyRzQX5b9tGm4
         zyLaq0ysvucuNXfePFDVARwEUBHqVEkPTwNB19JJjMno6qZWeY6EatRR+fRLP7WaMkPU
         pHig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ooSnDnaRR1y2Zt84zTUnLEoZAoDuRHyWJmkvYjQARyY=;
        b=wqoNJIHuERsAVmqXe92NKbeYR5x37yLeVAuy4Rw4ZkYQ1/wbbZ/c3Wg8ZjQEsHD9+W
         6vOn/C/dPvv2Au5MGcTA+5fjoVNUfs1NSv6r6oNeAVcmiZJK5O6kOs11MuLedIuuGDT3
         MXRgoBJAirTl43erK7xqdcrM9g+V/2h/Q5fU19X9bRHTMW+yJH8ZH4U/8QOW2/wo/muv
         rzag3fr6TOBnq6B2eB2onps1GIJfxqBt1xhR2zjRY7yp0t53ZtIcM+1dFdpqtUYGDyOu
         fCiq46jKet7lTFEz0p9iqRCporbpfJm1udz7J9jfFR6w7QYPyu1bZeJ9RnbkQUDrIphC
         Bw0g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IjXqonnT;
       spf=pass (google.com: domain of alexei.starovoitov@gmail.com designates 2a00:1450:4864:20::22d as permitted sender) smtp.mailfrom=alexei.starovoitov@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com. [2a00:1450:4864:20::22d])
        by gmr-mx.google.com with ESMTPS id i12si313458lfc.10.2021.07.15.18.49.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Jul 2021 18:49:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of alexei.starovoitov@gmail.com designates 2a00:1450:4864:20::22d as permitted sender) client-ip=2a00:1450:4864:20::22d;
Received: by mail-lj1-x22d.google.com with SMTP id e20so11785820ljn.8
        for <clang-built-linux@googlegroups.com>; Thu, 15 Jul 2021 18:49:08 -0700 (PDT)
X-Received: by 2002:a2e:a887:: with SMTP id m7mr2877598ljq.236.1626400148732;
 Thu, 15 Jul 2021 18:49:08 -0700 (PDT)
MIME-Version: 1.0
References: <royujjal@gmail.com> <20210712173723.1597-1-royujjal@gmail.com> <60ee2dc76ac1c_196e22088d@john-XPS-13-9370.notmuch>
In-Reply-To: <60ee2dc76ac1c_196e22088d@john-XPS-13-9370.notmuch>
From: Alexei Starovoitov <alexei.starovoitov@gmail.com>
Date: Thu, 15 Jul 2021 18:48:57 -0700
Message-ID: <CAADnVQJ=DoRDcVkaXmY3EmNdLoO7gq1mkJOn5G=00wKH8qUtZQ@mail.gmail.com>
Subject: Re: [PATCH v2 bpf-nxt] Documentation/bpf: Add heading and example for
 extensions in filter.rst
To: John Fastabend <john.fastabend@gmail.com>
Cc: "Roy, UjjaL" <royujjal@gmail.com>, Song Liu <song@kernel.org>, 
	Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, 
	Andrii Nakryiko <andrii@kernel.org>, Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>, 
	Yonghong Song <yhs@fb.com>, KP Singh <kpsingh@kernel.org>, 
	"David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>, Jonathan Corbet <corbet@lwn.net>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Nathan Chancellor <nathan@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Networking <netdev@vger.kernel.org>, 
	BPF <bpf@vger.kernel.org>, Linux Doc Mailing List <linux-doc@vger.kernel.org>, 
	open list <linux-kernel@vger.kernel.org>, 
	linux-riscv <linux-riscv@lists.infradead.org>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: alexei.starovoitov@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=IjXqonnT;       spf=pass
 (google.com: domain of alexei.starovoitov@gmail.com designates
 2a00:1450:4864:20::22d as permitted sender) smtp.mailfrom=alexei.starovoitov@gmail.com;
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

On Tue, Jul 13, 2021 at 5:20 PM John Fastabend <john.fastabend@gmail.com> wrote:
>
> Roy, UjjaL wrote:
> > [1] https://www.kernel.org/doc/html/latest/bpf/
> >
> > Add new heading for extensions to make it more readable. Also, add one
> > more example of filtering interface index for better understanding.
> >
> > Signed-off-by: Roy, UjjaL <royujjal@gmail.com>
> > Acked-by: Song Liu <songliubraving@fb.com>
>
> Looks OK to me. I thought the original was readable without the header, but
> if it helps someone seems easy enough to do.
>
> Acked-by: John Fastabend <john.fastabend@gmail.com>

I cannot figure out how to apply this patch, because I see:
Applying: Documentation/bpf: Add heading and example for extensions in
filter.rst
fatal: empty ident name (for <>) not allowed

Any idea?

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAADnVQJ%3DDoRDcVkaXmY3EmNdLoO7gq1mkJOn5G%3D00wKH8qUtZQ%40mail.gmail.com.
