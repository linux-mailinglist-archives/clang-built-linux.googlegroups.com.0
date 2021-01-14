Return-Path: <clang-built-linux+bncBDYJPJO25UGBBQMAQOAAMGQE3GTIL5A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53e.google.com (mail-pg1-x53e.google.com [IPv6:2607:f8b0:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E5E62F6DA7
	for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 23:05:55 +0100 (CET)
Received: by mail-pg1-x53e.google.com with SMTP id k21sf4674995pgh.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 14:05:54 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610661953; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZIxg+5vyYbDbW4bMcRAHn6A8bKIB8XZgGUde8smtZsAtsUBXJBx4xqiI4AJCfw56Cg
         ydrzzci0CZATi5bWxSIGylWvkJapA0zihkvdTlI9Vw3Ds3l8RoroQNxroRDLseh3gkpU
         wrouSyqtBVkJ4mRrDq2CKawJUWvZUKN7yg3/9aplAvibZ3sPowqzwJM/oCBBJGVEu1Ak
         Dr+S0ISOWZGB+dBduvclrZ7sj7K4Ugmh+66MR3jgpkMhtA/FwbLkrjacMSt7imTwxGMW
         HObecWaVt+wPdDAT8vFmKAsHvHv+pQ077ZjtRu6Jmjli9/ycZTrsEY/97q3DyX4T4mHb
         E2cQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=3yziWAOydYmZLXJi9YnwMwJdS0GlWfPT5ryiK80qz7s=;
        b=cczfFPkoLle0wRIplcRBzqSAwoS0NOjw5KlZ5Viu7Zr4js1RIG4mQ31/0gZtcIPsU7
         dBtO7ppeQI9iDXxN0Pz03msznxcOUxkEtMkEGGZhsJ4osrTe4Y+znUA2WcvbmyQuYUTg
         5YMhtwL7v9gDW+rxXDfZC53IDclFS/Bhs9N0Ov/lak5561Fc9FHPjaB7kJjFq31+em4A
         oQ9qfw7TRQFYxVoGvJ+/AGaw2p45vBmUz8fwfmIY/YxTQ14NxL/4ubOxRwA0bO6FEYoh
         q22dSB5KHp0X9g0N49VGM8f76yZmH9V0kTJ5vECXNmPVr278FdEcuTyQCO+0LcmciXZ1
         bv3w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Rd9jHYrS;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1032 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3yziWAOydYmZLXJi9YnwMwJdS0GlWfPT5ryiK80qz7s=;
        b=CFZ6OznuwE9cMYFugMIUwkGQFZnFfhxG2z0gE2XFf7DHRMMhDQwIGQiMo5ilW24DXt
         M4NHU1/arqcmLdgcKZS8YS9x/mJChFM+QPk3SP5e8eCemmTtYhc76WhP80KOB3hNt4AT
         dMePqtRZuFHfB+qEospP56Psk9rjg0zm1GvdkwK3vNWNmdqU8Kl0lkpFWpX8x4mwXZjS
         yuT+POL/bL+c+kcjEpLfqsgE4b/ocr8pexNKNztZQo6X3obCZmHGlqbca2Js4ipOmSMk
         EDq39h1h9NkoKjKckrFwVjRTKdjdsWW4BhA2IFaw8qMeRDSevBjECVZEFeJTbXcqPiSf
         NRfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3yziWAOydYmZLXJi9YnwMwJdS0GlWfPT5ryiK80qz7s=;
        b=lOnDBvM775lXGuzaFWSnISYeVKIiNRAnM3T79w08EnZfSB53U8qC2YD2HQ+vOH8zdb
         8jdqsg8KYRPXnTtN40cC7EcUDwGa1YXBjehQLZj2UeyT40n4dG3ELJnBEgN2tA5GYOdM
         yun28ZYOwNvd9/gJjGIHqMkcc3iAaa+7KRY7OX+jjsQi6t9jGyrWjw3q9w99PYGxbQQW
         y/zNE8Q9JTguFjOebhkkPFIHxh8IYAMyh8OdvVk1xKDp+9/KjcpGfu4mG3rS1BGGGsxf
         JzCitbXrSlJdNruJXWJVBZkMVavH776GDh032gYOhQ05kXh+UHZpQtH+GFwj8bRC6YUK
         9/ww==
X-Gm-Message-State: AOAM5332TqQ+hWUG48yuby/INtzziB0kmttj8mwGZ0k99oa4F7lmxtAz
	RU0MLKpgniToSVG5lBaxxnA=
X-Google-Smtp-Source: ABdhPJzfbE2k3w7RH/EcluZj656itHEhT+5g73MgQObVAZtRMiEjFhRKePwTzQ4w6lQl8f2HXkCmhA==
X-Received: by 2002:aa7:8b51:0:b029:1ae:687f:d39b with SMTP id i17-20020aa78b510000b02901ae687fd39bmr9352363pfd.50.1610661953440;
        Thu, 14 Jan 2021 14:05:53 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:a416:: with SMTP id p22ls3307443plq.3.gmail; Thu, 14
 Jan 2021 14:05:52 -0800 (PST)
X-Received: by 2002:a17:90a:3d0b:: with SMTP id h11mr6957398pjc.188.1610661952766;
        Thu, 14 Jan 2021 14:05:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610661952; cv=none;
        d=google.com; s=arc-20160816;
        b=y1yzrOS4tp+JVj4IBvcynT3c9/AzjYIvIBBroax5GxVGxupKhZxX53sZvvKzCJzxD1
         HxsTBue884PvyCGcIPC5iBkg5vbHRYIJcU7gg0Dw6UQY4b7cN3fF8Xa0D1efNefk4zzh
         On2GUaEmn7d1+JM+pl3a5TeS30ZgbjU5otDjrSj3VLR3Vh8Op9fTy0+i9fO8+DnZDxyV
         8feebpZwJBzQyI7euk+/OpOCXOvZv9DXOv4q32PNSDUwNtOCb3S/MDqdjee7YjxXKIuU
         0G/EmxpEbponibJdQCD74TDnPh1mNswtUZ1ta4TIeaGEz3xQI05AcnvAA/K/6DlzbB1D
         B8Vw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=wUgYvY8oKdE3vIqZqcGoJhcy0h+YbWsnar8Vy45H+Zw=;
        b=dTYc/kwQ5Fxd1rCZIo2jb1pA20xjk5AWQlrjlLrpgpOhQXbVG/X08DHmOzgyuLrils
         hybMjb0orQRvm/6ZmU22634/speYUtNMCNyei4ZIl8xQYQEp5UgpE2Q/AGf1aLxisIvD
         xErRWxu73C+JAI88+jOe8KMqAMZGAMvqNFPQwZFo8RiLcAX1fOgaXud9hCvjasRmz3V5
         L/mOTjBTjOJt+ASwHhOB7GmXkC4NXB8ffk22xS0+Aln2WxYw+W3mRh9IqmIBOuJPZPKM
         FUBwlVSWxJC6JdR0egtZvK4vM3VzL6Gn5ACSwgzoAWxZvJ5aSYtiTqI7ojhi5m4zyei6
         sDdw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Rd9jHYrS;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1032 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1032.google.com (mail-pj1-x1032.google.com. [2607:f8b0:4864:20::1032])
        by gmr-mx.google.com with ESMTPS id o14si553960pjt.0.2021.01.14.14.05.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Jan 2021 14:05:52 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1032 as permitted sender) client-ip=2607:f8b0:4864:20::1032;
Received: by mail-pj1-x1032.google.com with SMTP id y12so3898520pji.1
        for <clang-built-linux@googlegroups.com>; Thu, 14 Jan 2021 14:05:52 -0800 (PST)
X-Received: by 2002:a17:902:26a:b029:da:af47:77c7 with SMTP id
 97-20020a170902026ab02900daaf4777c7mr9613780plc.10.1610661952331; Thu, 14 Jan
 2021 14:05:52 -0800 (PST)
MIME-Version: 1.0
References: <20201204011129.2493105-1-ndesaulniers@google.com>
 <20201204011129.2493105-3-ndesaulniers@google.com> <CA+icZUVa5rNpXxS7pRsmj-Ys4YpwCxiPKfjc0Cqtg=1GDYR8-w@mail.gmail.com>
 <CA+icZUW6h4EkOYtEtYy=kUGnyA4RxKKMuX-20p96r9RsFV4LdQ@mail.gmail.com>
 <CABtf2+RdH0dh3NyARWSOzig8euHK33h+0jL1zsey9V1HjjzB9w@mail.gmail.com>
 <CA+icZUUtAVBvpU8M0PONnNSiOATgeL9Ym24nYUcRPoWhsQj8Ug@mail.gmail.com>
 <CAKwvOd=+g88AEDO9JRrV-gwggsqx5p-Ckiqon3=XLcx8L-XaKg@mail.gmail.com>
 <CAKwvOdnSx+8snm+q=eNMT4A-VFFnwPYxM=uunRkXdzX-AG4s0A@mail.gmail.com>
 <5707cd3c-03f2-a806-c087-075d4f207bee@fb.com> <CA+icZUXuzJ4SL=AwTaVq_-tCPnSSrF+w_P8gEKYnT56Ln0Zoew@mail.gmail.com>
 <CA+icZUXQ5bNX0eX7jEhgTMawdctZ4vkmYoRKDgxEMV5ZKp8YaQ@mail.gmail.com>
In-Reply-To: <CA+icZUXQ5bNX0eX7jEhgTMawdctZ4vkmYoRKDgxEMV5ZKp8YaQ@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 14 Jan 2021 14:05:41 -0800
Message-ID: <CAKwvOdn98zvjGaEy0O7uCb9AUZdZANCeSYpdti3U3uj4+V4dyQ@mail.gmail.com>
Subject: Re: [PATCH v3 0/2] Kbuild: DWARF v5 support
To: Sedat Dilek <sedat.dilek@gmail.com>
Cc: Yonghong Song <yhs@fb.com>, Jiri Olsa <jolsa@kernel.org>, Andrii Nakryiko <andrii@kernel.org>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, Caroline Tice <cmtice@google.com>, 
	Arvind Sankar <nivedita@alum.mit.edu>, Jakub Jelinek <jakub@redhat.com>, 
	Fangrui Song <maskray@google.com>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, Nick Clifton <nickc@redhat.com>, 
	bpf <bpf@vger.kernel.org>, Masahiro Yamada <masahiroy@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Rd9jHYrS;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1032
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Thu, Jan 14, 2021 at 1:52 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
>
> Today, I have observed and reported (see [1]) bpf/btf/pahole issues
> with Clang v12 (from apt.llvm.org) and DWARF-4 ("four").
> Cannot speak for other compilers and its version.

If these are not specific to DWARF5, then it sounds like
CONFIG_DEBUG_INFO_DWARF4 should also be marked as `depends on
!DEBUG_INFO_BTF`? (or !BTF && CC=clang)

>
> - Sedat -
>
> [1] https://lore.kernel.org/bpf/CA+icZUWb3OyaSQAso8LhsRifZnpxAfDtuRwgB786qEJ3GQ+kRw@mail.gmail.com/T/#m6d05cc6c634e9cee89060b2522abc78c3705ea4c
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdn98zvjGaEy0O7uCb9AUZdZANCeSYpdti3U3uj4%2BV4dyQ%40mail.gmail.com.
