Return-Path: <clang-built-linux+bncBCS7XUWOUULBBJGHYHZQKGQERE3U6HA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43a.google.com (mail-pf1-x43a.google.com [IPv6:2607:f8b0:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id 61B9518795A
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Mar 2020 06:44:05 +0100 (CET)
Received: by mail-pf1-x43a.google.com with SMTP id h125sf14648807pfg.3
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Mar 2020 22:44:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584423844; cv=pass;
        d=google.com; s=arc-20160816;
        b=Gg2yxBgXYfMGU6ccBj74NLu24E23qTgN28g9z332z7Dbqh8NrjsT9dzhCr855tcIz1
         BWM4fhXIeESbbdQEHLDEcdPir8UXgE6rZgmJ+9NqMBlGrnJcj2nO3pX68n5sZ+hBf3Jx
         565FAgikmUsPvptM+xR54kA11syrDum0R+I+fFtnKC5RNtLEEzckAnZ5ku3PLGU7tHSb
         im6IBGAw1AeZlwAkIGWOhoyDR8QsNAzpOj6khdtHdr58WXvJVD1PgSPXGdE7r14eGbuj
         ngG9gHdqpOGerFyWH/hiqNWzLVMK2HcnSI6Ebs0enz5ZjyICQiXCYHt9ZbnOOGn70lzS
         gORQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=1+gbzf0m39NJaXr5HXpiYwvuAD1NnMjr1szDnUN34tI=;
        b=I4f06ZpZRZ+Q6OMkRoV5qN4WeaqYpy9+ZWBeSwbQfP8R/lwKLlot0Bq+D+1Tj6gdlW
         sfzhezh8Txy7SHe+Gn4PGXZC2I3b/+DNWELnMX1RcBB/2m3r/pVYUf/NQGZu30XYrny4
         UFKaPe4z9DJTDZyIwu52KVEhTRthPHi4GcuJE4Unb8XO0cV2dPIBa3cuKf/65Qdr7KQg
         jHeyjFHb/V2tI2Dan/FIYRExVCJYuPpTAtK+eQRwB3Erq02kXak9Avd2nqa4i1wcHis2
         kpKu7u+J+PqB2BdnRzZR6y2YsyShsXYE7bEOrPVtfk1gbZu8uqRHesfTOBpLYKgGMhHy
         w7fw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=oR20OtKx;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=1+gbzf0m39NJaXr5HXpiYwvuAD1NnMjr1szDnUN34tI=;
        b=OMqWRELwm1xpv4ZLUVc4z6gmP/oB2NAtqLqOEFdRldXw/RC3oIY7/k5mw0C1xx/D34
         +iUGLRJhRSy9ZDWxyR1C9QCUJnxH9lIPkt9yApl4NFFXHNDfk9rPEx/EcTQDWFfdI0W4
         pG6bnoVkR17WlmacfxW7zjV+V8sFhCTCXXPOC73QdXX58NvTNeInZYW4cjN3WONBzPeY
         XAUjas+midcYgIZ1FNbvny+YjZhsir+Z+C1N14kpwVocThKPG/IRoPqZnirWnJFSuurD
         R3QsMb17SsfQmF4I5iY9SOntJrORf8hyK2bB+MivS75cl9mjD3NXJx8KovgXVxSvW1sp
         hOQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1+gbzf0m39NJaXr5HXpiYwvuAD1NnMjr1szDnUN34tI=;
        b=I8SvPxfD7hbKTbIvvqf5eMaO/BCwyhv8BoPXfarlfXni+tH+b6xUpgpKpXIPQjBweo
         2f8C3GG3CEidoH56W8JEi7PCch9aoG5st6G7tuiqnRdPyt5N/h5lywQiRM2e7MQPf/05
         wMLXvrh+nCT4o0KVvMDXAJ1lh9QYI9ib3Lehu+T2MWdEw5rSXE8sc5ffbKvjNHmz9P6b
         pEh/HnaxWcGtqSOiZOXNjpRWpjew4TfRP1OVUc0i//5PgDYHHzXiyL1cmBExbWxB4iEu
         dvoPlQkDK0U5ZcoiIRxXKxnc+pp4hGUGDa5D01yIIIdNO9HWcuG1+Ys7Muv6g/rJf7cE
         lRcA==
X-Gm-Message-State: ANhLgQ3oBGAFA6F8cnR5T9yWqvzde7oodvohv9d1/70eXCSMtDtHeQOA
	PaCESZ1DrZD8GUmn9NXNNpA=
X-Google-Smtp-Source: ADFU+vuariMZBfPTFnzoZU75IDPZqgCydnrb7HzpM9e6Zl0ipzBnozn6T5KmRCrK0xHS/3qKtDeAoA==
X-Received: by 2002:a63:c507:: with SMTP id f7mr3290166pgd.278.1584423844087;
        Mon, 16 Mar 2020 22:44:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:745b:: with SMTP id e27ls10439805pgn.11.gmail; Mon, 16
 Mar 2020 22:44:03 -0700 (PDT)
X-Received: by 2002:aa7:8b03:: with SMTP id f3mr3547107pfd.133.1584423843653;
        Mon, 16 Mar 2020 22:44:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584423843; cv=none;
        d=google.com; s=arc-20160816;
        b=hVRgJC0rrvLiISxLiEf/Umdj0WluRS37E8EeXKyXXc1X7Q72OYMCEmtOn+Fs4b6QX0
         r7em8NFObhuXmNcEfFOY2Vn3mhSmXkTNPHcoUQs3qalq4m3YoKjc4TLmiXbBBTSMOPj2
         /vEmaHy2YOpMgG8ize4UzxdYwFd/9ArXWk3k4i8pAYD67VBod16eDVnulSfNPaN85MQd
         b31V1rZTEOkBHrU0yEnGhSZj0a6xSNxsn4lNhAov/dDM3K2sEB73QujY6uXN6fUY18nJ
         D6lAOt05/zg3fLD7OscGTInKSq3weiOg3dPh+diuIARaSO/4a5wHo1sKmU0SCUd3uzeY
         fYxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=5XZNKNf1Nmnnst9nU+EusoDsLPNxMr6FTIAlfC6wQT0=;
        b=bCQAUCIgOTvsPdpZmnUrAU4yZN9MW5qjubL1EuACW3aaesG/hSF+H/5Xjx2PcGV/Cd
         N6bXsBWDXH3b4tN8rEUo//yFflReFfNOcb4mphNKeexlRFwigoOKuEOmcM6gErUJR2xl
         M6lx/II2TrqljdMu0F23pCbBvM54+gwAO9vx3wgWQgYOYO8XNV5n+INFjTdnfKfROXyV
         7gZEzGemas5rqgaTSbiWc4jRQLei8iCoIhY8YZSkwSxr/ArvEjqqsnwbLaACZWhbk7Xi
         oWXSWBBvSpoN1hLX3kw6YEPKWFYltdTMrAsxfP5R8/G9Sd4wkb9KmlPiHZWnOBIR+r9J
         r9tw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=oR20OtKx;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id ml9si149950pjb.2.2020.03.16.22.44.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Mar 2020 22:44:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Received: by mail-pg1-x541.google.com with SMTP id m5so11110555pgg.0
        for <clang-built-linux@googlegroups.com>; Mon, 16 Mar 2020 22:44:03 -0700 (PDT)
X-Received: by 2002:a63:7e56:: with SMTP id o22mr3269433pgn.136.1584423843100;
        Mon, 16 Mar 2020 22:44:03 -0700 (PDT)
Received: from google.com ([2620:15c:2ce:0:9efe:9f1:9267:2b27])
        by smtp.gmail.com with ESMTPSA id e24sm1563191pfi.200.2020.03.16.22.44.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Mar 2020 22:44:02 -0700 (PDT)
Date: Mon, 16 Mar 2020 22:43:59 -0700
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Cc: bpf <bpf@vger.kernel.org>, Networking <netdev@vger.kernel.org>,
	Daniel Borkmann <daniel@iogearbox.net>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	clang-built-linux@googlegroups.com,
	Stanislav Fomichev <sdf@google.com>,
	"David S. Miller" <davem@davemloft.net>,
	Alexei Starovoitov <ast@kernel.org>
Subject: [PATCH bpf v3] bpf: Support llvm-objcopy and llvm-objdump for
 vmlinux BTF
Message-ID: <20200317054359.snyyojyf6gjxufij@google.com>
References: <20200317011654.zkx5r7so53skowlc@google.com>
 <CAEf4BzYTJqWU++QnQupxFBWGSMPfGt6r-5u9jbeLnEF2ipw+Mw@mail.gmail.com>
 <20200317033701.w7jwos7mvfnde2t2@google.com>
 <CAEf4BzYyimAo2_513kW6hrDWwmzSDhNjTYksjy01ugKKTPt+qA@mail.gmail.com>
 <20200317052120.diawg3a75kxl5hkn@google.com>
 <CAEf4BzYepRs4uB9vd1SCFY81H5S1kbvw2n9bKNeh-ORK_kutSg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <CAEf4BzYepRs4uB9vd1SCFY81H5S1kbvw2n9bKNeh-ORK_kutSg@mail.gmail.com>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=oR20OtKx;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::541
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

On 2020-03-16, Andrii Nakryiko wrote:
>On Mon, Mar 16, 2020 at 10:21 PM Fangrui Song <maskray@google.com> wrote:
>>
>>
>> On 2020-03-16, Andrii Nakryiko wrote:
>> >On Mon, Mar 16, 2020 at 8:37 PM Fangrui Song <maskray@google.com> wrote:
>> >>
>> >> On 2020-03-16, Andrii Nakryiko wrote:
>> >> >On Mon, Mar 16, 2020 at 6:17 PM Fangrui Song <maskray@google.com> wrote:
>> >> >>
>> >> >> Simplify gen_btf logic to make it work with llvm-objcopy and
>> >> >> llvm-objdump.  We just need to retain one section .BTF. To do so, we can
>> >> >> use a simple objcopy --only-section=.BTF instead of jumping all the
>> >> >> hoops via an architecture-less binary file.
>> >> >>
>> >> >> We use a dd comment to change the e_type field in the ELF header from
>> >> >> ET_EXEC to ET_REL so that .btf.vmlinux.bin.o will be accepted by lld.
>> >> >>
>> >> >> Fixes: df786c9b9476 ("bpf: Force .BTF section start to zero when dumping from vmlinux")
>> >> >> Cc: Stanislav Fomichev <sdf@google.com>
>> >> >> Cc: Nick Desaulniers <ndesaulniers@google.com>
>> >> >> Tested-by: Nick Desaulniers <ndesaulniers@google.com>
>> >> >> Reported-by: Nathan Chancellor <natechancellor@gmail.com>
>> >> >> Link: https://github.com/ClangBuiltLinux/linux/issues/871
>> >> >> Signed-off-by: Fangrui Song <maskray@google.com>
>> >> >> ---
>> >> >>  scripts/link-vmlinux.sh | 13 ++-----------
>> >> >>  1 file changed, 2 insertions(+), 11 deletions(-)
>> >> >>
>> >> >> diff --git a/scripts/link-vmlinux.sh b/scripts/link-vmlinux.sh
>> >> >> index dd484e92752e..84be8d7c361d 100755
>> >> >> --- a/scripts/link-vmlinux.sh
>> >> >> +++ b/scripts/link-vmlinux.sh
>> >> >> @@ -120,18 +120,9 @@ gen_btf()
>> >> >>
>> >> >>         info "BTF" ${2}
>> >> >>         vmlinux_link ${1}
>> >> >> -       LLVM_OBJCOPY=${OBJCOPY} ${PAHOLE} -J ${1}
>> >> >
>> >> >Is it really tested? Seems like you just dropped .BTF generation step
>> >> >completely...
>> >>
>> >> Sorry, dropped the whole line:/
>> >> I don't know how to test .BTF . I can only check readelf -S...
>> >>
>> >> Attached the new patch.
>> >>
>> >>
>> >>  From 02afb9417d4f0f8d2175c94fc3797a94a95cc248 Mon Sep 17 00:00:00 2001
>> >> From: Fangrui Song <maskray@google.com>
>> >> Date: Mon, 16 Mar 2020 18:02:31 -0700
>> >> Subject: [PATCH bpf v2] bpf: Support llvm-objcopy and llvm-objdump for
>> >>   vmlinux BTF
>> >>
>> >> Simplify gen_btf logic to make it work with llvm-objcopy and llvm-objdump.
>> >> We use a dd comment to change the e_type field in the ELF header from
>> >> ET_EXEC to ET_REL so that .btf.vmlinux.bin.o can be accepted by lld.
>> >>
>> >> Fixes: df786c9b9476 ("bpf: Force .BTF section start to zero when dumping from vmlinux")
>> >> Cc: Stanislav Fomichev <sdf@google.com>
>> >> Cc: Nick Desaulniers <ndesaulniers@google.com>
>> >> Reported-by: Nathan Chancellor <natechancellor@gmail.com>
>> >> Link: https://github.com/ClangBuiltLinux/linux/issues/871
>> >> Signed-off-by: Fangrui Song <maskray@google.com>
>> >> ---
>> >>   scripts/link-vmlinux.sh | 14 +++-----------
>> >>   1 file changed, 3 insertions(+), 11 deletions(-)
>> >>
>> >> diff --git a/scripts/link-vmlinux.sh b/scripts/link-vmlinux.sh
>> >> index dd484e92752e..b23313944c89 100755
>> >> --- a/scripts/link-vmlinux.sh
>> >> +++ b/scripts/link-vmlinux.sh
>> >> @@ -120,18 +120,10 @@ gen_btf()
>> >>
>> >>         info "BTF" ${2}
>> >>         vmlinux_link ${1}
>> >> -       LLVM_OBJCOPY=${OBJCOPY} ${PAHOLE} -J ${1}
>> >> +       ${PAHOLE} -J ${1}
>> >
>> >I'm not sure why you are touching this line at all. LLVM_OBJCOPY part
>> >is necessary, pahole assumes llvm-objcopy by default, but that can
>> >(and should for objcopy) be overridden with LLVM_OBJCOPY.
>>
>> Why is LLVM_OBJCOPY assumed? What if llvm-objcopy is not available?
>
>It's pahole assumption that we have to live with. pahole assumes
>llvm-objcopy internally, unless it is overriden with LLVM_OBJCOPY env
>var. So please revert this line otherwise you are breaking it for GCC
>objcopy case.

Acknowledged. Uploaded v3.

I added back 2>/dev/null which was removed by a previous change, to
suppress GNU objcopy warnings. The warnings could be annoying in V=1
output.

>> This is confusing that one tool assumes llvm-objcopy while the block
>> below immediately uses GNU objcopy (without this patch).
>>
>> e83b9f55448afce3fe1abcd1d10db9584f8042a6 "kbuild: add ability to
>> generate BTF type info for vmlinux" does not say why LLVM_OBJCOPY is
>> set.
>>
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
>> >> +       # Extract .BTF section, change e_type to ET_REL, to link with final vmlinux
>> >> +       ${OBJCOPY} --only-section=.BTF ${1} ${2} && printf '\1' | dd of=${2} conv=notrunc bs=1 seek=16
>> >>   }
>> >>
>> >>   # Create ${2} .o file with all symbols from the ${1} object file
>> >> --
>> >> 2.25.1.481.gfbce0eb801-goog
>> >>

 From ca3597477542453e9f63185c27c162da081a4baf Mon Sep 17 00:00:00 2001
From: Fangrui Song <maskray@google.com>
Date: Mon, 16 Mar 2020 22:38:23 -0700
Subject: [PATCH bpf v3] bpf: Support llvm-objcopy and llvm-objdump for
  vmlinux BTF

Simplify gen_btf logic to make it work with llvm-objcopy and llvm-objdump.
Add 2>/dev/null to suppress GNU objcopy (but not llvm-objcopy) warnings
"empty loadable segment detected at vaddr=0xffffffff81000000, is this intentional?"
Our use of --only-section drops many SHF_ALLOC sections which will essentially nullify
program headers. When used as linker input, program headers are simply
ignored.

We use a dd command to change the e_type field in the ELF header from
ET_EXEC to ET_REL so that .btf.vmlinux.bin.o can be accepted by lld.
Accepting ET_EXEC as an input file is an extremely rare GNU ld feature
that lld does not intend to support, because this is very error-prone.

Fixes: df786c9b9476 ("bpf: Force .BTF section start to zero when dumping from vmlinux")
Cc: Stanislav Fomichev <sdf@google.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>
Reported-by: Nathan Chancellor <natechancellor@gmail.com>
Link: https://github.com/ClangBuiltLinux/linux/issues/871
Signed-off-by: Fangrui Song <maskray@google.com>
---
  scripts/link-vmlinux.sh | 12 ++----------
  1 file changed, 2 insertions(+), 10 deletions(-)

diff --git a/scripts/link-vmlinux.sh b/scripts/link-vmlinux.sh
index dd484e92752e..c3e808a89d4a 100755
--- a/scripts/link-vmlinux.sh
+++ b/scripts/link-vmlinux.sh
@@ -122,16 +122,8 @@ gen_btf()
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
+	# Extract .BTF section, change e_type to ET_REL, to link with final vmlinux
+	${OBJCOPY} --only-section=.BTF ${1} ${2} 2> /dev/null && printf '\1' | dd of=${2} conv=notrunc bs=1 seek=16
  }
  
  # Create ${2} .o file with all symbols from the ${1} object file
-- 
2.25.1.481.gfbce0eb801-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200317054359.snyyojyf6gjxufij%40google.com.
