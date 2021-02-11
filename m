Return-Path: <clang-built-linux+bncBCTYRDEG7MGBBEUZS2AQMGQEP36IG5Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3d.google.com (mail-yb1-xb3d.google.com [IPv6:2607:f8b0:4864:20::b3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E1973193AC
	for <lists+clang-built-linux@lfdr.de>; Thu, 11 Feb 2021 20:59:15 +0100 (CET)
Received: by mail-yb1-xb3d.google.com with SMTP id w11sf7182873ybq.8
        for <lists+clang-built-linux@lfdr.de>; Thu, 11 Feb 2021 11:59:15 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1613073554; cv=pass;
        d=google.com; s=arc-20160816;
        b=CvwKDuoSTT/cpeiUimG7R3PrwIvHARTBbwVBDhd15vi9YFf9RTQW4mFwbWqonDA08j
         BCQ+/UCXUSlZ29ov+xHC14+9NYfOiFhjw9vAQ99wi04HKm+k+AkJodz9sTmBnaz9umUQ
         M5kvqjysLu0v1FWclJi2I6hKXSkqxZrq161dTltR0b0xpJBZ4BEs0/sV1Mszs//Akpdr
         Nt9MQSVs1hAV+aprSgAUFXG57Q18hmomq/Hqr4C2acK8/9uO1tLTJp3mNtQBD+ulpdmj
         aCmgUcoP0XiwJrwC5T6aQ2VJjAKWwQ67gxnapY2IKAs4YG3iKQVguf23pgjaXSOPWI8j
         gycQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=+A1kHHimj6tBCyoBnLoe9uoJN43I169ux2GG6vPfeJM=;
        b=q0muWXAeSChvhFdqbmluwWDFA6tAUfK0ONvbQKBdcVoKySn4amJFOAllgqknLnfVuh
         OsxF15Y4q/M+IAclsNLbRcximvwzG8FYm9QBrTeodYdHxuLJ30t8YF8cW9MFPJUllYv6
         Z4sAeeQsFW5bdABi8YObcelSOZECgIIbIwt8wq56H5H6wcGlCYWfePBTKg62SCLCJhaa
         A6YU7jY/ff0vk3tgXVMT1+Naumgrq3UeSfJM7wmJDKT1dRHIEPH1YXskeqvLApYHmQLq
         /aNBNwkVRtyCsgSy+NPQTZnmz0KYKgQPdQ5+GHr6PNMyxCkkwF4d9oABcS9Vvo9T0Fzd
         hm6Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YeORjITV;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::b2c as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+A1kHHimj6tBCyoBnLoe9uoJN43I169ux2GG6vPfeJM=;
        b=H4fAKEuFW8VeXjU62y5G33Ihqp0l2TN86CR/amFZUp+nc7UK9dsCYfVbYGynzUfV13
         Hjc1tVPzsJhXJxhIwca5ZWKBjZYWwh1IHx7efl+k0CEm9NjUHPHefR7BwOPWSD6Gcj12
         R8iqlYxYb3AgamuN7Ha2MIiXVMeO8ToeqxnXBakF6L55BgpUT+wo7mMzacpGQdUUAYH/
         84+btytKHnpKfGac7Lw6GOqDW6DlMlnMzawWrOVU1sFyd1whjB3LMgHye0nvV9dWOzx5
         b9x+6Og1cIZZVZKnVHk4lRnRnI0TdMEyF/53RHussEh5dic8AySJ2xTtXgqmkKb45IUY
         +LzQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+A1kHHimj6tBCyoBnLoe9uoJN43I169ux2GG6vPfeJM=;
        b=CvrWNHSQYpDvT9jjaHfIPq3TOGmaVvXXd9ml+aN6TLjZX57EpVfovlZC+IqpINSl/l
         jXhq7oQvUmZxL/JH8UYOiq7FCxOtkygEBUuiWpVqdWZK9y7N1JzQnsDIPuaXMQsxUcjd
         dguYwy+7FDkLTsNIcRZgjo45UxRxzC8RmFN0KLttFDHnDecaSuG1LbjncCH3aIRvApkw
         tPzV3/dDXI5oc5iW71cPt0znAKfsyRHLeQOiNG15XVzo2n6FsosYbc0wZfunkBSyFzoe
         hvAt055S3X6hHqk6W2us4tbkguwBbHZzW/OBA4EkgNhoVfBHoZPnOp/RSSOfX12h7/pl
         W+vA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+A1kHHimj6tBCyoBnLoe9uoJN43I169ux2GG6vPfeJM=;
        b=RN2pzvzeKgYGGVJt7CioGMlZXdO/a3uA3j0ghTI7sssgcE74Gft7UszvBBpSS4ZmAX
         8LrSDuZjW7pU1CdIFbaOj6oP70zZ/GdtBuI5XaxFppWSNceyIVyNDoSMAeTvZRm15wed
         d6iTmfKymoenwBFfvB60sqcWT4up6cguaqw+xW3JucrLIFPG9u/qjv+GzhzJ8valt9Qi
         WCZNvF2/7c79UIOxZzyDlfFnFbyiUEH5ZmDOacy0JNyTcbT6DEbucnJ5abNi7rfZDOCX
         fM6msHVW/mdBhMQ4ci4okymVI47GtiHe+FIIY6FNlZatzsmkkf7XcZHvMxKeA7Nd2olN
         16tg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531WX4ZVdEbCuMW+2sJsoOt9mRsuIFlCjAgEY9+Dvi/cp9Cyi7dE
	T05u9vgzM1R85lrZ40tU+lI=
X-Google-Smtp-Source: ABdhPJxRYlaTtB7cRQC9sVH7qIsTzKkTPK4tZSHNYiHHtC9QPJTZpL6HiHO68zvSVSq5KbAecpUwcA==
X-Received: by 2002:a25:cc89:: with SMTP id l131mr13584986ybf.346.1613073554258;
        Thu, 11 Feb 2021 11:59:14 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:25c7:: with SMTP id l190ls3119010ybl.10.gmail; Thu, 11
 Feb 2021 11:59:13 -0800 (PST)
X-Received: by 2002:a25:32c4:: with SMTP id y187mr4696134yby.163.1613073553919;
        Thu, 11 Feb 2021 11:59:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1613073553; cv=none;
        d=google.com; s=arc-20160816;
        b=sCm4huGrH+TqDFAazTLCZKcS7e0OjfPU0mgGd83Nt1L4SJs0kMmIUlkyj/6pH4Vit2
         rbA1cEvI0DCMEIyQtpbYn7rsVG1oJHxB4QIC76Cn6VDstjz66gUVcXf+yYh7hjWgsC51
         uIRTn3nH8l3EeZvfqGrCUq154dskwbpUgnD10B10yuBSWXpcp6EiQBxE5/lzpiga1NtZ
         C/i4FiE3TsOsAl+IYP1KoOpOYIiscPt5Ym+uPAaZ6VX7kHACNd7fWEo43Bb6/bytLS82
         QGsRDUVe5ISOCBHQavI9CXpHN6IpudVrhxRiyP5ulkhmEoa5PX+hvjGe7dTjiQoaUCdI
         a6BA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=2hPbSRc+yRT2VXhtKVtD9k+7CT69OWN/HR+DyRaSYA0=;
        b=KD5nKuisWtlt+qTf0sHwFYHhiDWv3t8vtpVKUEvSREzC5+kFTY44WH1ZwLz4vL7VyO
         Ts4aqIN4GiYE+mDT9aG6lxKO0ILFcQswzAnmDuhLhjBt4+my1uh59syx8TW0mfp4K8++
         3i75eOxaQoU8sVkeJ5naDiyjgFDJexuAcnzxBg5vMuBIlPDPdcmDnF3VUOAZ9TKC5GEN
         wfBFNNVJom6OrI3Q3wljhMEoaNX/3KMbHa9FWpo6wQV2hTNZ7b8izeCZN1kRn/YP4byT
         2kd49C++mi5hU+/2xumGnEr1+r4j+obtwgS8W1NRQbykBJrzGeaaqbFf+aWGBXN0SQ+X
         P15Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YeORjITV;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::b2c as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yb1-xb2c.google.com (mail-yb1-xb2c.google.com. [2607:f8b0:4864:20::b2c])
        by gmr-mx.google.com with ESMTPS id e143si475578ybb.5.2021.02.11.11.59.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 Feb 2021 11:59:13 -0800 (PST)
Received-SPF: pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::b2c as permitted sender) client-ip=2607:f8b0:4864:20::b2c;
Received: by mail-yb1-xb2c.google.com with SMTP id y128so6798953ybf.10
        for <clang-built-linux@googlegroups.com>; Thu, 11 Feb 2021 11:59:13 -0800 (PST)
X-Received: by 2002:a25:9882:: with SMTP id l2mr13043250ybo.425.1613073553551;
 Thu, 11 Feb 2021 11:59:13 -0800 (PST)
MIME-Version: 1.0
References: <CAEf4Bzax90hn_5axpnCpW+E6gVc1mtUgCXWqmxV0tJ4Ud7bsaA@mail.gmail.com>
 <20210209074904.GA286822@ubuntu-m3-large-x86> <YCKB1TF5wz93EIBK@krava>
 <YCKlrLkTQXc4Cyx7@krava> <CAEf4BzaL=qsSyDc8OxeN4pr7+Lvv+de4f+hM5a56LY8EABAk3w@mail.gmail.com>
 <YCMEucGZVPPQuxWw@krava> <CAEf4BzacQrkSMnmeO3sunOs7sfhX1ZoD_Hnk4-cFUK-TpLNqUA@mail.gmail.com>
 <YCPfEzp3ogCBTBaS@krava> <CAEf4BzbzquqsA5=_UqDukScuoGLfDhZiiXs_sgYBuNUvTBuV6w@mail.gmail.com>
 <YCQ+d0CVgIclDwng@krava> <YCVIWzq0quDQm6bn@krava>
In-Reply-To: <YCVIWzq0quDQm6bn@krava>
From: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Date: Thu, 11 Feb 2021 11:59:02 -0800
Message-ID: <CAEf4Bzbt2-Mn4+y0c+sSZWUSrP705c_e3SxedjV_xYGPQL79=w@mail.gmail.com>
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
 header.i=@gmail.com header.s=20161025 header.b=YeORjITV;       spf=pass
 (google.com: domain of andrii.nakryiko@gmail.com designates
 2607:f8b0:4864:20::b2c as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
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

On Thu, Feb 11, 2021 at 7:08 AM Jiri Olsa <jolsa@redhat.com> wrote:
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

return bool, not int?

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

this extra check on each step shouldn't be necessary

> +
> +               if (start <= addr)

I don't think this is correct, start == addr is actually a good case,
but you'll do r = m - 1, skipping it. See below about invariants.

> +                       r = m - 1;
> +               else
> +                       l = m;

So in my previous example I assumed we have address ranges for ftrace
section, which is exactly the opposite from what we have. So this
binary search should be a bit different. start <= addr seems wrong
here as well.

The invariant here should be that addr[r] is the smallest address that
is >= than function start addr, right? Except the corner case where
there is no such r, but for that we have a final check in the return
below. If you wanted to use index l, you'd need to change the
invariant to find the largest addr, such that it is < end, but that
seems a bit convoluted.

So, with that, I think it should be like this:

size_t l = 0, r = count - 1, m;

/* make sure we don't use invalid r */
if (count == 0) return false;

while (l < r) {
    /* note no +1 in this case, it's so that at the end, when you
     * have, say, l = 0, and r = 1, you try l first, not r.
     * Otherwise you might end in in the infinite loop when r never == l.
     */
    m = l + (r - l) / 2;
    addr = addrs[m];

    if (addr >= start)
        /* we satisfy invariant, so tighten r */
        r = m;
    else
        /* m is not good enough as l, maybe m + 1 will be */
        l = m + 1;
}

return start <= addrs[r] && addrs[r] < end;


So, basically, r is maintained as a valid index always, while we
constantly try to tighten the l.

Does this make sense?


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

See below assumptions about function end. If we get it from ELF, you
don't need to do this extra sort, right?

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

This makes a bunch of unnecessary assumptions about functions layout.
But why, if we have STT_FUNC symbol with function size, so that we
know the function end right when we collect function info.

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

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAEf4Bzbt2-Mn4%2By0c%2BsSZWUSrP705c_e3SxedjV_xYGPQL79%3Dw%40mail.gmail.com.
