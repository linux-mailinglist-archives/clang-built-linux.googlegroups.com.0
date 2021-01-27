Return-Path: <clang-built-linux+bncBCG4DNXAQYPBB4MPYWAAMGQESY554PY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23c.google.com (mail-oi1-x23c.google.com [IPv6:2607:f8b0:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id E26AA305907
	for <lists+clang-built-linux@lfdr.de>; Wed, 27 Jan 2021 12:01:06 +0100 (CET)
Received: by mail-oi1-x23c.google.com with SMTP id c7sf728385oig.17
        for <lists+clang-built-linux@lfdr.de>; Wed, 27 Jan 2021 03:01:06 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611745266; cv=pass;
        d=google.com; s=arc-20160816;
        b=DT11Wd8SnYxc4VMX3vO317D393/55zez4bQKoMhBU+9GBJwGlYf6qgpKvRdgISDtEq
         QEE89fvmJ+ftDFmAPORU88sb9zq9HrkgOFGXOJwhCLTy/sIBiH3TD8Dip8V43HMjQNCR
         MYp+80XIjpcTwnx5stsvqMK/rqkr81dLpcu6cymj2lGtIj1WImmOjSMU7ltRmWTUGNAc
         l/YkCPBa49Q6AFLPZXmnab+82/DT93nm07WymHyWDfOMy2icrsgT05VoFalb/BasPq+/
         CZ4VdqaEwKagmhSseOzF2RNgGV4gQYpRp0lrtZ3xQTry0G1xHbyq8FDUzUYBY101sMAu
         Zkuw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=NNt+M+HJ/1/XXSvxuXtws5wjN3MEkIUX1Bq/PRBufWM=;
        b=X2rUfvQ/Y2h1eA7JJSDfG8H9AWfIxIT7cAB2rBHR/F2GWWned55e2atPJ8DPnVZEI+
         +upqs0Dln7i3DvGRBmvZM5uD1Z4//rfzBlSjxj+CG5VFVuGPShM/+UELwAnQrwirKusm
         iy2HiORuIomLV1iStGACp7aXrTc6jhtMtEJHjIHoclEaiSDrTvrXLw1PqFbksnmicUM3
         0irHx5m4bc7TE7w3MTvFQQOamr/KZJkzJFiyILG12jNBx6KpLti6qOP/nfGROpawGsX+
         UpQXpktQnMzC0cmDkSENmNTAx8om3OhJcrESoeACk7fz1ArndDgdZpETSrLWvKnfEpsY
         WCeA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=baeJsrrl;
       spf=pass (google.com: domain of candlesea@gmail.com designates 2607:f8b0:4864:20::b32 as permitted sender) smtp.mailfrom=candlesea@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NNt+M+HJ/1/XXSvxuXtws5wjN3MEkIUX1Bq/PRBufWM=;
        b=oiVcatCmRio0fWSEtr8+9eHQvsR4Uq/U2ZO9Nv11Fxcb2dp+R0OK42BI9iyUJjoPf9
         2SILk3BLj5eNaeHfnxiGVYEBvi3WyOD+5WFUoadH8tXQEGm6R5MPpn99B+lCY4GfxK0G
         JDSqOeV9pauwt24Tk2lpxnUGGetg3HoszVuoxAGfWfYppyv2BCuPURFBGpc88ZXK3f2r
         gu91oxY0fZEK10jXZMk8GnFvksov3oCnI9w9yTD89yB7KGpBHqaUa8IaHqF4RmDd3Tky
         PleuPpMddgOwV1ZCWh6TmqmE4TujYYIGSpBczJk3d+1zraD2FePyyUZuDkamrLwEXwwE
         +06Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NNt+M+HJ/1/XXSvxuXtws5wjN3MEkIUX1Bq/PRBufWM=;
        b=cV9+hEc9d9JhdKnIWiY6wKAj2qO3yzjrEWckJbOIgrIe7phslogak+L5glix55moOw
         YJL+lEqVOGJ3oYX8R4eO2YbsAvmWxOB7d7InkgaBto+IaNLfvtdLHFsSS05QfwkEsFTy
         t70gnagjACosPLzQVeAQJeCEX0vxvJt7SfbQeM0a0gQA0w35lBpotmAXe8GRW20DyGKw
         rMnIRlllLbN2VoVEHcAfc15xeo8bCUP4Nry+0DVK7fb/gDndkeilqpZwpB0lFtzhPQL+
         MXGJqoYaHglJw4+dD2A1F/o5SglUJIlRpFhV8yNHWd4aoIipXxu59SvX2G0nbMUAlwnt
         5+hA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NNt+M+HJ/1/XXSvxuXtws5wjN3MEkIUX1Bq/PRBufWM=;
        b=PCpXSbD32dgvdNRUNrsHAIICDhdv+r5QLFhHbmx9Ye1Kdm3D7uxqEIcUud81KRqFoj
         OT+RjL8Iv/tI1vW0OmGHoj6bUnkI22KTbmwvpI5RY1Qc+iKorGBJNtRXAfN6UPInP9Kg
         errtPcXsaWlVqEcXHbw6l+xgj6Q2EUbaTmFgx8xHRR0HDwaDn70maAgOnHyx+veGEcqD
         qdz1owVR0VBrqFrzUQOFZFwpxgzmaeYzAJ0PM9A23sbMXhKPmYaGGXia8p9HConhVYHH
         2hLO2FBu/L8rjFFclDIkPvKJS2ejiHMh6jq3tmSNWVtRwCaMqCYSEOMrZRcrRoLHEkNL
         2XFQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533WordLpsMxzQgQ4Syx6gUWBGMxKsLVtekke5mnI4odKsCq0lWh
	3e36ELfQtuDAUoS8xAPBd0k=
X-Google-Smtp-Source: ABdhPJyBagfbJEGNHabJvCVE/0Ggllzu6Ru6KOMJcrnQYlWouDy3AesoINApFHoueigmNyYiuH4tag==
X-Received: by 2002:a4a:58d6:: with SMTP id f205mr7154740oob.38.1611745265880;
        Wed, 27 Jan 2021 03:01:05 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1391:: with SMTP id d17ls415248otq.2.gmail; Wed, 27
 Jan 2021 03:01:05 -0800 (PST)
X-Received: by 2002:a05:6830:15c5:: with SMTP id j5mr7189062otr.185.1611745265454;
        Wed, 27 Jan 2021 03:01:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611745265; cv=none;
        d=google.com; s=arc-20160816;
        b=GK8eMqlP8lOfSnke4lm1Iobz4RdEZDpim0Z19H3Y9o8RfUmLw3De7oE9Ttpb9anQB+
         88GXmr+p32+92eslnhZgGS/9W0PhAWPfKsjUxSHQJ8VV/z+8EKopD9jlUmXuq1v6VFxu
         lKghSHlbHdwzbEYL5GGLRU4wTGdSlrG43YE+rrtgwX3Z0qaEJGSyRGbTdmLZ9FdGHJP/
         BeXziJhxZ5U3bXTOHkm6/8zRqBdId6AY4IoYUUSX68Er/R+e5WKs01zFxLbWPi+9D/5j
         UkpBHZ1k3aWqSaHzDQt7IgwY8FZ7xfkhWBtGNn7VmDYe8U4HTzCx7aTopn/tsEtlXpuc
         prFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=iYWicv8n1FtRB8POyZv2LVDU05uMTM4tKwKje8Jv1Zg=;
        b=EFDFlTmYNZ3yOpP04RCY0Chcnz7NQkYsec3Ys2lMDdjTjVJrLVVUPzYVXMtukXBOOm
         JQ7HF58WfAxUf3iQ46+y1osUsw5hYM7YS5faUroxZ17KLZFxx7WRvlA3LcJhhINgE9sN
         Y0gWeihiwErNcViJKIRmdonjIyw3veqT4yPi1pPgEiAtSkNqNB6DbPMLRLJt6tsp6HAL
         HyeHS/sz+3lNNkfVUUa2fR5vX/779IJDj+5nn3bem/w3pWJ8iwAa72LozgxpfEdbi9p+
         niEpTyM8YVD62kYqLe1gd0MZPA6szWqiW8/QpCk4Esi1bMaheJrHB2Tm+x1xjpqi69uq
         C+Nw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=baeJsrrl;
       spf=pass (google.com: domain of candlesea@gmail.com designates 2607:f8b0:4864:20::b32 as permitted sender) smtp.mailfrom=candlesea@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yb1-xb32.google.com (mail-yb1-xb32.google.com. [2607:f8b0:4864:20::b32])
        by gmr-mx.google.com with ESMTPS id r8si109729otp.4.2021.01.27.03.01.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 Jan 2021 03:01:05 -0800 (PST)
Received-SPF: pass (google.com: domain of candlesea@gmail.com designates 2607:f8b0:4864:20::b32 as permitted sender) client-ip=2607:f8b0:4864:20::b32;
Received: by mail-yb1-xb32.google.com with SMTP id k132so1629690ybf.2
        for <clang-built-linux@googlegroups.com>; Wed, 27 Jan 2021 03:01:05 -0800 (PST)
X-Received: by 2002:a25:1fc5:: with SMTP id f188mr15629746ybf.389.1611745264998;
 Wed, 27 Jan 2021 03:01:04 -0800 (PST)
MIME-Version: 1.0
References: <20210125085622.2322-1-candlesea@gmail.com> <97d1f36a3b534b7fbd3790a0277ccaf5@AcuMS.aculab.com>
 <CAPnx3XPRnpPQyW7UO_TTmQrHwitDw+_i3ESVkaGq+JyiY9Pu0w@mail.gmail.com>
 <CAKwvOdnH8kXt+jAutjqsL_5H5PzswLGEZOieaGru2SDn13pj+w@mail.gmail.com> <9b48470af3b841e4bd8ba15a4ee5e745@AcuMS.aculab.com>
In-Reply-To: <9b48470af3b841e4bd8ba15a4ee5e745@AcuMS.aculab.com>
From: Candle Sun <candlesea@gmail.com>
Date: Wed, 27 Jan 2021 19:00:53 +0800
Message-ID: <CAPnx3XOLXWW5RWjzfwyfTo1Er+uJ2BcN7wxSr8m8G_8M=_sZdg@mail.gmail.com>
Subject: Re: [PATCH] lkdtm: fix memory copy size for WRITE_KERN
To: David Laight <David.Laight@aculab.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>, 
	"keescook@chromium.org" <keescook@chromium.org>, "arnd@arndb.de" <arnd@arndb.de>, 
	"gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>, 
	"natechancellor@gmail.com" <natechancellor@gmail.com>, "candle.sun@unisoc.com" <candle.sun@unisoc.com>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: Candlesea@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=baeJsrrl;       spf=pass
 (google.com: domain of candlesea@gmail.com designates 2607:f8b0:4864:20::b32
 as permitted sender) smtp.mailfrom=candlesea@gmail.com;       dmarc=pass
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

Thanks  David and Nick.

For simpleness. I just use abs() to get the copy size.

Patch version 2 is mailed. Please help review it.

Regards,
Candle


On Wed, Jan 27, 2021 at 6:53 AM David Laight <David.Laight@aculab.com> wrote:
>
> From: Nick Desaulniers
> > Sent: 26 January 2021 18:40
> >
> > On Tue, Jan 26, 2021 at 6:13 AM Candle Sun <candlesea@gmail.com> wrote:
> > >
> > > On Mon, Jan 25, 2021 at 6:37 PM David Laight <David.Laight@aculab.com> wrote:
> > > >
> > > > From: Candle Sun
> > > > > Sent: 25 January 2021 08:56
> > > > >
> > > > > From: Candle Sun <candle.sun@unisoc.com>
> > > > >
> > > > > Though do_overwritten() follows do_nothing() in source code, the final
> > > > > memory address order is determined by compiler. We can't always assume
> > > > > address of do_overwritten() is bigger than do_nothing(). At least the
> > > > > Clang we are using places do_overwritten() before do_nothing() in the
> > > > > object. This causes the copy size in lkdtm_WRITE_KERN() is *really*
> > > > > big and WRITE_KERN test on ARM32 arch will fail.
> > > > >
> > > > > Compare the address order before doing the subtraction.
> > > >
> > > > It isn't clear that helps.
> > > > Compile with -ffunction-sections and/or do LTO an there
> > > > is no reason at all why the functions should be together.
> > > >
> > > > Even without that lkdtm_WRITE_KERN() could easily be between them.
> > > >
> > > > You need to get the size of the 'empty function' from the
> > > > symbol table.
> > > >
> > > >         David
> > >
> > > Thanks David.
> > >
> > > I think using abs() by Nick's advice would be better. But could you
> > > point out which kernel function can get function size?
> >
> > The Elf symbol table should contain this info, IIUC.
> >
> > Given a string literal of a symbol (such as a function identifier),
> > kallsyms_lookup_name() can be used to return its address.
> >
> > From there we'd want to fetch the Elf_Sym for the address which should
> > contain a st_size field which I think corresponds to the size in bytes
> > of the function.  (At least, from playing with `llvm-readelf -s`)
> > Probably would want to validate it's an STT_FUNC symbol type, too.  We
> > basically want something like kexec_purgatory_find_symbol(), but that
> > knows about the entire kernel image, and not the purgatory image used
> > during kexec.  I don't see any such function currently in the
> > kernel...but it's a large codebase to search through.
>
> The alternative is to get the linker script to define a specific
> constant to the size of the function.
> You can then link against it (by using it as the address of a symbol).
>
> It may be easier to use an asm file for the 'return 0' code.
> I'm guessing there are things in the static branch area
> that could be used.
>
>         David
>
> -
> Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
> Registration No: 1397386 (Wales)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAPnx3XOLXWW5RWjzfwyfTo1Er%2BuJ2BcN7wxSr8m8G_8M%3D_sZdg%40mail.gmail.com.
