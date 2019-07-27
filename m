Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBAH657UQKGQEDUFWPEQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43a.google.com (mail-wr1-x43a.google.com [IPv6:2a00:1450:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id ECDDB77777
	for <lists+clang-built-linux@lfdr.de>; Sat, 27 Jul 2019 09:36:32 +0200 (CEST)
Received: by mail-wr1-x43a.google.com with SMTP id b14sf26919350wrn.8
        for <lists+clang-built-linux@lfdr.de>; Sat, 27 Jul 2019 00:36:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564212992; cv=pass;
        d=google.com; s=arc-20160816;
        b=t72tmqJECiXv0Qq1Cwt+Un1/x0RC7x5n3PBraGymEUE2Av9IsqWBZ/X4MTq5YNxP0s
         gQVs04MJzwNVhywmSKdHftsFHty0Pbhla/P5l6bXnpvC8HbxKedin5rDqK1HpJEhhS/S
         llbfbkNoMgUsoa9vjSPArytt0KnxIs0BwMoZu7L+voUtnW4Bv7OP5e4dRAox2F9qZ8/v
         AXbqM6qil4mn9WcVzCtRzsbFqw6VDgEXFmdd46hfXMme3uAEB4ZxwL3ngumS9KyyoZm+
         ZbHSwTnqbe0vROnppMJ6Dwbbns2WoagA7Y4mjSqsaxmpuj4RRoZAgurWLWL+dX2xm+HS
         p5oA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=nXc9Y0ScBQdIJb+BNMhSje0lCgLnAVdTcBfuXfluPbE=;
        b=l4FSLE834sRns3Qcugw3EE+nhokixCOHA4s4FSnaXpm4FiFX4lYtK+qoPBlLVlh4Ct
         RQgPV/cn+FXSkJWxuktefjQYtZyS9/63uDEvLy82K79W5u9W9Sx9LyuesajIlWeARYS+
         WBLQQOI1+I4CIFVekGkkLnjAXqHBblU7+e1TVzv2ZwtF6N0lm6FEy8wOymI45QgR+03A
         VD+aNRnFcX+6dWIzADplT12wyp2L5UWuj5LSOG80x3BNCGGE/E+tBIw9Mnw9Mdu+b6IN
         +aK5AncBcNwgyPufYJeoihihswFgxQbjEcVuyPuZ7VesgC+GV5vW4cxqPgS3BrV4349j
         LXUg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fAWCaJ1i;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=nXc9Y0ScBQdIJb+BNMhSje0lCgLnAVdTcBfuXfluPbE=;
        b=HR6iUzqYkIh3IAiTcIhBMTwHcuihZsamvQ45TnibNPLIa3DOCrTFN5Q1iSE8jPMFgF
         cBjg0E3wkTklkh4QuW+LjwyfYxPhFnJYhvqNhZSLZpBlpooxn6+jvYfCvYvoEmxVRDyc
         2F5sMFUQzDlzlq7BCMGSF53WQ6spFS2SLS1ix38wDKIFZwjeYIrymtMLFl85/+UpRO3n
         w/NYlN3rcu+lVM0sp8vyM7g/UQN0nA3FIpK0c5VT1Q7+kqeMo1Yl+gvcq5Zju0i8gZOt
         CNSK+sIHNSHQXJJDSCdfMpEphBaluZG7x8sSNbEY2V9PH9CmHbKPzk7ajgWD3yhgBI1z
         4kpA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nXc9Y0ScBQdIJb+BNMhSje0lCgLnAVdTcBfuXfluPbE=;
        b=jqpDMIXg1jjpDhAgQGXGAPyb/7IzfcwEN8SNGaIX0MIn9lvu7Y7tC03wntuWzF3Hf0
         gRNS8YCX2xwdvFSqncIptXw3sglcvY41YjQBZPND3pJgJ+e1R7LyEekXHjYSUmyEnc/L
         9RxnAdr4iCXa/r05O8Bwf54TLkVr5apQz3x88vYCo9rgFHeFiRm+ezs4J7nOjeBX+UhN
         yTi0jZS0wyI5hd4KSoFIIhBeSRJyyHY3x9Bj9aqGjThgKuXdF+0Rq2KDTK7E2nhIRFzl
         rZLWiMRdJXq/B5C2aNBaRJeGHLckv6Bpe6ZrZ0sYHWjVAdha09UadyKkdPHnR3g9oJC2
         IkMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nXc9Y0ScBQdIJb+BNMhSje0lCgLnAVdTcBfuXfluPbE=;
        b=ivE0bNoiOckD5su7OnaNrE0o72Vg3T6Jo00LMGlKEQITmTKuACtRvAgSfNdqQ02hYo
         AFPtJMVEAkcKG18DjqEj+bzMYW4tWwx0ZlL+CpplSoE/tO8CsPim7v+NbiN+OYJBIcHZ
         Q01j/+Q4WEr5uxgKNbDvkB74Rv2FCAMNL/Hg6iSObrBI6Eyv53dWelOhe8FYpb86quZl
         GEig6bosezAFWqZLNvk+ITv3m58TZC4c/gciGJq3+gDMCT1pDHJNw67Aco8Z4xw20hCQ
         dl9QdqxPjEtkcI+8EmJV1iDClbKuxw/XuOQ+UVTVhInF8D6aE2QxY56iipW0bDjfeI/y
         E9cA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWo3v8JZfCoOaMc68s5xRrE5F/tt712O5RbgX4TLRpv+hKuYD6D
	vDsn2MN5vTc+ErMFJOHrV+c=
X-Google-Smtp-Source: APXvYqx0OilUSYgV9DZfnqtDCYVg+XB7xtMnh9jvOyND6wzKByXGLcj3JMvPco4TZQqUgWDM10pmKw==
X-Received: by 2002:a1c:cb01:: with SMTP id b1mr19797949wmg.69.1564212992673;
        Sat, 27 Jul 2019 00:36:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:f711:: with SMTP id v17ls14733767wmh.4.gmail; Sat, 27
 Jul 2019 00:36:32 -0700 (PDT)
X-Received: by 2002:a7b:c247:: with SMTP id b7mr92642556wmj.13.1564212992166;
        Sat, 27 Jul 2019 00:36:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564212992; cv=none;
        d=google.com; s=arc-20160816;
        b=hhALR8JVIwdi2OgSZbknutLvIUQwHKQ4O6mluJiGGCVOMVWWxEgmsopdgNc5V/Y/iP
         ma7uLJFWto+a1fr5AtKRueXgJD/sWsipEX0UhwQ/HIeY4a+S64p4KdJDa3SPq0vpBFmc
         RzJRBqFVoC6Eln9XZpNa2+KYP2yev/5Ywxqgfgwxm0gYU++u7+RF8R006nR0/5rhlFY3
         DGE6j0R+/wGJccUt0fck2mcdHf2RVHUuyw46lTN4biB+fpiOMsjkI7xChn1cEKGdH6fR
         VLXclFZnlq+1yddI3bY1Pct0555eWKxaeWaTyb5Ug+bxumW2fVKX7zmkNmteVljL2kGi
         L2TA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=76ws4qemCbK8PdXmvOPFqC7qosVhVH8+4Ya0bG6HZyU=;
        b=XzZg+GD9LdLrtXj71E30pQ/+8kq0LG3X43aeRjqEgQn9P/NbEe20mEWA10/gH4vxuv
         zSBSx/QRT/g2rCYQvcEyGRCenf/SUeq1vdgvO0nUilxpwAqfKHhmWw+43HeeuSSqoL9t
         zDwA9Go1uUxvZcEFt29/1A/G6cnCDtd9so5IpJi8gvfIIGIdLuxLlYzWT8zsRTFEb9Fk
         oBoWDwy47Yk1SD1Gd1KooRkLz19SMLpw9Tyfg++ZM+myvfKh36nVaERoPMzgm+dkqKnF
         mLpyl45KLIceQZtAURv3qWs/E1Y2B6VXNLfeN2lfYsqV1qcLQBV/rvwbd9m2V1+tvB+g
         mR2w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fAWCaJ1i;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com. [2a00:1450:4864:20::443])
        by gmr-mx.google.com with ESMTPS id e12si2692518wma.2.2019.07.27.00.36.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Sat, 27 Jul 2019 00:36:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) client-ip=2a00:1450:4864:20::443;
Received: by mail-wr1-x443.google.com with SMTP id p13so56539727wru.10
        for <clang-built-linux@googlegroups.com>; Sat, 27 Jul 2019 00:36:32 -0700 (PDT)
X-Received: by 2002:a5d:4101:: with SMTP id l1mr52631955wrp.202.1564212991777;
 Sat, 27 Jul 2019 00:36:31 -0700 (PDT)
MIME-Version: 1.0
References: <CA+icZUWF=B_phP8eGD3v2d9jSSK6Y-N65y-T6xewZnY91vc2_Q@mail.gmail.com>
 <c2524c96-d71c-d7db-22ec-12da905dc180@fb.com> <CA+icZUXYp=Jx+8aGrZmkCbSFp-cSPcoRzRdRJsPj4yYNs_mJQw@mail.gmail.com>
 <CA+icZUXsPRWmH3i-9=TK-=2HviubRqpAeDJGriWHgK1fkFhgUg@mail.gmail.com>
 <295d2acd-0844-9a40-3f94-5bcbb13871d2@fb.com> <CA+icZUUe0QE9QGMom1iQwuG8nM7Oi4Mq0GKqrLvebyxfUmj6RQ@mail.gmail.com>
 <CAADnVQLhymu8YqtfM1NHD5LMgO6a=FZYaeaYS1oCyfGoBDE_BQ@mail.gmail.com>
In-Reply-To: <CAADnVQLhymu8YqtfM1NHD5LMgO6a=FZYaeaYS1oCyfGoBDE_BQ@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Sat, 27 Jul 2019 09:36:20 +0200
Message-ID: <CA+icZUXGPCgdJzxTO+8W0EzNLZEQ88J_wusp7fPfEkNE2RoXJA@mail.gmail.com>
Subject: Re: next-20190723: bpf/seccomp - systemd/journald issue?
To: Alexei Starovoitov <alexei.starovoitov@gmail.com>
Cc: Yonghong Song <yhs@fb.com>, Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, 
	Martin Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>, 
	"netdev@vger.kernel.org" <netdev@vger.kernel.org>, "bpf@vger.kernel.org" <bpf@vger.kernel.org>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, Kees Cook <keescook@chromium.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Nathan Chancellor <natechancellor@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=fAWCaJ1i;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::443
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

On Sat, Jul 27, 2019 at 4:24 AM Alexei Starovoitov
<alexei.starovoitov@gmail.com> wrote:
>
> On Fri, Jul 26, 2019 at 2:19 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> >
> > On Fri, Jul 26, 2019 at 11:10 PM Yonghong Song <yhs@fb.com> wrote:
> > >
> > >
> > >
> > > On 7/26/19 2:02 PM, Sedat Dilek wrote:
> > > > On Fri, Jul 26, 2019 at 10:38 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> > > >>
> > > >> Hi Yonghong Song,
> > > >>
> > > >> On Fri, Jul 26, 2019 at 5:45 PM Yonghong Song <yhs@fb.com> wrote:
> > > >>>
> > > >>>
> > > >>>
> > > >>> On 7/26/19 1:26 AM, Sedat Dilek wrote:
> > > >>>> Hi,
> > > >>>>
> > > >>>> I have opened a new issue in the ClangBuiltLinux issue tracker.
> > > >>>
> > > >>> Glad to know clang 9 has asm goto support and now It can compile
> > > >>> kernel again.
> > > >>>
> > > >>
> > > >> Yupp.
> > > >>
> > > >>>>
> > > >>>> I am seeing a problem in the area bpf/seccomp causing
> > > >>>> systemd/journald/udevd services to fail.
> > > >>>>
> > > >>>> [Fri Jul 26 08:08:43 2019] systemd[453]: systemd-udevd.service: Failed
> > > >>>> to connect stdout to the journal socket, ignoring: Connection refused
> > > >>>>
> > > >>>> This happens when I use the (LLVM) LLD ld.lld-9 linker but not with
> > > >>>> BFD linker ld.bfd on Debian/buster AMD64.
> > > >>>> In both cases I use clang-9 (prerelease).
> > > >>>
> > > >>> Looks like it is a lld bug.
> > > >>>
> > > >>> I see the stack trace has __bpf_prog_run32() which is used by
> > > >>> kernel bpf interpreter. Could you try to enable bpf jit
> > > >>>     sysctl net.core.bpf_jit_enable = 1
> > > >>> If this passed, it will prove it is interpreter related.
> > > >>>
> > > >>
> > > >> After...
> > > >>
> > > >> sysctl -w net.core.bpf_jit_enable=1
> > > >>
> > > >> I can start all failed systemd services.
> > > >>
> > > >> systemd-journald.service
> > > >> systemd-udevd.service
> > > >> haveged.service
> > > >>
> > > >> This is in maintenance mode.
> > > >>
> > > >> What is next: Do set a permanent sysctl setting for net.core.bpf_jit_enable?
> > > >>
> > > >
> > > > This is what I did:
> > >
> > > I probably won't have cycles to debug this potential lld issue.
> > > Maybe you already did, I suggest you put enough reproducible
> > > details in the bug you filed against lld so they can take a look.
> > >
> >
> > I understand and will put the journalctl-log into the CBL issue
> > tracker and update informations.
> >
> > Thanks for your help understanding the BPF correlations.
> >
> > Is setting 'net.core.bpf_jit_enable = 2' helpful here?
>
> jit_enable=1 is enough.
> Or use CONFIG_BPF_JIT_ALWAYS_ON to workaround.
>
> It sounds like clang miscompiles interpreter.
> modprobe test_bpf
> should be able to point out which part of interpreter is broken.

Maybe we need something like...

"bpf: Disable GCC -fgcse optimization for ___bpf_prog_run()"

...for clang?

- Sedat -

[1] https://git.kernel.org/linus/3193c0836f203a91bef96d88c64cccf0be090d9c

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUXGPCgdJzxTO%2B8W0EzNLZEQ88J_wusp7fPfEkNE2RoXJA%40mail.gmail.com.
