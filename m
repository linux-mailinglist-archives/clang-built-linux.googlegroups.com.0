Return-Path: <clang-built-linux+bncBCTYRDEG7MGBBRGG2KDQMGQEZE462NI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13b.google.com (mail-il1-x13b.google.com [IPv6:2607:f8b0:4864:20::13b])
	by mail.lfdr.de (Postfix) with ESMTPS id 18DE83CCB30
	for <lists+clang-built-linux@lfdr.de>; Sun, 18 Jul 2021 23:55:18 +0200 (CEST)
Received: by mail-il1-x13b.google.com with SMTP id g9-20020a92cda90000b029020cc3319a86sf9138322ild.18
        for <lists+clang-built-linux@lfdr.de>; Sun, 18 Jul 2021 14:55:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626645316; cv=pass;
        d=google.com; s=arc-20160816;
        b=AhWs24hdgPyZdjPa5uDn7o2dKkAvscqNyuKhMsBFUqCAK4zh6/yHm5kpcgY2L1ukbp
         IR/Nd+4hlwgUd66MHsBwCejSOl1cIBYj4WTvYLxyjUTCKh9tfekOZuof3IrDhEi/VTMg
         sEasOnm2Lg6J7U73Dird7fnbwwTgU8rx+5PoZN4jzaCFIoGnE9o+Kyg9zj+FKY6V/HF6
         pHNzcZCur5rbzqljdY1Dl4Wt3joZ0qeAHbJULJEkV7WKcslAdH2SB1BaFatJ81MCXwPF
         wxRDcfWcROXHF3s6FRk4vVBPwfuEHMazGr0bmrcF6/dN4nHmrZNe+5j1NEJaclo+Ir1u
         ER7A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature:dkim-signature;
        bh=w9qqsvUf1Z68ssnGfiMDj/TwyegmfwRIO65FcA3ooBA=;
        b=T+JdRnqwTcyG1soYyAHNnf9YqZBY7+HO/eOEsiJ0R1IaznGKpRTrykwiPcIJWEQ/S7
         LABl/89YYkLiuN4HvogSh0rb1bHBHZrgVeF4W7owm8kahZq+EODr21mq2VktT8l0M8mw
         6qTjVHWJUaiK+jkYcrJniJFLTqmKzkfduN6bBH013w218OGFQTopf/MO/TseWyB/oxVE
         vnzvYCVIXncQzz8wtUfUckqjwuOO0jXOkmsQFrabzxZD9MngXj1nOtUn1MlQr/Sj3IDc
         pNAf3pT+yDT/rStCnBwz0qR6GapJfldD6FSZjZkQOfW2aQW/JelSQ3m1oyVnaMl4Zv0/
         JeFA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RxEURirp;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::b32 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=w9qqsvUf1Z68ssnGfiMDj/TwyegmfwRIO65FcA3ooBA=;
        b=B46ZLPIpaSvbMqk0LoMid5bITL9ZrPw3nbzNRc+mm8Wr6g+4jg3x8vpSdKgITyBmZA
         F0zX9r0MpNBUrHTn9v+XGPvdnJt/ieu9lJjhi/i/wh9hIT+2teLywlr2Do52nnJ/gnVb
         aHkZ4NWiB4CtFrF+FKrEv3urUuEPqS4xyLM7nkiXVOMERhMB0X1t/Kdh/W25cp7gqFPc
         37+y7oSc2YIawzvHx90XOH1L2xCKpLANJ1onM7vId6BDGBMkkB2OANPYf6B+x+EmkW4P
         BePceqZVqt8YwYmAwUc9AMzZx9d0F3nShNcNlg4iacAMDhUAVCkltCSUR+KkHb0uyISd
         jVGQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=w9qqsvUf1Z68ssnGfiMDj/TwyegmfwRIO65FcA3ooBA=;
        b=R/rM7HaWkk5BIliPmaVbmfa0Fl9VKq1q6rL0g35qaieKs8bDDJD3V17ki4EPUPrLGO
         SH1hpR/n4L3WvGWQ3lCPldnQcA7lI1dL5XwxFpjPvpUT8OtP5OARhsulx9pYGHJo1d+K
         HXFNOn/MhA7im/3X4outtOprAlF3xDECDsEd2LQ2ZiSKyd/gsuUUYFrYAyifipk8DI16
         crRzVIl9xf7nACu+NoC/JLN2IkS1xQw9vCRF7l21mBfUdzVyTMcUdkwQxAeY8WAS/TD3
         ilWDcucpF+zqWuXCPeDb7HSAm5xdKEmLdg1qiORXiGdvCQ50dDLhOQoUEN8M01ADudFR
         KQeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=w9qqsvUf1Z68ssnGfiMDj/TwyegmfwRIO65FcA3ooBA=;
        b=XxkImCOU9KsD2MTad3ze10udRHTQJY322bhpQU6ZShBSD351b8ANFveCYG96oYxkOs
         JmMyt9tQK91ENoK/yjv/JL9O8JbuTPxjTgQ2pgRGm/icGsyEa1VAyLW8oLCKoGpKOetd
         nkRUJVFMz/tVvQTzJm+ma49q1H1oimlBXi3SBbOXnMfSsY5SfrDbJPAvzWXZS6BYLyWW
         ewJ/4Jsy/SWcSvV1FWQi3493Z0JSTnNIrZBa+a29gd2dWxcf1q/tgrJQSqyy2VTdwte0
         8m/s/HIwTByfnw4zJbnyvnCy21LSeG4qVBrH6b8FHK+vBRZwAbmSLOr8eaJ8fGi0UBmA
         Jztg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530hbLDpPWSodjk+kgOVRjbXGVmfnMre8chgeXVVGzex9US5LJyT
	jNlzpWO/TBRkwixpR40YS98=
X-Google-Smtp-Source: ABdhPJzY1Lw8Rs4xiO+aBwNB8xWbsMxKd3rDHqJD9OxAk1fMbkaE3HlM+w7Ed7xEiiOYs98/BDbFVg==
X-Received: by 2002:a05:6638:3824:: with SMTP id i36mr6738923jav.11.1626645316559;
        Sun, 18 Jul 2021 14:55:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:910b:: with SMTP id a11ls2884060jag.7.gmail; Sun, 18 Jul
 2021 14:55:16 -0700 (PDT)
X-Received: by 2002:a02:8783:: with SMTP id t3mr18495448jai.45.1626645316239;
        Sun, 18 Jul 2021 14:55:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626645316; cv=none;
        d=google.com; s=arc-20160816;
        b=Klg+vU2n+O8vGzx/YE6C+90WXwzMdMPlSDmisO14zBUvg++XRlBZkInCCcFDzQa8S1
         O8ZMsMlGfS3UEGQhuRA51JGJG17P+6P6AMUXf4Qxyq3G6d6Vdqp9ccRq3fWwQWBdjNXg
         JQplezmdf0ZOK587jCRLbAaRRZQAVYPbdDDkwxaHVeIjH0pxLJ+6iYPfPxTiDzoSsqwG
         anZxhWVVGkmwq0trNUPoilPR6cOdSdPpj2CTuu2M15/+yws4voMgdFqe6pnxwIoa6gxS
         YZjeW6ElGg+swLDEIiZB3T3mXbLiKgI7T/ufJPO/x5B5sh/vhNln8v7hTh4GmHLQDttn
         Lp6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=eveSL79fIO473idt3HKry68bIqrgOKyaUGuLZHQDq4o=;
        b=B7Vkl/RAnVuoAfLOUAMQ7hoSDAgxckQc+2BZCCtej77Pj3Edxqv+3y0GTKShHz2xTD
         iYRqlThZpmyqqt9/8/kMqC3KqT8N1TLrRlwB4YHNTTTG9KH1gSzCQB1v2fT1ml/ucxF6
         s/1UHPg8hsallBhEwgyxy9N+qOE+e8Cm9XMxSdGNtd43aMK3kLzWeW2aiROEkAqRIC50
         OPV+XRSQRe1u3JRsySwiYxqVsNo/MP75mZZ9rRyqnXwM3QSo7V5nkuWygimJEOsJe95a
         PHmGd9GDuGScAvR/DgTCBLsraPkSAu7vJExhcCSzgzA5q1Mito4U7js3arHheDkTFa1x
         1ViQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RxEURirp;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::b32 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yb1-xb32.google.com (mail-yb1-xb32.google.com. [2607:f8b0:4864:20::b32])
        by gmr-mx.google.com with ESMTPS id e16si1269226ilm.3.2021.07.18.14.55.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 18 Jul 2021 14:55:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::b32 as permitted sender) client-ip=2607:f8b0:4864:20::b32;
Received: by mail-yb1-xb32.google.com with SMTP id a16so24601812ybt.8
        for <clang-built-linux@googlegroups.com>; Sun, 18 Jul 2021 14:55:16 -0700 (PDT)
X-Received: by 2002:a25:b741:: with SMTP id e1mr28061396ybm.347.1626645315867;
 Sun, 18 Jul 2021 14:55:15 -0700 (PDT)
MIME-Version: 1.0
References: <20210718065039.15627-1-msuchanek@suse.de> <c621c6c6-ad2d-5ce0-3f8c-014daf7cad64@iogearbox.net>
 <20210718193655.GP24916@kitsune.suse.cz> <CAEf4Bza4Fd4vnJLHYKN_VE3=hcLSnxUN-YMN4iv=B5h+y+wCdg@mail.gmail.com>
In-Reply-To: <CAEf4Bza4Fd4vnJLHYKN_VE3=hcLSnxUN-YMN4iv=B5h+y+wCdg@mail.gmail.com>
From: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Date: Sun, 18 Jul 2021 14:55:04 -0700
Message-ID: <CAEf4BzY_QYz6eQY9if5-xu8_pLb-b1sCrd3Q6VXWxCvJ9tFpMA@mail.gmail.com>
Subject: Re: [PATCH] libbpf: Remove from kernel tree.
To: =?UTF-8?Q?Michal_Such=C3=A1nek?= <msuchanek@suse.de>
Cc: Daniel Borkmann <daniel@iogearbox.net>, bpf <bpf@vger.kernel.org>, 
	Alexei Starovoitov <ast@kernel.org>, Andrii Nakryiko <andrii@kernel.org>, Martin KaFai Lau <kafai@fb.com>, 
	Song Liu <songliubraving@fb.com>, Yonghong Song <yhs@fb.com>, 
	John Fastabend <john.fastabend@gmail.com>, KP Singh <kpsingh@kernel.org>, 
	=?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn@kernel.org>, 
	Magnus Karlsson <magnus.karlsson@intel.com>, Jonathan Lemon <jonathan.lemon@gmail.com>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, "David S. Miller" <davem@davemloft.net>, 
	Jakub Kicinski <kuba@kernel.org>, Jesper Dangaard Brouer <hawk@kernel.org>, Nathan Chancellor <nathan@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, open list <linux-kernel@vger.kernel.org>, 
	Networking <netdev@vger.kernel.org>, linux-riscv@lists.infradead.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: andrii.nakryiko@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=RxEURirp;       spf=pass
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

On Sun, Jul 18, 2021 at 2:54 PM Andrii Nakryiko
<andrii.nakryiko@gmail.com> wrote:
>
> On Sun, Jul 18, 2021 at 12:36 PM Michal Such=C3=A1nek <msuchanek@suse.de>=
 wrote:
> >
> > On Sun, Jul 18, 2021 at 09:04:16PM +0200, Daniel Borkmann wrote:
> > > On 7/18/21 8:50 AM, Michal Suchanek wrote:
> > > > libbpf shipped by the kernel is outdated and has problems. Remove i=
t.
> > > >
> > > > Current version of libbpf is available at
> > > >
> > > > https://github.com/libbpf/libbpf
>
> This patch made me day :) libbpf sources in the kernel tree is *the
> source* of libbpf. Quoting Details section ([0]) of libbpf README:

  [0] https://github.com/libbpf/libbpf#details

>
>   Details
>
>   This is a mirror of bpf-next Linux source tree's tools/lib/bpf
> directory plus its supporting header files.
>
>   All the gory details of syncing can be found in scripts/sync-kernel.sh =
script.
>
>   Some header files in this repo (include/linux/*.h) are reduced
> versions of their counterpart files at bpf-next's
> tools/include/linux/*.h to make compilation successful.
>
> > > >
> > > > Link: https://lore.kernel.org/bpf/b07015ebd7bbadb06a95a5105d9f6b4ed=
5817b2f.camel@debian.org/
> > > > Signed-off-by: Michal Suchanek <msuchanek@suse.de>
> > >
> > > NAK, I'm not applying any of this. If there are issues, then fix them=
. If
> >
> > They are fixed in the github version.
> >
> > > you would have checked tools/lib/bpf/ git history, you would have fou=
nd
> > > that libbpf is under active development in the upstream kernel tree a=
nd
> >
> > So is the github version.
>
> See above, Github is a projection of the kernel sources. Yes, Makefile
> here and on Github are different, but that's by necessity. We do ask
> all distros to package libbpf from the Github version, but there are
> kernel projects (bpftool, perf, selftests) using libbpf from the
> kernel sources themselves.
>
> >
> > > you could have spared yourself this patch.
> >
> > You could have spared me a lot of problems if there was only one source
> > for libbpf.
> >
> > Can't you BPF people agree on one place to develop the library?
>
> We can. We did. We even wrote that down. And we do develop libbpf in
> one place, here. Github repo only accepts PRs for Github Makefile and
> various parts of CI process which is Github-specific.
>
> >
> > Thanks
> >
> > Michal

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAEf4BzY_QYz6eQY9if5-xu8_pLb-b1sCrd3Q6VXWxCvJ9tFpMA%40mai=
l.gmail.com.
