Return-Path: <clang-built-linux+bncBCS7XUWOUULBB7PTYTZQKGQEIXSBBFI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3a.google.com (mail-qv1-xf3a.google.com [IPv6:2607:f8b0:4864:20::f3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 169EE188FE6
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Mar 2020 21:58:39 +0100 (CET)
Received: by mail-qv1-xf3a.google.com with SMTP id z4sf22232083qvj.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Mar 2020 13:58:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584478718; cv=pass;
        d=google.com; s=arc-20160816;
        b=bILJsqURkyPOZKLik+Rw6sTCnnEZjjvOJ6TtoZvbRqILg5WDnm7+JTbWZ1g5okVVQD
         1xyKJw9C4veLF2y42uT22z5pNjouPx2zWUJK6NnM14qJKwDKmCgcu6IExXvBBxpxqCtw
         QyyoS/fY/Lmi1oSiVDPnt4VoLBfgObe59FULRPs1h7z4Yy2oWk/ZrwNNjbMz9mkODILj
         RbvbSm+QlV8HJ+E112a8D/UYx6dnFw5ItaPEAWkb83NyHcZQEpKwFnfSutZSZtEVLdOI
         tuocGyVLdVcIfEW0lRdgSm6MPr73sY+4vcd0D2iZ8d+weTigbtGeSZGhdKEvfpsc2PrK
         s4bg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=J+1YMncNY/zngaI3FWfNQUTWN4yoiAMBL6pDR1H6DTU=;
        b=NLek2OyV4d2/YH8yCvXkMrdCjhLgtUn57HBGQ1O3Flm3vWmUVWQmeuUjXD+5PvunPC
         8/9UXkDIKLlP+lPQmgiobgmxXE9ody3g4m7T9OF9ciSRjtt362JzTiDjT3X1Rc/uHq/S
         hoYL1QgNTDUes6i9Y+suVCcA9AaTj1zOFS3hen7djfMwI9nJRvfEf9U9SzvPPQP8+Xb/
         na5b43AJawq3u9i0tp2y2oeKG5aMl2Hxc5boYTRFk2o7lUqSKWCEgpZobOwnQX65N13J
         IXlZLz+LlSTSf+N/IJ7Xcg0zaMIeiB+qhnY5zzf5sbu19KF9dE6NJS/LOOq9cdMRyAoN
         mPPg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Yj2Pge8n;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=J+1YMncNY/zngaI3FWfNQUTWN4yoiAMBL6pDR1H6DTU=;
        b=VW+JJbf3Fb/JxAvgYVeigqzStUeM45eMHqW14gpPynxar8f7PeVc/36NrH5Wfvyltu
         1OknGJpwvW9OpIrDEhsAoW81FuHg1lZwYWrNvF4FRe441+Ij9m3hRhU3YnpQ/g1bRAr3
         Fn16p7fKzH2md2PmJ/tBOUJD9QPtbD+ZSNpQiGd9UAJ6XU45KltFDb2saq+3Ew23BF2b
         XiSqLAXnUohC7xjaTl0KF+50YvBoMOHL73FtPnkenwWhlNSpQggQEfBKLkMHhx9FsbKc
         /+iyUKpwsbaoEieNj5CUM65Ax79gKL476b7FbQKN8bO1SO1JUCCTRFZzWRAklSVQvNlf
         J+aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=J+1YMncNY/zngaI3FWfNQUTWN4yoiAMBL6pDR1H6DTU=;
        b=P5+qmwHIIMRt+uqvWHR/5MMTvss9dPwrQrqHX5B0XPJLamwdz2nelpK1vYxEsZfuRS
         icovXdXC3xpsddYKmbR+v/SRTqnjeclIbErRy24jB9F+gKfGAHRjG2lVFDr1ap3FnVX5
         LiPX5kNgIsgogBArrvBmIBp/PtyP+h9ZjsBF3q6Scnqq98FARFrfF2r3+ZFmthUjyIah
         medIJwK27clmmKPNq78CeqpUw9o3ARCjcy6OD9eHpNlCmxmW13bvhbHL822V39AXH1WU
         BJoYv2lfHJc4EfOupMpmlOxBp1HN0LJ82tjHqjBStY3dCp4WD0Yjm/CNxWEEazPOziK2
         ziaw==
X-Gm-Message-State: ANhLgQ3DqNn0pZpevfqIGDvfmIVLGHB5UoME3Ir8Zy5tEe6tvbw1AH0V
	VdYUYpWJsZINaXaviaYuEhM=
X-Google-Smtp-Source: ADFU+vurfJlqh/tL+4YvA/89ltppEfYDoQ3xKXFcTdIYYnr0i6EvInat7Bkixa3OJHRXMyGhdxDpSA==
X-Received: by 2002:ac8:4e24:: with SMTP id d4mr1106565qtw.307.1584478718050;
        Tue, 17 Mar 2020 13:58:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:56a:: with SMTP id p10ls11586331qkp.2.gmail; Tue,
 17 Mar 2020 13:58:37 -0700 (PDT)
X-Received: by 2002:a37:4d56:: with SMTP id a83mr920218qkb.40.1584478717665;
        Tue, 17 Mar 2020 13:58:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584478717; cv=none;
        d=google.com; s=arc-20160816;
        b=QJAPR6fJGJw846q4Pg/AbmZbnxUE4HX8VwLk6e3acGS0UZHlQe1pgmosY1ySLCvnLn
         og5HQpsjjXlKDFzeySnSbV0TE7hFCq6181W85cLBRkJp5JTjkwuHnRyWdfzcHXtq/u1v
         yv37C56qz29c6tztozjMRJlf3v9DEC3gb7yH4/nRQchchWDjB4AtOZ9ROkGmOYC9ouvT
         V2NcUpkH+/cxJn+As+v1Kpcm9kY6HBccRecrhKZwz6olbHf1QIxcJwLDR1qxJvzGScPf
         o5zTqdFh3Ciz+do0ydNUcUbCACo7cDfZxxnLoE6AKzYrIIvZCiaBMAT7u4DgQK+pI2uC
         weaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=KCBhhTAcVEBazgsEE9+FOciZw820M7vK8so1wHzYoPU=;
        b=U/J/QwUnukI9AGdsaDLglofvickb53UziGxzinjxUDU5uod/4QmDCCtYJ6NVdOj8a0
         bEWPjCaqpSPKx9px+uuYqeWm5Bv7aiE5rNwsmHHtUlM6f3tzlRyysD8TMu5L++BPGbDd
         NRKbhhYjBBJsp/Jjx94EX+VAg9xPzt7JNR9lHZQKmCSMTN9fCJ7Bun4pFvGE+XCaBMHo
         HOgsDtsFLITr2RC7jeFhpWr2jkSGQlz3AQnnm1bwhX1ml1AAclWmPRrTrJTAsAIVXLi/
         KZ3TR4qCjbYU/IO/C9Db5P9RXwJ/1t6IynR1dnelNPMMH7AEGrIePusAm+P8BhdWjnNZ
         K3Jw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Yj2Pge8n;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com. [2607:f8b0:4864:20::1044])
        by gmr-mx.google.com with ESMTPS id z126si176233qkd.2.2020.03.17.13.58.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Mar 2020 13:58:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) client-ip=2607:f8b0:4864:20::1044;
Received: by mail-pj1-x1044.google.com with SMTP id l36so284467pjb.3
        for <clang-built-linux@googlegroups.com>; Tue, 17 Mar 2020 13:58:37 -0700 (PDT)
X-Received: by 2002:a17:90b:238e:: with SMTP id mr14mr1149466pjb.146.1584478716324;
        Tue, 17 Mar 2020 13:58:36 -0700 (PDT)
Received: from google.com ([2620:15c:2ce:0:9efe:9f1:9267:2b27])
        by smtp.gmail.com with ESMTPSA id w205sm4108803pfc.75.2020.03.17.13.58.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Mar 2020 13:58:35 -0700 (PDT)
Date: Tue, 17 Mar 2020 13:58:32 -0700
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: bpf <bpf@vger.kernel.org>, Networking <netdev@vger.kernel.org>
Cc: Andrii Nakryiko <andrii.nakryiko@gmail.com>,
	Daniel Borkmann <daniel@iogearbox.net>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	clang-built-linux@googlegroups.com,
	Stanislav Fomichev <sdf@google.com>,
	"David S. Miller" <davem@davemloft.net>,
	Alexei Starovoitov <ast@kernel.org>,
	Kees Cook <keescook@chromium.org>
Subject: [PATCH bpf-next v4] bpf: Support llvm-objcopy and llvm-objdump for
 vmlinux BTF
Message-ID: <20200317205832.lna5phig2ed3bf2n@google.com>
References: <20200317011654.zkx5r7so53skowlc@google.com>
 <CAEf4BzYTJqWU++QnQupxFBWGSMPfGt6r-5u9jbeLnEF2ipw+Mw@mail.gmail.com>
 <20200317033701.w7jwos7mvfnde2t2@google.com>
 <CAEf4BzYyimAo2_513kW6hrDWwmzSDhNjTYksjy01ugKKTPt+qA@mail.gmail.com>
 <20200317052120.diawg3a75kxl5hkn@google.com>
 <CAEf4BzYepRs4uB9vd1SCFY81H5S1kbvw2n9bKNeh-ORK_kutSg@mail.gmail.com>
 <20200317054359.snyyojyf6gjxufij@google.com>
 <20200317162405.GB2459609@mini-arch.hsd1.ca.comcast.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20200317162405.GB2459609@mini-arch.hsd1.ca.comcast.net>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Yj2Pge8n;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1044
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


On 2020-03-17, Stanislav Fomichev wrote:
>On 03/16, Fangrui Song wrote:
>> On 2020-03-16, Andrii Nakryiko wrote:
>> > On Mon, Mar 16, 2020 at 10:21 PM Fangrui Song <maskray@google.com> wrote:
>> > >
>> > >
>> > > On 2020-03-16, Andrii Nakryiko wrote:
>> > > >On Mon, Mar 16, 2020 at 8:37 PM Fangrui Song <maskray@google.com> wrote:
>> > > >>
>> > > >> On 2020-03-16, Andrii Nakryiko wrote:
>> > > >> >On Mon, Mar 16, 2020 at 6:17 PM Fangrui Song <maskray@google.com> wrote:
>> > > >> >>
>> > > >> >> Simplify gen_btf logic to make it work with llvm-objcopy and
>> > > >> >> llvm-objdump.  We just need to retain one section .BTF. To do so, we can
>> > > >> >> use a simple objcopy --only-section=.BTF instead of jumping all the
>> > > >> >> hoops via an architecture-less binary file.
>> > > >> >>
>> > > >> >> We use a dd comment to change the e_type field in the ELF header from
>> > > >> >> ET_EXEC to ET_REL so that .btf.vmlinux.bin.o will be accepted by lld.
>> > > >> >>
>> > > >> >> Fixes: df786c9b9476 ("bpf: Force .BTF section start to zero when dumping from vmlinux")
>> > > >> >> Cc: Stanislav Fomichev <sdf@google.com>
>> > > >> >> Cc: Nick Desaulniers <ndesaulniers@google.com>
>> > > >> >> Tested-by: Nick Desaulniers <ndesaulniers@google.com>
>> > > >> >> Reported-by: Nathan Chancellor <natechancellor@gmail.com>
>> > > >> >> Link: https://github.com/ClangBuiltLinux/linux/issues/871
>> > > >> >> Signed-off-by: Fangrui Song <maskray@google.com>
>> > > >> >> ---
>> > > >> >>  scripts/link-vmlinux.sh | 13 ++-----------
>> > > >> >>  1 file changed, 2 insertions(+), 11 deletions(-)
>> > > >> >>
>> > > >> >> diff --git a/scripts/link-vmlinux.sh b/scripts/link-vmlinux.sh
>> > > >> >> index dd484e92752e..84be8d7c361d 100755
>> > > >> >> --- a/scripts/link-vmlinux.sh
>> > > >> >> +++ b/scripts/link-vmlinux.sh
>> > > >> >> @@ -120,18 +120,9 @@ gen_btf()
>> > > >> >>
>> > > >> >>         info "BTF" ${2}
>> > > >> >>         vmlinux_link ${1}
>> > > >> >> -       LLVM_OBJCOPY=${OBJCOPY} ${PAHOLE} -J ${1}
>> > > >> >
>> > > >> >Is it really tested? Seems like you just dropped .BTF generation step
>> > > >> >completely...
>> > > >>
>> > > >> Sorry, dropped the whole line:/
>> > > >> I don't know how to test .BTF . I can only check readelf -S...
>> > > >>
>> > > >> Attached the new patch.
>> > > >>
>> > > >>
>> > > >>  From 02afb9417d4f0f8d2175c94fc3797a94a95cc248 Mon Sep 17 00:00:00 2001
>> > > >> From: Fangrui Song <maskray@google.com>
>> > > >> Date: Mon, 16 Mar 2020 18:02:31 -0700
>> > > >> Subject: [PATCH bpf v2] bpf: Support llvm-objcopy and llvm-objdump for
>> > > >>   vmlinux BTF
>> > > >>
>> > > >> Simplify gen_btf logic to make it work with llvm-objcopy and llvm-objdump.
>> > > >> We use a dd comment to change the e_type field in the ELF header from
>> > > >> ET_EXEC to ET_REL so that .btf.vmlinux.bin.o can be accepted by lld.
>> > > >>
>> > > >> Fixes: df786c9b9476 ("bpf: Force .BTF section start to zero when dumping from vmlinux")
>> > > >> Cc: Stanislav Fomichev <sdf@google.com>
>> > > >> Cc: Nick Desaulniers <ndesaulniers@google.com>
>> > > >> Reported-by: Nathan Chancellor <natechancellor@gmail.com>
>> > > >> Link: https://github.com/ClangBuiltLinux/linux/issues/871
>> > > >> Signed-off-by: Fangrui Song <maskray@google.com>
>> > > >> ---
>> > > >>   scripts/link-vmlinux.sh | 14 +++-----------
>> > > >>   1 file changed, 3 insertions(+), 11 deletions(-)
>> > > >>
>> > > >> diff --git a/scripts/link-vmlinux.sh b/scripts/link-vmlinux.sh
>> > > >> index dd484e92752e..b23313944c89 100755
>> > > >> --- a/scripts/link-vmlinux.sh
>> > > >> +++ b/scripts/link-vmlinux.sh
>> > > >> @@ -120,18 +120,10 @@ gen_btf()
>> > > >>
>> > > >>         info "BTF" ${2}
>> > > >>         vmlinux_link ${1}
>> > > >> -       LLVM_OBJCOPY=${OBJCOPY} ${PAHOLE} -J ${1}
>> > > >> +       ${PAHOLE} -J ${1}
>> > > >
>> > > >I'm not sure why you are touching this line at all. LLVM_OBJCOPY part
>> > > >is necessary, pahole assumes llvm-objcopy by default, but that can
>> > > >(and should for objcopy) be overridden with LLVM_OBJCOPY.
>> > >
>> > > Why is LLVM_OBJCOPY assumed? What if llvm-objcopy is not available?
>> >
>> > It's pahole assumption that we have to live with. pahole assumes
>> > llvm-objcopy internally, unless it is overriden with LLVM_OBJCOPY env
>> > var. So please revert this line otherwise you are breaking it for GCC
>> > objcopy case.
>>
>> Acknowledged. Uploaded v3.
>>
>> I added back 2>/dev/null which was removed by a previous change, to
>> suppress GNU objcopy warnings. The warnings could be annoying in V=1
>> output.
>>
>> > > This is confusing that one tool assumes llvm-objcopy while the block
>> > > below immediately uses GNU objcopy (without this patch).
>> > >
>> > > e83b9f55448afce3fe1abcd1d10db9584f8042a6 "kbuild: add ability to
>> > > generate BTF type info for vmlinux" does not say why LLVM_OBJCOPY is
>> > > set.
>> > >
>> > > >>
>> > > >> -       # dump .BTF section into raw binary file to link with final vmlinux
>> > > >> -       bin_arch=$(LANG=C ${OBJDUMP} -f ${1} | grep architecture | \
>> > > >> -               cut -d, -f1 | cut -d' ' -f2)
>> > > >> -       bin_format=$(LANG=C ${OBJDUMP} -f ${1} | grep 'file format' | \
>> > > >> -               awk '{print $4}')
>> > > >> -       ${OBJCOPY} --change-section-address .BTF=0 \
>> > > >> -               --set-section-flags .BTF=alloc -O binary \
>> > > >> -               --only-section=.BTF ${1} .btf.vmlinux.bin
>> > > >> -       ${OBJCOPY} -I binary -O ${bin_format} -B ${bin_arch} \
>> > > >> -               --rename-section .data=.BTF .btf.vmlinux.bin ${2}
>> > > >> +       # Extract .BTF section, change e_type to ET_REL, to link with final vmlinux
>> > > >> +       ${OBJCOPY} --only-section=.BTF ${1} ${2} && printf '\1' | dd of=${2} conv=notrunc bs=1 seek=16
>> > > >>   }
>> > > >>
>> > > >>   # Create ${2} .o file with all symbols from the ${1} object file
>> > > >> --
>> > > >> 2.25.1.481.gfbce0eb801-goog
>> > > >>
>>
>> From ca3597477542453e9f63185c27c162da081a4baf Mon Sep 17 00:00:00 2001
>> From: Fangrui Song <maskray@google.com>
>> Date: Mon, 16 Mar 2020 22:38:23 -0700
>> Subject: [PATCH bpf v3] bpf: Support llvm-objcopy and llvm-objdump for
>>  vmlinux BTF
>>
>> Simplify gen_btf logic to make it work with llvm-objcopy and llvm-objdump.
>> Add 2>/dev/null to suppress GNU objcopy (but not llvm-objcopy) warnings
>> "empty loadable segment detected at vaddr=0xffffffff81000000, is this intentional?"
>> Our use of --only-section drops many SHF_ALLOC sections which will essentially nullify
>> program headers. When used as linker input, program headers are simply
>> ignored.
>>
>> We use a dd command to change the e_type field in the ELF header from
>> ET_EXEC to ET_REL so that .btf.vmlinux.bin.o can be accepted by lld.
>> Accepting ET_EXEC as an input file is an extremely rare GNU ld feature
>> that lld does not intend to support, because this is very error-prone.
>>
>> Fixes: df786c9b9476 ("bpf: Force .BTF section start to zero when dumping from vmlinux")
>> Cc: Stanislav Fomichev <sdf@google.com>
>> Cc: Nick Desaulniers <ndesaulniers@google.com>
>> Reported-by: Nathan Chancellor <natechancellor@gmail.com>
>> Link: https://github.com/ClangBuiltLinux/linux/issues/871
>> Signed-off-by: Fangrui Song <maskray@google.com>
>> ---
>>  scripts/link-vmlinux.sh | 12 ++----------
>>  1 file changed, 2 insertions(+), 10 deletions(-)
>>
>> diff --git a/scripts/link-vmlinux.sh b/scripts/link-vmlinux.sh
>> index dd484e92752e..c3e808a89d4a 100755
>> --- a/scripts/link-vmlinux.sh
>> +++ b/scripts/link-vmlinux.sh
>> @@ -122,16 +122,8 @@ gen_btf()
>>  	vmlinux_link ${1}
>>  	LLVM_OBJCOPY=${OBJCOPY} ${PAHOLE} -J ${1}
>> -	# dump .BTF section into raw binary file to link with final vmlinux
>> -	bin_arch=$(LANG=C ${OBJDUMP} -f ${1} | grep architecture | \
>> -		cut -d, -f1 | cut -d' ' -f2)
>> -	bin_format=$(LANG=C ${OBJDUMP} -f ${1} | grep 'file format' | \
>> -		awk '{print $4}')
>> -	${OBJCOPY} --change-section-address .BTF=0 \
>> -		--set-section-flags .BTF=alloc -O binary \
>> -		--only-section=.BTF ${1} .btf.vmlinux.bin
>> -	${OBJCOPY} -I binary -O ${bin_format} -B ${bin_arch} \
>> -		--rename-section .data=.BTF .btf.vmlinux.bin ${2}
>> +	# Extract .BTF section, change e_type to ET_REL, to link with final vmlinux
>> +	${OBJCOPY} --only-section=.BTF ${1} ${2} 2> /dev/null && printf '\1' | dd of=${2} conv=notrunc bs=1 seek=16
>No, it doesn't work unfortunately, I get "in-kernel BTF is malformed"
>from the kernel.
>
>I think that's because -O binary adds the following:
>$ nm .btf.vmxlinux.bin
>00000000002f7bc9 D _binary__btf_vmlinux_bin_end
>00000000002f7bc9 A _binary__btf_vmlinux_bin_size
>0000000000000000 D _binary__btf_vmlinux_bin_start
>
>While non-binary mode doesn't:
>$ nm .btf.vmxlinux.bin
>
>We don't add them manually in the linker map and expect objcopy to add
>them, see:
>https://git.kernel.org/pub/scm/linux/kernel/git/bpf/bpf-next.git/tree/kernel/bpf/btf.c#n3480

Attached v4.

* Added status=none to the dd command to suppress stderr output.
* `objcopy -I binary` synthesized symbols are only used in BTF, not
elsewhere. I think we can replace it with a more common trick,
__start_$sectionname __stop_$sectionname.
* GNU ld<2.23 can define __start_BTF and __stop_BTF as SHN_ABS.
   I think it is totally fine for a SHN_ABS symbol to be referenced by an
   R_X86_64_32S (absolute relocation), but arch/x86/tools/relocs.c
   contains an unnecessarily rigid check that rejects this.

   ...
   Invalid absolute R_X86_64_32S relocation: __start_BTF
   make[3]: *** [arch/x86/boot/compressed/Makefile:123:
   arch/x86/boot/compressed/vmlinux.relocs] Error 1

   Since we are going to bump binutils version requirement to 2.23, which
   will completely avoid the issue. I will not mention it again.
   https://lore.kernel.org/lkml/202003161354.538479F16@keescook/

* I should mention that an orphan BTF (previously .BTF) could trigger
   a --orphan-handling=warn warning. So eventually we might need to
   add an output section description

     BTF : { *(BTF) }

   to the vmlinux linker script for every arch.
   I'll not do that in this patch, though.

>
>>  }
>>  # Create ${2} .o file with all symbols from the ${1} object file
>> --
>> 2.25.1.481.gfbce0eb801-goog
>>

 From 9b694d68fefe041464eccb948f6d246fab67942d Mon Sep 17 00:00:00 2001
From: Fangrui Song <maskray@google.com>
Date: Tue, 17 Mar 2020 13:51:04 -0700
Subject: [PATCH bpf-next v4] bpf: Support llvm-objcopy and
  llvm-objdump for vmlinux BTF

Simplify gen_btf logic to make it work with llvm-objcopy and llvm-objdump.
The existing 'file format' and 'architecture' parsing logic is brittle
and does not work with llvm-objcopy/llvm-objdump.

.BTF in .tmp_vmlinux.btf is non-SHF_ALLOC. Add the SHF_ALLOC flag and
rename .BTF to BTF so that C code can reference the section via linker
synthesized __start_BTF and __stop_BTF. This fixes a small problem that
previous .BTF had the SHF_WRITE flag. Additionally, `objcopy -I binary`
synthesized symbols _binary__btf_vmlinux_bin_start and
_binary__btf_vmlinux_bin_start (not used elsewhere) are replaced with
more common __start_BTF and __stop_BTF.

Add 2>/dev/null because GNU objcopy (but not llvm-objcopy) warns
"empty loadable segment detected at vaddr=0xffffffff81000000, is this intentional?"

We use a dd command to change the e_type field in the ELF header from
ET_EXEC to ET_REL so that lld will accept .btf.vmlinux.bin.o.  Accepting
ET_EXEC as an input file is an extremely rare GNU ld feature that lld
does not intend to support, because this is error-prone.

Fixes: df786c9b9476 ("bpf: Force .BTF section start to zero when dumping from vmlinux")
Cc: Stanislav Fomichev <sdf@google.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>
Reported-by: Nathan Chancellor <natechancellor@gmail.com>
Link: https://github.com/ClangBuiltLinux/linux/issues/871
Signed-off-by: Fangrui Song <maskray@google.com>
---
  kernel/bpf/btf.c        |  9 ++++-----
  kernel/bpf/sysfs_btf.c  | 11 +++++------
  scripts/link-vmlinux.sh | 16 ++++++----------
  3 files changed, 15 insertions(+), 21 deletions(-)

diff --git a/kernel/bpf/btf.c b/kernel/bpf/btf.c
index 787140095e58..51fff49de561 100644
--- a/kernel/bpf/btf.c
+++ b/kernel/bpf/btf.c
@@ -3477,8 +3477,8 @@ static struct btf *btf_parse(void __user *btf_data, u32 btf_data_size,
  	return ERR_PTR(err);
  }
  
-extern char __weak _binary__btf_vmlinux_bin_start[];
-extern char __weak _binary__btf_vmlinux_bin_end[];
+extern char __weak __start_BTF[];
+extern char __weak __stop_BTF[];
  extern struct btf *btf_vmlinux;
  
  #define BPF_MAP_TYPE(_id, _ops)
@@ -3605,9 +3605,8 @@ struct btf *btf_parse_vmlinux(void)
  	}
  	env->btf = btf;
  
-	btf->data = _binary__btf_vmlinux_bin_start;
-	btf->data_size = _binary__btf_vmlinux_bin_end -
-		_binary__btf_vmlinux_bin_start;
+	btf->data = __start_BTF;
+	btf->data_size = __stop_BTF - __start_BTF;
  
  	err = btf_parse_hdr(env);
  	if (err)
diff --git a/kernel/bpf/sysfs_btf.c b/kernel/bpf/sysfs_btf.c
index 7ae5dddd1fe6..3b495773de5a 100644
--- a/kernel/bpf/sysfs_btf.c
+++ b/kernel/bpf/sysfs_btf.c
@@ -9,15 +9,15 @@
  #include <linux/sysfs.h>
  
  /* See scripts/link-vmlinux.sh, gen_btf() func for details */
-extern char __weak _binary__btf_vmlinux_bin_start[];
-extern char __weak _binary__btf_vmlinux_bin_end[];
+extern char __weak __start_BTF[];
+extern char __weak __stop_BTF[];
  
  static ssize_t
  btf_vmlinux_read(struct file *file, struct kobject *kobj,
  		 struct bin_attribute *bin_attr,
  		 char *buf, loff_t off, size_t len)
  {
-	memcpy(buf, _binary__btf_vmlinux_bin_start + off, len);
+	memcpy(buf, __start_BTF + off, len);
  	return len;
  }
  
@@ -30,15 +30,14 @@ static struct kobject *btf_kobj;
  
  static int __init btf_vmlinux_init(void)
  {
-	if (!_binary__btf_vmlinux_bin_start)
+	if (!__start_BTF)
  		return 0;
  
  	btf_kobj = kobject_create_and_add("btf", kernel_kobj);
  	if (!btf_kobj)
  		return -ENOMEM;
  
-	bin_attr_btf_vmlinux.size = _binary__btf_vmlinux_bin_end -
-				    _binary__btf_vmlinux_bin_start;
+	bin_attr_btf_vmlinux.size = __stop_BTF - __start_BTF;
  
  	return sysfs_create_bin_file(btf_kobj, &bin_attr_btf_vmlinux);
  }
diff --git a/scripts/link-vmlinux.sh b/scripts/link-vmlinux.sh
index dd484e92752e..c0d2ecf1bff7 100755
--- a/scripts/link-vmlinux.sh
+++ b/scripts/link-vmlinux.sh
@@ -122,16 +122,12 @@ gen_btf()
  	vmlinux_link ${1}
  	LLVM_OBJCOPY=${OBJCOPY} ${PAHOLE} -J ${1}
  
-	# dump .BTF section into raw binary file to link with final vmlinux
-	bin_arch=$(LANG=C ${OBJDUMP} -f ${1} | grep architecture | \
-		cut -d, -f1 | cut -d' ' -f2)
-	bin_format=$(LANG=C ${OBJDUMP} -f ${1} | grep 'file format' | \
-		awk '{print $4}')
-	${OBJCOPY} --change-section-address .BTF=0 \
-		--set-section-flags .BTF=alloc -O binary \
-		--only-section=.BTF ${1} .btf.vmlinux.bin
-	${OBJCOPY} -I binary -O ${bin_format} -B ${bin_arch} \
-		--rename-section .data=.BTF .btf.vmlinux.bin ${2}
+	# Extract .BTF, add SHF_ALLOC, rename to BTF so that we can reference
+	# it via linker synthesized __start_BTF and __stop_BTF. Change e_type
+	# to ET_REL so that it can be used to link final vmlinux.
+	${OBJCOPY} --only-section=.BTF --set-section-flags .BTF=alloc,readonly \
+		--rename-section .BTF=BTF ${1} ${2} 2>/dev/null && \
+		printf '\1' | dd of=${2} conv=notrunc bs=1 seek=16 status=none
  }
  
  # Create ${2} .o file with all symbols from the ${1} object file
-- 
2.25.1.481.gfbce0eb801-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200317205832.lna5phig2ed3bf2n%40google.com.
