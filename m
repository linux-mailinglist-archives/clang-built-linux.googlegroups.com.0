Return-Path: <clang-built-linux+bncBCMIZB7QWENRBGOX3XZQKGQE5RGFAQY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x537.google.com (mail-pg1-x537.google.com [IPv6:2607:f8b0:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id E0F1018E932
	for <lists+clang-built-linux@lfdr.de>; Sun, 22 Mar 2020 14:43:54 +0100 (CET)
Received: by mail-pg1-x537.google.com with SMTP id s18sf8529108pgd.13
        for <lists+clang-built-linux@lfdr.de>; Sun, 22 Mar 2020 06:43:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584884633; cv=pass;
        d=google.com; s=arc-20160816;
        b=BOc2bqipOYZHYpSlhLP0RUF3e6XdE1bfqyQulU7H+I1docd9keuFy7Q8b8niGtPpAC
         sOVfpBpmRxh0s3zgY8XaYGOobheqAr+ujSf8uKVho0nHwbjmW2B/OE0XoAp9JRHlZoLK
         Xap5iX/JWpWmS5R4cYCJDerkTQq9DqEiuRuYh+cM4JBJ2dXkf1ORV785L87J+inRjGEj
         2Kl/I1DyWgXZwif7HcB1qKg+fvUbNaRQrEVlhZbkZDQncUCCKb87PQoey0isuWtCvNT6
         iTbZcOfmfK/biyx37ZLny1Uv0CeA+9J9dyPI7KavZw/XJDTc3u5s6N4M6xAhsapSxpgq
         Pxog==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=5R5RABMd31oXHL8vLdjFMDcKiAgYfd6X626RZ7OwyWE=;
        b=WaVdAD2RTzbdKytWYMjU4VIanq9LJW32aTOddFM/uVtT2VpgDudjKIKmOAjhks1/p6
         bWe1H8EFAir+SeAgeMrNvzAdvYGWpuqIzSNGOsHSopapLf4E6SsXJ77OTXwpX4vQRjXD
         4vHoQPs0e5E1joD2uRXafh3uAp5XNLty1nWkEjAzoYIodSjl8iPDnicsrIvbmkH18mzc
         U5hTFxZBgpO79dMJ5pLQuU4RDlakm1wQd3fR9WUyogchE0wLY2TGn6Jg0eq8THnUcYsA
         kzAdwAwKKRfy8ZxT3xXl96S6O9pXRKSV55fkeO8hkDXg3QaY0/zPx1Jgh5NXWYO94rYC
         bGxA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=GpanGY9P;
       spf=pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::f44 as permitted sender) smtp.mailfrom=dvyukov@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5R5RABMd31oXHL8vLdjFMDcKiAgYfd6X626RZ7OwyWE=;
        b=NVbPygZ0WYAcn+Fer2Q8Eto9O855We7iwCLgq7+3ysVRZjHt+y0Z9Zvpgeo3q8byrj
         eakZIwShTsqAYSCBl7FAVINh9rUie+1mRR+Fa2QkfUxUwMPDgxkCoNkmGbVz5N3QVXAN
         atJ8+vWSMW2Ghgish9Rf0uAOFC1HedBgdyAbPTVBxEknUt+2KBmDg/DujjvLqzR3tvuX
         cUAzptjje2rXMNRnwvr9bksABiBnRWQ1qrcHnHCCR/xLlb+lBZjdt7p0hJXzpmrH3Hp9
         EaI0iixYfatA2d80OH23sUTV9VEQSL0OVCT13G4Jxg7Gs0Ol64q8OcQSNISbYaTqywXD
         3pwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5R5RABMd31oXHL8vLdjFMDcKiAgYfd6X626RZ7OwyWE=;
        b=stAczYC/twrAkJ7NPbnr7EBNAgYRYmjHSCmVna0Zt9+5br7f3bfrxLAkd2PoAyb3r0
         Hp4QQY3B5MPxT68EGt02FG1nvrkQ/DYrGCcScWziwR4+0s15KwYe+k+VXba0Br9Iac9b
         taTN86E2mvOZcXHGLQ4hJIrH+UE0NFEYp1OBRRiHr8dyogOwJwoG9GSAon/MXyRb0B/f
         yfh1yr15+mtskpHt4NdJrryjTJ3nEyy/kyj4G8rHjk2wESxXCpFe36TEbLtfbnNPCalQ
         B/GjYBRACjMOPbcvxMFRuxJ0Una80eHdQKZCjMcq1N6C2vj7GIhuQXmQRlVVUPVVq22D
         JJdg==
X-Gm-Message-State: ANhLgQ3eU1Ax5eB0+k4QlT5InIOgWeU/iL1QgPJ5o1Q/jRKCJ/rCflt7
	6U180QFaTiYzKKwbWSEGkdM=
X-Google-Smtp-Source: ADFU+vsnx901sk3Og0+LxrqiPh+72htlAOcxaZ59Ze/rTOxi6+CjYU18m4X9yzxgLvFXsRRav2SyFg==
X-Received: by 2002:a05:6a00:2d1:: with SMTP id b17mr19622130pft.62.1584884633518;
        Sun, 22 Mar 2020 06:43:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:7d6:: with SMTP id 205ls2854047pgh.7.gmail; Sun, 22 Mar
 2020 06:43:53 -0700 (PDT)
X-Received: by 2002:a63:ec50:: with SMTP id r16mr18513779pgj.274.1584884633066;
        Sun, 22 Mar 2020 06:43:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584884633; cv=none;
        d=google.com; s=arc-20160816;
        b=Pm1nAan839VH0XGaUAD5tO/WBSPqWCoTRCfwGu/gXm37kIhOGVhPHL3cWy+22D4jFM
         6b0nSR9wFtrC3LGCsLjDERHshd4cptirsOEZ/0p4XA/teoFdmhUZzT2YFuOb6ortD9v4
         5PpJg1eMfTypvNzxOQYrKvIuCNQ/hdhts7/OlqSlJ8x96JmkD4LwHAyMc5BJVGHwN+Am
         YiMIBlcsPYgkKi7EMyCwitn4wfxnwr8XfSc1X3ezsn5wzB6LNhjAqJ3enO8Fq8I/Agnj
         a0y8pXCsjtXNcmTJiQBJp36Go9atcjaIJnT+3MCecCZUkieH/mBaJ/yVmXLO2pKcdHQ2
         JUhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=lfkm4qDHJF0j1h7yV3iuIObqDhIo9L+RuUef/w4kNrQ=;
        b=x0fBwf4YaAzzT/W0jFjEe15kO2zjNTIZGqSktgB9eudZMXh7X+oZejzsZOmTs/Tnfg
         HzdoigQBL6/uhLYzcfWmMRUl0wzWn61DXm4BNyBBadfUyWwfqu4mJe1DKNKseaNXiW4V
         hVfrZGGvgIls0ROmmVXyJltu0Aqsh7LxzCIdpXfF6yEWoR2Xd1RtGMnxeIvrKZnbyjYk
         tNBkEdpAFdk7gYCN8yMJp5NSuz+qYh6IEx+Jp8Y40wcHlZaH8b7hYiYEx5JqavJxeaOO
         MWHOd0tsmdlAyDds4Gri1SNcg3jvDuVT9bq4Gw0gJARZrlHO9TzIkTDtS6Nr9ydnhdEP
         yZ8g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=GpanGY9P;
       spf=pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::f44 as permitted sender) smtp.mailfrom=dvyukov@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qv1-xf44.google.com (mail-qv1-xf44.google.com. [2607:f8b0:4864:20::f44])
        by gmr-mx.google.com with ESMTPS id j44si736614pje.0.2020.03.22.06.43.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Mar 2020 06:43:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::f44 as permitted sender) client-ip=2607:f8b0:4864:20::f44;
Received: by mail-qv1-xf44.google.com with SMTP id h20so5727220qvr.12
        for <clang-built-linux@googlegroups.com>; Sun, 22 Mar 2020 06:43:53 -0700 (PDT)
X-Received: by 2002:ad4:5051:: with SMTP id m17mr5182989qvq.122.1584884631847;
 Sun, 22 Mar 2020 06:43:51 -0700 (PDT)
MIME-Version: 1.0
References: <000000000000277a0405a16bd5c9@google.com> <0000000000008172fe05a17180aa@google.com>
In-Reply-To: <0000000000008172fe05a17180aa@google.com>
From: "'Dmitry Vyukov' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Sun, 22 Mar 2020 14:43:40 +0100
Message-ID: <CACT4Y+YGjaD4dobFgB7ieVi3wbG72_EPdXuJQ+h4qQq1Qncspg@mail.gmail.com>
Subject: Re: BUG: unable to handle kernel NULL pointer dereference in handle_external_interrupt_irqoff
To: syzbot <syzbot+3f29ca2efb056a761e38@syzkaller.appspotmail.com>
Cc: Borislav Petkov <bp@alien8.de>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	David Miller <davem@davemloft.net>, David Howells <dhowells@redhat.com>, 
	"H. Peter Anvin" <hpa@zytor.com>, Jim Mattson <jmattson@google.com>, Joerg Roedel <joro@8bytes.org>, kuba@kernel.org, 
	KVM list <kvm@vger.kernel.org>, linux-afs@lists.infradead.org, 
	LKML <linux-kernel@vger.kernel.org>, Ingo Molnar <mingo@redhat.com>, 
	netdev <netdev@vger.kernel.org>, Paolo Bonzini <pbonzini@redhat.com>, 
	"Christopherson, Sean J" <sean.j.christopherson@intel.com>, 
	syzkaller-bugs <syzkaller-bugs@googlegroups.com>, Thomas Gleixner <tglx@linutronix.de>, 
	Vitaly Kuznetsov <vkuznets@redhat.com>, wanpengli@tencent.com, 
	"the arch/x86 maintainers" <x86@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dvyukov@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=GpanGY9P;       spf=pass
 (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::f44
 as permitted sender) smtp.mailfrom=dvyukov@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Dmitry Vyukov <dvyukov@google.com>
Reply-To: Dmitry Vyukov <dvyukov@google.com>
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

On Sun, Mar 22, 2020 at 2:29 PM syzbot
<syzbot+3f29ca2efb056a761e38@syzkaller.appspotmail.com> wrote:
>
> syzbot has bisected this bug to:
>
> commit f71dbf2fb28489a79bde0dca1c8adfb9cdb20a6b
> Author: David Howells <dhowells@redhat.com>
> Date:   Thu Jan 30 21:50:36 2020 +0000
>
>     rxrpc: Fix insufficient receive notification generation

This is unrelated.
Somehow the crash wasn't reproduced again on the same commit. Can it
depend on host CPU type maybe?

> bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=1483bb19e00000
> start commit:   b74b991f Merge tag 'block-5.6-20200320' of git://git.kerne..
> git tree:       upstream
> final crash:    https://syzkaller.appspot.com/x/report.txt?x=1683bb19e00000
> console output: https://syzkaller.appspot.com/x/log.txt?x=1283bb19e00000
> kernel config:  https://syzkaller.appspot.com/x/.config?x=6dfa02302d6db985
> dashboard link: https://syzkaller.appspot.com/bug?extid=3f29ca2efb056a761e38
> syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=1199c0c5e00000
> C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=15097373e00000
>
> Reported-by: syzbot+3f29ca2efb056a761e38@syzkaller.appspotmail.com
> Fixes: f71dbf2fb284 ("rxrpc: Fix insufficient receive notification generation")
>
> For information about bisection process see: https://goo.gl/tpsmEJ#bisection

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CACT4Y%2BYGjaD4dobFgB7ieVi3wbG72_EPdXuJQ%2Bh4qQq1Qncspg%40mail.gmail.com.
