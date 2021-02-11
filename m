Return-Path: <clang-built-linux+bncBCDZTXMP2EPRBR5MSWAQMGQE5T7L3SQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103b.google.com (mail-pj1-x103b.google.com [IPv6:2607:f8b0:4864:20::103b])
	by mail.lfdr.de (Postfix) with ESMTPS id C3DE4318F82
	for <lists+clang-built-linux@lfdr.de>; Thu, 11 Feb 2021 17:07:36 +0100 (CET)
Received: by mail-pj1-x103b.google.com with SMTP id ca23sf4356003pjb.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 11 Feb 2021 08:07:36 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1613059655; cv=pass;
        d=google.com; s=arc-20160816;
        b=lmn5THgeUXTaWh1JxBysmeTK55qCo7GaJ/St7/vbZnPjKBdWbUSOOW2xVue3fkQtLQ
         fW4OmHYu+HLytiCwnqMxJ/dUlN5RKv55GAj3ta47KIsjmyhPbk6JYwpOFtrAsbxsC9C0
         qGM5H7IlARulX9KJ//TZwFdk62rBBV7b72dtGrAGCeGR2KR95yN1UYGDMiWzGWOv8u5K
         K8SXN4evUjFObVgBkzdd8jZ8KjNP/0gCcfPyeW6GCQukrqb4OppjwydW3nP5vtirQoC7
         69BaKUtLQgmiYcmURFUBZOOgyrvjyQzHkC/YqBMJp50S1KEcVC8+P1BSGs9ZBOODy5uY
         3m4g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=nsnUANC6DlWjfEI4fH3OmB/mQ1zElvE8ROIQawKAoPw=;
        b=W0Qmed1j0SnQO2tKQk4sxu4iEa3Nl3mpbbpPMKjSrUEaKlgdNTF4THhTEGdwGAETQy
         NMgSjD5dxsXdzYdG5416XNwMumQ9O20odibX3NmlTw0QtwmHqzYZN1J78TS5uHTm05d+
         4aFCT2mBfUR76ZmbmB2+M4xCTLaPoZ1mai1eudTZT9p9O06MF6tcDHscKOndM2s1QqWG
         B0VRENghcW+9Ky6A2HfrlRloAPZGpx/3h2/V111zJEHHD/VLttDfwUzcgwns/6UXxo2A
         QYK9+X31bFZlHB3TWTQv/U0GvSDQNI6oAA6Ru5Ti919uQy3gm27J1vT8o2t6ljNFGyWC
         jtFw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=botdyEwQ;
       spf=pass (google.com: domain of jolsa@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=nsnUANC6DlWjfEI4fH3OmB/mQ1zElvE8ROIQawKAoPw=;
        b=YoCJy6IM487vZj0osPpzncjYRYHVLkDLItu8Rzyp4BxAGP50KfxxPEU97YPry/tHJD
         E+E0zXoVcr1/xBteJAkTWaShOo5FtSgLlvWSLx6Ar0ipfL8460tcxk0tdt3FW2us6UGd
         styAq5qSbswCAA/zEXke8YPYorKtI9jmS7GkjezNWDh7XuwgVfUltESqTGfPpWXqA1DS
         rFCkoA5FZWSP0RIXCQeobS+ySHc/mI0rG8nNKIkXky6qL/PBZWnUb5qCiZcdWUam1px5
         bXzqHkn008WpX1K0h3R7Egmbe5tVF81/YJaVPWbl8iRQVzvUBTLzAuqhgc2Ei2Su84g9
         VzdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=nsnUANC6DlWjfEI4fH3OmB/mQ1zElvE8ROIQawKAoPw=;
        b=g+hPnMqS6v3JZ+9O8PLObipR+KCDEpWPGL7gBM5CPsYAJr5VQ1pBcFd4Lk3VEadv5V
         cet2THTsDAGU5xUqtApciTCQ2cg2+vFOVCW0I2dY61oiMokMfvjUSLPDw86BJCC954gv
         3hthlG8IezsU6gzgrAqR35E7xzqoiptayxSr8vsyB3oLWZMGYN6dtazxrSErcdEQiTnR
         ruMoUp5AlS5lvnkviA4EZcM4qKilT+lsIbMr7TwX/a1n20k8ufnoeOMHT2gyu2laEJyD
         cuHDxq3I3bGgJYPCMdOpc4GSIgyFRyUTkQOesr5wRJFmwetRga5A+1ui+TYrUfdAsPLP
         ceVQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5337BlxnLrajnJ4MTjDFjX8gxGlaIbMkfE1ghXbGuKvZYafz47sX
	Bs8a+v8RRs4kive9tbdHINs=
X-Google-Smtp-Source: ABdhPJwNW+gL7zGeMcfdkoSTS1oXFM8HNqurV1/et4/yDt9DZCuuRpKDZZ7GRTv+OUqyWJ61A4JUeA==
X-Received: by 2002:aa7:8d0d:0:b029:1d7:3c52:e1f6 with SMTP id j13-20020aa78d0d0000b02901d73c52e1f6mr8848215pfe.39.1613059655520;
        Thu, 11 Feb 2021 08:07:35 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:4c89:: with SMTP id m9ls2329549pgt.8.gmail; Thu, 11 Feb
 2021 08:07:34 -0800 (PST)
X-Received: by 2002:a63:7947:: with SMTP id u68mr8600421pgc.451.1613059654830;
        Thu, 11 Feb 2021 08:07:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1613059654; cv=none;
        d=google.com; s=arc-20160816;
        b=j+OuWmvT68cit+SJ2hTzk0TiRR0NXMW3Fs5glCspYc1Sbu4cVigsSomosWXP/mpmG1
         +EqSt+gIpfJrx0lQP0niVOCPQg1bAUhCDBjBwBT04qHzb7/5PYhPy43YGPGILjyUIGwR
         PbZIl6J+TAguOKql74zoE2ope4aGaP4KNp3akGq0yMbpEc/gw+w1aE+Yvz5eN3Cc5JXZ
         y2BH+hY6oU+mBJzXxmjGZMUJaXrzLoIhJHd7oGChBBUemFBVdp0bBJ/VtEJHpA+NRGr7
         iH7YTRLRrJmfbnybwACYXye/zR7HobCKS1uwrXO8VC5s/JVrE5lnIpL/33g26qfs96x5
         LSXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=U5PLl0pnoPm3WuHY1EjyZO2JoihwnMKEwl2Dz7ozuvg=;
        b=d1DCccZ0VaTB9WZmJ08GfgsXpS34bXZf/+H5JA0OjTWo//+HPIcxUsHcPVFTsd5ema
         4y6SW+bbOH0NdTXpMDw7J9HLdj0uHBynJiHSQ7u4uagZdlwZDrQRQGAkvkxL4KiBxYxQ
         6dDPW6RbZwsV32kb6hx/DrU7N1bwb5e62xhmXbmvdNtg3884Ik3i5mU0lO5zZCjDp9s/
         IZR46hIThO9dytfT1Ppc07uHD/ZZx68DwhchLW439P0Z3wcxg0fjii2Ryr4GDAjgVDJT
         Wbl7eJalnwDPUDQVpFZosXbzgCVyG8vD4VElAZs+Ebb6DPuN8SPhDQ58mpVceLQO/ywh
         GNWg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=botdyEwQ;
       spf=pass (google.com: domain of jolsa@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id f24si554271pju.1.2021.02.11.08.07.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Feb 2021 08:07:33 -0800 (PST)
Received-SPF: pass (google.com: domain of jolsa@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-55-e7neWtIkMRGbf99CUcnwAQ-1; Thu, 11 Feb 2021 11:07:27 -0500
X-MC-Unique: e7neWtIkMRGbf99CUcnwAQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A13BA107ACC7;
	Thu, 11 Feb 2021 16:07:24 +0000 (UTC)
Received: from krava (unknown [10.40.192.105])
	by smtp.corp.redhat.com (Postfix) with SMTP id 5EEEC5D9D2;
	Thu, 11 Feb 2021 16:07:21 +0000 (UTC)
Date: Thu, 11 Feb 2021 17:07:20 +0100
From: Jiri Olsa <jolsa@redhat.com>
To: Sedat Dilek <sedat.dilek@gmail.com>
Cc: Andrii Nakryiko <andrii.nakryiko@gmail.com>,
	Nathan Chancellor <nathan@kernel.org>,
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
Message-ID: <YCVWONQEBLfO/i2z@krava>
References: <YCKB1TF5wz93EIBK@krava>
 <YCKlrLkTQXc4Cyx7@krava>
 <CAEf4BzaL=qsSyDc8OxeN4pr7+Lvv+de4f+hM5a56LY8EABAk3w@mail.gmail.com>
 <YCMEucGZVPPQuxWw@krava>
 <CAEf4BzacQrkSMnmeO3sunOs7sfhX1ZoD_Hnk4-cFUK-TpLNqUA@mail.gmail.com>
 <YCPfEzp3ogCBTBaS@krava>
 <CAEf4BzbzquqsA5=_UqDukScuoGLfDhZiiXs_sgYBuNUvTBuV6w@mail.gmail.com>
 <YCQ+d0CVgIclDwng@krava>
 <YCVIWzq0quDQm6bn@krava>
 <CA+icZUXdWHrNh-KoHtX2jC-4yjnMTtA0CjwzsjaXfCUpHgYJtg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CA+icZUXdWHrNh-KoHtX2jC-4yjnMTtA0CjwzsjaXfCUpHgYJtg@mail.gmail.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Original-Sender: jolsa@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=botdyEwQ;
       spf=pass (google.com: domain of jolsa@redhat.com designates
 216.205.24.124 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
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

On Thu, Feb 11, 2021 at 04:43:48PM +0100, Sedat Dilek wrote:

SNIP

> > > filled with elf functions start/end values, right?
> > >
> > > >                         /*
> > > >                          * We iterate over sorted array, so we can easily skip
> > > >                          * not valid item and move following valid field into
> > > >
> > > >
> > > > So the idea is to use address segments and check whether there is a
> > > > segment that overlaps with a given address by first binary searching
> > > > for a segment with the largest starting address that is <= addr. And
> > > > then just confirming that segment does overlap with the requested
> > > > address.
> > > >
> > > > WDYT?
> >
> > heya,
> > with your approach I ended up with change below, it gives me same
> > results as with the previous change
> >
> > I think I'll separate the kmod bool address computation later on,
> > but I did not want to confuse this change for now
> >
> 
> I have applied your diff on top of pahole-v1.20 with Yonghong Son's
> "btf_encoder: sanitize non-regular int base type" applied.
> This is on x86-64 with LLVM-12, so I am not directly affected.
> If it is out of interest I can offer vmlinux (or .*btf* files) w/ and
> w/o your diff.

if you could run your tests/workloads and check the new change does not
break your stuff, that'd be great

we need soem testsuite ;-) I have some stupid test script which runs over
few vmlinux binaries and check the diff in BTF data.. problem is that these
vmlinux binaries are ~300M each, so it's not great for sharing

also I was checking if we could use BPF_BTF_LOAD syscall and load BTF in
kernel and back at the end of pahole processing to check it's valid ;-)

thanks,
jirka

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YCVWONQEBLfO/i2z%40krava.
