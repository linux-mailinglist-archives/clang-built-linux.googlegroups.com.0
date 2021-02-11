Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBQVBSWAQMGQECKEF4IY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3a.google.com (mail-oo1-xc3a.google.com [IPv6:2607:f8b0:4864:20::c3a])
	by mail.lfdr.de (Postfix) with ESMTPS id E3328318EF8
	for <lists+clang-built-linux@lfdr.de>; Thu, 11 Feb 2021 16:44:03 +0100 (CET)
Received: by mail-oo1-xc3a.google.com with SMTP id g21sf1915140ooa.8
        for <lists+clang-built-linux@lfdr.de>; Thu, 11 Feb 2021 07:44:03 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1613058243; cv=pass;
        d=google.com; s=arc-20160816;
        b=YMZ7rGEpjZfXIBPmsQIOqeegmSRobs1/VJjj6Atmz0sAplPbUGSIxdT9D1aMg7UidH
         VK2b9CqwQDyFeEH3rK87Qc1NpiFfvV6V3mMuBKFSF0hgx6PFXIHsQL5TiDIMk1w9zF+E
         CjyFe/pKHgGg7HQFquGZ+ZXaK9k50EwZV9MQxXb17QMPDGIB9YrD39jEdYBlsdpbgvPl
         tmqVH7s/yLgl/LDjgGY35o0U0UhvbDZOzfLToJ+dDopxYiIDq5sYrUKSS7BGQAL6c4HS
         IjDMX6fgqukIYNm0paEb9INOqFVqdJB6y9hj4IWGnvKIiMfRjGber8L8bMiMUXNeVdUX
         AYRg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=tOJXoxyrupagQoLVJvkrZK3vuXwpUzkgNwvYOfbj2Yg=;
        b=uThxZ4CfPZkmmE9FtQb1mdoILeIngIeFT6GLq65I/g+7/EjtE9prbtMEPe2dRQyUCc
         k2Q1Oxj/gMqP+Z4XE7DO55U5vii8f77E2oHDK1ioEhBdb0peUTv5r9l2VhWvPq0VNLGq
         UHpDr4kbAAjibTvsf2CX0X/eicF0QlJlx9N7P8PJnggxef1eoXXyiPMQlOtWpB4xr0AL
         IX18v5DCOFoAMAFf5hDewbkk9nHnnqPXwtfjfbN/IU7rZwrtNpIunD9wh80KYHdaaSM5
         P0ORSHQhrei6nXYlWlmDDZhq47WOWiE18peP8s1gAEsBDJJytWxAIoM81ANRsjXos8+c
         W2Ew==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZJ4qqgOR;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d32 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=tOJXoxyrupagQoLVJvkrZK3vuXwpUzkgNwvYOfbj2Yg=;
        b=fqt2HCEGF8Cfb4ZKEoexxAHBoZHBHpTk0rh+DPOeDkBq03QN1Rwo+Ukz2jghGngBuf
         gmBm31rTZCuZWMc5ceI4Nx3yXNbJMjlkiNX+CZDDpYdzmCl9ryF5c1dV4kQv2ff7GXg6
         gkpJVc8jaBgob3wQTb3b9Iio7do47dyM3ZRBNg9PouADaaqaCf8Oa9JKAlUE4Z0/Lg3Q
         iQwvRI2tHJP8b8xDo7LMssi/peDA1zxC4N0YWeJCOT9oMZAHOdeQ3NnGtEomUyLunZ3d
         IOdm/Cl3zhmGYxL0jhr2kk4GVnTwTiL4uPKBuZL9/T5byqklHDRlAwAdTFCE1271CvcR
         GJSw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tOJXoxyrupagQoLVJvkrZK3vuXwpUzkgNwvYOfbj2Yg=;
        b=dXbRQSOeHy7SF52+sZhiXWVG9KesAuIKWTzXX1k3wEeR3GeqgCHhadOgceW4VYRvX0
         uViT2nD089z8mWhpHHNvHHV9N4onRYaVYX4s/eLztURk1M/PPynIGZpEapTi5mIGXn5Z
         jzHtRRgLG4VI+vxBGnjGHqUuZc7Ei70wlqeRrwA6YeD/eJZqYWPRPpgqsHd9jQYhWJHR
         dA/UlQBcQWpPq9ZrZ1UkoM/omYHj3IforHuI81t129L3tD2kqO6KUnY/zGMYt0u5tjti
         NtgA5OowN4xj37rJWXtmwegH1cEHDbWd60WaWJRY3IbZ7Af65n9LVpWVtx6sxStHk1VT
         BKtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tOJXoxyrupagQoLVJvkrZK3vuXwpUzkgNwvYOfbj2Yg=;
        b=Cly/eR8nT6/fQqKP3UuCv1cZexu+aP8rKqJuleEUmxFW4juZgCFi2EH5t0k0fCR7S4
         HfoR423nfxOBHJVf+3CkF1pnBYMmalSYIqEokEQPGxCLxENxXyr6xiv6vXl1U4jzuxmY
         MxA7bpPZUm4ms65DqNS8QEBbV9ZfcEnZO2d2To7BeWJNssnA7YhabnTgoZdDzSir7xaq
         p4VIFHU7dAozWEHvbZYGnZq94iJgRFt8CVghxlG8szSxzxoWrm96c5WJvGIALFnbQbQp
         vdQuYSNI1xpcHo1oZGxS8HwIadR/4LkXaAzP5iDCaWdvRocfkoSD4yXxo1vOmd+6QkIe
         YHGw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532DNV2LAVouc0or5DQ1rzLO71qx1tKGHAjz46kKb2QK9utSRArQ
	zii/0aTWAlbvb+M1/IjTBGY=
X-Google-Smtp-Source: ABdhPJy2kld1P+kkifnbU9hLtr9+noiNVF+x4IqWFbfO9Yms5XNPWDoJLGpzPwCCoz2YAWvKkxR56g==
X-Received: by 2002:aca:3088:: with SMTP id w130mr3083655oiw.89.1613058242875;
        Thu, 11 Feb 2021 07:44:02 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a54:4093:: with SMTP id i19ls1509088oii.11.gmail; Thu, 11
 Feb 2021 07:44:02 -0800 (PST)
X-Received: by 2002:aca:b389:: with SMTP id c131mr671269oif.99.1613058242511;
        Thu, 11 Feb 2021 07:44:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1613058242; cv=none;
        d=google.com; s=arc-20160816;
        b=qfr4+ezfTjFXgakHT7NouvdskXHbzTuokSdXFhxvuybAyUj2a1PU8I7tI5cxpuwDjN
         ylDaoX1MeyJVp3l6jDSb1LZYW592+xvNMUSZOCoGG0R51YVixkqgbzwmCgXXdSDyi9bN
         NCz6TZKO5oCNtAHc8tGs04i5UK1sqNZRxnAPPD2wMK6FUf7W9Uxqd9rokQZ3LS+e57wW
         yqEQc/n8x4qvkR/JQcOqJghX8rvOb+tOXrSSw0KU1WPhBeyU0PD4Z8XWkSCsISO0r3Ga
         wrSF9z7FZQOoosnE1dz4uXCWZutMH1lkBGpxGpQd5CdUpLY1YOSEk6fDW9d7GIb02lkQ
         kJyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=9Y2iwdGlM2f9mV90+obGKj1JMOAhLAylpH7oBZhbyto=;
        b=uJb6SxwyxrxR7+DhEOFfKeeXBzwQcUdXkJn1O58ejsK34X7X5tZOljZxv6vlTGzBv0
         2FxHi39LiUjnVjbI7TRKZ3lstRcWC05qldJQ157ob5v943aefacpj0W43NYneBO4f37g
         Z8EbHFX7SJKxKwXr8r4JGsEO8SHkeVzzX1J4bethwLwsFQXCDiajTaTE6YmkJ0kx4I5v
         Snkt7dM849z3gc5RVBC8USiinCb/tR72X5z//RjU86blteIW2krvMcdX5Knh4kNFtE7r
         WACy2eowPDSQJeVVa3ofTbSHoLzLJ28vbWqs1ak3iqSNE2Ou/QSkGSfSwmvNlHymLLi3
         t78A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZJ4qqgOR;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d32 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd32.google.com (mail-io1-xd32.google.com. [2607:f8b0:4864:20::d32])
        by gmr-mx.google.com with ESMTPS id o21si270615otk.4.2021.02.11.07.44.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 Feb 2021 07:44:02 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d32 as permitted sender) client-ip=2607:f8b0:4864:20::d32;
Received: by mail-io1-xd32.google.com with SMTP id p132so6089730iod.11
        for <clang-built-linux@googlegroups.com>; Thu, 11 Feb 2021 07:44:02 -0800 (PST)
X-Received: by 2002:a05:6602:1541:: with SMTP id h1mr5723774iow.171.1613058241969;
 Thu, 11 Feb 2021 07:44:01 -0800 (PST)
MIME-Version: 1.0
References: <CAEf4Bzax90hn_5axpnCpW+E6gVc1mtUgCXWqmxV0tJ4Ud7bsaA@mail.gmail.com>
 <20210209074904.GA286822@ubuntu-m3-large-x86> <YCKB1TF5wz93EIBK@krava>
 <YCKlrLkTQXc4Cyx7@krava> <CAEf4BzaL=qsSyDc8OxeN4pr7+Lvv+de4f+hM5a56LY8EABAk3w@mail.gmail.com>
 <YCMEucGZVPPQuxWw@krava> <CAEf4BzacQrkSMnmeO3sunOs7sfhX1ZoD_Hnk4-cFUK-TpLNqUA@mail.gmail.com>
 <YCPfEzp3ogCBTBaS@krava> <CAEf4BzbzquqsA5=_UqDukScuoGLfDhZiiXs_sgYBuNUvTBuV6w@mail.gmail.com>
 <YCQ+d0CVgIclDwng@krava> <YCVIWzq0quDQm6bn@krava>
In-Reply-To: <YCVIWzq0quDQm6bn@krava>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Thu, 11 Feb 2021 16:43:48 +0100
Message-ID: <CA+icZUXdWHrNh-KoHtX2jC-4yjnMTtA0CjwzsjaXfCUpHgYJtg@mail.gmail.com>
Subject: Re: FAILED unresolved symbol vfs_truncate on arm64 with LLVM
To: Jiri Olsa <jolsa@redhat.com>
Cc: Andrii Nakryiko <andrii.nakryiko@gmail.com>, Nathan Chancellor <nathan@kernel.org>, 
	Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, 
	Andrii Nakryiko <andrii@kernel.org>, Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>, 
	Yonghong Song <yhs@fb.com>, John Fastabend <john.fastabend@gmail.com>, KP Singh <kpsingh@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Networking <netdev@vger.kernel.org>, 
	bpf <bpf@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Veronika Kabatova <vkabatov@redhat.com>, Jiri Olsa <jolsa@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=ZJ4qqgOR;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d32
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Thu, Feb 11, 2021 at 4:08 PM Jiri Olsa <jolsa@redhat.com> wrote:
>
> On Wed, Feb 10, 2021 at 09:13:47PM +0100, Jiri Olsa wrote:
> > On Wed, Feb 10, 2021 at 10:20:20AM -0800, Andrii Nakryiko wrote:
> >
> > SNIP
> >
> > > > but below is change for checking that ftrace addrs are within elf functions
> > > >
> > > > seems to work in my tests, I'll run some more tests and send full patch
> > >
> > > It seems unnecessarily convoluted. I was thinking about something like
> > > this (the diff will totally be screwed up by gmail, and I haven't even
> > > compiled it):
> > >
> > > diff --git a/btf_encoder.c b/btf_encoder.c
> > > index b124ec20a689..8162b238bd43 100644
> > > --- a/btf_encoder.c
> > > +++ b/btf_encoder.c
> > > @@ -236,6 +236,23 @@ get_kmod_addrs(struct btf_elf *btfe, __u64
> > > **paddrs, __u64 *pcount)
> > >         return 0;
> > >  }
> > >
> > > +struct func_seg { __u64 start; __u64 end; };
> > > +
> > > +static int func_exists(struct func_seg *segs, size_t len, __u64 addr)
> > > +{
> > > +       size_t l = 0, r = len - 1, m;
> > > +
> > > +       while (l < r) {
> > > +               m = l + (r - l + 1) / 2;
> > > +               if (segs[m].start <= addr)
> > > +                       l = m;
> > > +               else
> > > +                       r = m - 1;
> > > +       }
> > > +
> > > +       return segs[l].start <= addr && addr < segs[l].end;
> > > +}
> > > +
> > >  static int setup_functions(struct btf_elf *btfe, struct funcs_layout *fl)
> > >  {
> > >         __u64 *addrs, count, i;
> > > @@ -286,7 +303,7 @@ static int setup_functions(struct btf_elf *btfe,
> > > struct funcs_layout *fl)
> > >                 __u64 addr = kmod ? func->addr + func->sh_addr : func->addr;
> > >
> > >                 /* Make sure function is within ftrace addresses. */
> > > -               if (bsearch(&addr, addrs, count, sizeof(addrs[0]), addrs_cmp)) {
> > > +               if (func_exists(addrs, count, addr))
> >
> > you pass addrs in here, but you mean func_seg array
> > filled with elf functions start/end values, right?
> >
> > >                         /*
> > >                          * We iterate over sorted array, so we can easily skip
> > >                          * not valid item and move following valid field into
> > >
> > >
> > > So the idea is to use address segments and check whether there is a
> > > segment that overlaps with a given address by first binary searching
> > > for a segment with the largest starting address that is <= addr. And
> > > then just confirming that segment does overlap with the requested
> > > address.
> > >
> > > WDYT?
>
> heya,
> with your approach I ended up with change below, it gives me same
> results as with the previous change
>
> I think I'll separate the kmod bool address computation later on,
> but I did not want to confuse this change for now
>

I have applied your diff on top of pahole-v1.20 with Yonghong Son's
"btf_encoder: sanitize non-regular int base type" applied.
This is on x86-64 with LLVM-12, so I am not directly affected.
If it is out of interest I can offer vmlinux (or .*btf* files) w/ and
w/o your diff.

- Sedat -

> jirka
>
>
> ---
> diff --git a/btf_encoder.c b/btf_encoder.c
> index b124ec20a689..34df08f2fb4e 100644
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
> @@ -236,6 +248,40 @@ get_kmod_addrs(struct btf_elf *btfe, __u64 **paddrs, __u64 *pcount)
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
> +       __u64 end   = kmod ? func->end + func->sh_addr : func->end;
> +
> +       size_t l = 0, r = count - 1, m;
> +       __u64 addr = 0;
> +
> +       while (l < r) {
> +               m = l + (r - l + 1) / 2;
> +               addr = addrs[m];
> +
> +               if (start <= addr && addr < end)
> +                       return true;
> +
> +               if (start <= addr)
> +                       r = m - 1;
> +               else
> +                       l = m;
> +       }
> +
> +       addr = addrs[l];
> +       return start <= addr && addr < end;
> +}
> +
>  static int setup_functions(struct btf_elf *btfe, struct funcs_layout *fl)
>  {
>         __u64 *addrs, count, i;
> @@ -267,7 +313,7 @@ static int setup_functions(struct btf_elf *btfe, struct funcs_layout *fl)
>         }
>
>         qsort(addrs, count, sizeof(addrs[0]), addrs_cmp);
> -       qsort(functions, functions_cnt, sizeof(functions[0]), functions_cmp);
> +       qsort(functions, functions_cnt, sizeof(functions[0]), functions_cmp_addr);
>
>         /*
>          * Let's got through all collected functions and filter
> @@ -275,18 +321,12 @@ static int setup_functions(struct btf_elf *btfe, struct funcs_layout *fl)
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
> +
> +               if (i + 1 < functions_cnt)
> +                       func->end = functions[i + 1].addr;
>
>                 /* Make sure function is within ftrace addresses. */
> -               if (bsearch(&addr, addrs, count, sizeof(addrs[0]), addrs_cmp)) {
> +               if (is_ftrace_func(func, addrs, count, kmod)) {
>                         /*
>                          * We iterate over sorted array, so we can easily skip
>                          * not valid item and move following valid field into
> @@ -303,6 +343,8 @@ static int setup_functions(struct btf_elf *btfe, struct funcs_layout *fl)
>
>         if (btf_elf__verbose)
>                 printf("Found %d functions!\n", functions_cnt);
> +
> +       qsort(functions, functions_cnt, sizeof(functions[0]), functions_cmp_name);
>         return 0;
>  }
>
> @@ -312,7 +354,7 @@ static struct elf_function *find_function(const struct btf_elf *btfe,
>         struct elf_function key = { .name = name };
>
>         return bsearch(&key, functions, functions_cnt, sizeof(functions[0]),
> -                      functions_cmp);
> +                      functions_cmp_name);
>  }
>
>  static bool btf_name_char_ok(char c, bool first)
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YCVIWzq0quDQm6bn%40krava.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUXdWHrNh-KoHtX2jC-4yjnMTtA0CjwzsjaXfCUpHgYJtg%40mail.gmail.com.
