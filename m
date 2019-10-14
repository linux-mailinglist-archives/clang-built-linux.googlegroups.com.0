Return-Path: <clang-built-linux+bncBDYJPJO25UGBBKNVSLWQKGQEUJMXM2Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83d.google.com (mail-qt1-x83d.google.com [IPv6:2607:f8b0:4864:20::83d])
	by mail.lfdr.de (Postfix) with ESMTPS id 51E4DD66A2
	for <lists+clang-built-linux@lfdr.de>; Mon, 14 Oct 2019 17:56:26 +0200 (CEST)
Received: by mail-qt1-x83d.google.com with SMTP id z12sf18319154qtn.3
        for <lists+clang-built-linux@lfdr.de>; Mon, 14 Oct 2019 08:56:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571068585; cv=pass;
        d=google.com; s=arc-20160816;
        b=XHI33V2Jk6vm4zWxHbXNYvrZI3TtUZWnKItyyI5d+295XpVlqqmf7THi1A1cqLrg/w
         INh9mxeFtC6SiXKIWcjmksvUt02aZGk26OFkgaxz4fQmqoMSaWjLEE3+TS7YPyvHgvqz
         t/vh9Yddz/SsTcXt0a2AJ/sMh8E0+eM3LmhcZFA6G7m1B0vUOlg+Lo0N80bHpVMC9bb+
         FP99OdKXu06r2AOXmmnQF+le+aByefNhF81yjUeik7WKYbqSp2iDjBH9Kol3vx0MDodI
         TtTZLVFJ10iQoGEkbDqZ4pxjRmDA3zqh/WUf9TIffaX0pmbNtq6ea9LZ2GKn05m+eq61
         QvKg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=//7U0hHcbfChQI4XiYOuOLrCdfYnhMqoVPq4+EjMpyk=;
        b=sAkhejeepTRdN6vTWJSHwgK2vNrKOM4hmf05KRskIC4Py171mhXtAOj96RZehUsfjH
         vFSYwhq/e286HzA6sRZBEDylVxGAR65H+gXzvJiSQy8lVvnSkl2XSczSmsyaW4rMmf8U
         SsbRIdQASIeUGcatiUPjcur9DTS+5Z7I0PV+OJ2r3Qe16hkHNnk0APiRHmBa7GZMFoVM
         jLAsdcC6hdHYGach84+mRJpKzVvgt429SPQSv98qMAfNJ0E1ljCZPzvqYn9mnaSKQeDs
         IZgG2C2CfeguxBs/2+V69TOwYKQI6UgSOrrfc/6jXZB6idTEXplrkDqHUmSIOZjAiKzN
         Sx6g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=piPpFXEn;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=//7U0hHcbfChQI4XiYOuOLrCdfYnhMqoVPq4+EjMpyk=;
        b=Qu1lpXBMd0djZemb12Fd4X/xbhzYDiKseA8TPurs/kji2p0WFoN3SKueqJGessgF0H
         wINTEF5Bk4WfHvdMBzSKbpZ7JG3yaB7HcNSiCWg3GJkbkD1To03DhAjG/C5/7z2+Qn6F
         C6ad4vkqAA5ffLlFXW/OW415JVeOBtGWw27EKYV4P4L+A++YN+fqwuRg7kIKqBA+fT38
         d2jpWPkjJkEnkNVmuMrtqcv59K6Ag+IUCA1wK6pA9PIoqJvxPJn+gzPRMZyiG8RlVg3T
         ZcRpPKlosfORJfBKAjogQ5b0aQA0j9MxnDaoNCvn5O922I7C0xBZg/4b6m2l3oCNBx8N
         icDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=//7U0hHcbfChQI4XiYOuOLrCdfYnhMqoVPq4+EjMpyk=;
        b=RKM7g5hDyAZ0/bLkKoUp7O9x/hzjMJxj/8qXxoxEWNK5JdAvAfHpaRgzOl2JcaRrkT
         BvYx++PLk3/A8x+Prcg0WHfjM/ZrfKk/pXMnAMwUwiSCVuz4lkOdUmRtlAx19K2Ju0P2
         Ik/Nj+iJ0jXwmoRIYe9R3Dni/cVt3kgUVp+hKw9I35P0y6XYN5tGGPpXbLXmuvTDMnNC
         f5Qsgkzk0hMeBJ50Wx0Cjo+aulyaxkjr9kPSr6m6drKwlxcemNkKH4NjMJBGJibu+pp2
         2WH9IJD0bH+4lfTqs1aY1oR08/kkaWr/1jRrzBOGatI4CCLCe55quY2S2dWuZJN+ig7g
         0bHg==
X-Gm-Message-State: APjAAAVTEfM8xAYMPZX9KeQ1/gDXiIg/bFcYmZLbVcS03LSroTwEfXLz
	nKPLb2xwfUe4eKybyjQ15Xg=
X-Google-Smtp-Source: APXvYqxNXBhyCn6FiTJ1qw6qMm36PuSjdtd/Yb704CBTFG3VcWwOfh9arCiQB6UwXIC08vhzJWWrQQ==
X-Received: by 2002:ac8:3f01:: with SMTP id c1mr32675465qtk.28.1571068585238;
        Mon, 14 Oct 2019 08:56:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ad4:5384:: with SMTP id i4ls2655100qvv.8.gmail; Mon, 14 Oct
 2019 08:56:25 -0700 (PDT)
X-Received: by 2002:a0c:95d2:: with SMTP id t18mr32224452qvt.50.1571068584963;
        Mon, 14 Oct 2019 08:56:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571068584; cv=none;
        d=google.com; s=arc-20160816;
        b=yG7gXwsFYN+PFJR5FpWK8xZ4GHTQ4wxMR0bXuaQFEheUZXusm/7bW8j0mNJuS2Ukg5
         8QyXdEEf3y663Qfm6UH7mnKnHVUO0i+OJN4RMiJsC1Q3ygWt/lpWGjqCA9L8dm983DoE
         5ZtA0/dp60hgbDSl/O9gxUpZ1TP/PjbetHcIdhByDnqEYUtcq2RiRiXW+FWrOiDe3+q/
         CyyEpnjG2/GOs96UAcYZv/A9cMGndBYMctS63rk8RHjZ4hdxdPyghuYSfeonXVKNUdJe
         HkCtzMEDPYsrFA8gYy2vm3sYYjmXW3y0BYBKTjuFCQr3Ksw1OEMpb27/hs4pE5xYYUho
         MiFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ysKHeAWhWiDqGIO4lKEHL4zmOQ8xwTlvBSOxqXeT+Gg=;
        b=uf8SfviGG8x+Fqfb5ah/ddh64nGgyL2JJ5wjYg4U879Z7JtL/NPpt8OUJ3HVefKNp7
         D0iWm1H9iPj93i0sAjRVOEE14fcfzAmw3lKsPNgTsWIkXf0eiVERJdP63Z5/8Kzh3rE5
         C9qn+sTHpLoS0js3/OBkm8IjPvIoxj+JXgDmNSVTOHk0FoOscB934yOKmElOpsHWTsYv
         4QBTjvhyC9azwjR0YaPrLTePTerCt/Muqaur9STkCg88wBe6mBzExyN+Rg6hGIiMiUlC
         GJX/tU8oIDzEOog/zxSZGcgDUpFT0IVSkVajRKJMauujgGnnv+rAkPI9xX1lrCTrQFMM
         IQWg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=piPpFXEn;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id o13si998755qkj.4.2019.10.14.08.56.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Oct 2019 08:56:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Received: by mail-pl1-x643.google.com with SMTP id q15so8185382pll.11
        for <clang-built-linux@googlegroups.com>; Mon, 14 Oct 2019 08:56:24 -0700 (PDT)
X-Received: by 2002:a17:902:9b83:: with SMTP id y3mr30287723plp.179.1571068583499;
 Mon, 14 Oct 2019 08:56:23 -0700 (PDT)
MIME-Version: 1.0
References: <20190911182049.77853-1-natechancellor@gmail.com>
 <20191014025101.18567-1-natechancellor@gmail.com> <20191014025101.18567-4-natechancellor@gmail.com>
 <20191014093501.GE28442@gate.crashing.org>
In-Reply-To: <20191014093501.GE28442@gate.crashing.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 14 Oct 2019 08:56:12 -0700
Message-ID: <CAKwvOdmcUT2A9FG0JD9jd0s=gAavRc_h+RLG6O3mBz4P1FfF8w@mail.gmail.com>
Subject: Re: [PATCH v4 3/3] powerpc/prom_init: Use -ffreestanding to avoid a
 reference to bcmp
To: Segher Boessenkool <segher@kernel.crashing.org>
Cc: Nathan Chancellor <natechancellor@gmail.com>, 
	Benjamin Herrenschmidt <benh@kernel.crashing.org>, Paul Mackerras <paulus@samba.org>, 
	Michael Ellerman <mpe@ellerman.id.au>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	linuxppc-dev <linuxppc-dev@lists.ozlabs.org>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=piPpFXEn;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643
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

On Mon, Oct 14, 2019 at 2:35 AM Segher Boessenkool
<segher@kernel.crashing.org> wrote:
>
> On Sun, Oct 13, 2019 at 07:51:01PM -0700, Nathan Chancellor wrote:
> > r374662 gives LLVM the ability to convert certain loops into a reference
> > to bcmp as an optimization; this breaks prom_init_check.sh:
>
> When/why does LLVM think this is okay?  This function has been removed
> from POSIX over a decade ago (and before that it always was marked as
> legacy).

Segher, do you have links for any of the above? If so, that would be
helpful to me. I'm arguing against certain transforms that assume that
one library function is faster than another, when such claims are
based on measurements from one stdlib implementation. (There's others
in the pipeline I'm not too thrilled about, too).

The rationale for why it was added was that memcmp takes a measurable
amount of time in Google's fleet, and most calls to memcmp don't care
about the position of the mismatch; bcmp is lower overhead (or at
least for our libc implementation, not sure about others).
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmcUT2A9FG0JD9jd0s%3DgAavRc_h%2BRLG6O3mBz4P1FfF8w%40mail.gmail.com.
