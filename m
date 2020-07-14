Return-Path: <clang-built-linux+bncBCUY5FXDWACRBGWWW74AKGQE3JC2U6Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x440.google.com (mail-wr1-x440.google.com [IPv6:2a00:1450:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id E494A22009C
	for <lists+clang-built-linux@lfdr.de>; Wed, 15 Jul 2020 00:28:42 +0200 (CEST)
Received: by mail-wr1-x440.google.com with SMTP id j3sf25721wrq.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 15:28:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594765722; cv=pass;
        d=google.com; s=arc-20160816;
        b=ry0RdwJ9Mt/Um2eWBXNGSLLnI249Jae1gem4lcG+ruMhJd2BlV6rpegxPR3j2/vGgk
         YKLZB4UTtKsEWQMK0DadKl6h0vCLrEjClM4KvFeHxPyBWDYiyBDVBdH7SAOLnDgPl5Te
         YpzTncwwKOPSHQbgew6h3G/ZeVwXPSpqZHFbd9cJ6MCH8jAZnK4r5oUtwI3lB8KFp5Pv
         JzGTZ5P5GDuADhOmvhVCfataCfcdarIa0d260aK2jC6A8PMYP6ApOLemo9g8C4qFUuKZ
         78yzvktfWH7T0F/ghqcBH0jMmi99TU7hG2tRe+4uw+7ZeSGRp8ArrRyoLCxb9TCn4//Z
         Ccwg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=hhh0J2UKdlIsS33rTvFB1orolxrT3gM/vn8a9/znDPk=;
        b=sLbCcby3ke6AnJkNuPTgjAsfyQFuU/YsdtT5Pt35sgdtO5jYGTZJ4yXMkUjSJdJk2T
         6MLsOS1axSoDQtJExVp6yWiF05C5W+vBskJEc3p8XnMdxZHilUSnmOAJ9+MeWrM4Ijvs
         3B8CcIuKqok9JUjk8fT0TQRE+8Ikbtr9FR8SkfSrX/o3SlrMEYIJUumVteLlhJCTix3K
         wg9L+huYwa6HnjuWDk0edBMHUOQxnffXEn5BD1LZ+BETSY6/8HHT1UKoWzKiJhJPzjxS
         dpYjY8YH7mCsxhpp/vEkGR3fvZXFhDgbzWTsgihmoSVOm95AntR5vSd6oLPu5wbg84xQ
         rsWw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mrk8nP8Z;
       spf=pass (google.com: domain of alexei.starovoitov@gmail.com designates 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=alexei.starovoitov@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hhh0J2UKdlIsS33rTvFB1orolxrT3gM/vn8a9/znDPk=;
        b=HTW0+J9JyHWfUUOFI14blkH87ZI3QBUSLwSNWHuo2utULG32wv19meKhZpjY8dc//L
         Tt2G8zDOOaqxcQg1pJBeg9BHK/cgs2d2ui2HOl0gLKyeO+PG82A83jfKhqH2xdsQdLmL
         8CNxnWipfjV9YroHG12GgrcU9SCOE0WYqjfdwq7yv6eO4tmkPWVutpSb6vvVPk+Rv9ry
         hfbkzGE9QXN2c03rb4J372i0ANVgJsWz1Mlyex0qrGkJPLtKJIJ5BO2Z8zY9zAkgHtNv
         RF6+r15I7AlZRrKCHVq4bRyh+IMXLIfzTADlgwGQvlnHCW0YwRv9YZuFHetLHvQmahu9
         zJaQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hhh0J2UKdlIsS33rTvFB1orolxrT3gM/vn8a9/znDPk=;
        b=r7y2c16uX77mF9MaJPJU5ve7ir8RcbZlXfjHdv2C+vnlGkvktXxMtVBNDHL/K32IEd
         vQ1bb0/UhAZh4JIRp0hWv6Hz4GVHOEu/6O0C2twT5SCQJV8dX+Q+KAONlySwP47jjkGZ
         oOwxEKHebBKM6z0haKuem+Gk131mUQ7kXINjIq59q68PXhj40IBm9cZIpgbHdnayHqaQ
         qKS/GtodPDwY7GTAruRioPggePEOukqlYpkEm/kmsHdoZH4KTWQ5nChgzkMFsy2ghbxT
         jrxNbgQWCsrVA+bbiUJRCoBXnpxC8oH2MEcT1BL47oX/+BJPUQL5Mym2UUD7dZqo9df7
         W0Sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hhh0J2UKdlIsS33rTvFB1orolxrT3gM/vn8a9/znDPk=;
        b=HHBfA3O0O/5eK0CvCTndxuftfnRV79JqkDl/Vq8JDqL8J3hwQA+5MXS8Q0cZX0p1p0
         T5K63G3vguarbI1A602ntissGRKZBte20opXNJOBdJydwklI/M5NdS5D0HI0bthIxvqd
         V763LU/qOUkRF5w2k9fz/iS2Vr0I1K3NoDXJO3Lg6p3LZ4aqS6c0dG/X7RI3CidOJEvE
         YPEKmx5Nknh5QTa4gxXDmqvUJmluypEYCzhrslzuEMbji42g1dBZE5+y2wnSCVVKeBEy
         ALr3x8e16iYJd6xgS7ELk74KE51ZmjdDNg81j4YMbKQZpAMtWXtCuQXxVR6yrJh+e6FE
         b2gg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530nOrWtwekiopRTGAA+FMHUmJhhPSJAIyUQQ1wNfHLPjbOis1OW
	lZYdEnjaX96caOtVALxR/N8=
X-Google-Smtp-Source: ABdhPJxKCIgn10gzztI3Dx5V1KVKsFBiaCkjtgJ5uiSY3jDIr2D6Jht7BUZqhSWr+YAqWdsxIoFP9g==
X-Received: by 2002:a05:600c:2144:: with SMTP id v4mr5220456wml.128.1594747674880;
        Tue, 14 Jul 2020 10:27:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:2049:: with SMTP id g70ls1385129wmg.0.gmail; Tue, 14 Jul
 2020 10:27:54 -0700 (PDT)
X-Received: by 2002:a7b:ca4c:: with SMTP id m12mr4948271wml.33.1594747674248;
        Tue, 14 Jul 2020 10:27:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594747674; cv=none;
        d=google.com; s=arc-20160816;
        b=SNwLxv5wi0uwLZmSL2LbCs3/i8CCt6PktSFzpm8I0EosfvDWFTUKeiOtdncobFXdWw
         uHzWD1o2pkmInY8C4WQOdcS3Ay0oEehfRNi1PdMrt5KsjqZDclIR1PrqV9+ygNkYF8qt
         dQBpfzbE9qAJMmqyACunycYqe58dsQwigEkiYceCb1w/bmppY0fuCxEr53kvMm3XyQks
         QP3WmmEA2WjM4Wdo7yDhkM0wsvr1kyI4kncB7OzpS10yH1GFmT9D7UhIHoAc6PAAghfs
         4Ta1MlFMaVM7yfBa5Evvl9BdcQZk/8ookGc4c1Kw+Md3tbv/mXBklNRVDvHItVnBKvH/
         tT6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=rJflZjiXOdQ2b9X0uINcJ4Ucju/qSppPTgvRYeR307M=;
        b=JTYHk7hR/22M4UB/y15nL7NlYKyITVgW2c1J5Z2QqDljUdDH3Nh0RwjKqauFeqHlWd
         PBjD2XrPCzBRtUmJyU3kHgML3C6JIrRl3uc8iW4FvV5IqlTZtoy5NfsVms3DTXJpvGPr
         /wdCSzUeZzQrWu/bPYaKr6caGC7mQdC34hirOCp+jhg3C3o0B3Wut0j/D3SKMCwwR5uy
         m3p9sRnwiLEJDC/kz9jR3fw5yL6LjSjLBCKx/H5n4qrm6Fw21Gc0jNFHCTMXCZ6Zt9y+
         Ssf11bomHYkXi6+/XZnreKEU26uMPCtJy00DTpnbQXZBP+XHskTOFd9YamJmdfSzXhgg
         +I7w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mrk8nP8Z;
       spf=pass (google.com: domain of alexei.starovoitov@gmail.com designates 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=alexei.starovoitov@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lj1-x242.google.com (mail-lj1-x242.google.com. [2a00:1450:4864:20::242])
        by gmr-mx.google.com with ESMTPS id q12si786164wrw.4.2020.07.14.10.27.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Jul 2020 10:27:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of alexei.starovoitov@gmail.com designates 2a00:1450:4864:20::242 as permitted sender) client-ip=2a00:1450:4864:20::242;
Received: by mail-lj1-x242.google.com with SMTP id q7so24133904ljm.1;
        Tue, 14 Jul 2020 10:27:54 -0700 (PDT)
X-Received: by 2002:a2e:9a4d:: with SMTP id k13mr2946227ljj.283.1594747673686;
 Tue, 14 Jul 2020 10:27:53 -0700 (PDT)
MIME-Version: 1.0
References: <CAEf4BzZRGOsTiW3uFWd1aY6K5Yi+QBrTeC5FNOo6uVXviXuX4g@mail.gmail.com>
 <20200714012732.195466-1-yepeilin.cs@gmail.com> <CAEf4Bzas-C7hKX=AutcV1fz-F_q2P8+OCnrA37h-nCytLHPn1g@mail.gmail.com>
In-Reply-To: <CAEf4Bzas-C7hKX=AutcV1fz-F_q2P8+OCnrA37h-nCytLHPn1g@mail.gmail.com>
From: Alexei Starovoitov <alexei.starovoitov@gmail.com>
Date: Tue, 14 Jul 2020 10:27:42 -0700
Message-ID: <CAADnVQ+jUPGJapkvKW=AfXESD6Vz2iuONvJm8eJm5Yd+u9mJ+w@mail.gmail.com>
Subject: Re: [Linux-kernel-mentees] [PATCH v2] bpf: Fix NULL pointer
 dereference in __btf_resolve_helper_id()
To: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Cc: Peilin Ye <yepeilin.cs@gmail.com>, Andrii Nakryiko <andriin@fb.com>, 
	Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, Martin KaFai Lau <kafai@fb.com>, 
	Song Liu <songliubraving@fb.com>, Yonghong Song <yhs@fb.com>, 
	John Fastabend <john.fastabend@gmail.com>, KP Singh <kpsingh@chromium.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Networking <netdev@vger.kernel.org>, 
	bpf <bpf@vger.kernel.org>, syzkaller-bugs <syzkaller-bugs@googlegroups.com>, 
	linux-kernel-mentees@lists.linuxfoundation.org, 
	open list <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: alexei.starovoitov@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=mrk8nP8Z;       spf=pass
 (google.com: domain of alexei.starovoitov@gmail.com designates
 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=alexei.starovoitov@gmail.com;
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

On Mon, Jul 13, 2020 at 9:38 PM Andrii Nakryiko
<andrii.nakryiko@gmail.com> wrote:
>
> On Mon, Jul 13, 2020 at 6:29 PM Peilin Ye <yepeilin.cs@gmail.com> wrote:
> >
> > Prevent __btf_resolve_helper_id() from dereferencing `btf_vmlinux`
> > as NULL. This patch fixes the following syzbot bug:
> >
> >     https://syzkaller.appspot.com/bug?id=5edd146856fd513747c1992442732e5a0e9ba355

The link looks wrong?
Nothing in the stack trace indicates this issue.

> > Reported-by: syzbot+ee09bda7017345f1fbe6@syzkaller.appspotmail.com
> > Signed-off-by: Peilin Ye <yepeilin.cs@gmail.com>
> > ---
> > Thank you for reviewing my patch! I am new to Linux kernel development; would
> > the log message and errno be appropriate for this case?
>
> I think it's good enough, thanks for the fix.
>
> Acked-by: Andrii Nakryiko <andriin@fb.com>
>
> >
> > Change in v2:
> >     - Split NULL and IS_ERR cases.
> >
> >  kernel/bpf/btf.c | 5 +++++
> >  1 file changed, 5 insertions(+)
> >
>
> [...]

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAADnVQ%2BjUPGJapkvKW%3DAfXESD6Vz2iuONvJm8eJm5Yd%2Bu9mJ%2Bw%40mail.gmail.com.
