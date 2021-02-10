Return-Path: <clang-built-linux+bncBCDZTXMP2EPRBA75SCAQMGQEWM2MFCA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe39.google.com (mail-vs1-xe39.google.com [IPv6:2607:f8b0:4864:20::e39])
	by mail.lfdr.de (Postfix) with ESMTPS id 408E53170EF
	for <lists+clang-built-linux@lfdr.de>; Wed, 10 Feb 2021 21:13:56 +0100 (CET)
Received: by mail-vs1-xe39.google.com with SMTP id o14sf540813vsq.21
        for <lists+clang-built-linux@lfdr.de>; Wed, 10 Feb 2021 12:13:56 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612988035; cv=pass;
        d=google.com; s=arc-20160816;
        b=znxFyX/ArDNajrI7ihLb2QD+Xi0X6Pph4QM6VrvS5aEA7sO7O3PYw0SwOsswc6B8IA
         abIzYvNWdIZ8WzsPXK/xJMWUAHJSNWkZBpdr3tMd3D3sOtgymHH5/eY+FBLe05VGVKeA
         p6bq6pg0ubWDVEBul1cOy5WS6Ol/Fh07iEmztkUO/EfpNEzVMpgOHPzeymhYKxSnovE3
         4Fqp8GGuzhx0nFVT4t357Nl2h52g+Jr4d3xa6N8tjupHBylHATAKLPoxOBRmGW/uT/XB
         Sx0ol7dl4U/Mw9Y1OpIe5J6IsrrCEwBoiYZG/svA7pT+Hp3YfZpUCICXXi5/7hYExrG+
         eMNw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=H9PvPpDufnQG81y0P+yE7j1LrsZlmeFy32gZaNUkpFc=;
        b=VmnGuXiYtd30n1tLGS/fV+769gwhdP3pxzjKtZFozchlOjiChNMoYuLQMLhMxG1xQO
         /EJ+ywAMCKS8hgBDcssbcgoNZH2lihjKJtBgGuknCOjg6zLOm7YSOGXdTc+HIbkp9Zpu
         5/vDh5OpQ50D40atLDnhH2QrJWaqwNDfZv4XI+13dasp6m9EqLhxzmG86uv0LZMZ8ey2
         HnyGPDfEKWx2liewZKyXNfuZrCsaaTgMzgGsYVdp8UB05q1QJINyD3u4M3KyMlUc7NqK
         ub/wBuPMCL9eJmILjNYc8f7uRJhxeJD++Wkn7k60kKuDSDbE+GMWsYWduMDIqEK8cTSS
         H6NA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=D5qiBQ48;
       spf=pass (google.com: domain of jolsa@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=H9PvPpDufnQG81y0P+yE7j1LrsZlmeFy32gZaNUkpFc=;
        b=G6KFNS0zysu/vmqrsgdU6AZ++aGJhOkyF1vs9X8Dqo9B+FrssE+YvrP5ClSgjERBiO
         nUsAhEki8+CQqGHELn1+sOMKO+/qXAT4MSiGe2tS1hSzg3KVvdu7dGpQT4IEyqSnBo7B
         FWRZZoCW42BrLSSrPLZ2H9exc74/A4na/9jScrbO6h7sttTn/VHzsbjkveAM7t6I8LZj
         F+X9hcuTpDxTCe4O8ID0rPWVvC+htIfuqtuwHIq/CBVmd7/aPHlLjnWzyqd7LdLCfhdY
         1e6tJnTS8EXMQNPV6s0GLBV5c9Z46dID8ysJvPOgrcwOboq8QM6vafzvLB4YIVynS3BM
         mH4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=H9PvPpDufnQG81y0P+yE7j1LrsZlmeFy32gZaNUkpFc=;
        b=VuF0y3x+ADMUwGG0wQ+cFHQSIUU0UHAJk+WlvW5ancqfb72Lhp0K+kzOVc9LhhROfB
         xONVOfiwA/zKMW1F+YIbP17POza1sfny8iFyLzyvXJVnv5z4eK+9ztpCbI2NLkdMEQO4
         hQsGT4cLsKZsBAXURoolkuT3wLuDKsPMyWSmXYkcSJ+F+Q9EzbHtyyJmN+Ftnlt1jyam
         ZZK2xGdmS3cbOZnVJ/W99RH8IMFnRRhGmJLaW+SpFDIlwMSHdccoCHm9DOWxWO2vz4wq
         kVJnrbcLeDZKqGm4tdgoC4G2yhm0OOXC1HNmtthZk1f3iXdL5QMyMZeoG8adCrcdUJji
         +FXg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531PsFBJUUJfAT+hJbiJ+iMvvD+mN1mwypUeq4pA17f4BQdZq+gc
	P/WxhNVaIKcDitgICs+89Ww=
X-Google-Smtp-Source: ABdhPJyvvrkSSPUXuW8lnRjS5QOiSFDQLuc1FWaH3eFQjdOUERgpeS9yiy58mwNPNnXgVGYxXObS6Q==
X-Received: by 2002:a67:2d47:: with SMTP id t68mr3372717vst.21.1612988035305;
        Wed, 10 Feb 2021 12:13:55 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:5e9d:: with SMTP id y29ls236087uag.9.gmail; Wed, 10 Feb
 2021 12:13:54 -0800 (PST)
X-Received: by 2002:a9f:3102:: with SMTP id m2mr3083561uab.10.1612988034774;
        Wed, 10 Feb 2021 12:13:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612988034; cv=none;
        d=google.com; s=arc-20160816;
        b=J4VSkoXqwjmehzfPrJpinOygDcm3uR/G0XT+ECjsPUsafZkfi10fE+OgoY9moszLxa
         b3gYX9m0sZnRMQ1pVrdbPq+IjW3lTqoCvaunKz5AUaG6imLu4xci5Iv/TCafmI5NZz7w
         UNtMdkbCF9f1CdPUge774AavfH2Hhi7ib8gqUL7BQq0qKx4/tcRniz65bw1+Nl1AHciA
         4se4w0/fqzJErbodBKSwm2btOqlWFN6tYQZ8RjOb9XnPb4/Xa4JEXVMuoIuvXMsEQaSI
         LKm3DwY+c0lYERTf32M0TMlvMADnAda0nyUChJnclCCPZab5Lw96WaweqNTHsl5KG4vi
         Uksg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=F8qPD5DmBym140GmfNF1grPRmnSGg7P4Xsc0eTmldHE=;
        b=G21TX3lkhWZRiP9aYVHsNvMX96HYduPJ9k883NiyvEMnj/mCgwgcYNKI7c5ayqm9uy
         wjpZAlrWDqtT8fXW6RsFzOf7G8JiHb2HubGiIwk8mUwqHN/ST5pU+nAVLfUi5PS52ogu
         vmKu0aEtm+fpMRTipQOvR+HLlxx8rbTPuaOA64+gpFc1wdtwt79oMXLPr6j7h4bqXWZ1
         v6+zBHd04Asrn3jMW12dJGyWZiakG7qJW6MOB26ftcunjQ+vXjgkUe5iYi0W4i6lUvuR
         Cjb+rmyBygeSDRbKODDoPCVXfmw5a9Jp42zWpKZ5dhDyiMVrFXSsvtBnkcqOulMPhcCo
         WQdw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=D5qiBQ48;
       spf=pass (google.com: domain of jolsa@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id z9si246062uaq.1.2021.02.10.12.13.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 10 Feb 2021 12:13:54 -0800 (PST)
Received-SPF: pass (google.com: domain of jolsa@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-575-iC_hdPsLNaufqMXmbgQzow-1; Wed, 10 Feb 2021 15:13:50 -0500
X-MC-Unique: iC_hdPsLNaufqMXmbgQzow-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D622384E240;
	Wed, 10 Feb 2021 20:13:47 +0000 (UTC)
Received: from krava (unknown [10.40.195.206])
	by smtp.corp.redhat.com (Postfix) with SMTP id 5E5C119D7C;
	Wed, 10 Feb 2021 20:13:44 +0000 (UTC)
Date: Wed, 10 Feb 2021 21:13:43 +0100
From: Jiri Olsa <jolsa@redhat.com>
To: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Cc: Nathan Chancellor <nathan@kernel.org>,
	Alexei Starovoitov <ast@kernel.org>,
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
Message-ID: <YCQ+d0CVgIclDwng@krava>
References: <CAEf4BzYvri7wzRnGH_qQbavXOx5TfBA0qx4nYVnn=YNGv+vNVw@mail.gmail.com>
 <CAEf4Bzax90hn_5axpnCpW+E6gVc1mtUgCXWqmxV0tJ4Ud7bsaA@mail.gmail.com>
 <20210209074904.GA286822@ubuntu-m3-large-x86>
 <YCKB1TF5wz93EIBK@krava>
 <YCKlrLkTQXc4Cyx7@krava>
 <CAEf4BzaL=qsSyDc8OxeN4pr7+Lvv+de4f+hM5a56LY8EABAk3w@mail.gmail.com>
 <YCMEucGZVPPQuxWw@krava>
 <CAEf4BzacQrkSMnmeO3sunOs7sfhX1ZoD_Hnk4-cFUK-TpLNqUA@mail.gmail.com>
 <YCPfEzp3ogCBTBaS@krava>
 <CAEf4BzbzquqsA5=_UqDukScuoGLfDhZiiXs_sgYBuNUvTBuV6w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAEf4BzbzquqsA5=_UqDukScuoGLfDhZiiXs_sgYBuNUvTBuV6w@mail.gmail.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Original-Sender: jolsa@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=D5qiBQ48;
       spf=pass (google.com: domain of jolsa@redhat.com designates
 216.205.24.124 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

On Wed, Feb 10, 2021 at 10:20:20AM -0800, Andrii Nakryiko wrote:

SNIP

> > but below is change for checking that ftrace addrs are within elf functions
> >
> > seems to work in my tests, I'll run some more tests and send full patch
> 
> It seems unnecessarily convoluted. I was thinking about something like
> this (the diff will totally be screwed up by gmail, and I haven't even
> compiled it):
> 
> diff --git a/btf_encoder.c b/btf_encoder.c
> index b124ec20a689..8162b238bd43 100644
> --- a/btf_encoder.c
> +++ b/btf_encoder.c
> @@ -236,6 +236,23 @@ get_kmod_addrs(struct btf_elf *btfe, __u64
> **paddrs, __u64 *pcount)
>         return 0;
>  }
> 
> +struct func_seg { __u64 start; __u64 end; };
> +
> +static int func_exists(struct func_seg *segs, size_t len, __u64 addr)
> +{
> +       size_t l = 0, r = len - 1, m;
> +
> +       while (l < r) {
> +               m = l + (r - l + 1) / 2;
> +               if (segs[m].start <= addr)
> +                       l = m;
> +               else
> +                       r = m - 1;
> +       }
> +
> +       return segs[l].start <= addr && addr < segs[l].end;
> +}
> +
>  static int setup_functions(struct btf_elf *btfe, struct funcs_layout *fl)
>  {
>         __u64 *addrs, count, i;
> @@ -286,7 +303,7 @@ static int setup_functions(struct btf_elf *btfe,
> struct funcs_layout *fl)
>                 __u64 addr = kmod ? func->addr + func->sh_addr : func->addr;
> 
>                 /* Make sure function is within ftrace addresses. */
> -               if (bsearch(&addr, addrs, count, sizeof(addrs[0]), addrs_cmp)) {
> +               if (func_exists(addrs, count, addr))

you pass addrs in here, but you mean func_seg array
filled with elf functions start/end values, right?

>                         /*
>                          * We iterate over sorted array, so we can easily skip
>                          * not valid item and move following valid field into
> 
> 
> So the idea is to use address segments and check whether there is a
> segment that overlaps with a given address by first binary searching
> for a segment with the largest starting address that is <= addr. And
> then just confirming that segment does overlap with the requested
> address.
> 
> WDYT?

I liked the approach below because it got rid of that bsearch ;-)

but yea, yours seems to be less code chage and staighforward

jirka

> 
> >
> > jirka
> >
> >
> > ---
> > diff --git a/btf_encoder.c b/btf_encoder.c
> > index b124ec20a689..548a12847f99 100644
> > --- a/btf_encoder.c
> > +++ b/btf_encoder.c
> > @@ -36,6 +36,7 @@ struct funcs_layout {
> >  struct elf_function {
> >         const char      *name;
> >         unsigned long    addr;
> > +       unsigned long    end;
> >         unsigned long    sh_addr;
> >         bool             generated;
> >  };
> > @@ -44,7 +45,7 @@ static struct elf_function *functions;
> >  static int functions_alloc;
> >  static int functions_cnt;
> >
> > -static int functions_cmp(const void *_a, const void *_b)
> > +static int functions_cmp_name(const void *_a, const void *_b)
> >  {
> >         const struct elf_function *a = _a;
> >         const struct elf_function *b = _b;
> > @@ -52,6 +53,16 @@ static int functions_cmp(const void *_a, const void *_b)
> >         return strcmp(a->name, b->name);
> >  }
> >
> > +static int functions_cmp_addr(const void *_a, const void *_b)
> > +{
> > +       const struct elf_function *a = _a;
> > +       const struct elf_function *b = _b;
> > +
> > +       if (a->addr == b->addr)
> > +               return 0;
> > +       return a->addr < b->addr ? -1 : 1;
> > +}
> > +
> >  static void delete_functions(void)
> >  {
> >         free(functions);
> > @@ -98,6 +109,7 @@ static int collect_function(struct btf_elf *btfe, GElf_Sym *sym,
> >
> >         functions[functions_cnt].name = name;
> >         functions[functions_cnt].addr = elf_sym__value(sym);
> > +       functions[functions_cnt].end = (__u64) -1;
> >         functions[functions_cnt].sh_addr = sh.sh_addr;
> >         functions[functions_cnt].generated = false;
> >         functions_cnt++;
> > @@ -236,9 +248,25 @@ get_kmod_addrs(struct btf_elf *btfe, __u64 **paddrs, __u64 *pcount)
> >         return 0;
> >  }
> >
> > +static bool is_addr_in_func(__u64 addr, struct elf_function *func, bool kmod)
> > +{
> > +       /*
> > +        * For vmlinux image both addrs[x] and functions[x]::addr
> > +        * values are final address and are comparable.
> > +        *
> > +        * For kernel module addrs[x] is final address, but
> > +        * functions[x]::addr is relative address within section
> > +        * and needs to be relocated by adding sh_addr.
> > +        */
> > +       __u64 start = kmod ? func->addr + func->sh_addr : func->addr;
> > +       __u64 end = kmod ? func->end+ func->sh_addr : func->end;
> > +
> > +       return start <= addr && addr < end;
> > +}
> > +
> >  static int setup_functions(struct btf_elf *btfe, struct funcs_layout *fl)
> >  {
> > -       __u64 *addrs, count, i;
> > +       __u64 *addrs, count, i_func, i_addr;
> >         int functions_valid = 0;
> >         bool kmod = false;
> >
> > @@ -266,43 +294,62 @@ static int setup_functions(struct btf_elf *btfe, struct funcs_layout *fl)
> >                 return 0;
> >         }
> >
> > -       qsort(addrs, count, sizeof(addrs[0]), addrs_cmp);
> > -       qsort(functions, functions_cnt, sizeof(functions[0]), functions_cmp);
> > -
> >         /*
> > -        * Let's got through all collected functions and filter
> > -        * out those that are not in ftrace.
> > +        * Sort both functions and addrs so we can iterate
> > +        * both of them simultaneously and found matching
> > +        * func/addr pairs.
> >          */
> > -       for (i = 0; i < functions_cnt; i++) {
> > -               struct elf_function *func = &functions[i];
> > -               /*
> > -                * For vmlinux image both addrs[x] and functions[x]::addr
> > -                * values are final address and are comparable.
> > -                *
> > -                * For kernel module addrs[x] is final address, but
> > -                * functions[x]::addr is relative address within section
> > -                * and needs to be relocated by adding sh_addr.
> > -                */
> > -               __u64 addr = kmod ? func->addr + func->sh_addr : func->addr;
> > +       qsort(addrs, count, sizeof(addrs[0]), addrs_cmp);
> > +       qsort(functions, functions_cnt, sizeof(functions[0]), functions_cmp_addr);
> > +
> > +       for (i_func = 0, i_addr = 0; i_func < functions_cnt; i_func++) {
> > +               struct elf_function *func = &functions[i_func];
> > +
> > +               if (i_func + 1 < functions_cnt)
> > +                       func->end = functions[i_func + 1].addr;
> > +
> > +               for (; i_addr < count; i_addr++) {
> > +                       __u64 addr = addrs[i_addr];
> > +
> > +                       /* Functions are  ahead, catch up with addrs. */
> > +                       if (addr < func->addr)
> > +                               continue;
> > +
> > +                       /* Addr is within function - mark function as valid. */
> > +                       if (is_addr_in_func(addr, func, kmod)) {
> > +                               /*
> > +                                * We iterate over sorted array, so we can easily skip
> > +                                * not valid item and move following valid field into
> > +                                * its place, and still keep the 'new' array sorted.
> > +                                */
> > +                               if (i_func != functions_valid)
> > +                                       functions[functions_valid] = functions[i_func];
> > +                               functions_valid++;
> > +                               i_addr++;
> > +                       }
> >
> > -               /* Make sure function is within ftrace addresses. */
> > -               if (bsearch(&addr, addrs, count, sizeof(addrs[0]), addrs_cmp)) {
> >                         /*
> > -                        * We iterate over sorted array, so we can easily skip
> > -                        * not valid item and move following valid field into
> > -                        * its place, and still keep the 'new' array sorted.
> > +                        * Addrs are ahead, catch up with functions, or we just
> > +                        * found valid function and want to move to another.
> >                          */
> > -                       if (i != functions_valid)
> > -                               functions[functions_valid] = functions[i];
> > -                       functions_valid++;
> > +                       break;
> >                 }
> >         }
> >
> > +       if (btf_elf__verbose) {
> > +               printf("Found %d functions out of %d symbols and %llu ftrace addresses.\n",
> > +                       functions_valid, functions_cnt, count);
> > +       }
> > +
> >         functions_cnt = functions_valid;
> >         free(addrs);
> >
> > -       if (btf_elf__verbose)
> > -               printf("Found %d functions!\n", functions_cnt);
> > +       /*
> > +        * And finaly sort 'valid' functions by name,
> > +        * so find_function can be used.
> > +        */
> > +       qsort(functions, functions_cnt, sizeof(functions[0]), functions_cmp_name);
> > +
> >         return 0;
> >  }
> >
> > @@ -312,7 +359,7 @@ static struct elf_function *find_function(const struct btf_elf *btfe,
> >         struct elf_function key = { .name = name };
> >
> >         return bsearch(&key, functions, functions_cnt, sizeof(functions[0]),
> > -                      functions_cmp);
> > +                      functions_cmp_name);
> >  }
> >
> >  static bool btf_name_char_ok(char c, bool first)
> >
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YCQ%2Bd0CVgIclDwng%40krava.
