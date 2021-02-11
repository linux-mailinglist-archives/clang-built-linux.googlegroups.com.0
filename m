Return-Path: <clang-built-linux+bncBCDZTXMP2EPRB3OLS2AQMGQEOVHC5WI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x139.google.com (mail-il1-x139.google.com [IPv6:2607:f8b0:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id A70D531955D
	for <lists+clang-built-linux@lfdr.de>; Thu, 11 Feb 2021 22:47:26 +0100 (CET)
Received: by mail-il1-x139.google.com with SMTP id f132sf6561340ilh.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 11 Feb 2021 13:47:26 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1613080045; cv=pass;
        d=google.com; s=arc-20160816;
        b=cWA+E5XhcypRxOA4MQhB0Yxfv+k036oGD9MJJM3/Rq/a8NkQMo9s4c0Kee0+0QALS2
         7VLw2d4t3nfDijL/jOzmlq3oRe7zU9nNwj3DcjVnnJvBBdeM7J3J6Kuiow486+rG1Yku
         a2OZmHoeg3GtU2PoO8zeZDEhyC0JfLfH4NAxxMIq2YUE+3Xm3gWNeGzgou8LsH0EftOC
         W8yo8+lXMQJ/FCSSyeQFrZMHrxEJ26PrTL5rOr+6QekdwNIJYDn5b9BlbxSsTYKBqx5/
         avBA9/qr/YjjnAF+LlpZFFMbmfaMapXzzXO1oOeSVHf/ZBdWaHCj6hVKx3RRuqqmfcm1
         ZMHA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=5jtGU10V8EtvhC0KkZ2+eoce/WKQrR4pzkaC3A+12f8=;
        b=GiMDShkEWUy2fFx12qdl1dMGuhfrMPYsAcf68jv9tiiJppkILnlwZm7odkdJ1MA3Tb
         0FOLAqMH7zS5pD7pjzyNToOQHssgcWbtwBgaSY6Ji4qgw2nKzfn10EJJi3DLaTUUs1zW
         IJZkPfDS6NaZXuym9a457ZBh7R6O8mc+WChI/XE3CmyocURc5C7fUJzLa6/+vXOSY1mE
         CR8F/PfdQxREhw4WGRktZPa/RmQUy2T1wQbmtQ1Qh+V4P02ANin9cO5R0/vNFmjulgsw
         GPftKSk5pXlxWMIVc2XLqngSIyvWBAPKTOWzXRZpXSG6vzVJVg0DyJhOP+Z9bZ01oHka
         bWpQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=fHB7fCOd;
       spf=pass (google.com: domain of jolsa@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=5jtGU10V8EtvhC0KkZ2+eoce/WKQrR4pzkaC3A+12f8=;
        b=Q93a5PydHFYHKhkGTsvtDOOyT5d6uDNdDGeAv5W3w77Qha//6IaGDkJ+jdoT6kNNAm
         u2ox1ACg0vEJXptl44S2SCrCODsm383dw/8vX9QLJUSfktWQsDX8xi0eATAC/oOW9hZA
         1wqqSSM3ih9WtC+MQlqhdlrao4sTIdDcjnXqtKmMbLG+ahf1Gq+0R3PmwjohsAM7MBvv
         d5EzMUd/N83wqn2Z29G4O2AE3EHLNo5OlS12JFPQ0y1eH4lXqBI76RlO/yrXWnx6RwyQ
         DW+cLMKIjCzqTyZt/r/bNdkUFHe9V9XDzo9VBVBPriTpx9zRObfWOT9j3XgtZIMngKdQ
         utmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=5jtGU10V8EtvhC0KkZ2+eoce/WKQrR4pzkaC3A+12f8=;
        b=gOk9tKAhoock+vGELzKz/PD04sTRdfdyixNsbLJxRf/XrNZM80aLcG5ZezsZuwEDcc
         /p9CfRduuDSrnxQVSB85eGBOMO//nv3s4vPs2T1YEgJ3Gkp/OFeVnHtCt3zCQACdnF/H
         phdXLj6X9CHECJ9WAnqiuCtzL3tmKnKKxQMwaL4S3pA/rILvhNjI9GYDwLnnFZ7rWfEY
         69rssE0yG5xgokU34B9slUdQeFRLSWuikz8BA0w5ntMvvoXqx+X/45jH6BoA+okzPzgr
         Vf1t2XzrRcwlT4th8fTwXplMEUkSTnw6VWU91saihsdptNQoLniKroCA8buC32YOMqHG
         pFhg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532hamSfi32q+4oSJDvmRP13eftF4/FURn6mEb+PsGaYzJQhB85g
	rzYbjax2WQQLve6J1RF96rA=
X-Google-Smtp-Source: ABdhPJxxG39Nj7FjhK72/LpVzuih6cEx7+B6ewyKiObmIsuP7A6dasFk7GqPoVGbDvhfj/+G2hzQLw==
X-Received: by 2002:a92:41cd:: with SMTP id o196mr127239ila.31.1613080045477;
        Thu, 11 Feb 2021 13:47:25 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:9914:: with SMTP id x20ls1222824iol.7.gmail; Thu, 11 Feb
 2021 13:47:25 -0800 (PST)
X-Received: by 2002:a05:6602:13c7:: with SMTP id o7mr7167454iov.104.1613080045019;
        Thu, 11 Feb 2021 13:47:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1613080045; cv=none;
        d=google.com; s=arc-20160816;
        b=Wb3Bahv+/CiQqCmiPVX1dJcYvCVneU13Ud7KjEqkBfGBgl3907tGaxQm6k4jRSpdWl
         3GThEg85kXxmZ+LVW3y1CbRiVfII6HkTRGXbDL1VddukMOo0KtKZuQbdY3UqP0QqpmWY
         qe40EAS44aqKtNnYRF2YEUo5ueqvLAgyi/qdIacaNNc+L+DuPoNZd19+bhIIuO4a1KCh
         Jse9bZDsgD6GS+zjrr1DQhObPYFMgM3ficTAr92+mCHDcL6HulaU0tdB+VkQHiDIPR5k
         jsKubG+rD0Phi8lr6dqpJ8MYsTaHbZdZaNn0D6Sfho0aIPTv1CuW3N4j+nEQUnklWWqx
         mXjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=erw+oRuJIWU+Lcuv3JLHAsQxLRO/3TX9GolXrQOQEC8=;
        b=cPHkSuzog+ySQlwJ46TMJ95TULJSQmIoZOuThV6se0TZZFj74bKwAsDzgxFJQen6Ub
         rMAXR2D9R7Oaao4u6bT5jYVlV2oQXIwPADALE76CI99ZpqiKrJfqMqVnNAJN0PLLkuro
         5vLRLL7kuvrw5gjNiO+g70qg4qS08n9Q5zFYXya/o8QLyymEFQw4Rr62VAmVhTpPA8LM
         5u+NRBmH5/VKAyONolStYry3nbmLDIanCx1XSRI3bvf9Zhhq69C2R0ArQPjkED8ElNB9
         IMgE03gR2yrrfLQJ8arO5YDtbqjf7QO2eYrI130kQg7KmHl1WumIe4cOUbUQcZGThpXz
         jYkA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=fHB7fCOd;
       spf=pass (google.com: domain of jolsa@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [63.128.21.124])
        by gmr-mx.google.com with ESMTPS id y16si391005ili.3.2021.02.11.13.47.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Feb 2021 13:47:25 -0800 (PST)
Received-SPF: pass (google.com: domain of jolsa@redhat.com designates 63.128.21.124 as permitted sender) client-ip=63.128.21.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-246-vAjmXrMBMfm9GakvVaaAHQ-1; Thu, 11 Feb 2021 16:47:20 -0500
X-MC-Unique: vAjmXrMBMfm9GakvVaaAHQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 03B541937FD2;
	Thu, 11 Feb 2021 21:47:10 +0000 (UTC)
Received: from krava (unknown [10.40.192.118])
	by smtp.corp.redhat.com (Postfix) with SMTP id 86E2D6F99D;
	Thu, 11 Feb 2021 21:47:06 +0000 (UTC)
Date: Thu, 11 Feb 2021 22:47:05 +0100
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
Message-ID: <YCWl2YHTSZSRkiQW@krava>
References: <YCKB1TF5wz93EIBK@krava>
 <YCKlrLkTQXc4Cyx7@krava>
 <CAEf4BzaL=qsSyDc8OxeN4pr7+Lvv+de4f+hM5a56LY8EABAk3w@mail.gmail.com>
 <YCMEucGZVPPQuxWw@krava>
 <CAEf4BzacQrkSMnmeO3sunOs7sfhX1ZoD_Hnk4-cFUK-TpLNqUA@mail.gmail.com>
 <YCPfEzp3ogCBTBaS@krava>
 <CAEf4BzbzquqsA5=_UqDukScuoGLfDhZiiXs_sgYBuNUvTBuV6w@mail.gmail.com>
 <YCQ+d0CVgIclDwng@krava>
 <YCVIWzq0quDQm6bn@krava>
 <CAEf4Bzbt2-Mn4+y0c+sSZWUSrP705c_e3SxedjV_xYGPQL79=w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAEf4Bzbt2-Mn4+y0c+sSZWUSrP705c_e3SxedjV_xYGPQL79=w@mail.gmail.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Original-Sender: jolsa@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=fHB7fCOd;
       spf=pass (google.com: domain of jolsa@redhat.com designates
 63.128.21.124 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
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

On Thu, Feb 11, 2021 at 11:59:02AM -0800, Andrii Nakryiko wrote:

SNIP

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
> > @@ -236,6 +248,40 @@ get_kmod_addrs(struct btf_elf *btfe, __u64 **paddrs, __u64 *pcount)
> >         return 0;
> >  }
> >
> > +static int is_ftrace_func(struct elf_function *func, __u64 *addrs,
> 
> return bool, not int?

yep

> 
> > +                         __u64 count, bool kmod)
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
> > +       __u64 end   = kmod ? func->end + func->sh_addr : func->end;
> > +
> > +       size_t l = 0, r = count - 1, m;
> > +       __u64 addr = 0;
> > +
> > +       while (l < r) {
> > +               m = l + (r - l + 1) / 2;
> > +               addr = addrs[m];
> > +
> > +               if (start <= addr && addr < end)
> > +                       return true;
> 
> this extra check on each step shouldn't be necessary
> 
> > +
> > +               if (start <= addr)
> 
> I don't think this is correct, start == addr is actually a good case,
> but you'll do r = m - 1, skipping it. See below about invariants.

the == case is covered in the check above, but yes it should be <

> 
> > +                       r = m - 1;
> > +               else
> > +                       l = m;
> 
> So in my previous example I assumed we have address ranges for ftrace
> section, which is exactly the opposite from what we have. So this
> binary search should be a bit different. start <= addr seems wrong
> here as well.
> 
> The invariant here should be that addr[r] is the smallest address that
> is >= than function start addr, right? Except the corner case where
> there is no such r, but for that we have a final check in the return
> below. If you wanted to use index l, you'd need to change the
> invariant to find the largest addr, such that it is < end, but that
> seems a bit convoluted.
> 
> So, with that, I think it should be like this:
> 
> size_t l = 0, r = count - 1, m;
> 
> /* make sure we don't use invalid r */
> if (count == 0) return false;
> 
> while (l < r) {
>     /* note no +1 in this case, it's so that at the end, when you
>      * have, say, l = 0, and r = 1, you try l first, not r.
>      * Otherwise you might end in in the infinite loop when r never == l.
>      */

nice catch, did not see that

>     m = l + (r - l) / 2;
>     addr = addrs[m];
> 
>     if (addr >= start)
>         /* we satisfy invariant, so tighten r */
>         r = m;
>     else
>         /* m is not good enough as l, maybe m + 1 will be */
>         l = m + 1;
> }
> 
> return start <= addrs[r] && addrs[r] < end;
> 
> 
> So, basically, r is maintained as a valid index always, while we
> constantly try to tighten the l.
> 
> Does this make sense?

I did not see the possibility to let the search go through
all the way to l == r and that 'extra' check allowed me to split
the interval, without caring about invariant

but I think your solution is cleaner, I'll send new version

> 
> 
> > +       }
> > +
> > +       addr = addrs[l];
> > +       return start <= addr && addr < end;
> > +}
> > +
> >  static int setup_functions(struct btf_elf *btfe, struct funcs_layout *fl)
> >  {
> >         __u64 *addrs, count, i;
> > @@ -267,7 +313,7 @@ static int setup_functions(struct btf_elf *btfe, struct funcs_layout *fl)
> >         }
> >
> >         qsort(addrs, count, sizeof(addrs[0]), addrs_cmp);
> > -       qsort(functions, functions_cnt, sizeof(functions[0]), functions_cmp);
> > +       qsort(functions, functions_cnt, sizeof(functions[0]), functions_cmp_addr);
> 
> See below assumptions about function end. If we get it from ELF, you
> don't need to do this extra sort, right?

I had the same assumption and was surprised why my code is not working ;-)

> 
> >
> >         /*
> >          * Let's got through all collected functions and filter
> > @@ -275,18 +321,12 @@ static int setup_functions(struct btf_elf *btfe, struct funcs_layout *fl)
> >          */
> >         for (i = 0; i < functions_cnt; i++) {
> >                 struct elf_function *func = &functions[i];
> > -               /*
> > -                * For vmlinux image both addrs[x] and functions[x]::addr
> > -                * values are final address and are comparable.
> > -                *
> > -                * For kernel module addrs[x] is final address, but
> > -                * functions[x]::addr is relative address within section
> > -                * and needs to be relocated by adding sh_addr.
> > -                */
> > -               __u64 addr = kmod ? func->addr + func->sh_addr : func->addr;
> > +
> > +               if (i + 1 < functions_cnt)
> > +                       func->end = functions[i + 1].addr;
> 
> This makes a bunch of unnecessary assumptions about functions layout.
> But why, if we have STT_FUNC symbol with function size, so that we
> know the function end right when we collect function info.

ugh forgot about the st_size for STT_FUNC

thanks,
jirka

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YCWl2YHTSZSRkiQW%40krava.
