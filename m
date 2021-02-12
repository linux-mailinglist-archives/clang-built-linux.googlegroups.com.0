Return-Path: <clang-built-linux+bncBCTYRDEG7MGBBDNLTOAQMGQEOWVA4NI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93e.google.com (mail-ua1-x93e.google.com [IPv6:2607:f8b0:4864:20::93e])
	by mail.lfdr.de (Postfix) with ESMTPS id 799DB31A547
	for <lists+clang-built-linux@lfdr.de>; Fri, 12 Feb 2021 20:22:54 +0100 (CET)
Received: by mail-ua1-x93e.google.com with SMTP id d9sf163632uaf.18
        for <lists+clang-built-linux@lfdr.de>; Fri, 12 Feb 2021 11:22:54 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1613157773; cv=pass;
        d=google.com; s=arc-20160816;
        b=yTabWi0gZ6WXVBFVmuW2qa79KFp8SDBnDiFwKkEtD1eh8g8GLFG+R9baEgNPqV2kit
         v4ZoSBW60yxtHkPuMnMFfVc34ZNzNG/7NSbN3B45WvFkwwFuJYsWw3ZX96Dv5EHE9qCO
         /KyjSit3qmFvnDdj8edbb7yHCe5UOj8ww46+AEFSeP+c5r+D3lrZKfdS+k+DKUjB5pl9
         qEQXuHUhmQRYaz9zJ9ed9/7gCdKlm86BlOB4zqEIeyxaxA+goF2rLJX8YgnmmMS7iDyg
         g+ztaw1mZ9mYcZcDe4HVTPzF/2u93qRk9/1/+OQtqC9pFt0jrgGkZZFHyBJf9H+epsR1
         f4qw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=ZaPmNQ64/IQQBb574VNOF0eOeCE7maMTcv7lweczl+M=;
        b=dTjo0P23aHEXwBExIkJLVvRYJ1INB8VtHBY3pV0Mbs13TguclJaK47r2bkfIxBgHqy
         SyoX6ssDkbr0E3830fWWwF5k9Kruj6kXB2G7fKaPMNDEzE4FiGlrTmGCos4MgmFzKYQ3
         nbX63zgdSmQakOlzrPQqWtxtBzHXCh6IqAuQHozNIr5HjJntfevOVTlnhfm3+aCWZ1iP
         OnKuC/59NYnWQqQXj70po9N6PeEjzb5RaO2bWyelk+dr0HngK+aSU4RZrKYfa6lG5BHX
         0NdASvpMhWFQL3hSwozU55eEvrHimk9f5jA9qf1OokW3PU/Pt0+vPnoIjuMmDpBVhPVH
         yKZg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YrfMUVKp;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::b36 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZaPmNQ64/IQQBb574VNOF0eOeCE7maMTcv7lweczl+M=;
        b=LayBp7M8xDLhrOxvQewnnT9lss6XUmvt0VKa1oxKrdRQBzJ2PMcIXzKcjSvT05tR8V
         rY7h8lrfVQqeVY/OYGEEQxP5pknChOtO7eWSEkEbOIJSGEGzfvl0DBdiZD1NxAtIcqAJ
         Hl8z//boXDaUxFHxUipxj7hhl4NMRbQDXzZCsBomMWABk6mtgxPJUgDdWWLl/VZYpC09
         PiOKYxAt7oXqdvXpMFeriu5AmLUzOjjRLgTifkP1oevTwzrawkK7z2MGCboHEJPexIG3
         JyC09zvn7Knotyb6rtXlBGh1HrycWsQ0pOkePKNmNQ52GLBCEwwawPSdQysPBCl1i4qC
         K8Xw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZaPmNQ64/IQQBb574VNOF0eOeCE7maMTcv7lweczl+M=;
        b=ma3xevFVH+VhcQGovUuex5mLseSIq+MqLIF81ViwtZKSE7q7guMOo7tBhhFxPhwOzo
         xpmQxJfL9Q0THOCXLARCXe1u9PMEP3L86xJNPx9X1Ol2pt8SA9rIfzB88iippzlC/l21
         dbR2CEftSlbewMlWw9rr0ZUqYoAY87WLgLlQQuAcxeelhMK0bKJJEXLQQ76FOsFkCYtm
         guEBTLw7GkbS7oCo3bU+4XigEpaf0EhJa1yzLbjIZ4GdXMcYXpcTlBSifDAtIV3BzwPj
         hyuBpY+b5ZxohBvns4r1cNLyDHJJ75yWKmGl6p+ONeEnaCcnKQabT+s0U5R2pV02iD/I
         aAlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZaPmNQ64/IQQBb574VNOF0eOeCE7maMTcv7lweczl+M=;
        b=a/90xZ9rrgNb4y3b+EMTVdfDPOEcjfViPoWkGEVC497aXoof/zEpiDMexmlBy12Xmr
         p1vYyTLO5w67fRl3fCHE8c+ChER5AijbhSWY591rDExUx8N4y6g1lwOQAoLtcn841gb4
         cv1jeHeUB3OdSpp7Uy3UL2kQLADB43NMm80GoUia1Idhs4FRpzxsZX7uO0OGq8Y9fDWq
         baL15gM9v0R53Qcuo4WOEQd1D5/0CrauG9zdUgWfZFqY4ezrspx/hyoYG4/Ad2Td8o/C
         vVmxx9nYzSJDB3JcNxmdUQIXP+cMypBLLr1NX1TIRklMoXrxP/v2ZoW1ICI8rm8Piid/
         Tr2A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532BZbMVAR9IUkuFua3A6jEMRzV/izlfcsP2yrIJgyyqLAazByHk
	Pg7Q9h86ecpi6aU7IsUewxA=
X-Google-Smtp-Source: ABdhPJyNL7WTODBg6o+j5guJttDPd0Pqs7D1Qqe6/T8Id63weIRGjLn9oibWYNUt1iaJN/ZVRMZlJw==
X-Received: by 2002:a67:1d81:: with SMTP id d123mr2873618vsd.21.1613157773438;
        Fri, 12 Feb 2021 11:22:53 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:8886:: with SMTP id k128ls1206764vsd.4.gmail; Fri, 12
 Feb 2021 11:22:53 -0800 (PST)
X-Received: by 2002:a67:b405:: with SMTP id x5mr3104091vsl.17.1613157772983;
        Fri, 12 Feb 2021 11:22:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1613157772; cv=none;
        d=google.com; s=arc-20160816;
        b=OKGRdHusyxOfwFh0wpKoE8Qi2U1I59SYKacSvnm+5AO6dguv7exYY5nkEI0mpPDmrD
         uoVnrFYUPRxVQId+k5lxHAAwPDNO9NfcvH8obQNOyi7brj3pMXeadtGMYDZeFAYxCGyJ
         wFxscY/pncX4XxjBPtp12dr2u3Sg6E0rjBg1zII9x2uYWnjTf5s5ow/G1R0CvkR5/lKe
         6UFFbMaq/3AnGHr7UCXw9JJcqJCzHKct/lEJiJreEc8K/oPTnDXp1c8njelfaCo8yzos
         ye8zW46tGNniWnqJzj8nMRqU0uIM3t/vpS60ohG3lrOI8s+la6Xu+GxnnrTOXkatEuwX
         C2cA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=8WhYApIAA1XHJe5w4ij7wmcVL6byN9dhLexoHXk9CXU=;
        b=UPKibevAGUb8/tcIqJV4ge2JRk0VVO8aAPZFiPBk8Ryh0iUn1LQV88SpDvvJF4wnRk
         n+r4P/JY575UvxVHJKrC7SxxyolYX3hDPc2V5e7I4HexgWdqOzX74NXkuzhjzZdZanxo
         MuLA2ndJScVEXo9XrxoU+o0t2kIZJ4uKwVeIwtGCIm/76VBsZ3EHRzqv+E4t8tS8s44t
         WJng0iwVTBHXMiRNaKcAJn/l5aA0+1ssKSDG1edmUWxuYr5A8Wfeq0ZhClu12bEYnnJ/
         sRH4KGth7hcBly62uCf7RRSkjnLN93wszg2F37iPHdMikKLCT9Yw2tW/pO2yBKApNUzJ
         sw0Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YrfMUVKp;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::b36 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yb1-xb36.google.com (mail-yb1-xb36.google.com. [2607:f8b0:4864:20::b36])
        by gmr-mx.google.com with ESMTPS id y127si492854vsc.0.2021.02.12.11.22.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Feb 2021 11:22:52 -0800 (PST)
Received-SPF: pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::b36 as permitted sender) client-ip=2607:f8b0:4864:20::b36;
Received: by mail-yb1-xb36.google.com with SMTP id 133so513090ybd.5
        for <clang-built-linux@googlegroups.com>; Fri, 12 Feb 2021 11:22:52 -0800 (PST)
X-Received: by 2002:a25:c905:: with SMTP id z5mr6186821ybf.260.1613157772513;
 Fri, 12 Feb 2021 11:22:52 -0800 (PST)
MIME-Version: 1.0
References: <YCKB1TF5wz93EIBK@krava> <YCKlrLkTQXc4Cyx7@krava>
 <CAEf4BzaL=qsSyDc8OxeN4pr7+Lvv+de4f+hM5a56LY8EABAk3w@mail.gmail.com>
 <YCMEucGZVPPQuxWw@krava> <CAEf4BzacQrkSMnmeO3sunOs7sfhX1ZoD_Hnk4-cFUK-TpLNqUA@mail.gmail.com>
 <YCPfEzp3ogCBTBaS@krava> <CAEf4BzbzquqsA5=_UqDukScuoGLfDhZiiXs_sgYBuNUvTBuV6w@mail.gmail.com>
 <YCQ+d0CVgIclDwng@krava> <YCVIWzq0quDQm6bn@krava> <CAEf4Bzbt2-Mn4+y0c+sSZWUSrP705c_e3SxedjV_xYGPQL79=w@mail.gmail.com>
 <YCavItKm0mKxcVQD@krava>
In-Reply-To: <YCavItKm0mKxcVQD@krava>
From: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Date: Fri, 12 Feb 2021 11:22:41 -0800
Message-ID: <CAEf4BzaJkfVYLU+zA6kmJRNd5uqGyk2B8G6BT22pKjMt7RqpSg@mail.gmail.com>
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
 header.i=@gmail.com header.s=20161025 header.b=YrfMUVKp;       spf=pass
 (google.com: domain of andrii.nakryiko@gmail.com designates
 2607:f8b0:4864:20::b36 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
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

On Fri, Feb 12, 2021 at 8:39 AM Jiri Olsa <jolsa@redhat.com> wrote:
>
> On Thu, Feb 11, 2021 at 11:59:02AM -0800, Andrii Nakryiko wrote:
>
> SNIP
>
> >
> > So in my previous example I assumed we have address ranges for ftrace
> > section, which is exactly the opposite from what we have. So this
> > binary search should be a bit different. start <= addr seems wrong
> > here as well.
> >
> > The invariant here should be that addr[r] is the smallest address that
> > is >= than function start addr, right? Except the corner case where
> > there is no such r, but for that we have a final check in the return
> > below. If you wanted to use index l, you'd need to change the
> > invariant to find the largest addr, such that it is < end, but that
> > seems a bit convoluted.
> >
> > So, with that, I think it should be like this:
> >
> > size_t l = 0, r = count - 1, m;
> >
> > /* make sure we don't use invalid r */
> > if (count == 0) return false;
> >
> > while (l < r) {
> >     /* note no +1 in this case, it's so that at the end, when you
> >      * have, say, l = 0, and r = 1, you try l first, not r.
> >      * Otherwise you might end in in the infinite loop when r never == l.
> >      */
> >     m = l + (r - l) / 2;
> >     addr = addrs[m];
> >
> >     if (addr >= start)
> >         /* we satisfy invariant, so tighten r */
> >         r = m;
> >     else
> >         /* m is not good enough as l, maybe m + 1 will be */
> >         l = m + 1;
> > }
> >
> > return start <= addrs[r] && addrs[r] < end;
> >
> >
> > So, basically, r is maintained as a valid index always, while we
> > constantly try to tighten the l.
> >
> > Does this make sense?
>
> another take ;-)
>
> jirka
>
>
> ---
> diff --git a/btf_encoder.c b/btf_encoder.c
> index b124ec20a689..20a93ed60e52 100644
> --- a/btf_encoder.c
> +++ b/btf_encoder.c
> @@ -36,6 +36,7 @@ struct funcs_layout {
>  struct elf_function {
>         const char      *name;
>         unsigned long    addr;
> +       unsigned long    size;
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
> +       functions[functions_cnt].size = elf_sym__size(sym);
>         functions[functions_cnt].sh_addr = sh.sh_addr;
>         functions[functions_cnt].generated = false;
>         functions_cnt++;
> @@ -236,6 +248,48 @@ get_kmod_addrs(struct btf_elf *btfe, __u64 **paddrs, __u64 *pcount)
>         return 0;
>  }
>
> +static int is_ftrace_func(struct elf_function *func, __u64 *addrs,
> +                         __u64 count, bool kmod)
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
> +       __u64 addr, end = func->addr + func->size;
> +
> +       /*
> +        * The invariant here is addr[r] that is the smallest address
> +        * that is >= than function start addr. Except the corner case
> +        * where there is no such r, but for that we have a final check
> +        * in the return.
> +        */
> +       size_t l = 0, r = count - 1, m;
> +
> +       /* make sure we don't use invalid r */
> +       if (count == 0)
> +               return false;
> +
> +       while (l < r) {
> +               m = l + (r - l) / 2;
> +               addr = addrs[m];
> +
> +               if (addr >= start) {
> +                       /* we satisfy invariant, so tighten r */
> +                       r = m;
> +               } else {
> +                       /* m is not good enough as l, maybe m + 1 will be */
> +                       l = m + 1;
> +               }
> +       }
> +
> +       return start <= addrs[r] && addrs[r] < end;
> +}
> +
>  static int setup_functions(struct btf_elf *btfe, struct funcs_layout *fl)
>  {
>         __u64 *addrs, count, i;
> @@ -267,7 +321,7 @@ static int setup_functions(struct btf_elf *btfe, struct funcs_layout *fl)
>         }
>
>         qsort(addrs, count, sizeof(addrs[0]), addrs_cmp);
> -       qsort(functions, functions_cnt, sizeof(functions[0]), functions_cmp);
> +       qsort(functions, functions_cnt, sizeof(functions[0]), functions_cmp_addr);

All looks good except this. We don't rely on functions being sorted in
ascending start addr order, do we? If not, just drop this, no need to
slow down the process.

>
>         /*
>          * Let's got through all collected functions and filter
> @@ -275,18 +329,9 @@ static int setup_functions(struct btf_elf *btfe, struct funcs_layout *fl)
>          */
>         for (i = 0; i < functions_cnt; i++) {
>                 struct elf_function *func = &functions[i];
> -               /*
> -                * For vmlinux image both addrs[x] and functions[x]::addr
> -                * values are final address and are comparable.
> -                *
> -                * For kernel module addrs[x] is final address, but
> -                * functions[x]::addr is relative address within section
> -                * and needs to be relocated by adding sh_addr.
> -                */
> -               __u64 addr = kmod ? func->addr + func->sh_addr : func->addr;
>
>                 /* Make sure function is within ftrace addresses. */
> -               if (bsearch(&addr, addrs, count, sizeof(addrs[0]), addrs_cmp)) {
> +               if (is_ftrace_func(func, addrs, count, kmod)) {
>                         /*
>                          * We iterate over sorted array, so we can easily skip
>                          * not valid item and move following valid field into
> @@ -303,6 +348,8 @@ static int setup_functions(struct btf_elf *btfe, struct funcs_layout *fl)
>
>         if (btf_elf__verbose)
>                 printf("Found %d functions!\n", functions_cnt);
> +
> +       qsort(functions, functions_cnt, sizeof(functions[0]), functions_cmp_name);
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAEf4BzaJkfVYLU%2BzA6kmJRNd5uqGyk2B8G6BT22pKjMt7RqpSg%40mail.gmail.com.
