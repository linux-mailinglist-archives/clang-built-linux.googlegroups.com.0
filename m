Return-Path: <clang-built-linux+bncBCS7XUWOUULBBKG4ZHZQKGQE5S2V6DQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x637.google.com (mail-pl1-x637.google.com [IPv6:2607:f8b0:4864:20::637])
	by mail.lfdr.de (Postfix) with ESMTPS id B212618A2A5
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Mar 2020 19:53:29 +0100 (CET)
Received: by mail-pl1-x637.google.com with SMTP id g5sf15559383plq.17
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Mar 2020 11:53:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584557608; cv=pass;
        d=google.com; s=arc-20160816;
        b=v12jFXLe7GDs+9Tg45KBCsA2UDOjeY/JB+P3y6KXndX5xUYA2tFqtqDsXZoLgIy6rK
         VyJ1caFhoPJSCRxaRsArtJAK2/9cm289a0s1fpCzp96PaELCHCe3E15WsBST888GPCGM
         0DTpMtcNwEutEhcsBekbZaUPjhsdWR0VJ31AAsH32e/7i3ANG0+5fh3ZzS4S1lS7nQdi
         S/1U6Hp2MOP4F6R5eV1zWzYFj+mb/rEsE2iIxW0MUTEU3YriNi1F0ZlXR3rThiS0C0xC
         IaDQt4kSJS4FgAIcKpu0fNdm5Hhy+ZRQVU736xoTYxNWPLiGl2kWaapoUix//l8GDwIc
         IknQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=Dz1FymfW8g/fBU6H2sg8iKL8t8P5QZCL+wqUUqHNKKY=;
        b=0jNf+AQT5yvjwPcDPGlLIXFVqew7C7RqXknwLXlg3mORx8KTll6zjuLejcmAqK3oDn
         LCFdffNyFlJwUDCm5V/BQieAbPgTtYxpeEJtVGydBJrwhYUVCVO69b7Jk5O+UA+ZrznP
         9D48YkUwMJDy9KyGtTo12Ko+nDonKLqB2PnQR9fnG+aXY3f82/NFM9/ibhdvfx9oXa0v
         g6N+BABpSds9rJ6L+KCU9d4tGZ+ix3kNHu4Q9s4lVfu8oe5QRbPyQW7d0BrsI1x1qou0
         YKxpqjAwTnVB/Rh8AXCTb9v72/mVBCRaxKoifJnbsrSEwhwSeQ2J1fZmPIG/MqMP8fTh
         Hi8w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=g5U6uKC2;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=Dz1FymfW8g/fBU6H2sg8iKL8t8P5QZCL+wqUUqHNKKY=;
        b=YzT7VVWi0ClLj/xf9EX6d3z//PmnB9BMu00ftQvZIIxwnfqZdDSro5ZwmPSIJ3LVtG
         hpkTBafR9NORFFrd5YuVY8eDQyRECqB/TPQNcTYoF0wzkT+pYEMjMqV0Qdh/fkQ0VUjl
         21KuuYBG6jVfwbrnUUYprrmOf34qVjVg/RgnY3JW40QDw2nYBxrjkUWYSuey61qJKohg
         6xj9CbdnBlDx9HXjhFBzGgudKn4UsEyPRPuJVyvmyNt+w/LstgJZOhJYAoHA6b7iGJtK
         FqzOBfbRTBg9zOjPM4uYPWQs+vMEHLq4F8IJftzWy1S9UF7WknJ2r/JytYfoiQ+v66Ig
         NqgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Dz1FymfW8g/fBU6H2sg8iKL8t8P5QZCL+wqUUqHNKKY=;
        b=HA5/TAJXPV/DrKyw/e5mLlyB9KPaxpn25JzpArWQpRx1xuGWjoHrVLk0Rt9KZEdE2o
         0GTiQxLUTbQL/xwR622uNOA7EWc5xa9zjsbN3Hakl2fq/44Eoy0ebe6ROktuOXJ7QHmd
         dX0Wz0DitYJYYVyQD0h5bHAMVQujhWoaqqDiMKd963RXKxhS5T+h0HLL/+kcGYXdEGSy
         CTWuUZUhYKa5cdqnKVGkiccL1JaZEoU9m7MpGYsvi16cATgxl9TWwmPxd6svJrY2iSmt
         hPTymodaauB/42CmpBuVra+o6D9tlxLNgmcnNJorj8y0uy/iOGc3MC35qGezNQKZJ85q
         A06g==
X-Gm-Message-State: ANhLgQ3M/GxmidT3aIZVr7QV8bWDVpgkEUEHX0t9thPvJnM8dpjCU10V
	zVbbLLO5PaFxbpT0R/gKI8U=
X-Google-Smtp-Source: ADFU+vuUu5H8qUsdHI77jAJUk1/pF01jvq3851VA9tmmHpuSOH04e+d4TH068BYWpavwPlM3IqsxXQ==
X-Received: by 2002:a17:90a:178e:: with SMTP id q14mr6310746pja.132.1584557608263;
        Wed, 18 Mar 2020 11:53:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:982:: with SMTP id 2ls2434838pjo.1.gmail; Wed, 18
 Mar 2020 11:53:27 -0700 (PDT)
X-Received: by 2002:a17:90b:1954:: with SMTP id nk20mr6006536pjb.69.1584557607733;
        Wed, 18 Mar 2020 11:53:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584557607; cv=none;
        d=google.com; s=arc-20160816;
        b=lhLM7KSl0nX2BbOHaJa/Ivu5ePvLMHaRxZaMW9HXrq+dlCH5uU6440GWtiA/5KK8W7
         EXnBSrCeirp8+UKm1hUHQRsKHlPC65OGXoKFACILZmf7btnMwDii5H0zvXResjkVlaLf
         I3fYh/iVPYayu4byqXQL1sdGjEPXC+rYWlp8QsaLXRhF8gdRjEMWHT/Vw1mDcR/RdsPw
         3hQyofImSn6/S4A0gLqP4kq75u+OCP+52EyZhWA1Lkwipsb9T/9Y+a9Fxd03Y/kYiMuy
         iPDdklXuliUbpNyfendnIsZH8sifvIqcPIYE3Dcw4xSrv0mToBiXgfWkocfCvOLFnwWP
         Bw7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=7N5IIpqeDNIQ4ihg7zGV4Vd9eRqdU8sVuwg6+jcinlY=;
        b=UlmEMWFtHCBViKInXQRdQIpf9xEZopHVyZrxQ3jIsqCOQnEnA4OKvTKSpEfGHwc8ao
         2VgBx7Q7ccEKm8k3rxtNkZe680XuVBWpRfwi3jV9xGFzaC96y/rUerpZzr1tmDV0EOTC
         AxpMeHIy21WBsxH53k3Fmi7K4mhRNvqka1ph2M51/pqbaamzsEyag/zYcmN1e8mM758P
         eNrzKaQmf/a2/b7PFGbqCVz7aDjJPtjnpUlVQe596yk3wnSenM0+T+E0D2mIJ16jx0C6
         Sg4GuM4ZDx5MTlYBcDiP+7vk+GFRdkBMV+zp6lfD5DsNX/PjT6topoh6axLE67n36quJ
         Xr7g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=g5U6uKC2;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id ml9si121106pjb.2.2020.03.18.11.53.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Mar 2020 11:53:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Received: by mail-pf1-x444.google.com with SMTP id u68so14382987pfb.2
        for <clang-built-linux@googlegroups.com>; Wed, 18 Mar 2020 11:53:27 -0700 (PDT)
X-Received: by 2002:aa7:9511:: with SMTP id b17mr5813006pfp.243.1584557606931;
        Wed, 18 Mar 2020 11:53:26 -0700 (PDT)
Received: from google.com ([2620:15c:2ce:0:9efe:9f1:9267:2b27])
        by smtp.gmail.com with ESMTPSA id p5sm2428348pfn.182.2020.03.18.11.53.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Mar 2020 11:53:26 -0700 (PDT)
Date: Wed, 18 Mar 2020 11:53:23 -0700
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Cc: bpf <bpf@vger.kernel.org>, Networking <netdev@vger.kernel.org>,
	Daniel Borkmann <daniel@iogearbox.net>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	clang-built-linux@googlegroups.com,
	Stanislav Fomichev <sdf@google.com>,
	"David S. Miller" <davem@davemloft.net>,
	Alexei Starovoitov <ast@kernel.org>,
	Kees Cook <keescook@chromium.org>
Subject: Re: [PATCH bpf-next v4] bpf: Support llvm-objcopy and llvm-objdump
 for vmlinux BTF
Message-ID: <20200318185323.nkn76zamx5zamtbs@google.com>
References: <20200317033701.w7jwos7mvfnde2t2@google.com>
 <CAEf4BzYyimAo2_513kW6hrDWwmzSDhNjTYksjy01ugKKTPt+qA@mail.gmail.com>
 <20200317052120.diawg3a75kxl5hkn@google.com>
 <CAEf4BzYepRs4uB9vd1SCFY81H5S1kbvw2n9bKNeh-ORK_kutSg@mail.gmail.com>
 <20200317054359.snyyojyf6gjxufij@google.com>
 <20200317162405.GB2459609@mini-arch.hsd1.ca.comcast.net>
 <20200317205832.lna5phig2ed3bf2n@google.com>
 <CAEf4BzY8uzcpS8t0JW70V-DrrZ4MbeXOyEtCrpTtQyHW+uQcRg@mail.gmail.com>
 <20200318175918.ulpzopsao4sm6aei@google.com>
 <CAEf4BzYBgG4dyhL7Bj21CU4HO9qpm_N7SZkQekTTK6pJBA1ZJA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <CAEf4BzYBgG4dyhL7Bj21CU4HO9qpm_N7SZkQekTTK6pJBA1ZJA@mail.gmail.com>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=g5U6uKC2;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::444
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Fangrui Song <maskray@google.com>
Reply-To: Fangrui Song <maskray@google.com>
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

On 2020-03-18, Andrii Nakryiko wrote:
>On Wed, Mar 18, 2020 at 10:59 AM Fangrui Song <maskray@google.com> wrote:
>>
>>
>> On 2020-03-17, Andrii Nakryiko wrote:
>> >On Tue, Mar 17, 2020 at 1:58 PM Fangrui Song <maskray@google.com> wrote:
>> >>
>> >>
>> >> On 2020-03-17, Stanislav Fomichev wrote:
>> >> >On 03/16, Fangrui Song wrote:
>> >> >> On 2020-03-16, Andrii Nakryiko wrote:
>> >> >> > On Mon, Mar 16, 2020 at 10:21 PM Fangrui Song <maskray@google.com> wrote:
>> >> >> > >
>> >> >> > >
>> >> >> > > On 2020-03-16, Andrii Nakryiko wrote:
>> >> >> > > >On Mon, Mar 16, 2020 at 8:37 PM Fangrui Song <maskray@google.com> wrote:
>> >> >> > > >>
>> >> >> > > >> On 2020-03-16, Andrii Nakryiko wrote:
>> >> >> > > >> >On Mon, Mar 16, 2020 at 6:17 PM Fangrui Song <maskray@google.com> wrote:
>> >> >> > > >> >>
>> >> >> > > >> >> Simplify gen_btf logic to make it work with llvm-objcopy and
>> >> >> > > >> >> llvm-objdump.  We just need to retain one section .BTF. To do so, we can
>> >> >> > > >> >> use a simple objcopy --only-section=.BTF instead of jumping all the
>> >> >> > > >> >> hoops via an architecture-less binary file.
>> >> >> > > >> >>
>> >> >> > > >> >> We use a dd comment to change the e_type field in the ELF header from
>> >> >> > > >> >> ET_EXEC to ET_REL so that .btf.vmlinux.bin.o will be accepted by lld.
>> >> >> > > >> >>
>> >> >> > > >> >> Fixes: df786c9b9476 ("bpf: Force .BTF section start to zero when dumping from vmlinux")
>> >> >> > > >> >> Cc: Stanislav Fomichev <sdf@google.com>
>> >> >> > > >> >> Cc: Nick Desaulniers <ndesaulniers@google.com>
>> >> >> > > >> >> Tested-by: Nick Desaulniers <ndesaulniers@google.com>
>> >> >> > > >> >> Reported-by: Nathan Chancellor <natechancellor@gmail.com>
>> >> >> > > >> >> Link: https://github.com/ClangBuiltLinux/linux/issues/871
>> >> >> > > >> >> Signed-off-by: Fangrui Song <maskray@google.com>
>> >> >> > > >> >> ---
>> >> >> > > >> >>  scripts/link-vmlinux.sh | 13 ++-----------
>> >> >> > > >> >>  1 file changed, 2 insertions(+), 11 deletions(-)
>> >> >> > > >> >>
>> >> >> > > >> >> diff --git a/scripts/link-vmlinux.sh b/scripts/link-vmlinux.sh
>> >> >> > > >> >> index dd484e92752e..84be8d7c361d 100755
>> >> >> > > >> >> --- a/scripts/link-vmlinux.sh
>> >> >> > > >> >> +++ b/scripts/link-vmlinux.sh
>> >> >> > > >> >> @@ -120,18 +120,9 @@ gen_btf()
>> >> >> > > >> >>
>> >> >> > > >> >>         info "BTF" ${2}
>> >> >> > > >> >>         vmlinux_link ${1}
>> >> >> > > >> >> -       LLVM_OBJCOPY=${OBJCOPY} ${PAHOLE} -J ${1}
>> >> >> > > >> >
>> >> >> > > >> >Is it really tested? Seems like you just dropped .BTF generation step
>> >> >> > > >> >completely...
>> >> >> > > >>
>> >> >> > > >> Sorry, dropped the whole line:/
>> >> >> > > >> I don't know how to test .BTF . I can only check readelf -S...
>> >> >> > > >>
>> >> >> > > >> Attached the new patch.
>> >> >> > > >>
>> >> >> > > >>
>> >> >> > > >>  From 02afb9417d4f0f8d2175c94fc3797a94a95cc248 Mon Sep 17 00:00:00 2001
>> >> >> > > >> From: Fangrui Song <maskray@google.com>
>> >> >> > > >> Date: Mon, 16 Mar 2020 18:02:31 -0700
>> >> >> > > >> Subject: [PATCH bpf v2] bpf: Support llvm-objcopy and llvm-objdump for
>> >> >> > > >>   vmlinux BTF
>> >> >> > > >>
>> >> >> > > >> Simplify gen_btf logic to make it work with llvm-objcopy and llvm-objdump.
>> >> >> > > >> We use a dd comment to change the e_type field in the ELF header from
>> >> >> > > >> ET_EXEC to ET_REL so that .btf.vmlinux.bin.o can be accepted by lld.
>> >> >> > > >>
>> >> >> > > >> Fixes: df786c9b9476 ("bpf: Force .BTF section start to zero when dumping from vmlinux")
>> >> >> > > >> Cc: Stanislav Fomichev <sdf@google.com>
>> >> >> > > >> Cc: Nick Desaulniers <ndesaulniers@google.com>
>> >> >> > > >> Reported-by: Nathan Chancellor <natechancellor@gmail.com>
>> >> >> > > >> Link: https://github.com/ClangBuiltLinux/linux/issues/871
>> >> >> > > >> Signed-off-by: Fangrui Song <maskray@google.com>
>> >> >> > > >> ---
>> >> >> > > >>   scripts/link-vmlinux.sh | 14 +++-----------
>> >> >> > > >>   1 file changed, 3 insertions(+), 11 deletions(-)
>> >> >> > > >>
>> >> >> > > >> diff --git a/scripts/link-vmlinux.sh b/scripts/link-vmlinux.sh
>> >> >> > > >> index dd484e92752e..b23313944c89 100755
>> >> >> > > >> --- a/scripts/link-vmlinux.sh
>> >> >> > > >> +++ b/scripts/link-vmlinux.sh
>> >> >> > > >> @@ -120,18 +120,10 @@ gen_btf()
>> >> >> > > >>
>> >> >> > > >>         info "BTF" ${2}
>> >> >> > > >>         vmlinux_link ${1}
>> >> >> > > >> -       LLVM_OBJCOPY=${OBJCOPY} ${PAHOLE} -J ${1}
>> >> >> > > >> +       ${PAHOLE} -J ${1}
>> >> >> > > >
>> >> >> > > >I'm not sure why you are touching this line at all. LLVM_OBJCOPY part
>> >> >> > > >is necessary, pahole assumes llvm-objcopy by default, but that can
>> >> >> > > >(and should for objcopy) be overridden with LLVM_OBJCOPY.
>> >> >> > >
>> >> >> > > Why is LLVM_OBJCOPY assumed? What if llvm-objcopy is not available?
>> >> >> >
>> >> >> > It's pahole assumption that we have to live with. pahole assumes
>> >> >> > llvm-objcopy internally, unless it is overriden with LLVM_OBJCOPY env
>> >> >> > var. So please revert this line otherwise you are breaking it for GCC
>> >> >> > objcopy case.
>> >> >>
>> >> >> Acknowledged. Uploaded v3.
>> >> >>
>> >> >> I added back 2>/dev/null which was removed by a previous change, to
>> >> >> suppress GNU objcopy warnings. The warnings could be annoying in V=1
>> >> >> output.
>> >> >>
>> >> >> > > This is confusing that one tool assumes llvm-objcopy while the block
>> >> >> > > below immediately uses GNU objcopy (without this patch).
>> >> >> > >
>> >> >> > > e83b9f55448afce3fe1abcd1d10db9584f8042a6 "kbuild: add ability to
>> >> >> > > generate BTF type info for vmlinux" does not say why LLVM_OBJCOPY is
>> >> >> > > set.
>> >> >> > >
>> >> >> > > >>
>> >> >> > > >> -       # dump .BTF section into raw binary file to link with final vmlinux
>> >> >> > > >> -       bin_arch=$(LANG=C ${OBJDUMP} -f ${1} | grep architecture | \
>> >> >> > > >> -               cut -d, -f1 | cut -d' ' -f2)
>> >> >> > > >> -       bin_format=$(LANG=C ${OBJDUMP} -f ${1} | grep 'file format' | \
>> >> >> > > >> -               awk '{print $4}')
>> >> >> > > >> -       ${OBJCOPY} --change-section-address .BTF=0 \
>> >> >> > > >> -               --set-section-flags .BTF=alloc -O binary \
>> >> >> > > >> -               --only-section=.BTF ${1} .btf.vmlinux.bin
>> >> >> > > >> -       ${OBJCOPY} -I binary -O ${bin_format} -B ${bin_arch} \
>> >> >> > > >> -               --rename-section .data=.BTF .btf.vmlinux.bin ${2}
>> >> >> > > >> +       # Extract .BTF section, change e_type to ET_REL, to link with final vmlinux
>> >> >> > > >> +       ${OBJCOPY} --only-section=.BTF ${1} ${2} && printf '\1' | dd of=${2} conv=notrunc bs=1 seek=16
>> >> >> > > >>   }
>> >> >> > > >>
>> >> >> > > >>   # Create ${2} .o file with all symbols from the ${1} object file
>> >> >> > > >> --
>> >> >> > > >> 2.25.1.481.gfbce0eb801-goog
>> >> >> > > >>
>> >> >>
>> >> >> From ca3597477542453e9f63185c27c162da081a4baf Mon Sep 17 00:00:00 2001
>> >> >> From: Fangrui Song <maskray@google.com>
>> >> >> Date: Mon, 16 Mar 2020 22:38:23 -0700
>> >> >> Subject: [PATCH bpf v3] bpf: Support llvm-objcopy and llvm-objdump for
>> >> >>  vmlinux BTF
>> >> >>
>> >> >> Simplify gen_btf logic to make it work with llvm-objcopy and llvm-objdump.
>> >> >> Add 2>/dev/null to suppress GNU objcopy (but not llvm-objcopy) warnings
>> >> >> "empty loadable segment detected at vaddr=0xffffffff81000000, is this intentional?"
>> >> >> Our use of --only-section drops many SHF_ALLOC sections which will essentially nullify
>> >> >> program headers. When used as linker input, program headers are simply
>> >> >> ignored.
>> >> >>
>> >> >> We use a dd command to change the e_type field in the ELF header from
>> >> >> ET_EXEC to ET_REL so that .btf.vmlinux.bin.o can be accepted by lld.
>> >> >> Accepting ET_EXEC as an input file is an extremely rare GNU ld feature
>> >> >> that lld does not intend to support, because this is very error-prone.
>> >> >>
>> >> >> Fixes: df786c9b9476 ("bpf: Force .BTF section start to zero when dumping from vmlinux")
>> >> >> Cc: Stanislav Fomichev <sdf@google.com>
>> >> >> Cc: Nick Desaulniers <ndesaulniers@google.com>
>> >> >> Reported-by: Nathan Chancellor <natechancellor@gmail.com>
>> >> >> Link: https://github.com/ClangBuiltLinux/linux/issues/871
>> >> >> Signed-off-by: Fangrui Song <maskray@google.com>
>> >> >> ---
>> >> >>  scripts/link-vmlinux.sh | 12 ++----------
>> >> >>  1 file changed, 2 insertions(+), 10 deletions(-)
>> >> >>
>> >> >> diff --git a/scripts/link-vmlinux.sh b/scripts/link-vmlinux.sh
>> >> >> index dd484e92752e..c3e808a89d4a 100755
>> >> >> --- a/scripts/link-vmlinux.sh
>> >> >> +++ b/scripts/link-vmlinux.sh
>> >> >> @@ -122,16 +122,8 @@ gen_btf()
>> >> >>      vmlinux_link ${1}
>> >> >>      LLVM_OBJCOPY=${OBJCOPY} ${PAHOLE} -J ${1}
>> >> >> -    # dump .BTF section into raw binary file to link with final vmlinux
>> >> >> -    bin_arch=$(LANG=C ${OBJDUMP} -f ${1} | grep architecture | \
>> >> >> -            cut -d, -f1 | cut -d' ' -f2)
>> >> >> -    bin_format=$(LANG=C ${OBJDUMP} -f ${1} | grep 'file format' | \
>> >> >> -            awk '{print $4}')
>> >> >> -    ${OBJCOPY} --change-section-address .BTF=0 \
>> >> >> -            --set-section-flags .BTF=alloc -O binary \
>> >> >> -            --only-section=.BTF ${1} .btf.vmlinux.bin
>> >> >> -    ${OBJCOPY} -I binary -O ${bin_format} -B ${bin_arch} \
>> >> >> -            --rename-section .data=.BTF .btf.vmlinux.bin ${2}
>> >> >> +    # Extract .BTF section, change e_type to ET_REL, to link with final vmlinux
>> >> >> +    ${OBJCOPY} --only-section=.BTF ${1} ${2} 2> /dev/null && printf '\1' | dd of=${2} conv=notrunc bs=1 seek=16
>> >> >No, it doesn't work unfortunately, I get "in-kernel BTF is malformed"
>> >> >from the kernel.
>> >> >
>> >> >I think that's because -O binary adds the following:
>> >> >$ nm .btf.vmxlinux.bin
>> >> >00000000002f7bc9 D _binary__btf_vmlinux_bin_end
>> >> >00000000002f7bc9 A _binary__btf_vmlinux_bin_size
>> >> >0000000000000000 D _binary__btf_vmlinux_bin_start
>> >> >
>> >> >While non-binary mode doesn't:
>> >> >$ nm .btf.vmxlinux.bin
>> >> >
>> >> >We don't add them manually in the linker map and expect objcopy to add
>> >> >them, see:
>> >> >https://git.kernel.org/pub/scm/linux/kernel/git/bpf/bpf-next.git/tree/kernel/bpf/btf.c#n3480
>> >>
>> >> Attached v4.
>> >>
>> >> * Added status=none to the dd command to suppress stderr output.
>> >> * `objcopy -I binary` synthesized symbols are only used in BTF, not
>> >> elsewhere. I think we can replace it with a more common trick,
>> >> __start_$sectionname __stop_$sectionname.
>> >> * GNU ld<2.23 can define __start_BTF and __stop_BTF as SHN_ABS.
>> >>    I think it is totally fine for a SHN_ABS symbol to be referenced by an
>> >>    R_X86_64_32S (absolute relocation), but arch/x86/tools/relocs.c
>> >>    contains an unnecessarily rigid check that rejects this.
>> >>
>> >>    ...
>> >>    Invalid absolute R_X86_64_32S relocation: __start_BTF
>> >>    make[3]: *** [arch/x86/boot/compressed/Makefile:123:
>> >>    arch/x86/boot/compressed/vmlinux.relocs] Error 1
>> >>
>> >>    Since we are going to bump binutils version requirement to 2.23, which
>> >>    will completely avoid the issue. I will not mention it again.
>> >>    https://lore.kernel.org/lkml/202003161354.538479F16@keescook/
>> >>
>> >> * I should mention that an orphan BTF (previously .BTF) could trigger
>> >>    a --orphan-handling=warn warning. So eventually we might need to
>> >>    add an output section description
>> >>
>> >>      BTF : { *(BTF) }
>> >>
>> >>    to the vmlinux linker script for every arch.
>> >>    I'll not do that in this patch, though.
>> >>
>> >> >
>> >> >>  }
>> >> >>  # Create ${2} .o file with all symbols from the ${1} object file
>> >> >> --
>> >> >> 2.25.1.481.gfbce0eb801-goog
>> >> >>
>> >>
>> >>  From 9b694d68fefe041464eccb948f6d246fab67942d Mon Sep 17 00:00:00 2001
>> >> From: Fangrui Song <maskray@google.com>
>> >> Date: Tue, 17 Mar 2020 13:51:04 -0700
>> >> Subject: [PATCH bpf-next v4] bpf: Support llvm-objcopy and
>> >>   llvm-objdump for vmlinux BTF
>> >>
>> >> Simplify gen_btf logic to make it work with llvm-objcopy and llvm-objdump.
>> >> The existing 'file format' and 'architecture' parsing logic is brittle
>> >> and does not work with llvm-objcopy/llvm-objdump.
>> >>
>> >> .BTF in .tmp_vmlinux.btf is non-SHF_ALLOC. Add the SHF_ALLOC flag and
>> >> rename .BTF to BTF so that C code can reference the section via linker
>> >> synthesized __start_BTF and __stop_BTF. This fixes a small problem that
>> >> previous .BTF had the SHF_WRITE flag. Additionally, `objcopy -I binary`
>> >> synthesized symbols _binary__btf_vmlinux_bin_start and
>> >> _binary__btf_vmlinux_bin_start (not used elsewhere) are replaced with
>> >> more common __start_BTF and __stop_BTF.
>> >>
>> >> Add 2>/dev/null because GNU objcopy (but not llvm-objcopy) warns
>> >> "empty loadable segment detected at vaddr=0xffffffff81000000, is this intentional?"
>> >>
>> >> We use a dd command to change the e_type field in the ELF header from
>> >> ET_EXEC to ET_REL so that lld will accept .btf.vmlinux.bin.o.  Accepting
>> >> ET_EXEC as an input file is an extremely rare GNU ld feature that lld
>> >> does not intend to support, because this is error-prone.
>> >>
>> >> Fixes: df786c9b9476 ("bpf: Force .BTF section start to zero when dumping from vmlinux")
>> >> Cc: Stanislav Fomichev <sdf@google.com>
>> >> Cc: Nick Desaulniers <ndesaulniers@google.com>
>> >> Reported-by: Nathan Chancellor <natechancellor@gmail.com>
>> >> Link: https://github.com/ClangBuiltLinux/linux/issues/871
>> >> Signed-off-by: Fangrui Song <maskray@google.com>
>> >> ---
>> >>   kernel/bpf/btf.c        |  9 ++++-----
>> >>   kernel/bpf/sysfs_btf.c  | 11 +++++------
>> >>   scripts/link-vmlinux.sh | 16 ++++++----------
>> >>   3 files changed, 15 insertions(+), 21 deletions(-)
>> >>
>> >> diff --git a/kernel/bpf/btf.c b/kernel/bpf/btf.c
>> >> index 787140095e58..51fff49de561 100644
>> >> --- a/kernel/bpf/btf.c
>> >> +++ b/kernel/bpf/btf.c
>> >> @@ -3477,8 +3477,8 @@ static struct btf *btf_parse(void __user *btf_data, u32 btf_data_size,
>> >>         return ERR_PTR(err);
>> >>   }
>> >>
>> >> -extern char __weak _binary__btf_vmlinux_bin_start[];
>> >> -extern char __weak _binary__btf_vmlinux_bin_end[];
>> >> +extern char __weak __start_BTF[];
>> >> +extern char __weak __stop_BTF[];
>> >>   extern struct btf *btf_vmlinux;
>> >>
>> >>   #define BPF_MAP_TYPE(_id, _ops)
>> >> @@ -3605,9 +3605,8 @@ struct btf *btf_parse_vmlinux(void)
>> >>         }
>> >>         env->btf = btf;
>> >>
>> >> -       btf->data = _binary__btf_vmlinux_bin_start;
>> >> -       btf->data_size = _binary__btf_vmlinux_bin_end -
>> >> -               _binary__btf_vmlinux_bin_start;
>> >> +       btf->data = __start_BTF;
>> >> +       btf->data_size = __stop_BTF - __start_BTF;
>> >>
>> >>         err = btf_parse_hdr(env);
>> >>         if (err)
>> >> diff --git a/kernel/bpf/sysfs_btf.c b/kernel/bpf/sysfs_btf.c
>> >> index 7ae5dddd1fe6..3b495773de5a 100644
>> >> --- a/kernel/bpf/sysfs_btf.c
>> >> +++ b/kernel/bpf/sysfs_btf.c
>> >> @@ -9,15 +9,15 @@
>> >>   #include <linux/sysfs.h>
>> >>
>> >>   /* See scripts/link-vmlinux.sh, gen_btf() func for details */
>> >> -extern char __weak _binary__btf_vmlinux_bin_start[];
>> >> -extern char __weak _binary__btf_vmlinux_bin_end[];
>> >> +extern char __weak __start_BTF[];
>> >> +extern char __weak __stop_BTF[];
>> >>
>> >>   static ssize_t
>> >>   btf_vmlinux_read(struct file *file, struct kobject *kobj,
>> >>                  struct bin_attribute *bin_attr,
>> >>                  char *buf, loff_t off, size_t len)
>> >>   {
>> >> -       memcpy(buf, _binary__btf_vmlinux_bin_start + off, len);
>> >> +       memcpy(buf, __start_BTF + off, len);
>> >>         return len;
>> >>   }
>> >>
>> >> @@ -30,15 +30,14 @@ static struct kobject *btf_kobj;
>> >>
>> >>   static int __init btf_vmlinux_init(void)
>> >>   {
>> >> -       if (!_binary__btf_vmlinux_bin_start)
>> >> +       if (!__start_BTF)
>> >>                 return 0;
>> >>
>> >>         btf_kobj = kobject_create_and_add("btf", kernel_kobj);
>> >>         if (!btf_kobj)
>> >>                 return -ENOMEM;
>> >>
>> >> -       bin_attr_btf_vmlinux.size = _binary__btf_vmlinux_bin_end -
>> >> -                                   _binary__btf_vmlinux_bin_start;
>> >> +       bin_attr_btf_vmlinux.size = __stop_BTF - __start_BTF;
>> >>
>> >>         return sysfs_create_bin_file(btf_kobj, &bin_attr_btf_vmlinux);
>> >>   }
>> >> diff --git a/scripts/link-vmlinux.sh b/scripts/link-vmlinux.sh
>> >> index dd484e92752e..c0d2ecf1bff7 100755
>> >> --- a/scripts/link-vmlinux.sh
>> >> +++ b/scripts/link-vmlinux.sh
>> >> @@ -122,16 +122,12 @@ gen_btf()
>> >>         vmlinux_link ${1}
>> >>         LLVM_OBJCOPY=${OBJCOPY} ${PAHOLE} -J ${1}
>> >>
>> >> -       # dump .BTF section into raw binary file to link with final vmlinux
>> >> -       bin_arch=$(LANG=C ${OBJDUMP} -f ${1} | grep architecture | \
>> >> -               cut -d, -f1 | cut -d' ' -f2)
>> >> -       bin_format=$(LANG=C ${OBJDUMP} -f ${1} | grep 'file format' | \
>> >> -               awk '{print $4}')
>> >> -       ${OBJCOPY} --change-section-address .BTF=0 \
>> >> -               --set-section-flags .BTF=alloc -O binary \
>> >> -               --only-section=.BTF ${1} .btf.vmlinux.bin
>> >> -       ${OBJCOPY} -I binary -O ${bin_format} -B ${bin_arch} \
>> >> -               --rename-section .data=.BTF .btf.vmlinux.bin ${2}
>> >> +       # Extract .BTF, add SHF_ALLOC, rename to BTF so that we can reference
>> >> +       # it via linker synthesized __start_BTF and __stop_BTF. Change e_type
>> >> +       # to ET_REL so that it can be used to link final vmlinux.
>> >> +       ${OBJCOPY} --only-section=.BTF --set-section-flags .BTF=alloc,readonly \
>> >> +               --rename-section .BTF=BTF ${1} ${2} 2>/dev/null && \
>> >
>> >You can't just rename .BTF into BTF. ".BTF" is part of BTF
>> >specification, tools like bpftool rely on that specific name. Libbpf
>> >relies on this name as well. It cannot be changed. Please stop making
>> >arbitrary changes and breaking stuff, please.
>>
>> I can't find anything which really assumes ".BTF" under tools/bpf/bpftool
>
>It's in libbpf, which bpftool uses to load and work with BTF. See
>tools/lib/bpf/btf.{c,h}. And at this point there are other tools and
>apps that rely on .BTF section, so there is absolutely no way we are
>going to rename this, I'm sorry.

Stanislav informed me of the same. Thanks for the reminder.

>>
>> % grep -r '\.BTF'
>> Documentation/bpftool-btf.rst:            .BTF section with well-defined BTF binary format data,
>>
>> >
>> >> +               printf '\1' | dd of=${2} conv=notrunc bs=1 seek=16 status=none
>> >
>> >I wonder if there is any less hacky and more obvious way to achieve this?..
>>
>> No. As a maintainer of lld/ELF, I abandoned https://reviews.llvm.org/D76174 .
>> Also as a maintainer of LLVM binary utilities, I have to complain the whole
>> scheme is really hacky and did not get enough scrutiny when they were merged.
>>
>> A previous comment said pahole somehow relied on llvm-objcopy so LLVM_OBJCOPY
>> is used, while llvm-objcopy/llvm-objdump are not really supported...  Note, on
>
>pahole relies on llvm-objcopy internally to add/replace .BTF section.
>Instead of doubting everything I'm saying, you could just have grepped
>for 'llvm-objcopy' in pahole sources. It can be done differently, I'm
>sure, but we'll need to support old versions of pahole anyways, so
>LLVM_OBJCOPY=${OBJCOPY} parts stays, however confusing it might look.
>
>> March 16, I just pushed https://reviews.llvm.org/D76046 to make llvm-objdump
>> print bfdnames to some part of the existing hacks happy...
>>
>> I am trying my best to make this stuff better.
>> BTF, when merged into LLVM in December 2018, was not really the best example demonstrating how a subproject should be merged...
>> OK, I'll stop complaining here.
>
>We should make sure that we are not making it worse first, don't you
>agree? I think it's more important, because there are many happy users
>already and breaking them is not an option. It's v5 of your patch and
>every single revision is broken, so I'm not sure you are the one to
>complain here. The least you can do to test this is to build kernel
>with BTF and run selftests/bpf, not just throw your patch out in hopes
>that others will point out all the issues.

I am late to the party. I am sorry that it has been v5 of my patch.
There are plenty of my own reasons: I am a kernel newbie.  So I
apologize for that. Though, it should still be brought up that the
various previous fixes touching this area suggest that the whole scheme
makes any adjustment really really difficult.

There are many subtle things affecting the best strategy here:

* Before GNU ld 2.23 (more precisely, commit d9476c5a34043d72dd855cb03d124d4052b190ce),
   __start_foo has the st_shndx field of SHN_ABS. arch/x86/tools/relocs.c
   can be paranoid and reject it.
* Before GNU objcopy 2.25, --dump-section was not available.
* llvm-objdump<11 does not print bfdnames. I fixed it just a few days ago.
* GNU objcopy<2.34 required useless -B for -I binary: https://sourceware.org/bugzilla/show_bug.cgi?id=24968
* GNU ld makes use of an error-prone feature: linkable ET_EXEC. I rejected it as an lld feature a few days ago.
* We need PROVIDE in lld to avoid unnecessary symbols, or we can use #ifdef CONFIG_DEBUG_INFO_BTF
* ...

An experienced kernel developer who does not play enoguh linker scripts
and objcopy commands may not do better than I do.


>>
>> commit cb0cc635c7a9fa8a3a0f75d4d896721819c63add "powerpc: Include .BTF section"
>> places .BTF somewhere in the writable section area, so if you insist on ".BTF",
>> I'll make a similar change and add some stuff to arch/x86/kernel/vmlinux.lds.S
>>
>> >Also, this script has `set -e` at the top, so you don't have to chain
>> >all command with &&, you put this on separate line with the same
>> >effect, but it will look less confusing.
>>
>> Not using section "BTF" has the downside that we have to add
>>
>> .BTF : {
>>    PROVIDE(__start_BTF = .);
>>    *(.BTF)
>>    PROVIDE(__stop_BTF = .);
>> }
>>
>> to every arch/*/kernel/vmlinux.lds.S which can use BTF.
>
>It doesn't look all that terrible, so why not, I guess? But just
>curious, why this is not required for "BTF", but required for ".BTF"?
>Not very familiar with linker scripts setup in kernel.

If every extension needing a section adds an output section description
to vmlinux.lds.S, the linker script will be pretty much unmanageable.

Note also that arch/powerpc/kernel/vmlinux.lds.S places .BTF in an
undesired area (writable). We will fix it later.

If a section name is a valid C identifier (not precisely, for example,
Unicode is not really supported) will have magic __start_foo __stop_foo
defined.

_binary_* was never used before BTF added them.

>>
>> >>   }
>> >>
>> >>   # Create ${2} .o file with all symbols from the ${1} object file
>> >> --
>> >> 2.25.1.481.gfbce0eb801-goog
>> >>

I am preparing a v6 and I need to take all the stuff into account.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200318185323.nkn76zamx5zamtbs%40google.com.
