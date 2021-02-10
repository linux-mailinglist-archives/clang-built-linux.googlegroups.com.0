Return-Path: <clang-built-linux+bncBCTYRDEG7MGBB4GHSCAQMGQELN3B6BQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83f.google.com (mail-qt1-x83f.google.com [IPv6:2607:f8b0:4864:20::83f])
	by mail.lfdr.de (Postfix) with ESMTPS id A12AE316E59
	for <lists+clang-built-linux@lfdr.de>; Wed, 10 Feb 2021 19:20:33 +0100 (CET)
Received: by mail-qt1-x83f.google.com with SMTP id v22sf2221233qto.16
        for <lists+clang-built-linux@lfdr.de>; Wed, 10 Feb 2021 10:20:33 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612981232; cv=pass;
        d=google.com; s=arc-20160816;
        b=02PR0+qAebrQK7FZ3WEUBGTFSMwaJxkpkS6bDEq0Wv2eXuKrDdvawKTODSB3upSYv9
         JWn6dNniaG9P9rU1JkzdhC+zXPawHsaW+KxLbjzMTO0E3tg1UZ1c+7fCPzgUhzRcBKFK
         DdcwFD8m3le/GR6bQC2urmKbpxNrvt6blloCgPZR+FA5PTUQqZyjcmaPhnq/JSlI5bvz
         QucpuKMFp+L8KNlXWMxbQqL7SfNxIS7JHX5h/sZYJcFJZlXNF0URxMfRgxOLbGKTzih5
         8hcCJyyhK8rbmSbLLdPTNpMwC+3grWaEyrQ83ocou8CfV+2kD5Dg5xXAOAriwRvEXz0v
         WxDQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=ke3N/MwzBOhwAmnnCLWDUNWlDTnJTuSDJBiCXD33Z0k=;
        b=xF+RvOizXCyT6LFBCguVX8dgNr5qWuKAY44OjvneMCVTAnAfmwQS7Jb/cxAZ5EJkcY
         YF+MN3aZKrrAzqtzqKRZUy1EFeW6BABswEjWFUUJLUhUVl3y5J3DpAak5R6yuQym66HN
         unwmWrXmbFgiDnmg9YjJ7n1sX/nCeO6yg89yhE6/FwjMrtPTF5w9aWbMZiPQO99iSbPA
         5mXLoZDVpYfyQlYbtNjuZfOZOQnD529tTzVqhKEu3oSW1qypszYFIxlZm36rfBAnC/Gi
         B8cTu/v2vJoATzdBFd1AMGsaza5Uk2Bru0/7ndqod88Yi2Ktsv8R+J1eFJpabEvm7cB5
         6fHQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=J9eWa3Rp;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::b32 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ke3N/MwzBOhwAmnnCLWDUNWlDTnJTuSDJBiCXD33Z0k=;
        b=PrI/hDdwuh+Ydww1PbNnTjE7WasuW0WEJJ0UF9op+VavUvgz+7JcO3RoMy8cf2AmlA
         FHprCUzh1lKPdzKN6G/UfrM5qM7QmBaRRfpWdEpA2oFxPqOcml4SdM4g5AKcgAK5u2HU
         8t0I6J0kuLqH4BsbvTnlySWj3dip2kGr2p+LWWv0mU03WMFXzsTvAcXZhWjRl+py3V8G
         Lr46HodG9Vx3Q7/sJG6Mo4mo1gO1w9lo8xDYAAQgEy0imjV1QamW9W1qaeZk0EaS3JnH
         uqwrstr9zA0u6nm2Me7Xk5c3eryMA4OnFtspFAYyN7ZIRTXQgxyVy1gxM+jke2wW3oJ6
         zeeA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ke3N/MwzBOhwAmnnCLWDUNWlDTnJTuSDJBiCXD33Z0k=;
        b=t9V2olbQQBz4ZmWZq1R1IrYfmklcU/zUZCit1xZmGunqwLNhdiyRv8nE2v2dk+8L+7
         5dsqe/HSiaOXf/BidRwZHDuGuMN/Iv15tPWhjVIlHBLykWie9COvyoToZOSwCGjuvJyx
         CJ2esKTFsKQM881BWaeeP8V4MQV5ycyZ1JOkyet1cuxFaoukfa0PdgMVqCHuFium1t0N
         7OmywkToe7jusQQ0MFY6b1N/H0ODx9SnPbGhs6h+UbTGzb4xSt9xajPhemUpli6vTFdj
         /mwtPBAENrub5qqOCiRtQLyXlfQ7LSNmJ/PEy2BmSVu11BIu0RzD0EEduhHy24xudV1k
         j4zQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ke3N/MwzBOhwAmnnCLWDUNWlDTnJTuSDJBiCXD33Z0k=;
        b=Zw+PTm52jDqP4aXfdpdh+r7RWlM5lx9lFtMmOQ/ozHjz8jlSmFdReGjFiNMoUhb4ey
         n+69MuhL/+/gxpMV5baxEGM3vRSdGrQcMueZH0FzaqHjAdAqZHADH2uoPcFeXH4JwXa6
         SpF+vCI0lN2MbsGKkYgXDopttamLYtUfchoo9EzXYBlI/4NWRk3ZUHv+WYIuNGP0tsos
         526wRRzSZ0BEeVhcl9fwFGRmItKFeVKBp1fX739xq2/yAezx89PDfLOwwxYoTuxF0lTO
         ARwf7w0Im0SqdIkoHc0YUJtXcPtkxCZiW7SrXHouDxEVOAGCMT8Ez943toakqzbYvIgl
         TSGg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530dY3YCMVCv8O30NJTtap3pbziAUi1EqbkHhr91utXJHgpOkkr/
	oCCiuQME/OAnxUiJtFF6W2E=
X-Google-Smtp-Source: ABdhPJwq7eUSoUl+z7ghXwjiAjbPMkzOez8NWbgPZ484odHmkNaU0k/qFqEVoU+4RcWH9znx4nCehA==
X-Received: by 2002:a0c:8c87:: with SMTP id p7mr3877538qvb.46.1612981232393;
        Wed, 10 Feb 2021 10:20:32 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:d0:: with SMTP id d16ls1032129qtg.11.gmail; Wed, 10 Feb
 2021 10:20:32 -0800 (PST)
X-Received: by 2002:ac8:6f04:: with SMTP id g4mr4008510qtv.20.1612981231922;
        Wed, 10 Feb 2021 10:20:31 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612981231; cv=none;
        d=google.com; s=arc-20160816;
        b=Kjao4tH4R0KU5xwHlOoOSScdScVPyMyuZ+RqYyt9vQ68YLaAmhxff0B0SN4cFrIbmv
         9pWBVN1lkJk7SXaaeXybyKzk3Dceg5eN/8Ilk0h4+Bf6C9avND5N2SG7IIB5UJO8wbhV
         gpoIw48ACSAWNk8ZLjncPhCwFwm2gNwjyO6xP/pI1LYK9t/UhTHJeNZ1uE1Ukxb6DBx5
         aQA0XcFO08ayAx/x3FB0zLMVRH3IhzUiRMB/9CzCA1TSmGMVC/+w6f4NXXv756oJzX7i
         Fko+BAvZUOZ8wxJVt3UqgtvqCpOpposMp8KzHa1NjI/RxGiqwJGz6hj1alkwuG314ive
         HiyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=XUbrz/8xxXdqtk8DEEenUBbYYKqni3z7WGyd8h4oZBY=;
        b=xB3T+Abx7gkPSjYCKWs2BnL0OgGiUGGm1dk43UC07iOIXSyU6chCppeavpKY9h2NAf
         YIqySfIFe71BwdWVm60T5so6F07u5ghZCHJibkUumxE7AqgNwZW4EcQ6tm55edbnQQp3
         FCCqbSiqjKaoxbP7YvCh9j5pEufYDGMwe5Btb+qSHqnLIDLf1EnV4rr1gD6AM0sDKF+I
         M75ugh9VaLjuSqF7FbgHb46Q3rfyv5iAtoZAlvscDrFAcaGegyusbSUG+t0MYj60KNmN
         /9yVziAOB9vz5k2aEF7vc2ah3QUxQDq6qz/Ru3kXssE+Vbq7jI2Aw840963KRFlOn7Tg
         5+Ug==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=J9eWa3Rp;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::b32 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yb1-xb32.google.com (mail-yb1-xb32.google.com. [2607:f8b0:4864:20::b32])
        by gmr-mx.google.com with ESMTPS id x65si163824qkb.2.2021.02.10.10.20.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Feb 2021 10:20:31 -0800 (PST)
Received-SPF: pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::b32 as permitted sender) client-ip=2607:f8b0:4864:20::b32;
Received: by mail-yb1-xb32.google.com with SMTP id r2so2925716ybk.11
        for <clang-built-linux@googlegroups.com>; Wed, 10 Feb 2021 10:20:31 -0800 (PST)
X-Received: by 2002:a25:c905:: with SMTP id z5mr5909207ybf.260.1612981231520;
 Wed, 10 Feb 2021 10:20:31 -0800 (PST)
MIME-Version: 1.0
References: <20210209052311.GA125918@ubuntu-m3-large-x86> <CAEf4BzZV0-zx6YKUUKmecs=icnQNXJjTokdkSAoexm36za+wdA@mail.gmail.com>
 <CAEf4BzYvri7wzRnGH_qQbavXOx5TfBA0qx4nYVnn=YNGv+vNVw@mail.gmail.com>
 <CAEf4Bzax90hn_5axpnCpW+E6gVc1mtUgCXWqmxV0tJ4Ud7bsaA@mail.gmail.com>
 <20210209074904.GA286822@ubuntu-m3-large-x86> <YCKB1TF5wz93EIBK@krava>
 <YCKlrLkTQXc4Cyx7@krava> <CAEf4BzaL=qsSyDc8OxeN4pr7+Lvv+de4f+hM5a56LY8EABAk3w@mail.gmail.com>
 <YCMEucGZVPPQuxWw@krava> <CAEf4BzacQrkSMnmeO3sunOs7sfhX1ZoD_Hnk4-cFUK-TpLNqUA@mail.gmail.com>
 <YCPfEzp3ogCBTBaS@krava>
In-Reply-To: <YCPfEzp3ogCBTBaS@krava>
From: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Date: Wed, 10 Feb 2021 10:20:20 -0800
Message-ID: <CAEf4BzbzquqsA5=_UqDukScuoGLfDhZiiXs_sgYBuNUvTBuV6w@mail.gmail.com>
Subject: Re: FAILED unresolved symbol vfs_truncate on arm64 with LLVM
To: Jiri Olsa <jolsa@redhat.com>
Cc: Nathan Chancellor <nathan@kernel.org>, Alexei Starovoitov <ast@kernel.org>, 
	Daniel Borkmann <daniel@iogearbox.net>, Andrii Nakryiko <andrii@kernel.org>, 
	Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>, Yonghong Song <yhs@fb.com>, 
	John Fastabend <john.fastabend@gmail.com>, KP Singh <kpsingh@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Networking <netdev@vger.kernel.org>, 
	bpf <bpf@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Veronika Kabatova <vkabatov@redhat.com>, Jiri Olsa <jolsa@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: andrii.nakryiko@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=J9eWa3Rp;       spf=pass
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

On Wed, Feb 10, 2021 at 5:26 AM Jiri Olsa <jolsa@redhat.com> wrote:
>
> On Tue, Feb 09, 2021 at 02:00:29PM -0800, Andrii Nakryiko wrote:
>
> SNIP
>
> > > > > I'm still trying to build the kernel.. however ;-)
> > > > >
> > > > > patch below adds the ftrace check only for static functions
> > > > > and lets the externa go through.. but as you said, in this
> > > > > case we'll need to figure out the 'notrace' and other checks
> > > > > ftrace is doing
> > > > >
> > > > > jirka
> > > > >
> > > > >
> > > > > ---
> > > > > diff --git a/btf_encoder.c b/btf_encoder.c
> > > > > index b124ec20a689..4d147406cfa5 100644
> > > > > --- a/btf_encoder.c
> > > > > +++ b/btf_encoder.c
> > > > > @@ -734,7 +734,7 @@ int cu__encode_btf(struct cu *cu, int verbose, bool force,
> > > > >                         continue;
> > > > >                 if (!has_arg_names(cu, &fn->proto))
> > > > >                         continue;
> > > > > -               if (functions_cnt) {
> > > > > +               if (!fn->external && functions_cnt) {
> > > >
> > > > I wouldn't trust DWARF, honestly. Wouldn't checking GLOBAL vs LOCAL
> > > > FUNC ELF symbol be more reliable?
> > >
> > > that'd mean extra bsearch on each processed function,
> > > on the ther hand, we'are already slow ;-) I'll check
> > > how big the slowdown would be
> > >
> >
> > We currently record addresses and do binary search. Now we need to
> > record address + size and still do binary search with a slightly
> > different semantics (find closest entry >= addr). Then just check that
> > it overlaps, taking into account the length of the function code. It
> > shouldn't result in a noticeable slowdown. Might be actually faster,
> > because we might avoid callback function call costs.
>
> I'm still not sure how to handle the external check for function via elf,

I might be missing something, but don't all functions have
corresponding ELF symbols? And then symbol can have LOCAL or GLOBAL
type. LOCALs are supposed to be not visible outside respective CUs (so
correspond to static functions), while GLOBALs are extern-able funcs.
So if func's symbol is GLOBAL, it should be ok to assume it's
attachable (not inlined, at least).

> but below is change for checking that ftrace addrs are within elf functions
>
> seems to work in my tests, I'll run some more tests and send full patch

It seems unnecessarily convoluted. I was thinking about something like
this (the diff will totally be screwed up by gmail, and I haven't even
compiled it):

diff --git a/btf_encoder.c b/btf_encoder.c
index b124ec20a689..8162b238bd43 100644
--- a/btf_encoder.c
+++ b/btf_encoder.c
@@ -236,6 +236,23 @@ get_kmod_addrs(struct btf_elf *btfe, __u64
**paddrs, __u64 *pcount)
        return 0;
 }

+struct func_seg { __u64 start; __u64 end; };
+
+static int func_exists(struct func_seg *segs, size_t len, __u64 addr)
+{
+       size_t l = 0, r = len - 1, m;
+
+       while (l < r) {
+               m = l + (r - l + 1) / 2;
+               if (segs[m].start <= addr)
+                       l = m;
+               else
+                       r = m - 1;
+       }
+
+       return segs[l].start <= addr && addr < segs[l].end;
+}
+
 static int setup_functions(struct btf_elf *btfe, struct funcs_layout *fl)
 {
        __u64 *addrs, count, i;
@@ -286,7 +303,7 @@ static int setup_functions(struct btf_elf *btfe,
struct funcs_layout *fl)
                __u64 addr = kmod ? func->addr + func->sh_addr : func->addr;

                /* Make sure function is within ftrace addresses. */
-               if (bsearch(&addr, addrs, count, sizeof(addrs[0]), addrs_cmp)) {
+               if (func_exists(addrs, count, addr))
                        /*
                         * We iterate over sorted array, so we can easily skip
                         * not valid item and move following valid field into


So the idea is to use address segments and check whether there is a
segment that overlaps with a given address by first binary searching
for a segment with the largest starting address that is <= addr. And
then just confirming that segment does overlap with the requested
address.

WDYT?

>
> jirka
>
>
> ---
> diff --git a/btf_encoder.c b/btf_encoder.c
> index b124ec20a689..548a12847f99 100644
> --- a/btf_encoder.c
> +++ b/btf_encoder.c
> @@ -36,6 +36,7 @@ struct funcs_layout {
>  struct elf_function {
>         const char      *name;
>         unsigned long    addr;
> +       unsigned long    end;
>         unsigned long    sh_addr;
>         bool             generated;
>  };
> @@ -44,7 +45,7 @@ static struct elf_function *functions;
>  static int functions_alloc;
>  static int functions_cnt;
>
> -static int functions_cmp(const void *_a, const void *_b)
> +static int functions_cmp_name(const void *_a, const void *_b)
>  {
>         const struct elf_function *a = _a;
>         const struct elf_function *b = _b;
> @@ -52,6 +53,16 @@ static int functions_cmp(const void *_a, const void *_b)
>         return strcmp(a->name, b->name);
>  }
>
> +static int functions_cmp_addr(const void *_a, const void *_b)
> +{
> +       const struct elf_function *a = _a;
> +       const struct elf_function *b = _b;
> +
> +       if (a->addr == b->addr)
> +               return 0;
> +       return a->addr < b->addr ? -1 : 1;
> +}
> +
>  static void delete_functions(void)
>  {
>         free(functions);
> @@ -98,6 +109,7 @@ static int collect_function(struct btf_elf *btfe, GElf_Sym *sym,
>
>         functions[functions_cnt].name = name;
>         functions[functions_cnt].addr = elf_sym__value(sym);
> +       functions[functions_cnt].end = (__u64) -1;
>         functions[functions_cnt].sh_addr = sh.sh_addr;
>         functions[functions_cnt].generated = false;
>         functions_cnt++;
> @@ -236,9 +248,25 @@ get_kmod_addrs(struct btf_elf *btfe, __u64 **paddrs, __u64 *pcount)
>         return 0;
>  }
>
> +static bool is_addr_in_func(__u64 addr, struct elf_function *func, bool kmod)
> +{
> +       /*
> +        * For vmlinux image both addrs[x] and functions[x]::addr
> +        * values are final address and are comparable.
> +        *
> +        * For kernel module addrs[x] is final address, but
> +        * functions[x]::addr is relative address within section
> +        * and needs to be relocated by adding sh_addr.
> +        */
> +       __u64 start = kmod ? func->addr + func->sh_addr : func->addr;
> +       __u64 end = kmod ? func->end+ func->sh_addr : func->end;
> +
> +       return start <= addr && addr < end;
> +}
> +
>  static int setup_functions(struct btf_elf *btfe, struct funcs_layout *fl)
>  {
> -       __u64 *addrs, count, i;
> +       __u64 *addrs, count, i_func, i_addr;
>         int functions_valid = 0;
>         bool kmod = false;
>
> @@ -266,43 +294,62 @@ static int setup_functions(struct btf_elf *btfe, struct funcs_layout *fl)
>                 return 0;
>         }
>
> -       qsort(addrs, count, sizeof(addrs[0]), addrs_cmp);
> -       qsort(functions, functions_cnt, sizeof(functions[0]), functions_cmp);
> -
>         /*
> -        * Let's got through all collected functions and filter
> -        * out those that are not in ftrace.
> +        * Sort both functions and addrs so we can iterate
> +        * both of them simultaneously and found matching
> +        * func/addr pairs.
>          */
> -       for (i = 0; i < functions_cnt; i++) {
> -               struct elf_function *func = &functions[i];
> -               /*
> -                * For vmlinux image both addrs[x] and functions[x]::addr
> -                * values are final address and are comparable.
> -                *
> -                * For kernel module addrs[x] is final address, but
> -                * functions[x]::addr is relative address within section
> -                * and needs to be relocated by adding sh_addr.
> -                */
> -               __u64 addr = kmod ? func->addr + func->sh_addr : func->addr;
> +       qsort(addrs, count, sizeof(addrs[0]), addrs_cmp);
> +       qsort(functions, functions_cnt, sizeof(functions[0]), functions_cmp_addr);
> +
> +       for (i_func = 0, i_addr = 0; i_func < functions_cnt; i_func++) {
> +               struct elf_function *func = &functions[i_func];
> +
> +               if (i_func + 1 < functions_cnt)
> +                       func->end = functions[i_func + 1].addr;
> +
> +               for (; i_addr < count; i_addr++) {
> +                       __u64 addr = addrs[i_addr];
> +
> +                       /* Functions are  ahead, catch up with addrs. */
> +                       if (addr < func->addr)
> +                               continue;
> +
> +                       /* Addr is within function - mark function as valid. */
> +                       if (is_addr_in_func(addr, func, kmod)) {
> +                               /*
> +                                * We iterate over sorted array, so we can easily skip
> +                                * not valid item and move following valid field into
> +                                * its place, and still keep the 'new' array sorted.
> +                                */
> +                               if (i_func != functions_valid)
> +                                       functions[functions_valid] = functions[i_func];
> +                               functions_valid++;
> +                               i_addr++;
> +                       }
>
> -               /* Make sure function is within ftrace addresses. */
> -               if (bsearch(&addr, addrs, count, sizeof(addrs[0]), addrs_cmp)) {
>                         /*
> -                        * We iterate over sorted array, so we can easily skip
> -                        * not valid item and move following valid field into
> -                        * its place, and still keep the 'new' array sorted.
> +                        * Addrs are ahead, catch up with functions, or we just
> +                        * found valid function and want to move to another.
>                          */
> -                       if (i != functions_valid)
> -                               functions[functions_valid] = functions[i];
> -                       functions_valid++;
> +                       break;
>                 }
>         }
>
> +       if (btf_elf__verbose) {
> +               printf("Found %d functions out of %d symbols and %llu ftrace addresses.\n",
> +                       functions_valid, functions_cnt, count);
> +       }
> +
>         functions_cnt = functions_valid;
>         free(addrs);
>
> -       if (btf_elf__verbose)
> -               printf("Found %d functions!\n", functions_cnt);
> +       /*
> +        * And finaly sort 'valid' functions by name,
> +        * so find_function can be used.
> +        */
> +       qsort(functions, functions_cnt, sizeof(functions[0]), functions_cmp_name);
> +
>         return 0;
>  }
>
> @@ -312,7 +359,7 @@ static struct elf_function *find_function(const struct btf_elf *btfe,
>         struct elf_function key = { .name = name };
>
>         return bsearch(&key, functions, functions_cnt, sizeof(functions[0]),
> -                      functions_cmp);
> +                      functions_cmp_name);
>  }
>
>  static bool btf_name_char_ok(char c, bool first)
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAEf4BzbzquqsA5%3D_UqDukScuoGLfDhZiiXs_sgYBuNUvTBuV6w%40mail.gmail.com.
