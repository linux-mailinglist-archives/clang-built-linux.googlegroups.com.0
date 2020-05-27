Return-Path: <clang-built-linux+bncBCTYRDEG7MGBBJFZXP3AKGQEP6DDTUQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3b.google.com (mail-vk1-xa3b.google.com [IPv6:2607:f8b0:4864:20::a3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C66B1E508A
	for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 23:33:25 +0200 (CEST)
Received: by mail-vk1-xa3b.google.com with SMTP id m142sf9694992vke.21
        for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 14:33:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590615204; cv=pass;
        d=google.com; s=arc-20160816;
        b=lGd2khpp6CzKeF4Zlvj2tOPKfdMLsOPnRLdj4ou+B5IPAK+qKWtwTGXDZwiGjvmFmW
         JPW9AfelQjfLUAumaC4IXCirZh1CPTY54cZH0ob4RKRlw5WD17VZnIdbKOq2Bo3r50TY
         RhH+ALYAM6vEy9H6H4gak7+siDV0jyDruuvFdFAGBWK53/wK4LFL7HnldYN1B5InRb8Z
         FYur+FTxJWEtCC/r/OO8s6HGoKX8VNebLEnFXN+UjCVH7z7E+H5kJD/qk/NXxn9957AX
         M9dVdfcN7D3/A7691itrNdB4dBG4L+lP84e/AiK/PEKGfkmk2/rkqzshNjXXhcI997xW
         p6Zw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=+Xq+NQ6/CctbiHttWSiyKHx10ifkEbe6I8l+15q8+O8=;
        b=tD6pql6fEt0D9pVAgPv+ZRWC+Iqbq/lO4mbQGm5GzoHkFRjg4KdxKL4IqTdgrHpUOt
         pXSmv7afFcBUYfyEcArSiVF+S8oyF2Sjxw9O9XT76F0XRfHq2F0EQuoq+BMap0dWZzLE
         vL5D/jAYTo9FFdJMB+m2Ydho3xYycHvoY071OEbun4dRi64GlyXmzZMIQa8Z8FC7csJA
         /fqR+yMB8ScVB5WdyETOZlCsdWBZQGkalWEZ0zjRTlPvxnKP9BkPiVV8Y1RbZ4xfA+9W
         Elj86sgN2e1APnrC9aL3kQBZ7RE+knJOsZcvgNNqE/eqkh77PNVZRG56S61ertRFCiYW
         UA7g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lqZp7hod;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+Xq+NQ6/CctbiHttWSiyKHx10ifkEbe6I8l+15q8+O8=;
        b=b3JR5SfQVftP8rLd4XkyME7N+1+Jr7m75YPuSb9KiJ0aRgf6OMA7Zw9eSS96JYi73y
         gP72dITMtVI3na2XpUVoUmJPaGYd8RGeSDBxIwTlOHWqGKvy3LBqEu5KVs3rNaP1ROJw
         ylNi080KGeRnec95Y+jtcyikSHvtmvBFRuleFJ5iLUVUX9LEWz4Hhj15moAQE9lV0Mss
         kgzRLnoIFnHGEXV+d7AW4Vv+VcNttdFKzKXtmxMeViK/YLhUNpzn184PvhaQK0YZwmF0
         OVB3M5ork/d2yuD0fvMBP1HUPasQw3KXSKCNs9jGxIN7M35sUDGHCYsgZxxHl5USqmGS
         JDjA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+Xq+NQ6/CctbiHttWSiyKHx10ifkEbe6I8l+15q8+O8=;
        b=C+5brZTnQWsxXD2JjxiPF52k6bPwm7jWzhh677EtJlEHyMJDNE25tJT6WwfrAHVLlI
         FiAd+H9o1hBT70Z6YeaLnEaVMFP8Je3vsOM07zibhePY0dfww8jM1/6kAuVEY00rii4U
         5D0lJEn33gzmdXFpdAkZlTCAwXnbuP3YKEZbm2tl5aat/LkH90n2kXuakFYBsHEWi5Kj
         BxFIF5UBKl9nHKgI1qBTrePJmRnuH7pcBtccPjr4SvzDd+kXieCxR0af4WrviJGb46ao
         fYywwmykFBBtIa7zUsJYv7/J8QPNFdUiEUo2HqGZ9OOiNzyHS+WC/PS+9ZZ/U7N1UM0t
         +Z/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+Xq+NQ6/CctbiHttWSiyKHx10ifkEbe6I8l+15q8+O8=;
        b=i0/f35idr4t10APWQrJTv3yOVbwPunjUfzShuK23BBDhLmtAWzTi2xYCuNF0LTfZY0
         xNrPFcSSNTgurEjqNK4EkCY9Q/K7uKf83R+n7k0yk5JbYnOF1b1fuO2opOiEMp8Rdy8s
         3/zXhsPNamg2v0USVD8MDT2WjvKz3fYsqpwV3twc3/Dr2SUkNMpre9WlerHF/cuOkBLq
         LGAhELkc6DagDFhJIFqAvgFad7T6NQC1tZwXLf8JED+vbaOJPdtVH4Ll+kBNn7QhPg7b
         QSaxD9dyrb+Z7m/hOCYFD/GcWKhIOOQjyddNZdwt0IGVpvjGetMkMUky7HoLYbEebFbl
         ZvFw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530d4gbkH2p1qKzZTbsH/oijURMj19ujPIS5FlxSrdXOtHv+yrJL
	8jjE8H62B6pxlvrG3kryN+k=
X-Google-Smtp-Source: ABdhPJycjZgjQrEBNrJLv9ULaKkBiiQhTa/y7HrX+C/v2uzLW2S3RHz2OjQUG8ORNKk7rtwzEhLblQ==
X-Received: by 2002:a67:30ce:: with SMTP id w197mr6390865vsw.49.1590615204633;
        Wed, 27 May 2020 14:33:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:fe91:: with SMTP id b17ls31226vsr.5.gmail; Wed, 27 May
 2020 14:33:24 -0700 (PDT)
X-Received: by 2002:a67:e952:: with SMTP id p18mr6358615vso.73.1590615204209;
        Wed, 27 May 2020 14:33:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590615204; cv=none;
        d=google.com; s=arc-20160816;
        b=wjG9rx6DQ2pM7cgLKQ6PqN3JDW9ctEmjuZpKqqzqjfJFV+MARMvSO1L8XFFH2cXfSI
         fExWV05dmVX9x9AwzrcaMisI7BeQb+n9y4D9BsIv71QnJAi0VlPne5xFOpwhMkbY8b8M
         LuojHrwipD/WKeKXgeA4QGppD0s/7ZSSaXrwJyU6Vpv0keOuhLSKXIZKOEMSMwXWxvAu
         ENNfl3B5pbY3gLOH+yPZVZOfcY5B+UO1IP9RiC3UNzbN76PHBlHe8mFTPC9Ke5pZLd4A
         7HYWeHe5pasXuUlrjXJ1FofBB/XyCCX2bOgpgNFkijACt6ceC7gCy7J1316lgyo87dId
         CDSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=fxtUP+fWIp3dwg1JcjyXsNPnXoOQD/0uIPaUAzDSEdI=;
        b=RewYglrVX5l6UB0twNBtDApy22BoGOo6gkOUQHxoPkUDuB1a0EqHF5HFGp3TRBBjsL
         vj8BZEJmgeCvv29Th59c+El3ET3OBOrRVDsQACgz/kY9G+I2S1AaCalEk3qHnxvVXKmO
         FYHzvO2qrF11d9blHlzBxHDw19WARodWKzWnIRKh9x+gpoKF9EkaYpXfXX+iX9RaSIa/
         SYxACljT1jtCuFtktrve+sKgoVPPoJEndXq7hvMIqGzIOFPnHtaglB/eC0FF6PoQnWcZ
         F6lJN1L9wR79J7uD87q/K2O5e7eqxZwDtZtJbw5bR1LZBORPLqKjlzc2Ppn5i8YXEkAy
         PO7w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lqZp7hod;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qt1-x844.google.com (mail-qt1-x844.google.com. [2607:f8b0:4864:20::844])
        by gmr-mx.google.com with ESMTPS id t9si359316vkb.1.2020.05.27.14.33.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 May 2020 14:33:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) client-ip=2607:f8b0:4864:20::844;
Received: by mail-qt1-x844.google.com with SMTP id k22so5791816qtm.6
        for <clang-built-linux@googlegroups.com>; Wed, 27 May 2020 14:33:24 -0700 (PDT)
X-Received: by 2002:ac8:42ce:: with SMTP id g14mr6437895qtm.117.1590615203771;
 Wed, 27 May 2020 14:33:23 -0700 (PDT)
MIME-Version: 1.0
References: <CAEf4BzbR+7X-boCBC-f60jugp8xWKVTeFTyUmrcv8Qy4iKsvjg@mail.gmail.com>
 <C31OATROKNZK.27CUNDSXX9I4K@maharaja>
In-Reply-To: <C31OATROKNZK.27CUNDSXX9I4K@maharaja>
From: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Date: Wed, 27 May 2020 14:33:12 -0700
Message-ID: <CAEf4BzYP0gf9wKonV6vkXxR4c9dsVfqJr0-tCXU_3j_R98k9FA@mail.gmail.com>
Subject: Re: [PATCH bpf-next] libbpf: Export bpf_object__load_vmlinux_btf
To: Daniel Xu <dxu@dxuuu.xyz>
Cc: Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, Martin Lau <kafai@fb.com>, 
	Song Liu <songliubraving@fb.com>, Yonghong Song <yhs@fb.com>, Andrii Nakryiko <andriin@fb.com>, 
	john fastabend <john.fastabend@gmail.com>, KP Singh <kpsingh@chromium.org>, 
	"David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>, 
	Jesper Dangaard Brouer <hawk@kernel.org>, bpf <bpf@vger.kernel.org>, 
	Networking <netdev@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: andrii.nakryiko@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=lqZp7hod;       spf=pass
 (google.com: domain of andrii.nakryiko@gmail.com designates
 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
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

On Wed, May 27, 2020 at 10:12 AM Daniel Xu <dxu@dxuuu.xyz> wrote:
>
> Hi Andrii,
>
> On Tue May 26, 2020 at 3:09 PM PST, Andrii Nakryiko wrote:
> > On Tue, May 26, 2020 at 7:09 PM Daniel Xu <dxu@dxuuu.xyz> wrote:
> > >
> > > Right now the libbpf model encourages loading the entire object at once.
> > > In this model, libbpf handles loading BTF from vmlinux for us. However,
> > > it can be useful to selectively load certain maps and programs inside an
> > > object without loading everything else.
> >
> > There is no way to selectively load or not load a map. All maps are
> > created, unless they are reusing map FD or pinned instances. See
> > below, I'd like to understand the use case better.
> >
> > >
> > > In the latter model, there was perviously no way to load BTF on-demand.
> > > This commit exports the bpf_object__load_vmlinux_btf such that we are
> > > able to load BTF on demand.
> > >
> >
> > Let's start with the real problem, not a solution. Do you have
> > specific use case where you need bpf_object__load_vmlinux_btf()? It
> > might not do anything if none of BPF programs in the object requires
> > BTF, because it's very much tightly coupled with loading bpf_object as
> > a whole model. I'd like to understand what you are after with this,
> > before exposing internal implementation details as an API.
>
> If I try loading a program through the following sequence:
>
>     bpf_object__open_file()
>     bpf_object__find_program_by_name()
>     bpf_program__load()
>

bpf_program__load() is just broken and shouldn't have been ever
exposed. It **might** work for trivial BPF programs not using maps,
Kconfig and global variables, etc, but more by accident. I think the
right fix for your use-case is to allow more control of which programs
are auto-loaded. There was a patch by Eric Sage previously adding
bpf_program__set_autoload(), but it never landed. We should actually
do that approach instead.

> And the program require BTF (tp_btf), I get an unavoidable (to the best
> of my knowledge) segfault in the following code path:
>
>     bpf_program__load()
>       libbpf_find_attach_btf_id()    <-- [0]
>         __find_vmlinx_btf_id()
>           find_btf_by_prefix_kind()
>             btf__find_by_name_kind() <-- boom (btf->nr_types)
>
> because [0] passes prog->obj->btf_vmlinux which is still null. So the
> solution I'm proposing is exporting bpf_object__load_vmlinux_btf() and
> calling that on struct bpf_object before performing prog loads.
>
> [...]
>
> Thanks,
> Daniel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAEf4BzYP0gf9wKonV6vkXxR4c9dsVfqJr0-tCXU_3j_R98k9FA%40mail.gmail.com.
