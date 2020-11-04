Return-Path: <clang-built-linux+bncBDYJPJO25UGBBBUORT6QKGQEHS35ARQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13d.google.com (mail-il1-x13d.google.com [IPv6:2607:f8b0:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E1FF2A6E54
	for <lists+clang-built-linux@lfdr.de>; Wed,  4 Nov 2020 20:54:47 +0100 (CET)
Received: by mail-il1-x13d.google.com with SMTP id g14sf16376841ilr.7
        for <lists+clang-built-linux@lfdr.de>; Wed, 04 Nov 2020 11:54:47 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604519686; cv=pass;
        d=google.com; s=arc-20160816;
        b=KI/k4IyBOL1gVHar2XhCycuU0vMoF7oki4ITQjazZO9NqKxASfLYw/QXnbVnaouxgv
         ZJkA/4JfdJMskNbFK/+Gg1o79q9jS3xdX3+NIO36KKU7whfnTCnVzpXxCnixuIIJV67G
         PAEZVh961xwRO1mk4M/VcOiIOmKuA0j6dcAwriuD9BfCjDvoug6vE7VFdfEkx1L60SnK
         PFCKFMNIp6epYd8pQnQIcpnNTMqb0jdl4E4CYlpklBv/nADrDn5j59apsp902qtw5Inb
         X5OkUbupE307YfQnbrc0+0wqJ8mQQ5GF19QCB9Nq2XeqGC/Quev7N13LHGocQDLNqB+T
         ovGw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=OsBfFCXi+ErpKFAgc7yRFxTIiMU6TEjpNwtYEnm60Wg=;
        b=AUF4DGjfHUjjIV/qeBU+jJErHGEH9L52i5S4X+igG2MINTcP8FeCBb1U1KPkEW4JAp
         IxsB4LcMK3yUtNta+sVLGtmX0lq6csgzbfGIPp59mNZq8mimu1l21sl5ZaFEFou1dO+V
         DNiP5Xj7wpHON39MHNSSm879b7hUh9n7/oOPDfeY8rbqnJl3sJUn587a9UR2FOGVp+sw
         xldXGrqrPq/h0WDc34m47r6+MeMZKpB6x2fwffaJ5eJk/LGX7Ol04qWe8EPGyep70uZh
         GCGdjh484Cl2O/0pZrkycx8Of1FJ3oPPGebU8S6RZ4h+Z/cPCVvUMeaKBYwDA7sMIMzi
         jstQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=s80e2IW5;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OsBfFCXi+ErpKFAgc7yRFxTIiMU6TEjpNwtYEnm60Wg=;
        b=KTK7b0cvSyw+5Q74BY2eB9IIsm+XYGki1UxnoAbuDh18guUAktHSLomDu9sNAA/xy4
         NQ1RK7YPU5cbdgTaClPBKuM9f/X4xEHzz7WOFGQV4ambhFMOUiVLuXFoctZ2TsI0GZrQ
         TS9yHs30hl82cbgRRMmqHPxyhTWOwSATn3/qBLBAY+SylSLgLWLKo3pjpQk5S01gmTUg
         pte+QbdwX11yICCbVlRGtXb35eGA6pm/CVA1PK47Jd0M1HUwn+CYAnKUCDTPl+qvs5Ke
         E71j1pTrzqXtN43l1tm//KZrhO+kTM1aTwftWW4q1ycJC/cmyn9t4swado8k+biRTcX2
         pVOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OsBfFCXi+ErpKFAgc7yRFxTIiMU6TEjpNwtYEnm60Wg=;
        b=VixhzNOczW1o2NnMdXEisnAsWExP5f/EmMwRZhTRNV8g3vHnQWKFsOic4sb5qrWYBM
         hHLSClU/W20MeV5in9fhPqiLUOqJOUCeWDi8AkSkh8FnstREhCcPpsTaaV2lpS9aPpuY
         fOgWYIAahDHg6WfU46qYClPHROQxacsFDyVxn8bqIVqFvPUURQLHTWbATgrTxuvjjXYp
         Ec7NfK6Ml3qDg0ihjWSGNXEwVFXbwPLS3Whz6H5Yo4q+2hY4fyHPjg91j3SS5C5/ITld
         UYvpyxjyK/5XFDCXpoVSx/8IuyrzW+tf/Ikx1M2WaYZ8ivQ+Lg24WPMa8qZV294m4imq
         JNlA==
X-Gm-Message-State: AOAM530CBQOrXWmIbiwwZ7EjjYdm/PA5nayxb4i+Zvsk5gJKIx5w57A2
	iCYi0hdqZZQhLd6AuYYyle8=
X-Google-Smtp-Source: ABdhPJyZghy7GbS7HFv06o4Shr3kLH3pxJfrKxuRdigdMe6UyaxacaajNzwnDqH49gW3XCzfyq0Q6g==
X-Received: by 2002:a5d:9cc7:: with SMTP id w7mr18834895iow.202.1604519686661;
        Wed, 04 Nov 2020 11:54:46 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5e:9e47:: with SMTP id j7ls487368ioq.8.gmail; Wed, 04 Nov
 2020 11:54:46 -0800 (PST)
X-Received: by 2002:a6b:3886:: with SMTP id f128mr16386182ioa.26.1604519686138;
        Wed, 04 Nov 2020 11:54:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604519686; cv=none;
        d=google.com; s=arc-20160816;
        b=qFzL2roBC5k+kbD5iPZya6NI4kCJSUjUpYAF3BrUAZAwhZtN4CH97mUFLmWinUOWXv
         2RY5LMq1ae8KaDUaETrTWWxvQ2prFem4c4yAsndBpy8uQDnrP/vKJk5tSLnH3zWYh9cQ
         hQ0mOehfATX1iTSfcss4yCLngvmvvWROQkh07iWDFscLEofBvm8TJ0egrgyNLR6eJpjT
         UcaFM2ej2DI1SSUP+Nt0UbHTpSokK2TVnr9m1xE+YiejiN3G08EpCyMf2OShDlTi8CbT
         uean3kWK440hxOAUl8xB/gAAwnu8DBOmflJzaOd3BSZlw8LqKrSYqz+rH6xmZhQX9XhD
         oVpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=lH1r8oYHPf/SLkAdUec1wsVY4Z4avP7pYIBJELMlRNs=;
        b=emc8AS/lltYMbq4vJuPDJgTRVnKQVgXQVrXDxdde4sVpgmWhP771NdkCuGkdzHMyYT
         ZN2KI6NAwaR181rB1qNebVyN+GkQJaYz8O7XUyWNUOyQ/YL07Qn/hLZjp/ToX+8HtcDZ
         +Kse0O3U087qwZfYR8PkukqOvu9Lj3dDanPdIvmPP+X3HMVwStuCC/V+wIPufMWsddCR
         Osbin7ykm875lH2IArO96WG+Em7AAh0aoTxu8d/fKfKmxmFUu/mY9h72fabQ1+5LGeR+
         rkbODn16kd8PbwlLF64sPs5ZqPp13zTyIWZJ+MYJeT/bi4glG42z0ig8Mr0esLMEOdrY
         V5yA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=s80e2IW5;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id l1si175047ili.0.2020.11.04.11.54.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Nov 2020 11:54:46 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Received: by mail-pg1-x541.google.com with SMTP id z24so17482988pgk.3
        for <clang-built-linux@googlegroups.com>; Wed, 04 Nov 2020 11:54:46 -0800 (PST)
X-Received: by 2002:a63:b55e:: with SMTP id u30mr9421507pgo.381.1604519685500;
 Wed, 04 Nov 2020 11:54:45 -0800 (PST)
MIME-Version: 1.0
References: <20201104191334.393972-1-ndesaulniers@google.com> <CAK8P3a3wAikP-KkGUiznqnc5f7Uja_UaYxvkCLVtcHDu1tYuGA@mail.gmail.com>
In-Reply-To: <CAK8P3a3wAikP-KkGUiznqnc5f7Uja_UaYxvkCLVtcHDu1tYuGA@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 4 Nov 2020 11:54:33 -0800
Message-ID: <CAKwvOdn77f-v4wj78YVxKhM4mgtuE++JtmORXAmfzK+xs7voJw@mail.gmail.com>
Subject: Re: [PATCH] MAINTAINERS: mark LLVM as maintained rather than supported
To: Arnd Bergmann <arnd@kernel.org>
Cc: Andrew Morton <akpm@linux-foundation.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=s80e2IW5;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541
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

On Wed, Nov 4, 2020 at 11:36 AM Arnd Bergmann <arnd@kernel.org> wrote:
>
> On Wed, Nov 4, 2020 at 8:13 PM 'Nick Desaulniers' via Clang Built
> Linux <clang-built-linux@googlegroups.com> wrote:
> >
> > Funding secured.
> >
> > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
>
> Did you mix up the two? "Supported" is defined as "Someone is actually
> paid to look after this.", and it sounds like you are saying that this is now
> the case but wasn't earlier.

Ah, sorry, then please disregard this patch.  I kept seeing
"supporter" listed via get_maintainer.pl, and thought that was a lower
tier than maintainer.  I should have rechecked `S:` in MAINTAINERS:87
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdn77f-v4wj78YVxKhM4mgtuE%2B%2BJtmORXAmfzK%2Bxs7voJw%40mail.gmail.com.
