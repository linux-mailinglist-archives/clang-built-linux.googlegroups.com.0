Return-Path: <clang-built-linux+bncBCTYRDEG7MGBBA6SRDYQKGQEMALETIQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb39.google.com (mail-yb1-xb39.google.com [IPv6:2607:f8b0:4864:20::b39])
	by mail.lfdr.de (Postfix) with ESMTPS id 036E8141339
	for <lists+clang-built-linux@lfdr.de>; Fri, 17 Jan 2020 22:37:09 +0100 (CET)
Received: by mail-yb1-xb39.google.com with SMTP id 201sf4292973ybd.19
        for <lists+clang-built-linux@lfdr.de>; Fri, 17 Jan 2020 13:37:08 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579297028; cv=pass;
        d=google.com; s=arc-20160816;
        b=ItXPOe5kEx2IvGMsGJhN2/0T7zsBMx8NgzpI8q2r4cenwNTjfFWdAw3vl4AawgnI4B
         kox1/cxi08aMEi6XhGluj+i9GODr3n48tqwo26aXCoyJ3SlR6FdjQpfK7z+1v/NgG1p7
         fr7P76PL2rqC15mBciP8kSIuYkAdIeU33Vvl/XzijFvgj+5hhrG1Wa25OQw54G67fbiN
         n+s/RmwHiflRFNdgdNobxv8B4xsSX+kXIS9hyA3LbPJmaCqLs0iHKsX5cU6DioYZivD8
         eZeefH7JgPVqSfO1RN6Gbp9VENrboUL8qrN1ZMLN4QWZ6dfMVpWVfTCbszZGxdKmQ0Xj
         pAMw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature:dkim-signature;
        bh=0svHqteU44aqBVYIDsrXItpjZaFTnlV/hIE3K7ORyTM=;
        b=prBpSwpr4CcSHFJpMHYmAZm454UNRKVPWHhPb5GGmKNoSyJaLE0D/tnKf1wv7eFSJh
         k/9BeU15Jh5+Fvrkwlfdimhe+mJ9fv33xOeICJsfENjlj7KVBS6iKDFN4IGXSn8nAt3S
         qYSUpLq1fJfo/Lsax2K58ZHr4bkWV/DdN0V+t7XtUxUl/kwaTyotDdO39e/mb64zBKkY
         a8ZH3Pu5MgyeqcLyDI4AlHds49leNJVyHoN0B+CYRq5LFG+knpSIDPFOXs2AXuFskgcx
         OoJ3K9YFM7xKyoVYB6cWDVSIZZX607FC0lQd0gI9bQ3DSj4S2heqoV+OuGo720Ow7Vxp
         5yzQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=di2yyj+z;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0svHqteU44aqBVYIDsrXItpjZaFTnlV/hIE3K7ORyTM=;
        b=ii2E+xuxI6lFLEMxztDke2tVgkM+CBiJiMmONUoIp+EiSv0S8y7s68Z4Oa6GXHpcQr
         52k5WpWF7mfkmUNlBIve3SyHNBPiEPMYLpPFHHibq0g765hAyziXquVAUNOCdZ/s0BjY
         g3YBSK4v24sgIk/a1sAfwWbPPO57yLasg1mD2seRhh+5v3eoIhSQBJfuwXXfO4nJBHNC
         HXE+SQ0Y4jXCRmu/c/St4uAVr5lGh5+OhnxM5KTmnwgE50Wj+v7ciSvnNCejGhdg/T9Q
         iq0OqGbZs/mlIMGQReLrcCM8R+kJlf4clX+z7AyhaLrjO2ckIDXliKJiFB0Taxuw4+Zv
         Su1Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0svHqteU44aqBVYIDsrXItpjZaFTnlV/hIE3K7ORyTM=;
        b=QHzsN/FGYyYtgRpck+r0tZqFeqISxpYSsADMwzbGQxpeD4/RkEft6mImcmhQpn53Jx
         uf3+Whn8TYXjkYfXDovOk0psQ1Z7W1vjXoMvJIkca7jaqyyJ9IrtxIxHaowbsMenXK90
         LW9h826W+KAVtDAmY56wH/hMbNjDBJkBFUBBJKsGelqYEQjUCwRm4qXd8Ecakc0v2Bqr
         mPsSIJ31vaAb7SWHnWOWXGTp4tOIShUS4oA1G/yNqnwQufc43WWFwWQGolkin8k6PMpZ
         vEb5NQ7HheJx2ze9cJgkcLHGiMVaRAA1atNNW7VqfFlftf+xRVMODAZg1sK1lNWyL1L5
         7QSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=0svHqteU44aqBVYIDsrXItpjZaFTnlV/hIE3K7ORyTM=;
        b=cmbQZrKn+bVgVAZb6lyK08aUl+XV+Va6OsaJxdzWh3gjJgOSvOqL2lc+obapYLv7X9
         vm5ydQPxzhAQbwKRv/GKJQUjDKQvNBnG2YkVYkEG7ivmlGMjKmEC3QC65Nn9djM74a5Z
         oI658khQBZgSZUTy1nyPbkVraZj87yfNyXF+5kzC8eZ0IzsiaeskZgSKVCij7NK39Jx6
         evv+Lg4orRbJ+TP3CFGfzyRAbDAlCUvTmsmBN/O7z4wOKKfe+81emsSa4g8TEQcG7VbF
         n9/lWQBLQUzpEy0tyDQImQc7JJ3iUlJDIuqpN3kT4g65n4cWPVLkX+2qYTiJDpegiPmu
         8uXw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWFcOGumptfiv8l5qyWcI6ko9y2B0uA3D6u/I3JlaxBxyMtwuAh
	ljqxctm0zFoK+IrSRWE/oC4=
X-Google-Smtp-Source: APXvYqxz5Ne47eC+MYo7JRgGWVmkD2zCHNFQuISD0htNfl2OX4hDK+hhzqFHom3Cnvsl15Awm1OGAQ==
X-Received: by 2002:a25:5586:: with SMTP id j128mr32065105ybb.186.1579297027982;
        Fri, 17 Jan 2020 13:37:07 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:cfcf:: with SMTP id f198ls3319962ybg.5.gmail; Fri, 17
 Jan 2020 13:37:07 -0800 (PST)
X-Received: by 2002:a25:3308:: with SMTP id z8mr31620228ybz.485.1579297027506;
        Fri, 17 Jan 2020 13:37:07 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579297027; cv=none;
        d=google.com; s=arc-20160816;
        b=kDUfibwmM8afHz6utpjwagNRFAjUAt5WyRWBRuTrxdi4TU2SNkhTlP9BoVA1fiR+QY
         FYTA4rxToqnVUuvjQYWCPaDiQe5EQQJCUMxuaFmRUSD8Zu40iohHn6zHHJTPJ/pHEjGO
         CQOr3r085CEz9xTl2qeV9yT9HeZgBBPH9ULGEop+cS8v4l1MPZjwPu8OCthllG0ZQfLD
         MmpYStxmdVa0eOamCySrauY2WSk1QrY1bL5Votvrn2j8qpv4A+KeTav72R77YdjBJx7L
         J8JR39xT8+cP3BvhhylFf01loYXHyAI1pmrgYyuqxcg30ew/v1Wrdb2U03TwuA7D81NH
         Tg1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=2JWxiBrKzgX6c58K05T7Uj8uthaAPk9I0HG0fUbgl2Q=;
        b=JPtdMk8sgJjNpvwSkzHL5lMyTi3oyq9XPzwnV+IlsQIVsWb+0m5ZLbjZ6bgbfLQsX3
         7nNRpMUybf/mYjuAAeRpwi7Xd74tj3+05Uf8PMqGj8aEO9Yc4zlIs54oMaVgqzUte18E
         AS0egUrb0t/D4WOZlIb9TyU5+WXhmQy/gY5WU9BSkYl3Pj7Btj24AAOs7HRV9nGpu4dB
         951ycOtidn6FMrlDakQR5GClevLvdatiLpNLsX0ssBZHM4LD2+2fFxXMvQJd+IF+XceZ
         7G0QQLyUCIdanJigOvKknsilNX+h8pk02mV2uams8S2Z/feOhkQjvz4tCc64l1wK60ZM
         PA7Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=di2yyj+z;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x744.google.com (mail-qk1-x744.google.com. [2607:f8b0:4864:20::744])
        by gmr-mx.google.com with ESMTPS id f8si1041363ybg.2.2020.01.17.13.37.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Jan 2020 13:37:07 -0800 (PST)
Received-SPF: pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) client-ip=2607:f8b0:4864:20::744;
Received: by mail-qk1-x744.google.com with SMTP id w127so24146261qkb.11
        for <clang-built-linux@googlegroups.com>; Fri, 17 Jan 2020 13:37:07 -0800 (PST)
X-Received: by 2002:a37:a685:: with SMTP id p127mr37379374qke.449.1579297027145;
 Fri, 17 Jan 2020 13:37:07 -0800 (PST)
MIME-Version: 1.0
References: <157926819690.1555735.10756593211671752826.stgit@toke.dk> <157926820025.1555735.5663814379544078154.stgit@toke.dk>
In-Reply-To: <157926820025.1555735.5663814379544078154.stgit@toke.dk>
From: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Date: Fri, 17 Jan 2020 13:36:55 -0800
Message-ID: <CAEf4BzafS0FCsjJwG13eCEsE_TSLhg=wNY3RGfUnDwuP1KCz=w@mail.gmail.com>
Subject: Re: [PATCH bpf-next v4 03/10] selftests: Pass VMLINUX_BTF to
 runqslower Makefile
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
 header.i=@gmail.com header.s=20161025 header.b=di2yyj+z;       spf=pass
 (google.com: domain of andrii.nakryiko@gmail.com designates
 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
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
> Add a VMLINUX_BTF variable with the locally-built path when calling the
> runqslower Makefile from selftests. This makes sure a simple 'make'
> invocation in the selftests dir works even when there is no BTF informati=
on
> for the running kernel. Do a wildcard expansion and include the same path=
s
> for BTF for the running kernel as in the runqslower Makefile, to make it
> possible to build selftests without having a vmlinux in the local tree.
>
> Also fix the make invocation to use $(OUTPUT)/tools as the destination
> directory instead of $(CURDIR)/tools.
>
> Fixes: 3a0d3092a4ed ("selftests/bpf: Build runqslower from selftests")
> Signed-off-by: Toke H=C3=B8iland-J=C3=B8rgensen <toke@redhat.com>
> ---

With formatting fixes:

Acked-by: Andrii Nakryiko <andriin@fb.com>

>  tools/testing/selftests/bpf/Makefile |    8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
>
> diff --git a/tools/testing/selftests/bpf/Makefile b/tools/testing/selftes=
ts/bpf/Makefile
> index 246d09ffb296..dcc8dbb1510b 100644
> --- a/tools/testing/selftests/bpf/Makefile
> +++ b/tools/testing/selftests/bpf/Makefile
> @@ -124,10 +124,14 @@ $(OUTPUT)/test_stub.o: test_stub.c
>         $(call msg,CC,,$@)
>         $(CC) -c $(CFLAGS) -o $@ $<
>
> +VMLINUX_BTF_PATHS :=3D $(abspath ../../../../vmlinux)                   =
 \
> +                       /sys/kernel/btf/vmlinux                 \
> +                       /boot/vmlinux-$(shell uname -r)

it's not 100% consistent in this Makefile, unfortunately, but usually
(and similarly to function arguments) we align items for such
multi-line statements

> +VMLINUX_BTF:=3D $(firstword $(wildcard $(VMLINUX_BTF_PATHS)))
>  .PHONY: $(OUTPUT)/runqslower
>  $(OUTPUT)/runqslower: force
> -       $(Q)$(MAKE) $(submake_extras) -C $(TOOLSDIR)/bpf/runqslower      =
     \
> -                   OUTPUT=3D$(CURDIR)/tools/
> +       $(Q)$(MAKE) $(submake_extras) -C $(TOOLSDIR)/bpf/runqslower     \
> +                   OUTPUT=3D$(OUTPUT)/tools/ VMLINUX_BTF=3D$(VMLINUX_BTF=
)
>

please, keep \ alignment, it's all over the place

>  BPFOBJ :=3D $(OUTPUT)/libbpf.a
>
>

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAEf4BzafS0FCsjJwG13eCEsE_TSLhg%3DwNY3RGfUnDwuP1KCz%3Dw%4=
0mail.gmail.com.
