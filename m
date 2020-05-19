Return-Path: <clang-built-linux+bncBCTYRDEG7MGBB4WUSH3AKGQEDNTFDSA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43d.google.com (mail-pf1-x43d.google.com [IPv6:2607:f8b0:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id 80DFF1DA545
	for <lists+clang-built-linux@lfdr.de>; Wed, 20 May 2020 01:23:32 +0200 (CEST)
Received: by mail-pf1-x43d.google.com with SMTP id r3sf967345pfg.12
        for <lists+clang-built-linux@lfdr.de>; Tue, 19 May 2020 16:23:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589930611; cv=pass;
        d=google.com; s=arc-20160816;
        b=SsfvbTUunXlERfqzcutT/W6Cl6V1ZWkFaRs7wYXXJ3vQwSSMK03whoUSB9ebaFV5oc
         Ep8a9ucrWNntyUEDES5amNNtVnq6OtMEsMMaNEYnedMeCtkO23WUZjKk2ohc9GzYDvYb
         3QfSvl1iJCrilQ9gdgbvXe97jFYmyfWjdRpIJpHboVXwbSYbtD/i+avVWZN2xXPX5+LQ
         jmeA22wRlKbzxdSc3aJSv1a9L1bKji6YVqptBmb1NVk4/3PlN841uxumwqZRIJ/A0R0O
         aK6kkFbmZdgfmYxvjLu7a/XaJJhDTttZfQPqOWg4srCtKByn68LYW478lcOH9Ltwnowa
         NAsA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=ozZpQSONAi0LlDig4rXRHnM/TyPqzt9QSVTPPD7h8uI=;
        b=WUjDjYthqUh9eKJnFyq/mPmJP3nyzXnYs008gnRRb40qB+Elr/diUBCKCstEjEhfBk
         sCsKzXzoAMQDStLFoDKCl5agoxN5y5Fy0afqlfZMfyX9iyDYA2gP2GO+XLnQh+TGw1cy
         b5CiHXm4f9uH9gI1yQ8LqUn3I47FmoMsoJuWrQ/YWJHMnvrXhBxPv/Q4CKqzVbkB98E6
         vnM1YMwmRQjgAloM38dFYjX3Df4JE0eESjlcPL6kHxUUGFc0B03JXPq15LlbxKjfAmiT
         87qrY9sSbgKs4sn+hlpBQfvW06ZgztfeXMbMj9oT2Ms8Dpxh3nIg7P+MQRz3qmI+ssnP
         sAZg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vNdj6UMX;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ozZpQSONAi0LlDig4rXRHnM/TyPqzt9QSVTPPD7h8uI=;
        b=AIInA6Trd/lmT5XWEVlntDCN5DCfuPXrF4VH1r+5eP584jSgqjkLI4AZbFpKvqN/Jb
         l6ra0onMejKsFTVZJIiL3Uf4ry4GWNaL1ViHBYtiRJgeh9/Rq0zS74d/wCpT9EtlEQh/
         5ViyJ0EEiy+X1cKeiGuiH3TYCIpQYG6dOaRkTUosKcz+Ygy5A6pnlmTDyqOXDGHhg9wd
         J9RBJ61kfEZr46GZe1zlnQXyIUd3jdgjDlTHukZThlVnon9oob6fcH8Zral8t3KmcbqD
         3xSDaD1qCiOJaYxOmTrPbUWcPc59xDrIPTZFwQL/sjeWuaBg0Swise3F1XJowzuV7LKb
         /hSA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ozZpQSONAi0LlDig4rXRHnM/TyPqzt9QSVTPPD7h8uI=;
        b=HBbtZHOTsG40WbtiS6sLHAJaNk34DzDzI0nEnLlfNph1DCFRKzeOuIi2PgZHs/JKMK
         YEQPoK/Ef2nrXWXVNhfsET3zaRNBQdHq3P0QInzN84lIpuRazjDqP80jqP4wTed5TF/A
         uef/hmYH2yCY7fY4fNnJSQIPzVHUjczmPwG9N3A6iIS+fbjVWFinh/wts7cBV5YO2i7u
         x1tmVrPhRBdrB5uDsS2KqXmB9mjgRCZLIrUi6bddAI/Kva8cch4OYKgSkbIAIRVqYtXk
         1nAQ3mmx+JUigf2PLa007Sd/hvm9Q+TbhIAAtEJ4yN/0lI5pii8pPC7kcvIfS+W/5KnR
         IUhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ozZpQSONAi0LlDig4rXRHnM/TyPqzt9QSVTPPD7h8uI=;
        b=cAwJvQwvhPvErOYrcE4GYa29ef2MLrECNgskTHeP1GXkMokNV5pHYZOgEhGKBIrmrt
         qAw78hZ7xB9X6se5y6HMZFrKnJM/YQuEjQMIapNSsW2/BhKiUShg0YetF1AF+EC8nkMJ
         0HWXMnX57mJIBGZoaP6AYn5YDr1eaRpHE6JFQdo4kth/YHXzJzkHsM/pcvY587wKvTJ+
         njgNf/BdOlrRm4UxnE0ufl+PvtL5NX+8jKEis1LQ1J9Gd9wkba6FQ3wiYEHrGuzbLLh8
         qTgVnr0+7aE/SKZID0uwx4wFmogig6BYqncNHQ0xu1tTQHHPHwrmuB2cs/nR5j+Z7jD0
         I3bQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5335lVDg0/Q4V+C1iaD5x06qfZf9did6sEmffCoCZhKovNBgUovP
	FqTmjF1nscCsB2AmwMGp1pk=
X-Google-Smtp-Source: ABdhPJxwnkWtz8E5ZioyCINVGGpI+S3dhdRvLoT8AzEEe2KZdVYaK0tbXieDNZ/I9D0sHym8ZpCu2w==
X-Received: by 2002:a17:902:b598:: with SMTP id a24mr1712151pls.63.1589930610952;
        Tue, 19 May 2020 16:23:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:d684:: with SMTP id v4ls260545ply.11.gmail; Tue, 19
 May 2020 16:23:30 -0700 (PDT)
X-Received: by 2002:a17:90a:730a:: with SMTP id m10mr2123056pjk.9.1589930610459;
        Tue, 19 May 2020 16:23:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589930610; cv=none;
        d=google.com; s=arc-20160816;
        b=lCIgGmulIfJIEv8RwcmLLc3U2Cnh3yq9obwS45bx62/88z3TyyXm6WMQJoN/miI6wY
         jGAZGHDUmnGemuzOpvh/pzelPdKqZqkqHd/uTGSUK1QBPKb6zacRdy218YDc0qUnI4dA
         oXtmUE5EIeLo0svcmGxM0dt0Rlr4nB6Ht1bORxgQ5ApVMev9vMWfcfG1E9rkFDElNXH9
         MkGPOG/nTDNY4w65bkGZVTOC9HsOlq0UBHsmyvgEwh/wOuDk/HRd66LgZkQYSUC2AElC
         KvESsJegMyX1PRz2b6/Yk8DFGGCCbxj/R8JAdT0RdoJ1nM+1v4w79S4B15GFu2Y+7XdQ
         P5hg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=NFJWmr9KEQenea6GLlA4NPI5u/eetb0vSSE/zevqVR8=;
        b=GgOmkeeZm+m+lrgJ678kmHI6H0ZkLZDrismcNqUobjfbr0Hy0ZW9M9u9jczaZnRfVN
         VO4Drc+yqONfU85kz/vreylSnd3BxZd2rXsQMoB+RBX50ME4wTrgod4pRfj5DRhnYVi1
         I6s114fAWyU+jxZYUB4ZaoTzJ6BZKkBHvt+lD/UuSKFCT/nJIq76ovm+K5vwgKqFrHue
         n2KneVJkDqhBsSWtJMbXOHMan/TyM1XC8lPvehkDRLgM4E4Mat7Q3O23QRAxwrfXtvQx
         uDGcCc1Axh2v3vJ7/6m/tUfx+NL6kDP5HYd4gmcTaeA7ksyYLuTXL80Maz/r3dlXb/+s
         vPYw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vNdj6UMX;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qt1-x841.google.com (mail-qt1-x841.google.com. [2607:f8b0:4864:20::841])
        by gmr-mx.google.com with ESMTPS id e17si74353pjp.3.2020.05.19.16.23.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 May 2020 16:23:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) client-ip=2607:f8b0:4864:20::841;
Received: by mail-qt1-x841.google.com with SMTP id p12so1109638qtn.13
        for <clang-built-linux@googlegroups.com>; Tue, 19 May 2020 16:23:30 -0700 (PDT)
X-Received: by 2002:aed:2f02:: with SMTP id l2mr2472522qtd.117.1589930609786;
 Tue, 19 May 2020 16:23:29 -0700 (PDT)
MIME-Version: 1.0
References: <CAG=TAF6mfrwxF1-xEJJ9dL675uMUa7RZrOa_eL2mJizZJ-U7iQ@mail.gmail.com>
 <CAEf4BzazvGOoJbm+zNMqTjhTPJAnVLVv9V=rXkdXZELJ4FPtiA@mail.gmail.com>
 <CAG=TAF6aqo-sT2YE30riqp7f47KyXH_uhNJ=M9L12QU6EEEfqQ@mail.gmail.com>
 <CAEf4BzaBfnDL=WpRP-7rYFhocOsCQyFuZaLvM0+k9sv2t_=rVw@mail.gmail.com>
 <CAG=TAF5rYmMXBcxno0pPxVZdcyz=ik-enh03E-V8wupjDS0K5g@mail.gmail.com>
 <CAEf4BzYZ9LkYtmiukToJDw1-V-AFbwfB2jysMU9mM3ie9=qWHw@mail.gmail.com> <CAG=TAF45T4pKew6U2kPNBK0qSAjgoECAX81obmKmFnv0cjE-oA@mail.gmail.com>
In-Reply-To: <CAG=TAF45T4pKew6U2kPNBK0qSAjgoECAX81obmKmFnv0cjE-oA@mail.gmail.com>
From: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Date: Tue, 19 May 2020 16:23:18 -0700
Message-ID: <CAEf4BzZKCh7+2TL8GVetxrOKYCoL0U7jTGsO5CbDExs7Px+bYQ@mail.gmail.com>
Subject: Re: UBSAN: array-index-out-of-bounds in kernel/bpf/arraymap.c:177
To: Qian Cai <cai@lca.pw>
Cc: Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, 
	Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>, Yonghong Song <yhs@fb.com>, 
	Andrii Nakryiko <andriin@fb.com>, John Fastabend <john.fastabend@gmail.com>, 
	KP Singh <kpsingh@chromium.org>, Linux Netdev List <netdev@vger.kernel.org>, bpf <bpf@vger.kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Kees Cook <keescook@chromium.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: andrii.nakryiko@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=vNdj6UMX;       spf=pass
 (google.com: domain of andrii.nakryiko@gmail.com designates
 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
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

On Tue, May 19, 2020 at 1:18 PM Qian Cai <cai@lca.pw> wrote:
>
> On Tue, May 19, 2020 at 3:30 PM Andrii Nakryiko
> <andrii.nakryiko@gmail.com> wrote:
> >
> > On Tue, May 19, 2020 at 8:00 AM Qian Cai <cai@lca.pw> wrote:
> > >
> > > On Mon, May 18, 2020 at 8:25 PM Andrii Nakryiko
> > > <andrii.nakryiko@gmail.com> wrote:
> > > >
> > > > On Mon, May 18, 2020 at 5:09 PM Qian Cai <cai@lca.pw> wrote:
> > > > >
> > > > > On Mon, May 18, 2020 at 7:55 PM Andrii Nakryiko
> > > > > <andrii.nakryiko@gmail.com> wrote:
> > > > > >
> > > > > > On Sun, May 17, 2020 at 7:45 PM Qian Cai <cai@lca.pw> wrote:
> > > > > > >
> > > > > > > With Clang 9.0.1,
> > > > > > >
> > > > > > > return array->value + array->elem_size * (index & array->index_mask);
> > > > > > >
> > > > > > > but array->value is,
> > > > > > >
> > > > > > > char value[0] __aligned(8);
> > > > > >
> > > > > > This, and ptrs and pptrs, should be flexible arrays. But they are in a
> > > > > > union, and unions don't support flexible arrays. Putting each of them
> > > > > > into anonymous struct field also doesn't work:
> > > > > >
> > > > > > /data/users/andriin/linux/include/linux/bpf.h:820:18: error: flexible
> > > > > > array member in a struct with no named members
> > > > > >    struct { void *ptrs[] __aligned(8); };
> > > > > >
> > > > > > So it probably has to stay this way. Is there a way to silence UBSAN
> > > > > > for this particular case?
> > > > >
> > > > > I am not aware of any way to disable a particular function in UBSAN
> > > > > except for the whole file in kernel/bpf/Makefile,
> > > > >
> > > > > UBSAN_SANITIZE_arraymap.o := n
> > > > >
> > > > > If there is no better way to do it, I'll send a patch for it.
> > > >
> > > >
> > > > That's probably going to be too drastic, we still would want to
> > > > validate the rest of arraymap.c code, probably. Not sure, maybe
> > > > someone else has better ideas.
> > >
> > > This works although it might makes sense to create a pair of
> > > ubsan_disable_current()/ubsan_enable_current() for it.
> > >
> > > diff --git a/kernel/bpf/arraymap.c b/kernel/bpf/arraymap.c
> > > index 11584618e861..6415b089725e 100644
> > > --- a/kernel/bpf/arraymap.c
> > > +++ b/kernel/bpf/arraymap.c
> > > @@ -170,11 +170,16 @@ static void *array_map_lookup_elem(struct
> > > bpf_map *map, void *key)
> > >  {
> > >         struct bpf_array *array = container_of(map, struct bpf_array, map);
> > >         u32 index = *(u32 *)key;
> > > +       void *elem;
> > >
> > >         if (unlikely(index >= array->map.max_entries))
> > >                 return NULL;
> > >
> > > -       return array->value + array->elem_size * (index & array->index_mask);
> > > +       current->in_ubsan++;
> > > +       elem = array->value + array->elem_size * (index & array->index_mask);
> > > +       current->in_ubsan--;
> >
> > This is an unnecessary performance hit for silencing what is clearly a
> > false positive. I'm not sure that's the right solution here. It seems
> > like something that's lacking on the tooling side instead. C language
> > doesn't allow to express the intent here using flexible array
> > approach. That doesn't mean that what we are doing here is wrong or
> > undefined.
>
> Oh, so you worry about this ++ and -- hurt the performance? If so, how
> about this?
>
> ubsan_disable_current();
> elem = array->value + array->elem_size * (index & array->index_mask);
> ubsan_enable_current();
>
> #ifdef UBSAN
> ubsan_disable_current()
> {
>       current->in_ubsan++;
> }
> #else
> ubsan_disable_current() {}
> #endif
>
> etc
>
> Production kernel would normally have UBSAN=n, so it is an noop.

That would solve runtime performance hit, yes.

>
> Leaving this false positive unsilenced may also waste many people's
> time over and over again, and increase the noisy level. Especially, it
> seems this is one-off (not seen other parts of kernel doing like this)
> and rather expensive to silence it in the UBSAN or/and compilers.

I agree, it's bad to have this noise. But again, there is nothing
wrong with the way it's used in BPF code base. We'd gladly use
flexible array, if we could. But given we can't, I'd say the proper
solution (in order of my preference) would be:

  - don't trigger false error, if zero-sized array is the member of union;
  - or have some sort of annotation at field declaration site (not a
field access site).

Is that possible?

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAEf4BzZKCh7%2B2TL8GVetxrOKYCoL0U7jTGsO5CbDExs7Px%2BbYQ%40mail.gmail.com.
