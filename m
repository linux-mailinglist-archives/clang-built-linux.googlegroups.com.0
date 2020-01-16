Return-Path: <clang-built-linux+bncBCTYRDEG7MGBB6HDQLYQKGQE2WRYNPI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd39.google.com (mail-io1-xd39.google.com [IPv6:2607:f8b0:4864:20::d39])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BC1513F581
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 19:56:57 +0100 (CET)
Received: by mail-io1-xd39.google.com with SMTP id 13sf13349579iof.14
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 10:56:57 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579201016; cv=pass;
        d=google.com; s=arc-20160816;
        b=yKDV28sI/v3xNl1Bmol5pmbHFV1XLASFeoelvksiqPUNwMI5qEScWf1barhLfmzoxn
         jHQQfTwgLCBZZKWJpLiOAfNZh+LgMbVdT6GBtYIOYRzXNcz4dWWyEei2ZrbK8HQEiH5K
         usLtkQN9iwswFhxCZmNbWgynuuO38UB0hFY82aVd+rPB4leMfPOsb6P4B8LdbAFpz/vZ
         +o5YaZ314ZvkSCrMSxtT8D7X8lFt2Bgh2SJdsOY++1JMT7x5EI5KuFCdNJGR6aELGduS
         4Hikjv8DHpqTOSnydscj+Vd5ICLs/+E+Hh05U5wqx6KHhrSMEaj+HF+8LrTuWa1sBuLi
         YfGg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature:dkim-signature;
        bh=d3FyFsh1xQUbs/sAJt9RdXB0b1mTYKwzE4TCxBZt524=;
        b=eqoB4kWGmAMex2L9vliQYF8ItjfCZaDaPXzMPlue+t/aDn+MSCONDhXGy6ieYQA436
         A416wLJpOtpj916nUvvVBiAnPSuUsRGdfK5o21dxgjLUyW0lhXBcKjN9Wm3ewwR61LH/
         KgswES0QbQrpNxylagvjLKCfyKe5LW8YJFEir8haLmWWbl+rDSRsVvO/Gyqt4szfXLni
         N2Kk9POcqoNZxgBmtdbxce4WtbOuru4bzwCcGqpmD3iAZtf6BEGp3A5uncUvsMCOawzd
         ud9xrAj8NA8MlIqLwe/uM6zssc3zfSgxIe/1VU5J4y07k4YULYD4r5enn6PUWoJJg4J/
         aEjA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YZ6F46+0;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::f43 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=d3FyFsh1xQUbs/sAJt9RdXB0b1mTYKwzE4TCxBZt524=;
        b=c2nf8kPD0inRuK9lYqDHBFFPhPtzchHWEqUgmYAMtZtnY5EmgcW1U5DiOn9GO0ZVPG
         EOH3h/xuKdirRkS8JvqtjI2ny0dNUsWKwJshgU0S1AkHGbcleKiFpqXpdGjGfgDy+L+j
         S4da56hH46ZKOcTiTNmxMYwwrHezKO6842g+D1J2jtdo4W7cmLhY5T4YboALamv0Ivwt
         7o8QWz7orumT4xz7ZvoBrDKMpdJK5N7FNhOhBZBTTnZvwvrsR9zesU9PeIdmnEKSdRNA
         yjMMo5Bhw3hW3E4FveS+M50AGVFD/4w7MwC3KxO/SLlrva1DUM6qd1rsgZ0LCRujWyMQ
         p67g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=d3FyFsh1xQUbs/sAJt9RdXB0b1mTYKwzE4TCxBZt524=;
        b=Z8vwlBCf+Zqi4GBsCHka9BD1IBY0xYFAlp40TrXppUZjGygj2Yo+dd826BrXpDXQAE
         rloQD0aufNsswQVzuG8e66aSgwNjARq5e0R2ljvUh/eLXa0Z6v3HbjL3O2KZzmK3dMTo
         Jy0j7mh+dWT10N3EBpDcDphHJBXLgXJkisUCZCD+3jAs4c/xcJYleb/6Xi97PaDGefbv
         NC9M+HX9cdbxLYw1A868EZ1CYG6ZCeub5ODZyW17SjAWnjiGY8a743z1f5bflVaWaQue
         vudxZhiVglVtcJSqkfkYq1mC6rbpjiVtdIDa40Qow2vgg2maKYl+2PIMYb2Hr2bNgEoz
         bi6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=d3FyFsh1xQUbs/sAJt9RdXB0b1mTYKwzE4TCxBZt524=;
        b=dCdYE9Crjpq7RxyDxDrPeR6S/iavk2Tv9gnKtw1kSRpNfyvcPyvGorrFh3Zq/ehK/c
         mjl58IBWrhD23HJex639lqsDax1ATyGbkEeA+il5Hi4KZHVIkdkhNrabz/90GNY8mJjd
         81+jcdVAiHQuy4SOJBU/J8VwN9RJgpWvIxbFPTpQpxWVgP2KAMDXqr128/hVr6oTVxQk
         UIWCG+bE8+teQ+a82/x+YiWly8siVXrhFnOFC1Aw3czK0ROaC6kxP2bhkLM6OvSqbOjU
         bwvsa5777w7Hi7YKdyE00IPWrrHvwEm5T+QBT7XKfKe/Ytp8p3qnTS/0vbaxbaEL67ls
         R46Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWPOcEikOoRRpw794qznTluZKZie/fIKb9YoN0ewCCu5+4hlAft
	zbjjn/ErDCnTraG7kbHayzI=
X-Google-Smtp-Source: APXvYqzrE6S2eNTI6jvEV2/mwIl1hFbJjpsRlxPHyUzKThOJTRM+6lL1HVNPk98HNA6uMunT3NshUA==
X-Received: by 2002:a05:6602:235b:: with SMTP id r27mr27980077iot.51.1579201016098;
        Thu, 16 Jan 2020 10:56:56 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:6216:: with SMTP id f22ls1412921iog.6.gmail; Thu, 16 Jan
 2020 10:56:55 -0800 (PST)
X-Received: by 2002:a5d:941a:: with SMTP id v26mr7295852ion.267.1579201015698;
        Thu, 16 Jan 2020 10:56:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579201015; cv=none;
        d=google.com; s=arc-20160816;
        b=X1S664cL2kU4fwuT1Wxd7ftMWV21BQcJrc/e40a1aLr6XWoa4ISqbJutYxliNJo/Ec
         so50gC1gTkspI2euynI/mZ/+rhXZAghSJcHO0SHK8uEtqXv9d91c7W+IToGpYTU7XafI
         +hbHdHFhlaFxVfdwrcEhklNRbXogFiI1zj2zVKiAi14NoN2ZWSNnurhNk/e3a5yRVd6R
         hvDapFC0YTgxw6GT4ZbvVzumKuOSIS4VeQR/0JmN1qYl65YqloRw6u0PtXjr+DJVFNfe
         q8hl5lqXjCrT0DOvTH8FecMew91R+tLddKiHrWfftRKbZ6941uf/FCqt6L22B8VVR50c
         XjWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=X5psP6nW/Y1xNS1QkA2tl6VWc1qbUvTdajI5ErCGOQg=;
        b=YKiHEbRHDu7QH5fHyYWQt+zE17QBIecUgVL7zH6Nhy11jOf+HW+9cAOLBNVleidSdy
         eTnOM9WNy3oPCIxtO9ulhqdhn/JpMQaifv27J8O2/H/b/xHO2slLR0sbkbNGV4R/+xo1
         dbHZCuTjyDHn/hDLmS1t3XWH00LxrvMYq0P58yIZXzpPuTHWCnDv5s7Kbrcu8+5YJP/N
         oHVJ8qQgoKvHh1GmLVmTOZAa3Bn/uc2mc97r92bTvO02BvCCSfcPvQHjfcdrzq5h9yGb
         4Cp9vp0G67UP9hgG0B51EEyqrsYVAZi5Ju0FewVdPVP6hcj5Jfs78cY8yDDwcUSgxLSf
         fP5A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YZ6F46+0;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::f43 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qv1-xf43.google.com (mail-qv1-xf43.google.com. [2607:f8b0:4864:20::f43])
        by gmr-mx.google.com with ESMTPS id v82si1114498ili.0.2020.01.16.10.56.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Jan 2020 10:56:55 -0800 (PST)
Received-SPF: pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::f43 as permitted sender) client-ip=2607:f8b0:4864:20::f43;
Received: by mail-qv1-xf43.google.com with SMTP id o18so9577887qvf.1
        for <clang-built-linux@googlegroups.com>; Thu, 16 Jan 2020 10:56:55 -0800 (PST)
X-Received: by 2002:ad4:4e34:: with SMTP id dm20mr4141595qvb.163.1579201015134;
 Thu, 16 Jan 2020 10:56:55 -0800 (PST)
MIME-Version: 1.0
References: <157918093154.1357254.7616059374996162336.stgit@toke.dk> <157918093501.1357254.2594464485570114583.stgit@toke.dk>
In-Reply-To: <157918093501.1357254.2594464485570114583.stgit@toke.dk>
From: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Date: Thu, 16 Jan 2020 10:56:43 -0800
Message-ID: <CAEf4Bzb2NYxCG69s1f9NzFbLr+ZO6-ZWYyFGvFJFM_HUOX5YLA@mail.gmail.com>
Subject: Re: [PATCH bpf-next v3 03/11] selftests: Pass VMLINUX_BTF to
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
 header.i=@gmail.com header.s=20161025 header.b=YZ6F46+0;       spf=pass
 (google.com: domain of andrii.nakryiko@gmail.com designates
 2607:f8b0:4864:20::f43 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
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

On Thu, Jan 16, 2020 at 5:22 AM Toke H=C3=B8iland-J=C3=B8rgensen <toke@redh=
at.com> wrote:
>
> From: Toke H=C3=B8iland-J=C3=B8rgensen <toke@redhat.com>
>
> Add a VMLINUX_BTF variable with the locally-built path when calling the
> runqslower Makefile from selftests. This makes sure a simple 'make'
> invocation in the selftests dir works even when there is no BTF informati=
on
> for the running kernel. Because of the previous changes to the runqslower
> Makefile, if no locally-built vmlinux file exists, the wildcard search wi=
ll
> fall back to the pre-defined paths (and error out if they don't exist).
>
> Fixes: 3a0d3092a4ed ("selftests/bpf: Build runqslower from selftests")
> Signed-off-by: Toke H=C3=B8iland-J=C3=B8rgensen <toke@redhat.com>
> ---
>  tools/testing/selftests/bpf/Makefile |    2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/tools/testing/selftests/bpf/Makefile b/tools/testing/selftes=
ts/bpf/Makefile
> index 246d09ffb296..30d0e7a813d2 100644
> --- a/tools/testing/selftests/bpf/Makefile
> +++ b/tools/testing/selftests/bpf/Makefile
> @@ -127,7 +127,7 @@ $(OUTPUT)/test_stub.o: test_stub.c
>  .PHONY: $(OUTPUT)/runqslower
>  $(OUTPUT)/runqslower: force
>         $(Q)$(MAKE) $(submake_extras) -C $(TOOLSDIR)/bpf/runqslower      =
     \
> -                   OUTPUT=3D$(CURDIR)/tools/
> +                   OUTPUT=3D$(CURDIR)/tools/ VMLINUX_BTF=3D$(abspath ../=
../../../vmlinux)

we can do "first match" wildcard trick here instead

>
>  BPFOBJ :=3D $(OUTPUT)/libbpf.a
>
>

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAEf4Bzb2NYxCG69s1f9NzFbLr%2BZO6-ZWYyFGvFJFM_HUOX5YLA%40m=
ail.gmail.com.
