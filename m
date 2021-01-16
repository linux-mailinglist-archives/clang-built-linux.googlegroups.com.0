Return-Path: <clang-built-linux+bncBAABBHUQRSAAMGQEPBW5HHQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb38.google.com (mail-yb1-xb38.google.com [IPv6:2607:f8b0:4864:20::b38])
	by mail.lfdr.de (Postfix) with ESMTPS id 826482F8D98
	for <lists+clang-built-linux@lfdr.de>; Sat, 16 Jan 2021 16:37:03 +0100 (CET)
Received: by mail-yb1-xb38.google.com with SMTP id x64sf11698135yba.23
        for <lists+clang-built-linux@lfdr.de>; Sat, 16 Jan 2021 07:37:03 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610811422; cv=pass;
        d=google.com; s=arc-20160816;
        b=RW/qecwqbaKd3W3zcR3Sqq4gB2ZltwAhYrpbBPxBtV7k2EvIyA3fNWvEYExR4Myv5L
         25yETNbSsiKw2ESN+VDaOB0Tl9cASxWfILAle0RBfu1+Qvwoig4wLjBvb2Mdmnan3moZ
         //9D5enDkdSvteSIQ+JpIVigMJE82T7LnxvbySzgj9RAjd+yIRV7kLiJonkRLyPwHl9u
         3K1Cy2Qb5hFCelD93v1mK4xOjvAgldvDhEMHnmJ2rBgz00FwrFGyQzsH48Z7NlQnPZHm
         41+YDvHWsM7IjMVMIBhvekGGR8L/FMxmkaWNrnT2sKDX+tY0tV+qFmPGNZQPuQx8jjB0
         OhwQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=5wl/NyT9fzIMRhK/fh4l6raAKVfzneh4+bWHhK1hjsA=;
        b=jdDe0aAb9mcRQ2XgzEQ4G962PX5Gxw8WYwhvHdK45kl/e9YlJMIrODxNhaE1BjZMZG
         uCR89TMX+RICVSL0Km0x65jDFhNNScET+jUp+IUdCa24jps6aU45DeZwBbvlH9arK7HG
         i7qmUgEnIl7i5KTbGvuY2h2OHUanASqEVOGK40zf1uwPkDMrAUarxH1VNY4Nm67iqGlP
         2YB9COuWhQ90L+JldVxhini2E+WWj+EyWoUo55ZKW8+iaMWzK4CEb9GO0vc2lA2195JT
         V4Ogk++0+n7E5s98gml5l97DbD/XzJ3uv8fv0p+6bMBRjRZbr2NuBzYlkkiT48aCFOeJ
         qWBw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=il3FDsOs;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5wl/NyT9fzIMRhK/fh4l6raAKVfzneh4+bWHhK1hjsA=;
        b=Cf/f2E/3J6vtUxpIRDnZ0cDHoc3FP84TLCcuN1rbTZbnQQ9RR2TSGsBWVRwPpWTJq2
         wNVnXvUsb1rPCPJ3rQAR8s5ofmPU+6d3jKmWuycRcPDDawnigxyT/l63Ww47WTbu26XM
         dO7KsP2OXomsyi0RPdHYTZSkltbTJVdlShyFlwPA7zQWlJ03pZvD/YpnHMbofm7OWWKG
         VeW7JyWdbokzg6gb2gFEYVF383iwhHcCzPlYtyCZKKgRrBtGfO6mdcHCV8dcesfeBxQd
         km4MNw9QnhGmT8aJ7epY4nolmbWs1HOc3g84mUlkIQIJh4YZcljCpNvepd/GmKxAKLuf
         /pvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5wl/NyT9fzIMRhK/fh4l6raAKVfzneh4+bWHhK1hjsA=;
        b=clBetRub2p4Kq6GCtMg4udTSW5ttVoEw3YvqiUX+XLip5vxcOMYFtlHQpVw37ZAKLz
         i0m6Eiyw0mlP9yvzKPPKEasqrmHKuDtqknhm8d6pJfDiywW3h4s1pKsCE0NQqfi2uZoz
         dI2aD+tEA2RyhgqPJ3FQGFCHMrhMsgCMwEQcLbcFr5+p9l3DLG7LKWgQBJoJJ96Vee2S
         bh9bT3JcEke1WArjWqCauW3Rvqkyj+GZoMX0zP6TjY9Fmwl3IyhVqsIeJcOuiDuzb7Wa
         Qp8Iz19O+Vg7VU7VPKyWr7gA6SglJek2bL73QUOS20ic8J+x91NCEyWf7fcRxJeQSyzJ
         Qb3g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532KBQN0zDmPJKecF+QWVfFU6lKPzHKr9Khfxg2/ZoKBpB70ti+7
	VJY2DtZ5iABmAGbfAwp+fgk=
X-Google-Smtp-Source: ABdhPJzawDeswuQrENUQvtln7+TO13PMir9NtVv93Se+8Is2Ly7NkScu3+6Iad85JGObr+kF/2bgPQ==
X-Received: by 2002:a25:1e02:: with SMTP id e2mr8185119ybe.57.1610811422592;
        Sat, 16 Jan 2021 07:37:02 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:c594:: with SMTP id v142ls5943563ybe.9.gmail; Sat, 16
 Jan 2021 07:37:02 -0800 (PST)
X-Received: by 2002:a25:d644:: with SMTP id n65mr21453801ybg.55.1610811422207;
        Sat, 16 Jan 2021 07:37:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610811422; cv=none;
        d=google.com; s=arc-20160816;
        b=dej0qaSULU0oCmhRcI1g0gXBt7e5p0Y7OnEewhw5KhsvD//T5JjUAN0Vq8SJenHhHD
         beWwlOESO38xaEk6C8YPkgDaHCCpLE8rrmV9yL3Ia7Krt+d+B1q/mxf36kv/HG7MwMHM
         WGvNv7af8zCctzLgOkPB2WO/yEBqgJppFpqi5S15KR6CudJ31mIBuMJSV6F8/+NIbFJN
         VwKQWRuxSvytNk9afOfSNqis6pmULs89t63Pkh46ggCjQVM/HULFvQzahpHI38pE8UFb
         Q41EWzRDhcXCu0f9PzNxRzzu2G5nLiDbkPkrXIdv5biWhicd0v+jdhH4S9Rho6m9VLSS
         HThQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=HQ1G34ITMbeyMotDNRPLoEJ5820Wfc8xDV31c9Hid9Q=;
        b=gvi75Ew/x6n9InTUMfZpWuUBKrGbvRO6ENcmsWYi16iZNAfdKfaubS7/Dut63ZlbT5
         naEcpR/qQHR1GP/1k3EnmdRU5gk8FuqJ6Lwql8Vn/E4i4lWSViyRNXk6imHduG+gvSxz
         XyaF5eicfFiBYDWB2+n51RDQTdFVRV2lbwP08OHkq310RTlnX/t2Om8PekEMpmXYSu/P
         TWNLdFK/ySQRSPX7tZw4KEoA7BcTIRCPJ8iBJNApic8e9omjFC/u+lX+qiQ9uG1rPcrI
         yK0rZR+pZIFmajxtpFwn4hANNgyTYlJ9Utv0uwedb6Kuo/nhqe1yKf0Q0MQv8ItTyZe4
         OqOA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=il3FDsOs;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id k19si985756ybj.5.2021.01.16.07.37.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Jan 2021 07:37:02 -0800 (PST)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 28A3A23339
	for <clang-built-linux@googlegroups.com>; Sat, 16 Jan 2021 15:37:01 +0000 (UTC)
Received: by mail-ot1-f48.google.com with SMTP id o11so11734643ote.4
        for <clang-built-linux@googlegroups.com>; Sat, 16 Jan 2021 07:37:01 -0800 (PST)
X-Received: by 2002:a9d:7a4b:: with SMTP id z11mr12332724otm.305.1610811420486;
 Sat, 16 Jan 2021 07:37:00 -0800 (PST)
MIME-Version: 1.0
References: <202101160841.jUXjdS7j-lkp@intel.com> <YAJIhjzmvszXAXUb@gmail.com>
In-Reply-To: <YAJIhjzmvszXAXUb@gmail.com>
From: Arnd Bergmann <arnd@kernel.org>
Date: Sat, 16 Jan 2021 16:36:44 +0100
X-Gmail-Original-Message-ID: <CAK8P3a1FTzwK=xK2eC5hiBSC+Xjq1eNO_cv3=CRB4csNiMpsUA@mail.gmail.com>
Message-ID: <CAK8P3a1FTzwK=xK2eC5hiBSC+Xjq1eNO_cv3=CRB4csNiMpsUA@mail.gmail.com>
Subject: Re: [linux-next:master 952/3956] crypto/blake2b_generic.c:73:13:
 warning: stack frame size of 9776 bytes in function 'blake2b_compress_one_generic'
To: Eric Biggers <ebiggers@kernel.org>
Cc: kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linux Memory Management List <linux-mm@kvack.org>, Herbert Xu <herbert@gondor.apana.org.au>, 
	"open list:HARDWARE RANDOM NUMBER GENERATOR CORE" <linux-crypto@vger.kernel.org>, Arnd Bergmann <arnd@arndb.de>, 
	Kees Cook <keescook@chromium.org>, Marco Elver <elver@google.com>, 
	George Popescu <georgepope@android.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=il3FDsOs;       spf=pass
 (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=arnd@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Sat, Jan 16, 2021 at 2:59 AM Eric Biggers <ebiggers@kernel.org> wrote:
> On Sat, Jan 16, 2021 at 08:59:50AM +0800, kernel test robot wrote
>
> Looks like the clang bug that causes large stack usage in this function
> (https://bugs.llvm.org/show_bug.cgi?id=45803 which is still unfixed) got
> triggered again.  Note that the function only has 264 bytes of local variables,
> so there's no reason why it should use anywhere near 9776 bytes of stack space.
>
> I'm not sure what we can do about this.  Last time the solution was commit
> 0c0408e86dbe which randomly added a 'pragma nounroll' to the loop at the end.
>
> Anyone have any better idea than randomly trying adding optimization pragmas and
> seeing what makes the report go away?
>
> Also this was reported with clang 12.0.0 which is a prerelease version, so I'm
> not sure how much I'm supposed to care about this report.

I sent a workaround to disable UBSAN_UNSIGNED_OVERFLOW an
x86-32, after showing that this did not affect arm32, arm64 or x86-64:
27c287b41659 ("ubsan: disable unsigned-overflow check for i386")

As the report is for ppc64, it appears that this is not just specific to x86-32
after all. I have had no success in isolating the problem in clang, but I
did not try too hard either. I see this .config also enables
CONFIG_UBSAN_UNSIGNED_OVERFLOW=y, so it would be a
reasonable assumption that this is the same problem as on x86-32.

There is also another thread on CONFIG_UBSAN_UNSIGNED_OVERFLOW
causing BUILD_BUG_ON() failures.

        Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a1FTzwK%3DxK2eC5hiBSC%2BXjq1eNO_cv3%3DCRB4csNiMpsUA%40mail.gmail.com.
