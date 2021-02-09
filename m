Return-Path: <clang-built-linux+bncBCTYRDEG7MGBBA5HRCAQMGQECMXCGXQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x338.google.com (mail-ot1-x338.google.com [IPv6:2607:f8b0:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ED403147A6
	for <lists+clang-built-linux@lfdr.de>; Tue,  9 Feb 2021 05:45:56 +0100 (CET)
Received: by mail-ot1-x338.google.com with SMTP id v1sf7767427oto.16
        for <lists+clang-built-linux@lfdr.de>; Mon, 08 Feb 2021 20:45:56 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612845955; cv=pass;
        d=google.com; s=arc-20160816;
        b=uR/3StDz2FUQQ5fmcR7uber8hsX7MpMpepIjSjtKIUn52+WOlBglF9k3LHdIbuXZJM
         MnMSzjcW/m2QX9ZLCzYqr9wooyoCwuWc2ePDeIx+naUuIB3qvEB1zT9mlJAVjR3YRC8t
         7JX6INuSUdpzhUlCsnfKChr9PqWUHRdyTO41BWj9G5oONKycry23WMBXQFw9K1EYsZRP
         9j1hQRun7Q9s/td4XoVs7ow6jm4O+YmIZSyywO68URA52TeFRaTJYD4h9piyMIVa4ZeJ
         3pk/kEN8iRd83l0ms1GtwAM/9ihmfSXiQdRqPqk+LvQWMXx6HfrlVPtGMb0vywhZFZEQ
         eS0g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=yPyhgej1358duM1B8bXMTRWXGaNTvzPDCgC+SpQyLkg=;
        b=usvUZvnKG75X4GneDLoIv8Rs3znCetZMJUp/1aoEoaULsomZhewu6TOpcMoaICOf2Z
         BMLwrsysapAd+DYe58d7d0lVrHZrIAwDqlvVc6Ni/eVjvYiL8v68I031VzpgcMDFcQwT
         /VUG07pSbRwCLvC8Bd9/X0G0RIZyy/1hwBKGhA6ytxqef8qpd3DbgDZHTYQ+KWnLRULz
         Ma4J0OC1ZokX40H5/P4X4mINsu0IGBSn/FOiM3A2JLeKhoYycMJnEFMS9TOasJFudHqM
         LVGi208UUuGVvObbGgK5Wz73HB7l12cVpO2MVOSktkeR/oSfQEmJm+qUfUfah/+kzBVV
         r4lw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LcJXMO8x;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::b32 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yPyhgej1358duM1B8bXMTRWXGaNTvzPDCgC+SpQyLkg=;
        b=AqbOCtRrlSus4ctrKdclRXV/QlOTaPFGDIH8fhyXRu93qr0FDfrQSVTTomkmGGHfy5
         BemDwOGu6P7vjBQZZ144JhhIm2mgN6OZgagwbD5XMLvmZPZkbKvo1NCnNPuJZjY924c2
         Z4uaPLiiGSCeZzIdHhBYoKtKeVI8ryqLwAeQdzAfzzzLBSmYfq/DqEvefaQQokXMGEaH
         4VyXXfIVA8R6C6qwrkNSR2AvtyuPhHFm2fPFdRv/mOLSTJvbd0d9kZEQfdWfO6qwS+DQ
         GqgvPTOnriIPso2+Nom4T7ZC5AgXH4Y9dzhRjElv8C8vhYbS8leURB5STlN3qCAsSlFh
         9KJQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yPyhgej1358duM1B8bXMTRWXGaNTvzPDCgC+SpQyLkg=;
        b=mSv1tFez8WUJ/LF9e3Mht3iBkOywC6OKKR7ckJSmQHKVkXezYvPjj8HhpgnPeyMQPs
         fNdlGyHdkg2SPXid7oTncaqKzaPFUmcq+7+huAK6kgVc9jC+kvmimW1d3syUf8KYEbUH
         gG6ax9up22unHzmfsLOL8LDxF8auevfQPsFnEWmQOJxg3LDRbSeYVevGHFMuvPlFxmC7
         Eh49unKQWiSoWWxv5E6S9ujo81iUikE2NYL94yhwzk8Hit00Dk9tQcfbOF7Yer15pMOt
         J+JR452rYjpCAvMmMTyV/S9txCp4qib/9oiaXorG5o+pj9k/nfyaDUPSqfQPqzqJfL3O
         5ZMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yPyhgej1358duM1B8bXMTRWXGaNTvzPDCgC+SpQyLkg=;
        b=lyFRjtlEQR4tlHDhOqJ7CwA03fovSNHoq4NC1P+FBEjd/5gfgVDMtkuDeu9o1X0Y69
         q9SfwKaYyvaTNh4sM3XxeRk9RJGTHLJVwnId+lxvOulIKYaP2JbNho8kGvhAk9nm2r5S
         VLl0WJsWQqUhJTs2nDQbFY1GYx52m0d4vARCunk6e+TIpbH+lwPa8xJRGXDZRP7sTG7i
         xN1fUyhIaqKNeqsGhe2EhnTc5zaBF6h4nuwykwCCc+iy0Y5RINfPTs6trE5fmDxxTrcx
         RM1Ib4a54V29u+ZRqYcXRQcgZO/PdFjrHdHEyF1tbLtFiDyvEePr0oLYj1sF7Cp+u4Nb
         u7DA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531ozNWCKUC5Zq55iAU6RSNhj+MrEYrMfI/5vhJQbHjZSOi0uBMH
	mOEDjzSkIMzlRPcPvzKCyrk=
X-Google-Smtp-Source: ABdhPJyoPuXMNW6tar4CJSqS13ELcvt+pn3rNNBq4EHn7HvAkyspE1yP6pRARpl7MuiZllLrM36Eqg==
X-Received: by 2002:a9d:6e98:: with SMTP id a24mr15087889otr.351.1612845955255;
        Mon, 08 Feb 2021 20:45:55 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a54:4093:: with SMTP id i19ls148143oii.11.gmail; Mon, 08 Feb
 2021 20:45:54 -0800 (PST)
X-Received: by 2002:aca:220e:: with SMTP id b14mr1362238oic.130.1612845954760;
        Mon, 08 Feb 2021 20:45:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612845954; cv=none;
        d=google.com; s=arc-20160816;
        b=s/sOVZobW+IAxlFkpd4DiLHlyfZtFuLWs8/pWdzJiohkvrALzNtS0LN4Hn6ukZBYiM
         7N8Q4g2jlVLWfiPtqLCxR6GD7Rvs2Pzk6FyB5BIH4nf1PH5p+WBMrMOMy82Lys3Lm29J
         y38eGOnpOgVK3JeQcgrzGBKKnnnQXm7gN5fbHCdMsnxJR/mEKiZQ4xOG4b1L82LAjmRo
         DtZUujWivmdeUrMsKQd+1fkXoqIpfPrBDuhMJB1rb4BHAjU92sXP5MVl6MeKxSXbkBJt
         8jLz8etUOcq2UVKqm3mvCmWKuUJQejZEkohh6Hu50Dig9WeboVMXhK1Anq7WhKFWu48S
         YpGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=A6BzBFq/h4O9r6Thlrxst/c/U1T17VZ5hS40vkBwc/Y=;
        b=YiyDKQZ0KNEP79g0XHZ6vLzpfyHdfZrNm5WMWEV7vR4hQ2ewVRIHTy530oAzhUQVUi
         frukOvftlYGfCjwdYgQ7gBex3pgI8vaddknsnCbamsRgVlZqKVB98XTQsuccMCvDXBgS
         J3JiKXYT7LKHZ8At1m4wcS6AjzfwA6KQMsgB2s92KJ7oAEOAffH5P699N9jqmHRKZssp
         Ci6e2qRcDzHirA7aBIHYnGgOQVpIxi7dJqmYaseHAaB8P1h0CzvSrWN88Atc+TIE1fOH
         93jm/CUKO8FdpgVxrJoJjEncMmBgwXPv2Irlr1BCIBgnsvsg2FVCleP46292pLkPlIQu
         klIg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LcJXMO8x;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::b32 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yb1-xb32.google.com (mail-yb1-xb32.google.com. [2607:f8b0:4864:20::b32])
        by gmr-mx.google.com with ESMTPS id r13si1208598otd.3.2021.02.08.20.45.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 Feb 2021 20:45:54 -0800 (PST)
Received-SPF: pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::b32 as permitted sender) client-ip=2607:f8b0:4864:20::b32;
Received: by mail-yb1-xb32.google.com with SMTP id r2so16896845ybk.11
        for <clang-built-linux@googlegroups.com>; Mon, 08 Feb 2021 20:45:54 -0800 (PST)
X-Received: by 2002:a25:a183:: with SMTP id a3mr29427620ybi.459.1612845954258;
 Mon, 08 Feb 2021 20:45:54 -0800 (PST)
MIME-Version: 1.0
References: <20210209034416.GA1669105@ubuntu-m3-large-x86>
In-Reply-To: <20210209034416.GA1669105@ubuntu-m3-large-x86>
From: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Date: Mon, 8 Feb 2021 20:45:43 -0800
Message-ID: <CAEf4BzYnT-eoKRL9_Pu_DEuqXVa+edN5F-s+k2RxBSzcsSTJ1g@mail.gmail.com>
Subject: Re: FAILED unresolved symbol vfs_truncate on arm64 with LLVM
To: Nathan Chancellor <nathan@kernel.org>
Cc: Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, 
	Andrii Nakryiko <andrii@kernel.org>, Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>, 
	Yonghong Song <yhs@fb.com>, John Fastabend <john.fastabend@gmail.com>, KP Singh <kpsingh@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Networking <netdev@vger.kernel.org>, 
	bpf <bpf@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Veronika Kabatova <vkabatov@redhat.com>, Jiri Olsa <jolsa@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: andrii.nakryiko@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=LcJXMO8x;       spf=pass
 (google.com: domain of andrii.nakryiko@gmail.com designates
 2607:f8b0:4864:20::b32 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
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

On Mon, Feb 8, 2021 at 7:44 PM Nathan Chancellor <nathan@kernel.org> wrote:
>
> Hi all,
>
> Recently, an issue with CONFIG_DEBUG_INFO_BTF was reported for arm64:
> https://groups.google.com/g/clang-built-linux/c/de_mNh23FOc/m/E7cu5BwbBAAJ
>
> $ make -skj"$(nproc)" ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- \
>                       LLVM=1 O=build/aarch64 defconfig
>
> $ scripts/config \
>     --file build/aarch64/.config \
>     -e BPF_SYSCALL \
>     -e DEBUG_INFO_BTF \
>     -e FTRACE \
>     -e FUNCTION_TRACER
>
> $ make -skj"$(nproc)" ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- \
>                       LLVM=1 O=build/aarch64 olddefconfig all
> ...
> FAILED unresolved symbol vfs_truncate
> ...
>
> My bisect landed on commit 6e22ab9da793 ("bpf: Add d_path helper")
> although that seems obvious given that is what introduced
> BTF_ID(func, vfs_truncate).
>
> I am using the latest pahole v1.20 and LLVM is at
> https://github.com/llvm/llvm-project/commit/14da287e18846ea86e45b421dc47f78ecc5aa7cb
> although I can reproduce back to LLVM 10.0.1, which is the earliest
> version that the kernel supports. I am very unfamiliar with BPF so I
> have no idea what is going wrong here. Is this a known issue?
>

I'll skip the reproduction games this time and will just request the
vmlinux image. Please upload somewhere so that we can look at DWARF
and see what's going on. Thanks.

> Cheers,
> Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAEf4BzYnT-eoKRL9_Pu_DEuqXVa%2BedN5F-s%2Bk2RxBSzcsSTJ1g%40mail.gmail.com.
