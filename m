Return-Path: <clang-built-linux+bncBCTYRDEG7MGBBS4DQ7WAKGQEMKW5ZUI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x437.google.com (mail-pf1-x437.google.com [IPv6:2607:f8b0:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 4821CB5AF1
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Sep 2019 07:34:05 +0200 (CEST)
Received: by mail-pf1-x437.google.com with SMTP id s139sf4060876pfc.21
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Sep 2019 22:34:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568784844; cv=pass;
        d=google.com; s=arc-20160816;
        b=uRUT8Dnua4LTmCar0dfEuvjNBy6WsE96wAKav6IGVZcRpTV+GaCy64g5y7M12nQJzd
         ibE/J+raRbu2EuJ7OjDaqwFMpYYzyqUt7ldnpZ655Kv/C8k1cqodxpv/ndzEcItWll3c
         OSGNPobFBP9rT9hrIO1Dh/CeAsJ5qSfkK4K/KHHeZk0B65RJyAlGbAqgdX9JYZkbP+IH
         YVNVHmyN7XwDDeqSGzufERTvRsc0xUdZMzsUtTdGfybsuZJrdQYHjVAsf82ubTpImp4q
         WOfkRf0C/Sx0naazuod0dGXJyWumkZPboIZN3sEBs1e+GcKl1Naw1F3r5Vjd49B4fK6p
         mC6A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=CRW7Ykli8CggMT/Qrr1kF+kyPZaDYHuVRiBQpScf4hc=;
        b=zMTfUPjv2EeJfHLDGqgfOj9jNQqZDctwYENwotccLUryYCVAUcL2pVDdWFGgYw9MFG
         HZwaMERjs7C08r2g9NJApjSnFC9eugiPBmvdvb0TxGgGIgxDI8u0/AiHmWy+gMdXrINK
         z8sKyuxNuQmweyPpLl9JW51eo5NTQWEfvCXU+OFsOfHXjCDPGIFh4OM285DWKxerMNG8
         J9PtH0eBdbRIB8sdCAR2l6JmZRzsZf7OcFDthyuQ9tq9zT7k30mnRa5vyRmSWYf+Fyp5
         sEmrUYnqfQLDbJY4ypvsv7vHQ1dpHj+od3LXZHqmNPi1yaxHEORMX62dOQVC25+U6Eq8
         Hc1A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=B7CIqFuM;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CRW7Ykli8CggMT/Qrr1kF+kyPZaDYHuVRiBQpScf4hc=;
        b=U73Wl1aQf8W3LwDrsfysRAvxcKnn6T/BRT63242gnG1iXiwymrAKZEXFtI4CxqGYJV
         aZxjVCNZKHhqJP6Sk4iDgL/7De2BnaSFv43RYqraO9C7Td5rf9J5vs4EpuSNyzz3wqnu
         8xkpdGMQe80D9QvktiG9CAkgIUBS0fwOvW/FBeY6WMyflz2DsxQYtnnONPAdKmbsXyc2
         QvAdoE6XLNKzozNUIhYUEeiclkvmQWfc4UK+pfaZGfUSbt+cg3G8sLGc26XHuxcisZ0B
         yGvHCohnfrcjqtkUDKtZxTG0IRXKhR8UaAkZwFIufcoPNljUfO7Y0+l9hV58MsCHrCH9
         6isQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CRW7Ykli8CggMT/Qrr1kF+kyPZaDYHuVRiBQpScf4hc=;
        b=U51Upgd/29U543fe/HlqbfKqo2P4SIvmiCl/WDVkrcJT8gQsFvyWTtyXYJpqT9QcW/
         Spuxhenlk6jkhHCCwX3Kf8faB6DBBCBouAZzcDFr9lqBP7UR0SQb8uIib7vieVGJLsHQ
         fnsKBQCovqRPn1eAfJWnBC6gEEGkB5fsRSH7PzIW96pB9RdPaJ5tNlbig8jwQZCip5qj
         qfddQ0c1ZpvKi77+QIGgLtrOVFF3pxTSfL+qsVNtvhZxJg9zBFmkIvkqt6Mfk9HdPdr5
         7A1ZA3uzGRlTohrEo7b4GBhUL+TiP40BXIMF6+f4ZTn/bF4iaX3r796o10V2kRMiUtVK
         Tw3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CRW7Ykli8CggMT/Qrr1kF+kyPZaDYHuVRiBQpScf4hc=;
        b=JZjVYyZm3mw1eIgENhRKveTvr7qOSWQE04NJtG0mDE1WdEojuQWYtt8bzZPzHL9Us0
         iWX54aOchtKvGTqAYyKTtr2ZDY9/0yIBsOeuxISlSSD/Wzi7m8Q1cyGCJ4cOJgaSPN1Z
         FdGJRPDyq8jrPgxcnihnjuYXD4HS1GqiVtBbs/ax2clg2FV1iweyLqqxRHYRE1k8V8ex
         z76DL2hrNObenxKhRLb3hefiY0PWFyso2IyBeY6MYeNXxWdVWgIJVWAZvQpnFc6S0WDs
         mqYHekEzCyZaHeimjKpNADAZdIfYQ7rwB0l6aPCDedcZzhTF37J9y0cwW7MnjlQA3Mv/
         rhUw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAW614dK4j4mbkt4F3u5l1NvLKyOoBV7zVUzY/T4kfwzLVaj3gx9
	914dAASDoIHGKXY0Lr3iBMI=
X-Google-Smtp-Source: APXvYqw1NzWfTzBMQPL07+J7GJ0XQG3V76Lm3DqS6tCxpITvLKbHzvoMW8/HcK34k3JDIn+u1WtLFQ==
X-Received: by 2002:a63:c05:: with SMTP id b5mr2278011pgl.415.1568784843898;
        Tue, 17 Sep 2019 22:34:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:a516:: with SMTP id s22ls1516910plq.16.gmail; Tue,
 17 Sep 2019 22:34:03 -0700 (PDT)
X-Received: by 2002:a17:90a:356d:: with SMTP id q100mr1909903pjb.53.1568784843498;
        Tue, 17 Sep 2019 22:34:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568784843; cv=none;
        d=google.com; s=arc-20160816;
        b=d2+mf5aIB0XgcDX66/viWVcKI6P/4PT6SmH3foPVl0cqJxw7AGMPMTTzlgiZbG+cRH
         1XEyt6snOMPo+AKLYL7wlcSqfG/qkYxnW0qLQNiy9b3iFsbRuB4x5RUMBaEY1cQAbLHd
         lI5AR/y6Xnd1bAX/f172LhywedIG8X77uBeh5WdFTZLFs8Zdxkpq/R61UwA0xtVpEA14
         svY8+gN6qHitGK10ygp/tTHsac85rYAvBoFP/4Lt839n32X016FBSgiSUPRBMEw0z7KZ
         OIFVWlu3IzSmNtQMQ62/vuTKzWK4w/gfuB0IV6TI6D3GMNyBuWfrtZpYUQLF+Ik/08ty
         j3wg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=P2KTni67QeY65KHrP8GaDvnakNrehjhBO4czvpB338c=;
        b=M9SJEdmjWcfat2y1qcZ9XfR5YWSvotmtQXGRgJmCzWegvEylpPysLTOXSb87cJX1rY
         cnBIyr14llURyTmXCIWlaOeEkvLi+kNw82BqRVQoVtY+CiXpOBLeBvRXiOhvGumtkz4a
         a1HJNRMsKclMolttoplIeIOg5FsinAFzQy9rX3scparcmvQ+UGhpx4Sq8mgzqf1pzvC+
         bIYXcbL0RQX+8R3qHiVggqCVVF/zousGSWBAPVLryi4x/KsLQ/Dw9F/T2Vir+b+5hU0q
         gxR2SlkYj/tqHEf0LdSKXOE9T5kGcoAEeL1z/YJq+ZoUTdm9caXtERReln5k3NHjPznO
         pQQA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=B7CIqFuM;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x742.google.com (mail-qk1-x742.google.com. [2607:f8b0:4864:20::742])
        by gmr-mx.google.com with ESMTPS id 91si558282plf.0.2019.09.17.22.34.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Sep 2019 22:34:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) client-ip=2607:f8b0:4864:20::742;
Received: by mail-qk1-x742.google.com with SMTP id i78so6681177qke.11
        for <clang-built-linux@googlegroups.com>; Tue, 17 Sep 2019 22:34:03 -0700 (PDT)
X-Received: by 2002:a37:4e55:: with SMTP id c82mr2257626qkb.437.1568784842596;
 Tue, 17 Sep 2019 22:34:02 -0700 (PDT)
MIME-Version: 1.0
References: <20190916105433.11404-1-ivan.khoronzhuk@linaro.org>
In-Reply-To: <20190916105433.11404-1-ivan.khoronzhuk@linaro.org>
From: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Date: Tue, 17 Sep 2019 22:33:51 -0700
Message-ID: <CAEf4BzbdAuns7RKfPTbc2+WQF=vz4FMaZWQ0JjE1u_CsGACHxg@mail.gmail.com>
Subject: Re: [PATCH v3 bpf-next 00/14] samples: bpf: improve/fix cross-compilation
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
 header.i=@gmail.com header.s=20161025 header.b=B7CIqFuM;       spf=pass
 (google.com: domain of andrii.nakryiko@gmail.com designates
 2607:f8b0:4864:20::742 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
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

On Mon, Sep 16, 2019 at 4:02 AM Ivan Khoronzhuk
<ivan.khoronzhuk@linaro.org> wrote:
>

Thanks for these changes, they look good overall. It would be great if
someone else could test and validate that cross-compilation works not
just in your environment and generated binaries successfully run on
target machines, though...

[...]


>
> Ivan Khoronzhuk (14):
>   samples: bpf: makefile: fix HDR_PROBE "echo"
>   samples: bpf: makefile: fix cookie_uid_helper_example obj build
>   samples: bpf: makefile: use --target from cross-compile
>   samples: bpf: use own EXTRA_CFLAGS for clang commands
>   samples: bpf: makefile: use __LINUX_ARM_ARCH__ selector for arm
>   samples: bpf: makefile: drop unnecessarily inclusion for bpf_load
>   samples: bpf: add makefile.target for separate CC target build
>   samples: bpf: makefile: base target programs rules on Makefile.target
>   samples: bpf: makefile: use own flags but not host when cross compile
>   samples: bpf: makefile: use target CC environment for HDR_PROBE
>   libbpf: makefile: add C/CXX/LDFLAGS to libbpf.so and test_libpf
>     targets
>   samples: bpf: makefile: provide C/CXX/LD flags to libbpf
>   samples: bpf: makefile: add sysroot support
>   samples: bpf: README: add preparation steps and sysroot info
>

Prefixes like "samples: bpf: makefile: " are very verbose without
adding much value. We've been converging to essentially this set of
prefixes:

- "libbpf:" for libbpf changes
- "bpftool:" for bpftool changes
- "selftests/bpf:" for bpf selftests
- "samples/bpf:" for bpf samples

There is no need to prefix with "makefile: " either. Please update
your patch subjects in the next version. Thanks!

>  samples/bpf/Makefile        | 179 +++++++++++++++++++++---------------
>  samples/bpf/Makefile.target |  75 +++++++++++++++
>  samples/bpf/README.rst      |  41 ++++++++-
>  tools/lib/bpf/Makefile      |  11 ++-
>  4 files changed, 225 insertions(+), 81 deletions(-)
>  create mode 100644 samples/bpf/Makefile.target
>
> --
> 2.17.1
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAEf4BzbdAuns7RKfPTbc2%2BWQF%3Dvz4FMaZWQ0JjE1u_CsGACHxg%40mail.gmail.com.
