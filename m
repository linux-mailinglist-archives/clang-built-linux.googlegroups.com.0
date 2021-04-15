Return-Path: <clang-built-linux+bncBCFYN6ELYIORB3W336BQMGQENY2XVSQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33d.google.com (mail-ot1-x33d.google.com [IPv6:2607:f8b0:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id 588E536038B
	for <lists+clang-built-linux@lfdr.de>; Thu, 15 Apr 2021 09:40:31 +0200 (CEST)
Received: by mail-ot1-x33d.google.com with SMTP id u19-20020a9d4d930000b02902876395d43dsf2583180otk.21
        for <lists+clang-built-linux@lfdr.de>; Thu, 15 Apr 2021 00:40:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618472430; cv=pass;
        d=google.com; s=arc-20160816;
        b=0vcxBSy9v/cDb6REwg1KZ5V5/6CJK5J82sTIYF6wVp3gohPrfJgIlLhKFHp/TkF22F
         AIqmgMBX3u+AooIa7Nq+e0Bl5OCE5ltusCofLRVBT/w2ZpjafhMwUNG+naNnUYAd3LNE
         pkr3iwFIwIBnLRiWeTSVtCUTwzzNYxcyiqwMMLi+wg1Q11y1t58sZu4/R74xhJlT/P8w
         SAjnn5R8ekEGs0LKyvhbkcdlifANJUt67vrawoaH81XS2/LTUsKao9xrjt2nQLzs60Ps
         ZRrODptP/MB66Owk5ujs5du+bldo9M8sVmNaow9tG2oGqcnxC/bNHSmmoorTnVaOfwdp
         IidQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=mCuTZQG9eROhKfdYNBFV7u0cec1/3wYmtmCsm5E6KEI=;
        b=t2ZBbCBru0hQMDqMbEuOSz4gWN2pPRM18mx8d9fWCb5/fTxZGG52RPLj803Mo9Rv+r
         xVzhbe5UCTreJG5OEQruPp6HwOMoBDqdUJEPGxSsQYeNvpomYg2DOiXExGwaw3/zFIZh
         FDnEJMis2KO2MBr8PC4NER19VWJjKJGFtZBT47CSZbCsoiEeP9/tlw99LQd7+fgIc2KP
         AjXNnIij+mUp89WwAPWodHVnVtCDxzl//J0IN0PVtgJkLJXm25xBC4U55C4DRFCuEkQ+
         EIF0GfoGRj6yZR8QET3vz5SPc24PhFAa1X+Z1hGk3FEa6pl3ouY/HmrwDi9v80Jp6cjG
         lnjw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=eRMvTFzY;
       spf=pass (google.com: domain of pbonzini@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=pbonzini@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=mCuTZQG9eROhKfdYNBFV7u0cec1/3wYmtmCsm5E6KEI=;
        b=bHQ53h9w4w2Nun0TdrPhuXaZKov5DK5+UYLTpanP+CPf9c1V96h7SOqjy1+KQNrLxD
         gfl4BzS2sBwLOYODFt+GNHcUQC15RCKPGYTJSFp5iiTKGmH8UMXofMn1YcRQZrtbyWYM
         66O6q31UpcsBfFthnOxffmaPgAACI73nfTV6Os/G8rKAmapPqS5+mQ/eIXAf/bGKftGY
         ZdTns9MU70jy4g+kMooVD2U+jzNeagVvRxy58LF7NHGKgZLmBWAnG3jj2LAyOefv2yua
         9BgJnUHekK5TTil/1CgbLdfrxPdUFHeFtZZvRrYuH5zhlYgDIJrsptfxzC2QZ3lheLMg
         +Zng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=mCuTZQG9eROhKfdYNBFV7u0cec1/3wYmtmCsm5E6KEI=;
        b=K/FkkrbO+TkwJnVKlD07Tmk45Je8MRoY6xa1w2Ws3I04dqb3Vyw8oaQuhC0of1oHu0
         iIsIpU4NWVboE4QSMUAdBtpXvK0X5XvlYm0D063QJriZDLFKDnK1CCW0fCKmMB2+aPYQ
         cwULt8Aqs2mt6XsufpdU5U5w5N0gB+0NT2HMehuJUCgpTCKdoL+14GJ3pGzEy0pI99x8
         eGHU1A9IdXMmomDUAxBoJb2KTzDHcvVXhYtVDMH0/XRz58/ubk1YG9iTzwGwno5EhDtB
         DCSUWmOMCJWAob3vhqgf4yvy3wJiaTAmXvM3/Sk+T72om7OM/CbxcJS9GjuC3qSdoH0J
         QxNw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5328DpLc+z0Ms4+friIaVjcfVZaLKDMgji0Ei8FemkkBhSIhLzC7
	gq6Zqv6yKEM7bmbBXMUwc3s=
X-Google-Smtp-Source: ABdhPJwl3zudqqbkLGEmsgw4wd+z26GljPHlZ2+V9PHEvBfh44IKMG/U+sd4MXJQMrBdrMWwCXtMog==
X-Received: by 2002:a05:6830:1682:: with SMTP id k2mr1636671otr.27.1618472430339;
        Thu, 15 Apr 2021 00:40:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:578a:: with SMTP id q10ls1167934oth.7.gmail; Thu, 15 Apr
 2021 00:40:30 -0700 (PDT)
X-Received: by 2002:a05:6830:308d:: with SMTP id f13mr1688850ots.60.1618472429948;
        Thu, 15 Apr 2021 00:40:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618472429; cv=none;
        d=google.com; s=arc-20160816;
        b=nkLaor7CkgCbSHtvHdi8P4ScA0vqJRZrqnKcNHSN+7DjegmHLZ4SGVpaMLESvO4W8x
         7mW5iNIsau33F+fmweaavflFVKrGJCAKW3tOlv+u+UPNC45s/ZHYgKpnkh9xFBPySLzR
         3oW0bknIPLMEXhgF7PXhNGJE36EHXYi1PohwPpP7qmbbaEXFUIamlkBBtS1l0SPk94hJ
         DBPSrX0brzBFTk7gvX1XCT+jogxxzzQgYXwvBKrlFc6tUmTXkq3yKJ4BPmxx2RiBKgEQ
         CYpw26PK9Qi0q/0FR+gApQICG7KS/slMWwEmeSg9z2tT1/xR1YLCEkAz9dItIoNSJkJN
         oF5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=FABcKglbZyz1XUUkdOXQm+i1lKqkxdPYz82VDd7EHCc=;
        b=q5CVRr1N42SNzk8bmxO5Lt8GhafOIij7DGitDzcscSi7IYk/ygi22ICL/tZNDR2DBa
         YOZrNfjb9SFsrwv1umfJdhyPaXApbq4Kn/yDAqSitI/nlG/bZ24oBePqkbmH9G8vpVxz
         cEhSfJ6jKzs4vEuQTW5XXQTfFQ75G9ntszwUkfvjrFDPvNfShoNSoJrRxKDwn6/smCyS
         LXTW1aIVoejlyX7QNFnMxilg0zY9qfwL9S3wR4ZuwB9Ikp2TnAbpKeYJb0xAmKsftl5t
         FJ6TpzVj6qzZx8xb38p9B9u7kDQ/sV+n6enx1HA6n4wRonYzDfjzAF/v+0ziNgHsrvU/
         6U5g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=eRMvTFzY;
       spf=pass (google.com: domain of pbonzini@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=pbonzini@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id x38si161709otr.3.2021.04.15.00.40.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Apr 2021 00:40:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of pbonzini@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com
 [209.85.208.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-415-HIltf4WJNkSNjcX8nMVqZw-1; Thu, 15 Apr 2021 03:40:25 -0400
X-MC-Unique: HIltf4WJNkSNjcX8nMVqZw-1
Received: by mail-ed1-f72.google.com with SMTP id d2-20020aa7d6820000b0290384ee872881so666780edr.10
        for <clang-built-linux@googlegroups.com>; Thu, 15 Apr 2021 00:40:25 -0700 (PDT)
X-Received: by 2002:a17:906:80d6:: with SMTP id a22mr2018533ejx.277.1618472424067;
        Thu, 15 Apr 2021 00:40:24 -0700 (PDT)
X-Received: by 2002:a17:906:80d6:: with SMTP id a22mr2018508ejx.277.1618472423854;
        Thu, 15 Apr 2021 00:40:23 -0700 (PDT)
Received: from [192.168.10.118] ([93.56.169.140])
        by smtp.gmail.com with ESMTPSA id d18sm1701897edv.1.2021.04.15.00.40.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Apr 2021 00:40:23 -0700 (PDT)
Subject: Re: [PATCH 2/2] tools: do not include scripts/Kbuild.include
To: Masahiro Yamada <masahiroy@kernel.org>, linux-kbuild@vger.kernel.org
Cc: Janosch Frank <frankja@linux.ibm.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Alexei Starovoitov <ast@kernel.org>, Andrii Nakryiko <andrii@kernel.org>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Daniel Borkmann <daniel@iogearbox.net>, Harish <harish@linux.ibm.com>,
 John Fastabend <john.fastabend@gmail.com>, KP Singh <kpsingh@kernel.org>,
 Martin KaFai Lau <kafai@fb.com>, Michael Ellerman <mpe@ellerman.id.au>,
 Nathan Chancellor <nathan@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>, Paul Mackerras
 <paulus@samba.org>, Shuah Khan <shuah@kernel.org>,
 Song Liu <songliubraving@fb.com>, Yonghong Song <yhs@fb.com>,
 bpf@vger.kernel.org, clang-built-linux@googlegroups.com,
 kvm@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-kselftest@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
 netdev@vger.kernel.org
References: <20210415072700.147125-1-masahiroy@kernel.org>
 <20210415072700.147125-2-masahiroy@kernel.org>
From: Paolo Bonzini <pbonzini@redhat.com>
Message-ID: <9d33ee98-9de3-2215-0c0b-cc856cec1b69@redhat.com>
Date: Thu, 15 Apr 2021 09:40:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210415072700.147125-2-masahiroy@kernel.org>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: pbonzini@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=eRMvTFzY;
       spf=pass (google.com: domain of pbonzini@redhat.com designates
 216.205.24.124 as permitted sender) smtp.mailfrom=pbonzini@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

On 15/04/21 09:27, Masahiro Yamada wrote:
> Since commit d9f4ff50d2aa ("kbuild: spilt cc-option and friends to
> scripts/Makefile.compiler"), some kselftests fail to build.
> 
> The tools/ directory opted out Kbuild, and went in a different
> direction. They copy any kind of files to the tools/ directory
> in order to do whatever they want to do in their world.
> 
> tools/build/Build.include mimics scripts/Kbuild.include, but some
> tool Makefiles included the Kbuild one to import a feature that is
> missing in tools/build/Build.include:
> 
>   - Commit ec04aa3ae87b ("tools/thermal: tmon: use "-fstack-protector"
>     only if supported") included scripts/Kbuild.include from
>     tools/thermal/tmon/Makefile to import the cc-option macro.
> 
>   - Commit c2390f16fc5b ("selftests: kvm: fix for compilers that do
>     not support -no-pie") included scripts/Kbuild.include from
>     tools/testing/selftests/kvm/Makefile to import the try-run macro.
> 
>   - Commit 9cae4ace80ef ("selftests/bpf: do not ignore clang
>     failures") included scripts/Kbuild.include from
>     tools/testing/selftests/bpf/Makefile to import the .DELETE_ON_ERROR
>     target.
> 
>   - Commit 0695f8bca93e ("selftests/powerpc: Handle Makefile for
>     unrecognized option") included scripts/Kbuild.include from
>     tools/testing/selftests/powerpc/pmu/ebb/Makefile to import the
>     try-run macro.
> 
> Copy what they want there, and stop including scripts/Kbuild.include
> from the tool Makefiles.

I think it would make sense to add try-run, cc-option and 
.DELETE_ON_ERROR to tools/build/Build.include?

Paolo

> Link: https://lore.kernel.org/lkml/86dadf33-70f7-a5ac-cb8c-64966d2f45a1@linux.ibm.com/
> Fixes: d9f4ff50d2aa ("kbuild: spilt cc-option and friends to scripts/Makefile.compiler")
> Reported-by: Janosch Frank <frankja@linux.ibm.com>
> Reported-by: Christian Borntraeger <borntraeger@de.ibm.com>
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> ---
> 
>   tools/testing/selftests/bpf/Makefile          |  3 ++-
>   tools/testing/selftests/kvm/Makefile          | 12 +++++++++++-
>   .../selftests/powerpc/pmu/ebb/Makefile        | 11 ++++++++++-
>   tools/thermal/tmon/Makefile                   | 19 +++++++++++++++++--
>   4 files changed, 40 insertions(+), 5 deletions(-)
> 
> diff --git a/tools/testing/selftests/bpf/Makefile b/tools/testing/selftests/bpf/Makefile
> index 044bfdcf5b74..d872b9f41543 100644
> --- a/tools/testing/selftests/bpf/Makefile
> +++ b/tools/testing/selftests/bpf/Makefile
> @@ -1,5 +1,4 @@
>   # SPDX-License-Identifier: GPL-2.0
> -include ../../../../scripts/Kbuild.include
>   include ../../../scripts/Makefile.arch
>   include ../../../scripts/Makefile.include
>   
> @@ -476,3 +475,5 @@ EXTRA_CLEAN := $(TEST_CUSTOM_PROGS) $(SCRATCH_DIR) $(HOST_SCRATCH_DIR)	\
>   	prog_tests/tests.h map_tests/tests.h verifier/tests.h		\
>   	feature								\
>   	$(addprefix $(OUTPUT)/,*.o *.skel.h no_alu32 bpf_gcc bpf_testmod.ko)
> +
> +.DELETE_ON_ERROR:
> diff --git a/tools/testing/selftests/kvm/Makefile b/tools/testing/selftests/kvm/Makefile
> index a6d61f451f88..8b45bc417d83 100644
> --- a/tools/testing/selftests/kvm/Makefile
> +++ b/tools/testing/selftests/kvm/Makefile
> @@ -1,5 +1,15 @@
>   # SPDX-License-Identifier: GPL-2.0-only
> -include ../../../../scripts/Kbuild.include
> +
> +TMPOUT = .tmp_$$$$
> +
> +try-run = $(shell set -e;		\
> +	TMP=$(TMPOUT)/tmp;		\
> +	mkdir -p $(TMPOUT);		\
> +	trap "rm -rf $(TMPOUT)" EXIT;	\
> +	if ($(1)) >/dev/null 2>&1;	\
> +	then echo "$(2)";		\
> +	else echo "$(3)";		\
> +	fi)
>   
>   all:
>   
> diff --git a/tools/testing/selftests/powerpc/pmu/ebb/Makefile b/tools/testing/selftests/powerpc/pmu/ebb/Makefile
> index af3df79d8163..d5d3e869df93 100644
> --- a/tools/testing/selftests/powerpc/pmu/ebb/Makefile
> +++ b/tools/testing/selftests/powerpc/pmu/ebb/Makefile
> @@ -1,5 +1,4 @@
>   # SPDX-License-Identifier: GPL-2.0
> -include ../../../../../../scripts/Kbuild.include
>   
>   noarg:
>   	$(MAKE) -C ../../
> @@ -8,6 +7,16 @@ noarg:
>   CFLAGS += -m64
>   
>   TMPOUT = $(OUTPUT)/TMPDIR/
> +
> +try-run = $(shell set -e;		\
> +	TMP=$(TMPOUT)/tmp;		\
> +	mkdir -p $(TMPOUT);		\
> +	trap "rm -rf $(TMPOUT)" EXIT;	\
> +	if ($(1)) >/dev/null 2>&1;	\
> +	then echo "$(2)";		\
> +	else echo "$(3)";		\
> +	fi)
> +
>   # Toolchains may build PIE by default which breaks the assembly
>   no-pie-option := $(call try-run, echo 'int main() { return 0; }' | \
>           $(CC) -Werror $(KBUILD_CPPFLAGS) $(CC_OPTION_CFLAGS) -no-pie -x c - -o "$$TMP", -no-pie)
> diff --git a/tools/thermal/tmon/Makefile b/tools/thermal/tmon/Makefile
> index 59e417ec3e13..92a683e4866c 100644
> --- a/tools/thermal/tmon/Makefile
> +++ b/tools/thermal/tmon/Makefile
> @@ -1,6 +1,21 @@
>   # SPDX-License-Identifier: GPL-2.0
> -# We need this for the "cc-option" macro.
> -include ../../../scripts/Kbuild.include
> +
> +TMPOUT = .tmp_$$$$
> +
> +try-run = $(shell set -e;		\
> +	TMP=$(TMPOUT)/tmp;		\
> +	mkdir -p $(TMPOUT);		\
> +	trap "rm -rf $(TMPOUT)" EXIT;	\
> +	if ($(1)) >/dev/null 2>&1;	\
> +	then echo "$(2)";		\
> +	else echo "$(3)";		\
> +	fi)
> +
> +__cc-option = $(call try-run,\
> +	$(1) -Werror $(2) $(3) -c -x c /dev/null -o "$$TMP",$(3),$(4))
> +
> +cc-option = $(call __cc-option, $(CC),\
> +	$(KBUILD_CPPFLAGS) $(KBUILD_CFLAGS),$(1),$(2))
>   
>   VERSION = 1.0
>   
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/9d33ee98-9de3-2215-0c0b-cc856cec1b69%40redhat.com.
