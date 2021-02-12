Return-Path: <clang-built-linux+bncBCDZTXMP2EPRBOXGTOAQMGQE7R5H2II@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc40.google.com (mail-oo1-xc40.google.com [IPv6:2607:f8b0:4864:20::c40])
	by mail.lfdr.de (Postfix) with ESMTPS id 1897531A6E3
	for <lists+clang-built-linux@lfdr.de>; Fri, 12 Feb 2021 22:29:31 +0100 (CET)
Received: by mail-oo1-xc40.google.com with SMTP id f4sf515294oov.10
        for <lists+clang-built-linux@lfdr.de>; Fri, 12 Feb 2021 13:29:31 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1613165370; cv=pass;
        d=google.com; s=arc-20160816;
        b=l9TAFw0ZUr7r79oz4IU12G4SMoYLj/jNdxF/RDNlHJtCM8djw9UriTXPZ3OMKvSBul
         vrvL6633jNxgOMFNSU8jnSDGWbyhjSjaleJ/IAMC8/4yZ2NvFnLiDZcz8ccM64RDwfnD
         82E7+CLnHzW3ZEr20MyMgT492ISWd8syImSeNK7V11kP19eR1IWdq0rgHXhhtZIAfAOM
         B5Rz/Co/HfliPz67phw2cNPqSEvzoM3yEsRct72RCxCX0eJgx0SBHYpnTwEc5H8D8FEq
         OpQxwv0E1ihOVb20yZhDuRTcA6TFwXNv6GXDqrRtkRZ6uHCgRTDmnVB3snU4KEfojRIf
         DT/g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=n8nuGLFnUOR+LyoZTE0piaHdBUPe8P6I9UgBdpSIDA8=;
        b=zDig8qTvpZMofNr6I2t+5CgCQpWZa0167jjDVt42ZDE03zB6eNd+EXbiLtCP0Yld0U
         6csYY0Or++yY69ACjp1aBxddHIGXSX8fV5tiYtmA5KI4bIl+4b5C5GzPe9cEVJeTpaek
         k4vm+x3PGCseNu3S0F/vqJpM+owS2wLmUCikZCSbbF3AU1l5i/bF28hPvOsfJjqr/R+P
         hWpkcHfYjLBexpqNbZ0PL2osxiybburuANQsHTKH2Pb/I3coIO5/nf5+cnqf5aE0FwPs
         KQB244uBHRcd0NZnuq53hNUft9LddHDCLYM7dP+mxVVGwC9cU69ptfCzxKHZPNSt5b6k
         j5LA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=LTklSNe1;
       spf=pass (google.com: domain of jolsa@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=n8nuGLFnUOR+LyoZTE0piaHdBUPe8P6I9UgBdpSIDA8=;
        b=Puf5ObvrDOkZDghm4ybuBL7qDmyCyb+T+g+CaZTpp3Zu7sJvQuF3HMBQwcb7kwqdM2
         OV6a0jpBl0LWYKlLZiLH496HdNu8Br7MahRPbLvfv0hM4nSICwqe4jiehZ5iC+JrVq9d
         ODFRgXvj1CX1MouNUss/JvFoe4FokiaZ05oK3Ahdbni8dgJyWyfW81OSi18u2lFT1Dlc
         C8yxd1pNKDz625pBw9t3SZz8yUNp0IFcPvudmuyoj9o5TYi/cvOI3FTut505OQc9Pan9
         XZ7Zi0iF8rLEhrJTmUkIeefXHhljC4fForzcwcGq91ENWcOH68p2LFzwiPT9Rm53ZBU/
         JZxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=n8nuGLFnUOR+LyoZTE0piaHdBUPe8P6I9UgBdpSIDA8=;
        b=Svf/upd3haFVlbe1OBS60do3y6U8gGVlZ5OtKevB94ybAF7WnoWUIyajoQKrAE36jC
         RTkVrpyL0H4cmtw3Qov3GlOiwjM2UufMSZEI3Kt/jKhxP+ocwlVFeLPNz/ZBP39N92dH
         F6sAJlxiFxcbhhrg9jx4qNi98khB9lSwSh9l2rfUR/H9gSPetONWQqk1Jbkuxt0e3BRN
         o0rNn5gkepIQzyjUmucZDo2J7GX3uBlp11AY0eB39v1jB16FPLc6QEZLkwjridCN/zYV
         rzdBVtFeduUf57/3Ed9lNavj+QAXptaKwq/sVGvQOCQ0vqi3raIzyrzKBl3hGzDOMZw5
         8qAQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533V6GKecWt3qASNzmLdY1wd4CwFmrYBuQaZ5XLR4LdVQfPOcQjM
	K6tkEjkRgva0jQRHtCr+oBM=
X-Google-Smtp-Source: ABdhPJy2CX/+54GUNFihym3FPZKDQazu1+N5WF9umg6HnYgVKKmmx11dcK6uWthKrkuBZpya5vM8Cw==
X-Received: by 2002:a05:6830:140a:: with SMTP id v10mr3487032otp.355.1613165370108;
        Fri, 12 Feb 2021 13:29:30 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:1156:: with SMTP id u22ls2566133oiu.6.gmail; Fri,
 12 Feb 2021 13:29:29 -0800 (PST)
X-Received: by 2002:aca:c7c8:: with SMTP id x191mr1095171oif.152.1613165369748;
        Fri, 12 Feb 2021 13:29:29 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1613165369; cv=none;
        d=google.com; s=arc-20160816;
        b=OQNuxYVNRHs97qfbsw9OPNfOjtGhFFl9Z6WJVUyEyLdL2E63y8xluG3njbAxhgfnCR
         ssfHacz3VBPkPljnzagOzgLShtmdzsPnJwyxz+WEw6jewf0FFZHtlIHlJKRjiJf4tl+q
         m/RERwyL5m5PhcqG4NGsF1ccvIzyfwmbQ4SSts/KqscmWzED5QIxmJiRHSQEwG/T0oO0
         jbH3d3ux66W1OOp9ISRUMFp3C0sFhjyPQXjYEnxQTEKCRtf8U03BfHbu0po7hCRRQ8am
         Z8tBnPl5YA+lAmlfV7HKjz3fu2ltCQ8ZZ4GIQ0V1/PZMEtW3I70V32xBv8QPkgyWxNaX
         EJIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=0maAmKJ5LszuYenhjRQmxflXMdoznBGG5sX99MzX/5k=;
        b=mzsIyJwpIqMgpfxMGjzgUAgsKbeAwhqProDXatgF68IyanRzFxcutjUT3w2HmlPJCe
         sUuh2oXT42PCSCK1KEvl+mWS/+Y9QDz8ngSqbcntapZduN89zQuXR3/LqccuvzhywojD
         vEE/SL/8XDqywLSmBiTI6xw6Jg4goTv0QI6qMvAkbqBaeywYSaOWfxceBg1AiPHMCQuZ
         Uw4lqTdIPFETNIgPNgP3koAd0zCqWjUkmFsSTlkPgowmKSJLwTlFnl327LMQmYqidh8N
         EmDPEQZ10ln4EBSwSdaR9HG4tzi7QSOmDZmwAypiirql0AjgiLc3+lzIA4KSinCr2cei
         uHxA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=LTklSNe1;
       spf=pass (google.com: domain of jolsa@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [63.128.21.124])
        by gmr-mx.google.com with ESMTPS id f20si503484oiw.1.2021.02.12.13.29.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Feb 2021 13:29:29 -0800 (PST)
Received-SPF: pass (google.com: domain of jolsa@redhat.com designates 63.128.21.124 as permitted sender) client-ip=63.128.21.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-472-tN_QltxJMeq54MN7TIBKnw-1; Fri, 12 Feb 2021 16:29:24 -0500
X-MC-Unique: tN_QltxJMeq54MN7TIBKnw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 838C0801965;
	Fri, 12 Feb 2021 21:29:22 +0000 (UTC)
Received: from krava (unknown [10.40.193.141])
	by smtp.corp.redhat.com (Postfix) with SMTP id 7298250A8B;
	Fri, 12 Feb 2021 21:29:19 +0000 (UTC)
Date: Fri, 12 Feb 2021 22:29:18 +0100
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
Message-ID: <YCbzLrtukxH3r4Hf@krava>
References: <CAEf4BzaL=qsSyDc8OxeN4pr7+Lvv+de4f+hM5a56LY8EABAk3w@mail.gmail.com>
 <YCMEucGZVPPQuxWw@krava>
 <CAEf4BzacQrkSMnmeO3sunOs7sfhX1ZoD_Hnk4-cFUK-TpLNqUA@mail.gmail.com>
 <YCPfEzp3ogCBTBaS@krava>
 <CAEf4BzbzquqsA5=_UqDukScuoGLfDhZiiXs_sgYBuNUvTBuV6w@mail.gmail.com>
 <YCQ+d0CVgIclDwng@krava>
 <YCVIWzq0quDQm6bn@krava>
 <CAEf4Bzbt2-Mn4+y0c+sSZWUSrP705c_e3SxedjV_xYGPQL79=w@mail.gmail.com>
 <YCavItKm0mKxcVQD@krava>
 <CAEf4BzaJkfVYLU+zA6kmJRNd5uqGyk2B8G6BT22pKjMt7RqpSg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAEf4BzaJkfVYLU+zA6kmJRNd5uqGyk2B8G6BT22pKjMt7RqpSg@mail.gmail.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Original-Sender: jolsa@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=LTklSNe1;
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

On Fri, Feb 12, 2021 at 11:22:41AM -0800, Andrii Nakryiko wrote:

SNIP

> > +static int is_ftrace_func(struct elf_function *func, __u64 *addrs,
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
> > +       __u64 addr, end = func->addr + func->size;
> > +
> > +       /*
> > +        * The invariant here is addr[r] that is the smallest address
> > +        * that is >= than function start addr. Except the corner case
> > +        * where there is no such r, but for that we have a final check
> > +        * in the return.
> > +        */
> > +       size_t l = 0, r = count - 1, m;
> > +
> > +       /* make sure we don't use invalid r */
> > +       if (count == 0)
> > +               return false;
> > +
> > +       while (l < r) {
> > +               m = l + (r - l) / 2;
> > +               addr = addrs[m];
> > +
> > +               if (addr >= start) {
> > +                       /* we satisfy invariant, so tighten r */
> > +                       r = m;
> > +               } else {
> > +                       /* m is not good enough as l, maybe m + 1 will be */
> > +                       l = m + 1;
> > +               }
> > +       }
> > +
> > +       return start <= addrs[r] && addrs[r] < end;
> > +}
> > +
> >  static int setup_functions(struct btf_elf *btfe, struct funcs_layout *fl)
> >  {
> >         __u64 *addrs, count, i;
> > @@ -267,7 +321,7 @@ static int setup_functions(struct btf_elf *btfe, struct funcs_layout *fl)
> >         }
> >
> >         qsort(addrs, count, sizeof(addrs[0]), addrs_cmp);
> > -       qsort(functions, functions_cnt, sizeof(functions[0]), functions_cmp);
> > +       qsort(functions, functions_cnt, sizeof(functions[0]), functions_cmp_addr);
> 
> All looks good except this. We don't rely on functions being sorted in
> ascending start addr order, do we? If not, just drop this, no need to
> slow down the process.

right, it's not needed when we use st_size for function size

thanks,
jirka

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YCbzLrtukxH3r4Hf%40krava.
