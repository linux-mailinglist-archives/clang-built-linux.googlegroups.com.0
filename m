Return-Path: <clang-built-linux+bncBCTYRDEG7MGBBW66QXWAKGQEANDQK5A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43d.google.com (mail-pf1-x43d.google.com [IPv6:2607:f8b0:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id D5051B58B8
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Sep 2019 01:42:20 +0200 (CEST)
Received: by mail-pf1-x43d.google.com with SMTP id w16sf3554479pfj.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Sep 2019 16:42:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568763739; cv=pass;
        d=google.com; s=arc-20160816;
        b=XzvkGzh9LlJS9983MhsqLD77DUBlz2czjqvpjMTX8JEp0qF8NQPQkQRIhDUi6RwDda
         q0BbChNhoCxvdefwc+Txv3xU3WoYOiKL/xTQZlzUnSXDEG/Q/r9xSYb+mMQZpuq3pjty
         Nm2Hqb8j+aYmkPbC55UASm2N7GPNHoPxH1wqgo9wz346RDaISpTk+YLxNFYRr2yWTS/b
         NWVOv8ceDfYN59Ne+agbv6wTDjbxsOjPh+EOnL+oUtBLzR5WxlYc6aosnNoNSMEJLm2+
         p/VF+uT/rskxt9qQj4VVMq6MA8uLmdYu4H/Z1tGkLsbYWgCwOpVJIyMfCCHJT4SUmTv4
         ZhgA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=3GORz+rLrKKOeMF3eaNp7ZVTVsvj4nS+VMsWKsWJLlo=;
        b=pi8ab6K5a5OxvaOoeGDkkJSCSWzAPaMPgHumnyRh45523aZI6kcNWEHlAWWNmYx2fB
         VYMUlv/wT1xNElAwcBwtQnghoJPgwJjrj9lORfThi/Voy8A+uvQZm8dob1tB3gZ56jbL
         vKXFHjc3JGwouAcBc0cLAraAinvhNI6hOTDkNYpy1PcBLrJMFdzXx5TkUnZFsw3hTBzU
         oP74pIr8IGqX7g3Q48puSQaAM3g349X22qq47K2WHUJp7o+NPeD+OWH0OCshImkK5Pl7
         3kl7FL75xOTavFA9CAcPxbGnqP97iXiwrjBWbMrWIxL6ipoedEFY923BiALTGYsAr9Vi
         JXXw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vMk1upZO;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3GORz+rLrKKOeMF3eaNp7ZVTVsvj4nS+VMsWKsWJLlo=;
        b=k6YYSO5jbO3Xag5G6+f9ZcAHYY29XEzY4QyCJEjik/ZsGPDIxiFhdnOGpPsIaBiwt6
         Q0Ko0umL6tB0ajKUL+Z4NtJ0XWHvI3iB2aWpfRvYnnsIYKGE9uO9Pn0RMtwA/aCsKtnG
         gYJ1w/nmr4l1dqfK3ZTNxueeQzQn8hYPY550izxME+SRqsItX10Ff7n2/UaC4BKp0aPA
         x8/r9JphxIH8kizSexYvrDWHC7IYS/qjPLaUfYhIH7DZBq7CTLBl1E0MIcpfYRrBGcb6
         TiDyujpyFKL9tK51u0voOvTc+roGBgpHxO8vJM4+otMZGO4nT2biXVH39u6WPyJFSSHh
         dBlA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3GORz+rLrKKOeMF3eaNp7ZVTVsvj4nS+VMsWKsWJLlo=;
        b=Ik652PLFDIrAbb9N4AOfncJ7vdrJJw8xeJKBKX1kEiGk9tnZbxf7CkXgSBVI/vUruO
         KNEU4LfnhUDMfCeVfYy5TmgijWtFyqEIH6Z5xYO9P2al0HVKNWR7vCcGD/d/KLj6a4Tn
         ofPPu8dnGBp6E3oQPU0qdFtG3Ae+PHqvesF6xTwmBB9b24VrHu7C91lpbKY2gk26dDJM
         kNVmYioBTJqDFxQ9UEi3o0GR62RTyAwY4JzgEOp2vxHTI/CHli1uI6VRZGAP1/O4QmmY
         iI7I4YNKCrYZCfypVh+9c5c5OF9uvBaGhSi0VjfY4jFbklGxdtD0ojqnrxuks4YDF5fM
         EtKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3GORz+rLrKKOeMF3eaNp7ZVTVsvj4nS+VMsWKsWJLlo=;
        b=qYqh5kFpHwT8hyXp73z61Ka2f6mBxJTLrAD5ShXTr8MRrRzIp68txhGF9O6/SJtGyA
         j+E4vgVYp/3GBAM2aSQwwG/8d5tbIqrPc8Fyja9lENB+q7mSGyv5ZEnnR8tWgj4QKaI3
         ge8OkciRlNIE7a1vtjIZY1CRNhheuWOq4OedeaSheV7o68kOSOu9GnZfZbaNU+WOwfKV
         p0JH24jFZrUCPbl6PYjrK1Qi5EjBNSC9LbReLCEAFbcxOrqukGcihfX1exo9h+KMcHuE
         W7gDj+Dr3JYa5jVCec/5l0GEXP3xIAJPXkDY3lJ9iPVZWrsb1hhP7/z9mOYdJEW+xcjf
         zwew==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUacQyiuhLVhlAu8jngCFyfiAMNxd6r2QogRrp1FVYGE/34ZQxo
	KXIPAHsqzIJ9l0k0xhYwM1w=
X-Google-Smtp-Source: APXvYqwaknD3nfYNzLOw1OhRvmqlOYqxzrfAxpfcMCcOJhW5OR/Lfl/RD6C1i7uUf4N1Y+CjBOl/EA==
X-Received: by 2002:a17:90a:8a14:: with SMTP id w20mr715188pjn.94.1568763739201;
        Tue, 17 Sep 2019 16:42:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:9786:: with SMTP id o6ls559862pfp.1.gmail; Tue, 17 Sep
 2019 16:42:18 -0700 (PDT)
X-Received: by 2002:a62:db42:: with SMTP id f63mr1029489pfg.225.1568763738822;
        Tue, 17 Sep 2019 16:42:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568763738; cv=none;
        d=google.com; s=arc-20160816;
        b=rjTr3VyfVJ8clIJhdfW4Fjc6M7vVOWUtLxvNHODUSQVGNXSW/2uTn5CVJkPnzc6SS4
         coZmceYsumLmzmqz4Ub/GABrCsZ3bgnRtm5vx5ireOIRKybI6+uurfJueML2z34uoCAN
         tyPBTdsVoa/eurStqvCiSOG2dIuOxTHdoDlVy0nSwo3mU7lGWoQ7VjREbZDV5wRiueaY
         S1fTU+zY6a9ReMmG4x1+QJkdPYYobLLH58wdpO8aSI5iCM0+vmLcM1X/irYYydynAi+Z
         s3hlg+G1iaDYDNo56kD6uQ13V6CrzxXqcFmIMqBGlAcu6TdCeWhnBFZmWP9KLm1FIiDG
         pVfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=BegyS4bOdhV/4W363nuBMo/MR31JnI7T3ixbji8LT0k=;
        b=OcMVOoCM9lU3qromMUL5B0JEMwQZfaKHMLLZw8Va5FLvrw9Djm+SCxuU5G/S5gBsPB
         6PRdDN9p4Eu8PH3BtBcpWM4rgxkAoVxl40KlZl7+ANsDW2u7KvTbrFi95cmKvaCwrj7T
         P2DIYYuSx/UtTHDAOFVcCl3E4T6j/5zNnssz6pcwZUXm7ScCv++EkwtArbwHY6qoWg+x
         UCX+oiAGIw5K7MCUK5fEg8AI9yZoASnG8IQn4s0QTA0TUZ5ZYd06zBm/Vi05Oe48QJV4
         5RmpviSTxVu5TFaeNiE89zEolg49Jfb1YBolq6F27BVt6RiUH8FkX87/5ZCRX+fAAkKx
         zhuQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vMk1upZO;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qt1-x843.google.com (mail-qt1-x843.google.com. [2607:f8b0:4864:20::843])
        by gmr-mx.google.com with ESMTPS id 91si500896plf.0.2019.09.17.16.42.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Sep 2019 16:42:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) client-ip=2607:f8b0:4864:20::843;
Received: by mail-qt1-x843.google.com with SMTP id u22so6592780qtq.13
        for <clang-built-linux@googlegroups.com>; Tue, 17 Sep 2019 16:42:18 -0700 (PDT)
X-Received: by 2002:a0c:88f0:: with SMTP id 45mr1124543qvo.78.1568763737848;
 Tue, 17 Sep 2019 16:42:17 -0700 (PDT)
MIME-Version: 1.0
References: <20190916105433.11404-1-ivan.khoronzhuk@linaro.org> <20190916105433.11404-10-ivan.khoronzhuk@linaro.org>
In-Reply-To: <20190916105433.11404-10-ivan.khoronzhuk@linaro.org>
From: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Date: Tue, 17 Sep 2019 16:42:07 -0700
Message-ID: <CAEf4BzbuPnxAs0A=w60q0jTCy5pb2R-h0uEuT2tmvjsaj4DH4A@mail.gmail.com>
Subject: Re: [PATCH v3 bpf-next 09/14] samples: bpf: makefile: use own flags
 but not host when cross compile
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
 header.i=@gmail.com header.s=20161025 header.b=vMk1upZO;       spf=pass
 (google.com: domain of andrii.nakryiko@gmail.com designates
 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
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
> While compile natively, the hosts cflags and ldflags are equal to ones
> used from HOSTCFLAGS and HOSTLDFLAGS. When cross compiling it should
> have own, used for target arch. While verification, for arm, arm64 and
> x86_64 the following flags were used alsways:
>
> -Wall
> -O2
> -fomit-frame-pointer
> -Wmissing-prototypes
> -Wstrict-prototypes
>
> So, add them as they were verified and used before adding
> Makefile.target, but anyway limit it only for cross compile options as
> for host can be some configurations when another options can be used,
> So, for host arch samples left all as is, it allows to avoid potential
> option mistmatches for existent environments.
>
> Signed-off-by: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
> ---
>  samples/bpf/Makefile | 9 +++++++++
>  1 file changed, 9 insertions(+)
>
> diff --git a/samples/bpf/Makefile b/samples/bpf/Makefile
> index 1579cc16a1c2..b5c87a8b8b51 100644
> --- a/samples/bpf/Makefile
> +++ b/samples/bpf/Makefile
> @@ -178,8 +178,17 @@ CLANG_EXTRA_CFLAGS := $(ARM_ARCH_SELECTOR)
>  TPROGS_CFLAGS += $(ARM_ARCH_SELECTOR)
>  endif
>
> +ifdef CROSS_COMPILE
> +TPROGS_CFLAGS += -Wall
> +TPROGS_CFLAGS += -O2

Specifying one arg per line seems like overkill, put them in one line?

> +TPROGS_CFLAGS += -fomit-frame-pointer

Why this one?

> +TPROGS_CFLAGS += -Wmissing-prototypes
> +TPROGS_CFLAGS += -Wstrict-prototypes

Are these in some way special that we want them in cross-compile mode only?

All of those flags seem useful regardless of cross-compilation or not,
shouldn't they be common? I'm a bit lost about the intent here...

> +else
>  TPROGS_LDLIBS := $(KBUILD_HOSTLDLIBS)
>  TPROGS_CFLAGS += $(KBUILD_HOSTCFLAGS) $(HOST_EXTRACFLAGS)
> +endif
> +
>  TPROGS_CFLAGS += -I$(objtree)/usr/include
>  TPROGS_CFLAGS += -I$(srctree)/tools/lib/bpf/
>  TPROGS_CFLAGS += -I$(srctree)/tools/testing/selftests/bpf/
> --
> 2.17.1
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAEf4BzbuPnxAs0A%3Dw60q0jTCy5pb2R-h0uEuT2tmvjsaj4DH4A%40mail.gmail.com.
