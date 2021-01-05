Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBQ64Z37QKGQEMSLXJ7Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x540.google.com (mail-pg1-x540.google.com [IPv6:2607:f8b0:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id 8538A2EA149
	for <lists+clang-built-linux@lfdr.de>; Tue,  5 Jan 2021 01:09:41 +0100 (CET)
Received: by mail-pg1-x540.google.com with SMTP id 139sf22893158pgd.11
        for <lists+clang-built-linux@lfdr.de>; Mon, 04 Jan 2021 16:09:41 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609805380; cv=pass;
        d=google.com; s=arc-20160816;
        b=BsQEL+W141jxKQRtjjWnnYM0xg4m51GRsGr68830I3VRxO4jla4Q9gkvi9xJfvWxKA
         oXSbJHhCBe6COEwbGxoAk9dvtJ5bSaXeKwkJsSu2N2v/Bto9d0Gzl0JSQiZyBq6myDQL
         CEPey9NQV9WhTAa4QvhNf1iRdo588Dzz95ld6SlvbbZ3P8RNkh2a3JfU3UOhXnkcseIO
         NmyxiWEwYjOz81X9wbsTFUZwZGxMfTIg1hl5pKQA2mah8SSm6X1L0lV/2eimF9vPWuo6
         FUt1qQKrhWFRsgQokt9vxGA0HyOPiafHs9sf6zURZZe7tNTMiUwzND95SLejem7T1Qra
         JUPg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=4Xok1sqBwKql+tBykg8vlYaCz5jt6OLJ8eTC4WoOG14=;
        b=vTQJCizOo1SB9TZwKmRQjrnxLkuhTzOTn/mUMgoZekJL1js+9gv5vjM3RzCc+oap0B
         FxUOOvYCwzrEs4N90BHcvWkzmUzq2phH3UgRSReeCnvy65Qt/ZEqF4pyBtrrG8owTHSd
         ISJpbWdH6Lb+s1H41MPXqW64bqJeBbFtuEgGAXZTD3aPut7fZqceYFPaegMJYGVYvRi7
         PGI737aRgvCjlZtVFyZ5MhL3jLUhk4FbH5cfbu7fon3TCW0mM2YTP649H/0H54P8Df12
         gTPcqRTcewIqZWQ0SULedD5ut8r6pVKd2OKZASbzEMS1xDks0WdDtmQs3ezco0uB1TuM
         BinA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Wdw5+9ay;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::f31 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4Xok1sqBwKql+tBykg8vlYaCz5jt6OLJ8eTC4WoOG14=;
        b=MUYtAH+P0HUZnmhpi/cP9SnmM/T3qZljhHoRMwOAPqp0ma4n3SZbru3KT3RSXHH8JH
         poIV+/SsCcf4cXpzxY5Ro9kRLE2ePk7dgC9a+Qi6oExLAqCw/5/N5OQRYT8dOhLqLr6y
         Oecxvf2DYo8WIO1J4vuuRYLjMV2oaagntAtedPZ4Go+lcPi4uTtOFlIhvOw50UXkp45l
         9O3BTwQTDBM9VqR2/fzoiWME1NpKh6vN9TmUVKoC0euXEU3mpZl3jjjO54/u+EkkMFAG
         4c4tkRTCBl1FPvVjYTqOkaHa12EaRFEDL/vTku+vEmzVHfndOJxqxjL/8GbyAHjmjYDh
         k5XQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4Xok1sqBwKql+tBykg8vlYaCz5jt6OLJ8eTC4WoOG14=;
        b=BgdCrFiddqDijMv/aEe+Km+XzHrPp86q/Jitv5fXEc8QkkJ3sA9K33tczz1WsWxFIF
         9Z7urz40rOhW5RzDPRzjSGSaL/93F8w3uMRDLHUPi9ALzJuwlgMNdGXJTED1SdcF3wYi
         cbgZwiHKx6ojFk3zWpXCgGzonH4j6CvIzRA0pXxKZqr8j4VJjdEYOOOrJOXwp/GPpYUC
         ES1dDoaWIEHW5EnHIB/IU+zYDrzrsBGlaiDwqbQdA/AnGuqWEfLSj/sEBI9UHo56G01q
         QgOwy1rj46CikvwT5xTm1G1f1PijwIdg8+2ECHpJyMCnrg/NXY2JaEPHfmG7iM36T+iS
         EZXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=4Xok1sqBwKql+tBykg8vlYaCz5jt6OLJ8eTC4WoOG14=;
        b=Ov30ZJDg2j3p2VIR+NIu/9NqpZvV5D7g5oj/bP/AtKhlYdSJAGUTHBra9AKOYib9dF
         eOl5jQgUHM+IuH4Tsi+EwT7y0jY0+5bgcV+rDo4bWcLDXdMZNc3lRpkv0ngy/CV2JD+6
         99dTm9lPtknqfnKtwfjAFa7dGBsRn24fGqoop5Vccp3DQ+ttpCkgjRldJbanFX67+bql
         bzz5y/PGRLf3ZHb0SnIsOvSGPi4fSjHGxcnni3dLtCr6ap8nVAEdqQh7dabbsSX6MP9W
         CatLT5Sjoliq1+ozwSyx6fd0mYZl1WIjtrUD+sw5uDxsmYUE/NH63E99r5ZWZirF83K3
         3alQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530C+RvRITRxf+S5JcHzaBvwL9PJedY5yjZh4yKiCkXbDFLIOklT
	7tfbPYaNeScls387On3JRII=
X-Google-Smtp-Source: ABdhPJzJmBhZitiSeRTUh+gEtfhk0mhj/2gxs0bBF8dW8NjJuKPbDyDlJ6s/uxm41UEkO/64Z49gAQ==
X-Received: by 2002:a17:90a:6401:: with SMTP id g1mr1293197pjj.165.1609805379970;
        Mon, 04 Jan 2021 16:09:39 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:ee90:: with SMTP id i16ls445624pjz.1.canary-gmail;
 Mon, 04 Jan 2021 16:09:39 -0800 (PST)
X-Received: by 2002:a17:902:c193:b029:da:ea4f:af79 with SMTP id d19-20020a170902c193b02900daea4faf79mr55464869pld.14.1609805379308;
        Mon, 04 Jan 2021 16:09:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609805379; cv=none;
        d=google.com; s=arc-20160816;
        b=U+oPCQpUE6DlDexU30XVFaYAxth1WJYH/eOJKFY/ZRLTQ5vgRSSu8vs5pH+nz8Rrk0
         NrZwMvG9iamfQAs0gAEROWHjipOOfoovweloijUFb+kOMpFo765B/nDrOqiuU+bKYOVp
         1cQPXZ488dCbAfyG0tdx1QqmAIo7Efmj9PuRHRKJCbzXYT2rUBz3BUy+QzdY8qPp9eOF
         lP7o1qV6WOVtIH89khgZYffP8/KkBbQb9UaLxivN6s3ijg09fqWaS8rlUzEcq2WhAyg9
         umjT4cEQDR9RKx7DuwY2OEVYiBbStxjOXZcMMVjUXIfVrW6Sfq9M4OYhecuPEihCMXqJ
         UWSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=1uhXG5VLD6CUWlhDkTTNObylxsn0kU6AAjea0UpYc9Q=;
        b=T0awchVpIPEwffSo/HbXWDrYK9Gn1th5TSEtmhwOveXoP2kABzmCr6Fc7nBKUT/Dp8
         Jm/miQg2ZqXWcLrqB8bKESRSOfTwDHskQF86jTuoyoK886xF8pBZG+NwxUhcRKaoQu7+
         486QVA3inq8mOdkN+0Z3ksRytnSaxDlXvdPIDIfNzSKBtQKOLf6nubdyGZFL5g8x4IOy
         IDuop8Sk/7jY7lmbsp37FzpeCPdM2bPqcxIG5oawTO/GS1D/BGiyUk3gcT0J4tKff/5V
         W9G9aJA/I8ZtjPxA3arMrX6o113nvUK7/uQyLgmXivp2JzxOd6QHZPlPFUc7l8/+ecx1
         eMEQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Wdw5+9ay;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::f31 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qv1-xf31.google.com (mail-qv1-xf31.google.com. [2607:f8b0:4864:20::f31])
        by gmr-mx.google.com with ESMTPS id j22si3596465pgn.5.2021.01.04.16.09.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Jan 2021 16:09:39 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::f31 as permitted sender) client-ip=2607:f8b0:4864:20::f31;
Received: by mail-qv1-xf31.google.com with SMTP id p12so13920586qvj.13
        for <clang-built-linux@googlegroups.com>; Mon, 04 Jan 2021 16:09:39 -0800 (PST)
X-Received: by 2002:ad4:4761:: with SMTP id d1mr79302383qvx.12.1609805378458;
        Mon, 04 Jan 2021 16:09:38 -0800 (PST)
Received: from ubuntu-m3-large-x86 ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id f59sm38218142qtd.84.2021.01.04.16.09.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Jan 2021 16:09:37 -0800 (PST)
Date: Mon, 4 Jan 2021 17:09:36 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Alexander Lobakin <alobakin@pm.me>
Cc: Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
	Kees Cook <keescook@chromium.org>, Ingo Molnar <mingo@kernel.org>,
	Fangrui Song <maskray@google.com>,
	Jiaxun Yang <jiaxun.yang@flygoat.com>,
	Ralf Baechle <ralf@linux-mips.org>,
	Alex Smith <alex.smith@imgtec.com>,
	Markos Chandras <markos.chandras@imgtec.com>,
	linux-mips@vger.kernel.org, stable@vger.kernel.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH mips-next 0/4] MIPS: vmlinux.lds.S sections fix & cleanup
Message-ID: <20210105000936.GA3877085@ubuntu-m3-large-x86>
References: <20210104121729.46981-1-alobakin@pm.me>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210104121729.46981-1-alobakin@pm.me>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Wdw5+9ay;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::f31 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Mon, Jan 04, 2021 at 12:18:10PM +0000, Alexander Lobakin wrote:
> This series hunts the problems discovered after manual enabling of
> ARCH_WANT_LD_ORPHAN_WARN, notably the missing PAGE_ALIGNED_DATA()
> section affecting VDSO placement (marked for stable).
> 
> Compile and runtime tested on MIPS32R2 CPS board with no issues.
> 
> Alexander Lobakin (4):
>   MIPS: vmlinux.lds.S: add missing PAGE_ALIGNED_DATA() section
>   MIPS: vmlinux.lds.S: add ".rel.dyn" to DISCARDS
>   MIPS: vmlinux.lds.S: add ".gnu.attributes" to DISCARDS
>   MIPS: select ARCH_WANT_LD_ORPHAN_WARN
> 
>  arch/mips/Kconfig              | 1 +
>  arch/mips/kernel/vmlinux.lds.S | 5 ++++-
>  2 files changed, 5 insertions(+), 1 deletion(-)
> 
> -- 
> 2.30.0
> 

Glad to see ARCH_WANT_LD_ORPHAN_WARN catching on :)

I took this for a spin with clang with malta_kvm_guest_defconfig and I
only see one section unaccounted for:

$ make -skj"$(nproc)" ARCH=mips CROSS_COMPILE=mipsel-linux-gnu- LLVM=1 O=out/mips distclean malta_kvm_guest_defconfig all
...
ld.lld: warning: <internal>:(.got) is being placed in '.got'
ld.lld: warning: <internal>:(.got) is being placed in '.got'
ld.lld: warning: <internal>:(.got) is being placed in '.got'

Looks like most architectures place it in .got (ia64, nios2, powerpc)
or .text (arm64).

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210105000936.GA3877085%40ubuntu-m3-large-x86.
