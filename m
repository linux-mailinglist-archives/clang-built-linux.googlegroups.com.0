Return-Path: <clang-built-linux+bncBCTYRDEG7MGBBP56YXZQKGQEKC3RGPA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa37.google.com (mail-vk1-xa37.google.com [IPv6:2607:f8b0:4864:20::a37])
	by mail.lfdr.de (Postfix) with ESMTPS id D76CE189238
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Mar 2020 00:37:36 +0100 (CET)
Received: by mail-vk1-xa37.google.com with SMTP id 193sf8163988vkx.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Mar 2020 16:37:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584488256; cv=pass;
        d=google.com; s=arc-20160816;
        b=T9mmv1XFrQ/u3+G2cz6XD9l0LUArRDggh/bxdwI+jUjgnaaldVL1nr6GgpdT+KZQO7
         LtA7ZFQEo6dmHQxiP5m4vsm/NgstRciT1koqkCSyVZMfOX25AGGwFpr25S0sD+coxUVs
         AGKNfontuEou12xeEZu9rilNYD/1ianmpONkQWjD7zDpkfVpWKhNPVC+AnIJaKoPIf0G
         pjj9G7vuu26HQYZ/Pj6PXJZ+s/vH/haebsaiUmZggbKxc6QMhPQVyoNxd1kvmFMyWSOJ
         5auH5UTKz2ZrA6cVHJaIg7+ipRERH5m3tIptWSXqriNtNdUV0tAlUSHhC4jiUxFBjkoj
         ZSxA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=nFJfEC50J6yP7JBihhyQ4xZlKm3RYdcBXGzjfGfSsmY=;
        b=TvS5KzDTJ1xD4FeFaYDp8JGAkCYatZpCCU5H8P5NuS7Dgxp0UqTC01XrGDehD2OMPT
         //ErqB4B9moU2dgNvGm2v3lFPgG1Ug9dce3BjmuaqoV4BaGdvU99yohcaWIZ8bWL6rpF
         oyokzB26rZIfJiMVq9jnyivrC2EAYR5KVtZAwFTH3JRFBLB3IVJM8JpGqBB3xddehR5g
         KaBNPA1Thgptw+tFmIGaQCJZNEqCU7kAsjFwuxEOMNx5Bzykn0UHu1+gP0fsynGUfQa4
         xsoG2mqL0fGFys49mzfBlHeloNoGpFB2H3f69dlsjw6h6saihF1cgJEsO62zY1EcDJ86
         +tgA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UF1P1IIs;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::f42 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nFJfEC50J6yP7JBihhyQ4xZlKm3RYdcBXGzjfGfSsmY=;
        b=kgRp+Bxh5QfnFvLAvpmTI++OSrJMSwyiIAXUeY0/rFg7+ec6gQfWxUWGJsF9TwvA2H
         3/rfHe3xhCBZvnjAzTnVVMexvFGbByo/ho5/NSWZRBjQ63N2yo8+Z8hMBNEGHov88yNy
         Nuqj2/HwHPSTGxd5W5PX2AThJfBMOzAU7V7M3wsU2dTY3s6+lOtgwPI+ghJl0udM8M8T
         4dXIhQtFk0x5xKyoD4x1BcP+vx/7elWTo8IDh6Q02dBO83s+XS8t1h62adqeYxhUcok+
         a4yIFKVAlfIMRe5to7dpay50/pNkuojfQ5jnAysO8YUsLU7Qd4iF1TIXAMw1jGxNGA98
         x5pQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nFJfEC50J6yP7JBihhyQ4xZlKm3RYdcBXGzjfGfSsmY=;
        b=Uo6hiAwrV3uESjxsbTYLZ9lg7Hr57ReLJIZYcIg2BQF3lCq2YFKPdy35CAcI+/DBKN
         ZnSjp4T4Q97bWDf110zKxXj+IfpqN9MUco2CTVl2CQSUTGUchCv6XQY+cIkhcTNMme9X
         FY+6EpaQ5x2Uje9qhthpl3OqwpZ1n5JIwZ8VnoQApJt7mLaHNDvqTS7kjLCahPE0JY7u
         ZNGdkeckfn1KBPQa5RriO9Hr+1ffaqTbwjN9snFhUE8pUZC7ptLAdS/nJ/WdE3rz3xHg
         pwtY0fTmmJ5o3osGy0kdiC4AwKlpMwKGGxUJtr8EBaQhyfAmFLrPvZ09vz15Xm86jbEf
         9nQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nFJfEC50J6yP7JBihhyQ4xZlKm3RYdcBXGzjfGfSsmY=;
        b=M6Bcb2A2NhKenjaINfGgN42u8cePkL/9DOB7EFXIKDdxjafpnRx5Vg8NkGwzDYRSP+
         ptZ4ejaXK9xMmjD84ZEo2d7ADjnA2de78O6X6/df5syNoy0ZOzf+z8R/SKrErZOvWJQt
         Pg+kEji3VogvGtJD6T6gBHmexGDr6XIqsWbY8gXMFpRbLnr95E7Oogc9MXV8Y3kBhPeC
         bN7OCDsQsJuyfhbX1CBSDhDi5AmF+4ec7A0GZ1zXE/Yyw77CZBzcnCMglJbtFKLgDoZX
         p3wY5XaRfH1mgW6qNe2jDO9J4ecBRvzSa8I6bSOfnOWht0Bz0WeuYY8TgX2TYzRtWzpv
         h04A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ3TmXmWCCuHxwecBEKtIFIpJrwIs8oNSDXlWjSsOVzlX5SgpV/M
	TtZmHudPPLpj9O/ISfQ4kVw=
X-Google-Smtp-Source: ADFU+vveSEb7jTeDQPLs0vrsV9tNAlDgmbI1TaKZuVZWeWq86SOOaxFzXlWK8k6MBDGUH3GOyi+oIQ==
X-Received: by 2002:ab0:7792:: with SMTP id x18mr1160883uar.116.1584488255849;
        Tue, 17 Mar 2020 16:37:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:e359:: with SMTP id s25ls152386vsm.11.gmail; Tue, 17 Mar
 2020 16:37:35 -0700 (PDT)
X-Received: by 2002:a67:ed86:: with SMTP id d6mr1101092vsp.53.1584488255457;
        Tue, 17 Mar 2020 16:37:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584488255; cv=none;
        d=google.com; s=arc-20160816;
        b=IC2gTYIxsIJ+5eoChHkAdlUU/FQ0VZpBPqYcSt3cg5aDvQJGJNjmks2zWnrZsGjNZe
         1I8aKKv6n2yLaCiKHKdcF1eHuUKsUnVdcdW9OGxnemwpK3czeShSwc4FILFEH6HsPg+/
         JhX4da+EY/v2MpEIaeES8NB4eGaTbfVLwoKS4g8FE/DUMH/pDO4y+zSv/5NhiEa7SBCd
         hMGrJ8kCKbTHkIzitvKRsBLSoZ7Kb3B7FlbpQjn+rjG5CnD1yx6YWSpwZh7agBXKU7np
         kC/gaT83Mn17UcaPdDzkCYFxkgbWR/G2SHy/dxMpHwJNXQZOfpZXQGOs0o1CKBHtRS5o
         FKCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=jY0YbtjBVs9W7pk4a7CdhR2cXOMq3qVQkDrGDkl3B7Q=;
        b=NUZqnPgzzkZP/3ZoDDkfSAjL4j3ZCCk58OUAU4xziCZvZR1f2NSpnLEwa4JJ6l98M/
         CrnNmEDfSvJbe25q4hfFvgm4KQEHfaUwGL0h6njH22aQ8OcUZxVrDt4zaEVYcFW1vO0w
         yg0WFtjzQeIodrKLPLr9Sp5PG0/v6Cfy7M9gysB3IgxDPPVddIUc2Wgg/B5lEg1UJIwx
         HguUK3AHU330NF45xaKMqsP6Gv1V6qAomDxBq6lPxT5oC/fkbyRRpTsHDhp1QfYdRmJ3
         h3nCgFBPaKeWms9XmFq2c6f6CIhyhjvSlXBxq6zuk9xr3g1K5gK9ZFj1px+dOpCCopzP
         0b8Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UF1P1IIs;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::f42 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qv1-xf42.google.com (mail-qv1-xf42.google.com. [2607:f8b0:4864:20::f42])
        by gmr-mx.google.com with ESMTPS id g4si268338vke.3.2020.03.17.16.37.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Mar 2020 16:37:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::f42 as permitted sender) client-ip=2607:f8b0:4864:20::f42;
Received: by mail-qv1-xf42.google.com with SMTP id z13so5790503qvw.3
        for <clang-built-linux@googlegroups.com>; Tue, 17 Mar 2020 16:37:35 -0700 (PDT)
X-Received: by 2002:a05:6214:11af:: with SMTP id u15mr1566862qvv.247.1584488254899;
 Tue, 17 Mar 2020 16:37:34 -0700 (PDT)
MIME-Version: 1.0
References: <20200317011654.zkx5r7so53skowlc@google.com> <CAEf4BzYTJqWU++QnQupxFBWGSMPfGt6r-5u9jbeLnEF2ipw+Mw@mail.gmail.com>
 <20200317033701.w7jwos7mvfnde2t2@google.com> <CAEf4BzYyimAo2_513kW6hrDWwmzSDhNjTYksjy01ugKKTPt+qA@mail.gmail.com>
 <20200317052120.diawg3a75kxl5hkn@google.com> <CAEf4BzYepRs4uB9vd1SCFY81H5S1kbvw2n9bKNeh-ORK_kutSg@mail.gmail.com>
 <20200317054359.snyyojyf6gjxufij@google.com> <20200317162405.GB2459609@mini-arch.hsd1.ca.comcast.net>
 <20200317205832.lna5phig2ed3bf2n@google.com>
In-Reply-To: <20200317205832.lna5phig2ed3bf2n@google.com>
From: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Date: Tue, 17 Mar 2020 16:37:23 -0700
Message-ID: <CAEf4BzY8uzcpS8t0JW70V-DrrZ4MbeXOyEtCrpTtQyHW+uQcRg@mail.gmail.com>
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
 header.i=@gmail.com header.s=20161025 header.b=UF1P1IIs;       spf=pass
 (google.com: domain of andrii.nakryiko@gmail.com designates
 2607:f8b0:4864:20::f42 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
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

On Tue, Mar 17, 2020 at 1:58 PM Fangrui Song <maskray@google.com> wrote:
>
>
> On 2020-03-17, Stanislav Fomichev wrote:
> >On 03/16, Fangrui Song wrote:
> >> On 2020-03-16, Andrii Nakryiko wrote:
> >> > On Mon, Mar 16, 2020 at 10:21 PM Fangrui Song <maskray@google.com> wrote:
> >> > >
> >> > >
> >> > > On 2020-03-16, Andrii Nakryiko wrote:
> >> > > >On Mon, Mar 16, 2020 at 8:37 PM Fangrui Song <maskray@google.com> wrote:
> >> > > >>
> >> > > >> On 2020-03-16, Andrii Nakryiko wrote:
> >> > > >> >On Mon, Mar 16, 2020 at 6:17 PM Fangrui Song <maskray@google.com> wrote:
> >> > > >> >>
> >> > > >> >> Simplify gen_btf logic to make it work with llvm-objcopy and
> >> > > >> >> llvm-objdump.  We just need to retain one section .BTF. To do so, we can
> >> > > >> >> use a simple objcopy --only-section=.BTF instead of jumping all the
> >> > > >> >> hoops via an architecture-less binary file.
> >> > > >> >>
> >> > > >> >> We use a dd comment to change the e_type field in the ELF header from
> >> > > >> >> ET_EXEC to ET_REL so that .btf.vmlinux.bin.o will be accepted by lld.
> >> > > >> >>
> >> > > >> >> Fixes: df786c9b9476 ("bpf: Force .BTF section start to zero when dumping from vmlinux")
> >> > > >> >> Cc: Stanislav Fomichev <sdf@google.com>
> >> > > >> >> Cc: Nick Desaulniers <ndesaulniers@google.com>
> >> > > >> >> Tested-by: Nick Desaulniers <ndesaulniers@google.com>
> >> > > >> >> Reported-by: Nathan Chancellor <natechancellor@gmail.com>
> >> > > >> >> Link: https://github.com/ClangBuiltLinux/linux/issues/871
> >> > > >> >> Signed-off-by: Fangrui Song <maskray@google.com>
> >> > > >> >> ---
> >> > > >> >>  scripts/link-vmlinux.sh | 13 ++-----------
> >> > > >> >>  1 file changed, 2 insertions(+), 11 deletions(-)
> >> > > >> >>
> >> > > >> >> diff --git a/scripts/link-vmlinux.sh b/scripts/link-vmlinux.sh
> >> > > >> >> index dd484e92752e..84be8d7c361d 100755
> >> > > >> >> --- a/scripts/link-vmlinux.sh
> >> > > >> >> +++ b/scripts/link-vmlinux.sh
> >> > > >> >> @@ -120,18 +120,9 @@ gen_btf()
> >> > > >> >>
> >> > > >> >>         info "BTF" ${2}
> >> > > >> >>         vmlinux_link ${1}
> >> > > >> >> -       LLVM_OBJCOPY=${OBJCOPY} ${PAHOLE} -J ${1}
> >> > > >> >
> >> > > >> >Is it really tested? Seems like you just dropped .BTF generation step
> >> > > >> >completely...
> >> > > >>
> >> > > >> Sorry, dropped the whole line:/
> >> > > >> I don't know how to test .BTF . I can only check readelf -S...
> >> > > >>
> >> > > >> Attached the new patch.
> >> > > >>
> >> > > >>
> >> > > >>  From 02afb9417d4f0f8d2175c94fc3797a94a95cc248 Mon Sep 17 00:00:00 2001
> >> > > >> From: Fangrui Song <maskray@google.com>
> >> > > >> Date: Mon, 16 Mar 2020 18:02:31 -0700
> >> > > >> Subject: [PATCH bpf v2] bpf: Support llvm-objcopy and llvm-objdump for
> >> > > >>   vmlinux BTF
> >> > > >>
> >> > > >> Simplify gen_btf logic to make it work with llvm-objcopy and llvm-objdump.
> >> > > >> We use a dd comment to change the e_type field in the ELF header from
> >> > > >> ET_EXEC to ET_REL so that .btf.vmlinux.bin.o can be accepted by lld.
> >> > > >>
> >> > > >> Fixes: df786c9b9476 ("bpf: Force .BTF section start to zero when dumping from vmlinux")
> >> > > >> Cc: Stanislav Fomichev <sdf@google.com>
> >> > > >> Cc: Nick Desaulniers <ndesaulniers@google.com>
> >> > > >> Reported-by: Nathan Chancellor <natechancellor@gmail.com>
> >> > > >> Link: https://github.com/ClangBuiltLinux/linux/issues/871
> >> > > >> Signed-off-by: Fangrui Song <maskray@google.com>
> >> > > >> ---
> >> > > >>   scripts/link-vmlinux.sh | 14 +++-----------
> >> > > >>   1 file changed, 3 insertions(+), 11 deletions(-)
> >> > > >>
> >> > > >> diff --git a/scripts/link-vmlinux.sh b/scripts/link-vmlinux.sh
> >> > > >> index dd484e92752e..b23313944c89 100755
> >> > > >> --- a/scripts/link-vmlinux.sh
> >> > > >> +++ b/scripts/link-vmlinux.sh
> >> > > >> @@ -120,18 +120,10 @@ gen_btf()
> >> > > >>
> >> > > >>         info "BTF" ${2}
> >> > > >>         vmlinux_link ${1}
> >> > > >> -       LLVM_OBJCOPY=${OBJCOPY} ${PAHOLE} -J ${1}
> >> > > >> +       ${PAHOLE} -J ${1}
> >> > > >
> >> > > >I'm not sure why you are touching this line at all. LLVM_OBJCOPY part
> >> > > >is necessary, pahole assumes llvm-objcopy by default, but that can
> >> > > >(and should for objcopy) be overridden with LLVM_OBJCOPY.
> >> > >
> >> > > Why is LLVM_OBJCOPY assumed? What if llvm-objcopy is not available?
> >> >
> >> > It's pahole assumption that we have to live with. pahole assumes
> >> > llvm-objcopy internally, unless it is overriden with LLVM_OBJCOPY env
> >> > var. So please revert this line otherwise you are breaking it for GCC
> >> > objcopy case.
> >>
> >> Acknowledged. Uploaded v3.
> >>
> >> I added back 2>/dev/null which was removed by a previous change, to
> >> suppress GNU objcopy warnings. The warnings could be annoying in V=1
> >> output.
> >>
> >> > > This is confusing that one tool assumes llvm-objcopy while the block
> >> > > below immediately uses GNU objcopy (without this patch).
> >> > >
> >> > > e83b9f55448afce3fe1abcd1d10db9584f8042a6 "kbuild: add ability to
> >> > > generate BTF type info for vmlinux" does not say why LLVM_OBJCOPY is
> >> > > set.
> >> > >
> >> > > >>
> >> > > >> -       # dump .BTF section into raw binary file to link with final vmlinux
> >> > > >> -       bin_arch=$(LANG=C ${OBJDUMP} -f ${1} | grep architecture | \
> >> > > >> -               cut -d, -f1 | cut -d' ' -f2)
> >> > > >> -       bin_format=$(LANG=C ${OBJDUMP} -f ${1} | grep 'file format' | \
> >> > > >> -               awk '{print $4}')
> >> > > >> -       ${OBJCOPY} --change-section-address .BTF=0 \
> >> > > >> -               --set-section-flags .BTF=alloc -O binary \
> >> > > >> -               --only-section=.BTF ${1} .btf.vmlinux.bin
> >> > > >> -       ${OBJCOPY} -I binary -O ${bin_format} -B ${bin_arch} \
> >> > > >> -               --rename-section .data=.BTF .btf.vmlinux.bin ${2}
> >> > > >> +       # Extract .BTF section, change e_type to ET_REL, to link with final vmlinux
> >> > > >> +       ${OBJCOPY} --only-section=.BTF ${1} ${2} && printf '\1' | dd of=${2} conv=notrunc bs=1 seek=16
> >> > > >>   }
> >> > > >>
> >> > > >>   # Create ${2} .o file with all symbols from the ${1} object file
> >> > > >> --
> >> > > >> 2.25.1.481.gfbce0eb801-goog
> >> > > >>
> >>
> >> From ca3597477542453e9f63185c27c162da081a4baf Mon Sep 17 00:00:00 2001
> >> From: Fangrui Song <maskray@google.com>
> >> Date: Mon, 16 Mar 2020 22:38:23 -0700
> >> Subject: [PATCH bpf v3] bpf: Support llvm-objcopy and llvm-objdump for
> >>  vmlinux BTF
> >>
> >> Simplify gen_btf logic to make it work with llvm-objcopy and llvm-objdump.
> >> Add 2>/dev/null to suppress GNU objcopy (but not llvm-objcopy) warnings
> >> "empty loadable segment detected at vaddr=0xffffffff81000000, is this intentional?"
> >> Our use of --only-section drops many SHF_ALLOC sections which will essentially nullify
> >> program headers. When used as linker input, program headers are simply
> >> ignored.
> >>
> >> We use a dd command to change the e_type field in the ELF header from
> >> ET_EXEC to ET_REL so that .btf.vmlinux.bin.o can be accepted by lld.
> >> Accepting ET_EXEC as an input file is an extremely rare GNU ld feature
> >> that lld does not intend to support, because this is very error-prone.
> >>
> >> Fixes: df786c9b9476 ("bpf: Force .BTF section start to zero when dumping from vmlinux")
> >> Cc: Stanislav Fomichev <sdf@google.com>
> >> Cc: Nick Desaulniers <ndesaulniers@google.com>
> >> Reported-by: Nathan Chancellor <natechancellor@gmail.com>
> >> Link: https://github.com/ClangBuiltLinux/linux/issues/871
> >> Signed-off-by: Fangrui Song <maskray@google.com>
> >> ---
> >>  scripts/link-vmlinux.sh | 12 ++----------
> >>  1 file changed, 2 insertions(+), 10 deletions(-)
> >>
> >> diff --git a/scripts/link-vmlinux.sh b/scripts/link-vmlinux.sh
> >> index dd484e92752e..c3e808a89d4a 100755
> >> --- a/scripts/link-vmlinux.sh
> >> +++ b/scripts/link-vmlinux.sh
> >> @@ -122,16 +122,8 @@ gen_btf()
> >>      vmlinux_link ${1}
> >>      LLVM_OBJCOPY=${OBJCOPY} ${PAHOLE} -J ${1}
> >> -    # dump .BTF section into raw binary file to link with final vmlinux
> >> -    bin_arch=$(LANG=C ${OBJDUMP} -f ${1} | grep architecture | \
> >> -            cut -d, -f1 | cut -d' ' -f2)
> >> -    bin_format=$(LANG=C ${OBJDUMP} -f ${1} | grep 'file format' | \
> >> -            awk '{print $4}')
> >> -    ${OBJCOPY} --change-section-address .BTF=0 \
> >> -            --set-section-flags .BTF=alloc -O binary \
> >> -            --only-section=.BTF ${1} .btf.vmlinux.bin
> >> -    ${OBJCOPY} -I binary -O ${bin_format} -B ${bin_arch} \
> >> -            --rename-section .data=.BTF .btf.vmlinux.bin ${2}
> >> +    # Extract .BTF section, change e_type to ET_REL, to link with final vmlinux
> >> +    ${OBJCOPY} --only-section=.BTF ${1} ${2} 2> /dev/null && printf '\1' | dd of=${2} conv=notrunc bs=1 seek=16
> >No, it doesn't work unfortunately, I get "in-kernel BTF is malformed"
> >from the kernel.
> >
> >I think that's because -O binary adds the following:
> >$ nm .btf.vmxlinux.bin
> >00000000002f7bc9 D _binary__btf_vmlinux_bin_end
> >00000000002f7bc9 A _binary__btf_vmlinux_bin_size
> >0000000000000000 D _binary__btf_vmlinux_bin_start
> >
> >While non-binary mode doesn't:
> >$ nm .btf.vmxlinux.bin
> >
> >We don't add them manually in the linker map and expect objcopy to add
> >them, see:
> >https://git.kernel.org/pub/scm/linux/kernel/git/bpf/bpf-next.git/tree/kernel/bpf/btf.c#n3480
>
> Attached v4.
>
> * Added status=none to the dd command to suppress stderr output.
> * `objcopy -I binary` synthesized symbols are only used in BTF, not
> elsewhere. I think we can replace it with a more common trick,
> __start_$sectionname __stop_$sectionname.
> * GNU ld<2.23 can define __start_BTF and __stop_BTF as SHN_ABS.
>    I think it is totally fine for a SHN_ABS symbol to be referenced by an
>    R_X86_64_32S (absolute relocation), but arch/x86/tools/relocs.c
>    contains an unnecessarily rigid check that rejects this.
>
>    ...
>    Invalid absolute R_X86_64_32S relocation: __start_BTF
>    make[3]: *** [arch/x86/boot/compressed/Makefile:123:
>    arch/x86/boot/compressed/vmlinux.relocs] Error 1
>
>    Since we are going to bump binutils version requirement to 2.23, which
>    will completely avoid the issue. I will not mention it again.
>    https://lore.kernel.org/lkml/202003161354.538479F16@keescook/
>
> * I should mention that an orphan BTF (previously .BTF) could trigger
>    a --orphan-handling=warn warning. So eventually we might need to
>    add an output section description
>
>      BTF : { *(BTF) }
>
>    to the vmlinux linker script for every arch.
>    I'll not do that in this patch, though.
>
> >
> >>  }
> >>  # Create ${2} .o file with all symbols from the ${1} object file
> >> --
> >> 2.25.1.481.gfbce0eb801-goog
> >>
>
>  From 9b694d68fefe041464eccb948f6d246fab67942d Mon Sep 17 00:00:00 2001
> From: Fangrui Song <maskray@google.com>
> Date: Tue, 17 Mar 2020 13:51:04 -0700
> Subject: [PATCH bpf-next v4] bpf: Support llvm-objcopy and
>   llvm-objdump for vmlinux BTF
>
> Simplify gen_btf logic to make it work with llvm-objcopy and llvm-objdump.
> The existing 'file format' and 'architecture' parsing logic is brittle
> and does not work with llvm-objcopy/llvm-objdump.
>
> .BTF in .tmp_vmlinux.btf is non-SHF_ALLOC. Add the SHF_ALLOC flag and
> rename .BTF to BTF so that C code can reference the section via linker
> synthesized __start_BTF and __stop_BTF. This fixes a small problem that
> previous .BTF had the SHF_WRITE flag. Additionally, `objcopy -I binary`
> synthesized symbols _binary__btf_vmlinux_bin_start and
> _binary__btf_vmlinux_bin_start (not used elsewhere) are replaced with
> more common __start_BTF and __stop_BTF.
>
> Add 2>/dev/null because GNU objcopy (but not llvm-objcopy) warns
> "empty loadable segment detected at vaddr=0xffffffff81000000, is this intentional?"
>
> We use a dd command to change the e_type field in the ELF header from
> ET_EXEC to ET_REL so that lld will accept .btf.vmlinux.bin.o.  Accepting
> ET_EXEC as an input file is an extremely rare GNU ld feature that lld
> does not intend to support, because this is error-prone.
>
> Fixes: df786c9b9476 ("bpf: Force .BTF section start to zero when dumping from vmlinux")
> Cc: Stanislav Fomichev <sdf@google.com>
> Cc: Nick Desaulniers <ndesaulniers@google.com>
> Reported-by: Nathan Chancellor <natechancellor@gmail.com>
> Link: https://github.com/ClangBuiltLinux/linux/issues/871
> Signed-off-by: Fangrui Song <maskray@google.com>
> ---
>   kernel/bpf/btf.c        |  9 ++++-----
>   kernel/bpf/sysfs_btf.c  | 11 +++++------
>   scripts/link-vmlinux.sh | 16 ++++++----------
>   3 files changed, 15 insertions(+), 21 deletions(-)
>
> diff --git a/kernel/bpf/btf.c b/kernel/bpf/btf.c
> index 787140095e58..51fff49de561 100644
> --- a/kernel/bpf/btf.c
> +++ b/kernel/bpf/btf.c
> @@ -3477,8 +3477,8 @@ static struct btf *btf_parse(void __user *btf_data, u32 btf_data_size,
>         return ERR_PTR(err);
>   }
>
> -extern char __weak _binary__btf_vmlinux_bin_start[];
> -extern char __weak _binary__btf_vmlinux_bin_end[];
> +extern char __weak __start_BTF[];
> +extern char __weak __stop_BTF[];
>   extern struct btf *btf_vmlinux;
>
>   #define BPF_MAP_TYPE(_id, _ops)
> @@ -3605,9 +3605,8 @@ struct btf *btf_parse_vmlinux(void)
>         }
>         env->btf = btf;
>
> -       btf->data = _binary__btf_vmlinux_bin_start;
> -       btf->data_size = _binary__btf_vmlinux_bin_end -
> -               _binary__btf_vmlinux_bin_start;
> +       btf->data = __start_BTF;
> +       btf->data_size = __stop_BTF - __start_BTF;
>
>         err = btf_parse_hdr(env);
>         if (err)
> diff --git a/kernel/bpf/sysfs_btf.c b/kernel/bpf/sysfs_btf.c
> index 7ae5dddd1fe6..3b495773de5a 100644
> --- a/kernel/bpf/sysfs_btf.c
> +++ b/kernel/bpf/sysfs_btf.c
> @@ -9,15 +9,15 @@
>   #include <linux/sysfs.h>
>
>   /* See scripts/link-vmlinux.sh, gen_btf() func for details */
> -extern char __weak _binary__btf_vmlinux_bin_start[];
> -extern char __weak _binary__btf_vmlinux_bin_end[];
> +extern char __weak __start_BTF[];
> +extern char __weak __stop_BTF[];
>
>   static ssize_t
>   btf_vmlinux_read(struct file *file, struct kobject *kobj,
>                  struct bin_attribute *bin_attr,
>                  char *buf, loff_t off, size_t len)
>   {
> -       memcpy(buf, _binary__btf_vmlinux_bin_start + off, len);
> +       memcpy(buf, __start_BTF + off, len);
>         return len;
>   }
>
> @@ -30,15 +30,14 @@ static struct kobject *btf_kobj;
>
>   static int __init btf_vmlinux_init(void)
>   {
> -       if (!_binary__btf_vmlinux_bin_start)
> +       if (!__start_BTF)
>                 return 0;
>
>         btf_kobj = kobject_create_and_add("btf", kernel_kobj);
>         if (!btf_kobj)
>                 return -ENOMEM;
>
> -       bin_attr_btf_vmlinux.size = _binary__btf_vmlinux_bin_end -
> -                                   _binary__btf_vmlinux_bin_start;
> +       bin_attr_btf_vmlinux.size = __stop_BTF - __start_BTF;
>
>         return sysfs_create_bin_file(btf_kobj, &bin_attr_btf_vmlinux);
>   }
> diff --git a/scripts/link-vmlinux.sh b/scripts/link-vmlinux.sh
> index dd484e92752e..c0d2ecf1bff7 100755
> --- a/scripts/link-vmlinux.sh
> +++ b/scripts/link-vmlinux.sh
> @@ -122,16 +122,12 @@ gen_btf()
>         vmlinux_link ${1}
>         LLVM_OBJCOPY=${OBJCOPY} ${PAHOLE} -J ${1}
>
> -       # dump .BTF section into raw binary file to link with final vmlinux
> -       bin_arch=$(LANG=C ${OBJDUMP} -f ${1} | grep architecture | \
> -               cut -d, -f1 | cut -d' ' -f2)
> -       bin_format=$(LANG=C ${OBJDUMP} -f ${1} | grep 'file format' | \
> -               awk '{print $4}')
> -       ${OBJCOPY} --change-section-address .BTF=0 \
> -               --set-section-flags .BTF=alloc -O binary \
> -               --only-section=.BTF ${1} .btf.vmlinux.bin
> -       ${OBJCOPY} -I binary -O ${bin_format} -B ${bin_arch} \
> -               --rename-section .data=.BTF .btf.vmlinux.bin ${2}
> +       # Extract .BTF, add SHF_ALLOC, rename to BTF so that we can reference
> +       # it via linker synthesized __start_BTF and __stop_BTF. Change e_type
> +       # to ET_REL so that it can be used to link final vmlinux.
> +       ${OBJCOPY} --only-section=.BTF --set-section-flags .BTF=alloc,readonly \
> +               --rename-section .BTF=BTF ${1} ${2} 2>/dev/null && \

You can't just rename .BTF into BTF. ".BTF" is part of BTF
specification, tools like bpftool rely on that specific name. Libbpf
relies on this name as well. It cannot be changed. Please stop making
arbitrary changes and breaking stuff, please.

> +               printf '\1' | dd of=${2} conv=notrunc bs=1 seek=16 status=none

I wonder if there is any less hacky and more obvious way to achieve this?..

Also, this script has `set -e` at the top, so you don't have to chain
all command with &&, you put this on separate line with the same
effect, but it will look less confusing.

>   }
>
>   # Create ${2} .o file with all symbols from the ${1} object file
> --
> 2.25.1.481.gfbce0eb801-goog
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAEf4BzY8uzcpS8t0JW70V-DrrZ4MbeXOyEtCrpTtQyHW%2BuQcRg%40mail.gmail.com.
