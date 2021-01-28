Return-Path: <clang-built-linux+bncBCTYRDEG7MGBBYVMZCAAMGQEFWPPORA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x137.google.com (mail-il1-x137.google.com [IPv6:2607:f8b0:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 07A50306A8A
	for <lists+clang-built-linux@lfdr.de>; Thu, 28 Jan 2021 02:41:56 +0100 (CET)
Received: by mail-il1-x137.google.com with SMTP id g3sf3312020ild.4
        for <lists+clang-built-linux@lfdr.de>; Wed, 27 Jan 2021 17:41:55 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611798115; cv=pass;
        d=google.com; s=arc-20160816;
        b=ziT0SPQbD6Djch9RTmJ9rEBvjn2pZsdi6cyJq6WeuvvVgvaRnYdFvYoo3oiA4PnHQG
         ShOe4FBlRhYLzLWFpdemKiiABTAB/fhJ2WAdaM2y9brNeeXcTNCzzpWmgbWqDNs4n/p0
         R7DKacskrM4lKMGPu/0W/3rCrfs8BHBzWjMa9BvsdmlfphAsoIaPRvOtk+N1MeIYc026
         CkyJiDD5AQ40sQTEII4vcLEAnipGHH0CaHBNf1MsDvq+oJhvRANdo8b/XkL0NRhPtJz5
         EnhvZr6H9XmHdJ3Q6IHSGSHoSPvJnN+t9WpOyUeIU85CyU3pHomq7WHhLwRjz80fMa/2
         htYQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=vDTBYCjgrPYwAt08k07rG0LU67eh2tVyi4JxTAN9R1s=;
        b=t2fWU1Wt1ctJD5nOPaAQMFSf3ZvHJmupwriNdk55mpgevvCTxIoR33WGS6eERpV2b6
         ri68WXEhCRVXcuojk6ENwEVv04INrVe0JCqcXRcvJ8EP+K2vAG/j8klpP5bz50SwUTlm
         UKIxsNeuqF5EYcqboGPXMmj+109h4B6UaLRTcGN/wFNgzcBH9QmxCTse0nQB8upeXlse
         AixeBlUFHIbJBaUjjS1H1Qs2fHTZmLHgkqOq+TZAYZteyXvp0jHH7ax1ccJVgsczMN0I
         Yxtmu/TIFdMtI563JK4Isz+TVD/zy/8pIOXNgASDcFWxD98Kw90hPHPsJfrYqVtg0PZj
         cPWg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Kx6l4kSz;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::b2b as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vDTBYCjgrPYwAt08k07rG0LU67eh2tVyi4JxTAN9R1s=;
        b=aD6vTRCk/bGuovDtiJtfQJTgKHgNyDgfUc2L/J+II91X1IpPhmZPYz7MXNTSOZ+7/P
         nxAvLXZZyOkLCGLrJ8mJC7HQYezgQbAmWvqFey0qgWALnvR8pauWtXUPcSE6lYC7Xu4n
         PV2HfoVC8ZVW8HJ4tOBFiKZ+ryQhkROoOQVFk92wc7ucpJeEzLHOntd6QMF1MCMasabJ
         RPtM5JeSrkE2rdoMzcMW3QD2zTYmcEn4QKrDuylm2Vrcc4qNe//U2EOZVMtKssjHCvuh
         uF1C43D53W9UpSc8frKygw1umSDtjtFs8YsRqiAg1KiRC1NOC+Em3/el3h3X+Zgf8J0q
         O0cA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vDTBYCjgrPYwAt08k07rG0LU67eh2tVyi4JxTAN9R1s=;
        b=BIhVcjLHB29FGk3IuYs68mKoilbGrmoTkzupRK7P+GdJkcB1wUERIbh7T6ckny4NVc
         wbEk9ISh4GrxFwZ/yrG0ZY3Ile7TyMHySWnMqP/iKHYOpz8HFog9OYZxv9em1zrHHdAt
         jwA4267gGgvQxkRASkFB70UHxn0Xzy3N58PIWqV/cpyFwvJ0pTiwT4f/qFQ7AIeTQyRJ
         R80h3bnkgp7XjsRgxyDphLnLm4TxY2+RlT91J4GVXJieZjI7hSRRJH7SRj069Ze2b2m5
         b5/KpgjjvKnuWbvlqxdxY2l3omo/ngbKaHIAqccATNyAjwmb8ti8cu2/C7zbJJd3bMxE
         2OAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vDTBYCjgrPYwAt08k07rG0LU67eh2tVyi4JxTAN9R1s=;
        b=WKTwy5DwvxrqpWyb3nbOjA0/vey/dBKKbHaDW5InQrWuKBmeIOF+j2XVWmJjdCuNSj
         aCaL8CLsbdeiJPGfTmJQqViq/xZJpmsPu1o9VYAtdGBy2SOvuGrrUcr5PQx1+SDQCXQf
         3XJ4MMVAeRijqaoU2Qtjp9JC/WjZuYYXGKAjyHqxK/PuiZRGPQNmlmwiggk84QbaRxyP
         Lndtsa4aF4C6EueB/+Lk+VFnN/BfoJ9iElsr9KvWXtzOy5yvUXDBOJ5otFg9lAdAzfEH
         WhllbYJ4+NIJ2S5Om7opkLe/ThDZMB8PAZ/s69Ev3lcPMQ2s1zCP9Mg8t4+IEutYgI9f
         crvg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5308ncd2n2gbKKXKTplI7ilOhTAPH0nZEXOkn4H3XaeB//PyoBcw
	umQDBpL7HdRFpMM+dflI8AQ=
X-Google-Smtp-Source: ABdhPJxxGbp7jrc3yio7eo113UD37S+KX+xKuUzk4KlQ7dlMYB4kwRUJrz/8COiT+/dLizApDqXHuQ==
X-Received: by 2002:a05:6e02:1aa8:: with SMTP id l8mr11041447ilv.251.1611798114725;
        Wed, 27 Jan 2021 17:41:54 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6602:1c9:: with SMTP id w9ls586524iot.2.gmail; Wed, 27
 Jan 2021 17:41:54 -0800 (PST)
X-Received: by 2002:a6b:e805:: with SMTP id f5mr9277341ioh.111.1611798114319;
        Wed, 27 Jan 2021 17:41:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611798114; cv=none;
        d=google.com; s=arc-20160816;
        b=mA9235TYDEnLD44XYEqpaFgPNtNij5df6B97OIp4xtA197yX5FaF2jH7e24g/sNDHZ
         HW8L/sdYIp3mY2pcIbRLsKf90po1uYwZ4Iw0BY3XRrgkGR2981Aa20jPJvzC9itHLINh
         7geRSjpKni7c0uZRYeNszf6iyjOOE/iC+Z+dCiOZbIVBtD1bu6iyBQ+pwMDrn5mwMN93
         9pE+yOgh9wEs+UO2AUkj+SsKK+mZ0w9AeMej/a4PIQbZhXJt94qelP4zv4HdoAKN08bK
         JS/dkZOvhM58P8rRlDzxEC18inIjmMdWEtPDIFTgJJjEsGbDuwUo/wbQXJfbUxJa+SIx
         KtmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=levWwdmNnK0CrUKkgeazFotHMRfPFFjLuGXoNcWWnk4=;
        b=iJxq8j19ELUJlf8wh2DwVEhtMoM914iqfKnVQ/5eO0D9FzVov4IZW/H5awasnXp5tO
         PUC5dSjzhjv9VfhCmhHK7KW5onZXhLffEjXdJ49ycZHimtL9IHmSdJRFhHEe36Wybhbx
         69Qcd5XzafZUGSE/Q0bjlLDm7w57gz4y2eBP1YhwCstjqO7WzJOarnRmDs7RHcIuHXx9
         s8SVH3Wj5JpH8ZHyLvzhmzYJCCMUHAZNH6Lg5CRm9+yx8USTX0hjXnf8GzigOFM83sPN
         9JZZYjN/1U//4oQWtoU+ugwf5DfihINdDsj6tBsHRZmZqaTtYbqTPnOLdi7EIR6X2TMG
         /8BA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Kx6l4kSz;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::b2b as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yb1-xb2b.google.com (mail-yb1-xb2b.google.com. [2607:f8b0:4864:20::b2b])
        by gmr-mx.google.com with ESMTPS id d13si121437iow.0.2021.01.27.17.41.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 Jan 2021 17:41:54 -0800 (PST)
Received-SPF: pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::b2b as permitted sender) client-ip=2607:f8b0:4864:20::b2b;
Received: by mail-yb1-xb2b.google.com with SMTP id x78so3921097ybe.11
        for <clang-built-linux@googlegroups.com>; Wed, 27 Jan 2021 17:41:54 -0800 (PST)
X-Received: by 2002:a25:4605:: with SMTP id t5mr7683661yba.260.1611798113726;
 Wed, 27 Jan 2021 17:41:53 -0800 (PST)
MIME-Version: 1.0
References: <20210122003235.77246-1-sedat.dilek@gmail.com> <CAEf4Bzb+fXZy1+337zRFA9v8x+Mt7E3YOZRhG8xnXeRN4_oCRA@mail.gmail.com>
 <CA+icZUWVGHqM00qd7-+Hrb9=rkL6AvEQ7Aj8zBK=VPpEi+LTmg@mail.gmail.com>
In-Reply-To: <CA+icZUWVGHqM00qd7-+Hrb9=rkL6AvEQ7Aj8zBK=VPpEi+LTmg@mail.gmail.com>
From: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Date: Wed, 27 Jan 2021 17:41:42 -0800
Message-ID: <CAEf4BzZ0S-SzVy=Ym0x27Ab2QS8vwA66OzX4KjC88nSg7wD9SQ@mail.gmail.com>
Subject: Re: [PATCH RFC v2] tools: Factor Clang, LLC and LLVM utils definitions
To: Sedat Dilek <sedat.dilek@gmail.com>
Cc: Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, 
	Andrii Nakryiko <andrii@kernel.org>, Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>, 
	Yonghong Song <yhs@fb.com>, John Fastabend <john.fastabend@gmail.com>, KP Singh <kpsingh@kernel.org>, 
	Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, Jiri Olsa <jolsa@redhat.com>, 
	Namhyung Kim <namhyung@kernel.org>, Shuah Khan <shuah@kernel.org>, 
	Nathan Chancellor <natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	Quentin Monnet <quentin@isovalent.com>, Jean-Philippe Brucker <jean-philippe@linaro.org>, 
	Tobias Klauser <tklauser@distanz.ch>, Ilya Leoshkevich <iii@linux.ibm.com>, Andrey Ignatov <rdna@fb.com>, 
	Stephane Eranian <eranian@google.com>, "Frank Ch. Eigler" <fche@redhat.com>, Thomas Hebb <tommyhebb@gmail.com>, 
	Masami Hiramatsu <mhiramat@kernel.org>, Briana Oursler <briana.oursler@gmail.com>, 
	"David S. Miller" <davem@davemloft.net>, Davide Caratti <dcaratti@redhat.com>, 
	Networking <netdev@vger.kernel.org>, bpf <bpf@vger.kernel.org>, 
	open list <linux-kernel@vger.kernel.org>, 
	"open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: andrii.nakryiko@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Kx6l4kSz;       spf=pass
 (google.com: domain of andrii.nakryiko@gmail.com designates
 2607:f8b0:4864:20::b2b as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
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

On Wed, Jan 27, 2021 at 5:30 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
>
> On Thu, Jan 28, 2021 at 2:27 AM Andrii Nakryiko
> <andrii.nakryiko@gmail.com> wrote:
> >
> > On Thu, Jan 21, 2021 at 4:32 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> > >
> > > When dealing with BPF/BTF/pahole and DWARF v5 I wanted to build bpftool.
> > >
> > > While looking into the source code I found duplicate assignments
> > > in misc tools for the LLVM eco system, e.g. clang and llvm-objcopy.
> > >
> > > Move the Clang, LLC and/or LLVM utils definitions to
> > > tools/scripts/Makefile.include file and add missing
> > > includes where needed.
> > > Honestly, I was inspired by commit c8a950d0d3b9
> > > ("tools: Factor HOSTCC, HOSTLD, HOSTAR definitions").
> > >
> > > I tested with bpftool and perf on Debian/testing AMD64 and
> > > LLVM/Clang v11.1.0-rc1.
> > >
> > > Build instructions:
> > >
> > > [ make and make-options ]
> > > MAKE="make V=1"
> > > MAKE_OPTS="HOSTCC=clang HOSTCXX=clang++ HOSTLD=ld.lld CC=clang LD=ld.lld LLVM=1 LLVM_IAS=1"
> > > MAKE_OPTS="$MAKE_OPTS PAHOLE=/opt/pahole/bin/pahole"
> > >
> > > [ clean-up ]
> > > $MAKE $MAKE_OPTS -C tools/ clean
> > >
> > > [ bpftool ]
> > > $MAKE $MAKE_OPTS -C tools/bpf/bpftool/
> > >
> > > [ perf ]
> > > PYTHON=python3 $MAKE $MAKE_OPTS -C tools/perf/
> > >
> > > I was careful with respecting the user's wish to override custom compiler,
> > > linker, GNU/binutils and/or LLVM utils settings.
> > >
> > > Some personal notes:
> > > 1. I have NOT tested with cross-toolchain for other archs (cross compiler/linker etc.).
> > > 2. This patch is on top of Linux v5.11-rc4.
> > >
> > > I hope to get some feedback from especially Linux-bpf folks.
> > >
> > > Acked-by: Jiri Olsa <jolsa@redhat.com> # tools/build and tools/perf
> > > Signed-off-by: Sedat Dilek <sedat.dilek@gmail.com>
> > > ---
> >
> > Hi Sedat,
> >
> > If no one objects, we'll take this through bpf-next tree. Can you
> > please re-send this as a non-RFC patch against the bpf-next tree? Feel
> > free to add my ack. Thanks.
> >
>
> I am OK with that and will add your ACK.
> Is [1] bpf-next Git?

Yes, please use [PATCH bpf-next] subject prefix and cc
bpf@vger.kernel.org as well.

>
> - Sedat -
>
> [1] https://git.kernel.org/pub/scm/linux/kernel/git/bpf/bpf-next.git/
>
> > > Changelog RFC v1->v2:
> > > - Add Jiri's ACK
> > > - Adapt to fit Linux v5.11-rc4
> > >
> >
> > [...]

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAEf4BzZ0S-SzVy%3DYm0x27Ab2QS8vwA66OzX4KjC88nSg7wD9SQ%40mail.gmail.com.
