Return-Path: <clang-built-linux+bncBCTYRDEG7MGBBJ6BYHZQKGQEKTHNZXY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53f.google.com (mail-pg1-x53f.google.com [IPv6:2607:f8b0:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id 41043187941
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Mar 2020 06:31:21 +0100 (CET)
Received: by mail-pg1-x53f.google.com with SMTP id e26sf8795480pgr.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Mar 2020 22:31:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584423080; cv=pass;
        d=google.com; s=arc-20160816;
        b=gVHD0VERNYSy5aAEPVUVIOweEVsUKqG2caw4KXspscR65ReTtN15+43PpTTWfvFeYI
         iuWhw9nVKIfgTwm7v/u9Ui3+gVbzVKpgSRmvxbvlu8s/FX09wfBc2tOECQLJKdKhXEAj
         m8DuM/9Dmwwic0FCWpbTV1h+PvonUBmUJeJ3nMunebgRHAWGgB0zLvkCgWQLHqA691yB
         k3+1+rMp3TkWfpr3wTCO0ixPTcvTRjHkHrR9sqX96r8cnjuNdkoDNVvkl1FhnuMNJaQB
         SV3GLPiy1fgb+2mQHEdkAvcqrgOa4xCc4zAjGwLykcRBopsRkkPJadeKs/hYQqacGHew
         6+XA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=uXYAgPoVMhagmW/Chttg3+y0fIvgtT5FIkKGOXF3KlM=;
        b=uk6tf0+pG+yj3We5+wH+hZOEj7VtaV3ksNph22QR95XDyOkSsFQ6ixlDU2/3e+QL0+
         dXJbOBck46keTXgvMi3RnboxREimeMBx11HEnySyUxo58+V+kn+ftwg9tDUvMvoJoc3G
         fgplQSarwL2pa66s6zeU5IgraMKkwWldtndkJkc1ljQxL5EtbcNIYeJ/IKgweTNNgixq
         IaOPfik0/F0IEoMUNTT/X3rbidqs3EKoI1pPUF8fH1B8/dq4gDoE44hdN5FMw+ofWVJb
         thtUUWU2miy6pD97U6PoqN7g+pI5hR1e/A1GzM/92u7788rOe39aU4i8xwOuUo9yQh2Q
         oQ4g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="WLVD/zf0";
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uXYAgPoVMhagmW/Chttg3+y0fIvgtT5FIkKGOXF3KlM=;
        b=CunEEVJpgAhd9SWHojzlUqaSFYslpAUnfBQYE/1bzd39ffXtjdnirQOYfJkmhi7WhC
         PKC5napkkKGZaHSWU+CC5UUo8RbBG0rGISje/zt/VUnWXlnZlkjqhwxxmrka4Atrp950
         UFnBCexWCu5cGw2wPJZ44GFfP3rpM9x29FO0XBH7igEyfPZ2iRuE4E019TxkId0w/Czh
         k2gqhyVkvwMpPKTCOZJ5yKP2K2Jnlb7xOw4ou57+bfAskKyrGAi6SF0oAkWmv57witGx
         VsFOFHLoVu4jESLG64BFKBvBn2dNpBhP8aTD4HvoHS5pjavwahG4MXNlU685382bIPjn
         pGGA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uXYAgPoVMhagmW/Chttg3+y0fIvgtT5FIkKGOXF3KlM=;
        b=Uz1np9w5Rf4L6vS5w2mbO1QYa//4125mwfKiJlyAoQ5MGAa6hbDiF9EcEpDzWTx0nC
         8dwCUpnRU8zKW2QSI6Qm8sifED3TlnI8cz20Ak80TFM6R60nFLyJSAN8TAxlnff10Ehd
         m5c0jlqAbiA/9zv9i/9azQoxTNuKqd8l0CkQzuhkicVnFX+ywCsuCY9v24zRS2/bcowD
         wG29QIn9BmCDIoB8MttHmfrgPA8EIl26OCI/ifWQUMZJX0o+r/Bip3pCocrzUMQ9B6ix
         2ll/nvZStLoBBbC5D30+9XUWwXGk2BpGkt6q8j7vSsm77Hq0Uu/M6gyekPPCLA1detRw
         ReKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uXYAgPoVMhagmW/Chttg3+y0fIvgtT5FIkKGOXF3KlM=;
        b=CEy+m4yAW6VdOGRXoekGs8M522rko9JOwhEDCJuN11rQNdaQ+L5iSevpzB6+jgMJ5C
         6udOf2XRn1QlK2RSf7vV9eiBXbCIUI97pTlEYotY11Sy7kkvVoDd7NCiRfUUS/8i/GTb
         cYZqtcC4NYRNFSaEuUSp0jjceU7gv5m6GLdGAxCx9l9ENmWkNypIqkfPlZYAfju7kUnN
         E2QTbK7QKRywrMLGjD1iODkM2skCG5YXQAYvXTq3ZdGB7afpHB5VGaVutlPYsLga226d
         hbtbTpxIS/VngmhW3qW2BUTj/LE/6Pq3dIE2AkeN7EfmkxoHYFZ6IiU5nB2kemvf18rC
         GHbQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ3Ot/RSWEZqegPFXZgMIoKJ6WYkNRggQdCKRyLTM3eNO9djoyVo
	irAUYHlKWS807g8MLJUj3nY=
X-Google-Smtp-Source: ADFU+vuPBnmhakYtnd5FjZR8KfdAtPWvmShyodQbcF7u77fMplfHn6AgM0sRpv/mxkX9w2BzvLhmtg==
X-Received: by 2002:a17:902:788b:: with SMTP id q11mr2768838pll.44.1584423079866;
        Mon, 16 Mar 2020 22:31:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:86c7:: with SMTP id x190ls9968919pfd.4.gmail; Mon, 16
 Mar 2020 22:31:19 -0700 (PDT)
X-Received: by 2002:aa7:99d1:: with SMTP id v17mr3516110pfi.165.1584423079363;
        Mon, 16 Mar 2020 22:31:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584423079; cv=none;
        d=google.com; s=arc-20160816;
        b=dJakxmjrlB6442HNCev9El+eSPUkUvY1HBNTpXdm1SD9OjfoZ+XlYFf+2HDNdo0v8l
         UPgFQJJZXdfcDFKMj1jSUNSeECEeV4IGFPhLEK9YiCQeHjg5Z/kABUNhTc1FdbjpmJMW
         ZIMVRBw1wPrrZFTTlf8GcEF5icxN2XJk80TWg42P9s47tvX09n5/B79QvGE0dKVV75PZ
         LiZibbny87lmJ+FOX8YAd6OwHKiT0dk7zs9ARpX/es6BFlbJyeubZH2likypDt6NtJ+1
         jo5Ygd87PCCYs/cK9zsl8ndZXz6qX3dkG+kmZJksva7arV1MWYLf5CC4jNOpOsLsZvzb
         TcsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=XXy14v1H5qtRvYyPugSKBtcwiv16J7o5FfkzIcp1Jlg=;
        b=wVYo/9ww4w5Vds+e09hg1rCgonx17RooDby3gs1YkUDzgmTLiykq50iyETvTk6WySc
         vzc5l974J7G1QZvYZT7ddnNXak2JlOhmdSkVve0vCvcJKn64BaJYVHC+rxebipbcdP3F
         RfJ1FpIqoDIz0lHZyzaaGALdNM44QAUv/RSpno1/7+a2VFIVRPTltP8AtBZbnNlaydWZ
         svH/BwTdgMKMmf1zgzEB90YcnAW5OjxbVIDAsKnPg7jE2/qagcEkH2FZWFhNPvWfsP1E
         NcC0tXv1zzduRL+XpOgraUJDTBedaoThPXIt4UTe6D/c9NkwlT+Jz/7RqQs0khLvZWBB
         Sn5A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="WLVD/zf0";
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x741.google.com (mail-qk1-x741.google.com. [2607:f8b0:4864:20::741])
        by gmr-mx.google.com with ESMTPS id i19si567518pjx.1.2020.03.16.22.31.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Mar 2020 22:31:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) client-ip=2607:f8b0:4864:20::741;
Received: by mail-qk1-x741.google.com with SMTP id f28so30513737qkk.13
        for <clang-built-linux@googlegroups.com>; Mon, 16 Mar 2020 22:31:19 -0700 (PDT)
X-Received: by 2002:a37:e40d:: with SMTP id y13mr3240261qkf.39.1584423078366;
 Mon, 16 Mar 2020 22:31:18 -0700 (PDT)
MIME-Version: 1.0
References: <20200317011654.zkx5r7so53skowlc@google.com> <CAEf4BzYTJqWU++QnQupxFBWGSMPfGt6r-5u9jbeLnEF2ipw+Mw@mail.gmail.com>
 <20200317033701.w7jwos7mvfnde2t2@google.com> <CAEf4BzYyimAo2_513kW6hrDWwmzSDhNjTYksjy01ugKKTPt+qA@mail.gmail.com>
 <20200317052120.diawg3a75kxl5hkn@google.com>
In-Reply-To: <20200317052120.diawg3a75kxl5hkn@google.com>
From: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Date: Mon, 16 Mar 2020 22:31:07 -0700
Message-ID: <CAEf4BzYepRs4uB9vd1SCFY81H5S1kbvw2n9bKNeh-ORK_kutSg@mail.gmail.com>
Subject: Re: [PATCH bpf v2] bpf: Support llvm-objcopy and llvm-objdump for
 vmlinux BTF
To: Fangrui Song <maskray@google.com>
Cc: bpf <bpf@vger.kernel.org>, Networking <netdev@vger.kernel.org>, 
	Daniel Borkmann <daniel@iogearbox.net>, Nick Desaulniers <ndesaulniers@google.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, clang-built-linux@googlegroups.com, 
	Stanislav Fomichev <sdf@google.com>, "David S. Miller" <davem@davemloft.net>, 
	Alexei Starovoitov <ast@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: andrii.nakryiko@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="WLVD/zf0";       spf=pass
 (google.com: domain of andrii.nakryiko@gmail.com designates
 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
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

On Mon, Mar 16, 2020 at 10:21 PM Fangrui Song <maskray@google.com> wrote:
>
>
> On 2020-03-16, Andrii Nakryiko wrote:
> >On Mon, Mar 16, 2020 at 8:37 PM Fangrui Song <maskray@google.com> wrote:
> >>
> >> On 2020-03-16, Andrii Nakryiko wrote:
> >> >On Mon, Mar 16, 2020 at 6:17 PM Fangrui Song <maskray@google.com> wrote:
> >> >>
> >> >> Simplify gen_btf logic to make it work with llvm-objcopy and
> >> >> llvm-objdump.  We just need to retain one section .BTF. To do so, we can
> >> >> use a simple objcopy --only-section=.BTF instead of jumping all the
> >> >> hoops via an architecture-less binary file.
> >> >>
> >> >> We use a dd comment to change the e_type field in the ELF header from
> >> >> ET_EXEC to ET_REL so that .btf.vmlinux.bin.o will be accepted by lld.
> >> >>
> >> >> Fixes: df786c9b9476 ("bpf: Force .BTF section start to zero when dumping from vmlinux")
> >> >> Cc: Stanislav Fomichev <sdf@google.com>
> >> >> Cc: Nick Desaulniers <ndesaulniers@google.com>
> >> >> Tested-by: Nick Desaulniers <ndesaulniers@google.com>
> >> >> Reported-by: Nathan Chancellor <natechancellor@gmail.com>
> >> >> Link: https://github.com/ClangBuiltLinux/linux/issues/871
> >> >> Signed-off-by: Fangrui Song <maskray@google.com>
> >> >> ---
> >> >>  scripts/link-vmlinux.sh | 13 ++-----------
> >> >>  1 file changed, 2 insertions(+), 11 deletions(-)
> >> >>
> >> >> diff --git a/scripts/link-vmlinux.sh b/scripts/link-vmlinux.sh
> >> >> index dd484e92752e..84be8d7c361d 100755
> >> >> --- a/scripts/link-vmlinux.sh
> >> >> +++ b/scripts/link-vmlinux.sh
> >> >> @@ -120,18 +120,9 @@ gen_btf()
> >> >>
> >> >>         info "BTF" ${2}
> >> >>         vmlinux_link ${1}
> >> >> -       LLVM_OBJCOPY=${OBJCOPY} ${PAHOLE} -J ${1}
> >> >
> >> >Is it really tested? Seems like you just dropped .BTF generation step
> >> >completely...
> >>
> >> Sorry, dropped the whole line:/
> >> I don't know how to test .BTF . I can only check readelf -S...
> >>
> >> Attached the new patch.
> >>
> >>
> >>  From 02afb9417d4f0f8d2175c94fc3797a94a95cc248 Mon Sep 17 00:00:00 2001
> >> From: Fangrui Song <maskray@google.com>
> >> Date: Mon, 16 Mar 2020 18:02:31 -0700
> >> Subject: [PATCH bpf v2] bpf: Support llvm-objcopy and llvm-objdump for
> >>   vmlinux BTF
> >>
> >> Simplify gen_btf logic to make it work with llvm-objcopy and llvm-objdump.
> >> We use a dd comment to change the e_type field in the ELF header from
> >> ET_EXEC to ET_REL so that .btf.vmlinux.bin.o can be accepted by lld.
> >>
> >> Fixes: df786c9b9476 ("bpf: Force .BTF section start to zero when dumping from vmlinux")
> >> Cc: Stanislav Fomichev <sdf@google.com>
> >> Cc: Nick Desaulniers <ndesaulniers@google.com>
> >> Reported-by: Nathan Chancellor <natechancellor@gmail.com>
> >> Link: https://github.com/ClangBuiltLinux/linux/issues/871
> >> Signed-off-by: Fangrui Song <maskray@google.com>
> >> ---
> >>   scripts/link-vmlinux.sh | 14 +++-----------
> >>   1 file changed, 3 insertions(+), 11 deletions(-)
> >>
> >> diff --git a/scripts/link-vmlinux.sh b/scripts/link-vmlinux.sh
> >> index dd484e92752e..b23313944c89 100755
> >> --- a/scripts/link-vmlinux.sh
> >> +++ b/scripts/link-vmlinux.sh
> >> @@ -120,18 +120,10 @@ gen_btf()
> >>
> >>         info "BTF" ${2}
> >>         vmlinux_link ${1}
> >> -       LLVM_OBJCOPY=${OBJCOPY} ${PAHOLE} -J ${1}
> >> +       ${PAHOLE} -J ${1}
> >
> >I'm not sure why you are touching this line at all. LLVM_OBJCOPY part
> >is necessary, pahole assumes llvm-objcopy by default, but that can
> >(and should for objcopy) be overridden with LLVM_OBJCOPY.
>
> Why is LLVM_OBJCOPY assumed? What if llvm-objcopy is not available?

It's pahole assumption that we have to live with. pahole assumes
llvm-objcopy internally, unless it is overriden with LLVM_OBJCOPY env
var. So please revert this line otherwise you are breaking it for GCC
objcopy case.

> This is confusing that one tool assumes llvm-objcopy while the block
> below immediately uses GNU objcopy (without this patch).
>
> e83b9f55448afce3fe1abcd1d10db9584f8042a6 "kbuild: add ability to
> generate BTF type info for vmlinux" does not say why LLVM_OBJCOPY is
> set.
>
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
> >> +       # Extract .BTF section, change e_type to ET_REL, to link with final vmlinux
> >> +       ${OBJCOPY} --only-section=.BTF ${1} ${2} && printf '\1' | dd of=${2} conv=notrunc bs=1 seek=16
> >>   }
> >>
> >>   # Create ${2} .o file with all symbols from the ${1} object file
> >> --
> >> 2.25.1.481.gfbce0eb801-goog
> >>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAEf4BzYepRs4uB9vd1SCFY81H5S1kbvw2n9bKNeh-ORK_kutSg%40mail.gmail.com.
