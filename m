Return-Path: <clang-built-linux+bncBCTYRDEG7MGBBBGPRDYQKGQEMO7R4XA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43c.google.com (mail-pf1-x43c.google.com [IPv6:2607:f8b0:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DFF214131C
	for <lists+clang-built-linux@lfdr.de>; Fri, 17 Jan 2020 22:30:46 +0100 (CET)
Received: by mail-pf1-x43c.google.com with SMTP id h16sf15857697pfn.23
        for <lists+clang-built-linux@lfdr.de>; Fri, 17 Jan 2020 13:30:46 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579296644; cv=pass;
        d=google.com; s=arc-20160816;
        b=SqeBfLR2XaFfv2aMfY8+dtCHib4Rrgewj+GeN2uATDhNGpTW0zEgQMggHZJR7zhvyZ
         ZHN9d5QTZn5Ba406eLzNvz1y06jDnpfUkQ0hvlzYTA4ur4DMR9pqwne/FqiKP4Z37t9O
         8pQxfWzUaxYA6lWngLpsTQdc4ZqTHJkTtTDzAupgAhCV54N3k3ig9/VZaoXQggJmuV3G
         TWuQNoz1zTpAup/Kr+ovZQXcs0hG3UYXhy8Z8JB65wHpaX3UxJGBx2NG3qFcrMWkeA+d
         b/et5j90frBPiT80vE6M5ibRZ+Bqk5Ykt1yGxH8y6GUwlIB1MnDA62OL9MqD1FAA9Si1
         tyFA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature:dkim-signature;
        bh=RSNv09G2pkCy83WKsvhVgpjehFFYyfET11NJXJbQ9z4=;
        b=UEdqbyp1/ViH1dLFyYmqSTIC4OA4GYKHsnGE2287t2SdNljlLgj/Vdm/JO8Eqyzh+4
         tDhyV9M6H3KTdcBKtb5ArHD8KkPEztwr/cE/rZVxU/lyzoAhmnbQ8ZVNxi1V7FXKjn09
         GE8bfzYlVY+vUN/tvAA3qtLOo9RlrMd/am8aP3jBiURcZ3RtElVsG1XfUxZPQPZsFAep
         iaryXE9Numv0bmTLv9FEhl2vx701gBxfZjG0KlDNRXeE5qGG4AsLH/QsvlFz7FKYKzSh
         xCYVsEiKIiemowjP8cKDgHYDiwe6J0jRMb9tCSAbP/mFoThFChq6BH4Nv3MOatgZPRtc
         /8zA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZtisCfjA;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=RSNv09G2pkCy83WKsvhVgpjehFFYyfET11NJXJbQ9z4=;
        b=snq0Y+Opuq1mprMAEf4r6evCkvRpSNh1IH23XxOXUqsVGNamcIAa5kIQtYT6z7B4xr
         xDrdpEMlIu1un5DSFtF1KMSElezoqZK9kXZDXPeoXpd+Emywn2Tba7QvjWnQznN0tWPx
         dNUlaN8ea6Pudl4SqvPZ/yBeem7C4kuMByKOxvNR/vyeItNWK2+vyFlIZz1PbmRg5fDf
         DmCKDiBCRVRuZhalWPMsZHD+Cqvuvni1E8Tq8tmR6r/qNRHX6s099Ki9bgGRticKJzoa
         U/hrmwsUfTbQKQP6wWleafuuPpeprvuwX3BIVGkkUsKb/Z90PVFQiKNHCFzqno59StXb
         Cgpg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=RSNv09G2pkCy83WKsvhVgpjehFFYyfET11NJXJbQ9z4=;
        b=Rh/kvnl8Ut189lJqJ4ypGRVZkD82uPlZX//+jaO02MiARU9Z+mU3SC8fOUNSV4cx+k
         ajR1STyre1iMpQOfw/E1FcK7sRUi7mpokT7NfPbercyjBFDiH8dWMr8go+ONhAaXrbMD
         qqOwOe1tjXfID/dLbpv8TqwPONmk7yz/De1xio+nQ/VizDXOK2dfhmkPIyGnKwbho6Wu
         4zEszxHFG30R9y1DfklzxLw0zjODuAUGLDjZKi+jrh2JuCKcbc+F7Gy9ReHOPIcHhTHz
         MCak7ExtEpLTDNn5Mzjf6kKsQpNnyAnTavpry4oS8kWmbauyLxoaRVnfmr5naVP9m19B
         fZpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=RSNv09G2pkCy83WKsvhVgpjehFFYyfET11NJXJbQ9z4=;
        b=fANVCo4UI+39eFLGqnY7TU2N+3QkNpkgL8lGqgITZZZ8nvWKt1xAnjrLyD5zlY9gKS
         RWJlXqZVF0oPVNgNcZPQUQCI0VlQT/rCVox5FBebnCn1luVdvAArTX/yoWNjhzG9eiKN
         e6O+QwgE7bIxN+MmUUh5kuTZ/FVTUIXfRG9zEB09GpVok5o1h1kvf5QyJVNwXHh1rxbg
         LqNCn8nEr9LZz95PzJnypMWPCFxc65l/WNswQpilVBCScjM6tHVS0dmo4lNnSIpu3hWt
         6aitIOn3nrDLEnfaL3W+ZWwOHGa0e7md5cEPFvyZe1Tt4mbfSsJjeqn00DZ1P4UIR7jS
         wsUw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUK+V8zqa0L3UBomgJs1HCn0BShtjSrWtvg0CaywTBNrjORVgJc
	oHCmLtA12veGGy+Xbm2FB+U=
X-Google-Smtp-Source: APXvYqx5jz+ZCNJxQ5VNLjBBEGsbPSq5Xj0MTcdhT+5RNLQSMsoCc28hccYiXcf6kCuuKovvBrQ0KA==
X-Received: by 2002:a65:4381:: with SMTP id m1mr48466730pgp.68.1579296644378;
        Fri, 17 Jan 2020 13:30:44 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:cd83:: with SMTP id o125ls8070172pfg.5.gmail; Fri, 17
 Jan 2020 13:30:43 -0800 (PST)
X-Received: by 2002:a65:6898:: with SMTP id e24mr49365472pgt.59.1579296643830;
        Fri, 17 Jan 2020 13:30:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579296643; cv=none;
        d=google.com; s=arc-20160816;
        b=SUsB5JbAlPGBsIXDm8SVTXZHcsHdxrFhZbUP2noCKa/5IMPL4Jwp/WpAuzl8VtL+dd
         OfDeS+ONKyPZL0L0KK+M7E0Kikd1fFSshbMwx7ve5qbsJtPDNL8KaZ/64rv02SjUmYnU
         lkka6UvNNQhYdrP0OsP8tDeT+B0YGIUvC1Q09shEfpjopMPuiWEnnBOvu7fVpC++jNEG
         eaK7yXb+VPuD3DjOJ6defIIHaibs5QPdPcjhPdtFNXewjIamU0lj4TrOFm8loDTgFJIl
         7yZbv7zg1ow5u13Q9yxa2R1D3i8xHMs7U2K5jXB0PmKmPp5kwWRy+PLrMr5gnbCQXigW
         aOyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=oKpJrpMP/WbiwVT8VF9eF4TKH+tXOjUsUEulh6dUpSw=;
        b=Eg25Ay79jUBcwoHRXAZI1OYmALwu+WylCyRNe4CZD7s5Sd9pBCYrV1+32yPJYV9B6s
         5SH93tL9/Bf6gTmE/Ddx/YxXz7QtgvQ8siqVZVdoBypEBAelwalu9nw2/HfD89WIstw1
         ITfGdVD5rbJJ+FXL7kjB5lRq86E4KicnGDSgbHxIEr8YvoBp501QtjzFwovceBhyVAQC
         rBlR+biL5InoOreKxjlx29XVCcbHjMQUSFoUdwXIWufgq2DzWVRg2Viy2JTFR19QEarV
         aAuY9tH4rUaBygJWy2K8wMV8quT8OdG0ZY6Xl3Efo7QnXyH/qLid9/xbrCYoouoatTP3
         9jrQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZtisCfjA;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qt1-x842.google.com (mail-qt1-x842.google.com. [2607:f8b0:4864:20::842])
        by gmr-mx.google.com with ESMTPS id t34si501837pjb.3.2020.01.17.13.30.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Jan 2020 13:30:43 -0800 (PST)
Received-SPF: pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) client-ip=2607:f8b0:4864:20::842;
Received: by mail-qt1-x842.google.com with SMTP id d5so22927883qto.0
        for <clang-built-linux@googlegroups.com>; Fri, 17 Jan 2020 13:30:43 -0800 (PST)
X-Received: by 2002:ac8:7b29:: with SMTP id l9mr9287898qtu.141.1579296642749;
 Fri, 17 Jan 2020 13:30:42 -0800 (PST)
MIME-Version: 1.0
References: <157926819690.1555735.10756593211671752826.stgit@toke.dk> <157926819920.1555735.13051810516683828343.stgit@toke.dk>
In-Reply-To: <157926819920.1555735.13051810516683828343.stgit@toke.dk>
From: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Date: Fri, 17 Jan 2020 13:30:31 -0800
Message-ID: <CAEf4BzY3RM3LS3bvU4dHY+8U27RaezeaC9rfuW1YLAcFQEQKEA@mail.gmail.com>
Subject: Re: [PATCH bpf-next v4 02/10] tools/bpf/runqslower: Fix override
 option for VMLINUX_BTF
To: =?UTF-8?B?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu?= <toke@redhat.com>
Cc: Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, 
	Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>, Yonghong Song <yhs@fb.com>, 
	Andrii Nakryiko <andriin@fb.com>, Doug Ledford <dledford@redhat.com>, Jason Gunthorpe <jgg@ziepe.ca>, 
	"David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>, 
	Jesper Dangaard Brouer <brouer@redhat.com>, John Fastabend <john.fastabend@gmail.com>, 
	Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, Jiri Olsa <jolsa@redhat.com>, 
	Namhyung Kim <namhyung@kernel.org>, Shuah Khan <shuah@kernel.org>, 
	Networking <netdev@vger.kernel.org>, bpf <bpf@vger.kernel.org>, 
	open list <linux-kernel@vger.kernel.org>, linux-rdma@vger.kernel.org, 
	"open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: andrii.nakryiko@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=ZtisCfjA;       spf=pass
 (google.com: domain of andrii.nakryiko@gmail.com designates
 2607:f8b0:4864:20::842 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
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

On Fri, Jan 17, 2020 at 5:37 AM Toke H=C3=B8iland-J=C3=B8rgensen <toke@redh=
at.com> wrote:
>
> From: Toke H=C3=B8iland-J=C3=B8rgensen <toke@redhat.com>
>
> The runqslower tool refuses to build without a file to read vmlinux BTF
> from. The build fails with an error message to override the location by
> setting the VMLINUX_BTF variable if autodetection fails. However, the
> Makefile doesn't actually work with that override - the error message is
> still emitted.
>
> Fix this by including the value of VMLINUX_BTF in the expansion, and only
> emitting the error message if the *result* is empty. Also permit running
> 'make clean' even though no VMLINUX_BTF is set.
>
> Fixes: 9c01546d26d2 ("tools/bpf: Add runqslower tool to tools/bpf")
> Signed-off-by: Toke H=C3=B8iland-J=C3=B8rgensen <toke@redhat.com>
> ---

approach looks good, thanks, few nits below

>  tools/bpf/runqslower/Makefile |   18 +++++++++---------
>  1 file changed, 9 insertions(+), 9 deletions(-)
>
> diff --git a/tools/bpf/runqslower/Makefile b/tools/bpf/runqslower/Makefil=
e
> index cff2fbcd29a8..b62fc9646c39 100644
> --- a/tools/bpf/runqslower/Makefile
> +++ b/tools/bpf/runqslower/Makefile
> @@ -10,13 +10,9 @@ CFLAGS :=3D -g -Wall
>
>  # Try to detect best kernel BTF source
>  KERNEL_REL :=3D $(shell uname -r)
> -ifneq ("$(wildcard /sys/kernel/btf/vmlinux)","")
> -VMLINUX_BTF :=3D /sys/kernel/btf/vmlinux
> -else ifneq ("$(wildcard /boot/vmlinux-$(KERNEL_REL))","")
> -VMLINUX_BTF :=3D /boot/vmlinux-$(KERNEL_REL)
> -else
> -$(error "Can't detect kernel BTF, use VMLINUX_BTF to specify it explicit=
ly")
> -endif
> +VMLINUX_BTF_PATHS :=3D /sys/kernel/btf/vmlinux /boot/vmlinux-$(KERNEL_RE=
L)
> +VMLINUX_BTF_PATH :=3D $(abspath $(or $(VMLINUX_BTF),$(firstword \
> +       $(wildcard $(VMLINUX_BTF_PATHS)))))

you can drop abspath, relative path for VMLINUX_BTF would work just fine

>
>  abs_out :=3D $(abspath $(OUTPUT))
>  ifeq ($(V),1)
> @@ -67,9 +63,13 @@ $(OUTPUT):
>         $(call msg,MKDIR,$@)
>         $(Q)mkdir -p $(OUTPUT)
>
> -$(OUTPUT)/vmlinux.h: $(VMLINUX_BTF) | $(OUTPUT) $(BPFTOOL)
> +$(OUTPUT)/vmlinux.h: $(VMLINUX_BTF_PATH) | $(OUTPUT) $(BPFTOOL)
>         $(call msg,GEN,$@)
> -       $(Q)$(BPFTOOL) btf dump file $(VMLINUX_BTF) format c > $@
> +       @if [ ! -e "$(VMLINUX_BTF_PATH)" ] ; then \

$(Q), not @

> +               echo "Couldn't find kernel BTF; set VMLINUX_BTF to specif=
y its location."; \
> +               exit 1;\

nit: please align \'s (same above for VMLONUX_BTF_PATH) at the right
edge as it's done everywhere in this Makefile

> +       fi
> +       $(Q)$(BPFTOOL) btf dump file $(VMLINUX_BTF_PATH) format c > $@
>
>  $(OUTPUT)/libbpf.a: | $(OUTPUT)
>         $(Q)$(MAKE) $(submake_extras) -C $(LIBBPF_SRC)                   =
      \
>

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAEf4BzY3RM3LS3bvU4dHY%2B8U27RaezeaC9rfuW1YLAcFQEQKEA%40m=
ail.gmail.com.
