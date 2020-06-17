Return-Path: <clang-built-linux+bncBCR5PSMFZYORB564U73QKGQEXHMWBWY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33e.google.com (mail-ot1-x33e.google.com [IPv6:2607:f8b0:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id 767C31FCAA9
	for <lists+clang-built-linux@lfdr.de>; Wed, 17 Jun 2020 12:20:40 +0200 (CEST)
Received: by mail-ot1-x33e.google.com with SMTP id t10sf810833otl.19
        for <lists+clang-built-linux@lfdr.de>; Wed, 17 Jun 2020 03:20:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592389239; cv=pass;
        d=google.com; s=arc-20160816;
        b=RB3GcD3Xn/gIALzBes2ZnWI/Q/QoXg2ciV9jPCZVXemdi0n3XF+cJl7PNljQ/bR/+C
         SoQKh/qiSnQvrZrvqMAzS1AcG7It714tH26AkcJBl5tU3ERuVmxi++lrJaIjQvKsRzS+
         sRA+4i43MizJOSZwJ66lAOTg5yv7RQwrD8TX2ZxZA/g1B9gQi/LSuGVBq2BUHqDZjEwC
         aq2tFU1eGIRvELJFmQhYYECzo//DAxg7JZzrg5iWZg/KIOFwrT+tD978n86wZ6rY5F/Y
         H1GYxsgH8PHJXr1DtlSPw3+okQ/u8EhkV9TluR7akofE3DZfHg8Bv71EwCSGFnlRD5Kq
         Va6Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=ZVfAmLagxeGNwyqjh1vT8+DvB/Bc5QNKDWrzEhEfYjo=;
        b=FdUKmGsm+x/il0TvEGXFnSQnGx6OVFemAHxFSJ5x6F/DTH/JCczlsXDfYrsMYfJrGs
         1jeis7us39do+7pAK8Su9JGIUEu03NPorKk35g8icBBmeADo7G1o5AXX5Xtd416wOnCt
         L48ourlDRyNUgA1H9O2GmTrYQIiRb7LfY6dhpaEm9VuQsWNa+b2f4r2ixBhPUr5qfX4Z
         PQgNmGbG0HRaUqRdCSEC/0MQXqgTEb0/557HdlgWJ26rPo7UgL9WC0sGLncc/MpoJKWu
         4YQ/fEUwwua0HDhMUuhCa51ZNTZenO3ctisU3aOC5VUfI95CyVgzxuNmt78RUh4afn5L
         78sw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ellerman.id.au header.s=201909 header.b="lbRHhw/n";
       spf=pass (google.com: domain of mpe@ellerman.id.au designates 2401:3900:2:1::2 as permitted sender) smtp.mailfrom=mpe@ellerman.id.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZVfAmLagxeGNwyqjh1vT8+DvB/Bc5QNKDWrzEhEfYjo=;
        b=Px3xUKN5arJH7htfi2hbWvPC0f95xd1DMvpTK3omHnaB0w4473d+/tQyy6IVLOuak5
         wj+IgF1Tb574ukEMUyfheezsqQedlk1otA8H85fPuJrjXjswLo95qh5ljkLYF5zveeiz
         U/Dv6fhuo4Ur7FS0YsVrLmRPA+xNZPywzytYjS65YJ/6RgOZMRnjsHrdM4lO/Uiij++K
         FgWPrhxZgPUmN2RiZfQt81Rl8LmyttrzRh+qbzerd7kOW8+cLoqKS6vMQESu0Zkx1ZUP
         GBqzH80SasbZqLVxmgC2Hu60rKPW4DnR3Plz6ONWuslRPt+5Nt2K35e1O3LzAJDHgQWs
         fRNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZVfAmLagxeGNwyqjh1vT8+DvB/Bc5QNKDWrzEhEfYjo=;
        b=GvU/Y4x+d6WOP2l92UvFZoPp5UueyjIqNIU03jAY+XgJRdVIcXAA1ei1zVFtzOiqPi
         PZ70UgCAYzysDwMS+4iQ22uQZdbQYc3q4yIixu1T3DpzcOH5TPkq+5FScizf+BaI8YqI
         /3cPHOoH3xiTvnkL4XBKOFohFZKZnLlqfOJFxMfw5p6lUL3pHVsYeTOx9MRuTu6ayAgw
         VJkqDoCy4wA9yJufM1g2ude/0/R3aJspjSGChTzWhRW5C0IH8koSRQi6VPrkKqs3zhiX
         Zh1HpS636yUMtXn9gGwFVi/dZbwfFtaSQzi1tSh54S8h7Th2Sb032pNMNhGgkhh+f8s3
         02sg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533bS1JmrnCbCSzfaEOyidOQRDOBpfOLIz/ltDDvDSgIgNZCWFHY
	dARGDgKPZnDunFZP/zA7NBg=
X-Google-Smtp-Source: ABdhPJx39rel+MIWSga5j6XXrFTPzcWwrZFqOsFRf+TBtwaURf9NvUjGuMfJuVGupFkgoqYMm+vWYw==
X-Received: by 2002:a05:6808:496:: with SMTP id z22mr6872165oid.176.1592389239239;
        Wed, 17 Jun 2020 03:20:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:11ce:: with SMTP id v14ls400904otq.0.gmail; Wed, 17
 Jun 2020 03:20:39 -0700 (PDT)
X-Received: by 2002:a9d:170c:: with SMTP id i12mr6307972ota.321.1592389238976;
        Wed, 17 Jun 2020 03:20:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592389238; cv=none;
        d=google.com; s=arc-20160816;
        b=vYFZcEOI0CmY0cJ7d2TxrRbvMlaL7P3ZFiXxlM8jZ85CWcAQZYBTexTDzbSpPFwTLG
         jLQpFv1zSPu5OJpclk7z9gQcyqCQufMAPYs8A8q/X5dVGr4ViuguV0cL1W29p/MPatVy
         GyvXnzoOMY/m2YCvXIveENThe8qVE6aA3yWqE2wBK2oveHFF7jP2OtKwUY+HmSzj2kvv
         ADLDhrzCzVB+rwz2H2sAoOTGsS2QB2La1w50jLqIZ8IDv/LO5iOxvjt3jVflk1+N1xYn
         4LGgKHh0KKNxxtaTdtItjBccoXBThm/jorypO6DV37wwXNBG944CC/KsgKs3hDrKGShn
         x6eA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:dkim-signature;
        bh=qwfuojuh0b263Rw0F6mXvNjYrjEKMN+LBY9DkhwdBiY=;
        b=Z0vj1d8yC1WO95PX5h0WZeDpOfbGDXEFfWKURS4xKNo9WMH4B695vdD8uu1Ua6Q7pG
         zXmq2GITbLEhyrgwZz5YwKwYm+lbsbIhrIKvstFSlOrbeH+lRHT+UXAC2grIQrnJeC+h
         rzRJS35SCJzGNyqaA4Z/MUCmu1EkyHxGaIwZIeFSI3YdyIX56yRtDW65JuPEhYO1V98R
         VAuQjzCK1JwVC20CDWU+WslgfQByv/YPzeZSkxoCNjxBnunjOJMDIDomM9CbJMoAa44M
         OkebYOZdRFI73+Lu+iqa4TTyVMEkc7011tsIq9bjdz7N07E+lZ6eax23y5mlgky/Acr3
         qc3Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ellerman.id.au header.s=201909 header.b="lbRHhw/n";
       spf=pass (google.com: domain of mpe@ellerman.id.au designates 2401:3900:2:1::2 as permitted sender) smtp.mailfrom=mpe@ellerman.id.au
Received: from ozlabs.org (bilbo.ozlabs.org. [2401:3900:2:1::2])
        by gmr-mx.google.com with ESMTPS id k69si1210090oih.3.2020.06.17.03.20.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Jun 2020 03:20:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of mpe@ellerman.id.au designates 2401:3900:2:1::2 as permitted sender) client-ip=2401:3900:2:1::2;
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.ozlabs.org (Postfix) with ESMTPSA id 49n1Kt37Xcz9sSn;
	Wed, 17 Jun 2020 20:20:34 +1000 (AEST)
From: Michael Ellerman <mpe@ellerman.id.au>
To: Michal Simek <michal.simek@xilinx.com>, Nathan Chancellor <natechancellor@gmail.com>, Michal Simek <michal.simek@xilinx.com>
Cc: Christophe Leroy <christophe.leroy@csgroup.eu>, Benjamin Herrenschmidt <benh@kernel.crashing.org>, Paul Mackerras <paulus@samba.org>, arnd@arndb.de, linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH v5 01/13] powerpc: Remove Xilinx PPC405/PPC440 support
In-Reply-To: <87bllidmk4.fsf@mpe.ellerman.id.au>
References: <cover.1590079968.git.christophe.leroy@csgroup.eu> <8c593895e2cb57d232d85ce4d8c3a1aa7f0869cc.1590079968.git.christophe.leroy@csgroup.eu> <20200616002720.GA1307277@ubuntu-n2-xlarge-x86> <68503e5e-7456-b81c-e43d-27cb331a4b72@xilinx.com> <20200616181630.GA3403678@ubuntu-n2-xlarge-x86> <50fb2dd6-4e8f-a550-6eda-073beb86f2ff@xilinx.com> <87bllidmk4.fsf@mpe.ellerman.id.au>
Date: Wed, 17 Jun 2020 20:21:04 +1000
Message-ID: <878sgmdmcv.fsf@mpe.ellerman.id.au>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: mpe@ellerman.id.au
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ellerman.id.au header.s=201909 header.b="lbRHhw/n";       spf=pass
 (google.com: domain of mpe@ellerman.id.au designates 2401:3900:2:1::2 as
 permitted sender) smtp.mailfrom=mpe@ellerman.id.au
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

Michael Ellerman <mpe@ellerman.id.au> writes:
> Michal Simek <michal.simek@xilinx.com> writes:
<snip>

>> Or if bamboo requires uImage to be built by default you can do it via
>> Kconfig.
>>
>> diff --git a/arch/powerpc/platforms/44x/Kconfig
>> b/arch/powerpc/platforms/44x/Kconfig
>> index 39e93d23fb38..300864d7b8c9 100644
>> --- a/arch/powerpc/platforms/44x/Kconfig
>> +++ b/arch/powerpc/platforms/44x/Kconfig
>> @@ -13,6 +13,7 @@ config BAMBOO
>>         select PPC44x_SIMPLE
>>         select 440EP
>>         select FORCE_PCI
>> +       select DEFAULT_UIMAGE
>>         help
>>           This option enables support for the IBM PPC440EP evaluation board.
>
> Who knows what the actual bamboo board used. But I'd be happy to take a
> SOB'ed patch to do the above, because these days the qemu emulation is
> much more likely to be used than the actual board.

I just went to see why my CI boot of 44x didn't catch this, and it's
because I don't use the uImage, I just boot the vmlinux directly:

  $ qemu-system-ppc -M bamboo -m 128m -display none -kernel build~/vmlinux -append "console=ttyS0" -display none -nodefaults -serial mon:stdio
  Linux version 5.8.0-rc1-00118-g69119673bd50 (michael@alpine1-p1) (gcc (Ubuntu 9.3.0-10ubuntu2) 9.3.0, GNU ld (GNU Binutils for Ubuntu) 2.34) #4 Wed Jun 17 20:19:22 AEST 2020
  Using PowerPC 44x Platform machine description
  ioremap() called early from find_legacy_serial_ports+0x690/0x770. Use early_ioremap() instead
  printk: bootconsole [udbg0] enabled


So that's probably the simplest solution?

cheers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/878sgmdmcv.fsf%40mpe.ellerman.id.au.
