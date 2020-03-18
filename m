Return-Path: <clang-built-linux+bncBCTYRDEG7MGBBQWRZHZQKGQE5HSLLBY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x438.google.com (mail-pf1-x438.google.com [IPv6:2607:f8b0:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id A94E318A25A
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Mar 2020 19:30:27 +0100 (CET)
Received: by mail-pf1-x438.google.com with SMTP id 71sf7350804pfu.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Mar 2020 11:30:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584556226; cv=pass;
        d=google.com; s=arc-20160816;
        b=a+64GI9Xlg3rFTu7f3Bn4iN1kKA3Po3GtfhKrx6MHAlWalgIqcTrLrZqjoWz074Qrk
         67bBuoo/IG0whqRV8+IHtkNNu3FrRHspSdDEXp18PibWc1ylHV0uYMXsTCsBi3S9+1mT
         CPX5zJ8AGx8jd1hPki3PJO0+Y5W0/8IB75hcFh08aZhIf5uCGUOMPrlOOuYHJz9Cckw+
         YahMb8KpQSBPI1AoHGVmRO5ZgmzDPt97mgr923MNfIP7Rv4jNbChP99iH3Apoyi3EI4m
         Kc7aeSJj9cHkUHuurUDI+kV6pF/Qx5Wa0RR4e/NdPCyp/n/gFqxkgZvfpv3OzO8RRgfm
         qSEg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=HqTpH4JWPslzekb75F7/9O1F97DsQrsZdS829aNm4r4=;
        b=y1jbZ4Z5F1KJIvdIgjwXkHxQCE/43tbpR6fn1zs2uItI/LTIPXCGDlW4pWZ24Ixbat
         XfDEwMCDkZX9iVvPsN3pGhwuo8d4kUZrsINyjOGg+798VfMRX1iacKqtaGSyJkhSPCWV
         wnx7Q8TaGPel3otM5MfwXeuUK8SboCs86XHO2X+d/Q/BQYZu8MBt9WTGnPN2h1WPj26G
         fcsLORbXlt8eStsWc1htCPpFbTJ1+GV1144/SRfYb1VxVdGjjMKtk+BBzC5VFkCyWvA8
         GyL+nlOFoflqygrcw04vY1NGobVL1NOElYuPGUHC5pADQLRK5Fi/ne4CzzFS3miGM0dR
         itGA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CSgePkrD;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HqTpH4JWPslzekb75F7/9O1F97DsQrsZdS829aNm4r4=;
        b=mM/3B93MhRMJqFfJeV9na3R0HVyxTQpwZGctFLBO+PPT0nv/NFTLv1ZTWlXBUtoUh+
         DWlDTcjp4xD8SYK+OBWL3P99rCeuk22ZvRa9wgPTqD2fYWctBoE/ZDwENBZ4uVxqLzxP
         ZOOa9N9ICoaXas6KG5VEgWi6hMhCCEQzSNgHppPDVGNKH+TJvEFKVsWBrmiz1U3DrbBH
         L3pdMeb8xfJz52nQqCVAq7aUGCN7MjH5uu1GrHYlx9Ty3pEIw+rdAOfZEfI891HTChbw
         b0tXD3LxwsL/LPUOr5Ss2MBMeclgDhQRGjKUIcF0k5FweM3hTUXuRolESZDHt7e5mevt
         q7WA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HqTpH4JWPslzekb75F7/9O1F97DsQrsZdS829aNm4r4=;
        b=uOpLlNYZDo7mxh0M2WGcCRlliAFNLKFqKSNWa0BcLusNMiG2aTKsK7N8aj+SprK9vF
         UcXSInXXmOi/+RlLEGHaK11ZD3ZoXViCXAOhUd6z5v+AueKrBudwcMw9YxKTTzN0V0QX
         E/LIXBPIICpSW3ae7OXWbtXi/h4lM2pjpR9hd35i6npfGtKsufXMc0x55KmtTrL/oCEC
         9p5sKjZjF6BatKYMaAdXok7ilSTio0CaFCi9FLIKMzS0okx3yvapLyLTHXrqQFpQSzLJ
         m/Ncr3CTSSMEKV4BfpzBzhn1SDKtrpVn2au1NdWkfoez9vJz+W057iVB3soYLMxAAHB5
         DN0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HqTpH4JWPslzekb75F7/9O1F97DsQrsZdS829aNm4r4=;
        b=qMAPxjCwQc624CX+kRUtyNmZZbz47kZZ9572XbMDs5A8pudcD8X9dQdBN97PCfIAKt
         1g9VL9mK65bDjf1p5P/ZYa+bp4bqPIIlbe7lyxPYPej1EVqoj5y/dwWTfiBFHh+p7VMz
         rvGkfokaOvWTwAM4QUWBK5wLj61xnbzwkBHC/Wp+f86caIGL0Ffcs3mAAUMgiD2+0jkl
         hue+80nrggiDrOhtf4nLdoeq1MnaJDwCxGTXnVZxJCayOZGzyskhH99KI5lbE3BDrpnP
         TUYEAopyd+RhD8MxBJGMjSeUhGOCUpOx2KgKnXNBRbUeFg8IzC9Bqh6ewuvhsdo3Fn2p
         WQwg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ2Ux7e2Za5gxA7SKyGaxmtag7M6fDa9+zEiH/nKIpk6Wuy+qDMV
	3ydFMEPcOgRt757K1+nO5uE=
X-Google-Smtp-Source: ADFU+vsKfC4GgYL4dHxcVWAI2vRHpPVL+f4Rr9CXr7hd0jm5eQPgshG7Xz1fF+L+T6Osy2RobdtPtQ==
X-Received: by 2002:a17:902:bc48:: with SMTP id t8mr4998552plz.308.1584556226158;
        Wed, 18 Mar 2020 11:30:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:a701:: with SMTP id w1ls14103975plq.7.gmail; Wed, 18
 Mar 2020 11:30:25 -0700 (PDT)
X-Received: by 2002:a17:90b:19c3:: with SMTP id nm3mr6033155pjb.149.1584556225568;
        Wed, 18 Mar 2020 11:30:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584556225; cv=none;
        d=google.com; s=arc-20160816;
        b=IzhawrrNHeIVXMcXBJrQMZirqMLpLGnhUeuKV2wCa/m1q1sw3QfAji0jtQma6SEaX1
         zJkZNLCV/DFmkjD9haCY8+zpyzsqeB0oQsGlXP/mlGeieHDY/mmG0zpODt+Z9PFYSDCb
         dTJeEuxc1sRgqQUjBvCAAEBhV0zkJP5NIo/MgnjZ7mHVOGgwCh6k0U0E0ZN1Czyj3aaT
         SIEqYJs1f4Ooq9kkVP9gfVJPrKoEBUGGfwqT3Atv0vvdXIs9zSs64LK8+LEfyddNrMGe
         TRR7SRCrOeJK8uIsJFy1RtC4l97FhL/lXks5NaIMFxUUXogq3Pee9bRQEWPRCzwEBnwD
         kG0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=GqroxdAEbJb7dVXW+7ArkprwDF9g8bc8eBF5e5MyfUc=;
        b=giEvhocGWRDiNYpoILJJQNTdUub47QFaAtu4JqAI2lAB3vEscWR6tvWHNq5kn0WmfT
         VAh2nxj4BwXS9Go8+Oh6m3o0Z5INadRFxR4kasTVaU4M5YxbfNg/Bfn1xNyTqF2EbysT
         ZagHs8Ji9dIDP8AjXgtKaIX2WEfuyAqP5Hvkf+8oHTy2KaoXpLRAUQDGJfB9tkLYi5X6
         c2fRSUmg+ua+MaMFrJxq2ip1H3fHcWZuz+T5omuD4mUGjKOHj4Bn3MW9GbRmzeUDXlFw
         GcYqlMzNa6/dCGnTyoCS95KT2Jyg7YdKYUYOizIgO3SKZk0cAMdaK3BqJiIvKo1bI7AF
         RwGw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CSgePkrD;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x742.google.com (mail-qk1-x742.google.com. [2607:f8b0:4864:20::742])
        by gmr-mx.google.com with ESMTPS id k3si436315plt.1.2020.03.18.11.30.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Mar 2020 11:30:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) client-ip=2607:f8b0:4864:20::742;
Received: by mail-qk1-x742.google.com with SMTP id c145so40453252qke.12
        for <clang-built-linux@googlegroups.com>; Wed, 18 Mar 2020 11:30:25 -0700 (PDT)
X-Received: by 2002:a37:e40d:: with SMTP id y13mr5531432qkf.39.1584556224525;
 Wed, 18 Mar 2020 11:30:24 -0700 (PDT)
MIME-Version: 1.0
References: <20200317011654.zkx5r7so53skowlc@google.com> <CAEf4BzYTJqWU++QnQupxFBWGSMPfGt6r-5u9jbeLnEF2ipw+Mw@mail.gmail.com>
 <20200317033701.w7jwos7mvfnde2t2@google.com> <CAEf4BzYyimAo2_513kW6hrDWwmzSDhNjTYksjy01ugKKTPt+qA@mail.gmail.com>
 <20200317052120.diawg3a75kxl5hkn@google.com> <CAEf4BzYepRs4uB9vd1SCFY81H5S1kbvw2n9bKNeh-ORK_kutSg@mail.gmail.com>
 <20200317054359.snyyojyf6gjxufij@google.com> <20200317162405.GB2459609@mini-arch.hsd1.ca.comcast.net>
 <20200317205832.lna5phig2ed3bf2n@google.com> <CAEf4BzY8uzcpS8t0JW70V-DrrZ4MbeXOyEtCrpTtQyHW+uQcRg@mail.gmail.com>
 <20200318175918.ulpzopsao4sm6aei@google.com>
In-Reply-To: <20200318175918.ulpzopsao4sm6aei@google.com>
From: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Date: Wed, 18 Mar 2020 11:30:13 -0700
Message-ID: <CAEf4BzYBgG4dyhL7Bj21CU4HO9qpm_N7SZkQekTTK6pJBA1ZJA@mail.gmail.com>
Subject: Re: [PATCH bpf-next v4] bpf: Support llvm-objcopy and llvm-objdump
 for vmlinux BTF
To: Fangrui Song <maskray@google.com>
Cc: bpf <bpf@vger.kernel.org>, Networking <netdev@vger.kernel.org>, 
	Daniel Borkmann <daniel@iogearbox.net>, Nick Desaulniers <ndesaulniers@google.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, clang-built-linux@googlegroups.com, 
	Stanislav Fomichev <sdf@google.com>, "David S. Miller" <davem@davemloft.net>, 
	Alexei Starovoitov <ast@kernel.org>, Kees Cook <keescook@chromium.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: andrii.nakryiko@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=CSgePkrD;       spf=pass
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

On Wed, Mar 18, 2020 at 10:59 AM Fangrui Song <maskray@google.com> wrote:
>
>
> On 2020-03-17, Andrii Nakryiko wrote:
> >On Tue, Mar 17, 2020 at 1:58 PM Fangrui Song <maskray@google.com> wrote:
> >>
> >>
> >> On 2020-03-17, Stanislav Fomichev wrote:
> >> >On 03/16, Fangrui Song wrote:
> >> >> On 2020-03-16, Andrii Nakryiko wrote:
> >> >> > On Mon, Mar 16, 2020 at 10:21 PM Fangrui Song <maskray@google.com> wrote:
> >> >> > >
> >> >> > >
> >> >> > > On 2020-03-16, Andrii Nakryiko wrote:
> >> >> > > >On Mon, Mar 16, 2020 at 8:37 PM Fangrui Song <maskray@google.com> wrote:
> >> >> > > >>
> >> >> > > >> On 2020-03-16, Andrii Nakryiko wrote:
> >> >> > > >> >On Mon, Mar 16, 2020 at 6:17 PM Fangrui Song <maskray@google.com> wrote:
> >> >> > > >> >>
> >> >> > > >> >> Simplify gen_btf logic to make it work with llvm-objcopy and
> >> >> > > >> >> llvm-objdump.  We just need to retain one section .BTF. To do so, we can
> >> >> > > >> >> use a simple objcopy --only-section=.BTF instead of jumping all the
> >> >> > > >> >> hoops via an architecture-less binary file.
> >> >> > > >> >>
> >> >> > > >> >> We use a dd comment to change the e_type field in the ELF header from
> >> >> > > >> >> ET_EXEC to ET_REL so that .btf.vmlinux.bin.o will be accepted by lld.
> >> >> > > >> >>
> >> >> > > >> >> Fixes: df786c9b9476 ("bpf: Force .BTF section start to zero when dumping from vmlinux")
> >> >> > > >> >> Cc: Stanislav Fomichev <sdf@google.com>
> >> >> > > >> >> Cc: Nick Desaulniers <ndesaulniers@google.com>
> >> >> > > >> >> Tested-by: Nick Desaulniers <ndesaulniers@google.com>
> >> >> > > >> >> Reported-by: Nathan Chancellor <natechancellor@gmail.com>
> >> >> > > >> >> Link: https://github.com/ClangBuiltLinux/linux/issues/871
> >> >> > > >> >> Signed-off-by: Fangrui Song <maskray@google.com>
> >> >> > > >> >> ---
> >> >> > > >> >>  scripts/link-vmlinux.sh | 13 ++-----------
> >> >> > > >> >>  1 file changed, 2 insertions(+), 11 deletions(-)
> >> >> > > >> >>
> >> >> > > >> >> diff --git a/scripts/link-vmlinux.sh b/scripts/link-vmlinux.sh
> >> >> > > >> >> index dd484e92752e..84be8d7c361d 100755
> >> >> > > >> >> --- a/scripts/link-vmlinux.sh
> >> >> > > >> >> +++ b/scripts/link-vmlinux.sh
> >> >> > > >> >> @@ -120,18 +120,9 @@ gen_btf()
> >> >> > > >> >>
> >> >> > > >> >>         info "BTF" ${2}
> >> >> > > >> >>         vmlinux_link ${1}
> >> >> > > >> >> -       LLVM_OBJCOPY=${OBJCOPY} ${PAHOLE} -J ${1}
> >> >> > > >> >
> >> >> > > >> >Is it really tested? Seems like you just dropped .BTF generation step
> >> >> > > >> >completely...
> >> >> > > >>
> >> >> > > >> Sorry, dropped the whole line:/
> >> >> > > >> I don't know how to test .BTF . I can only check readelf -S...
> >> >> > > >>
> >> >> > > >> Attached the new patch.
> >> >> > > >>
> >> >> > > >>
> >> >> > > >>  From 02afb9417d4f0f8d2175c94fc3797a94a95cc248 Mon Sep 17 00:00:00 2001
> >> >> > > >> From: Fangrui Song <maskray@google.com>
> >> >> > > >> Date: Mon, 16 Mar 2020 18:02:31 -0700
> >> >> > > >> Subject: [PATCH bpf v2] bpf: Support llvm-objcopy and llvm-objdump for
> >> >> > > >>   vmlinux BTF
> >> >> > > >>
> >> >> > > >> Simplify gen_btf logic to make it work with llvm-objcopy and llvm-objdump.
> >> >> > > >> We use a dd comment to change the e_type field in the ELF header from
> >> >> > > >> ET_EXEC to ET_REL so that .btf.vmlinux.bin.o can be accepted by lld.
> >> >> > > >>
> >> >> > > >> Fixes: df786c9b9476 ("bpf: Force .BTF section start to zero when dumping from vmlinux")
> >> >> > > >> Cc: Stanislav Fomichev <sdf@google.com>
> >> >> > > >> Cc: Nick Desaulniers <ndesaulniers@google.com>
> >> >> > > >> Reported-by: Nathan Chancellor <natechancellor@gmail.com>
> >> >> > > >> Link: https://github.com/ClangBuiltLinux/linux/issues/871
> >> >> > > >> Signed-off-by: Fangrui Song <maskray@google.com>
> >> >> > > >> ---
> >> >> > > >>   scripts/link-vmlinux.sh | 14 +++-----------
> >> >> > > >>   1 file changed, 3 insertions(+), 11 deletions(-)
> >> >> > > >>
> >> >> > > >> diff --git a/scripts/link-vmlinux.sh b/scripts/link-vmlinux.sh
> >> >> > > >> index dd484e92752e..b23313944c89 100755
> >> >> > > >> --- a/scripts/link-vmlinux.sh
> >> >> > > >> +++ b/scripts/link-vmlinux.sh
> >> >> > > >> @@ -120,18 +120,10 @@ gen_btf()
> >> >> > > >>
> >> >> > > >>         info "BTF" ${2}
> >> >> > > >>         vmlinux_link ${1}
> >> >> > > >> -       LLVM_OBJCOPY=${OBJCOPY} ${PAHOLE} -J ${1}
> >> >> > > >> +       ${PAHOLE} -J ${1}
> >> >> > > >
> >> >> > > >I'm not sure why you are touching this line at all. LLVM_OBJCOPY part
> >> >> > > >is necessary, pahole assumes llvm-objcopy by default, but that can
> >> >> > > >(and should for objcopy) be overridden with LLVM_OBJCOPY.
> >> >> > >
> >> >> > > Why is LLVM_OBJCOPY assumed? What if llvm-objcopy is not available?
> >> >> >
> >> >> > It's pahole assumption that we have to live with. pahole assumes
> >> >> > llvm-objcopy internally, unless it is overriden with LLVM_OBJCOPY env
> >> >> > var. So please revert this line otherwise you are breaking it for GCC
> >> >> > objcopy case.
> >> >>
> >> >> Acknowledged. Uploaded v3.
> >> >>
> >> >> I added back 2>/dev/null which was removed by a previous change, to
> >> >> suppress GNU objcopy warnings. The warnings could be annoying in V=1
> >> >> output.
> >> >>
> >> >> > > This is confusing that one tool assumes llvm-objcopy while the block
> >> >> > > below immediately uses GNU objcopy (without this patch).
> >> >> > >
> >> >> > > e83b9f55448afce3fe1abcd1d10db9584f8042a6 "kbuild: add ability to
> >> >> > > generate BTF type info for vmlinux" does not say why LLVM_OBJCOPY is
> >> >> > > set.
> >> >> > >
> >> >> > > >>
> >> >> > > >> -       # dump .BTF section into raw binary file to link with final vmlinux
> >> >> > > >> -       bin_arch=$(LANG=C ${OBJDUMP} -f ${1} | grep architecture | \
> >> >> > > >> -               cut -d, -f1 | cut -d' ' -f2)
> >> >> > > >> -       bin_format=$(LANG=C ${OBJDUMP} -f ${1} | grep 'file format' | \
> >> >> > > >> -               awk '{print $4}')
> >> >> > > >> -       ${OBJCOPY} --change-section-address .BTF=0 \
> >> >> > > >> -               --set-section-flags .BTF=alloc -O binary \
> >> >> > > >> -               --only-section=.BTF ${1} .btf.vmlinux.bin
> >> >> > > >> -       ${OBJCOPY} -I binary -O ${bin_format} -B ${bin_arch} \
> >> >> > > >> -               --rename-section .data=.BTF .btf.vmlinux.bin ${2}
> >> >> > > >> +       # Extract .BTF section, change e_type to ET_REL, to link with final vmlinux
> >> >> > > >> +       ${OBJCOPY} --only-section=.BTF ${1} ${2} && printf '\1' | dd of=${2} conv=notrunc bs=1 seek=16
> >> >> > > >>   }
> >> >> > > >>
> >> >> > > >>   # Create ${2} .o file with all symbols from the ${1} object file
> >> >> > > >> --
> >> >> > > >> 2.25.1.481.gfbce0eb801-goog
> >> >> > > >>
> >> >>
> >> >> From ca3597477542453e9f63185c27c162da081a4baf Mon Sep 17 00:00:00 2001
> >> >> From: Fangrui Song <maskray@google.com>
> >> >> Date: Mon, 16 Mar 2020 22:38:23 -0700
> >> >> Subject: [PATCH bpf v3] bpf: Support llvm-objcopy and llvm-objdump for
> >> >>  vmlinux BTF
> >> >>
> >> >> Simplify gen_btf logic to make it work with llvm-objcopy and llvm-objdump.
> >> >> Add 2>/dev/null to suppress GNU objcopy (but not llvm-objcopy) warnings
> >> >> "empty loadable segment detected at vaddr=0xffffffff81000000, is this intentional?"
> >> >> Our use of --only-section drops many SHF_ALLOC sections which will essentially nullify
> >> >> program headers. When used as linker input, program headers are simply
> >> >> ignored.
> >> >>
> >> >> We use a dd command to change the e_type field in the ELF header from
> >> >> ET_EXEC to ET_REL so that .btf.vmlinux.bin.o can be accepted by lld.
> >> >> Accepting ET_EXEC as an input file is an extremely rare GNU ld feature
> >> >> that lld does not intend to support, because this is very error-prone.
> >> >>
> >> >> Fixes: df786c9b9476 ("bpf: Force .BTF section start to zero when dumping from vmlinux")
> >> >> Cc: Stanislav Fomichev <sdf@google.com>
> >> >> Cc: Nick Desaulniers <ndesaulniers@google.com>
> >> >> Reported-by: Nathan Chancellor <natechancellor@gmail.com>
> >> >> Link: https://github.com/ClangBuiltLinux/linux/issues/871
> >> >> Signed-off-by: Fangrui Song <maskray@google.com>
> >> >> ---
> >> >>  scripts/link-vmlinux.sh | 12 ++----------
> >> >>  1 file changed, 2 insertions(+), 10 deletions(-)
> >> >>
> >> >> diff --git a/scripts/link-vmlinux.sh b/scripts/link-vmlinux.sh
> >> >> index dd484e92752e..c3e808a89d4a 100755
> >> >> --- a/scripts/link-vmlinux.sh
> >> >> +++ b/scripts/link-vmlinux.sh
> >> >> @@ -122,16 +122,8 @@ gen_btf()
> >> >>      vmlinux_link ${1}
> >> >>      LLVM_OBJCOPY=${OBJCOPY} ${PAHOLE} -J ${1}
> >> >> -    # dump .BTF section into raw binary file to link with final vmlinux
> >> >> -    bin_arch=$(LANG=C ${OBJDUMP} -f ${1} | grep architecture | \
> >> >> -            cut -d, -f1 | cut -d' ' -f2)
> >> >> -    bin_format=$(LANG=C ${OBJDUMP} -f ${1} | grep 'file format' | \
> >> >> -            awk '{print $4}')
> >> >> -    ${OBJCOPY} --change-section-address .BTF=0 \
> >> >> -            --set-section-flags .BTF=alloc -O binary \
> >> >> -            --only-section=.BTF ${1} .btf.vmlinux.bin
> >> >> -    ${OBJCOPY} -I binary -O ${bin_format} -B ${bin_arch} \
> >> >> -            --rename-section .data=.BTF .btf.vmlinux.bin ${2}
> >> >> +    # Extract .BTF section, change e_type to ET_REL, to link with final vmlinux
> >> >> +    ${OBJCOPY} --only-section=.BTF ${1} ${2} 2> /dev/null && printf '\1' | dd of=${2} conv=notrunc bs=1 seek=16
> >> >No, it doesn't work unfortunately, I get "in-kernel BTF is malformed"
> >> >from the kernel.
> >> >
> >> >I think that's because -O binary adds the following:
> >> >$ nm .btf.vmxlinux.bin
> >> >00000000002f7bc9 D _binary__btf_vmlinux_bin_end
> >> >00000000002f7bc9 A _binary__btf_vmlinux_bin_size
> >> >0000000000000000 D _binary__btf_vmlinux_bin_start
> >> >
> >> >While non-binary mode doesn't:
> >> >$ nm .btf.vmxlinux.bin
> >> >
> >> >We don't add them manually in the linker map and expect objcopy to add
> >> >them, see:
> >> >https://git.kernel.org/pub/scm/linux/kernel/git/bpf/bpf-next.git/tree/kernel/bpf/btf.c#n3480
> >>
> >> Attached v4.
> >>
> >> * Added status=none to the dd command to suppress stderr output.
> >> * `objcopy -I binary` synthesized symbols are only used in BTF, not
> >> elsewhere. I think we can replace it with a more common trick,
> >> __start_$sectionname __stop_$sectionname.
> >> * GNU ld<2.23 can define __start_BTF and __stop_BTF as SHN_ABS.
> >>    I think it is totally fine for a SHN_ABS symbol to be referenced by an
> >>    R_X86_64_32S (absolute relocation), but arch/x86/tools/relocs.c
> >>    contains an unnecessarily rigid check that rejects this.
> >>
> >>    ...
> >>    Invalid absolute R_X86_64_32S relocation: __start_BTF
> >>    make[3]: *** [arch/x86/boot/compressed/Makefile:123:
> >>    arch/x86/boot/compressed/vmlinux.relocs] Error 1
> >>
> >>    Since we are going to bump binutils version requirement to 2.23, which
> >>    will completely avoid the issue. I will not mention it again.
> >>    https://lore.kernel.org/lkml/202003161354.538479F16@keescook/
> >>
> >> * I should mention that an orphan BTF (previously .BTF) could trigger
> >>    a --orphan-handling=warn warning. So eventually we might need to
> >>    add an output section description
> >>
> >>      BTF : { *(BTF) }
> >>
> >>    to the vmlinux linker script for every arch.
> >>    I'll not do that in this patch, though.
> >>
> >> >
> >> >>  }
> >> >>  # Create ${2} .o file with all symbols from the ${1} object file
> >> >> --
> >> >> 2.25.1.481.gfbce0eb801-goog
> >> >>
> >>
> >>  From 9b694d68fefe041464eccb948f6d246fab67942d Mon Sep 17 00:00:00 2001
> >> From: Fangrui Song <maskray@google.com>
> >> Date: Tue, 17 Mar 2020 13:51:04 -0700
> >> Subject: [PATCH bpf-next v4] bpf: Support llvm-objcopy and
> >>   llvm-objdump for vmlinux BTF
> >>
> >> Simplify gen_btf logic to make it work with llvm-objcopy and llvm-objdump.
> >> The existing 'file format' and 'architecture' parsing logic is brittle
> >> and does not work with llvm-objcopy/llvm-objdump.
> >>
> >> .BTF in .tmp_vmlinux.btf is non-SHF_ALLOC. Add the SHF_ALLOC flag and
> >> rename .BTF to BTF so that C code can reference the section via linker
> >> synthesized __start_BTF and __stop_BTF. This fixes a small problem that
> >> previous .BTF had the SHF_WRITE flag. Additionally, `objcopy -I binary`
> >> synthesized symbols _binary__btf_vmlinux_bin_start and
> >> _binary__btf_vmlinux_bin_start (not used elsewhere) are replaced with
> >> more common __start_BTF and __stop_BTF.
> >>
> >> Add 2>/dev/null because GNU objcopy (but not llvm-objcopy) warns
> >> "empty loadable segment detected at vaddr=0xffffffff81000000, is this intentional?"
> >>
> >> We use a dd command to change the e_type field in the ELF header from
> >> ET_EXEC to ET_REL so that lld will accept .btf.vmlinux.bin.o.  Accepting
> >> ET_EXEC as an input file is an extremely rare GNU ld feature that lld
> >> does not intend to support, because this is error-prone.
> >>
> >> Fixes: df786c9b9476 ("bpf: Force .BTF section start to zero when dumping from vmlinux")
> >> Cc: Stanislav Fomichev <sdf@google.com>
> >> Cc: Nick Desaulniers <ndesaulniers@google.com>
> >> Reported-by: Nathan Chancellor <natechancellor@gmail.com>
> >> Link: https://github.com/ClangBuiltLinux/linux/issues/871
> >> Signed-off-by: Fangrui Song <maskray@google.com>
> >> ---
> >>   kernel/bpf/btf.c        |  9 ++++-----
> >>   kernel/bpf/sysfs_btf.c  | 11 +++++------
> >>   scripts/link-vmlinux.sh | 16 ++++++----------
> >>   3 files changed, 15 insertions(+), 21 deletions(-)
> >>
> >> diff --git a/kernel/bpf/btf.c b/kernel/bpf/btf.c
> >> index 787140095e58..51fff49de561 100644
> >> --- a/kernel/bpf/btf.c
> >> +++ b/kernel/bpf/btf.c
> >> @@ -3477,8 +3477,8 @@ static struct btf *btf_parse(void __user *btf_data, u32 btf_data_size,
> >>         return ERR_PTR(err);
> >>   }
> >>
> >> -extern char __weak _binary__btf_vmlinux_bin_start[];
> >> -extern char __weak _binary__btf_vmlinux_bin_end[];
> >> +extern char __weak __start_BTF[];
> >> +extern char __weak __stop_BTF[];
> >>   extern struct btf *btf_vmlinux;
> >>
> >>   #define BPF_MAP_TYPE(_id, _ops)
> >> @@ -3605,9 +3605,8 @@ struct btf *btf_parse_vmlinux(void)
> >>         }
> >>         env->btf = btf;
> >>
> >> -       btf->data = _binary__btf_vmlinux_bin_start;
> >> -       btf->data_size = _binary__btf_vmlinux_bin_end -
> >> -               _binary__btf_vmlinux_bin_start;
> >> +       btf->data = __start_BTF;
> >> +       btf->data_size = __stop_BTF - __start_BTF;
> >>
> >>         err = btf_parse_hdr(env);
> >>         if (err)
> >> diff --git a/kernel/bpf/sysfs_btf.c b/kernel/bpf/sysfs_btf.c
> >> index 7ae5dddd1fe6..3b495773de5a 100644
> >> --- a/kernel/bpf/sysfs_btf.c
> >> +++ b/kernel/bpf/sysfs_btf.c
> >> @@ -9,15 +9,15 @@
> >>   #include <linux/sysfs.h>
> >>
> >>   /* See scripts/link-vmlinux.sh, gen_btf() func for details */
> >> -extern char __weak _binary__btf_vmlinux_bin_start[];
> >> -extern char __weak _binary__btf_vmlinux_bin_end[];
> >> +extern char __weak __start_BTF[];
> >> +extern char __weak __stop_BTF[];
> >>
> >>   static ssize_t
> >>   btf_vmlinux_read(struct file *file, struct kobject *kobj,
> >>                  struct bin_attribute *bin_attr,
> >>                  char *buf, loff_t off, size_t len)
> >>   {
> >> -       memcpy(buf, _binary__btf_vmlinux_bin_start + off, len);
> >> +       memcpy(buf, __start_BTF + off, len);
> >>         return len;
> >>   }
> >>
> >> @@ -30,15 +30,14 @@ static struct kobject *btf_kobj;
> >>
> >>   static int __init btf_vmlinux_init(void)
> >>   {
> >> -       if (!_binary__btf_vmlinux_bin_start)
> >> +       if (!__start_BTF)
> >>                 return 0;
> >>
> >>         btf_kobj = kobject_create_and_add("btf", kernel_kobj);
> >>         if (!btf_kobj)
> >>                 return -ENOMEM;
> >>
> >> -       bin_attr_btf_vmlinux.size = _binary__btf_vmlinux_bin_end -
> >> -                                   _binary__btf_vmlinux_bin_start;
> >> +       bin_attr_btf_vmlinux.size = __stop_BTF - __start_BTF;
> >>
> >>         return sysfs_create_bin_file(btf_kobj, &bin_attr_btf_vmlinux);
> >>   }
> >> diff --git a/scripts/link-vmlinux.sh b/scripts/link-vmlinux.sh
> >> index dd484e92752e..c0d2ecf1bff7 100755
> >> --- a/scripts/link-vmlinux.sh
> >> +++ b/scripts/link-vmlinux.sh
> >> @@ -122,16 +122,12 @@ gen_btf()
> >>         vmlinux_link ${1}
> >>         LLVM_OBJCOPY=${OBJCOPY} ${PAHOLE} -J ${1}
> >>
> >> -       # dump .BTF section into raw binary file to link with final vmlinux
> >> -       bin_arch=$(LANG=C ${OBJDUMP} -f ${1} | grep architecture | \
> >> -               cut -d, -f1 | cut -d' ' -f2)
> >> -       bin_format=$(LANG=C ${OBJDUMP} -f ${1} | grep 'file format' | \
> >> -               awk '{print $4}')
> >> -       ${OBJCOPY} --change-section-address .BTF=0 \
> >> -               --set-section-flags .BTF=alloc -O binary \
> >> -               --only-section=.BTF ${1} .btf.vmlinux.bin
> >> -       ${OBJCOPY} -I binary -O ${bin_format} -B ${bin_arch} \
> >> -               --rename-section .data=.BTF .btf.vmlinux.bin ${2}
> >> +       # Extract .BTF, add SHF_ALLOC, rename to BTF so that we can reference
> >> +       # it via linker synthesized __start_BTF and __stop_BTF. Change e_type
> >> +       # to ET_REL so that it can be used to link final vmlinux.
> >> +       ${OBJCOPY} --only-section=.BTF --set-section-flags .BTF=alloc,readonly \
> >> +               --rename-section .BTF=BTF ${1} ${2} 2>/dev/null && \
> >
> >You can't just rename .BTF into BTF. ".BTF" is part of BTF
> >specification, tools like bpftool rely on that specific name. Libbpf
> >relies on this name as well. It cannot be changed. Please stop making
> >arbitrary changes and breaking stuff, please.
>
> I can't find anything which really assumes ".BTF" under tools/bpf/bpftool

It's in libbpf, which bpftool uses to load and work with BTF. See
tools/lib/bpf/btf.{c,h}. And at this point there are other tools and
apps that rely on .BTF section, so there is absolutely no way we are
going to rename this, I'm sorry.

>
> % grep -r '\.BTF'
> Documentation/bpftool-btf.rst:            .BTF section with well-defined BTF binary format data,
>
> >
> >> +               printf '\1' | dd of=${2} conv=notrunc bs=1 seek=16 status=none
> >
> >I wonder if there is any less hacky and more obvious way to achieve this?..
>
> No. As a maintainer of lld/ELF, I abandoned https://reviews.llvm.org/D76174 .
> Also as a maintainer of LLVM binary utilities, I have to complain the whole
> scheme is really hacky and did not get enough scrutiny when they were merged.
>
> A previous comment said pahole somehow relied on llvm-objcopy so LLVM_OBJCOPY
> is used, while llvm-objcopy/llvm-objdump are not really supported...  Note, on

pahole relies on llvm-objcopy internally to add/replace .BTF section.
Instead of doubting everything I'm saying, you could just have grepped
for 'llvm-objcopy' in pahole sources. It can be done differently, I'm
sure, but we'll need to support old versions of pahole anyways, so
LLVM_OBJCOPY=${OBJCOPY} parts stays, however confusing it might look.

> March 16, I just pushed https://reviews.llvm.org/D76046 to make llvm-objdump
> print bfdnames to some part of the existing hacks happy...
>
> I am trying my best to make this stuff better.
> BTF, when merged into LLVM in December 2018, was not really the best example demonstrating how a subproject should be merged...
> OK, I'll stop complaining here.

We should make sure that we are not making it worse first, don't you
agree? I think it's more important, because there are many happy users
already and breaking them is not an option. It's v5 of your patch and
every single revision is broken, so I'm not sure you are the one to
complain here. The least you can do to test this is to build kernel
with BTF and run selftests/bpf, not just throw your patch out in hopes
that others will point out all the issues.

>
> commit cb0cc635c7a9fa8a3a0f75d4d896721819c63add "powerpc: Include .BTF section"
> places .BTF somewhere in the writable section area, so if you insist on ".BTF",
> I'll make a similar change and add some stuff to arch/x86/kernel/vmlinux.lds.S
>
> >Also, this script has `set -e` at the top, so you don't have to chain
> >all command with &&, you put this on separate line with the same
> >effect, but it will look less confusing.
>
> Not using section "BTF" has the downside that we have to add
>
> .BTF : {
>    PROVIDE(__start_BTF = .);
>    *(.BTF)
>    PROVIDE(__stop_BTF = .);
> }
>
> to every arch/*/kernel/vmlinux.lds.S which can use BTF.

It doesn't look all that terrible, so why not, I guess? But just
curious, why this is not required for "BTF", but required for ".BTF"?
Not very familiar with linker scripts setup in kernel.

>
> >>   }
> >>
> >>   # Create ${2} .o file with all symbols from the ${1} object file
> >> --
> >> 2.25.1.481.gfbce0eb801-goog
> >>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAEf4BzYBgG4dyhL7Bj21CU4HO9qpm_N7SZkQekTTK6pJBA1ZJA%40mail.gmail.com.
