Return-Path: <clang-built-linux+bncBCTYRDEG7MGBBNH7YDZQKGQER6P2OKY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13f.google.com (mail-il1-x13f.google.com [IPv6:2607:f8b0:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id 162201877FD
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Mar 2020 04:10:45 +0100 (CET)
Received: by mail-il1-x13f.google.com with SMTP id h12sf15672577ils.12
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Mar 2020 20:10:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584414644; cv=pass;
        d=google.com; s=arc-20160816;
        b=N2bBXYu/xYk/OfHTMdeVt01806ETPACuSjjmo585izdgYbxwnKU//rseGoz5e11LN8
         lP22tb9UfCtQSNcR6lVCE2uP3y5383Y99eAJtjlbbqUsotevMEgZ59hPmdXHBcDjAg4F
         nkCYf8t4GpDcknyhzF7kU2wk2UhCCBtKJ5Ta0TC7F1UwILlCbU3X8UUpeQgEYAAg6Yvu
         P0jZ9OTBcqmg8GMM/wyCg5WnebBV8Q3X6NbciIaMZWotzEhFMG3zoieUpixZw25Et2qv
         GivhsSyd+TwtNoZXWVGUgSJuxVx0UWwzsZPyph3LHBIcu0KV7A0h6xulytsHW1bRtikT
         zpvw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=eX6YtT0m/HDR8LuO3QtbYmC+MZDCG/Fk6ej/jx1CViY=;
        b=Y72ToQCmGZiiFXJhbM4vn74AtQpSnMXBbIaFtxul+/eJ08lDVekDIQfylNmbTQkNWy
         06t2UcbiwPISvH5xeVuwlPY92EZA7/skU1dTtxw76yGTE8X25qMf7+MhewUPHxlzY+pg
         i3o85wuRwm+z8AyXfEk+A9FPuUHGhucIMMIapCnzn66jkCicUUcLFoq5cB1Oz6qwInun
         Ew5N09bUDrVx1/1FNvRQOaThIE7Fp8QqhZxBzgAW+XzgaojSxL45KwCdfYo9LGKYUbDt
         yxwm9mML1R2wAqERFdrURBhq6ZfPIBR+gmKSzwwrg42CGb75lAMeXyy2/+30rgH1fyqb
         wQhg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FmkrITYH;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eX6YtT0m/HDR8LuO3QtbYmC+MZDCG/Fk6ej/jx1CViY=;
        b=NV8opsTTUp7Tc66l91bnAkc+qayGeT1MqNz99SSl/VxsQxOnH2geu6g7a5voPbLaki
         CBUoNefDTKOdaB11dhH5+WBZlQJoOlg+zpwTmM3CUZsHvK+F1qqMA4VAL73XMD1m1LnU
         UnMH5QMas1TnZH6ibtf8ADfuqf4+T5nN6ma1SlWREgJWC2lq+eGqbgpPbhxjVytmTGJS
         +MvkpCM9hxa6uIH87t7nXiycWv9EB1jQJJlmQyWzq3NfLCxvoi0F/LTaiMwrEjmilNpY
         H9BvCVTebO0KaStFppDZV6DO0V+6U3yd8QOyaYQFgkQyCdleYkUIOCDvDzuHZ6ngO66x
         pK/g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eX6YtT0m/HDR8LuO3QtbYmC+MZDCG/Fk6ej/jx1CViY=;
        b=VldVJm5C4CbOiajNUTOGyhi3gNVRnTCexgjvwYaF2071OzIHHGX/icT0t4GG4ykN9K
         tJt8TMSErjHCKG8198pYs11Kxuo3DeBkp6uhH9806yjFdyc/WFv22NIhDkmU1P1Vj4DM
         mwk4pDaXYuUF7DpDshYAugzcO0A55/3qMFlyirKr8UZ4Yv+7NzmxFRf2+bnEtAAqck6P
         HXE4PsWBRkjvxjnLewt1dVJTd8VlJQ9kNUwYK7IV81kC8mZ2MULc5r4GUFpAJkXqd6qJ
         m7gkYdc/VuXE26XpmEdJ9nGpNZAh7CCe3UIN3LBxxjSOpzPdTA0dYYet8MASJOjwTy62
         8z9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eX6YtT0m/HDR8LuO3QtbYmC+MZDCG/Fk6ej/jx1CViY=;
        b=XwdGTxMPdmVh4FGIJmip7jSamR/EgVZ/QagiGJqWqnRS6UA07AnVbTaB8U3vq9GyOr
         nWvJOTjPnJM8zEGxwx/Iif8tllNjxW2a2w+xyN+iXwpivQyGD4uiihNasMlsFJ7Ry+RT
         jP02228E5ENk3otD3He4tnMjGefmi6vTcPtBhkIR0WJkC/1rOdrMs/Q3hiByzePXdVXT
         lWx/0c7+ITd1WqKoWktWrhoRff9nhu3m0YdRkLH/Z2bKArN8Qu48ECE7dcY2NXztKI13
         6mYFWwz3+yaa20bqMBH3mXjjHnM2Q3wbOA3tt4TVU85T0Mfze5y6atRACR8kuSgkbGrz
         7wwA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ05splxd20o2emyUAi6Ggvd32FBxffD83iJvv9CIMULBogLToK6
	0+35QFZQJQopipf0E1Se71Q=
X-Google-Smtp-Source: ADFU+vuqE2qZ9f31V4GJnJruPCGZivACW3v2W2Y+jeytPvnBd2qOnCNkr57kH6aat/rMfwnMRtuDUg==
X-Received: by 2002:a92:d808:: with SMTP id y8mr2868457ilm.157.1584414644104;
        Mon, 16 Mar 2020 20:10:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:d204:: with SMTP id y4ls1720004ily.5.gmail; Mon, 16 Mar
 2020 20:10:43 -0700 (PDT)
X-Received: by 2002:a92:5d8f:: with SMTP id e15mr3042926ilg.255.1584414643652;
        Mon, 16 Mar 2020 20:10:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584414643; cv=none;
        d=google.com; s=arc-20160816;
        b=xs39VDNgZARr17I5PLNwDGXTVRWjSQu0RU0sCG/szI3dkLZCSLXIGFp+6mdOT78Isc
         ctzpDK1NxO60q+7B1DNs2qFeIK0PBAjC3YiNCMz3X4HD1284R28MKFAZvZKPDv03tEAy
         BCxF09T1J3iBtWyG6SeYkiJnEtmtH0G0AjC8tnj5Jth9VgcY0jRJ0isVtpaRlLmFby9k
         +VRulqirJb/k3Dpyyp4Mw+NsucITSgF2XB1AxHdDU+T6vbuAr6WY9mTK6qmXlWawajpP
         hVhv44Vqjkpw+TwiIrvXbEPqv61d8KvQrGO1aWGuJj6961U7T/V8fsnLPTwppdwSeDC+
         uWwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=xytRqayxQuC5eMurSet0/Fcn3iTENtGu+EYSbqGw130=;
        b=MJZZInVhgC6X2eLRXChfx929LLlBxABg7FVVLX0RRUpgzQy4h9FyGL4g2Cz5UHEJ+5
         9rFPqvt8bcLhhrFzOdyP4Vqp1fi+JGvoLZiazI1n7OkOY+KWS39EO5DvlFXRwLdXDmi6
         8jOSyrvgBPQ5wwN09/Zl6gWFsaElDsAS8ciLfiG4XizPzrVw8+1nCpW5aL0IEMYnGjXB
         q0U+9FxhrvEIdfGiEBOwoCpAQlMV75IbSp9AdpkWq9lfYPmsh6CSD8IaBrV99kwLgm1Q
         eII2JvxlBcuC1ulM7a95Fa6+purFJ6zg0ZLQAtMA1kVgOKN0JmEWfnTN6m8N8Tq79QHB
         j3Qg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FmkrITYH;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x743.google.com (mail-qk1-x743.google.com. [2607:f8b0:4864:20::743])
        by gmr-mx.google.com with ESMTPS id e7si44998iof.4.2020.03.16.20.10.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Mar 2020 20:10:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) client-ip=2607:f8b0:4864:20::743;
Received: by mail-qk1-x743.google.com with SMTP id e11so30138340qkg.9
        for <clang-built-linux@googlegroups.com>; Mon, 16 Mar 2020 20:10:43 -0700 (PDT)
X-Received: by 2002:ae9:c011:: with SMTP id u17mr2924638qkk.92.1584414642995;
 Mon, 16 Mar 2020 20:10:42 -0700 (PDT)
MIME-Version: 1.0
References: <20200317011654.zkx5r7so53skowlc@google.com>
In-Reply-To: <20200317011654.zkx5r7so53skowlc@google.com>
From: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Date: Mon, 16 Mar 2020 20:10:31 -0700
Message-ID: <CAEf4BzYTJqWU++QnQupxFBWGSMPfGt6r-5u9jbeLnEF2ipw+Mw@mail.gmail.com>
Subject: Re: [PATCH bpf] bpf: Support llvm-objcopy and llvm-objdump for
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
 header.i=@gmail.com header.s=20161025 header.b=FmkrITYH;       spf=pass
 (google.com: domain of andrii.nakryiko@gmail.com designates
 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
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

On Mon, Mar 16, 2020 at 6:17 PM Fangrui Song <maskray@google.com> wrote:
>
> Simplify gen_btf logic to make it work with llvm-objcopy and
> llvm-objdump.  We just need to retain one section .BTF. To do so, we can
> use a simple objcopy --only-section=.BTF instead of jumping all the
> hoops via an architecture-less binary file.
>
> We use a dd comment to change the e_type field in the ELF header from
> ET_EXEC to ET_REL so that .btf.vmlinux.bin.o will be accepted by lld.
>
> Fixes: df786c9b9476 ("bpf: Force .BTF section start to zero when dumping from vmlinux")
> Cc: Stanislav Fomichev <sdf@google.com>
> Cc: Nick Desaulniers <ndesaulniers@google.com>
> Tested-by: Nick Desaulniers <ndesaulniers@google.com>
> Reported-by: Nathan Chancellor <natechancellor@gmail.com>
> Link: https://github.com/ClangBuiltLinux/linux/issues/871
> Signed-off-by: Fangrui Song <maskray@google.com>
> ---
>  scripts/link-vmlinux.sh | 13 ++-----------
>  1 file changed, 2 insertions(+), 11 deletions(-)
>
> diff --git a/scripts/link-vmlinux.sh b/scripts/link-vmlinux.sh
> index dd484e92752e..84be8d7c361d 100755
> --- a/scripts/link-vmlinux.sh
> +++ b/scripts/link-vmlinux.sh
> @@ -120,18 +120,9 @@ gen_btf()
>
>         info "BTF" ${2}
>         vmlinux_link ${1}
> -       LLVM_OBJCOPY=${OBJCOPY} ${PAHOLE} -J ${1}

Is it really tested? Seems like you just dropped .BTF generation step
completely...

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
>  }
>
>  # Create ${2} .o file with all symbols from the ${1} object file
> --
> 2.25.1.481.gfbce0eb801-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAEf4BzYTJqWU%2B%2BQnQupxFBWGSMPfGt6r-5u9jbeLnEF2ipw%2BMw%40mail.gmail.com.
