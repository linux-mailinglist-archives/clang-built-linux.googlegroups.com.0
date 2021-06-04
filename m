Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBTO55GCQMGQEE5X37QQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb40.google.com (mail-yb1-xb40.google.com [IPv6:2607:f8b0:4864:20::b40])
	by mail.lfdr.de (Postfix) with ESMTPS id D179439BF7A
	for <lists+clang-built-linux@lfdr.de>; Fri,  4 Jun 2021 20:19:58 +0200 (CEST)
Received: by mail-yb1-xb40.google.com with SMTP id c9-20020a2580c90000b02904f86395a96dsf12773098ybm.19
        for <lists+clang-built-linux@lfdr.de>; Fri, 04 Jun 2021 11:19:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622830798; cv=pass;
        d=google.com; s=arc-20160816;
        b=CGjiOOpMPE8LkxmzZBvANbfU/liPuxP76OUd/ktVmxnozt7yaZlA6XIySQRYZ+7Fc9
         cW3YSocep4JDSFNDN/D0davOdpZOFx9yVPoAfEZpQCdrUrfpcWnwih8+wurURwr9ffKX
         4RfRwgMD/xLi84UTaB+CwUyl9ddYjlS289ss8auO74kWD8U31/X+6vP5pEGI6sqKcp8O
         nXSlY5mnL8FcDhjEXBVkrZ1f895+Dc3JwIVSNAUo38oXd5ppKrJPUxmdw3nKPB1ZwzUA
         2HgTFB2/rHMXiyHseSzBjyH3erKbGHWUQgIyXwemCIRbWr0I0q2ZF3s1FDSqum8r67Ua
         hNCQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=xqglMCKMVIAk8smXC7mJvSj1nzwVrxAS21ThebwY6Ck=;
        b=AqjAUc/uIlaqlENU76toLKKWyR/zuDrbdVNXkMWY37RebkUM03uUNg1CThfgCtxSYy
         zjZVe20ECeTmFqcGtFg7GoeoGoqYBt0EgTcdCq6LaC4e9/mnRRpyhk/QpcpcqtHkgAyQ
         0HGjEKdvN75+5n/ePW7aRzds74liCUd6xCJgb6H3GFvL8BAyKesQeFxCz8THMCeBH7gn
         YGKDZhXLXcA9tkkYHxy/yzFgThAHkN0OYc0bAq0c2tY7oXwYx5gQpGqGDsdAJpEcRF75
         UrYFWw/a2wvsCytdCdx2RDAtPv4O+ewvV1zuf5S1+nVdKqB5wem042JaqL3dmQzhoQ4H
         CbtA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=BVm6nVfz;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1035 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xqglMCKMVIAk8smXC7mJvSj1nzwVrxAS21ThebwY6Ck=;
        b=BOPYPvrofU0048k8p5gnpwhN40HUD+Ay78GvwKTdVwpWASK4OVIIgZAZbEkqmz3IZ1
         rlXXZwey0rMWfR7Msa5XnpXL5No0pJbAK40OlolYg78oOzBOXMj1k/3eO8/wiFFX58p7
         QtSxDopAe1fN2yh5lir0ttdl/NzQNFT4k34GQvjyoOUckM5nC2ZEIKYE0WmqrRnJ6Oku
         DBjTv5Y6mRJOFQpABU2k05kKoIOetjG5jVBzkdxyV0SHZa4hWfQNbTT8nVQVm38Xh/r+
         OLVDk1ctFtuQXuMVUP4fxrJ/msThDF+O7ankgKkv92mmr43gVtPGxqzo8Dpgdod16b5e
         tr4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xqglMCKMVIAk8smXC7mJvSj1nzwVrxAS21ThebwY6Ck=;
        b=PLr028HDJrfqObRq673qE610TdBB6GPFMd4JzzITR1ncKC77OmkbIVXS4y6fbdD6gY
         q0+6HYH8R2hEQqAx9fWZvobIuyRJttJc3gK+/m71/JKrs2l6n1J1/DRDQl3dyT7DQFcm
         kThZZ+p63WtlUEk23YqF990LSItrkEYX3dJVGf8XBJ2c+gl21LZJZ5/7/hvKT/ES+JgA
         tReUxCkZ02ea2CzH6aWVuaBc03ENVYlQFX/dmvyriAx5BW0h9PR+ZClAq1gTcGubYpn4
         WSBb0pgpK0yYCzwwF3SeTyqQugHnF1y/3sAPOuq99DBPfgyTJrziNGeVpaKw4drQoF4y
         iCuA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532gSB3GEjuKXNqMKi9o6eFShQa4E0NdaLZnsF4q7NmHYOmsPo1r
	FuvqLgXjfUfB5XRRWw1zSdw=
X-Google-Smtp-Source: ABdhPJzASxwBzGv6c88D0eYyVy3yt72NSLs4sM8MldVUCwWY3WWZMVyYAhrHGPfqOUsVrXeWSW91kw==
X-Received: by 2002:a25:bbc9:: with SMTP id c9mr6910420ybk.407.1622830797778;
        Fri, 04 Jun 2021 11:19:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5b:3c3:: with SMTP id t3ls4464993ybp.4.gmail; Fri, 04 Jun
 2021 11:19:57 -0700 (PDT)
X-Received: by 2002:a25:a4c8:: with SMTP id g66mr6941749ybi.301.1622830797306;
        Fri, 04 Jun 2021 11:19:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622830797; cv=none;
        d=google.com; s=arc-20160816;
        b=ZgaEbAc3op0OI8pUtfESyDOeDCVaIU5jFK4d253j6aA4ZVrl/no3giLmBQZbNqwXAT
         cVLWlec/h4zLEoQrezywE9n8yjKTuO8VJ9nf7XheSeeyJOjZqvT4Is3B/PjiShVjPPhE
         a57RCphHgC+9OXsvJFEKnvRGHNx6pYQ5iNz1Q++rWWmuBgI7bhAPV3iDtUyqB5U/FFZr
         K9UmQ2cHxeNsSp2tJGowjH3/omwi4hiTe37oLwhWOHn4JP6WHZl3wHVyDxQLY+0Usy4a
         mBHWz0Zt9TrVBwHiv08lHR4P9LnvJLJUgL0G7FW0fqIVqDFLfOZTyFNvtK4mJrR8eixQ
         FJoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=83HlqsNDaTvNDG7BbR+kglAFQeKo20qcIcpEJ/mxm6E=;
        b=OUnpMPRfctirt1Y+NaowfuxRkqC9wfD7KXaAsalmgyulEwPOitvfTAoSRJ0lpAloEC
         mcAqQI3Ezd2Fl9loo3pouYSG54R9XYIlAJw+6MUrgDEROxZAHiQILYistT3XxVvJTT/H
         IqFeBnKlx7zA/FqohKGN2trseG5Adp/fLYcc5el/ByDEXQPRTsF6tspOkX8ALHVCvOPc
         g8z/8/Z422iKYsHoMXxWX555LEzUB37aIhSltBI0d7UsXEbKwHRNEMo7m/x9TFF2WUTz
         4TacRTzb2Ss3HyBvoO9Oa0dHyylsAdYAheVw6xDPlScllL9rERgVWJCu+oD+6RrRVFlQ
         KqoQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=BVm6nVfz;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1035 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1035.google.com (mail-pj1-x1035.google.com. [2607:f8b0:4864:20::1035])
        by gmr-mx.google.com with ESMTPS id q62si831021ybc.4.2021.06.04.11.19.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Jun 2021 11:19:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1035 as permitted sender) client-ip=2607:f8b0:4864:20::1035;
Received: by mail-pj1-x1035.google.com with SMTP id ei4so5995846pjb.3
        for <clang-built-linux@googlegroups.com>; Fri, 04 Jun 2021 11:19:57 -0700 (PDT)
X-Received: by 2002:a17:90a:6e07:: with SMTP id b7mr17916258pjk.7.1622830796483;
        Fri, 04 Jun 2021 11:19:56 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id ce15sm5775894pjb.4.2021.06.04.11.19.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Jun 2021 11:19:55 -0700 (PDT)
Date: Fri, 4 Jun 2021 11:19:54 -0700
From: Kees Cook <keescook@chromium.org>
To: Jarmo Tiitto <jarmo.tiitto@gmail.com>
Cc: Sami Tolvanen <samitolvanen@google.com>, Bill Wendling <wcw@google.com>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org,
	morbo@google.com
Subject: Re: [PATCH v2 1/1] pgo: Fix sleep in atomic section in prf_open()
Message-ID: <202106041112.D89F8B21@keescook>
References: <20210603155318.46346-1-jarmo.tiitto@gmail.com>
 <202106031441.FA95440A@keescook>
 <3874710.oRHo3lsn7p@hyperiorarchmachine>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <3874710.oRHo3lsn7p@hyperiorarchmachine>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=BVm6nVfz;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1035
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Fri, Jun 04, 2021 at 01:15:43PM +0300, Jarmo Tiitto wrote:
> Kees Cook wrote perjantaina 4. kes=C3=A4kuuta 2021 0.47.23 EEST:
> > On Thu, Jun 03, 2021 at 06:53:17PM +0300, Jarmo Tiitto wrote:
> > > In prf_open() the required buffer size can be so large that
> > > vzalloc() may sleep thus triggering bug:
> > >=20
> > > =3D=3D=3D=3D=3D=3D
> > >  BUG: sleeping function called from invalid context at include/linux/=
sched/mm.h:201
> > >  in_atomic(): 1, irqs_disabled(): 1, non_block: 0, pid: 337, name: ca=
t
> > >  CPU: 1 PID: 337 Comm: cat Not tainted 5.13.0-rc2-24-hack+ #154
> > >  Hardware name: QEMU Standard PC (Q35 + ICH9, 2009), BIOS 0.0.0 02/06=
/2015
> > >  Call Trace:
> > >   dump_stack+0xc7/0x134
> > >   ___might_sleep+0x177/0x190
> > >   __might_sleep+0x5a/0x90
> > >   kmem_cache_alloc_node_trace+0x6b/0x3a0
> > >   ? __get_vm_area_node+0xcd/0x1b0
> > >   ? dput+0x283/0x300
> > >   __get_vm_area_node+0xcd/0x1b0
> > >   __vmalloc_node_range+0x7b/0x420
> > >   ? prf_open+0x1da/0x580
> > >   ? prf_open+0x32/0x580
> > >   ? __llvm_profile_instrument_memop+0x36/0x50
> > >   vzalloc+0x54/0x60
> > >   ? prf_open+0x1da/0x580
> > >   prf_open+0x1da/0x580
> > >   full_proxy_open+0x211/0x370
> > >   ....
> > > =3D=3D=3D=3D=3D=3D
> > >=20
> > > Since we can't vzalloc while holding pgo_lock,
> > > split the code into steps:
> > > * First get buffer size via prf_buffer_size()
> > >   and release the lock.
> > > * Round up to the page size and allocate the buffer.
> > > * Finally re-acquire the pgo_lock and call prf_serialize().
> > >   prf_serialize() will now check if the buffer is large enough
> > >   and returns -EAGAIN if it is not.
> > >=20
> > > New in this v2 patch:
> > > The -EAGAIN case was determined to be such rare event that
> > > running following in a loop:
> > >=20
> > > $cat /sys/kernel/debug/pgo/vmlinux.profraw > vmlinux.profdata;
> > >=20
> > > Didn't trigger it, and I don't know if it ever may occur at all.
> >=20
> > Hm, I remain nervous that it'll pop up when we least expect it. But, I
> > went to go look at this, and I don't understand why we need a lock at
> > all for prf_buffer_size(). These appear to be entirely static in size.
> >=20
>=20
> I would think the reasoning of taking the pgo_lock for prf_buffer_size() =
is that because
> __prf_get_value_size() walks linked lists that are modified by=20
> __llvm_profile_instrument_target() in instrument.c.

Ooooh. Thanks; I missed this!

Let's go with the loop I proposed so we don't have to involve userspace
in the EAGAIN failure, etc.

-Kees

--=20
Kees Cook

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/202106041112.D89F8B21%40keescook.
