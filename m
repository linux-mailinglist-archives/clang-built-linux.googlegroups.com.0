Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBYMLROAQMGQEIHUSHHQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x138.google.com (mail-il1-x138.google.com [IPv6:2607:f8b0:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4787F315504
	for <lists+clang-built-linux@lfdr.de>; Tue,  9 Feb 2021 18:26:58 +0100 (CET)
Received: by mail-il1-x138.google.com with SMTP id c16sf16042325ile.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 09 Feb 2021 09:26:58 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612891617; cv=pass;
        d=google.com; s=arc-20160816;
        b=hHDdx05RksDloZ6+7Ki0x82TdopzBE4ixsrwsheiqee4HedV3JbC9/ocgnrGt/RR/+
         dFk6+9WfxbQ3yPxnOmRU+u5ghPKl3LcE5tmzaDhR+HzvnwM5606XRuYvuCVL5xQ+Bm9h
         q4zByIXNJ8SrcqqMHqBAKdV6sCVI4adh6sSNhIseWNS/n6bDcxKlKx/QrslNj4CxhZfR
         jwbnp7pXt0JQOnj6xgihoDIe7Yd+qqOUBn2SdMVfKtq64IvTLW4C4KuSuaaPUhs4ccZY
         +B+Vv36vtBxu72olMwngZHV7LiJXkaCBFxrsaBGJv2YA4IXjeY4ANwBCcx3tWm9p0ayn
         NL9g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=SEq81CYUlH2q01Q7TzeSKLPYMxUIRQhYSQ6tbxB+5pY=;
        b=xEKrcvgb6oQH21xZHx/rZXl2/cd/IOKkTBFQvjliw/Idws6aU5gn4MwIjIbq9Hshd1
         BOImykZd6PpxFnpvnQdWRqjhrvZugE40tqe5bQ4J4Gj+hNdTGYowVqrVP3GyDN8OZ2Ua
         4t+KW2bvD/xQ9F3i7+HK0OUFINMtPGJfp87dWM4cqzelEBQ3IqpuBvBpX7nXC8XtKWae
         HyVSn28Z/Vf39ltsSL/hGYbhGaA2IGzt0M5Y9zy6vu+4b8Q5PiK3GdspldqvY8FUM9a1
         F/t9ai3CYVC0J6HSryX00P3dlA7m13aAGgbvFZ1PD13pyCxZwAKaRBJrFqhAoMR6TzE3
         DCuA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ftAMCLwO;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::130 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=SEq81CYUlH2q01Q7TzeSKLPYMxUIRQhYSQ6tbxB+5pY=;
        b=jYdPzpr/wk/QzXQyALRQTLFo46cddMmE7Nl454XG8pW8xImNdhAjILn5hiR2vKeoA0
         w5HYG8Rbw5g+RW03Y8UUO83bU/5RqLLhLcZT99DJ0PoaVOKcvBBnTVqIvyrclUkRutdo
         eotW5ZEJV/XZ27mxqhbAAqjV2dw7eAOK66/rG1SZjUvjVAZI5hPSAtE71UkVZidUo4HQ
         +Y3hMO05v2+bcTTYJNDcG+bbMYSjGlmPqoZrgJk5vUTtgm+az48Mg2UkJQah3VmYA6lg
         Ot9dXXJRFmnJDxjuGEbP9Bqj1TyZuEgNFF76ZfLPCTRL7GzQlPM8Ve44h+yN42lCbZak
         FAYA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SEq81CYUlH2q01Q7TzeSKLPYMxUIRQhYSQ6tbxB+5pY=;
        b=uC9uqoCsOoKDpH6z7QAE1eU0BxSF8swrtlpV6PdCT18a/B+spx6FG6PexMRghdgEHr
         4Yf61+Lo/IeJAQ7ETnExYc5nWu7FqusFPHuT38S13ZNNv+rGn/HyncknqDO1Oddmoh8m
         JH3jor6dS14W09+iftjek1Bnxy4lYDBIj0zM3VE/QXWzS8pc9nzXmG2kem7IbjrCmzgA
         XATjkU4HFaXZzfB7oNOf61Do5gyB0Lvv3Ji/1BDHEfddvusdVmXRSdYkvFkA2MqGEa5l
         1L2FPS7jnsRFLODJ9gG5iXL7nXSvUZFysng5e9V2Z0gsSKdV07ZKAlbX9DrCvyhB5xqf
         4N6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SEq81CYUlH2q01Q7TzeSKLPYMxUIRQhYSQ6tbxB+5pY=;
        b=fFyGiK9RCVFd+gr2zFNoyENmJ4z6cdXn+JHPuhK5PV4vPodmeXYL9jBHlN38QG7zAw
         6sxxVWk9MUNr6njdL0IaSV4og1xCDNBaYRPEfw/UOFQI3iH39CLoF0+n2TVpRE6s6vwl
         n26e/UlxIzAhA3+gZJJcqQ6w6hz1IXv1FdYdtGhrVfxllMLe/QY5e3kFji+VFoopQDv0
         XS1AKyDg7/dca393ekf2vLmz7hrHEVXkwyZSxjj+NvR3SQFs24n87DFLnIr4Jsm1Oogg
         P25uIz6y61ngt+qZBlXepcwp1T5Dgtgq+uglLD5zeqq3Kwi2+4hahDUQs0WJ3joo8Y3g
         UEdw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530oqiMizMliBrNVZYSlJh103U1y0x3umAwX/MrmqEXWs09vYItz
	YPVtFk216pWQoj7uPsXMMm0=
X-Google-Smtp-Source: ABdhPJxz+9lOoU14XFQC9ivF0f/IywqHhwvxRlXKgZAwo4P6S0GS+/mHzkSxs7cSIOilQDlXz1jdfA==
X-Received: by 2002:a05:6e02:12e3:: with SMTP id l3mr20956913iln.24.1612891617325;
        Tue, 09 Feb 2021 09:26:57 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:d81:: with SMTP id l1ls2664715jaj.2.gmail; Tue, 09
 Feb 2021 09:26:56 -0800 (PST)
X-Received: by 2002:a02:660b:: with SMTP id k11mr23621096jac.120.1612891616804;
        Tue, 09 Feb 2021 09:26:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612891616; cv=none;
        d=google.com; s=arc-20160816;
        b=ydK0GZ/6GoOI1ZMJ+/GtAZAeaMQeSp2nHZ6g646GVwuicLHhsK0PMfz09nYpk7ayJQ
         2q1/bttrwfNZsszBtZkeAxwkQJN9C4ZK+DPvlKM14U7IO/wVA313Sx1WFSYoiazJX1Js
         lCiUodNUKWn3XdPIoibsf5B7mKXztxF0dgfaey6Q5z2+5KlBhCl6Q/9fU0WBnbx1yx4Y
         +5gmGQgCTFDk4CrURBnApmZIniodihuOWN9I51UdiANJOoA3zkGw/G2p+O18awtyWT67
         jKmo2R1IcQpZ4Ae6VZ6LKarIF8dArOcOmpUOAk4VJsEq+Kv4PgY2T/X4CJEjq2XxvQu2
         XUXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=6PvAm3QwxGsDZsZoQTDksRmElDwRMDjBuqTV7b5B5Ok=;
        b=COSEpV2Mg1WbQpZ1tV5VtqZ5bw9SgLABmh4mLIl7L/wMhTg9/TzpgqYYGEJQazJkkO
         B3nsTEXvGvPiZ/GwlwGv5DXGB0tdtZ5RlmXuhu2XqHSG0wddaumgeeVJzIUBrYtylZDl
         DcL9U+2En5C0TbzN5sFy8ycS407e8IgNWH3+/+peH8EQWHnyylt2ZIo0oyljAbLivVQK
         iVo4gttURN2mCPUIuLpEAZPO1TlKk3j4vQ4IuHk++EyN0w3ppN10BSZ15Nyluxus2aGO
         SZEoUMVLFaNUdGK903RYJCE5/SbcQKnsku/5ZW4zv6OnMkNiHDvCkYa8waSQuDxT2jDy
         amRA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ftAMCLwO;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::130 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x130.google.com (mail-il1-x130.google.com. [2607:f8b0:4864:20::130])
        by gmr-mx.google.com with ESMTPS id f11si1252654iov.1.2021.02.09.09.26.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 Feb 2021 09:26:56 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::130 as permitted sender) client-ip=2607:f8b0:4864:20::130;
Received: by mail-il1-x130.google.com with SMTP id q9so16828146ilo.1
        for <clang-built-linux@googlegroups.com>; Tue, 09 Feb 2021 09:26:56 -0800 (PST)
X-Received: by 2002:a92:d8c5:: with SMTP id l5mr7983976ilo.209.1612891616488;
 Tue, 09 Feb 2021 09:26:56 -0800 (PST)
MIME-Version: 1.0
References: <20210209034416.GA1669105@ubuntu-m3-large-x86> <CAEf4BzYnT-eoKRL9_Pu_DEuqXVa+edN5F-s+k2RxBSzcsSTJ1g@mail.gmail.com>
 <20210209052311.GA125918@ubuntu-m3-large-x86> <CAEf4BzZV0-zx6YKUUKmecs=icnQNXJjTokdkSAoexm36za+wdA@mail.gmail.com>
 <CAEf4BzYvri7wzRnGH_qQbavXOx5TfBA0qx4nYVnn=YNGv+vNVw@mail.gmail.com>
 <CAEf4Bzax90hn_5axpnCpW+E6gVc1mtUgCXWqmxV0tJ4Ud7bsaA@mail.gmail.com>
 <20210209074904.GA286822@ubuntu-m3-large-x86> <YCKB1TF5wz93EIBK@krava>
 <YCKlrLkTQXc4Cyx7@krava> <YCKwxNDkS9rdr43W@krava> <20210209163514.GA1226277@ubuntu-m3-large-x86>
 <CA+icZUWcyFLrFmW=btSFx_-5c-cUAYXhcjR+Jdog0-qV-bis7w@mail.gmail.com> <CAKwvOdkQixhz1LiMrFx=+zf5o29UHaUrGTz=TPEsigtGakDXBA@mail.gmail.com>
In-Reply-To: <CAKwvOdkQixhz1LiMrFx=+zf5o29UHaUrGTz=TPEsigtGakDXBA@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Tue, 9 Feb 2021 18:26:45 +0100
Message-ID: <CA+icZUW1tyGK8tYnhhhODR4n6-8ozmqHyJ9V3HZGj0xEqV=7Fg@mail.gmail.com>
Subject: Re: FAILED unresolved symbol vfs_truncate on arm64 with LLVM
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Nathan Chancellor <nathan@kernel.org>, Jiri Olsa <jolsa@redhat.com>, 
	Andrii Nakryiko <andrii.nakryiko@gmail.com>, Alexei Starovoitov <ast@kernel.org>, 
	Daniel Borkmann <daniel@iogearbox.net>, Andrii Nakryiko <andrii@kernel.org>, 
	Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>, Yonghong Song <yhs@fb.com>, 
	John Fastabend <john.fastabend@gmail.com>, KP Singh <kpsingh@kernel.org>, 
	Networking <netdev@vger.kernel.org>, bpf <bpf@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Veronika Kabatova <vkabatov@redhat.com>, Jiri Olsa <jolsa@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=ftAMCLwO;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::130
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

On Tue, Feb 9, 2021 at 6:12 PM Nick Desaulniers <ndesaulniers@google.com> wrote:
>
> On Tue, Feb 9, 2021 at 9:07 AM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> >
> > We should ask linux-kbuild/Masahiro to have an option to OVERRIDE:
> > When scripts/link-vmlinux.sh fails all generated files like vmlinux get removed.
> > For further debugging they should be kept.
>
> I find it annoying, too.  But I usually just comment out the body of
> cleanup() in scripts/link-vmlinux.sh.
>

That's fine with me.

- Sedat -

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUW1tyGK8tYnhhhODR4n6-8ozmqHyJ9V3HZGj0xEqV%3D7Fg%40mail.gmail.com.
