Return-Path: <clang-built-linux+bncBCUY5FXDWACRBYHL53UQKGQEE243KDA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x538.google.com (mail-ed1-x538.google.com [IPv6:2a00:1450:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id 20F6B775F2
	for <lists+clang-built-linux@lfdr.de>; Sat, 27 Jul 2019 04:24:33 +0200 (CEST)
Received: by mail-ed1-x538.google.com with SMTP id r21sf35112796edc.6
        for <lists+clang-built-linux@lfdr.de>; Fri, 26 Jul 2019 19:24:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564194273; cv=pass;
        d=google.com; s=arc-20160816;
        b=k29Bjk1ksdzMpR2C1sRmtEPO4fl8gVcanWwELCqnTk1FIqlokcMvzOmx/GF+H1LFrc
         iMlZZeipWvzHOjh4B+xZWiKwcLa27+AUVCH8LaBUcRHO/cS225LunOh5QOW3RX1+yNEU
         K3klLYF3TH+ev7/M8kel/px2V92FPhdrmmiF/qwfpV0tTMyT8pZROiEIEBY7JCfPCf2p
         ADfDrphYhsDHTCt3m2cLKfOiCXaRjwRYZL/E5ic1YSPZ+u/U1KQPntXucNsNgbsGBI8G
         PJeXz/XaEQ3leKPDyZ+0ASWoI2Lm1VnjkmaBoHiAlJRgY4DJUmZVWRHbCV9KRUH8fc+W
         ETnA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=bBxCpSs+L/Zjnc2Aj1l7uhxN0X3moNu9bAYYf2hkASA=;
        b=sxyGJZcqilUb4Lw9U4O17s7KAYizc+zb67acKvS1i2YGMy9r4Mh9VcjzL93rnCVXAJ
         Bb7fIddnajOBRTGEzCu1k3trZ4azaHqM5hGuldk30zTyZxy2wM+lC4KWioljjkZ5pkxj
         wdD30zf0TA3rj60gMNHmR0Qq+IQTPNBdI4dJJixmpkepGiLneLAI+d8/dALs7PluY2o5
         nQ4j8vBwOFSN3gjDQzvfm/w5QYvctHpSCCQLxM1rBkjAQBJutjIQIbYKGqUQYEJ2R60h
         kPaGaMnd9ZmLJJoZZ/78xamWx8qJ0tZg/Flf6F7RbZXbQMJr4pMtyHDu6/Bf/gfezVjb
         T8DQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JvYfiJXa;
       spf=pass (google.com: domain of alexei.starovoitov@gmail.com designates 2a00:1450:4864:20::142 as permitted sender) smtp.mailfrom=alexei.starovoitov@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bBxCpSs+L/Zjnc2Aj1l7uhxN0X3moNu9bAYYf2hkASA=;
        b=Q5fYPrU24auNT8KyqGDUrWtKVrobzc4iGmsWrkwtMxIh+Y5K1HPKJyaseRhhvLnMrs
         fgnAMlyCJXDRjPg+54VkKh0LGRzZknuB4MimhLP84KUF8yxArYQdlMix+aiD1fGi56aA
         xQLvnOgwCNN9PP0i3fymDLGbMXRrNb3dC+QeXChQs1vThJp3WlB1Lhv675Q4WDnmRD9w
         mMpSsxYaiqn+zxPtxHKphYsYnQcblcQ6tgrmgIacFNhg+sGhqytdus+Mm8Q4QLlv5RFH
         rtzh4P46+VEJ6Ocw5BoKQwsN08Cs3T1ssz05gqF2tM6U36JWzY3/Sxcl8tbOwVSGJI21
         5Rxw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bBxCpSs+L/Zjnc2Aj1l7uhxN0X3moNu9bAYYf2hkASA=;
        b=ZGPL0rmZPHc3HU9a0KhVACS9P5P1NEfykQ51O0jJkKWhZasY/KDi0sxLS91zgX3dPQ
         Tgdz0QjiBcyYMCgD8/lDccChkHYeUpEaOiSJ0Kib2J9oeSOWCHnIIDb2xm8Ps/HSxhUu
         DaD0JO4IMIDKaLKohbXcov6aKbWid9exWe30485NOIxKfESzRYrE2HbUnfp+W2EWS6oX
         K+Qj7eaWxK1eOKSKWyidKcBt7oTF6N5rt5b+ZY8LtMLVwotaPBXk4yTRVbym8P9uglJY
         fRMMPMpVWnXk6VxkorXPbkytwcoHqxv7A9FRgzshIVQFT4vrVeoqEGR8lAip/o/S04XG
         uLnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bBxCpSs+L/Zjnc2Aj1l7uhxN0X3moNu9bAYYf2hkASA=;
        b=F0GBdNGgqkZ2+WeG/5T+WOC0rTyMhr1zaCNgUzQBb8N0lxE/JCzFd+yd0oizUmIkhx
         O0RvIf4zZYOqoe9+CzItKKZ4iU9EG+IgJvhcZTfigCq0NDeGW+a6hES50Olq+ls5wQdu
         lT0l9AfcKOTeRFtSoAZNGvwGqXZx/alT/27JO3TteeW0QK58Ivpb9JTaXNKcA6ftZMn8
         WQF22NGWr2orvEQjBo5unFOpVVmJVADcfF5aXLSBt4Xcm9K/7wyFB3KFYwhzzqPOsQvN
         KMAviCf0RvFM3B/IUnC8EwW+U6GtSUl6/x7ZTiNo47TkNUqbtxvn1DGremokvUA3EBVh
         PYDQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAX/m+0T7YCtvWtlwdDOtxYGKJnAzwjQwQUhSa+1U/W7CD8j9MHZ
	+69xo2tshz/NwA7zph1WcYQ=
X-Google-Smtp-Source: APXvYqyixU/rA+fI8bp3MRB4taESGOl6IHIK4MsFUu44mBcgVTUpMZUySqGAeVDRds32oynli1mz2w==
X-Received: by 2002:a17:906:46da:: with SMTP id k26mr75450048ejs.269.1564194272909;
        Fri, 26 Jul 2019 19:24:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6402:2cf:: with SMTP id b15ls13001580edx.3.gmail; Fri,
 26 Jul 2019 19:24:32 -0700 (PDT)
X-Received: by 2002:a05:6402:397:: with SMTP id o23mr86654896edv.68.1564194272442;
        Fri, 26 Jul 2019 19:24:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564194272; cv=none;
        d=google.com; s=arc-20160816;
        b=MPxoSqUYGah9Z7bs6NIUh7UDxdDm7drVojUjZMht0kJNiEBCE5Da6mgqgp9sL0R8MT
         6JR1aDxxDSX3o5SI1gJoeiyF10tQJwwC1BnaR9lO3WIdUwMJlxk7Gx5DZZ8zqe0QLjCn
         Yn6yZztgDrmEA7hBTSH0/SxQTAYRdPyWudxBKIg8Yb2c57qSdOkirOZOewepuwNJSGCd
         pZji94xfwvQANHdAIJnobIl9Q+ZyJWrFI4JrW76fiAzN45jy96Sq5nYMnjQ7SIKMtFBt
         +gI5ZPzQdQSYsevELpSlf3zN2PDaFhSDnedIX9CQ9JZsK1o90rXj+9g5tNh8rGytmWkk
         Rn7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=dBSGvoN0c2FHrhYCgc5hOl319yWYWmBdFzMKxGL9ZAQ=;
        b=LTFTgrGhHcpZF/L9w6Qum1NfzlULZhenIifL1P9Ze+wyQkeS//5UscRY+WoZV+UrQw
         eIbjSGaNoVzTpplseMAot5vxKP6NAVcrjtCDgKSrriNSLLdnHc8u0J+PePqG74OXfpff
         FyPlbh63w7OjDSft5GqrZlrHw7ODXxGvrBomFBhqw+6wG0SRFoFDsaDoP/8ZUckiLAq4
         +bEFIcyWL05UmzoqLD4o9G4T7//v87IHACE+XG4nVtNdgJw4NU6TTiyS6Z64BloUfzN1
         JnTHnu1wcI2D/5tzLe4dhOfo9zHwBXTQLq7BmnbKtCC+R4haIymIjPnTYapwnBBIWtn1
         YpSQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JvYfiJXa;
       spf=pass (google.com: domain of alexei.starovoitov@gmail.com designates 2a00:1450:4864:20::142 as permitted sender) smtp.mailfrom=alexei.starovoitov@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lf1-x142.google.com (mail-lf1-x142.google.com. [2a00:1450:4864:20::142])
        by gmr-mx.google.com with ESMTPS id b39si2979659edb.1.2019.07.26.19.24.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Fri, 26 Jul 2019 19:24:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of alexei.starovoitov@gmail.com designates 2a00:1450:4864:20::142 as permitted sender) client-ip=2a00:1450:4864:20::142;
Received: by mail-lf1-x142.google.com with SMTP id r15so21363396lfm.11
        for <clang-built-linux@googlegroups.com>; Fri, 26 Jul 2019 19:24:32 -0700 (PDT)
X-Received: by 2002:a05:6512:288:: with SMTP id j8mr50127136lfp.181.1564194271869;
 Fri, 26 Jul 2019 19:24:31 -0700 (PDT)
MIME-Version: 1.0
References: <CA+icZUWF=B_phP8eGD3v2d9jSSK6Y-N65y-T6xewZnY91vc2_Q@mail.gmail.com>
 <c2524c96-d71c-d7db-22ec-12da905dc180@fb.com> <CA+icZUXYp=Jx+8aGrZmkCbSFp-cSPcoRzRdRJsPj4yYNs_mJQw@mail.gmail.com>
 <CA+icZUXsPRWmH3i-9=TK-=2HviubRqpAeDJGriWHgK1fkFhgUg@mail.gmail.com>
 <295d2acd-0844-9a40-3f94-5bcbb13871d2@fb.com> <CA+icZUUe0QE9QGMom1iQwuG8nM7Oi4Mq0GKqrLvebyxfUmj6RQ@mail.gmail.com>
In-Reply-To: <CA+icZUUe0QE9QGMom1iQwuG8nM7Oi4Mq0GKqrLvebyxfUmj6RQ@mail.gmail.com>
From: Alexei Starovoitov <alexei.starovoitov@gmail.com>
Date: Fri, 26 Jul 2019 19:24:20 -0700
Message-ID: <CAADnVQLhymu8YqtfM1NHD5LMgO6a=FZYaeaYS1oCyfGoBDE_BQ@mail.gmail.com>
Subject: Re: next-20190723: bpf/seccomp - systemd/journald issue?
To: sedat.dilek@gmail.com
Cc: Yonghong Song <yhs@fb.com>, Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, 
	Martin Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>, 
	"netdev@vger.kernel.org" <netdev@vger.kernel.org>, "bpf@vger.kernel.org" <bpf@vger.kernel.org>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, Kees Cook <keescook@chromium.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Nathan Chancellor <natechancellor@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: alexei.starovoitov@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=JvYfiJXa;       spf=pass
 (google.com: domain of alexei.starovoitov@gmail.com designates
 2a00:1450:4864:20::142 as permitted sender) smtp.mailfrom=alexei.starovoitov@gmail.com;
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

On Fri, Jul 26, 2019 at 2:19 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
>
> On Fri, Jul 26, 2019 at 11:10 PM Yonghong Song <yhs@fb.com> wrote:
> >
> >
> >
> > On 7/26/19 2:02 PM, Sedat Dilek wrote:
> > > On Fri, Jul 26, 2019 at 10:38 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> > >>
> > >> Hi Yonghong Song,
> > >>
> > >> On Fri, Jul 26, 2019 at 5:45 PM Yonghong Song <yhs@fb.com> wrote:
> > >>>
> > >>>
> > >>>
> > >>> On 7/26/19 1:26 AM, Sedat Dilek wrote:
> > >>>> Hi,
> > >>>>
> > >>>> I have opened a new issue in the ClangBuiltLinux issue tracker.
> > >>>
> > >>> Glad to know clang 9 has asm goto support and now It can compile
> > >>> kernel again.
> > >>>
> > >>
> > >> Yupp.
> > >>
> > >>>>
> > >>>> I am seeing a problem in the area bpf/seccomp causing
> > >>>> systemd/journald/udevd services to fail.
> > >>>>
> > >>>> [Fri Jul 26 08:08:43 2019] systemd[453]: systemd-udevd.service: Failed
> > >>>> to connect stdout to the journal socket, ignoring: Connection refused
> > >>>>
> > >>>> This happens when I use the (LLVM) LLD ld.lld-9 linker but not with
> > >>>> BFD linker ld.bfd on Debian/buster AMD64.
> > >>>> In both cases I use clang-9 (prerelease).
> > >>>
> > >>> Looks like it is a lld bug.
> > >>>
> > >>> I see the stack trace has __bpf_prog_run32() which is used by
> > >>> kernel bpf interpreter. Could you try to enable bpf jit
> > >>>     sysctl net.core.bpf_jit_enable = 1
> > >>> If this passed, it will prove it is interpreter related.
> > >>>
> > >>
> > >> After...
> > >>
> > >> sysctl -w net.core.bpf_jit_enable=1
> > >>
> > >> I can start all failed systemd services.
> > >>
> > >> systemd-journald.service
> > >> systemd-udevd.service
> > >> haveged.service
> > >>
> > >> This is in maintenance mode.
> > >>
> > >> What is next: Do set a permanent sysctl setting for net.core.bpf_jit_enable?
> > >>
> > >
> > > This is what I did:
> >
> > I probably won't have cycles to debug this potential lld issue.
> > Maybe you already did, I suggest you put enough reproducible
> > details in the bug you filed against lld so they can take a look.
> >
>
> I understand and will put the journalctl-log into the CBL issue
> tracker and update informations.
>
> Thanks for your help understanding the BPF correlations.
>
> Is setting 'net.core.bpf_jit_enable = 2' helpful here?

jit_enable=1 is enough.
Or use CONFIG_BPF_JIT_ALWAYS_ON to workaround.

It sounds like clang miscompiles interpreter.
modprobe test_bpf
should be able to point out which part of interpreter is broken.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAADnVQLhymu8YqtfM1NHD5LMgO6a%3DFZYaeaYS1oCyfGoBDE_BQ%40mail.gmail.com.
