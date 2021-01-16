Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBAPMRSAAMGQEZNMICAY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73d.google.com (mail-qk1-x73d.google.com [IPv6:2607:f8b0:4864:20::73d])
	by mail.lfdr.de (Postfix) with ESMTPS id BB1E12F8EBF
	for <lists+clang-built-linux@lfdr.de>; Sat, 16 Jan 2021 19:52:50 +0100 (CET)
Received: by mail-qk1-x73d.google.com with SMTP id q7sf11984082qki.16
        for <lists+clang-built-linux@lfdr.de>; Sat, 16 Jan 2021 10:52:50 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610823169; cv=pass;
        d=google.com; s=arc-20160816;
        b=P6UxrIKMXL1bNIOYdT6FA6Z7lSqYYtsOaKt+2ByYX5a+Pz+onNKO6Wq3WeXZHarjEN
         S7UnVcA9pS4WJdMBXnOpqkWVS4bQuAIvdLtddmwU1uGW2RYTf4ffOhXj/8nxbmXqDb1S
         HJHjfrtgxIUCsHK3dDpWmDG60FH/gPaX0N6Vyb7y6UV+VAK0BgboWpsdfkdFwYywRBs1
         PefoM0JYnr99NWe+0CER/bsjpK+Zj4mpXG1Q3xMtYDn6wRrbIL2+2JsoU0gc3N4MlwPx
         NisiEsIfTnlPACLsstht81jkULvgOzVFneHgPjOIO+uYVR5bAq6inDIkMixhbfTG6Xmi
         0c7A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=2+ayKWTIMn0cwvh5UZGK6Qu5tq97kw+8fQRWkKSeF7M=;
        b=flYQs7ZsR6FF7FpzSR0Xw3bVFN8jNW4wbXBEp3jdhsOM7GIu3ZU5fKL5Wd8xjVxoVA
         H+itpXbdMLURsIV6dMg4Bdvn0qKHZ9hkPQcAMxWFWLtg2+fAJS0JbgCks19IYWSmdEJJ
         kiLAhK6rrn5VBp5txYHcH5HHdiUEsdvzY7nMQy0rDIoc2tJgDnSCa1HlX3f+YcKhHc09
         ciAgk41qUC+S1Da2tFUD6MQw9Km51fluKYnYYBLiErgQ8nV1XKLYlU2FwU1VHEt84RfG
         iPjaEZWhohxSlzGL3mKJjyK9oPlmvRNqtNnWl2tfBkGGrTS9MWm3Hnj5lleJ7sZFTGgV
         kgMg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=n12xMXlT;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::729 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=2+ayKWTIMn0cwvh5UZGK6Qu5tq97kw+8fQRWkKSeF7M=;
        b=mBCRc9jgUdTtJd3uUexZig0qoXd3M4Aymr4bgM/FZ6RN3lBpUexgIz1k0L9Y2KSJ8v
         bYRtdUA9RPZPia38P6HSFouGSAyQ/4xPR8HLwtnB1qnNm56SPT8miJunYpSnQHyevkxk
         +VhNuROjC5ulwOlalEzJb6OUTPEFVvSyEw22sz27AXYYQTOndDcuy4bUEJfPR/HHdmmW
         qdxG4mmD2XZBcPaz5dLW6ikWecbitJVSig9YZL1rNiACYm9zTOfWAznH3MjXersPpQKd
         fcPNaJKJj8AEroY0xm0y7Wj1Pl/sXBofXwKUa3Q/z/kGX1WeA8511Lla2HzaDIuOAj4K
         xn3Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=2+ayKWTIMn0cwvh5UZGK6Qu5tq97kw+8fQRWkKSeF7M=;
        b=dCNPTfW3QL2DofHWJdr+RJ05FhLPVA15VWc7tSyZtwFZm3cxzeqYz1PqQnEykVsNrc
         6fa+86od8H4460GzlTOpMVAS7A1w8xDJQz60GM4Hp8X9VjrPuBDLJGKR4/qrO6bw8DDb
         +nb6wVp3Bw+KgsJngsfEKXCphDF3yRPsYOHo2LLSVPFOx2tSMlxbmkpcjVd0DA7Khg1X
         pE3R2+M2JsHuP4+wIRGpaqoxL4LmCX9q+v/1v/NnwkXkG0eYzu4dun8oGM1YIbhVK2Yi
         RVDsmv+LJS9FKNHnKIJB5nVi2GX5x6iN9XjgKAZ0hMy2FB34DasU9f50NvEPVhMnYLzo
         N2uQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=2+ayKWTIMn0cwvh5UZGK6Qu5tq97kw+8fQRWkKSeF7M=;
        b=gKo1UCNfY3p/zMZrC5CZ7maT3JAVY9v9WD9XBWdohm8ZhIxtDUvVcG14p4aJ0vHtW+
         +vRNJm4xrrsdc0oc6/JFNj/OSD/K4yC1GOZ+4mH5xbJCORO9eDCXMJWvAMP8SkRpWkL4
         /+COXN0mc7bULB74oPbOmkW72wUvzh0eJLAeI1Jc3iN9bsOoUlgKKE7tjHpNJwdgr4fU
         4qmOiJdA6ImRh0AJHoplGzhA+I6FiUWzQVFlgv1NpeDJzFHpUQ+6HXljqyN2Vh21L0Cx
         bZIQYwcrigzPw0xPEsdPineHmXsLdL7smBJHt/x8iocoFX2x80/jBMnRh3pd8cBvcJd7
         2Z4w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531If3RnKe3WnLUSzmXpasGlV9GW3y5PcBDPIdDQE7M4I5+pYSfx
	09+C8IiV/Ew10eQ6+iFaDGw=
X-Google-Smtp-Source: ABdhPJy/JC2ZmDy3TMTK2q3eMK+olvppvCfSAgJ5djRRhMhlIIbYCfti8VBfh4giODFTlV6A/qgnlw==
X-Received: by 2002:a37:b6c6:: with SMTP id g189mr12358950qkf.432.1610823169856;
        Sat, 16 Jan 2021 10:52:49 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aed:3fad:: with SMTP id s42ls1478247qth.2.gmail; Sat, 16 Jan
 2021 10:52:49 -0800 (PST)
X-Received: by 2002:ac8:44a2:: with SMTP id a2mr17014172qto.91.1610823169480;
        Sat, 16 Jan 2021 10:52:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610823169; cv=none;
        d=google.com; s=arc-20160816;
        b=b6roKvKds2/tOzSZSTXOFoaB5UaypMz1GEwNW5zVM/VbfA8+P7/lqTRgsEhObXlE5k
         ZKpi3EqmjP2Sa93q+aZmRGiiHYCuBvoUB90a9DL1pfqus5VsZaN4PmPxVB8OMMQ+U7Pp
         WqoTuKYMLPk7Bv0aomaRjnNtBJ9o0bx/jAKv4s7wtE3DYfo9YKUNQMpZJwd33eADRMe4
         5/g57pHfhAHWflqTpttQtr7JkP7caHJIMu20qR1qfSHyuIIjbG1wMTj4M7zN15dvsDld
         62BQXBbx9smBjirINc/eTHf6+xDGK83cCRJeYlBUknFFOXZf4qeA7/bllye3KEfCtf2D
         +gCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Ua/LuZsrNlCeFTfbXFziWkITBqn89svS3225QAvKj0A=;
        b=QZ6wWZCgFB1MVoss7PAV/qrb/1UnhugQkPJWJCauj6cCv+qMgav5K5GJBKVWb9qTJE
         rrb93d0pCh5y829emGtuPNPGPEeCPrxPh61ei31DNIQ2JdddUyUpsam9kx/CEkIv6ZbE
         HR1mGvner36LoDxoHDOEKmwuJSVfrK/au82ag0297mdlCPIUkStBna+eR2AQWh809qr6
         GuNRYXvomWmF1APUkT3I7YALPTKjFWXYlkMp5Qi0yy1kI/TfaThDGcogR8o9317Py9zn
         CAn1V7bbdlfrK5rVlA5KiUbF6u5uDbB7qM3siuqYPbBHJiBcdAzhT324iAGO6P67s0bl
         KrxA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=n12xMXlT;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::729 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x729.google.com (mail-qk1-x729.google.com. [2607:f8b0:4864:20::729])
        by gmr-mx.google.com with ESMTPS id q66si747412qkd.3.2021.01.16.10.52.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 16 Jan 2021 10:52:49 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::729 as permitted sender) client-ip=2607:f8b0:4864:20::729;
Received: by mail-qk1-x729.google.com with SMTP id b64so15073953qkc.12
        for <clang-built-linux@googlegroups.com>; Sat, 16 Jan 2021 10:52:49 -0800 (PST)
X-Received: by 2002:a05:620a:b0f:: with SMTP id t15mr18389126qkg.485.1610823169107;
        Sat, 16 Jan 2021 10:52:49 -0800 (PST)
Received: from ubuntu-m3-large-x86 ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id w42sm4349496qtw.22.2021.01.16.10.52.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 16 Jan 2021 10:52:48 -0800 (PST)
Date: Sat, 16 Jan 2021 11:52:47 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Segher Boessenkool <segher@kernel.crashing.org>
Cc: Michael Ellerman <mpe@ellerman.id.au>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-kernel@vger.kernel.org, stable@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Paul Mackerras <paulus@samba.org>, linuxppc-dev@lists.ozlabs.org
Subject: Re: [PATCH v2] powerpc: Handle .text.{hot,unlikely}.* in linker
 script
Message-ID: <20210116185247.GA2491296@ubuntu-m3-large-x86>
References: <20210104204850.990966-1-natechancellor@gmail.com>
 <20210104205952.1399409-1-natechancellor@gmail.com>
 <20210116184438.GE30983@gate.crashing.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210116184438.GE30983@gate.crashing.org>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=n12xMXlT;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::729 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Sat, Jan 16, 2021 at 12:44:38PM -0600, Segher Boessenkool wrote:
> Hi!
> 
> Very late of course, and the patch is fine, but:
> 
> On Mon, Jan 04, 2021 at 01:59:53PM -0700, Nathan Chancellor wrote:
> > Commit eff8728fe698 ("vmlinux.lds.h: Add PGO and AutoFDO input
> > sections") added ".text.unlikely.*" and ".text.hot.*" due to an LLVM
> > change [1].
> > 
> > After another LLVM change [2], these sections are seen in some PowerPC
> > builds, where there is a orphan section warning then build failure:
> > 
> > $ make -skj"$(nproc)" \
> >        ARCH=powerpc CROSS_COMPILE=powerpc64le-linux-gnu- LLVM=1 O=out \
> >        distclean powernv_defconfig zImage.epapr
> > ld.lld: warning: kernel/built-in.a(panic.o):(.text.unlikely.) is being placed in '.text.unlikely.'
> 
> Is the section really called ".text.unlikely.", i.e. the name ending in
> a dot?  How very unusual, is there some bug elsewhere?

No, this was an intention change done by LLVM:
https://reviews.llvm.org/D79600

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210116185247.GA2491296%40ubuntu-m3-large-x86.
