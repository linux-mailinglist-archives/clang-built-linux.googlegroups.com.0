Return-Path: <clang-built-linux+bncBCS7XUWOUULBBCMRYDZQKGQEPVYLSFA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x737.google.com (mail-qk1-x737.google.com [IPv6:2607:f8b0:4864:20::737])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D75F187621
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Mar 2020 00:15:22 +0100 (CET)
Received: by mail-qk1-x737.google.com with SMTP id f206sf5952934qke.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Mar 2020 16:15:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584400521; cv=pass;
        d=google.com; s=arc-20160816;
        b=lVBhZu93P62G9vkz7uK3856qtj7i2a/fcG5HRllcsGeN2qE3asZd5pBWEnH4fwArFq
         hJyHfj+etvkaFo3gjvHYIWNGYmDZhMh0DtGpkZCXUdj93TRLYrWvXkZVZ1asC2iNze4H
         n+g0yiG5DEaPaTrBN0nLe9YV4O6mcPCdsFjKd+n3XXM6TTC+6FwUpz8Qr1EdvWda0s38
         rbqIaPjqoptfeTb+sXQvyoXMhIhk77UHlmOYLCqxP3I3M9IMSQjkgWWGYPb9WZiEMcSD
         N7Q2C3vtKZIMSncU+dafMW439DPUoVFh9yb45ur1SRz9XH8MEk6F/+9Qs2Sme/K+sVRh
         jJgA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=UWMKTLwxnupGeUWw8ZFTG/EvDeAE6lUzhOsss23vqGs=;
        b=AaV9NCNsdo4wWS/FaQfTU19HVWYiJ4WG7zZAOXh+2TpHRbIJmnK8hWRptUdK7rKygm
         BfkCs/p6frTK6GZ8+qFcSkx03DKgynSxtomAZ71i6DpXU9fxg+FEqtlpc7gRrk5lufvk
         DKdMDuYN2z9Sh+aROUvyUP0vZ4s+Cs7LKspTdL1tq5a1OWeRzVRcwM2fB0Kj7i863kuZ
         /zXmEssJzXZ6Kswtc7D1tMpbakzivIXMtjAJfDsiTtg3/CF0WDIUzUZY3Kc0azWtxH6f
         GGN1I+djbcuoCKj7wn3ZBvlhSKsSLmQI+9D8pPrf1V3HLZ+j5WsCfV2VV21fsEbQTv17
         tDaQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Ey+kZ0U3;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=UWMKTLwxnupGeUWw8ZFTG/EvDeAE6lUzhOsss23vqGs=;
        b=bL9kXRfIU0CYu6FWeNU193kMdFb/wWLxlY4QrPC90H7/jp88v3w4afUFRaUcoLKFww
         y3SKTVyOc3w4aWACG45ij0Fmo6GN55fhFinrCNf+3TkpjtX0p2kDY+O45pV2JuA2FsmS
         3tNURfa0DMQ+XTHCd6APPjVtgDYkM8kPvKb9zl2Gv6IVwcPFTZrWb91scH24OuRxgVxg
         Sq/BaxiANwrs7ge/bvDIeujcxLG4geqUIveKqda1mMUoqRQqa2WoKyFEFInUT0ggetfy
         a1ZG1ZAk97hQZqpfPri1yCI1lUAKHh6s4ixOdtoGOu6424skv6b6TbqzD4df6naetNkn
         gM5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UWMKTLwxnupGeUWw8ZFTG/EvDeAE6lUzhOsss23vqGs=;
        b=jHAMQ9KrvmmFyXQfqliKsPP7WVQewSLFWfiZOJGm1zvbWu/LP1Nb3/xkZwSgCG898o
         b5HF0A6dCeJzhGXc2Wv4vwyso6F56dFuY+440O/Z34nYROczaJHDPo7lRBAamjyKwPiP
         qt2HwLIWVL/dBzIvMxUXiY5okzkTowSwWp632G2YF7L53QLRPcld+Yz6MlPIjMzLxr/j
         LV5sIhJdFUB4CJFZ7bIREQpxCT6DhMq+XB1/eSyh994egLeAqieSn+KKX3g+3gfc+Jli
         PV1eXbz2XLlqa1OfAvsiJk6F5EzRKEM7KVzTS+aKh8cpkepwEp3ReRzNSXMP7Q7Aq2wA
         DaPA==
X-Gm-Message-State: ANhLgQ2NuBDQyuTf/hdyj5J5fcOk0CBKWaJn3NhLdQ8ven4/jrAEM1PV
	tiWUH8Se41aPALY8IrNJP1c=
X-Google-Smtp-Source: ADFU+vsKlvC1ALFqRi2DcqjWhhvIL4zzSOu/IVpknnbn7fL4fPaehW2ql+OZ8GgLHmOtYx084rS/Iw==
X-Received: by 2002:a05:620a:1102:: with SMTP id o2mr2263229qkk.26.1584400521058;
        Mon, 16 Mar 2020 16:15:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ae9:f718:: with SMTP id s24ls7958943qkg.7.gmail; Mon, 16 Mar
 2020 16:15:20 -0700 (PDT)
X-Received: by 2002:a37:b17:: with SMTP id 23mr2304320qkl.326.1584400520717;
        Mon, 16 Mar 2020 16:15:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584400520; cv=none;
        d=google.com; s=arc-20160816;
        b=yv2ZVOcoCrgnWghGxwn2rvt3ENEXtPGYFo+sDdCIalM+/20xjUncBnYXWtDSskj+cT
         LZJw85vOUAoF42WWeEdmcqZ07owzp9v3zlyy6nb66sTvCcaYzN5eEGfM00r8J6Mm+1En
         h9EU9yraJpRFuceUaK9vngvnBA04uctyKQUPoGwi/4sYEz03R80KHSLSKznVurotMmQ0
         bKxeqHrjk26PATzLEewkAiN9NWgSisUoj/VEJeTk3e9/vPIMhd/mwXFBbeFgvyYeKuNM
         H1cdz30dRzMwTV/+rLhrNXE+unnCnVj17ixrWlWWPljlb8mdv92///hL7my/SRPgS6Z/
         zy6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=VACBqMmuUHfZrQljDnWjeCAmWzgBMaH+KCVaAAAuZ6c=;
        b=rzVyd3VxKXx+SJfY1JpXNXk6oPEeN5yf8XwV0wdEWvOFDFUfvdWhcWemtAweFGhBnB
         kDSc0LPjzC6cnaM4lOKZknXOxOpro4qU7N2YdZjEsBN10M0S7qJCBVe+ZzvbjNCl20S2
         OeXW0ZReas1xQpifysODZCmaNmXBcK/P0vvI8UHkKhZsdHiH+KdmInceiabxrV88Cl05
         D7g0A9Fmx6vUCu5C1pDNR42DjXWWCPDXMtyIwVWYInSZgv9IvhuWMqy/L+WGCqMkwaMx
         uZiTTYCV4hJTO3kRX6nGi4dOd3Ir6WbevTJf5W+cH+x6FViNjJLw/jgl/K39euypUsUD
         QUMw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Ey+kZ0U3;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id n138si92160qkn.5.2020.03.16.16.15.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Mar 2020 16:15:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id u68so10808413pfb.2
        for <clang-built-linux@googlegroups.com>; Mon, 16 Mar 2020 16:15:20 -0700 (PDT)
X-Received: by 2002:a65:458e:: with SMTP id o14mr2137643pgq.323.1584400519503;
        Mon, 16 Mar 2020 16:15:19 -0700 (PDT)
Received: from google.com ([2620:15c:2ce:0:9efe:9f1:9267:2b27])
        by smtp.gmail.com with ESMTPSA id b10sm846844pfo.215.2020.03.16.16.15.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Mar 2020 16:15:18 -0700 (PDT)
Date: Mon, 16 Mar 2020 16:15:16 -0700
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Stanislav Fomichev <sdf@google.com>
Cc: netdev@vger.kernel.org, bpf@vger.kernel.org, davem@davemloft.net,
	ast@kernel.org, daniel@iogearbox.net,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH bpf] bpf: Support llvm-objcopy for vmlinux BTF
Message-ID: <20200316231516.kakoiumx4afph34t@google.com>
References: <20200316222518.191601-1-sdf@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20200316222518.191601-1-sdf@google.com>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Ey+kZ0U3;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::441
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Fangrui Song <maskray@google.com>
Reply-To: Fangrui Song <maskray@google.com>
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

On 2020-03-16, Stanislav Fomichev wrote:
>Commit da5fb18225b4 ("bpf: Support pre-2.25-binutils objcopy for vmlinux
>BTF") switched from --dump-section to
>--only-section/--change-section-address for BTF export assuming
>those ("legacy") options should cover all objcopy versions.
>
>Turns out llvm-objcopy doesn't implement --change-section-address [1],
>but it does support --dump-section. Let's partially roll back and
>try to use --dump-section first and fall back to
>--only-section/--change-section-address for the older binutils.
>
>1. https://bugs.llvm.org/show_bug.cgi?id=45217
>
>Fixes: df786c9b9476 ("bpf: Force .BTF section start to zero when dumping from vmlinux")
>Tested-by: Nick Desaulniers <ndesaulniers@google.com>
>Reported-by: Nathan Chancellor <natechancellor@gmail.com>
>Link: https://github.com/ClangBuiltLinux/linux/issues/871
>Signed-off-by: Stanislav Fomichev <sdf@google.com>
>---
> scripts/link-vmlinux.sh | 10 ++++++++++
> 1 file changed, 10 insertions(+)
>
>diff --git a/scripts/link-vmlinux.sh b/scripts/link-vmlinux.sh
>index dd484e92752e..8ddf57cbc439 100755
>--- a/scripts/link-vmlinux.sh
>+++ b/scripts/link-vmlinux.sh
>@@ -127,6 +127,16 @@ gen_btf()
> 		cut -d, -f1 | cut -d' ' -f2)
> 	bin_format=$(LANG=C ${OBJDUMP} -f ${1} | grep 'file format' | \
> 		awk '{print $4}')
>+
>+	# Compatibility issues:
>+	# - pre-2.25 binutils objcopy doesn't support --dump-section
>+	# - llvm-objcopy doesn't support --change-section-address, but
>+	#   does support --dump-section
>+	#
>+	# Try to use --dump-section which should cover both recent
>+	# binutils and llvm-objcopy and fall back to --only-section
>+	# for pre-2.25 binutils.
>+	${OBJCOPY} --dump-section .BTF=$bin_file ${1} 2>/dev/null || \
> 	${OBJCOPY} --change-section-address .BTF=0 \
> 		--set-section-flags .BTF=alloc -O binary \
> 		--only-section=.BTF ${1} .btf.vmlinux.bin
>-- 
>2.25.1.481.gfbce0eb801-goog

So let me take advantage of this email to ask some questions about
commit da5fb18225b4 ("bpf: Support pre-2.25-binutils objcopy for vmlinux BTF").

Does .BTF have the SHF_ALLOC flag?
Is it a GNU objcopy<2.25 bug that objcopy --set-section-flags .BTF=alloc -O binary --only-section=.BTF does not skip the content?
Non-SHF_ALLOC sections usually have 0 sh_addr. Why do they need --change-section-address .BTF=0 at all?

Regarding

>Turns out llvm-objcopy doesn't implement --change-section-address [1],

This option will be difficult to implement in llvm-objcopy if we intend
it to have a GNU objcopy compatible behavior.
Without --only-section, it is not very clear how
--change-section-{address,vma,lma} will affect program headers.
There will be a debate even if we decide to implement them in llvm-objcopy.

Some PT_LOAD rewriting examples:

   objcopy --change-section-address .plt=0 a b
   objcopy --change-section-address .text=0 a b

There is another bug related to -B
(https://github.com/ClangBuiltLinux/linux/issues/871#issuecomment-599790909):

+ objcopy --change-section-address .BTF=0 --set-section-flags .BTF=alloc
-O binary --only-section=.BTF .tmp_vmlinux.btf .btf.vmlinux.bin
+ objcopy -I binary -O elf64-x86-64 -B x86_64 --rename-section .data=.BTF .btf.vmlinux.bin .btf.vmlinux.bin.o
objcopy: architecture x86_64 unknown
+ echo 'Failed to generate BTF for vmlinux'

It should be i386:x86_64.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200316231516.kakoiumx4afph34t%40google.com.
