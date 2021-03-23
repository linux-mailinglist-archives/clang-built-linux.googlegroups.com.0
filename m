Return-Path: <clang-built-linux+bncBCV5TUXXRUIBBIUP5GBAMGQEAAACOAY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23f.google.com (mail-lj1-x23f.google.com [IPv6:2a00:1450:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id A772E34695A
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Mar 2021 20:55:15 +0100 (CET)
Received: by mail-lj1-x23f.google.com with SMTP id j21sf1959742ljg.18
        for <lists+clang-built-linux@lfdr.de>; Tue, 23 Mar 2021 12:55:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616529315; cv=pass;
        d=google.com; s=arc-20160816;
        b=TeXS1fpqXh9VdAHNpUjuc5NdoUWiM58flF7GWReA7ltgeYFtEejbuXWkY/z0fdD85h
         qfHc7WoJBWXW2FOdU2T0R6PD2YkuHpc6J28WJJ3+x3uTDhMFRBcacEx9aEf4lFsg2H44
         3d67Mnc2Z1iN0eAkE+x3zlB1QvUJYRN0gQ8ud/KF2ILY4jZpsQTeNrs/03aoOqXZ1nlO
         GP1ahwhVPzcQlw7zzo9DlvjmMn1vK3BtqSb4CrBjFzfsNCJPgS8a5dKeamo5wWSLIRvD
         8l5tIYqSFHPkAzfpdb+rKCtIE07VpTrvhXCNLyB9aCd9f4QY2TgZMAgwt9ld+n+VXFcz
         1cyQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=GhmoCA2S+s3dD1IwLZaHE7ykiuY31KzWVOYKm+wY0M8=;
        b=BIg+W9Cx2IDtWW4bpCq7nvLA+uS5++5GHaDPXRwjOibS8liWxSYX5smLkitgVU+LKc
         vsFH8e4OXibMKPBUdouMLKzYik/zx/E2etdpcFa1bG42s3bZlTlDzovlXfsKSg6Hj445
         +gymFHQqf8juIGYQe2KIbvhry/f5ZqC6S8dV5fT4SaSt/IFHtmXljnz//9x54BdgBgmt
         y6U5GOOQAgWnuu/NUQeaaGG+j1toBGcxtknW475dDwfLOBm0AS3fjzEgfgrYT5ZNPJuP
         eWGQoKx5tKwfQuQZt+PuniICfJ7wEXu95CAoaL2dtWJKv1yNCK6msUj9vsbDb6RwmQ5q
         15WQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=N8+8+VaD;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GhmoCA2S+s3dD1IwLZaHE7ykiuY31KzWVOYKm+wY0M8=;
        b=MU5jMXiYK6j5f7yA/ovqmJ/TudMKP5uEzJz5xOrAAQdOGUvKxKvOlz4UwQhz6+HhEb
         If7KtBJXbZR/3kYqdAZ5AwRD5zVjt/kL4DVEIicYEULqjpgOOFFR68es9r0x1PXUgEyF
         3X1KNefM7ufbOXK60pa7m9ppE/+aW99LMvZSR0K3Mv6X9R7FE+NLGF/JHUf+uPFbZ+iz
         w7wMc/F/6IzTiHLjvB9A0WdDTx6pvzF+SCsdsRyhkNL7iwAQBOV+3d2lvaCx4STCiny9
         nLH8lFTN8cZvA2wZitWKOGLLusKMTmR9os5NkzoTBUYuUFn5SL260PNVYI5J7U63Xgob
         FSlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GhmoCA2S+s3dD1IwLZaHE7ykiuY31KzWVOYKm+wY0M8=;
        b=BDQeeETYXvDSJJiM1aoEWfx/Ne/FVAzgoPCSkEtWkhMzIgxZgCbmz78otoAYty3fD6
         rq2hwfqkvQj5Avlx6AEarnx0t6Pqhd11jNJZqzu5e91eN+0EpAEuhZATzX4HDoJReUsw
         YdWHLsJBOK81ehQIcpcmxc6biv9qjZzEIVP44/mNyjKE/w8KfvQDeHVung0NBW4NBEuq
         GGPoq5mBfLxrN7xXHnEuAr836PfLnV33kzSRM9qYSerj/EOyDMIfafWlSf3vRtmgOqJq
         Wo9MDUpvIPwTQT9OUznlUky+NA+EjQ73/nLsJG+w/eICNt/hRNWkWFHDpsNfvYVLS3Oy
         YPlQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532Wq+4emJQZYy0kR4DUAhE8+TdnL/rAdTOfuP3fCBoa1i/K3XPC
	Zcd7aWqqoPXF2BtLSMQMADU=
X-Google-Smtp-Source: ABdhPJw5qfmaxn7eqY/EDKPibrRnw38fVTMMcsghEXTfKtC75xHUUN5OoHb77IblIREGibXL58vy3w==
X-Received: by 2002:a2e:9101:: with SMTP id m1mr4178332ljg.378.1616529315279;
        Tue, 23 Mar 2021 12:55:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:651c:2050:: with SMTP id t16ls1190ljo.4.gmail; Tue, 23
 Mar 2021 12:55:14 -0700 (PDT)
X-Received: by 2002:a2e:7403:: with SMTP id p3mr4083744ljc.239.1616529314165;
        Tue, 23 Mar 2021 12:55:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616529314; cv=none;
        d=google.com; s=arc-20160816;
        b=uS+kFFdCRybkKioxxoFZ+VYuvyhiK3G5Bi3Tg2JQJLnI0adY0dN9CEpXJZwbMt82YB
         qMB9RDywfmrkORvnAqCDlREk0MUbkAKCoabAjzwjxnE/HVcnNOIhlA++OOIiIxeSvoxz
         yzvioicRBsnlJZD3or/sDkRgqU1sHZY5GiT5jzT+t4xtpUJlI4bomTvDWPiclo9KMjLL
         QY62QJ6ukFgNsXXcw/a5RxT5ZT7CmO5VUd1n3GC8WsjgWTwVDV/eO55Z9+ENYNZw8LFn
         3IgquSDYWwXND0XSwGBcFzcg4pJbpDnv5JKPlOBp4nZryWg0AR4Qd+w2XuPMZhXI9e57
         kT2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=Upb8jbPwMQIHuck9u8dih3xws9+N9Y2t9/p2ByFzkIQ=;
        b=EazV1Bj8H02MEdMN1TtXjwmU1olBdsG0tka4ZlA2AELqczehIRikh2/GhfW/FWmu76
         /r5Q+vjgcokQyZrWN3hRbvKZHV42HR+pyfcBPKf3rlFWkt0unHLEyHFuugpyhKNu1KOf
         Jkd5HN7FeGOeNOLi6u5iTV33mmpgJ+zTWEejiilzh3cHaaSiQeMJ7aYj6/jiYxypedky
         O3rzdPbzfSc7xruwB2/adBHm4VIs0uuajJZMSp3XRc0JT6o+/q+Rwyj3xMYzxr5Eb91e
         cNHieWSBAq0EVezB8cypw+/4Db9enMsYEpWx+bBd43T2hkzmqlGaKt49U5mIp3VwTCXC
         qOEw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=N8+8+VaD;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id v26si784970lfo.2.2021.03.23.12.55.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Mar 2021 12:55:14 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=worktop.programming.kicks-ass.net)
	by casper.infradead.org with esmtpsa (Exim 4.94 #2 (Red Hat Linux))
	id 1lOn6D-00AU6t-OS; Tue, 23 Mar 2021 19:54:05 +0000
Received: by worktop.programming.kicks-ass.net (Postfix, from userid 1000)
	id E19359864FF; Tue, 23 Mar 2021 20:53:58 +0100 (CET)
Date: Tue, 23 Mar 2021 20:53:58 +0100
From: Peter Zijlstra <peterz@infradead.org>
To: Andrew Cooper <andrew.cooper3@citrix.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	linux-toolchains@vger.kernel.org,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	"Jose E. Marchesi" <jemarch@gnu.org>,
	Kees Cook <keescook@chromium.org>,
	Florian Weimer <fweimer@redhat.com>,
	Christian Brauner <christian.brauner@canonical.com>,
	nick.alcock@oracle.com,
	Segher Boessenkool <segher@kernel.crashing.org>,
	Josh Poimboeuf <jpoimboe@redhat.com>, Will Deacon <will@kernel.org>
Subject: Re: Plumbers CF MCs
Message-ID: <20210323195358.GB4746@worktop.programming.kicks-ass.net>
References: <CAKwvOdndc=ej=40WktFz0t083pZJcdX1tipuWoTvAw=JC8b3Aw@mail.gmail.com>
 <YFmoPpb5w4q1dWXz@hirez.programming.kicks-ass.net>
 <a60f83d2-75da-d147-ae92-47a5b474e162@citrix.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <a60f83d2-75da-d147-ae92-47a5b474e162@citrix.com>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=casper.20170209 header.b=N8+8+VaD;
       spf=pass (google.com: best guess record for domain of
 peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
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

On Tue, Mar 23, 2021 at 07:29:01PM +0000, Andrew Cooper wrote:
> On 23/03/2021 08:35, Peter Zijlstra wrote:
> > There also is talk about straight line speculation mitigations. for x86
> > we should probably emit an INT3 after every JMP and RET. Although this
> > might not be controversial and be sorted by the time Plumbers happens.
>=20
> I guess this one is levied at me.
>=20
> Hopefully it isn't controversial in any way.=C2=A0 I have just had suffic=
ient
> tuits to get around to making an x86 straight line speculation feature
> request to the GCC and Clang communities yet.

Yep, just making sure it doesn't get lost.

> For the compiler folk here, the tl;dr is that indirect CALL/JMP (i.e.
> function pointers, jump tables) and RET instructions may speculatively
> execute the next sequential instruction(s) before taking the control
> flow change into account.=C2=A0

So JMP and RET can trivially have INT3 following in such a way that that
instruction is never in the actual execution path. This is obviously not
possible for CALL.

For CALL we can follow with LFENCE (hurts), or if we can get a limit
on how many instructions deep the speculation gap is, a bunch of NOPs.
Or possibly nothing at all.

As such it might make sense to have these two cases separated out.

Another utterly disguisting option is to align all CALL instructions on
8 bytes and have it followed by 3 INT3s to make it 8 bytes long. Then
have every function prologue round up the return address. This should
work with tail-call optimizations because the round-up is NOP when
repeated. The obvious down-side is that it will utterly wreck the RSB

For unaffected chips we could then NOP both the trailing INT3s and the
alignment prologue at runtime.

> Having some toolchain support to deal with
> this would be great, and preferable to some of the asm hackary currently
> under suggestion.

Agreed, hence the inclusion in this list.

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20210323195358.GB4746%40worktop.programming.kicks-ass.net=
.
