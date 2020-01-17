Return-Path: <clang-built-linux+bncBCTYRDEG7MGBBAWZRDYQKGQE7F3Z7GA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x639.google.com (mail-pl1-x639.google.com [IPv6:2607:f8b0:4864:20::639])
	by mail.lfdr.de (Postfix) with ESMTPS id 408DA1413AD
	for <lists+clang-built-linux@lfdr.de>; Fri, 17 Jan 2020 22:52:04 +0100 (CET)
Received: by mail-pl1-x639.google.com with SMTP id h8sf11402504plr.11
        for <lists+clang-built-linux@lfdr.de>; Fri, 17 Jan 2020 13:52:04 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579297923; cv=pass;
        d=google.com; s=arc-20160816;
        b=QVL/QkyfMJ4p2NhCucphPQGgSsLFrazj7pNIyZP63V0t+Fd7L5JqiwacT4Rvex3ZNl
         yfjPzgGqL3BlMBCigwwno48PrFCJo0cxWNZHQzviPFXFY5djUgjEhbYveUsU/tNkFZKl
         rxpFxnP/u0im5P0yJMSjA75UI1JzzdJIQU45vg7ZStGa1W0jz+OT4qyIEKvYmAdvrVlD
         J5G7DOwcDjrQBwl4rmKAowbcTneP+dxHues9Rcu44aQFucRjQ0lQQFDnG33oZbTIh272
         iLXRAg9SHgOcq+9bSRTtoyend+QzDgs/XV6bilVYjJOkd558zfIg+CkTA4gxOrhAMY8K
         Rfaw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature:dkim-signature;
        bh=1a4jXQheMMzwD+lxdCUGDWjMJFb17l14dRKXEOSYYSU=;
        b=t8sCFpzsdaHM7IqVLnjmJZIRQzZRqqjh2pYbPRYcT/v+q+/rN+BMISQw8JVQv+SsD0
         hKYAR3crnjmC3pEULcSCTSu2o9/s4IVJz0liv2aGmSQBP6Qg2k1F4C9I5S/du5aEAqjV
         hNL4P36w0ApcgKRyG2sLM8xIPVRLYmd5e0o932a6wgl32ZOF2hg46teLuqF55c+RFpmH
         wrtjCj0c3KiCBDDx4rqsk8ZoH8V/y1ml7WkHqhwCs0DPQdqbaKGQi6TTCuS4Sz/EM2q/
         Evr+4qRqLqeNJYbCuO9Y3Qnnbw+h08Lug+0zDrgPNEcNi2UTTm0jCH4qqH1S2vArvcXQ
         u5xQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SCKFYcXA;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1a4jXQheMMzwD+lxdCUGDWjMJFb17l14dRKXEOSYYSU=;
        b=Axgqx8vvW+V1tuV5hsuuVPXEzm9CjBAWwN9TPVMBv/RhYPuTOjmS/2PDR4u6N8gmJi
         TjS1+G/7AZLyVUUEgbC3gaO1EOKEKPi+//Il2cDH9wTlgtMI9L8uMXB4dkb/yXWMyHOB
         W5QL2053RatJcV9AJmishrOHeWYHj9yJVWfjM84njfI5X0/d/mH6bmIgrBTa2jR01pA6
         /p+j5vCAN/WVZN3AaO9CzwRdy75erLP2Qlx+HvyU5zQakpGet8IlneiZ+X0DPJ10+I5E
         TwokhXYiwPdrt7vngMN89r1ZbPOS6SWAm/gU4zALF+Z7mlUb2rSIUWRDiNs65EBsS0dA
         SWCg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1a4jXQheMMzwD+lxdCUGDWjMJFb17l14dRKXEOSYYSU=;
        b=hNxZ/pN7dDFBnPEaO37yU3PeUANB0dz2DCLZwgAJXGyIM2UzEqh+lNolg6DV0IpifX
         4vYOH0XvjrU7wAcmnV7HBGEW/BLG7lVJMLIBGRdS5kVusRlCVm8EHD72Olc4A8SBMurx
         PObo0xCx3Yd35lCvG1zwT2aTTsOddS6+vCEIWB5/ad4sDqL7hpFSjhYeMf6hLfjmr99b
         4kbQYeRNNE3eo9Rjv7zPEt35ozouefz41WBK+4FIJaZ7GQtp95y04N/ch1e1M4qP5fhm
         08ZRpyJbT6pUdytmVKfM8r5jlTjfTCNtR/XnpjRT3HZUfNabvArfLNkQklO44+uf3wvb
         7P/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=1a4jXQheMMzwD+lxdCUGDWjMJFb17l14dRKXEOSYYSU=;
        b=n7LU/gHMvjdB11YpTwmgNBaqcV3P4qHlPp9j0dl7lygdrJHa9gjt0XdvubGTnfBuAr
         OsteoyGx3yCksgEh69Rg1Bx+PYzdC/7fozGV8ujSB+y9JehY1OmSOHNSXKYzANmZIIVg
         OpKD0SHvQjvFHQ0yBMPr9tZZtVMgg5oEObFXlZB0jQTpcoX80NYG2CjQl+IoYmX0qC9x
         DfXVAKUmZpnIrA8kDZ4RHfjXiMfdhaJ26HR1L4H005Xu7YNrEm87sNKK1IdovpQ24+O3
         IFg9b8nD/E/GHd9ppKR75LJ8bzkYKagtR8Cf1IQ1qpv9cI5PsG5YoIKmajIzq2vciycE
         mT0w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXLFnQcHHJk4RVYQIvHU0cQ2sLu3q/kor6b/bJAEr027qVMfB4K
	PiPCKEV0eH7oni4e9E+JSrg=
X-Google-Smtp-Source: APXvYqwFZoCveosx2IyJyIiX7laMb5O6iROCA/ZgROgsynVpN5Ln4hpXcpa7ft6UVNH6VLas44NPCg==
X-Received: by 2002:a63:1210:: with SMTP id h16mr47089524pgl.171.1579297922913;
        Fri, 17 Jan 2020 13:52:02 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:d007:: with SMTP id z7ls7468787pgf.9.gmail; Fri, 17 Jan
 2020 13:52:02 -0800 (PST)
X-Received: by 2002:a62:f207:: with SMTP id m7mr5187474pfh.223.1579297922485;
        Fri, 17 Jan 2020 13:52:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579297922; cv=none;
        d=google.com; s=arc-20160816;
        b=y5anuwnbdxwrAo1vs7c2c9wgk1CGtntk9dBMWuXe0t2xN4aDsHDyqAd9GRQenpk+hQ
         E3tCST49vM+B3C+s1N7ycMmbB+I1Lrh1i0WSQzlNBMF4E/YKzQGEswU4jud8xZ/Op4cY
         pNOJbkorl1lvzPXxDtls34Q+KUS/2BPc0MqG5Zz+lJD98tG2RUSbYyQVrYlFtA7rKKXx
         RfBumwErfC/DM5gJAgRO+SD7TVk0vluRdB9+pWD3tPgNXWl5RMH/0uZqulGHVGLaniPI
         zdyRIqwjkBs6hcrG5MiUmwRiiM66PorhrNXkits7e624cbOfcB/oJKUfI2bf0IG3mQCR
         Hy4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=LXFr+Oe+DVTEU1iGCR5ab4LZThTsrbbCxkzxMkJjD5c=;
        b=lWyGQEz1oSNVOD8icE7LxHZw9NrM6cWEg8YOWfY5GC3ufJLBCbqZW721ujdehF9ZaG
         0VpGo4qFeGEIVRFY06dEqb7NZBncje0hPTZWzfeTiqKRwx3Mi7ISrmxbKiYOzNGguulo
         yTX4djA2Rh7lERzNQXZMj0yN9d4mVcbOVB4I7vaRIqmoVQ8p5gZAIbLvVJm4haHV4Atn
         DugPUs65qOVN6Z/PbQxCsknj3jKAzjb4nJzTHdjdeTPtj+cp9QJH/1TNNEVpjhwLt3Xc
         vT9yBipe3OBHrps4DLMnShqgNuCcLdiP6wBtpBVTMsz0FAxrz/5TZgVjyq5BqZAa90NW
         gC+w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SCKFYcXA;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qt1-x844.google.com (mail-qt1-x844.google.com. [2607:f8b0:4864:20::844])
        by gmr-mx.google.com with ESMTPS id i131si1128079pfe.3.2020.01.17.13.52.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Jan 2020 13:52:02 -0800 (PST)
Received-SPF: pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) client-ip=2607:f8b0:4864:20::844;
Received: by mail-qt1-x844.google.com with SMTP id i13so22969485qtr.3
        for <clang-built-linux@googlegroups.com>; Fri, 17 Jan 2020 13:52:02 -0800 (PST)
X-Received: by 2002:ac8:7b29:: with SMTP id l9mr9364164qtu.141.1579297921555;
 Fri, 17 Jan 2020 13:52:01 -0800 (PST)
MIME-Version: 1.0
References: <157926819690.1555735.10756593211671752826.stgit@toke.dk> <157926820131.1555735.1177228853838027248.stgit@toke.dk>
In-Reply-To: <157926820131.1555735.1177228853838027248.stgit@toke.dk>
From: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Date: Fri, 17 Jan 2020 13:51:50 -0800
Message-ID: <CAEf4BzbAV0TmEUL=62jz+RD6SPmu927z-dhGL9JHepcAOGMSJA@mail.gmail.com>
Subject: Re: [PATCH bpf-next v4 04/10] tools/runqslower: Use consistent
 include paths for libbpf
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
 header.i=@gmail.com header.s=20161025 header.b=SCKFYcXA;       spf=pass
 (google.com: domain of andrii.nakryiko@gmail.com designates
 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
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
> Fix the runqslower tool to include libbpf header files with the bpf/
> prefix, to be consistent with external users of the library. Also ensure
> that all includes of exported libbpf header files (those that are exporte=
d
> on 'make install' of the library) use bracketed includes instead of quote=
d.
>
> To not break the build, keep the old include path until everything has be=
en
> changed to the new one; a subsequent patch will remove that.
>
> Fixes: 6910d7d3867a ("selftests/bpf: Ensure bpf_helper_defs.h are taken f=
rom selftests dir")
> Acked-by: Andrii Nakryiko <andriin@fb.com>
> Signed-off-by: Toke H=C3=B8iland-J=C3=B8rgensen <toke@redhat.com>
> ---
>  tools/bpf/runqslower/Makefile         |    5 +++--
>  tools/bpf/runqslower/runqslower.bpf.c |    2 +-
>  tools/bpf/runqslower/runqslower.c     |    4 ++--
>  3 files changed, 6 insertions(+), 5 deletions(-)
>
> diff --git a/tools/bpf/runqslower/Makefile b/tools/bpf/runqslower/Makefil=
e
> index b62fc9646c39..9f022f7f2593 100644
> --- a/tools/bpf/runqslower/Makefile
> +++ b/tools/bpf/runqslower/Makefile
> @@ -5,6 +5,7 @@ LLC :=3D llc
>  LLVM_STRIP :=3D llvm-strip
>  DEFAULT_BPFTOOL :=3D $(OUTPUT)/sbin/bpftool
>  BPFTOOL ?=3D $(DEFAULT_BPFTOOL)
> +INCLUDES :=3D -I$(OUTPUT) -I$(abspath ../../lib) -I$(abspath ../../lib/b=
pf)
>  LIBBPF_SRC :=3D $(abspath ../../lib/bpf)

drop LIBBPF_SRC, it's not used anymore

>  CFLAGS :=3D -g -Wall
>
> @@ -51,13 +52,13 @@ $(OUTPUT)/%.skel.h: $(OUTPUT)/%.bpf.o | $(BPFTOOL)
>
>  $(OUTPUT)/%.bpf.o: %.bpf.c $(OUTPUT)/libbpf.a | $(OUTPUT)
>         $(call msg,BPF,$@)
> -       $(Q)$(CLANG) -g -O2 -target bpf -I$(OUTPUT) -I$(LIBBPF_SRC)      =
     \
> +       $(Q)$(CLANG) -g -O2 -target bpf $(INCLUDES)           \

please preserve formatting and alignment conventions of a file

>                  -c $(filter %.c,$^) -o $@ &&                            =
     \
>         $(LLVM_STRIP) -g $@
>
>  $(OUTPUT)/%.o: %.c | $(OUTPUT)
>         $(call msg,CC,$@)
> -       $(Q)$(CC) $(CFLAGS) -I$(LIBBPF_SRC) -I$(OUTPUT) -c $(filter %.c,$=
^) -o $@
> +       $(Q)$(CC) $(CFLAGS) $(INCLUDES) -c $(filter %.c,$^) -o $@
>
>  $(OUTPUT):

[...]

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAEf4BzbAV0TmEUL%3D62jz%2BRD6SPmu927z-dhGL9JHepcAOGMSJA%4=
0mail.gmail.com.
