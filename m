Return-Path: <clang-built-linux+bncBCTYRDEG7MGBBBFXYHZQKGQEYOUXGQY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x540.google.com (mail-pg1-x540.google.com [IPv6:2607:f8b0:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id 52C041878F8
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Mar 2020 06:09:26 +0100 (CET)
Received: by mail-pg1-x540.google.com with SMTP id j19sf13676157pgh.14
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Mar 2020 22:09:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584421765; cv=pass;
        d=google.com; s=arc-20160816;
        b=JdNLYVM26/g9FMjsFRxB+cN49Kar8Blndos9qu7teXodUg8pVwl5YPZy/4Ph7m/06g
         DmB7c74TfPcqkru+kr9aiUUuawjfQ8Kh/SnMpy6WwJF9d3f9CJj9cimjv7FHAxjV8dnk
         StajEQbP+1pEHYPNmDwTNPBq4g5KQNHJjzSQkPNHnKUMzb8zjIxibsm2SI0JZerQwhxr
         /lXF7L3raXJJOS6GsyJAimcF2p6YI91n9nFodWRI/Kgag+xLGr6rla40c9MlEznXZKol
         IjKeWxn/2bRPm1Pgv36QUAoSBpmTfosY3Wwo5DVIrkp6xb9vh6VdRJBj2MvgIz+uu1wC
         MkGw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=DSgUCLIeEHjJ5umrGGZIVyYlNOINb2zcac32x59Pq/4=;
        b=RDYn7Ar68WhmAi30M3yy0gXeLKhqcZMPRvUCfxbDMLrW6Ayvtv0IE1BRB8xX2j74Po
         Mj5Zt/WtvRpJT11sI6kpaN6be9+GRZ9wLXvkaKU3Ds7GMmUYDW6mVm1Lc0V8iSoPNvbB
         yyRSfwJWpIdV7hUT+9Xi80VH7i2s7oj8UymzTe9TkjI8ZAaI64XJn6dK9N/yFwtCYHnm
         noWsQCwlN2Xt/Ln7r+hHOizR6XWkTzr+bJAcUn0w7ASQJnuWDJvzZFtKVITWaQ+Dnre9
         /k1FH5UJt2DglDCK7usOz7+C1bgHzWu2DyxBDf6zST2jv9lNmtWlq6+bb8dW1O/uiFIJ
         3sFw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PPx+NJdH;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DSgUCLIeEHjJ5umrGGZIVyYlNOINb2zcac32x59Pq/4=;
        b=qysUyCq1mBwlmnyzSG/NRw4JiPsBo1sC73KDXmWbwO4wAFjfraYq6wSm5MoSX7yk3P
         qHgtQbUm1Y0SXHlC11uoYE2xleFomCKjt2tKx98R5lrt6hfTOFCQ0mBHUsw70JFS6oB6
         kGwZf9Az8Ry8GRSvgzqGF6/CBdH8O5kZWwjcjsrnv8AUcOwIyRKPoxXRvsgLESgmuwzZ
         dgAqSM2OB2ChDKaprDzMvg09X6oCKxcTzZBU1I4neyhvxS+iDWap6FKPNSffEHtUHi86
         XZKSvYJEKAYO3XxJXEU40vMaf0zaUV2RylNU2HtMnjWDL3Dp44M2Vn6j90oEkfuDf2Z8
         +Lkg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DSgUCLIeEHjJ5umrGGZIVyYlNOINb2zcac32x59Pq/4=;
        b=MkWSyuzNMe6EGtAbg4v2F7rFYmq05C4lk/XEccuaNU5oz+fkrBwNB9BoZukxOSI7jZ
         bpMi6mRNv9Mzpk2HOtLG4Lt4kQLTLQDccXGpE/AOnnBEBhraIS+8bAIM715388p82wdF
         dYdG0NgtcW0LbHTCe7FLkx2y8Fq0aVjxxmHZf05JKIx/hgmt3jJzjzyuCduATnt6O6Lm
         UsQihv5D7sg2ZCgcmUU93I+WN6kggmMOdU7y4t+iNDMa8DcvGwqWK9S3qwyKUmrWeeTm
         hqTfvCMvTNDkBbUovgNipM4yM50nJWOTbVS4Zu/eNoNtOcOmoYGS8rEZuS8QjR2yyBdS
         RBKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DSgUCLIeEHjJ5umrGGZIVyYlNOINb2zcac32x59Pq/4=;
        b=mMdNtfwWC1o410wgEMgy71pyepCbzztKNaZHDzSrGJgKf1B2EeDuRvKUE/VMJaxM7z
         7hI0SJAF+IBSQBpxXm75Okae5jRQzXBFglPxaJ9aSzUgAy9Rq7SIL4ONXPXjuBD565w6
         bAB1GawJFBySLS3QLufh3FTIm/46e/ldAsnLqcwasZNxiXnAgb4Ll1n3Qc7Y4wa/GS8w
         NMeqP27A16HOz0hKeuBs9MQbDLB6at6CFwvA4d+yXgnTXHlEhmBnAv5IW0d/D2hS0GfJ
         eDnVdUX4/zPIHTWIqfgJfzqE3CzH9YMGlQY6tqP7Pr/046XAq9cdZjvo8iCbFifozzl6
         UL/Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ0HGQArRHpYaFe5Kr2yUxfmuwgZ4XhRb0wCbs5zNuIh3mYg71k+
	3bheH95s6rW9sPObKVEDxF4=
X-Google-Smtp-Source: ADFU+vuTEG/aBif6qKN0OqNeR/pgtayI60IgDcLmgdkvzpCJr+4rY1o0WH9QKS/E/HLDS/TH+c6kww==
X-Received: by 2002:a62:15d3:: with SMTP id 202mr3425002pfv.231.1584421764766;
        Mon, 16 Mar 2020 22:09:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:5f8b:: with SMTP id t133ls10443577pgb.1.gmail; Mon, 16
 Mar 2020 22:09:24 -0700 (PDT)
X-Received: by 2002:a62:8706:: with SMTP id i6mr3328674pfe.115.1584421764156;
        Mon, 16 Mar 2020 22:09:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584421764; cv=none;
        d=google.com; s=arc-20160816;
        b=nVUO8GZMxPokXQQO9Fr1O8A/ozGIY/aeeclK34yal0tbid8k/DRSLFk+/wr7DqQq2N
         LofL1seYFKKYKBGD9r8DgQYH75UWXZ2dPZTISexRigKU0ttPaiD6imqoChhYwA8JiKPs
         VPNLGHCZbsQhe51TW3UZDXc2CsqO21Wn3D2/jsBDje5ng3YirbqfiN7HtQ3iXR7hyzTe
         sSuzx+vz/iaQMUofXtrQtLwiVqU6rkB4fxX14urlE1HLZuYcXkBKvWcg4TjehI2654Lt
         IhTiaei4W32cS5XiUDeW5J2gZAB/m4Cfy4XCzFEMdBl4qjOjW4Tkp7/9xpUja0CMN+PP
         97QA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ioTZr5nsJG3HFizDxsGwRshIWndCqjqQER0RaugL3L8=;
        b=UAzAHVXdg0whGrYfS1z6J1sxCjeuZEdj5na8TKmbsheLGHwPlIidLu1wSE9iKNy9MZ
         5SEkKCGjSGJNfxqJAKnfB4vflWsAFkLBU7CNfbxT/5CKQRxcEVK128sg8ujqF3JRQn9z
         Bk9UdO0TmltK6XHoEA6BGbh/EA9stsaGMxFRde/KKZmH2u9ndWmtZd4jUyzQ0up0GHs+
         O/DPrUdyuAA1/yEl6/MnBPetTDnwSp/BVDJjI58YSZIRdQH7EwnRpgMfvuWwQIDPvgK1
         3quavw36ZCDMNaiq/LPY+huWjIVvW6MkZstUnRli4h5whxyvTcU9ex0Rav9vPpK7CBMV
         sdHg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PPx+NJdH;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x742.google.com (mail-qk1-x742.google.com. [2607:f8b0:4864:20::742])
        by gmr-mx.google.com with ESMTPS id r11si132149pjq.0.2020.03.16.22.09.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Mar 2020 22:09:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) client-ip=2607:f8b0:4864:20::742;
Received: by mail-qk1-x742.google.com with SMTP id t17so8725458qkm.6
        for <clang-built-linux@googlegroups.com>; Mon, 16 Mar 2020 22:09:24 -0700 (PDT)
X-Received: by 2002:a37:9104:: with SMTP id t4mr3307894qkd.449.1584421763202;
 Mon, 16 Mar 2020 22:09:23 -0700 (PDT)
MIME-Version: 1.0
References: <20200317011654.zkx5r7so53skowlc@google.com> <CAEf4BzYTJqWU++QnQupxFBWGSMPfGt6r-5u9jbeLnEF2ipw+Mw@mail.gmail.com>
 <20200317033701.w7jwos7mvfnde2t2@google.com>
In-Reply-To: <20200317033701.w7jwos7mvfnde2t2@google.com>
From: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Date: Mon, 16 Mar 2020 22:09:12 -0700
Message-ID: <CAEf4BzYyimAo2_513kW6hrDWwmzSDhNjTYksjy01ugKKTPt+qA@mail.gmail.com>
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
 header.i=@gmail.com header.s=20161025 header.b=PPx+NJdH;       spf=pass
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

On Mon, Mar 16, 2020 at 8:37 PM Fangrui Song <maskray@google.com> wrote:
>
> On 2020-03-16, Andrii Nakryiko wrote:
> >On Mon, Mar 16, 2020 at 6:17 PM Fangrui Song <maskray@google.com> wrote:
> >>
> >> Simplify gen_btf logic to make it work with llvm-objcopy and
> >> llvm-objdump.  We just need to retain one section .BTF. To do so, we can
> >> use a simple objcopy --only-section=.BTF instead of jumping all the
> >> hoops via an architecture-less binary file.
> >>
> >> We use a dd comment to change the e_type field in the ELF header from
> >> ET_EXEC to ET_REL so that .btf.vmlinux.bin.o will be accepted by lld.
> >>
> >> Fixes: df786c9b9476 ("bpf: Force .BTF section start to zero when dumping from vmlinux")
> >> Cc: Stanislav Fomichev <sdf@google.com>
> >> Cc: Nick Desaulniers <ndesaulniers@google.com>
> >> Tested-by: Nick Desaulniers <ndesaulniers@google.com>
> >> Reported-by: Nathan Chancellor <natechancellor@gmail.com>
> >> Link: https://github.com/ClangBuiltLinux/linux/issues/871
> >> Signed-off-by: Fangrui Song <maskray@google.com>
> >> ---
> >>  scripts/link-vmlinux.sh | 13 ++-----------
> >>  1 file changed, 2 insertions(+), 11 deletions(-)
> >>
> >> diff --git a/scripts/link-vmlinux.sh b/scripts/link-vmlinux.sh
> >> index dd484e92752e..84be8d7c361d 100755
> >> --- a/scripts/link-vmlinux.sh
> >> +++ b/scripts/link-vmlinux.sh
> >> @@ -120,18 +120,9 @@ gen_btf()
> >>
> >>         info "BTF" ${2}
> >>         vmlinux_link ${1}
> >> -       LLVM_OBJCOPY=${OBJCOPY} ${PAHOLE} -J ${1}
> >
> >Is it really tested? Seems like you just dropped .BTF generation step
> >completely...
>
> Sorry, dropped the whole line:/
> I don't know how to test .BTF . I can only check readelf -S...
>
> Attached the new patch.
>
>
>  From 02afb9417d4f0f8d2175c94fc3797a94a95cc248 Mon Sep 17 00:00:00 2001
> From: Fangrui Song <maskray@google.com>
> Date: Mon, 16 Mar 2020 18:02:31 -0700
> Subject: [PATCH bpf v2] bpf: Support llvm-objcopy and llvm-objdump for
>   vmlinux BTF
>
> Simplify gen_btf logic to make it work with llvm-objcopy and llvm-objdump.
> We use a dd comment to change the e_type field in the ELF header from
> ET_EXEC to ET_REL so that .btf.vmlinux.bin.o can be accepted by lld.
>
> Fixes: df786c9b9476 ("bpf: Force .BTF section start to zero when dumping from vmlinux")
> Cc: Stanislav Fomichev <sdf@google.com>
> Cc: Nick Desaulniers <ndesaulniers@google.com>
> Reported-by: Nathan Chancellor <natechancellor@gmail.com>
> Link: https://github.com/ClangBuiltLinux/linux/issues/871
> Signed-off-by: Fangrui Song <maskray@google.com>
> ---
>   scripts/link-vmlinux.sh | 14 +++-----------
>   1 file changed, 3 insertions(+), 11 deletions(-)
>
> diff --git a/scripts/link-vmlinux.sh b/scripts/link-vmlinux.sh
> index dd484e92752e..b23313944c89 100755
> --- a/scripts/link-vmlinux.sh
> +++ b/scripts/link-vmlinux.sh
> @@ -120,18 +120,10 @@ gen_btf()
>
>         info "BTF" ${2}
>         vmlinux_link ${1}
> -       LLVM_OBJCOPY=${OBJCOPY} ${PAHOLE} -J ${1}
> +       ${PAHOLE} -J ${1}

I'm not sure why you are touching this line at all. LLVM_OBJCOPY part
is necessary, pahole assumes llvm-objcopy by default, but that can
(and should for objcopy) be overridden with LLVM_OBJCOPY.

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
> +       # Extract .BTF section, change e_type to ET_REL, to link with final vmlinux
> +       ${OBJCOPY} --only-section=.BTF ${1} ${2} && printf '\1' | dd of=${2} conv=notrunc bs=1 seek=16
>   }
>
>   # Create ${2} .o file with all symbols from the ${1} object file
> --
> 2.25.1.481.gfbce0eb801-goog
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAEf4BzYyimAo2_513kW6hrDWwmzSDhNjTYksjy01ugKKTPt%2BqA%40mail.gmail.com.
