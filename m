Return-Path: <clang-built-linux+bncBCSJ7B6JQALRB3NDVP6QKGQE2ZLOEPI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x839.google.com (mail-qt1-x839.google.com [IPv6:2607:f8b0:4864:20::839])
	by mail.lfdr.de (Postfix) with ESMTPS id AC99B2ADD48
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Nov 2020 18:46:22 +0100 (CET)
Received: by mail-qt1-x839.google.com with SMTP id w88sf8020211qtd.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 10 Nov 2020 09:46:22 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605030381; cv=pass;
        d=google.com; s=arc-20160816;
        b=bKg/Xzx3VDSmlwYU1Zv76zI96yjvN73d9LY2baHrkxmJtimsDm/9dSWHOUX1ey48UI
         kmks2XmjgHLYdva+Gng2Ud7EtNIWsAA6SRZO98xGwGE6Xq/T7g2qX6gc0Rit/8LwboFH
         8YqECJmZdJQew5BV1P6s7cCm0cm7gTUSnF/NBGF86f1pIGLQm2c3+xtHL/MuY1p0262T
         tYoYpEO/EMtHq22bWXlVn4w8wub74Hzbssej+5T3QPHqVvFInKwyEaoAJDJy6vQMp/zY
         nxlOHWXdCsbVgZKYLPeEbKvpsnFINpyHNKn9Wtofdoy/ECCSNPzSPaY1OpNGmjLUFjVb
         ULwA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=plqy14qFRQeeyM93NG1p0Xe4r78T8wI9vCN8vrj6YGo=;
        b=H5llTYb832Do/t0j/koGwEHH2RooP0wLTtcKiYpYVDh9HOC95wt7K+hEIqX8NoJ1rr
         EBXOsCMuMAcjGUq1f71PBydwyzMTMFM2lb4hxd/cQjy+6cPSqKE2I2oAEpspo/Gg1t8o
         a05/0E5WMjf9A6LsoI0nTWxdnYGex2LCFd9XBgobqTjx+gryHpHCIQCmmSHjpuFCHFnL
         T5m15gAhnYD7lAHAWfsWyt/kDhyH/1dnVyxCPdiCmFbVhX1S9jNyTC9YIc2BNub2osI0
         Nr8+qfQUn/9Hw6n+OI3UYSkEGzeL15246BvSpsm20OFOaHbE4dGbI8E2aktGr1jUkSe6
         zYcg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=SxPuw0X3;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=plqy14qFRQeeyM93NG1p0Xe4r78T8wI9vCN8vrj6YGo=;
        b=htiTZPRb6czhWb5Vp0Q1htVuvTj3DTxlGD4PnMIzkFYpKvFunI2XYhMa5uqEDKphAr
         7PUtCn6PYs3i4H9ng9hUg3cmj/UBPwpRJeIQiwBRbx76bCAX8Qmo3VezGiPsN4DMu1ma
         8k9BrFAkc87zy5DAXddk2XHLJ70psBV6fqSCnLUtoAVnFd3rQWMhuokDepTdr0QCBJ3K
         f4w3OthaJKZ3U7LAldo5Rf1hSK047P1gh7GaLndTtYY8whGCL3bL27toZQPF07rBAv5M
         XZd+4UYHayt7WT0YE14ECXlg1928AglBeR2QuXwg8ii0JjlwaJGivVbSHNdWAriZnioV
         h9aQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=plqy14qFRQeeyM93NG1p0Xe4r78T8wI9vCN8vrj6YGo=;
        b=GO5CrayZIv6WankdDBPmjqA/foibbdTISZJ7kxkKgDu/SSri662EWkT3CewIpH5hLC
         ja/Uj2uaZrD6C8hAyn9fqravWU/kLZTRQiGtsfakEjg9FpsL5to4543S6TgBlRwDNXbe
         A2zs7W5PeUkz+FmTG8snaNtsdjhRVMom8NiEBK8HCFGbImtHhQgUerBqi4Zan+4CDkNo
         iwSzjV7cGXRmEN4oZEHimFMWI7B6ToJxT7aohwEh2DDQXm+sQ7+hV5jNAxi1ui8+3QXD
         1/5OIG6dE4thGupD3cUpq8BMcDXloi544dNO0LHrOt3bVSha9vFqitu1Wgvkr5Mvm0pk
         sd3A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530sMxy/ANcF/g6WLgHxF2kHULTKTpONHE4QP1NtasN7WJ44u+Mo
	4dBRztlWKZNkLXANxiSCq9E=
X-Google-Smtp-Source: ABdhPJxHjR4ErADAdIO61AVZRzHvzB+DDLZqHL06cE285T8JYgG0MloC4x4DcrFtUT7v+OMKa2yTFg==
X-Received: by 2002:a37:b782:: with SMTP id h124mr21315272qkf.169.1605030381455;
        Tue, 10 Nov 2020 09:46:21 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:9404:: with SMTP id w4ls2496302qkd.5.gmail; Tue, 10 Nov
 2020 09:46:21 -0800 (PST)
X-Received: by 2002:a37:a3d2:: with SMTP id m201mr11425405qke.203.1605030380998;
        Tue, 10 Nov 2020 09:46:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605030380; cv=none;
        d=google.com; s=arc-20160816;
        b=iVztmVlQ678q1N7PgzLUJg23B+xBhaq4rfsRPDvm3RYggTI9CjHL4+ZTyNMd8hUYNP
         Te0O8ytA01JkGAd3LzSSFRk7w6ioQqd/TSD31SiAaTE1cFXd2Ld04WRrHrZ18wqG/5bq
         8lAQe+11/mWlJpXHsgJFBvDXtSvx3JI22eCNtpyNrtq5LCYhf+BDt971lD+3Uw7Vex/V
         G0NuxChCgxUws3grUtZVYLOI3RGP+s263r5ZzgGbAzi7DIysK+7wf9iN3JlZqh8CGNCf
         skiZ55pa7ztNmSdfLIIJ1XBsoOKBV9ta3ZZ/8ifb/9odSpqIDROI9NFEVbvWk1WrEnLF
         ivjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=iLppkAldaglNseeA1mLxrkn09RICx19onIxN5TInB1E=;
        b=qCjQH4BoV3/UhcUTlZDBvZc537xO7tpAOQfavJMbhWDDqrpV62Qpve+HgDHfgjvJ2K
         Z+Uiejh+/IcyA5BXciq7C5fE6JAnKYmWKTzRmLIpdnmtBNhzZfELLNlhItkI8ndpJQIT
         modZ2jIqTN5jHnVer45jdT6vG6Al8Q3wXidHQJl7i8bwnf17nHFsKNkPMi51tr+/5cZU
         1VNKAFV5Rn8VwecoBfpflkAYQa2irvNEXi7k7Yx1p/TpQuuvttDDSz5geF5QNdce0yor
         lW7X5QCSA65roEuKWGukUkOyUOlJueINVHTq0Qci/HvLkaMcYB2YrU2bQ28igqAGyOUU
         ZQEQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=SxPuw0X3;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [63.128.21.124])
        by gmr-mx.google.com with ESMTPS id h3si524293qko.3.2020.11.10.09.46.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Nov 2020 09:46:20 -0800 (PST)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) client-ip=63.128.21.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-300-k_d5_NtXO2qoXW_XbKINLw-1; Tue, 10 Nov 2020 12:46:18 -0500
X-MC-Unique: k_d5_NtXO2qoXW_XbKINLw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9C5FD804758;
	Tue, 10 Nov 2020 17:46:15 +0000 (UTC)
Received: from treble (ovpn-120-104.rdu2.redhat.com [10.10.120.104])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0BAA52C31E;
	Tue, 10 Nov 2020 17:46:09 +0000 (UTC)
Date: Tue, 10 Nov 2020 11:46:06 -0600
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Peter Zijlstra <peterz@infradead.org>, Jann Horn <jannh@google.com>,
	the arch/x86 maintainers <x86@kernel.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Steven Rostedt <rostedt@goodmis.org>, Will Deacon <will@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Kees Cook <keescook@chromium.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Kernel Hardening <kernel-hardening@lists.openwall.com>,
	linux-arch <linux-arch@vger.kernel.org>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	linux-kbuild <linux-kbuild@vger.kernel.org>,
	kernel list <linux-kernel@vger.kernel.org>,
	linux-pci@vger.kernel.org
Subject: Re: [PATCH v6 22/25] x86/asm: annotate indirect jumps
Message-ID: <20201110174606.mp5m33lgqksks4mt@treble>
References: <20201015102216.GB2611@hirez.programming.kicks-ass.net>
 <20201015203942.f3kwcohcwwa6lagd@treble>
 <CABCJKufDLmBCwmgGnfLcBw_B_4U8VY-R-dSNNp86TFfuMobPMw@mail.gmail.com>
 <20201020185217.ilg6w5l7ujau2246@treble>
 <CABCJKucVjFtrOsw58kn4OnW5kdkUh8G7Zs4s6QU9s6O7soRiAA@mail.gmail.com>
 <20201021085606.GZ2628@hirez.programming.kicks-ass.net>
 <CABCJKufL6=FiaeD8T0P+mK4JeR9J80hhjvJ6Z9S-m9UnCESxVA@mail.gmail.com>
 <20201023173617.GA3021099@google.com>
 <CABCJKuee7hUQSiksdRMYNNx05bW7pWaDm4fQ__znGQ99z9-dEw@mail.gmail.com>
 <20201110022924.tekltjo25wtrao7z@treble>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201110022924.tekltjo25wtrao7z@treble>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Original-Sender: jpoimboe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=SxPuw0X3;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates
 63.128.21.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

On Mon, Nov 09, 2020 at 08:29:24PM -0600, Josh Poimboeuf wrote:
> On Mon, Nov 09, 2020 at 03:11:41PM -0800, Sami Tolvanen wrote:
> > CONFIG_XEN
> > 
> > __switch_to_asm()+0x0: undefined stack state
> >   xen_hypercall_set_trap_table()+0x0: <=== (sym)

With your branch + GCC 9 I can recreate all the warnings except this
one.

Will do some digging on the others...

-- 
Josh

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201110174606.mp5m33lgqksks4mt%40treble.
