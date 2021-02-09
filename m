Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBQVYRCAQMGQEAPANI2A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23c.google.com (mail-oi1-x23c.google.com [IPv6:2607:f8b0:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id BB811314806
	for <lists+clang-built-linux@lfdr.de>; Tue,  9 Feb 2021 06:23:15 +0100 (CET)
Received: by mail-oi1-x23c.google.com with SMTP id s4sf5326674oia.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 08 Feb 2021 21:23:15 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612848194; cv=pass;
        d=google.com; s=arc-20160816;
        b=KCBXezFma8SloBQjqNf6iJg2vusyKEaUk1JSZ2UZ9mI3zU5eRTwFHDnCiT9QmNGSbz
         RpMrHN+Onb51xIsVIUC84RIfBVtTP+Ci4Nd/f0b1CM5AhToeEfD9rcbmgTcepDP37Ztp
         PtbLNTHpnTmLcLM6Ls7mX2A/zIdusnTbo84rYVjBuaBCxiyCIU8CcQFPfOs+fXdrFTfk
         yaYMTH9M63bHbb+1hMH3OKUDAOpNI/mQQTbPLWIvRAZsTtwm+XH+U62t2zzjpIIEP5d2
         QaZRz9GJldW2X02ec2gEO2nhcC79Py6HryTMdNvGAbRJOdomv6nDP/UqtgbswEhW4HAS
         o5nA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=TYh9MDx5G6OT7rPQvE5887oQdbex4RvsvF4IXiNAoZ0=;
        b=uF8unsCnonCnVFhCIPifXoZB+fwJha0zDtjH9viVylL0YUiyaOLmVYQxFu8AgkrBwB
         Did5yxMSZhqGDi4pO4h80dQA2eZLBNjwV11XTkL4V6DdWm5X7MQxVWtCw0tGuyw95My7
         n6TY0RzOkbWWIKLRXY5T/N9qSwn2yxIIQL1R8116Ok2nQOla9jNVnrW7gSkDfGM+FKvD
         ehyJdgGF8bw04MVhqbKmO/s/eT46kJeDQ2CbcLoBKHRKaG+ZwUGGR4oa2tGg1iW0EIii
         t7aHsq9tNLnQK/v/z01pGR+oX4LrD48os2oVCauh1kR2JhHT5XxRbsnbMUb36VyRDjV8
         /PKA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=u5V645Vj;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=TYh9MDx5G6OT7rPQvE5887oQdbex4RvsvF4IXiNAoZ0=;
        b=fzzfh1O0ynOGb9/hTWWALtxVo54FVX6/6eG6z2mdco5at5ktaFY2d9LfXLE/cmsawM
         VLywaL5/tq6Z23v/WAx515EMcad1zKcXjrw1GbDBYTnyUOKesEkMySJhrYfhCmNaaFDB
         ONqKkMJUy6hBGM5+hiqXTOBb1gcWQjUbsL4hf8mRaa/JfPWFioIR7HUVszE1cMcj2TQP
         Z25kZ5yPOtPamBW3Vf2tlPAklLC1DkB+FCMFnsyuz9vlm6FuEy5NuYOMZYN7TxazR0Vu
         nnb2ldu8cQZ5Kd+YlC1Nj8t/tWnFpc4XlBHcCuzNrhxZpZ0VkxbcN+quj0Isp4dPoE4G
         Pj6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=TYh9MDx5G6OT7rPQvE5887oQdbex4RvsvF4IXiNAoZ0=;
        b=msMpW2XzwSYDEQr6yt8E3pty3MpQP8YrMt+d6d0jV2/+SF+2CHd7mDuJ92CcstuShD
         +81qirhxsynm+yCvAQA+TPyAyZiUYzm+OhQv7tyUnSMXegmJVa5NDoaSaLWTp4a8kcin
         1pOR/sGVlSqKjMVLPfz3wDuwp0gx7YabUNIZCtVGsbKIjxWxMFCaOJBvCBL5i+aMZfxY
         Bv0MZUMqhYrzLFWob5BdYJj5DxApN+stNd/BYbC2HiCuARRxhINzBOM8Xf56XtcH4Oz5
         v2T7zfDDWV8zVIODE3KZJwF46Yc/FOUThDnwOExmaNDGH6208sTTtgf2ni9XrQ8MeMhz
         tEig==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53331mL44LHwie4YnKlyn6i5MFjTIduORqzPuRdJ6TQSAROcm+p0
	pCwD8WdyISlLDfxZViTfyco=
X-Google-Smtp-Source: ABdhPJzKe6d+oLP3HEteEvsH8t9jdmtrBgs3AT5ZwJ6wF89dfTFhtlL0oZ0EjdEy7kBEO952F+gdrg==
X-Received: by 2002:a9d:2046:: with SMTP id n64mr15188833ota.38.1612848194762;
        Mon, 08 Feb 2021 21:23:14 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:6e81:: with SMTP id a1ls993709otr.3.gmail; Mon, 08 Feb
 2021 21:23:14 -0800 (PST)
X-Received: by 2002:a9d:3a37:: with SMTP id j52mr14572247otc.328.1612848194344;
        Mon, 08 Feb 2021 21:23:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612848194; cv=none;
        d=google.com; s=arc-20160816;
        b=EJgXExHASkbAXBW71bdLPsKLdQX6UgpHuffBn49t7EOLBBfl6MBGdPGNcPwqtilHBm
         wYC5g3DbgRozQLxoi+6yehPFQGx38E7j0H4COph48kc7b6oGcKK0bUWTs00lDhvI9sim
         1/3BoWwkVY1rPsuVPtMai1qNKmqt5V0aP3GiiLmkJ3FFJSv8WJQ+fLGM55LEsDTnuLJt
         L/79db5zUYekM+7KMGOYlzbDrSoRoJ9bYECFiYaS23S/NDBM+2d7larCBuuvoURws5r0
         VZLfAFRxkGdES3+PO2M/uERZ19u2FOOL2IoBdEtAWWGSt6pLstbuflx5TJCxBAIpOZbU
         oikw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=/9jIoOyjRwufHBtylsscFet5qVHKNfMcKJ6rfnfO9wM=;
        b=P+ra5l6OnlXX+KTLw+amIXXo1lzwDr9/yRBFgoWRKUGZbp325krWJzyc54WVzy7HLD
         nuqfcLS8CQz9qkKa3Dk8XxbH04iIbRYvuVhN6mLhwrFKHs+FCI+p6lrgntnI/Fhuf/98
         6IaFHXjlS5dSlBY3ev6CNjTa3v5TK4MK1rFoZEJ6+e4yNv4WtnXXwB+5ET+WllgSaYeT
         44vSbJiNvvrYQGWyW3s8qJu2pkNC//38TmJZrDiR0+XZbgXD2H9zJ5r2bSL9Ah4WXKzF
         hfwAqxDMTJ7S6eLYghHitt4rj3cQF8FDaJy7RvDUNsXPzObScbd5T9jbQs+tx99RYfHT
         zDGw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=u5V645Vj;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id m16si890691oiw.5.2021.02.08.21.23.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 08 Feb 2021 21:23:14 -0800 (PST)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id F294864EB1;
	Tue,  9 Feb 2021 05:23:12 +0000 (UTC)
Date: Mon, 8 Feb 2021 22:23:11 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Cc: Alexei Starovoitov <ast@kernel.org>,
	Daniel Borkmann <daniel@iogearbox.net>,
	Andrii Nakryiko <andrii@kernel.org>,
	Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>,
	Yonghong Song <yhs@fb.com>,
	John Fastabend <john.fastabend@gmail.com>,
	KP Singh <kpsingh@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Networking <netdev@vger.kernel.org>, bpf <bpf@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Veronika Kabatova <vkabatov@redhat.com>,
	Jiri Olsa <jolsa@kernel.org>
Subject: Re: FAILED unresolved symbol vfs_truncate on arm64 with LLVM
Message-ID: <20210209052311.GA125918@ubuntu-m3-large-x86>
References: <20210209034416.GA1669105@ubuntu-m3-large-x86>
 <CAEf4BzYnT-eoKRL9_Pu_DEuqXVa+edN5F-s+k2RxBSzcsSTJ1g@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAEf4BzYnT-eoKRL9_Pu_DEuqXVa+edN5F-s+k2RxBSzcsSTJ1g@mail.gmail.com>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=u5V645Vj;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Mon, Feb 08, 2021 at 08:45:43PM -0800, Andrii Nakryiko wrote:
> On Mon, Feb 8, 2021 at 7:44 PM Nathan Chancellor <nathan@kernel.org> wrote:
> >
> > Hi all,
> >
> > Recently, an issue with CONFIG_DEBUG_INFO_BTF was reported for arm64:
> > https://groups.google.com/g/clang-built-linux/c/de_mNh23FOc/m/E7cu5BwbBAAJ
> >
> > $ make -skj"$(nproc)" ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- \
> >                       LLVM=1 O=build/aarch64 defconfig
> >
> > $ scripts/config \
> >     --file build/aarch64/.config \
> >     -e BPF_SYSCALL \
> >     -e DEBUG_INFO_BTF \
> >     -e FTRACE \
> >     -e FUNCTION_TRACER
> >
> > $ make -skj"$(nproc)" ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- \
> >                       LLVM=1 O=build/aarch64 olddefconfig all
> > ...
> > FAILED unresolved symbol vfs_truncate
> > ...
> >
> > My bisect landed on commit 6e22ab9da793 ("bpf: Add d_path helper")
> > although that seems obvious given that is what introduced
> > BTF_ID(func, vfs_truncate).
> >
> > I am using the latest pahole v1.20 and LLVM is at
> > https://github.com/llvm/llvm-project/commit/14da287e18846ea86e45b421dc47f78ecc5aa7cb
> > although I can reproduce back to LLVM 10.0.1, which is the earliest
> > version that the kernel supports. I am very unfamiliar with BPF so I
> > have no idea what is going wrong here. Is this a known issue?
> >
> 
> I'll skip the reproduction games this time and will just request the
> vmlinux image. Please upload somewhere so that we can look at DWARF
> and see what's going on. Thanks.
> 

Sure thing, let me know if this works. I uploaded in two places to make
it easier to grab:

zstd compressed:
https://github.com/nathanchance/bug-files/blob/3b2873751e29311e084ae2c71604a1963f5e1a48/btf-aarch64/vmlinux.zst

uncompressed:
https://1drv.ms/u/s!AsQNYeB-IEbqjQiUOspbEdXx49o7?e=ipA9Hv

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210209052311.GA125918%40ubuntu-m3-large-x86.
