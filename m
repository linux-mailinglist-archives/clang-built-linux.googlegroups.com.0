Return-Path: <clang-built-linux+bncBDYJPJO25UGBBTOF43ZAKGQEJJAPYVA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3a.google.com (mail-qv1-xf3a.google.com [IPv6:2607:f8b0:4864:20::f3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 64D17174327
	for <lists+clang-built-linux@lfdr.de>; Sat, 29 Feb 2020 00:31:27 +0100 (CET)
Received: by mail-qv1-xf3a.google.com with SMTP id n12sf3967783qvp.4
        for <lists+clang-built-linux@lfdr.de>; Fri, 28 Feb 2020 15:31:27 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582932686; cv=pass;
        d=google.com; s=arc-20160816;
        b=AErlOp6oizuD5PnRRECHtl/Hrrs/64emFHJd/ksotQq96Rn5k3OCPbPPLN4vFQbZTj
         oG9y5vNuWUEDD5LgDlon/QqtYAqhQXvo9NGj9jddoE7Fl9bMfpsh98Xvrjg0bTVjKEah
         NnO3mt0aEbG15fQW6Qnr/GXet8HzTjG+NGoAABZwJT0Mja4Rqd6hWapyAbsH8yT/oGqr
         jXn0MdSlRKvuiEtUZvo+HatOTyMP7NQB0UtKssZg/Eq9RfyB+TM/xp9gkgRMhhAdlJi0
         Ck8f6gyRW1K/WST2KNivKTIEYHLIXC9CiZdDmrZSAcwwRISq/ZE8+XpFNMlQFshAs0b7
         ujrQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=JCFFKHUbp7PKoxklzhh/7r4zAe9HKzI6YojpqPULS8k=;
        b=IzBQ3YQNl5dS2nrytXTEAAqyzhqCYtEYLplmPAtEHvxli0qSAcllWSn7I+kEQTeAUn
         BreT+Vax5lqkosoCi75y83FMYdkQrG2LaEfSmEfPTvSwpNDeOPxYP/w5s/IUjF/y7YlN
         i2wXQguvoNVN8FpGfbwQr+C8+FexwVEUgfm0A4saoLB7JITcUTsxtkPMz79jvqxDIPZw
         Swc1SeRpSWybJAol0OKW1Dc9aApjeJy149TUViDbPkxYFMdeKfCpMJeADgUTt4k2ij4Z
         PtGQTlE9eBhOWZMJHCrvjZ/6zfvIcWZoOmT2ZUpiXjPwR7Gsp7RGxy/7zo9rrvWHYssw
         B5/g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ka2sNPSZ;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JCFFKHUbp7PKoxklzhh/7r4zAe9HKzI6YojpqPULS8k=;
        b=sl1DzTf7uq240r3cLPGa9uMgMLoAAEK8nWjCTJ+kmNGjux9h3fhHjtDEUCsH2tAGpv
         nlLPDzyCFFUUzhuIjgtEZ2bboZrgOZ4ZC42qmMzs4RRQHKEmNMPOU6KDvQXTObNUp08i
         6N5NtjnWEDeQiML1xjZF0PSo17jQ8sfQ5rP4oa7gXazM3117Tk/xMzkxBDS72a3x1Hvx
         s2N90eqw9V9A2u8mMQfMFib5sQZ8vbJ+PGXdTj5PqUH9cjHWGfNe7AefB8ULS6qWOg27
         JnomQDHiztu0RMofdQCuGsIQLlHZQ0MZ/QcnSBlSBtDTTwFacMAzxyJFvWXP5NDY8TOb
         Pn1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JCFFKHUbp7PKoxklzhh/7r4zAe9HKzI6YojpqPULS8k=;
        b=CKTx+WDLcuVbPQK4ujXDcU4gRSfsObxRINwPpYfzUuQBuiEbc43EA0s64UO7875uC/
         fwkwzweYHf7mVncit97XMISAvjEO3R3jvFSdCCgxSWITzmM6V+G5FXyGoNO/KcTaonYJ
         8iT9UC6dldU6VXGLd9zH+J7QJro4h8/md7poIc99OnP3Q4WTwF44ILwkn+YoV4r6zcW8
         9KQBzAWXjK7Pp4NODoXPrux+j6aEPa9RmxXoEuiM84x3Y+o+p1U9Shpd/V9mkHg9vksX
         OSvy70wsfIHWFudOSI3a1Knbr6zWuULYUStyoQbmHUV90khvLPcCapT9SGknGSeWkj4c
         clYQ==
X-Gm-Message-State: APjAAAXFk+dcssA3fFBgc8ywOZC59YlyBpo2T6dZIKm0JHWy40KD9DdA
	yxBvMWdJP2Ntcm1QpawLhKE=
X-Google-Smtp-Source: APXvYqxfIbGSlRuBgSJ3e8ZDMKZLfGB9cqIbiXg0QDw3OYPpZTRLgKSyz7IzPY9UTzCRlVn7AnIodA==
X-Received: by 2002:a37:5083:: with SMTP id e125mr6548849qkb.49.1582932685936;
        Fri, 28 Feb 2020 15:31:25 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ae9:eb41:: with SMTP id b62ls2293103qkg.6.gmail; Fri, 28 Feb
 2020 15:31:25 -0800 (PST)
X-Received: by 2002:a05:620a:1597:: with SMTP id d23mr6973867qkk.285.1582932685536;
        Fri, 28 Feb 2020 15:31:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582932685; cv=none;
        d=google.com; s=arc-20160816;
        b=N8OcnpGRgRkps9KgOUzd6oUowbM0KfhP0tuR4uUxUsHEqTPuTmeBQKXb4L7WNPb1oZ
         f/LU7r8UhuWI9Wx6qFJQnDx9BHNTCcw4UOxDZh1KT+BkygPQG01g2qi61mIIx3fGU8Xa
         qYUcXgeDjpjD7ugkyHqMTP3SLNcjlRuvC+JM6A6NC+qfz3uvX46+GFBVOtEKeEJKjQuM
         ygWA8x6KtYyJG+fJFCUInfLqj+pNgp2KatGDF/zX79n03h+zgyURrStBWepoZzwBZhyv
         3Ie4Vry78+AZd0/PxlTamA1VVC6/BMDGo6DuWBGZPOhAIoNVZvZ0W/+tphYSR8C5N/LX
         vxbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=0qEnQNDgP8LJynRt0m/ZmXhR+8sikFtnuLmVPIQx31w=;
        b=cW7VEiX+UPuZP/hEeh3lJcjwzQ78NlVlim5hJxgAYuTR2FDdugTtQncucf9BrDmmo5
         nmumT6uX+8/6I+qM2KEIbtK36YuDOemBPUk6MaxO5pcOK1Vh5r40iyLbks1QwLDy/CDe
         QEVZENDcL3qc0tA5RAbsh/sfnMhfr0tXYSs4KlI2lFkEduTyOeqZavaBKxB/ARHMOWVG
         3IochpdhlU5DXtNTs8DbXVTFCptmkNgdkTSmefGdIy2IkHwPPg0Pmpom82nErsow03p+
         lfM84Fj2t/OQIvHnjlPK89892Am734sxiIRnCXWIcgMbn4mELeuU1Le0fnC+0OndBDFn
         3Lmg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ka2sNPSZ;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id x5si322754qkh.0.2020.02.28.15.31.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Feb 2020 15:31:25 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Received: by mail-pg1-x543.google.com with SMTP id h8so2274547pgs.9
        for <clang-built-linux@googlegroups.com>; Fri, 28 Feb 2020 15:31:25 -0800 (PST)
X-Received: by 2002:a63:4e22:: with SMTP id c34mr7112819pgb.263.1582932684269;
 Fri, 28 Feb 2020 15:31:24 -0800 (PST)
MIME-Version: 1.0
References: <20200227213450.87194-1-palmer@dabbelt.com>
In-Reply-To: <20200227213450.87194-1-palmer@dabbelt.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 28 Feb 2020 15:31:13 -0800
Message-ID: <CAKwvOdkgpvxCfBQNDaaZ7BpGsQqwkoukp=nAUhnoLC_nZTR5gg@mail.gmail.com>
Subject: Re: RISC-V: Fix the build on LLVM-based toolchains
To: Palmer Dabbelt <palmer@dabbelt.com>
Cc: linux-riscv@lists.infradead.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, kernel-team <kernel-team@android.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=ka2sNPSZ;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543
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

On Thu, Feb 27, 2020 at 1:35 PM Palmer Dabbelt <palmer@dabbelt.com> wrote:
>
> The RISC-V LLVM port has progressed to the point where it should be able to use
> it to compile Linux.  Unfortunately we ended up with a few GNU-isms in our port
> so that doesn't work out of the box, but I don't think the code without them is
> any uglier than the code with them so I'm happy to support both toolchains.
> There are still some issues using the GNU assembler to compile clang's assembly
> (at least got_pcrel_hi, but there may be others).  I'm going to call those
> binutils bugs, though, and chase them around over there.
>
> While the first one could be considered a bug fix, I think the bug is unlikely
> enough to manifst that I'm going to wait for the merge window for these.  I'm
> going to preemptively drop them on for-next now, but as I haven't really
> started building that branch they'll be rebased (my current plan is to start
> taking 5.7 patches on top of rc4, as it seems like things are shaping up to be
> fairly solid on our end).  If there are any comments I'll handle them as part
> of the rebase, but I'd like the various autobuilders to start chewing on these.
>
> Unfortunately the kernel compiled with LLVM doesn't boot for me.

Thanks for the series! In general, our approach for bringing various
architectures online has been:
1. get it building
2. get it booting
3. get it running well

For most architectures, 1 included 2 (per chance).  Mips was a notable
case of 1 not including 2 due to undefined behavior we found and
removed.  There's always a chance of compiler bugs, too. With the
above series, we should now be able to start digging into 2.

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkgpvxCfBQNDaaZ7BpGsQqwkoukp%3DnAUhnoLC_nZTR5gg%40mail.gmail.com.
