Return-Path: <clang-built-linux+bncBCS7XUWOUULBBYULYHZQKGQE3QYCEUY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3b.google.com (mail-io1-xd3b.google.com [IPv6:2607:f8b0:4864:20::d3b])
	by mail.lfdr.de (Postfix) with ESMTPS id D0FAB187837
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Mar 2020 04:37:07 +0100 (CET)
Received: by mail-io1-xd3b.google.com with SMTP id n26sf13132537iop.1
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Mar 2020 20:37:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584416226; cv=pass;
        d=google.com; s=arc-20160816;
        b=LG0QKqW9w8oz8fgw7UaskKzTw/AWzWnajVgK3OCYnOi7kbFfELBmET9Ka2SDD2CuvA
         Tp0JM3ZeCgghl0izmcwZ0ARTmEsUutkEO0M4YYh5xVpXWzEa/FvgB8OWmMIup5qUbpRZ
         nIlxkJYdJY6AlQyBa2+vrNa3Yt9Fnsj7tKXYF414vxjWgr8HSnAMr93USjr+9JZCnc53
         lGBOQ/j9F8yTEY1nzuBPutAL+i/MkDYBz4BcCSVO+EbUvCZiPLnxASv3w7jtdDdeUxrg
         J/fcGWM9EF6aN6/0Tjg8/PQN0TnUXdKD2VncilZFyvIdDQh5K2ktOmT+nkAqNJxQdUvw
         14hA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=Kiu9LYRxfFe4aRsEV6HmyPeEnKSIjaVI+P3j748lYIs=;
        b=RCAO6IO8lgDPEF4XIT8SUCR+MrgyO7Vqlj9ImHCzg6yfUGjjvc9zEx4UlPykzogbgM
         uYRQGche8KA/vvpAnShSPL6ntSf+qQFL745wk6rhKUTLqdWIfsFDfyhcfrZMb/GYvv3y
         Hw6zR8U7AnVb2zj4iw2uID9GxQx6nTdL1RVhizKWUgF5OtJEExB55AXViXzAOa1Y59wX
         189/cCm6fB7oXM/+q0KVmvgqadQhhZxXGDPwvFORxxaJCUytv1uTLmNzeQVnaOYOaVNq
         bdeU4UfowmcDBnhaA2m3Fk9K+ZXl8I1XmCcCGqc0qC8rFvU2EUZI3Z8D7UHajnkpoXcA
         6Iew==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="EDZKf/O3";
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=Kiu9LYRxfFe4aRsEV6HmyPeEnKSIjaVI+P3j748lYIs=;
        b=XtputOEWm34z5f9ZbDLWdXogTlokMRw5GODlvmP/0pXDInHAj5lY4XYR3LYSqDjUD0
         eHuppHRJ8HSixjgycpijN7WpXvPpGdFgjHXJPBfzp8ayr2v+ixgVdAHnZ/n85Nj4pWVJ
         /hUNTWYxw7XiPW4+cTtTDCZ3L3GQ7nwyyrQrV7wCNnmVLaTA5zGk3AZpL9zhnfse6Lve
         rT6y5w1yTVkxgEs31dN9+buBOPLzjzNVGZ6WrS6WirqzDqMYbDoIpQeqHxGFrHD1BB4T
         0HKAxnhQ+1aBQFtsXtDuN4fBj+gH4Qynfxt2HkrmHYsTLw87Iwze2mKsoeg7yZM7/sl7
         MsYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Kiu9LYRxfFe4aRsEV6HmyPeEnKSIjaVI+P3j748lYIs=;
        b=IxyL6PguUj6tuHuPmO0jO8voacR9JyMsYPMc1kIKQju3kpqgg5o6LkTQHfzA42HZs+
         aBQsyfY77H+eTFFbL6FtF82pKpoMPy7jbWeWt8dhHx7VQDcT4JwOlG2Eop23luqtxaDf
         kJ0JkY9yLTQee8A/qO5ZbgN+u8fkSn0P9CcgI8sEhw+hkS06fdkQCFALZ8kMdN1Vl/E5
         atnn7oXI4jDMA60yeMQdfxsPjyuATy29mATwWRgiNgviwG2A0Nq+IiFJ9HcIn+sy6llm
         Gz0f0zsgc99i9xzP1XjgaLZ4IiJ9iu98SquzIUcupFFY1C8E2Q+Hq37BHEiN4vkvHHf7
         OJYA==
X-Gm-Message-State: ANhLgQ0u58cJFjR/aJhpizEwzMH7lc1Ytm0ujR/V0KlvpNbnAirwFLvx
	1+NpDjM4Nuqs0FyNKfCB548=
X-Google-Smtp-Source: ADFU+vuaqRB+TV4GEbKTBzJR2U5eKN9ou7hhcqrB3aohrtaiKyMqG2Pd7JQJn4OARg/o+ZHivjH/NQ==
X-Received: by 2002:a92:9edc:: with SMTP id s89mr3100113ilk.229.1584416226657;
        Mon, 16 Mar 2020 20:37:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:d0e:: with SMTP id g14ls4281864ilj.0.gmail; Mon, 16
 Mar 2020 20:37:06 -0700 (PDT)
X-Received: by 2002:a92:89c7:: with SMTP id w68mr3155621ilk.233.1584416226323;
        Mon, 16 Mar 2020 20:37:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584416226; cv=none;
        d=google.com; s=arc-20160816;
        b=lt7JRApqKF5vF8m9V+P2y8ZwbZ/Q5Q5yBQlc4Q3mnJjxfbRZ+f1WtEIJamore75zrg
         5MkG1okSNBzFehB2SmFLZAUrl8ibBn/UhbDDZevGglS7DNygXWITx7tPQXy9zuQUATu+
         W7NtrTs71BBdiigrSKoq68IChBOEjSx/X8er37F3pOudduAqpummmdYBWeXvXrwltvQU
         v7DuPSYOUlT/9sjTasZVkCFEFfIO0RW9oAkDQUCBKgY6chBHD6AfY+91XOQpTtVOJKnx
         lEq7EgLUDDbHq04OfmEy+WkmivJ4i2lSlmrddpH014f1liU59ou/qgLGFECe0OX2T+6w
         VlcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=yA+sOfTo6eaYV72YV9c/n33EKYaKnOg8YUVIhA7CJQI=;
        b=m0vy/fYad7jvctO4hl94butyRDEFWtxXWtlL7t08dM8FhZMf3lnk9q/+3T88lElayH
         /i1kxcRxJSXmbTPRhlfPvi+eA40IPZWd9GD3+Rd+DltnpvopFcxPSTT7spiVm+GjCJT+
         YrQ4K5n1k20clxZWVLGcPP/DByh7igk2xHe3zJnzbVhTtsBY1FJOS/R51CmAH/lSaQSR
         /fJk/j1BdC2sj0vnC2+h/ULm7IrFz45xcqMChyK5P1TVR904UtnZuTG2s3THpYsZyuPj
         jzeoHmDKCWF7S1lZ5BOJj/uP71bVsdyZBuUWM13JRGiMunApIHxvG1ViDL2oXv4b8h/L
         Vkrg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="EDZKf/O3";
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com. [2607:f8b0:4864:20::1044])
        by gmr-mx.google.com with ESMTPS id r16si34370iot.3.2020.03.16.20.37.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Mar 2020 20:37:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) client-ip=2607:f8b0:4864:20::1044;
Received: by mail-pj1-x1044.google.com with SMTP id bo3so8368269pjb.5
        for <clang-built-linux@googlegroups.com>; Mon, 16 Mar 2020 20:37:06 -0700 (PDT)
X-Received: by 2002:a17:90a:d156:: with SMTP id t22mr2914076pjw.138.1584416225394;
        Mon, 16 Mar 2020 20:37:05 -0700 (PDT)
Received: from google.com ([2620:15c:2ce:0:9efe:9f1:9267:2b27])
        by smtp.gmail.com with ESMTPSA id c1sm1008492pje.24.2020.03.16.20.37.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Mar 2020 20:37:04 -0700 (PDT)
Date: Mon, 16 Mar 2020 20:37:01 -0700
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
Subject: [PATCH bpf v2] bpf: Support llvm-objcopy and llvm-objdump for
 vmlinux BTF
Message-ID: <20200317033701.w7jwos7mvfnde2t2@google.com>
References: <20200317011654.zkx5r7so53skowlc@google.com>
 <CAEf4BzYTJqWU++QnQupxFBWGSMPfGt6r-5u9jbeLnEF2ipw+Mw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <CAEf4BzYTJqWU++QnQupxFBWGSMPfGt6r-5u9jbeLnEF2ipw+Mw@mail.gmail.com>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="EDZKf/O3";       spf=pass
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

On 2020-03-16, Andrii Nakryiko wrote:
>On Mon, Mar 16, 2020 at 6:17 PM Fangrui Song <maskray@google.com> wrote:
>>
>> Simplify gen_btf logic to make it work with llvm-objcopy and
>> llvm-objdump.  We just need to retain one section .BTF. To do so, we can
>> use a simple objcopy --only-section=.BTF instead of jumping all the
>> hoops via an architecture-less binary file.
>>
>> We use a dd comment to change the e_type field in the ELF header from
>> ET_EXEC to ET_REL so that .btf.vmlinux.bin.o will be accepted by lld.
>>
>> Fixes: df786c9b9476 ("bpf: Force .BTF section start to zero when dumping from vmlinux")
>> Cc: Stanislav Fomichev <sdf@google.com>
>> Cc: Nick Desaulniers <ndesaulniers@google.com>
>> Tested-by: Nick Desaulniers <ndesaulniers@google.com>
>> Reported-by: Nathan Chancellor <natechancellor@gmail.com>
>> Link: https://github.com/ClangBuiltLinux/linux/issues/871
>> Signed-off-by: Fangrui Song <maskray@google.com>
>> ---
>>  scripts/link-vmlinux.sh | 13 ++-----------
>>  1 file changed, 2 insertions(+), 11 deletions(-)
>>
>> diff --git a/scripts/link-vmlinux.sh b/scripts/link-vmlinux.sh
>> index dd484e92752e..84be8d7c361d 100755
>> --- a/scripts/link-vmlinux.sh
>> +++ b/scripts/link-vmlinux.sh
>> @@ -120,18 +120,9 @@ gen_btf()
>>
>>         info "BTF" ${2}
>>         vmlinux_link ${1}
>> -       LLVM_OBJCOPY=${OBJCOPY} ${PAHOLE} -J ${1}
>
>Is it really tested? Seems like you just dropped .BTF generation step
>completely...

Sorry, dropped the whole line:/
I don't know how to test .BTF . I can only check readelf -S...

Attached the new patch.


 From 02afb9417d4f0f8d2175c94fc3797a94a95cc248 Mon Sep 17 00:00:00 2001
From: Fangrui Song <maskray@google.com>
Date: Mon, 16 Mar 2020 18:02:31 -0700
Subject: [PATCH bpf v2] bpf: Support llvm-objcopy and llvm-objdump for
  vmlinux BTF

Simplify gen_btf logic to make it work with llvm-objcopy and llvm-objdump.
We use a dd comment to change the e_type field in the ELF header from
ET_EXEC to ET_REL so that .btf.vmlinux.bin.o can be accepted by lld.

Fixes: df786c9b9476 ("bpf: Force .BTF section start to zero when dumping from vmlinux")
Cc: Stanislav Fomichev <sdf@google.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>
Reported-by: Nathan Chancellor <natechancellor@gmail.com>
Link: https://github.com/ClangBuiltLinux/linux/issues/871
Signed-off-by: Fangrui Song <maskray@google.com>
---
  scripts/link-vmlinux.sh | 14 +++-----------
  1 file changed, 3 insertions(+), 11 deletions(-)

diff --git a/scripts/link-vmlinux.sh b/scripts/link-vmlinux.sh
index dd484e92752e..b23313944c89 100755
--- a/scripts/link-vmlinux.sh
+++ b/scripts/link-vmlinux.sh
@@ -120,18 +120,10 @@ gen_btf()
  
  	info "BTF" ${2}
  	vmlinux_link ${1}
-	LLVM_OBJCOPY=${OBJCOPY} ${PAHOLE} -J ${1}
+	${PAHOLE} -J ${1}
  
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
+	${OBJCOPY} --only-section=.BTF ${1} ${2} && printf '\1' | dd of=${2} conv=notrunc bs=1 seek=16
  }
  
  # Create ${2} .o file with all symbols from the ${1} object file
-- 
2.25.1.481.gfbce0eb801-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200317033701.w7jwos7mvfnde2t2%40google.com.
