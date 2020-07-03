Return-Path: <clang-built-linux+bncBDD5ZFHSSQARBBVF7P3QKGQEL24YVFI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23f.google.com (mail-lj1-x23f.google.com [IPv6:2a00:1450:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id B2B8C21344F
	for <lists+clang-built-linux@lfdr.de>; Fri,  3 Jul 2020 08:39:03 +0200 (CEST)
Received: by mail-lj1-x23f.google.com with SMTP id w19sf7171645ljm.16
        for <lists+clang-built-linux@lfdr.de>; Thu, 02 Jul 2020 23:39:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593758343; cv=pass;
        d=google.com; s=arc-20160816;
        b=ANXp/dqNRrHZNzgFN4QqxhbUnR8LG6d0D9KcHjqeKW/Klnip6ItrfkbPiRxzvQ5xjt
         G5Hujo0+ix/y2ga/fjyYILIppnnv8xNYT57ftaikPSH4QXDMvta7s5dHrknasBZ39/ce
         E98W41ABzcI5SLK3rUnhPqQNkbpICr59eRYivrsKl1LLjR9BH7FL7D5HR+b7plQzTd/f
         LJQkaiqdN47o4U57ef3/72SRAMlGq2b0dGBRR4x3fzQPVUnHuQMFKT2NoXl+hmySMtlU
         heIiy+TW7ymWvTYFyP6C2yV3eeXpOvpJ7n6xk6STCkZ8UjXlpXoKURf4cjwoSXvHTGwo
         LOcQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:date:message-id:from
         :references:cc:to:subject:sender:dkim-signature;
        bh=t8ZNGStq8Gc9Sq/dZ4r6TC6X2oGcALrQKmORs3QsgAU=;
        b=RrgiVlLWaN+lOb5QxMfaUAz7Xy/8beu9D7ohw6U1o1mdDCEkt16Cy1j4bZJLxi2Kj6
         F9tFR+uJLWz7d/34aVIYRnp7stj/LxZVuq9s11Xezx2szErnlDSIqJo59B3C3Z+t7ifl
         SEk4u+wNOeEZ8IyBVq3S8WkokLcnfsUw34NHUQ+kc4AEVvLNw2KBqIm1aNyHrFMP0FVE
         SYnFnDETz+cZStva7kHpFVgLNA92CYUEptFr7canvZX7dAjIkPFV1mjRzTjJAtvoFAPv
         BdwTzPvtUlOPaIKhcMlxKZwWy/FblmNditbplbLERunQ4NJSCDwZZ3pvuq7JretS1nsp
         1JKQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of grandmaster@al2klimov.de designates 2a01:4f8:c0c:1465::1 as permitted sender) smtp.mailfrom=grandmaster@al2klimov.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:mime-version
         :in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=t8ZNGStq8Gc9Sq/dZ4r6TC6X2oGcALrQKmORs3QsgAU=;
        b=ms3D6RGfp6mtfuF4Kx9OqTZr0f4TIx0fDYDEQxvAWlhKU8JuQoQVwDQ5Efwu3JXC2d
         n973HnCz9jgoK9V68pMJXLvDzjA1faCK4UDaI8U2bkEQZHLzo2WyIqN94thlJ989gHu2
         lk7K6baSt3vh97Lif4+uM0DlArLvcMN8oj4sg1ybkKzZvVErewjnk190dNNjIlhJeBDf
         LNWXGdc7FNjWAtU3dxiGxIo765zprofI6KE8h/9SeTKWjTcopMCazjJNDbgC9jvybPr/
         14re1bhjfv+6yyWH1FS+o6Dm/G7qAGj+2W792yenMok3ruHbQHP//Z/uIlm75SF3Kq4f
         faEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=t8ZNGStq8Gc9Sq/dZ4r6TC6X2oGcALrQKmORs3QsgAU=;
        b=k9y8uugECZeUFJTCOAe8i1oMvBm6wMSQ22HNJWrZpnhErXYLgnmUiGeVNTwklQz8cc
         Z+J+1s3irB9bKdBc/1hc3lR9V6ZSKAW8e/B+PEok1V9EyvDSpZwYj2iRCm1BgDeNO+j/
         ql5gAeD+80pa3dJhYg2YTTrGoxXKJAJcg2LvjiPnYpIQHcMTljza7d+FksENbf2p/4Wn
         5BYwiCNd9JRDKbOeaY80JLCL4T1nAuyVhhXiN9i2Q++BUQsuZbMqeb7Q7QlUZlf5vfiv
         WOW3amn/UlYLEpMo08oih90l/CIvcKpf0GbUN4zmtfQEX5VFQVJOoYk15L6iyna5qgJ1
         n5cg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533ltlbtcXPgV9iMCEV/v0JMgoFaWhE6lka2b2py0xxQgbhfGqOz
	2MxCYUvrVt9npxe5Udkl23E=
X-Google-Smtp-Source: ABdhPJzZvHLu/b7Y6FhEsTeW1sLnnWIf0UsbQRPY0WiRWRJFS9Mfkic41KnfuvEUd8S/pmhzL9AGPw==
X-Received: by 2002:a2e:89ca:: with SMTP id c10mr8461863ljk.407.1593758343207;
        Thu, 02 Jul 2020 23:39:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:8610:: with SMTP id a16ls608568lji.8.gmail; Thu, 02 Jul
 2020 23:39:02 -0700 (PDT)
X-Received: by 2002:a2e:780e:: with SMTP id t14mr14698899ljc.444.1593758342434;
        Thu, 02 Jul 2020 23:39:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593758342; cv=none;
        d=google.com; s=arc-20160816;
        b=jO3QpQO1pJfGGfNvqz4ApfrUVP2AO4ZFJBCT3MlbDNN3CSSUzhZUpEmiJ80to2tsT8
         w72wUW9jK/k68TjYvc0jqnY/9AFufamY5O4SHma1WlY4kfRKtar/0X4/cA9i7D86ZsKj
         6z80h5H09btZ1uG2BgbWjyhL+AZdc1kLeTPVPNY0JCRlKk28iXm6DWPAV+BI+Eyey9nN
         LNp2oFNMd2qacYToHNOZiqr3j+HkGGwkQb7KcSczkPvAG9VS4PGwb58UzEA0Kx8umy7X
         Te6lk6nJlM/nqS/qpeictABx0r3jH+y0IWcznh/w8titGUe3nmuh3jPWEJj3VcXPkIRa
         UbNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :date:message-id:from:references:cc:to:subject;
        bh=DSxwwMpk8sPiTBu+xm6z4AqEwTxd1lLX6Upl+4B6HMs=;
        b=YPvLyEjPm3+6JiuBt9p7zaLjmvdMm5aaMzpqZETq5w/yYyJHl3//5HY4FQp/p76bKu
         eT/yseIWaJ2XhyKM0tTKyDQSsJmF8C4yypJVMaBnkgsOJPTchPEisFX0taPJyyocIgvo
         YlvctizCN+1smcTazenmA4ub2kQ3htMuQKO3nPZVKZqVHO9wUtQocbGO40AGIzgO9cqQ
         kfaJAd2m0H5D6JKpKZtf+83hgVRxiJ/q3k3fci71LicyskHQUqS/qjBURqeVA6P8ZbjU
         znLRo2LuajhdAdzC6MNryn+sXfUk42Lh/cpo1ag1i0/RROM+fc1bbwfaHBfbJoqxmxas
         BxiQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of grandmaster@al2klimov.de designates 2a01:4f8:c0c:1465::1 as permitted sender) smtp.mailfrom=grandmaster@al2klimov.de
Received: from smtp.al2klimov.de (smtp.al2klimov.de. [2a01:4f8:c0c:1465::1])
        by gmr-mx.google.com with ESMTPS id y2si615869lfe.2.2020.07.02.23.39.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Jul 2020 23:39:02 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of grandmaster@al2klimov.de designates 2a01:4f8:c0c:1465::1 as permitted sender) client-ip=2a01:4f8:c0c:1465::1;
Received: from authenticated-user (PRIMARY_HOSTNAME [PUBLIC_IP])
	by smtp.al2klimov.de (Postfix) with ESMTPA id CEA5DBC146;
	Fri,  3 Jul 2020 06:38:53 +0000 (UTC)
Subject: Re: [PATCH] Replace HTTP links with HTTPS ones: BPF (Safe dynamic
 programs and tools)
To: Alexei Starovoitov <alexei.starovoitov@gmail.com>
Cc: Jonathan Corbet <corbet@lwn.net>, Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, Martin KaFai Lau <kafai@fb.com>,
 Song Liu <songliubraving@fb.com>, Yonghong Song <yhs@fb.com>,
 Andrii Nakryiko <andriin@fb.com>, John Fastabend <john.fastabend@gmail.com>,
 KP Singh <kpsingh@chromium.org>, "David S. Miller" <davem@davemloft.net>,
 Jakub Kicinski <kuba@kernel.org>, Jesper Dangaard Brouer <hawk@kernel.org>,
 Alexey Kuznetsov <kuznet@ms2.inr.ac.ru>,
 Hideaki YOSHIFUJI <yoshfuji@linux-ipv6.org>,
 Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>,
 Borislav Petkov <bp@alien8.de>, X86 ML <x86@kernel.org>,
 "H. Peter Anvin" <hpa@zytor.com>, Steven Rostedt <rostedt@goodmis.org>,
 Shuah Khan <shuah@kernel.org>, Stanislav Fomichev <sdf@google.com>,
 Quentin Monnet <quentin@isovalent.com>, Andrey Ignatov <rdna@fb.com>,
 "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
 Network Development <netdev@vger.kernel.org>, bpf <bpf@vger.kernel.org>,
 LKML <linux-kernel@vger.kernel.org>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 Clang-Built-Linux ML <clang-built-linux@googlegroups.com>
References: <20200702200516.13324-1-grandmaster@al2klimov.de>
 <CAADnVQKaL7cX2oCFLU7MW+CMf4ySbJf3tC3YqajDxgbuPCY-Cg@mail.gmail.com>
From: "Alexander A. Klimov" <grandmaster@al2klimov.de>
Message-ID: <b06e1efb-b2e6-b06b-bf24-1369c42e8ace@al2klimov.de>
Date: Fri, 3 Jul 2020 08:38:52 +0200
MIME-Version: 1.0
In-Reply-To: <CAADnVQKaL7cX2oCFLU7MW+CMf4ySbJf3tC3YqajDxgbuPCY-Cg@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Spamd-Bar: +
X-Spam-Level: *
X-Original-Sender: grandmaster@al2klimov.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of grandmaster@al2klimov.de
 designates 2a01:4f8:c0c:1465::1 as permitted sender) smtp.mailfrom=grandmaster@al2klimov.de
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



Am 03.07.20 um 00:08 schrieb Alexei Starovoitov:
> On Thu, Jul 2, 2020 at 1:05 PM Alexander A. Klimov
> <grandmaster@al2klimov.de> wrote:
>>
>> Rationale:
>> Reduces attack surface on kernel devs opening the links for MITM
>> as HTTPS traffic is much harder to manipulate.
>>
>> Deterministic algorithm:
>> For each file:
>>    If not .svg:
>>      For each line:
>>        If doesn't contain `\bxmlns\b`:
>>          For each link, `\bhttp://[^# \t\r\n]*(?:\w|/)`:
>>            If both the HTTP and HTTPS versions
>>            return 200 OK and serve the same content:
>>              Replace HTTP with HTTPS.
>>
>> Signed-off-by: Alexander A. Klimov <grandmaster@al2klimov.de>
>> ---
>>   Continuing my work started at 93431e0607e5.
>>
>>   If there are any URLs to be removed completely or at least not HTTPSif=
ied:
>>   Just clearly say so and I'll *undo my change*.
>>   See also https://lkml.org/lkml/2020/6/27/64
>>
>>   If there are any valid, but yet not changed URLs:
>>   See https://lkml.org/lkml/2020/6/26/837
>>
>>   Documentation/bpf/bpf_devel_QA.rst          | 4 ++--
>>   Documentation/bpf/index.rst                 | 2 +-
>>   Documentation/networking/af_xdp.rst         | 2 +-
>>   Documentation/networking/filter.rst         | 2 +-
>>   arch/x86/net/bpf_jit_comp.c                 | 2 +-
>>   include/linux/bpf.h                         | 2 +-
>>   include/linux/bpf_verifier.h                | 2 +-
>>   include/uapi/linux/bpf.h                    | 2 +-
>>   kernel/bpf/arraymap.c                       | 2 +-
>>   kernel/bpf/core.c                           | 2 +-
>>   kernel/bpf/disasm.c                         | 2 +-
>>   kernel/bpf/disasm.h                         | 2 +-
>>   kernel/bpf/hashtab.c                        | 2 +-
>>   kernel/bpf/helpers.c                        | 2 +-
>>   kernel/bpf/syscall.c                        | 2 +-
>>   kernel/bpf/verifier.c                       | 2 +-
>>   kernel/trace/bpf_trace.c                    | 2 +-
>>   lib/test_bpf.c                              | 2 +-
>>   net/core/filter.c                           | 2 +-
>>   samples/bpf/lathist_kern.c                  | 2 +-
>>   samples/bpf/lathist_user.c                  | 2 +-
>>   samples/bpf/sockex3_kern.c                  | 2 +-
>>   samples/bpf/tracex1_kern.c                  | 2 +-
>>   samples/bpf/tracex2_kern.c                  | 2 +-
>>   samples/bpf/tracex3_kern.c                  | 2 +-
>>   samples/bpf/tracex3_user.c                  | 2 +-
>>   samples/bpf/tracex4_kern.c                  | 2 +-
>>   samples/bpf/tracex4_user.c                  | 2 +-
>>   samples/bpf/tracex5_kern.c                  | 2 +-
>>   tools/include/uapi/linux/bpf.h              | 2 +-
>>   tools/lib/bpf/bpf.c                         | 2 +-
>>   tools/lib/bpf/bpf.h                         | 2 +-
>>   tools/testing/selftests/bpf/test_maps.c     | 2 +-
>>   tools/testing/selftests/bpf/test_verifier.c | 2 +-
>>   34 files changed, 35 insertions(+), 35 deletions(-)
>=20
> Nacked-by: Alexei Starovoitov <ast@kernel.org>
>=20
> Pls don't touch anything bpf related with such changes.
https://lore.kernel.org/linux-doc/20200526060544.25127-1-grandmaster@al2kli=
mov.de/
=E2=80=93 merged.

https://lore.kernel.org/linux-doc/20200608181649.74883-1-grandmaster@al2kli=
mov.de/
=E2=80=93 applied.

https://lore.kernel.org/linux-doc/20200620075402.22347-1-grandmaster@al2kli=
mov.de/
=E2=80=93 applied.

https://lore.kernel.org/linux-doc/20200621133512.46311-1-grandmaster@al2kli=
mov.de/
=E2=80=93 applied.

https://lore.kernel.org/linux-doc/20200621133552.46371-1-grandmaster@al2kli=
mov.de/
=E2=80=93 applied.

https://lore.kernel.org/linux-doc/20200621133630.46435-1-grandmaster@al2kli=
mov.de/
=E2=80=93 applied.

https://lore.kernel.org/linux-doc/20200627103050.71712-1-grandmaster@al2kli=
mov.de/
=E2=80=93 applied.

https://lore.kernel.org/linux-doc/20200627103125.71828-1-grandmaster@al2kli=
mov.de/
=E2=80=93 reviewed.

https://lore.kernel.org/linux-doc/20200627103151.71942-1-grandmaster@al2kli=
mov.de/
=E2=80=93 reviewed.

This one =E2=80=93 no, pls not.

Why exactly not? Are these URLs not being opened at all (What they're=20
doing there then?) or have all who open them the HTTPS everywhere=20
browser addon installed?

>=20

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/b06e1efb-b2e6-b06b-bf24-1369c42e8ace%40al2klimov.de.
