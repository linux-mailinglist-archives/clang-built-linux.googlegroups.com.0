Return-Path: <clang-built-linux+bncBDYJPJO25UGBBA7EUCEAMGQE7GQTEKY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23b.google.com (mail-lj1-x23b.google.com [IPv6:2a00:1450:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id B741A3DDECB
	for <lists+clang-built-linux@lfdr.de>; Mon,  2 Aug 2021 19:57:23 +0200 (CEST)
Received: by mail-lj1-x23b.google.com with SMTP id q13-20020a05651c054db02901864030a0ecsf3452640ljp.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 02 Aug 2021 10:57:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627927043; cv=pass;
        d=google.com; s=arc-20160816;
        b=IUsGtlvmrpyZCaqdBuaRN+rDQfy96tdQtoQlpJFAeKY4thlk3So42RkQL7z2aFL1V9
         uitcihNNnpuO5aXJjoHylLQb0TtohiFG5pJMIibpHZreqsCYT8D+iEQrI9SK0ZqvMvj4
         bX0FyiAWWYgpKKKWt5WAmz9sGLsgp4vmYLDLWKCoBkMnXDPJAyYp///Ia91nOU0SfpwQ
         8gFEF3Qu/3rfujTbkuW/p5DfhN75IToPziqd77+4hZw2zPytfALPv0VHkMuYIDbPMucJ
         50/72RuChQ5TA4fej5ssmZdKw6ceKe6oIdODxJxjCWmkloVK6jr6rDU11VaqCHEWkvGp
         MHuA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=eaic2AWHsu5AwKF3rc/jZ6o/pKyELfCRaIT6mC3o7oU=;
        b=Qhau/zEvvaaGT0I+H5XTtQp1rOj9cRqNKeAVxW73BU/7bIVfoWxL54QoTmgbFyyUJZ
         CtZbBrMQ91DEszjFxwyPNbk2WMNgivzQJgKwD6qPu6ijcB1j/nm27WcAAIRgbjFAa5GB
         YM9BLK4JZiwmpjXEpo4qHHVTLq4o6xMtBirTCbqrvjmD7OAoFre8Kdxpl3cmIhz2LNj8
         wXjqRdfe5s55rk9kxEl6DoRQOGSS2nCRlmFx8HqN6TbwghGmWkc8W/iAJjpdn5ESXqUi
         ifCAGEIjNmjdh+z91J0+fRBTTFBDuiDtHBfH9MWjpdQVU+aLIEhbu2AQqniTPeFNFWGc
         lSew==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Bv1bENRm;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22d as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eaic2AWHsu5AwKF3rc/jZ6o/pKyELfCRaIT6mC3o7oU=;
        b=hLdUq/kSQ/o4z6voZ09wgaVWH5d0V8+KhkF0/W4SskULNyA3z6TLBmJzj0UCftiy+Z
         IOzfh5cOtGeu7ZVnrf1YW8+/DP4dLaFflcuGZdYm+R9k8yYpcwu/wQ0FwEq7R3af+i+w
         9rkznDOjblgzmr3GScC7V1wr3uO6hq61T0bVgqQ7XOwjc1QwodjnzKkcgK4uA9JN3xKE
         AXARfqTM6W/Ulg2C/6Cn+n/nh2OghzS8ddNz3XxZmoBUqEtOQ9zW5MC2Tlm86i0CcvR3
         if7FiV2FMDg7DJWQnPeoDz1rt53qY6yzUSf6Glib1ouVFKkSqEB9tnhFEiD2DUvFuz2p
         czwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eaic2AWHsu5AwKF3rc/jZ6o/pKyELfCRaIT6mC3o7oU=;
        b=VaD5rDzrTHmtLVrI3xI+ZGga9MX5Z2NBKv4oI3eclNtccg1hdZe+wjXxn1eslDNupR
         gBoQZ4A+Qr206MkndQYwFM1ZASAkx/qhcjAoJ0v01k0APSv/+wea3pj+PKp74VBhsH4P
         4Z1w2mpfwv9J0x/TpfqCMQ3WEXHt4G5yBbuPo0HhOiN9PPPEoe7UOOoshzLhpbv1wrlM
         5YcZYvyMTSkYtYK5XBUJN07b5dx7CkbmYi3Meuh7h2sp67whnRUEHdk41MREStksohR6
         xD2NE8aCF16+PL3qFcQt7NbfTfj2Idxh+GoUZtaKeRk92oy6OF1IXxAMgIkCo0MI9/kT
         5yIg==
X-Gm-Message-State: AOAM531xVlz+A1PuHzeORlukXi4EwIk5gHV8WRF/+ivpRga8CKvHm/uQ
	Uz8QO2Ob8KggMfqZ7IOrPrc=
X-Google-Smtp-Source: ABdhPJwYMkGYJTZq9oQ5fl1Cy2ZHKt475t4yRlsx4nr/xYoZDJKHkrGwqkfFovYjBYeg6c4I6Gd7OQ==
X-Received: by 2002:ac2:5bd2:: with SMTP id u18mr5994042lfn.4.1627927043312;
        Mon, 02 Aug 2021 10:57:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:651c:88c:: with SMTP id d12ls1640726ljq.9.gmail; Mon, 02
 Aug 2021 10:57:22 -0700 (PDT)
X-Received: by 2002:a2e:a90b:: with SMTP id j11mr12039156ljq.475.1627927042300;
        Mon, 02 Aug 2021 10:57:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627927042; cv=none;
        d=google.com; s=arc-20160816;
        b=0G9jO63ya9NWjb1HJyNEaOiaKvKRvnhhtsqjIOiz3cuMNBpZulTqaKzK1H1j74rkvY
         p6hlB07DaXj141cn/5yGtpye/LLzUgRwg5dhPEXfoc9b78FDC80sIoE8dbsMQf2YnhpM
         kR+MVMRiHlko9OAyxM5M460d7hXSnZINMdoxRAOFa8are/vtiIcKbNr7Gn6kp6Y8/FxN
         sWR8unQeo07hS/ylpj9TKcR09+KgGk4b70HSYESAahBWJ3o+nHSZiL+Su51br1VLBSKW
         2iMPi/Bth3pY2hjWiifWXnWjlp+0dMxMWTB/TaWRfDgEt1q0g/mEJpO/7Gifs7eKgulL
         lIBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=nC4XJjZxwv8aF5TNChowkvDDxD3oEPmG8mUjf+O0H8s=;
        b=yGF7IhAmmRR6l/z7bsivZJLBEC0qRNz1EZ6yNGYBAGXc83JH+H/JTuYP2Xef2KnyRH
         ImOB12hoi9UT/YBecAAnWOAvWdVCIOkRbzJWbY9Q+fnUZ7hJ+Mq9D5iwo2Rh0LwMWx2/
         CXA3nCfyf1rAyGrm16nBh5++ONa1c+t/vPOv/flTZmzs63iqaHZSQRJtMxknKH8/xyyH
         VI5jaaeM3lXT4IQApuiB3QkIyxpuBxnkCrzh673K+l0QN0HJReJoxSXaPJKPdQlOxGMX
         TrDoGicVZIX3/pUVTz2aRXjxUN0kN0TtpnXqzY4gu7D9KtLW06J73G9n0ypWQls1wa00
         ZLLw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Bv1bENRm;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22d as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com. [2a00:1450:4864:20::22d])
        by gmr-mx.google.com with ESMTPS id a17si550458lff.8.2021.08.02.10.57.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Aug 2021 10:57:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22d as permitted sender) client-ip=2a00:1450:4864:20::22d;
Received: by mail-lj1-x22d.google.com with SMTP id u20so24997008ljo.0
        for <clang-built-linux@googlegroups.com>; Mon, 02 Aug 2021 10:57:22 -0700 (PDT)
X-Received: by 2002:a05:651c:38f:: with SMTP id e15mr758845ljp.233.1627927041797;
 Mon, 02 Aug 2021 10:57:21 -0700 (PDT)
MIME-Version: 1.0
References: <20210730215708.276437-1-ndesaulniers@google.com>
 <20210730215708.276437-4-ndesaulniers@google.com> <20210730231252.r6fi6c3i6obbcgfi@google.com>
In-Reply-To: <20210730231252.r6fi6c3i6obbcgfi@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 2 Aug 2021 10:57:10 -0700
Message-ID: <CAKwvOdnK=SUm1_--tcLRO3LVeXd_2Srfv2tsZCUW0uXXa1W_pg@mail.gmail.com>
Subject: Re: [PATCH v5 3/3] Documentation/llvm: update CROSS_COMPILE inferencing
To: Fangrui Song <maskray@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Miguel Ojeda <ojeda@kernel.org>, 
	Michal Marek <michal.lkml@markovi.net>, Arnd Bergmann <arnd@kernel.org>, linux-kernel@vger.kernel.org, 
	linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com, 
	Geert Uytterhoeven <geert@linux-m68k.org>, Christoph Hellwig <hch@infradead.org>, 
	Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Bv1bENRm;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22d
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

On Fri, Jul 30, 2021 at 4:12 PM 'Fangrui Song' via Clang Built Linux
<clang-built-linux@googlegroups.com> wrote:
>
> On 2021-07-30, Nick Desaulniers wrote:
> >As noted by Masahiro, document how we can generally infer CROSS_COMPILE
> >(and the more specific details about --target and --prefix) based on
> >ARCH.
> >
> >Suggested-by: Masahiro Yamada <masahiroy@kernel.org>
> >Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> >---
> > Documentation/kbuild/llvm.rst | 17 +++++++++++++++++
> > 1 file changed, 17 insertions(+)
> >
> >diff --git a/Documentation/kbuild/llvm.rst b/Documentation/kbuild/llvm.rst
> >index b18401d2ba82..4292f0686316 100644
> >--- a/Documentation/kbuild/llvm.rst
> >+++ b/Documentation/kbuild/llvm.rst
> >@@ -63,6 +63,23 @@ They can be enabled individually. The full list of the parameters: ::
> > Currently, the integrated assembler is disabled by default. You can pass
> > ``LLVM_IAS=1`` to enable it.
> >
> >+Omitting CROSS_COMPILE
> >+----------------------
> >+
> >+As explained above, ``CROSS_COMPILE`` is used to set ``--target=<triple>``.
> >+
> >+Unless ``LLVM_IAS=1`` is specified, ``CROSS_COMPILE`` is also used to derive
> >+``--prefix=<path>`` to search for the GNU assembler.
>
> and the GNU linker.

Sure, I'll add this, but wanted to note that generally the compiler is
not used as the driver for kernel builds; the linker is invoked
directly. IIRC, there were a few spots where the compiler is used as
the driver; I think some of the various VDSO's are still built that
way, but it's not common.

>
> Reviewed-by: Fangrui Song <maskray@google.com>
>
> >+If ``CROSS_COMPILE`` is not specified, the ``--target=<triple>`` is inferred
> >+from ``ARCH``.
> >+
> >+That means if you use only LLVM tools, ``CROSS_COMPILE`` becomes unnecessary.
> >+
> >+For example, to cross-compile the arm64 kernel::
> >+
> >+      ARCH=arm64 make LLVM=1 LLVM_IAS=1
>
> Is  ARCH=arm64 make LLVM=1 LLVM_IAS=1
>
> preferred over
>
>    make ARCH=arm64 LLVM=1 LLVM_IAS=1
>
> ?

Will respond to this against Masahiro's reply.

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnK%3DSUm1_--tcLRO3LVeXd_2Srfv2tsZCUW0uXXa1W_pg%40mail.gmail.com.
