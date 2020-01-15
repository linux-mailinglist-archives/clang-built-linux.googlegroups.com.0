Return-Path: <clang-built-linux+bncBCTYRDEG7MGBB4EJ7XYAKGQEU6RB4MI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63d.google.com (mail-pl1-x63d.google.com [IPv6:2607:f8b0:4864:20::63d])
	by mail.lfdr.de (Postfix) with ESMTPS id EEE3D13CA18
	for <lists+clang-built-linux@lfdr.de>; Wed, 15 Jan 2020 17:59:29 +0100 (CET)
Received: by mail-pl1-x63d.google.com with SMTP id t17sf7180486plr.13
        for <lists+clang-built-linux@lfdr.de>; Wed, 15 Jan 2020 08:59:29 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579107568; cv=pass;
        d=google.com; s=arc-20160816;
        b=W+05zTGZpxNySa2Xkt5Qx7NSBvOrffa62LqL7v4XoKILj6TJ4NEGgB/m7j2Je1OWT5
         z+SgO04yKGCIPakQiMgJeRVA/CwBYrsKVk5ba/TaN6xBVNurDV0I9z4U/tcJxqdtz5Tw
         3OfJkUR1+NTSs28FC3xCQwNf4qJ9QoEN3akkifKX8YD7TL31LKHjIQalSKXAOmjuuIjs
         rUxLYJ+pi2g73nrS8mfwgIsxPYmyIHYYN4iaYkUrI1zjrZ+bChQo4LViwVIgSL2af0Ue
         PSkEhm9PHePpBv8rc/p6Vm8MpS7cuRir6SQHiI/VPsstgjmmoQKuv0uyHsyYMUaDOI8i
         p/Jw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature:dkim-signature;
        bh=qLEPg+GSIsJs+ZjoLaDb07KrabffimCpL5RydxIyf7k=;
        b=L5G43Mq/0hOVYFZIHubITJSLALi9m6huxG5XEFENYMKYf85MlYcGhC9gCdEFfc0UxL
         G5PNvBwVlRi2P/vmCwoj2gmHV+GZFOn5tuKJdZFCqmd9wrjAK2RaXzWozEz9YS0MwK+3
         l4s78tj32NMuKar0d5ce9NshKNa/dCvwYStWfiKVosPY8d43H6uWaDOJ6NSY+oR/MruO
         ihFQMBTy+MvsP8c8PvJHIYEDsXVQr+WOFFffBVz6DSxAx/t0MZBPl/nJtrQeLJtlM7D+
         3sIX3mZRnKQY/2Tv679zQWv0nLI/05gSuBQndmxgL55ZiBNFllaxnbFIJwzKFah+Q0mV
         ff3w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="OSUmC/dY";
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qLEPg+GSIsJs+ZjoLaDb07KrabffimCpL5RydxIyf7k=;
        b=FnbvPjFcE6T+QBS8h66wqPqQmaORkyawGqwE2lioYe1wXoxAHjnxU0JPkEcl2vmfNG
         9MXUhxG7Z9vFZJ/gBJCDoPgiJhlwqfZ3OWoKl8+0mImmYvMWGatliPVd3raaBI/r0gmA
         XJvIQa7k+8Y1FUb/62gORuShYWmwX7T6gnF9FtM6YeyxsGogL0AvdMZP4m2mhaLGgGAe
         pF4qCuKWCqEsUyoneQ+cC2tlX0449QX49OeoJNKn1dkTUbl2su9jabTw0/zI1P6tVqiF
         DFTAJUw86O8sSvqNOwkiQyd6ZdA1u0/JpznKLKMBq1T1Z5qemn45hg3Pyk7mcBngzWnz
         AyHQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qLEPg+GSIsJs+ZjoLaDb07KrabffimCpL5RydxIyf7k=;
        b=lGCbc31EV8ByvkgffsNojZ52v1vVR7TaIlLnPY6MIVcOP/ekyUaFXWH0eu3b+Mm8p0
         rrJ+5oChqnNn+gPbDmANXVVtgb0xpZV8e5uu3a8R4b/fM/SVSaByWKZ8n78P6PwL+NJz
         TikmTIeuGdiZgKWpi0tWAbihqn++ver91M+aDtteG1yMpje/8dujPC14Va5vtFk0DyXw
         YXKJ2MOzUdHnFbBRylCLukjcmUQHSWjnXaBE3I5JqCVNAnkcldlXN1cCJs5UI12a7tQf
         44KgVP2F7hggQbcfBEkQbSmQ67gEXeqY+pb1ozmHinJUZ1/alv4rTGUXtl23O1k5jI/m
         NVtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=qLEPg+GSIsJs+ZjoLaDb07KrabffimCpL5RydxIyf7k=;
        b=aszae9PHqCxlvuir948bBBZW0Y/40DUT7q8halPnPiSuUo0LqkWdDEAEJr0vGmOmxw
         MuefLr64EOaSKDyyDj2qDm7w4c3Lx0gV9XdngbNQ1qCctamNFJpjT6pBYdA5gaZjSxY8
         kqbaRM7sw3OP/GdfkMkmEl1yyFr/PJTqY8QFgotB36th7CVy6vWvtjAxfyjnWKAZdDr4
         X1XoUAq7FR/BJvyJ/iG7ULeebDcggcv0+Cszjqxjn4gJmd6SeE+QRcB+8Mw/qGDwj/uQ
         LfsD3X1KonBW150DcxDeNBEPz68wQbBhEiciBEtk095E5VXnBVxxHrW+aBv/t7bHqA0V
         6sLQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAX7qqI4gD83nJH7xzuTvZY5LZg9Ea6brbz69r6mLM8b0fJQN5ml
	FlS1EfVTW+dFAMjVu9gNqyQ=
X-Google-Smtp-Source: APXvYqyrKsteSXbFGJjItgNvXMnH0ibdccso9gEWzEMvbfsbpDYIQWn/eQIobfS86j9aAW5+OoUpBg==
X-Received: by 2002:a17:902:6906:: with SMTP id j6mr10455169plk.117.1579107568568;
        Wed, 15 Jan 2020 08:59:28 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:2223:: with SMTP id i35ls5339602pgi.11.gmail; Wed, 15
 Jan 2020 08:59:28 -0800 (PST)
X-Received: by 2002:aa7:82ce:: with SMTP id f14mr32462280pfn.167.1579107568220;
        Wed, 15 Jan 2020 08:59:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579107568; cv=none;
        d=google.com; s=arc-20160816;
        b=kHIp9kHDUc85aV0aN/hoHIWg2TRRIaaNIA+zwObQjbHk3HP2gXfJOMILQg4bq/ctVT
         YVPyJYfb1fVFoSmONgIz6z3NWq/oFwEOGZr+Fa3uGuMYI6daP8ccNSxLrDeLAZeJKzWj
         WOPXg9mUO+jLxNFej3TEPeVMK7q6JtitekhAWkxwUmCpyw6bG7B/dNauHzDln4H4TJiL
         4s/gUoG0c3X4HMR11NjnbQNmUlNiEMfUnPyuzJkjvXx8m2tmKqqcRv9nvTtUanVBAfZe
         EhkxhRXMuQKbKaUP3sdcr+W6c790tD92e8ut3cgOYvAahMRENS5Ab7+qgdpny0ApuRYN
         NU7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=zXrVKnuJiXeQCR3gw20F62xg2np3z08kfj/7nG55paY=;
        b=jwJbsyeBHKavmaX7xPs8KaMKVs54hEIdDoMZYC5irBxnjPvLVjLq7Teoumy3lOMl4D
         zPIrr8vdQsqKVLkSeGaw9TsQu0q4r7svrCZqnRqFyg/z7cpnLgtU/aFSRSb8s7Yjj4r9
         nW3jwDIJVcbJoobNUTzYkqb2tF1V7Q9YEVLACClqp+b1OBWwtNyDTZspA788/lmStjN3
         ae6HEpcb4dWhDNTdLLhNYRlIx6fX4fmOtCtDlWedpZpt7/jl85h+rLtPv0OzQ/DMeaOs
         ae+COg8lu9L4tKUpsNNWMTCWNf53KACtMO5HsdQ2D9Hi+8UyEVjq7mPqYXPmNMdL/06P
         gGhw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="OSUmC/dY";
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x742.google.com (mail-qk1-x742.google.com. [2607:f8b0:4864:20::742])
        by gmr-mx.google.com with ESMTPS id cx5si5386pjb.1.2020.01.15.08.59.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Jan 2020 08:59:28 -0800 (PST)
Received-SPF: pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) client-ip=2607:f8b0:4864:20::742;
Received: by mail-qk1-x742.google.com with SMTP id c16so16292209qko.6
        for <clang-built-linux@googlegroups.com>; Wed, 15 Jan 2020 08:59:28 -0800 (PST)
X-Received: by 2002:a05:620a:14a2:: with SMTP id x2mr28643046qkj.36.1579107567235;
 Wed, 15 Jan 2020 08:59:27 -0800 (PST)
MIME-Version: 1.0
References: <157909756858.1192265.6657542187065456112.stgit@toke.dk> <157909757089.1192265.9038866294345740126.stgit@toke.dk>
In-Reply-To: <157909757089.1192265.9038866294345740126.stgit@toke.dk>
From: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Date: Wed, 15 Jan 2020 08:59:15 -0800
Message-ID: <CAEf4BzbqY8zivZy637Xy=iTECzBAYQ7vo=M7TvsLM2Yp12bJpg@mail.gmail.com>
Subject: Re: [PATCH bpf-next v2 02/10] tools/bpf/runqslower: Fix override
 option for VMLINUX_BTF
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
 header.i=@gmail.com header.s=20161025 header.b="OSUmC/dY";       spf=pass
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

On Wed, Jan 15, 2020 at 6:13 AM Toke H=C3=B8iland-J=C3=B8rgensen <toke@redh=
at.com> wrote:
>
> From: Toke H=C3=B8iland-J=C3=B8rgensen <toke@redhat.com>
>
> The runqslower tool refuses to build without a file to read vmlinux BTF
> from. The build fails with an error message to override the location by
> setting the VMLINUX_BTF variable if autodetection fails. However, the
> Makefile doesn't actually work with that override - the error message is
> still emitted.

Do you have example command with VMLINUX_BTF override that didn't work
(and what error message was emitted)?

>
> Fix this by only doing auto-detection if no override is set. And while
> we're at it, also look for a vmlinux file in the current kernel build dir
> if none if found on the running kernel.
>
> Fixes: 9c01546d26d2 ("tools/bpf: Add runqslower tool to tools/bpf")
> Signed-off-by: Toke H=C3=B8iland-J=C3=B8rgensen <toke@redhat.com>
> ---
>  tools/bpf/runqslower/Makefile |   16 ++++++++++------
>  1 file changed, 10 insertions(+), 6 deletions(-)
>
> diff --git a/tools/bpf/runqslower/Makefile b/tools/bpf/runqslower/Makefil=
e
> index cff2fbcd29a8..fb93ce2bf2fe 100644
> --- a/tools/bpf/runqslower/Makefile
> +++ b/tools/bpf/runqslower/Makefile
> @@ -10,12 +10,16 @@ CFLAGS :=3D -g -Wall
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
> +ifeq ("$(VMLINUX_BTF)","")
> +  ifneq ("$(wildcard /sys/kernel/btf/vmlinux)","")
> +  VMLINUX_BTF :=3D /sys/kernel/btf/vmlinux
> +  else ifneq ("$(wildcard /boot/vmlinux-$(KERNEL_REL))","")
> +  VMLINUX_BTF :=3D /boot/vmlinux-$(KERNEL_REL)
> +  else ifneq ("$(wildcard $(abspath ../../../vmlinux))","")
> +  VMLINUX_BTF :=3D $(abspath ../../../vmlinux)

I'm planning to mirror runqslower into libbpf Github repo and this
../../../vmlinux piece will be completely out of place in that
context. Also it only will help when building kernel in-tree. So I'd
rather not add this.

> +  else
> +  $(error "Can't detect kernel BTF, use VMLINUX_BTF to specify it explic=
itly")
> +  endif
>  endif
>
>  abs_out :=3D $(abspath $(OUTPUT))
>

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAEf4BzbqY8zivZy637Xy%3DiTECzBAYQ7vo%3DM7TvsLM2Yp12bJpg%4=
0mail.gmail.com.
