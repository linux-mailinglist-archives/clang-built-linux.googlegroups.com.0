Return-Path: <clang-built-linux+bncBCTYRDEG7MGBBNHI77VQKGQE3SNXVNQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43a.google.com (mail-wr1-x43a.google.com [IPv6:2a00:1450:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FF3DB421C
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Sep 2019 22:44:36 +0200 (CEST)
Received: by mail-wr1-x43a.google.com with SMTP id n18sf421733wro.11
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Sep 2019 13:44:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568666676; cv=pass;
        d=google.com; s=arc-20160816;
        b=qL1d/siqS3NlIpX3TjkijFW++ENI0cTr511Gnlnql9EUe+oIYVUcqwK1V5YjzlleAr
         RtMJpNL2g2W8gRQ5DRzRAZrrKyXG/Gr7f57vm+7jzQXfin9Q16jdQGakOqS+uzStQsFw
         lppppgvsn7oSpcnTyHOeDmNuKGN6o1xervBlTDoG306oXN93vgk7JBRoTYmaZmlYBRyp
         9TzjfKW95no6LJNa8XrGXcVKCVf+6dLcuRuJW0WPjNtGVaYYwiza49TG29mEd5y0Uymb
         GQHSYonk4Ec6qq1pN3ZsOcqWj2FgsYY2sL9lLAzz0JBy2KPV4vjUOs5xu1S106+AIFtv
         DmAA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=6PPQ65guJqBZom2cvIDhte1TKzrVRj4chyHsbIfLtMc=;
        b=thFl/PhuVTeTqsm5NZkCU1H+Smf0i3bs2KzFWff8MvpB0WppRCB1rrO3ttmqIN8b/6
         PFBzhmQyfwsqEQYk1kPdci5bdcqufozY8DpvteEyfKRnLN1oiG5duPiKCqJZ973WO/Dl
         9mIdrJJlcyka8Z9vZXM/Ga1kXsLAyP+UgWmEL0+hPgMB4DP1jpddUHjGVUrxb8ki8AGq
         HS+5+o5octWi3KmQ+rc8yCDAOHUfGvNn/g893qA79MEICE0AS4kuaMsawzTheOTDbsEX
         NeppUMql4Ue8fE4T9yUpAmhKc4+8YbN1TsB+JtikRfG9cYWjgSln6M+x/fIJmaRB4N77
         h4Tg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WxF5VH3D;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6PPQ65guJqBZom2cvIDhte1TKzrVRj4chyHsbIfLtMc=;
        b=bSIOdxuG3vFJeGYRkbsxsYaRPW2l4pOj7d3n0sLp0XQ9s1YWNxZZ8rZwwKOutphbuD
         rB0HQaW2lziRA8mA4zuYpvBMeZrZuui/mwixEV9qykBZSGm+j8W4NrmA+r4LRw2Ovamv
         NM3PJMbVEDQHiS8cpiu3Kq934M4eY+BmqTys0cnqia5fQW9TnirRi7srqIaaq7NoQX24
         XHvpLbI+W42ba45j/BScNpY8Q+LxnhS5hs2cEzAGVsUnN4G/6D+E4GHNHpPZAdI4UmmH
         CqvlRWF2vLeIC6ejPaQ1gbXfwkV1sD2qarz4HBSdq423eZehC6PbPuPkwYn2otjzRLi5
         5euw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6PPQ65guJqBZom2cvIDhte1TKzrVRj4chyHsbIfLtMc=;
        b=S30rSOmOkj/FSY5jIaJyd8NGmaaZ+tBgX2vdKUvzJBzZ2WhpN5pBC3qwAnIQ9u+S0D
         J9cs02YtDOeW2OpxtG+GY7Yl5F0VUM/4ioAwRt0PaKz0q23W6WO7XJUqDn2jFeAiDzQ3
         DeHWfTw/0BtByg6/MAA01CoiEMQvPgedMW4Kr61otnhnCYqo6Kj4N0lW/rjS7zYk3dcg
         E2HJeu2kDVBAYvagRvv4gOoRr1HpjmfLY/FoR+qO6XRweRjGlgm/DSkpQLz1FGoMmz4J
         M20UW9dEMtCY1uB/hX11ZLv00uI9PuFjKFh5jvTmt5OO/TqfKYa11QpsYseDtqC7xWJg
         g9wQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6PPQ65guJqBZom2cvIDhte1TKzrVRj4chyHsbIfLtMc=;
        b=fi0qrlkRqZ9mmtXoIvUm5xJ0nsupCbtL03CdD2ffmWtdE3/rC5QaXeUAhFXRj6UD3K
         XCUqqCGohrO1y3j0+Ovj2D2RyRiU2fZQ+3yTe3eQBN4TTdcevKdnC0v7AbyFlVzPkyK0
         AmwoYP5NBOYnIdS/9qI6o4IlEzuWMNcTXQf2Dzc9qfWvwVyubaVOJqQerO2cILIRgOXC
         Qpand4ARlXfEslF2nDNSAp5o1V8/khtk4l6nEQmH/Nue2ynzlO1EReWEewHiDTwgeF5/
         EgvR/FKNGEKUv7NBOM6afeO6l7ErpzMthGfaADsku4YPU44djFlYAJvBBASXxl6gCoDG
         j/cQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWRIKMsSYl/Fh+CS5YIG9pX8+5te25zN5ghZmDjULCQCFcBhLr7
	AlpAVm6f9o5JFkxswXLAc9E=
X-Google-Smtp-Source: APXvYqzkBrIkgt/0J6toeyZSq/z7bJx1ns5bGIdWBHhb+zZ0S2n3InyvJQX40m6zDDZWScKiRwaeDQ==
X-Received: by 2002:a05:6000:188:: with SMTP id p8mr195805wrx.220.1568666676194;
        Mon, 16 Sep 2019 13:44:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:c5d4:: with SMTP id n20ls219441wmk.4.canary-gmail; Mon,
 16 Sep 2019 13:44:35 -0700 (PDT)
X-Received: by 2002:a7b:c412:: with SMTP id k18mr670358wmi.149.1568666675697;
        Mon, 16 Sep 2019 13:44:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568666675; cv=none;
        d=google.com; s=arc-20160816;
        b=BkBoTns2fZlpXrE4sMOqewM6/WSSN0piRG8Pr9rGLOM4gG6ayN3yOQLp7F4L1by6Zz
         cjnqI3VG9p8rHPG9I5FhjUHggSAmN2/FDPZ444trBP92JKxJmE49L+b2nJHkolkdj6lB
         B1TMRKAnf23NNwbwp6/PNRT5gASQwime4mARsiBDdi2ixYALBHDBhaXFLX17OsGxsN/N
         o2Mw1Otp9YD+vFqMJfnscpXYeaOGgYNMV5Q7STKQFlfxWyqTfePOARP60Apsg+BK70+J
         3rkwdZHrqvRuhvz8cyUQcTUvlJvjxYAE9RYuN+eYyqp0qy7qs95vbmkeFWu0lYDZOqlS
         NX3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=fNQ0/77F+AwzFz6t9T1s7MhdfhD+EKvJmwBiN2PsM0A=;
        b=MmRkTpocuqYw6YFiwKgDu/VIQ5een9coHG7kALZDqjLtx1j+1PRd2sK6/Sx6OYD4Rb
         qDizNJWPo4G1zTQiynwmjnueAhZz+5V1WXAJ4+W02c7UihaGc+lfX39KQZ0TKoUqFrCJ
         QTmRmz5ZwN4eGzUPCn1hWee+rE1ikhpo1JZynG0Ody8NPu9WqQk5RF8rGS2aOJkG6wQz
         rncc7hrGRghBlyyPkDXTr9lK0b+ANE7/WQFrcxULInIJQ0p1yiGlUBPVxfse5GfNO/+p
         0/nJJACJTFoJnXWXOccvcYXwfndZMkzMFsymzhtjjLOTX5Zk+O+KCXCLd+dwzVU+p8lw
         Nsog==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WxF5VH3D;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qt1-x844.google.com (mail-qt1-x844.google.com. [2607:f8b0:4864:20::844])
        by gmr-mx.google.com with ESMTPS id j4si77061wro.5.2019.09.16.13.44.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Sep 2019 13:44:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) client-ip=2607:f8b0:4864:20::844;
Received: by mail-qt1-x844.google.com with SMTP id j31so1586502qta.5
        for <clang-built-linux@googlegroups.com>; Mon, 16 Sep 2019 13:44:35 -0700 (PDT)
X-Received: by 2002:a05:6214:114a:: with SMTP id b10mr201853qvt.150.1568666674518;
 Mon, 16 Sep 2019 13:44:34 -0700 (PDT)
MIME-Version: 1.0
References: <20190916105433.11404-1-ivan.khoronzhuk@linaro.org> <20190916105433.11404-6-ivan.khoronzhuk@linaro.org>
In-Reply-To: <20190916105433.11404-6-ivan.khoronzhuk@linaro.org>
From: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Date: Mon, 16 Sep 2019 13:44:23 -0700
Message-ID: <CAEf4BzYpCGHxNG-jOjwx5a2NXbvLW4gZH8GD2p7E27v9K3ookg@mail.gmail.com>
Subject: Re: [PATCH v3 bpf-next 05/14] samples: bpf: makefile: use
 __LINUX_ARM_ARCH__ selector for arm
To: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
Cc: Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, Yonghong Song <yhs@fb.com>, 
	"David S. Miller" <davem@davemloft.net>, Jakub Kicinski <jakub.kicinski@netronome.com>, 
	Jesper Dangaard Brouer <hawk@kernel.org>, john fastabend <john.fastabend@gmail.com>, 
	open list <linux-kernel@vger.kernel.org>, Networking <netdev@vger.kernel.org>, 
	bpf <bpf@vger.kernel.org>, clang-built-linux@googlegroups.com, 
	sergei.shtylyov@cogentembedded.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: andrii.nakryiko@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=WxF5VH3D;       spf=pass
 (google.com: domain of andrii.nakryiko@gmail.com designates
 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
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

On Mon, Sep 16, 2019 at 3:59 AM Ivan Khoronzhuk
<ivan.khoronzhuk@linaro.org> wrote:
>
> For arm, -D__LINUX_ARM_ARCH__=X is min version used as instruction
> set selector and is absolutely required while parsing some parts of
> headers. It's present in KBUILD_CFLAGS but not in autoconf.h, so let's
> retrieve it from and add to programs cflags. In another case errors
> like "SMP is not supported" for armv7 and bunch of other errors are
> issued resulting to incorrect final object.
> ---
>  samples/bpf/Makefile | 10 ++++++++++
>  1 file changed, 10 insertions(+)
>
> diff --git a/samples/bpf/Makefile b/samples/bpf/Makefile
> index 8ecc5d0c2d5b..d3c8db3df560 100644
> --- a/samples/bpf/Makefile
> +++ b/samples/bpf/Makefile
> @@ -185,6 +185,16 @@ HOSTLDLIBS_map_perf_test   += -lrt
>  HOSTLDLIBS_test_overhead       += -lrt
>  HOSTLDLIBS_xdpsock             += -pthread
>
> +ifeq ($(ARCH), arm)
> +# Strip all except -D__LINUX_ARM_ARCH__ option needed to handle linux
> +# headers when arm instruction set identification is requested.
> +ARM_ARCH_SELECTOR = $(shell echo "$(KBUILD_CFLAGS) " | \
> +                   sed 's/[[:blank:]]/\n/g' | sed '/^-D__LINUX_ARM_ARCH__/!d')

Does the following work exactly like that without shelling out (and
being arguably simpler)?

ARM_ARCH_SELECTOR = $(filter -D__LINUX_ARM_ARCH__%, $(KBUILD_CFLAGS))

> +
> +CLANG_EXTRA_CFLAGS := $(ARM_ARCH_SELECTOR)
> +KBUILD_HOSTCFLAGS := $(ARM_ARCH_SELECTOR)

Isn't this clearing out previous value of KBUILD_HOSTCFLAGS? Is that
intentional, or it was supposed to be += here?

> +endif
> +
>  # Allows pointing LLC/CLANG to a LLVM backend with bpf support, redefine on cmdline:
>  #  make samples/bpf/ LLC=~/git/llvm/build/bin/llc CLANG=~/git/llvm/build/bin/clang
>  LLC ?= llc
> --
> 2.17.1
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAEf4BzYpCGHxNG-jOjwx5a2NXbvLW4gZH8GD2p7E27v9K3ookg%40mail.gmail.com.
