Return-Path: <clang-built-linux+bncBCTYRDEG7MGBBAU77XYAKGQEP77YYKI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x240.google.com (mail-oi1-x240.google.com [IPv6:2607:f8b0:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id A77B113CB3C
	for <lists+clang-built-linux@lfdr.de>; Wed, 15 Jan 2020 18:44:35 +0100 (CET)
Received: by mail-oi1-x240.google.com with SMTP id r6sf6617768oic.16
        for <lists+clang-built-linux@lfdr.de>; Wed, 15 Jan 2020 09:44:35 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579110274; cv=pass;
        d=google.com; s=arc-20160816;
        b=a5Ixm0/1zwXLenBCqaZ1GXkWzMqzMYKJQy3AiCXCO73nY1LVlFr09BSV+5kLs8dNut
         Q/SdWyTs8LKbMYJPBQvXriX6PBhwSmAdLJYrc0tpGQx1Yln9LnVssRN9O1taek9TfHHM
         JDAyHtP4x76B1YEq34UAV5s+luNYgpXnEUDJn9kmZ4Mj3TrUlU/lpd6jm/MKUtwj/t9f
         e+DZx3S+MYUvY07zhfPWhlDUqKLmNpcF6GXHCuMT6N3oRVczj9c7tzsNjS3pnllbTOp3
         fU+jH05ThaCCvkiUV3YcHIxt99tiO06TYu4Bk5Eah9t7Amj1/I8ZrLzpZ9q/xhNj8rkK
         V8nw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature:dkim-signature;
        bh=VAkqLMh3tJfCSQUVz+sUoqVMIH1sJ/iPQIA63RmFQnY=;
        b=I72oVO8ETsk7CxGqXsoOuTQSmn1KihoTIhZb7ctn9Jcn9b4diX3x/GLJk2MiQd2GAJ
         V8C6REgPNEMsmfdTp3ik4Hika9aSA7LeiZTPoZevfn+ScOi8L6gHkhl+q12pV5SB9Q1K
         VSByjNrGrpLTgwfTSvI2oM67iMLs52qBioJTs/q0N5BZPMIKsM7ssNn97tZ/eO1PPrBS
         d/8ogU7zTBF/7BpxrEZ993PitEXJkFqY1BkMUZEbqd1v863nbUwYkO5kzL77IfQEn3de
         cfb5hyPdMtNgVv+eN1er1LAn1tpqtc1z9RlPYNuIC+9AmjQ9/mmgUMtH9pkCODDBKECC
         hmkQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Lydwo7gZ;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=VAkqLMh3tJfCSQUVz+sUoqVMIH1sJ/iPQIA63RmFQnY=;
        b=fBLmmSx6VeypAc5x+/IU0G5ePl1Vktp6/wXNX1LxJ62IVtBGz/zUNcLiwn2EALqupk
         q/l7p1j/IC7r8te4ViKZrXzLXYNAOYHPewz1QQPCzl8sA8kyb+LuOyaycNsCU7oSPJuu
         IGDMjUsDVPksR/BkqhjgfiIZkPCTog8dBTkGE3oGIGTNT34udiQamT1HFKo4xlUZP82d
         1q7GLTTnBPRjnlgnaMNDgfYO312WiJs1RxvVU+esIlcr3D6/GfpagiD7+SLDioo3pNfc
         FCuf3dRGn1BevkX2Sri4Cf2Lu9Dq/euHWjAqpOVOiW4+7xzWFikYGRV4HtwMb8ad8Ou/
         o+GQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=VAkqLMh3tJfCSQUVz+sUoqVMIH1sJ/iPQIA63RmFQnY=;
        b=LKqThLb2NP0BrOYcFSy0HsJM8Ju4tmLfXKplcwY8oKWxwNBQ7SrYbjnNymUlkTrBaZ
         QaLP6nY/kzBpB2D8t5Lvf0OXor3VILidF5/etI0Nha4JfTkfMr91crc9Sq1jGTPGouQ4
         t4MyJ/PonSg7sEilTTCtrIa2SP0+HO1KkC8Xj32nVymA+3fL42DmVzIbQsnoFc+h5/Cx
         VJX7py2+1CCbkQSOfx8qfOtGwKVP5Me7L9PbSAeM5CyIjVrOa9xUpCsLm0TiZbLjqcbx
         7v+SHHX1ZLmIb81pk0auI2gd8BNR3JTX0IwLTCrLkCMN8lpgbi2lF1gvDjiaCbS/8yP3
         Yggw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=VAkqLMh3tJfCSQUVz+sUoqVMIH1sJ/iPQIA63RmFQnY=;
        b=a92sVWAOJnkRyjGtvmUzhSWnlzidBg3yoYDi1oHBucewKr7Aam/kvbu2IDESlhJFNJ
         l/Vo6qJPx25xGZ42r4Jb5EvzWWiurqnRITtIDG/wLOC9qLRvvurFrlBja/5CndqyME6P
         5XctaAPtQtGQaEbMDXs/iA8zAgEHCOvv46HyLRMxGVKcuNU9nII27QG+KL3vh/AO95yM
         6FXHD7Oym9k4ri1rkUEASwIUkkJ/UPUCBPE72/o28KtwBwtEzYAGsltIQNsPm771u0mI
         DwZawxJ2pe9BTK2HX5Uu53U71/01hdk6OARP6zgSVcPcPpCM6Gxc8xkIxCX2Q0gkVGQN
         9O8A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWFzAP0estTgDjyQsoxvA4pPxRG6L+bqKIzvqVc0bYYkrqq17MB
	0CFVQg9emXoT3hV4fkwDCwU=
X-Google-Smtp-Source: APXvYqwu5SDMkp4S56Zj2VUrKhpTZH8NvrVLOIMX6rko6yBNoKZ6AAN5du7ZEH9qzRXtZLgYlBzd8g==
X-Received: by 2002:aca:d0b:: with SMTP id 11mr766625oin.71.1579110274533;
        Wed, 15 Jan 2020 09:44:34 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:6a01:: with SMTP id g1ls3543534otn.6.gmail; Wed, 15 Jan
 2020 09:44:34 -0800 (PST)
X-Received: by 2002:a05:6830:147:: with SMTP id j7mr3603560otp.44.1579110274156;
        Wed, 15 Jan 2020 09:44:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579110274; cv=none;
        d=google.com; s=arc-20160816;
        b=pIwyq+bJNUR6yrIT2Pj4tIn/drbskxNWv7FHE2OH62i4oaDvRIFRfuBTMGHSbhArzu
         0oChreRv3mHfdzM1LmnS5q4ArTJ64cWgiKE8JlZJVSHsBOQ4nOncg2EZUpHUnGtPHZ2T
         28Gwxs3Uk64y6EHImcFcAd/AKGxAUOaGh6+SOlCrNTxGsCoYdUEiR953KaSvS3JJJ/To
         nTg+6Nf3ORrjax3+ugbZJlSRGMDmLFyQZ8y2mtig+neoE3J+4I/47CUYMbPV5Ax2l84L
         U6/NGty5ckJHLmEQpJd+lgmku/QDs0tjGmamCJd72YalCTpB6su/j619Ay5m9rEq03B2
         +UJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=m6xoPR2neNY7jGKcJU1Zrb+VdDyMT3eChB1zKABN77U=;
        b=khvkxbwyxoYE5RLdcNXe7vyYV0/nBgpD8/E4XPfnsIDdRk+Id1muAY8FaSZ+TG9r00
         kFi2U4F9N/R0/rLlNEz83qB2pn+P7blztNh7TvUnjODrVvzpz+ygcuHa4ek13lF6uec+
         wgAvAbyUKXaxT+l7sDsw9EgoCJ4KuFIAFx8y8YQ2d622e8S9cAFhRZaetK56C0xYfoeo
         o4UX1qBWDgztwfKGapEQaSyplstV0pYkSQ5P0pQatim/nNhPP+aic8fiDNwX4ZYfnQlh
         yWGW3z9kBn+mYSNQ8mlNUVovYZhYWTXKET/GVnAG89AksJzxQCTwUZsTS+sK7I13jbCx
         52XQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Lydwo7gZ;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x742.google.com (mail-qk1-x742.google.com. [2607:f8b0:4864:20::742])
        by gmr-mx.google.com with ESMTPS id e14si1024349otr.1.2020.01.15.09.44.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Jan 2020 09:44:34 -0800 (PST)
Received-SPF: pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) client-ip=2607:f8b0:4864:20::742;
Received: by mail-qk1-x742.google.com with SMTP id c17so16429732qkg.7
        for <clang-built-linux@googlegroups.com>; Wed, 15 Jan 2020 09:44:34 -0800 (PST)
X-Received: by 2002:a05:620a:14a2:: with SMTP id x2mr28882285qkj.36.1579110273560;
 Wed, 15 Jan 2020 09:44:33 -0800 (PST)
MIME-Version: 1.0
References: <157909756858.1192265.6657542187065456112.stgit@toke.dk> <157909757421.1192265.7677168164515639742.stgit@toke.dk>
In-Reply-To: <157909757421.1192265.7677168164515639742.stgit@toke.dk>
From: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Date: Wed, 15 Jan 2020 09:44:22 -0800
Message-ID: <CAEf4BzZO4yV61zwjiU5fhARCSBqDDtVx+GmLfRueXFS43BPAhw@mail.gmail.com>
Subject: Re: [PATCH bpf-next v2 05/10] bpftool: Use consistent include paths
 for libbpf
To: =?UTF-8?B?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu?= <toke@redhat.com>
Cc: Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, 
	Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>, Yonghong Song <yhs@fb.com>, 
	Andrii Nakryiko <andriin@fb.com>, Doug Ledford <dledford@redhat.com>, Jason Gunthorpe <jgg@ziepe.ca>, 
	"David S. Miller" <davem@davemloft.net>, Jakub Kicinski <jakub.kicinski@netronome.com>, 
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
 header.i=@gmail.com header.s=20161025 header.b=Lydwo7gZ;       spf=pass
 (google.com: domain of andrii.nakryiko@gmail.com designates
 2607:f8b0:4864:20::742 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
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

On Wed, Jan 15, 2020 at 6:14 AM Toke H=C3=B8iland-J=C3=B8rgensen <toke@redh=
at.com> wrote:
>
> From: Toke H=C3=B8iland-J=C3=B8rgensen <toke@redhat.com>
>
> Fix bpftool to include libbpf header files with the bpf/ prefix, to be
> consistent with external users of the library. Also ensure that all
> includes of exported libbpf header files (those that are exported on 'mak=
e
> install' of the library) use bracketed includes instead of quoted.
>
> To make sure no new files are introduced that doesn't include the bpf/
> prefix in its include, remove tools/lib/bpf from the include path entirel=
y,
> and use tools/lib instead.
>
> Fixes: 6910d7d3867a ("selftests/bpf: Ensure bpf_helper_defs.h are taken f=
rom selftests dir")
> Signed-off-by: Toke H=C3=B8iland-J=C3=B8rgensen <toke@redhat.com>
> ---
>  tools/bpf/bpftool/Documentation/bpftool-gen.rst |    2 +-
>  tools/bpf/bpftool/Makefile                      |    2 +-
>  tools/bpf/bpftool/btf.c                         |    8 ++++----
>  tools/bpf/bpftool/btf_dumper.c                  |    2 +-
>  tools/bpf/bpftool/cgroup.c                      |    2 +-
>  tools/bpf/bpftool/common.c                      |    4 ++--
>  tools/bpf/bpftool/feature.c                     |    4 ++--
>  tools/bpf/bpftool/gen.c                         |   10 +++++-----
>  tools/bpf/bpftool/jit_disasm.c                  |    2 +-
>  tools/bpf/bpftool/main.c                        |    4 ++--
>  tools/bpf/bpftool/map.c                         |    4 ++--
>  tools/bpf/bpftool/map_perf_ring.c               |    4 ++--
>  tools/bpf/bpftool/net.c                         |    8 ++++----
>  tools/bpf/bpftool/netlink_dumper.c              |    4 ++--
>  tools/bpf/bpftool/perf.c                        |    2 +-
>  tools/bpf/bpftool/prog.c                        |    6 +++---
>  tools/bpf/bpftool/xlated_dumper.c               |    2 +-
>  17 files changed, 35 insertions(+), 35 deletions(-)
>

[...]

> diff --git a/tools/bpf/bpftool/gen.c b/tools/bpf/bpftool/gen.c
> index 7ce09a9a6999..b0695aa543d2 100644
> --- a/tools/bpf/bpftool/gen.c
> +++ b/tools/bpf/bpftool/gen.c
> @@ -12,15 +12,15 @@
>  #include <stdio.h>
>  #include <string.h>
>  #include <unistd.h>
> -#include <bpf.h>
> -#include <libbpf.h>
> +#include <bpf/bpf.h>
> +#include <bpf/libbpf.h>
>  #include <sys/types.h>
>  #include <sys/stat.h>
>  #include <sys/mman.h>
>  #include <unistd.h>
> +#include <bpf/btf.h>
>
> -#include "btf.h"
> -#include "libbpf_internal.h"
> +#include "bpf/libbpf_internal.h"
>  #include "json_writer.h"
>  #include "main.h"
>
> @@ -333,7 +333,7 @@ static int do_skeleton(int argc, char **argv)
>                 #define %2$s                                             =
   \n\
>                                                                          =
   \n\
>                 #include <stdlib.h>                                      =
   \n\
> -               #include <libbpf.h>                                      =
   \n\
> +               #include <bpf/libbpf.h>                             \n\

please fix \n\ alignment

>                                                                          =
   \n\
>                 struct %1$s {                                            =
   \n\
>                         struct bpf_object_skeleton *skeleton;            =
   \n\

[...]

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAEf4BzZO4yV61zwjiU5fhARCSBqDDtVx%2BGmLfRueXFS43BPAhw%40m=
ail.gmail.com.
