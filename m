Return-Path: <clang-built-linux+bncBCTYRDEG7MGBB35IUGCQMGQEWBV5JRI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd38.google.com (mail-io1-xd38.google.com [IPv6:2607:f8b0:4864:20::d38])
	by mail.lfdr.de (Postfix) with ESMTPS id BB36D38D2A5
	for <lists+clang-built-linux@lfdr.de>; Sat, 22 May 2021 02:46:40 +0200 (CEST)
Received: by mail-io1-xd38.google.com with SMTP id a24-20020a5d95580000b029044cbcdddd23sf12870686ios.13
        for <lists+clang-built-linux@lfdr.de>; Fri, 21 May 2021 17:46:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621644399; cv=pass;
        d=google.com; s=arc-20160816;
        b=IeMFd5XhkL9bo49DpAteJp6C0A1CPwcA+ojLdH4e7YAoTJG25k7LXvDeEOURHzEuO5
         NBoKerrtsmPHX40y55dApdPRz/jXxjQgUdjJ+RFTIZojUmDo0O0h1zNW/Ot+KCptykFr
         jkHUfUedQJ/cvYwdjqY4Omfa103tvI3D7ByoMTDueD+mk3s9Umkwe5JZfKP2wRyZK4be
         M1ZOzpE6GG49wA/JVnLcL189FPTk/p3qEwcZdkuBmSnf+pTqnh4D7RktFwpEiixdm7tF
         G12uUypPoa6bfnb5XumhRZVKPqBlhckmzOFVrrRPtGyCZ/zxxR9EPiusOTE/u1DWKj2y
         wm1g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature:dkim-signature;
        bh=oAz7TqSrOXo0PVM8NtwLtW2+sN2iIHjCWCuafgb4+eg=;
        b=Bko+zYoyLwmj9xrbRoZDOCdlJyI8BLDJDqvOLjr9y0/nnicsKBNr9edk5kNo30OvgQ
         bEcryb31OVvl+IW/ByPPskiDkvF2nQ8f8m/01zg6/xXy8nD7aSWOY4M41RToRFTTIeDl
         jJtDEdSig1+1IwMBfITFCDDru9QuC2rF/2Z0UDL9WfhsT6bcY47jtCil3upuk3sj3mac
         xxzeuvn0vL244IgXdprEDau6Q1A5KhQYIVQc4ZBfH9JcgpoRvf1sEXg4xo6ZXZoB9oKP
         Q/PJbszHYrcDGxy04SnrFura5moj9V+7wkTrPjfnbP1r3z316054tcgTByaiwyudH7Nu
         l/2w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Z7+ykzF+;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::b32 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=oAz7TqSrOXo0PVM8NtwLtW2+sN2iIHjCWCuafgb4+eg=;
        b=X2VQ8ectBAORyasu9gDwMwtRjecUJ+aEXN059wtF1sJ7tNsUtvvgRiW+lNa2zaNt3a
         zbcVXjljqc1CfCZ4InoSny//DqpIZzP8aJHph7b1eXnsAPCAS//BHEA27/mVD2Cb1J2o
         WoBse3B5qBwYyUog/OOfDjyKQ8ePATKYrWg0OxYlOEiLqqV2LqdhHCsJf56hctxTPM2Q
         T9X29rFd6HFchmgLW9cJODx+gsM7VFgywSSm8RtilRtldzGrrI8lE47kCQvaIJzsw4jH
         lXJ6DS7qv3H8rbF//c7NfuT3GB0uCXyfruvEjvJreXhd5rlxPao9B/f24ksF+FQKiDc3
         a0nw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=oAz7TqSrOXo0PVM8NtwLtW2+sN2iIHjCWCuafgb4+eg=;
        b=tmezo76Wb2vBziEJA/BAuvjia2Xh3fqp78uJWehAg8kDXdLpdIEuE4ZSHxDVxLe8VA
         6AriLC7WhRDSTzxmVSN6C5tcIovnhJATTgwIH0hrwlHbkRZn9hNHDD+3fwzqGlkkYhtA
         hrK0XX6tdF77bkZqhhJ2zVkq8DU39QR/rNELmAKvwq7XGDGBxZqnKKLDiamBOCuVwLiv
         lZgILHZodksrB2DoNRTVwzVhZ0bD4BJF6XEhPhnYCRETLeUjLtKTRgDn8SZzDEAJi6Qv
         uhNCFx7AIf8uvaT44TzeLrZ87tjwcjaLItpUH8OV0+DO05KLXSQDD4bE/x6fPNWKk/m5
         EehQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=oAz7TqSrOXo0PVM8NtwLtW2+sN2iIHjCWCuafgb4+eg=;
        b=bKQACvjqYQxWQvIqNh1tczb0R0egISEvUzTMfXRDKzpC0dMhPNLfi3c2xnBi+sKyMk
         OmpWZjPaPp8Byt5oSg+QoYA6JH6qqD4jRlAOq8A7fXv8lVtWUzItASJNigsvb7/cIm7D
         7DuiVA9Um18xr/LLcixleAJ13uwhBs6y/idXieUokM0+XtyqQKjhPHizXbsp0nafr5Ph
         gTYLonO2L7w/nmMYayjXws+eD0N7pnnIEB6VvLfA1GVYYf3+Fhen7llNrVbwyWBz80GF
         GMm5FCnsnsfAxdmCy4TQnbqrjxy8EorFwpI5R0p3IrBX2Hk1sIZUib6AJXE21inboxIG
         53Ug==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530TjpIeipD2HSMqzQ+YeKr/62VF2pNR+UVbO83FDoHBgFQ8vYb/
	ujVSjvPdoia1feEDwZ9TjcY=
X-Google-Smtp-Source: ABdhPJxjG83piFEIuA9li5k/eawZXjasjl1zgZAE/f5B790asgmfBJlTKkblIcMAsjaDtAh8Bk4LXA==
X-Received: by 2002:a05:6638:10f:: with SMTP id x15mr8292017jao.119.1621644399349;
        Fri, 21 May 2021 17:46:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:9f59:: with SMTP id u25ls1276586iot.10.gmail; Fri, 21
 May 2021 17:46:39 -0700 (PDT)
X-Received: by 2002:a5d:9343:: with SMTP id i3mr1908477ioo.77.1621644398906;
        Fri, 21 May 2021 17:46:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621644398; cv=none;
        d=google.com; s=arc-20160816;
        b=sB6PNfWgbNnpzEonqYNcpgLlSt9ikjrLbeJk6WNf2EUQeZk/9WlApT+wKDLn3GYiSW
         S/DMVBLaTt/SdgFTIek0v2PgFDrHpASE8uU5VzeGV8m4fYoGx8xXHSQ7MXIiqqx2ldOn
         Dkb0eXdPfLIcsCPUt0D0ImGHwzawsAXzlfU2uONqfFe47JR5UTxJxDEQ+bZoKlI/qrIl
         RsHE8oIt5u/cZNN+yqwO1RIH5uZJ7MEmNRBQQ+QJFN18oyM32JoLxI8O11yAzvv9ycDC
         eL2EyOTt8Thtxi+gBzG6nhQtaLWaU40Rag/CZqe3zzT2uYVooY6rTPuhO1zYjDC2MWew
         3rLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=RdygxSbSqsWz9BfeMNSc2FteZY17xkWEnp8K+VZHat0=;
        b=qp2lK2KvUmYfZTbH36Ruay4xnaQcA7CzBaXUfe1Lgx5D0qWHEXwB2jYBj8TUdZSe5T
         C697Qyeo+64EfxfXJOAofQkA6e3f+4myf5sQ/qvVCnLHivq/R5LJUu1a3Eopkc6jAsPA
         M1HWW8Ou4LC9j6NGDvA6vW6symrZkC0zByIWJmlBr2z5HJErWQ9QKZxJ5WbW+1M6jwn/
         E2308/OT24lZzq5j3TVphL3bhhJjhFSfja4s+V9t4e5KSJIxlFgqXucGCx9KOUzSd/hY
         vPuszXZtT5ufVvLHMQMNqIrgTMgVN57F7XyfzJigCdVw2+fBxOwQK/w25AUDNjs/9ZCS
         aDqQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Z7+ykzF+;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::b32 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yb1-xb32.google.com (mail-yb1-xb32.google.com. [2607:f8b0:4864:20::b32])
        by gmr-mx.google.com with ESMTPS id r20si1119715ilj.3.2021.05.21.17.46.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 May 2021 17:46:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::b32 as permitted sender) client-ip=2607:f8b0:4864:20::b32;
Received: by mail-yb1-xb32.google.com with SMTP id z38so232324ybh.5
        for <clang-built-linux@googlegroups.com>; Fri, 21 May 2021 17:46:38 -0700 (PDT)
X-Received: by 2002:a5b:f05:: with SMTP id x5mr18321502ybr.425.1621644398645;
 Fri, 21 May 2021 17:46:38 -0700 (PDT)
MIME-Version: 1.0
References: <20210521162041.GH8544@kitsune.suse.cz>
In-Reply-To: <20210521162041.GH8544@kitsune.suse.cz>
From: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Date: Fri, 21 May 2021 17:46:27 -0700
Message-ID: <CAEf4BzbgJPgVmdS32nnzd8mBj3L=mib7D8JyP09Gq4bGdYpTyg@mail.gmail.com>
Subject: Re: BTF: build failure on 32bit on linux-next
To: =?UTF-8?Q?Michal_Such=C3=A1nek?= <msuchanek@suse.de>
Cc: Networking <netdev@vger.kernel.org>, Alexei Starovoitov <ast@kernel.org>, 
	Daniel Borkmann <daniel@iogearbox.net>, Andrii Nakryiko <andrii@kernel.org>, 
	Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>, Yonghong Song <yhs@fb.com>, 
	John Fastabend <john.fastabend@gmail.com>, KP Singh <kpsingh@kernel.org>, 
	Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	open list <linux-kernel@vger.kernel.org>, bpf <bpf@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: andrii.nakryiko@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Z7+ykzF+;       spf=pass
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

On Fri, May 21, 2021 at 9:20 AM Michal Such=C3=A1nek <msuchanek@suse.de> wr=
ote:
>
> Hello,
>
> looks like the TODO prints added in 67234743736a6 are not 32bit clean.
>
> Do you plan to implement this functionality or should they be fixed?

They should be fixed regardless. Can you please re-submit as a proper
patch to bpf@vger.kernel.org with [PATCH bpf-next] subj prefix?

>
> Thanks
>
> Michal
>
> diff --git a/tools/lib/bpf/libbpf.c b/tools/lib/bpf/libbpf.c
> index 69cd1a835ebd..70a26af8d01f 100644
> --- a/tools/lib/bpf/libbpf.c
> +++ b/tools/lib/bpf/libbpf.c
> @@ -4565,7 +4565,7 @@ static int init_map_slots(struct bpf_object *obj, s=
truct bpf_map *map)
>                 targ_map =3D map->init_slots[i];
>                 fd =3D bpf_map__fd(targ_map);
>                 if (obj->gen_loader) {
> -                       pr_warn("// TODO map_update_elem: idx %ld key %d =
value=3D=3Dmap_idx %ld\n",
> +                       pr_warn("// TODO map_update_elem: idx %td key %d =
value=3D=3Dmap_idx %td\n",
>                                 map - obj->maps, i, targ_map - obj->maps)=
;
>                         return -ENOTSUP;
>                 } else {
> @@ -6189,7 +6189,7 @@ static int bpf_core_apply_relo(struct bpf_program *=
prog,
>                 return -EINVAL;
>
>         if (prog->obj->gen_loader) {
> -               pr_warn("// TODO core_relo: prog %ld insn[%d] %s %s kind =
%d\n",
> +               pr_warn("// TODO core_relo: prog %td insn[%d] %s %s kind =
%d\n",
>                         prog - prog->obj->programs, relo->insn_off / 8,
>                         local_name, spec_str, relo->kind);
>                 return -ENOTSUP;

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAEf4BzbgJPgVmdS32nnzd8mBj3L%3Dmib7D8JyP09Gq4bGdYpTyg%40m=
ail.gmail.com.
