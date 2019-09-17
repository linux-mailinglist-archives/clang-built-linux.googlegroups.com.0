Return-Path: <clang-built-linux+bncBCTYRDEG7MGBBGWUQXWAKGQESDXXKVI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x237.google.com (mail-oi1-x237.google.com [IPv6:2607:f8b0:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id 27CB4B5878
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Sep 2019 01:19:56 +0200 (CEST)
Received: by mail-oi1-x237.google.com with SMTP id 18sf2596411oir.17
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Sep 2019 16:19:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568762394; cv=pass;
        d=google.com; s=arc-20160816;
        b=ROeXb2G2ptWxAdberixLATxyK1DEGqHqhKH1tFEiDkLOE9VAToPXwPZHNidrVROe2L
         w0e5AGuIamKPZF2PKJ7w4sF1JHh3CWT8uU/ko+eLkKN48CPrY/n8fN5JaAGLEaIL6Ffl
         I8wevu+pdHTyHDcufpUYQKbOHYFgIQeHItHViNG2YIiwEBqKc1jNMRmmlx+v9Bbp4Ncn
         TovhL161nPvs8DI2DDJBKmbPa+NMHGJXeUJ0IjUdpI9nhbTaJkC0CTKW/yaQUpF7n4cZ
         07BF1GaVBERuDbeY9WwMWn7pwrMAeTnOiU+iV6HLfqfyj9c2Phf7KyzTQAKYeOxpTymK
         U09Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=E9bIfkyOJODT5FXllUVFyblM3xpSWP/LhWSF8/FDRFM=;
        b=vRjuoOhuRKxv3e/ntRn7SEGyuxgEleoXwrYc72DFrmEONGV+EKDJdFGkqk3sUIB6+x
         glVG85KLQqQ3jKhtmbvs4kFYiX4NSkZUsonsd6tZqSS1t3y8ZB+ICzzMVq90tjZEtbAI
         KG3XuY4VSgdmbqK2dTiZC3W7H81DY5Uyjgh+U8GCkAuwc1LNIw3mVkSZGPIhLoSw57dh
         ryIs1/tWRnxFzCgNJuKs48rhlInWc1jxVlImtG8uzPqL5734SEx2g6A1aklkZqYhf986
         UJrx4LLcvyMjg+/oZeROnHADkekWqmhLkrBtm8hGclDKmsPtrm/aA/vbj9IQ7grSHnmC
         jJrA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lCs6Vbxa;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=E9bIfkyOJODT5FXllUVFyblM3xpSWP/LhWSF8/FDRFM=;
        b=SfVpbvY776T/Xr8CKfV4bCKdjeSx+GHgorYX4kfyAQr73pm+uSdZpSWfTzyRcxCno/
         wmS2zTmyaTjfHOQfNijwRIqZBlTc6HIe1QRNTk/QDbDGwsPfYkkWfPF0Ab41QNb5mofA
         dwpvtuSX9SPnxudQodMaPq7zwbuzL5Pbry3uT84yNHYI3i4wJD13BCvwwNpC2JZ9c73Z
         SIom4eRLHM2a3swkQGmXJbyD7Scdrffef2pt6ZzlgkfO5MjL0urjBiQyx+U7L/mFI8uL
         PPG7IPTlcNw/W8enHArGLH8Aw5cDL/SpqTZHN8pvNLDx9f9RUSSa1dxVtBG8EU7awjnB
         dfJQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=E9bIfkyOJODT5FXllUVFyblM3xpSWP/LhWSF8/FDRFM=;
        b=mzWIdaQxxvyFgGOXAFShM25SkxV69yY/w83G2lO4LI2g6kWV1i6NPVbXmPmKuebYXl
         qpW1zgIqXZ1G/w00DEoKGY+w99O/EI4svR6QmvGXvUwUh5y8ON6Gjy/1Kmkm8+JRYDHU
         sIn+56Cp6BEX4jq2YMQpFZzr/OQ8GOpDuDr9rZxShswWIrcCcd+R99pnFcnSj2CbdNzy
         UXNfGqzBPm8PB04t4zVb1voPFpQB4g3uQHmvKqd+H9FmQQLqkNudLbuAFdUKVzvi0AUB
         f1ChNDamUZ4UNxy4UFgdfxwvCXAYxuiPGGFiExXvyvD3/E7504UCqdLsnZpkuHVUoByE
         crJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=E9bIfkyOJODT5FXllUVFyblM3xpSWP/LhWSF8/FDRFM=;
        b=NZqRQEcQHdOU/0BNOvlkxmidBFrwVwgRq6byH3ul7xR3lG0sPFJDfMvFQ7WVzRGo/K
         Xn4IoC8lnliRw7Wh4ECmBK+3syOkXoMbRVA7cHnzKMj27fbIwmEZApgbW4vXkFy3hFB0
         k9U+WIFRi+MJgQXBw9X1niuIGL7Zctj346YWS8y8/DrTOVUgxWcwqbL6K8cYpryxR4Xx
         OdusgD/Zcc8NHQWK5vOEZBbaaveD+xsCNLbYMNg/GrWwTtDarH3sEtcx8ZQKJloK2Zp5
         6oCEqZRTNC1JfutGRYyTUkksI7kseXhojmN7+wvUu7tHzepWspVmfktE/cB7W4FYAUDm
         wWyw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVGMwJw1CN03TVkOpLkimFxeJGRMt+64xHxlLlOtQsrC5zi6DUY
	UhCIfpw06jelh8V7CAJhqb0=
X-Google-Smtp-Source: APXvYqzOiaIa6v/nlyxYNq5m5KvWNKoiOP20+82JDPoVEJg89OHUYiGrM++DxIYesdtxQU6bt4yW2Q==
X-Received: by 2002:aca:5bd5:: with SMTP id p204mr437373oib.35.1568762394582;
        Tue, 17 Sep 2019 16:19:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:2c42:: with SMTP id f60ls101967otb.8.gmail; Tue, 17 Sep
 2019 16:19:53 -0700 (PDT)
X-Received: by 2002:a05:6830:457:: with SMTP id d23mr1120303otc.315.1568762393184;
        Tue, 17 Sep 2019 16:19:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568762393; cv=none;
        d=google.com; s=arc-20160816;
        b=Yj/IBChviZABheAmuvXYXn/O11zUYfiJb/Nn0zCHVqlPOv0cZrYkgKGLmrAC0Vq3C5
         PymW+amMhnWLKv88AUwS2RiFgknUW4mhTTC2axjsO8+UWSZJtkelMBw2U3aFUtEN//ms
         w9tES5a7Y2dqcgVHzsmbt73I9WEfVexDXrdAyS4/VXNQSx7dMcRLojw9+hpdZd2WSgxp
         la+IAJap5S+VGWbW+36pttkm+YD2KhPwqE27Qs9uIfNt/uqQfKZV56CJYtGqqkfmMOgz
         48CUFBTq1NCHahHMomRRBUX2qXxxEmDzYPrCLLsE6oinra0o167ez4A3kdravzR+ViBv
         DZUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=rW0fUUzyh5J4//FBaJRiFgdgywM+/ZSdY6ujE4+DAUk=;
        b=uhgO+1KRk9Dei2QY8NL+PKJGbqWhHBYGKCnuYzjir8FKOiw8lsS9m4bKW+F+XIeDsi
         FWeCNjBPRIb9r4Efk7txxoRESn2Ho1Vsx6VY3sjgjysGs9DSkYctfcvkx/o/pk/ZJjHU
         imYvta+5SJNlTfHabdTmDk9q+yZwnCwZT56Ca2BNgX7QReWldkc0JA/rfoyu7l11PcmP
         T1KmaUKjIDOc6q6cJV+N5GEnd3PpMKUp49okWjlOGMhV/4KjSVjjhnQQa8CVkCSekIgg
         5itfbOAhmo8+UlLzBoRAN1GwLSioe0b7J8P708aFvQyWQY05m1fyxyKfC8cNFSD6nWCm
         gEIA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lCs6Vbxa;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x743.google.com (mail-qk1-x743.google.com. [2607:f8b0:4864:20::743])
        by gmr-mx.google.com with ESMTPS id a9si473440otr.0.2019.09.17.16.19.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Sep 2019 16:19:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) client-ip=2607:f8b0:4864:20::743;
Received: by mail-qk1-x743.google.com with SMTP id p10so5935428qkg.8
        for <clang-built-linux@googlegroups.com>; Tue, 17 Sep 2019 16:19:53 -0700 (PDT)
X-Received: by 2002:a05:620a:119a:: with SMTP id b26mr1147148qkk.39.1568762391880;
 Tue, 17 Sep 2019 16:19:51 -0700 (PDT)
MIME-Version: 1.0
References: <20190916105433.11404-1-ivan.khoronzhuk@linaro.org> <20190916105433.11404-8-ivan.khoronzhuk@linaro.org>
In-Reply-To: <20190916105433.11404-8-ivan.khoronzhuk@linaro.org>
From: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Date: Tue, 17 Sep 2019 16:19:40 -0700
Message-ID: <CAEf4Bzaidog3n0YP6F5dL2rCrHtKCOBXS0as7usymk8Twdro4w@mail.gmail.com>
Subject: Re: [PATCH v3 bpf-next 07/14] samples: bpf: add makefile.target for
 separate CC target build
To: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
Cc: Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, Yonghong Song <yhs@fb.com>, 
	"David S. Miller" <davem@davemloft.net>, Jakub Kicinski <jakub.kicinski@netronome.com>, 
	Jesper Dangaard Brouer <hawk@kernel.org>, john fastabend <john.fastabend@gmail.com>, 
	open list <linux-kernel@vger.kernel.org>, Networking <netdev@vger.kernel.org>, 
	bpf <bpf@vger.kernel.org>, clang-built-linux@googlegroups.com, 
	sergei.shtylyov@cogentembedded.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: andrii.nakryiko@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=lCs6Vbxa;       spf=pass
 (google.com: domain of andrii.nakryiko@gmail.com designates
 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
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

On Mon, Sep 16, 2019 at 3:58 AM Ivan Khoronzhuk
<ivan.khoronzhuk@linaro.org> wrote:
>
> The makefile.target is added only and will be used in

typo: Makefile

> sample/bpf/Makefile later in order to switch cross-compiling on CC

on -> to

> from HOSTCC environment.
>
> The HOSTCC is supposed to build binaries and tools running on the host
> afterwards, in order to simplify build or so, like "fixdep" or else.
> In case of cross compiling "fixdep" is executed on host when the rest
> samples should run on target arch. In order to build binaries for
> target arch with CC and tools running on host with HOSTCC, lets add
> Makefile.target for simplicity, having definition and routines similar
> to ones, used in script/Makefile.host. This allows later add
> cross-compilation to samples/bpf with minimum changes.
>
> The tprog stands for target programs built with CC.

Why tprog? Could we just use prog: hostprog vs prog.

>
> Makefile.target contains only stuff needed for samples/bpf, potentially
> can be reused later and now needed only for unblocking tricky
> samples/bpf cross compilation.
>
> Signed-off-by: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
> ---
>  samples/bpf/Makefile.target | 75 +++++++++++++++++++++++++++++++++++++
>  1 file changed, 75 insertions(+)
>  create mode 100644 samples/bpf/Makefile.target
>
> diff --git a/samples/bpf/Makefile.target b/samples/bpf/Makefile.target
> new file mode 100644
> index 000000000000..fb6de63f7d2f
> --- /dev/null
> +++ b/samples/bpf/Makefile.target
> @@ -0,0 +1,75 @@
> +# SPDX-License-Identifier: GPL-2.0
> +# ==========================================================================
> +# Building binaries on the host system
> +# Binaries are not used during the compilation of the kernel, and intendent

typo: intended

> +# to be build for target board, target board can be host ofc. Added to build

What's ofc, is it "of course"?

> +# binaries to run not on host system.
> +#
> +# Sample syntax (see Documentation/kbuild/makefiles.rst for reference)
> +# tprogs-y := xsk_example
> +# Will compile xdpsock_example.c and create an executable named xsk_example

You mix references to xsk_example and xdpsock_example, which is very
confusing. I'm guessing you meant to use xdpsock_example consistently.

> +#
> +# tprogs-y    := xdpsock
> +# xdpsock-objs := xdpsock_1.o xdpsock_2.o
> +# Will compile xdpsock_1.c and xdpsock_2.c, and then link the executable
> +# xdpsock, based on xdpsock_1.o and xdpsock_2.o
> +#
> +# Inherited from scripts/Makefile.host

"Inspired by" or "Derived from" would be probably more appropriate term :)

> +#
> +__tprogs := $(sort $(tprogs-y))
> +
> +# C code
> +# Executables compiled from a single .c file
> +tprog-csingle  := $(foreach m,$(__tprogs), \
> +                       $(if $($(m)-objs),,$(m)))
> +
> +# C executables linked based on several .o files
> +tprog-cmulti   := $(foreach m,$(__tprogs),\
> +                       $(if $($(m)-objs),$(m)))
> +
> +# Object (.o) files compiled from .c files
> +tprog-cobjs    := $(sort $(foreach m,$(__tprogs),$($(m)-objs)))
> +
> +tprog-csingle  := $(addprefix $(obj)/,$(tprog-csingle))
> +tprog-cmulti   := $(addprefix $(obj)/,$(tprog-cmulti))
> +tprog-cobjs    := $(addprefix $(obj)/,$(tprog-cobjs))
> +
> +#####
> +# Handle options to gcc. Support building with separate output directory
> +
> +_tprogc_flags   = $(TPROGS_CFLAGS) \
> +                 $(TPROGCFLAGS_$(basetarget).o)
> +
> +# $(objtree)/$(obj) for including generated headers from checkin source files
> +ifeq ($(KBUILD_EXTMOD),)
> +ifdef building_out_of_srctree
> +_tprogc_flags   += -I $(objtree)/$(obj)
> +endif
> +endif
> +
> +tprogc_flags    = -Wp,-MD,$(depfile) $(_tprogc_flags)
> +
> +# Create executable from a single .c file
> +# tprog-csingle -> Executable
> +quiet_cmd_tprog-csingle        = CC  $@
> +      cmd_tprog-csingle        = $(CC) $(tprogc_flags) $(TPROGS_LDFLAGS) -o $@ $< \
> +               $(TPROGS_LDLIBS) $(TPROGLDLIBS_$(@F))
> +$(tprog-csingle): $(obj)/%: $(src)/%.c FORCE
> +       $(call if_changed_dep,tprog-csingle)
> +
> +# Link an executable based on list of .o files, all plain c
> +# tprog-cmulti -> executable
> +quiet_cmd_tprog-cmulti = LD  $@
> +      cmd_tprog-cmulti = $(CC) $(tprogc_flags) $(TPROGS_LDFLAGS) -o $@ \
> +                         $(addprefix $(obj)/,$($(@F)-objs)) \
> +                         $(TPROGS_LDLIBS) $(TPROGLDLIBS_$(@F))
> +$(tprog-cmulti): $(tprog-cobjs) FORCE
> +       $(call if_changed,tprog-cmulti)
> +$(call multi_depend, $(tprog-cmulti), , -objs)
> +
> +# Create .o file from a single .c file
> +# tprog-cobjs -> .o
> +quiet_cmd_tprog-cobjs  = CC  $@
> +      cmd_tprog-cobjs  = $(CC) $(tprogc_flags) -c -o $@ $<
> +$(tprog-cobjs): $(obj)/%.o: $(src)/%.c FORCE
> +       $(call if_changed_dep,tprog-cobjs)
> --
> 2.17.1
>

tprogs is quite confusing, but overall looks good to me.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAEf4Bzaidog3n0YP6F5dL2rCrHtKCOBXS0as7usymk8Twdro4w%40mail.gmail.com.
