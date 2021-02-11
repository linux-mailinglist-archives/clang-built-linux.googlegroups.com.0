Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBDF2SWAQMGQE3SPMXNI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x537.google.com (mail-pg1-x537.google.com [IPv6:2607:f8b0:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id 09FA7319015
	for <lists+clang-built-linux@lfdr.de>; Thu, 11 Feb 2021 17:36:30 +0100 (CET)
Received: by mail-pg1-x537.google.com with SMTP id y14sf4827932pgh.2
        for <lists+clang-built-linux@lfdr.de>; Thu, 11 Feb 2021 08:36:29 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1613061388; cv=pass;
        d=google.com; s=arc-20160816;
        b=cJl+9Wx6m6o7AqT+2WcwFqAGkX0l1Bdz5qBguYAsosgUmbhKTwZ/AFBYIw1rpTkUce
         5thYuCxZRqr5Ny4VOz71TxTTR6YU18pglA2jXItwSBuBNfRxuhaY5lIMTHdAOS6+vvME
         +o2q4NZ5TSFfqfc+mfR37+M8i4x2Ejif8e6DCcuj17iEadTtNE2u7fgh6Ektx/hV/4tw
         RjX57NUbS65fjOeOxHeKGBRToLbiPhyjMfdqeZCckkQ78rNAYR3+pTxgb06wlizBCQh/
         7Wdym7/JNRwSQV6dE9n+8fkVwnLqL/bj9a2Dn4NqR92wxOde0dQGN6IJUUEFass4ZwnA
         r/uw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=4ToIAP4yhl81SrV6iewcxTCGKTqCtJ6iZ/aERzW5Amc=;
        b=eUdIi+Ii4ixqE4rDO5RM8a2Smlic2TXCRwhv8t1i95/GKx6Z/UStZO2Kh2mQNiqL2u
         D//uN797VBbfGpegKw2KJqNAnvcO1JWmTv0AHhjcQW+gsRFVAQEyUWwzUJn+/fczBsPN
         Axtgup7pQT0laZ4D0AVOrTS3d4g1+z4zFC7x+mhUAMXs76j+s0qCihA5S4/wz6OQAXo+
         Pa1wtY9uwGEwO/3LSoThoVzu9hd4sHEP6i/EUxqHmc9KOF/QCA0VhEtf9t6LXfcr/ZcX
         xK662d9Q7ggnGzpbMwQvlMASoPKTbi7KGjqOZ5oHreqM9ZyyneXFGgb4NrwPLiQkQpQE
         QI2w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cjq3KD1h;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::131 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4ToIAP4yhl81SrV6iewcxTCGKTqCtJ6iZ/aERzW5Amc=;
        b=iAwWwdTigw49eHcTJ6d0+B8Z2vq9UBWRLvO8vimosV7ktR0P+LdVfC3HaD7+yAVwV0
         JSyr23+vmVW58L0XzX/cDrDJ80fXtfqEGt/BnU91WU1k5AdzgInJ39HcixdDmhfGM2cb
         gi7/XUfo6xIcMB0eUK2JbKCx948s/3bWJJo8pbBh3SmdKtgxDNc2pGb+lgEHhk74OyMD
         7PuJuMfz2GkMoV+H7p2AyhGs8hX99Rzg5BXr0bxOjUnEKibtxc96aD18149uJ0+3wTTS
         2rx96K8EW5M2xjJdEMtj8kGUM1d3tSDDo847fPWLjUSl6RUe2sG7A49AKjs6npvUlFMp
         7X0A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4ToIAP4yhl81SrV6iewcxTCGKTqCtJ6iZ/aERzW5Amc=;
        b=L/SPoRockkzJ30v/4aD+jvYzaTxXBq0AY8HcMtPh3pMBOZA76Iq9fls0Wk/x2noRX7
         +CFOofHk34rHZMT3/dyyn0sZe0q5DvfJb1nLnuEXrL1T+qNz6mxt8Pankq/WAYSpFQBA
         T6DsBn57Xeo/RlxjdN0xxsdf7MzdieWcuLVOpytvvikqq7ODRBCKNADNHENbPlsXPO42
         torzyMsOHV3IlxJofU1H/Q6N8zi7DiWq0bYi+jIaSONpnLNHlOsnc9s6MZuqztUXt9hH
         aVowcTMe6PqX5Nr95sPl3dI5DyipU1863YmB0M20z/1zzgRmrOlI0JUbCDZhGTSZEwZd
         O3lQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4ToIAP4yhl81SrV6iewcxTCGKTqCtJ6iZ/aERzW5Amc=;
        b=fmw54WSFwlsyBk3liXzjxltFVEjOkkkbECTeHZajuSL9sybgYfyvVFvPE+XztH0Bsd
         yxhDuQlRSYdEuWtgGlJ1w3FsOJIExhK4Mo1InDTL2VZYX3Dl0g8J++Hw1NNhsO42zZki
         5iLGQgL3WZ7yZNB07W92JuFHl4A9PlR4NdaSJFZvRPGflRkVIcfFxAuy/KTN3k1vmvK3
         yI0icrIKHwHu9TbB+vNhIVwd+4eint5NY6DhKqndBUhY3lu1G2NJkZn5WiSEl2PC0kfl
         GfckiiiU5ufoPefoy5NfTPcsv0Hj9mTjAWdF6WC227+IW9PuqxNmV8wsBTQ94OD5GAFa
         CWgQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532kzEUxSRFKfwlO+4w6xoucaHENalZ48Lz8VJE650sR6JG7yYAf
	B5/DA8HZuF70T5dUS/x/OtU=
X-Google-Smtp-Source: ABdhPJzg/wadYawC4wxT/ketoc/nHDuCWDp6d6kgUvTkKbIjFbBZcA7KvBuZDROAcO5MPb+IrjE+eA==
X-Received: by 2002:a62:3852:0:b029:1da:7238:1cb1 with SMTP id f79-20020a6238520000b02901da72381cb1mr8781860pfa.11.1613061388719;
        Thu, 11 Feb 2021 08:36:28 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:4c89:: with SMTP id m9ls2359609pgt.8.gmail; Thu, 11 Feb
 2021 08:36:28 -0800 (PST)
X-Received: by 2002:a63:fb18:: with SMTP id o24mr8716532pgh.55.1613061388096;
        Thu, 11 Feb 2021 08:36:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1613061388; cv=none;
        d=google.com; s=arc-20160816;
        b=iqcgRva+NXuKTu4cTJbJiRUPyjT40BIesjrrhWzQW3II9ar7Jr0awrk6z1U2yWWotS
         Rs8WlVQFp0Fj48qEUK98ZqxOKXejVeQKwT0RVYiwkXxaKqwQNmults5Y3TurNwvcx/t5
         3l25aNeircFCmA9UR19Irr0b8FXe240rs4oVi3OOOKJXoxic+HmVrZtokY/A3/w7UekK
         GXOfGlbddO164x2eJIb8h1Lbqc2YBOsJCOAa4q0jpQ7Xwpm4rbtS9QbAMBuFeZkpCnBt
         /Sn5GbCNm84Yonn8zNPe3Q/QZv3Xufb9Vxz9xbgad0GJ2AiqvSIxHdqa6CpPM7hcJP2F
         Avsw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=T7IfdITc2G6l0UJ7iQZqMpmWkPqCDFFsuFOokca/bRM=;
        b=TGxslgj1IUKRCT2smT089ZO+3/iSxGoioNBT6UiNjZSvlTam8/MNN1x9i/pLPmwrKO
         ouXO/70zZxTKF50nlSljudidoECS2I/imJltRdVDOu/0AguMUlr+68eUp+wRtjd+98Ze
         0s5p3jT68yYUVjZ1MjjvT+iZqlvx543SBg+iABXY3Q55y2HQFepK9BqARK/X2yPl+op/
         T+C8dAOhqmQ9GQLlK6Yu5F6xZKjWBW4kFGWmSbjWm90UpNy3OFVNX4FPZwcKqs19w4Cq
         mDjvtFYMQMDI4XnLz/kdj54/F+y8R/7hoejhvEjIlcWxq+0zNKmAKD0y8OlyAE8vDTsR
         f/jA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cjq3KD1h;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::131 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x131.google.com (mail-il1-x131.google.com. [2607:f8b0:4864:20::131])
        by gmr-mx.google.com with ESMTPS id i23si290250pjl.3.2021.02.11.08.36.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 Feb 2021 08:36:28 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::131 as permitted sender) client-ip=2607:f8b0:4864:20::131;
Received: by mail-il1-x131.google.com with SMTP id g9so5622476ilc.3
        for <clang-built-linux@googlegroups.com>; Thu, 11 Feb 2021 08:36:28 -0800 (PST)
X-Received: by 2002:a05:6e02:4ca:: with SMTP id f10mr2993363ils.112.1613061387730;
 Thu, 11 Feb 2021 08:36:27 -0800 (PST)
MIME-Version: 1.0
References: <YCKB1TF5wz93EIBK@krava> <YCKlrLkTQXc4Cyx7@krava>
 <CAEf4BzaL=qsSyDc8OxeN4pr7+Lvv+de4f+hM5a56LY8EABAk3w@mail.gmail.com>
 <YCMEucGZVPPQuxWw@krava> <CAEf4BzacQrkSMnmeO3sunOs7sfhX1ZoD_Hnk4-cFUK-TpLNqUA@mail.gmail.com>
 <YCPfEzp3ogCBTBaS@krava> <CAEf4BzbzquqsA5=_UqDukScuoGLfDhZiiXs_sgYBuNUvTBuV6w@mail.gmail.com>
 <YCQ+d0CVgIclDwng@krava> <YCVIWzq0quDQm6bn@krava> <CA+icZUXdWHrNh-KoHtX2jC-4yjnMTtA0CjwzsjaXfCUpHgYJtg@mail.gmail.com>
 <YCVWONQEBLfO/i2z@krava>
In-Reply-To: <YCVWONQEBLfO/i2z@krava>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Thu, 11 Feb 2021 17:36:16 +0100
Message-ID: <CA+icZUU5rQ2da_MpKBCngZZR5mHTj5r6Pn_WovMu_C1PXd=1BQ@mail.gmail.com>
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
 header.i=@gmail.com header.s=20161025 header.b=cjq3KD1h;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::131
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

On Thu, Feb 11, 2021 at 5:07 PM Jiri Olsa <jolsa@redhat.com> wrote:
>
> On Thu, Feb 11, 2021 at 04:43:48PM +0100, Sedat Dilek wrote:
>
> SNIP
>
> > > > filled with elf functions start/end values, right?
> > > >
> > > > >                         /*
> > > > >                          * We iterate over sorted array, so we can easily skip
> > > > >                          * not valid item and move following valid field into
> > > > >
> > > > >
> > > > > So the idea is to use address segments and check whether there is a
> > > > > segment that overlaps with a given address by first binary searching
> > > > > for a segment with the largest starting address that is <= addr. And
> > > > > then just confirming that segment does overlap with the requested
> > > > > address.
> > > > >
> > > > > WDYT?
> > >
> > > heya,
> > > with your approach I ended up with change below, it gives me same
> > > results as with the previous change
> > >
> > > I think I'll separate the kmod bool address computation later on,
> > > but I did not want to confuse this change for now
> > >
> >
> > I have applied your diff on top of pahole-v1.20 with Yonghong Son's
> > "btf_encoder: sanitize non-regular int base type" applied.
> > This is on x86-64 with LLVM-12, so I am not directly affected.
> > If it is out of interest I can offer vmlinux (or .*btf* files) w/ and
> > w/o your diff.
>
> if you could run your tests/workloads and check the new change does not
> break your stuff, that'd be great
>
> we need soem testsuite ;-) I have some stupid test script which runs over
> few vmlinux binaries and check the diff in BTF data.. problem is that these
> vmlinux binaries are ~300M each, so it's not great for sharing
>
> also I was checking if we could use BPF_BTF_LOAD syscall and load BTF in
> kernel and back at the end of pahole processing to check it's valid ;-)
>

Just finished a new build.

What I did:

cd /path/to/linux/git
rm -v .*btf* vmlinux*
<re-run my build-script with modified pahole>

I collected some commands in CBL issue #1297.

$ /usr/sbin/bpftool btf dump file vmlinux | rg 'vfs_truncate|bpf_d_path'
[22259] TYPEDEF 'btf_bpf_d_path' type_id=22260
[29970] FUNC 'vfs_truncate' type_id=29969 linkage=static

Tests?

$MAKE $MAKE_OPTS -C tools/testing/selftests/bpf/

^^^ ???

- Sedat -

[1] https://github.com/ClangBuiltLinux/linux/issues/1297

> thanks,
> jirka
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUU5rQ2da_MpKBCngZZR5mHTj5r6Pn_WovMu_C1PXd%3D1BQ%40mail.gmail.com.
