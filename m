Return-Path: <clang-built-linux+bncBDPKNA7WYADBBCOC232QKGQEMQCSD3Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x238.google.com (mail-lj1-x238.google.com [IPv6:2a00:1450:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BFC51CB6BF
	for <lists+clang-built-linux@lfdr.de>; Fri,  8 May 2020 20:12:26 +0200 (CEST)
Received: by mail-lj1-x238.google.com with SMTP id y5sf441429ljn.20
        for <lists+clang-built-linux@lfdr.de>; Fri, 08 May 2020 11:12:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588961546; cv=pass;
        d=google.com; s=arc-20160816;
        b=QmMIRbnUStFV1bGhA9XWill0WMjcZsZRpDwaDZaSQk2aQinZzP0YWi9XkbELa9RbMx
         EwH/RrjXnIr1TTucQr79esWdHAy8E4T6xzGajs1d5uyjwiI5M2HatV4KyI1SOAOVNjI/
         uLpAAc+0w7o9XHMAyIb30bF1700ZbPoKUHONYDmaloUsbSWOdm+Ybo/SxKDLY3Ktfd/V
         Y39IA0gD36Nod7UVJqu3qFBYGRRUQAWn9SsPQNy+aOYIcjus9auDbgbRDvkYcw/bMKcH
         WfvceNWslKnGqFzEUbq3bjQkcVSn75f7724zHvWrpVDIGaSxGT+KWeLkvTDQfblzW73U
         DETQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=AB4CT4wwHBAVgOWeo56CIqm6h+R0m8HiMs7f815VTp4=;
        b=nSsA8Z+tdExHgF6dJNF9Db2OqKAFBjRs/imjPiCFkq+ew6baS8swaZh5C4zkWt23Bw
         cwmkbYPC1WmCklK1dEkFRPdEl1bOrKExF8kKaXOdjo4Mkyg7yzzTByzobrq2cTChtUB2
         spmlbJV/QTti/Qa7M+XvmM0lfOsVCzPM2UjQQ9Qgu5e3vQRSdBMFDka3IbALYy8VMnKh
         L3nHTdOxf/BhACLFNNfpWwTRr/hv2+T4sKOOZjLTCxCRciwPxhUq9OPgeyO88CAlQ8bY
         yzxQdPemzs28uwO8ZmTINUE37tIwCJAuDbDq3HSzmOw2tJd5lnWBUHxsYnMG8pFSx8PE
         2K+A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="jiGw8gA/";
       spf=pass (google.com: domain of luke.r.nels@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=luke.r.nels@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AB4CT4wwHBAVgOWeo56CIqm6h+R0m8HiMs7f815VTp4=;
        b=YsIwJW8PO+rlLS1S3MeCu4ikOpoFiBvcEziMbygAuAIFeEMnmEZAcqegWmQ3p71wDX
         hYIV4DuAQcDfaPgGPJtAPXeg2CPVcULb3R/GkG3X66hpaHVtbUJAVpUu37AsiTxDcbJu
         M8vTafxdBjBl/C/ZdQzxl6BlqcVnot12WMOQRuljvy3+Fd+QUbfU7TLQFjlsN7ga7DPz
         YsUcPkqERFNXTWn3aNa3fN/AZ+309AWAhDnXnVJLAVNoM/ZePLrupElASubuN+ax3gzq
         IM9044Lc2pJrnupD/aOiNwy7+zycFxEo3yju8i1+j0IPy+7ShmIzsIf1VAgbNMuhAmCW
         Kgbw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AB4CT4wwHBAVgOWeo56CIqm6h+R0m8HiMs7f815VTp4=;
        b=n+bLJ3nF/TSeApZAmyYWG7JIDFapVpdI+Po/Curd4cHaY9IQRkHDHX/+I4YTOYGp8v
         SS6zPMUsnIY5PfjQqAoWiBj3Kw6FSkAO5epCDIKX/5/tVczc/Xtmz0h96fhOQC/wV3xO
         PZZI+KAZbA2D6RRqEi8zQE5/EvXYjW7rF2NU7k3kwNNor1/hK30jk3D3zLWWNM2uuvhr
         DJfpBLnFHTnWIJXJ/9Ncmc5Ke41zuyUW5+YPbMf/G8Fd5VqKkbK7gS8+edTKxvNa2xZ7
         s7FjGcpzsh7AOYu8pURzbOBOSn50KM/FIjx/MU8Rew05Cf/TF7p75lo0H55hZky+IeKB
         lRJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AB4CT4wwHBAVgOWeo56CIqm6h+R0m8HiMs7f815VTp4=;
        b=ma/fccM5mI+iTMqPGgLKl+btOxaa7FGV6fqu523V0ZzWoDNAmkqiqUrebTXG49kIPZ
         ANa8x1me4nJou0igL5U8rRhjhy4mgmDnviZljQ5qKldFAhcg5gA4FZ+0alwZfXNm9//o
         Es25/SRpYZbElc0k1h0/UUZIw8Lkma13rp5dbSrWiZSN26XVf7EoxLqAzI0sB2iTupd0
         szrXK3Y3bghP/Uvwa0qdWY5k+tG93npovWNkUuEw3dFe9cyrwytZymJMsDZ6XuMuWsuH
         I26Pb9Q2i8s4piyvaNj4lx+i9Y8ZaknamaFooRfYXQs14gFatTYIQaFifNdE2R1rdx8l
         ycmg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530uUqPllzJo3dql52LfHyrOnd0Ij2N+wNVaTgYd9BSIfhHIr37a
	pYTqMRMCJFL6zNZKhL8sdbI=
X-Google-Smtp-Source: ABdhPJxQM/3sFC2CxE4XYObOFkTdKwZRjwW+ZyuM0hfwbRIwG4wjWpus3QjR9tI+bhkNOuHydga7Tw==
X-Received: by 2002:a05:6512:44d:: with SMTP id y13mr2726410lfk.118.1588961546052;
        Fri, 08 May 2020 11:12:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:3047:: with SMTP id b7ls529326lfb.1.gmail; Fri, 08
 May 2020 11:12:24 -0700 (PDT)
X-Received: by 2002:ac2:47fb:: with SMTP id b27mr2830614lfp.10.1588961544495;
        Fri, 08 May 2020 11:12:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588961544; cv=none;
        d=google.com; s=arc-20160816;
        b=crQntWSYqmnpj3wcNlACqgPD5XZWgEGnIgXcPXdTMCh3DE3vFmXSoh1wG92RobM3Mg
         nqLpGaeGxdfGeEHFUL/M/GSO+Bx6h/MkrrF/qNI228/z7FvYPVGbs93/XS3r3Ehh0eDo
         /5+inAkKBtzlS/+VPHQ+XaWiXVz5W/1MELbXPaB5LBB93xBeJMLwmxTDlQW0zrJvdSF/
         DrVx1Vfm4W1D0HtzoifqRssA8Bh6MK5ACrTkljMU4Q0SieGurcBnu8w9BWqD93fGGQn9
         A+V+EBpH3P4q0Bt1bMCpmmEIbhV5EH82Q/VKp8s0qr7QaX3gM8tMhiPVn4g9rOufJNw2
         Vemw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=wEg6363KALMCBQBSLOKuoUfGPXNIfqB9uH8JLDVOLn8=;
        b=LGyZqPlqKaRANAKdrHkh+OIVK6IbA7t6QtjQmInY3UM5xGVK/iK5ADDO8mu9aG373p
         xE5wEVfRITgGLjw8cTrTSIEqHNP/FPhSexnIxIydEUWRhkSpgvHaQAktYdRQSibObK06
         jQ3CWL0Qd513vJu0D0Lv0iXvdlopaYmyVzmw06p0aborbovTLYtx1/lpwrMBtFe4m5eC
         B4vTO1WGHDjck0XL+4gW3ekHs7vYwICg61t+my+p/6dW5TlOTLhVWC7d6h4od41PivrJ
         Cfo7KMpej6aLwxj4/7bBM4q7mxWAPohRmhEl6QqhZtr22vYueZR9iXfK1aJ8y7TM7t5Z
         ORGw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="jiGw8gA/";
       spf=pass (google.com: domain of luke.r.nels@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=luke.r.nels@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com. [2a00:1450:4864:20::442])
        by gmr-mx.google.com with ESMTPS id 184si135382lfi.1.2020.05.08.11.12.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 08 May 2020 11:12:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of luke.r.nels@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) client-ip=2a00:1450:4864:20::442;
Received: by mail-wr1-x442.google.com with SMTP id x17so2959942wrt.5
        for <clang-built-linux@googlegroups.com>; Fri, 08 May 2020 11:12:24 -0700 (PDT)
X-Received: by 2002:adf:8401:: with SMTP id 1mr4356440wrf.241.1588961543855;
 Fri, 08 May 2020 11:12:23 -0700 (PDT)
MIME-Version: 1.0
References: <20200507010504.26352-1-luke.r.nels@gmail.com> <20200507010504.26352-2-luke.r.nels@gmail.com>
 <20200507082934.GA28215@willie-the-truck> <20200507101224.33a44d71@why>
 <CAB-e3NRCJ_4+vkFPkMN67DwBBtO=sJwR-oL4-AozVw2bBJHOzg@mail.gmail.com> <20200508114709.GB16247@willie-the-truck>
In-Reply-To: <20200508114709.GB16247@willie-the-truck>
From: Luke Nelson <luke.r.nels@gmail.com>
Date: Fri, 8 May 2020 11:12:12 -0700
Message-ID: <CAB-e3NQLuaHLxNB3Zpgy8EqyiZBqEYGzh1TSzXQe++nqPu2oLg@mail.gmail.com>
Subject: Re: [RFC PATCH bpf-next 1/3] arm64: insn: Fix two bugs in encoding
 32-bit logical immediates
To: Will Deacon <will@kernel.org>
Cc: Marc Zyngier <maz@kernel.org>, Luke Nelson <lukenels@cs.washington.edu>, 
	bpf <bpf@vger.kernel.org>, Xi Wang <xi.wang@gmail.com>, 
	Catalin Marinas <catalin.marinas@arm.com>, Daniel Borkmann <daniel@iogearbox.net>, 
	Alexei Starovoitov <ast@kernel.org>, Zi Shen Lim <zlim.lnx@gmail.com>, Martin KaFai Lau <kafai@fb.com>, 
	Song Liu <songliubraving@fb.com>, Yonghong Song <yhs@fb.com>, Andrii Nakryiko <andriin@fb.com>, 
	John Fastabend <john.fastabend@gmail.com>, KP Singh <kpsingh@chromium.org>, 
	Mark Rutland <mark.rutland@arm.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org, 
	open list <linux-kernel@vger.kernel.org>, Networking <netdev@vger.kernel.org>, 
	clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: luke.r.nels@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="jiGw8gA/";       spf=pass
 (google.com: domain of luke.r.nels@gmail.com designates 2a00:1450:4864:20::442
 as permitted sender) smtp.mailfrom=luke.r.nels@gmail.com;       dmarc=pass
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

Hi Will,

On Fri, May 8, 2020 at 4:47 AM Will Deacon <will@kernel.org> wrote:
>
> Yes, please! And please include Daniel's acks on the BPF changes too. It's a
> public holiday here in the UK today, but I can pick this up next week.

Thanks!

> Nice! Two things:
>
> (1) I really think you should give a talk on this at a Linux conference

That would be great, I'd be happy to give a talk on our verification
work some time in the future :)

> (2) Did you look at any instruction generation functions other than the
>     logical immediate encoding function?

Other instruction generation functions are on our todo list, but we
haven't got a chance to spend more time on them yet.

Thanks again,

- Luke

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAB-e3NQLuaHLxNB3Zpgy8EqyiZBqEYGzh1TSzXQe%2B%2BnqPu2oLg%40mail.gmail.com.
