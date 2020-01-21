Return-Path: <clang-built-linux+bncBDYJPJO25UGBBDXUTXYQKGQENNLDA2A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3e.google.com (mail-vk1-xa3e.google.com [IPv6:2607:f8b0:4864:20::a3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 84C8C14473B
	for <lists+clang-built-linux@lfdr.de>; Tue, 21 Jan 2020 23:24:15 +0100 (CET)
Received: by mail-vk1-xa3e.google.com with SMTP id s4sf1703423vkk.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 21 Jan 2020 14:24:15 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579645454; cv=pass;
        d=google.com; s=arc-20160816;
        b=V7rHCSCVuItCCVI9tY6zeCeYkqT9zo8VAX4Z87ybdhorSi14JfQeOcDiKA0NCelQSC
         0nkNS21c7ww5qaqgEexQbvS9k3yeOOIpyl06gPYHexrQGmm180e/8ZXM/JjSE/DZtV9K
         sVsTdsmYLZxsBkATZxD8haRgJIZqsYQpKTYmKusMBHOwh8Pyt0ZVR3D+h82fbwarYKQV
         pUGj/350bPqlFeYBpzv4aX05Mpxigx40tUh52TMyHZoo3DCRsbTOZyxrPPwyYF990QP6
         4TYw4gpjQjzz9bPBLv6kqYQNa8oSvP95t9Nusmhkkc2W3tiamxkQa/EZAciNhtIXKlm0
         fIkQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=GDe8gMsRFFg8qxNJzEWhDGnKnZ9hm2Y5dlM09J6tvjc=;
        b=tdh5d4drjgvl3HrQAIs775+uTZSA6exr89GGtyLt+9NbCmNPaFOTDNNRkpq4LgPUoZ
         Al21SlLs5vfopZU4Z4qALsoeRCBuwGbGl1LavSwg+EJ5CN+oFKbFbU06gKVxUxo2+eXk
         dZJTeHqSA8KSfExPn9X9rKCpELV4+Te2AKPNs9RdtQ12e4hb4qq2ZkCEyObapgE75bkn
         sxBKRNNTITLAZQKTSwDlwIAjfY0vjiy445Y+XBnj2giHOIp0O9m5rphY+TRl+9A3FXAu
         ssjhxrjEdWfplq4kDmRYNKSE4ui45NrGxiUJcstFQ3WBIBSdalSEQrNBHSYxv0sjpAW2
         5OYQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=l4ra+nRo;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GDe8gMsRFFg8qxNJzEWhDGnKnZ9hm2Y5dlM09J6tvjc=;
        b=QbSRFiaiN08jVSbCBsg7wjVGfftNAO5LWqktHeKHKVFefybDzGSb+N6vFXSi8FKDTi
         Utt22PyWsrbpJ9oeosxZLj8blybgun55Rm29an1C4q/1EmB7TzfPxaJX1KgPKaVIzHOn
         YO0dS2+obonwIeI4vGerAvkpL5ni77WoDYBrMRvBSHyDJrStBuEErgzoP15CFsiYSmDY
         as7MGNggS3GqbbeRSQNIfr5AuHfvVyIaZgMkaL94bqLKI72LqqzDD7dBuNN2OKw4SYM6
         xfA4tGp84cVVrK5eguABXnKcV9tjfm6AHxhUBsMy5ldRBCcCAm9cJIOBA4yWU5UmSJt+
         BZyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GDe8gMsRFFg8qxNJzEWhDGnKnZ9hm2Y5dlM09J6tvjc=;
        b=HnHyaBesL7ZwQTM74uLqikUBocsJvvc2L6UiCKhmc7+wYsZx41PR+yVqhMr+OU0bZk
         qO31jCCoMx/LfaVLAOdh8dwZcfy9PYd+FfkUVRqzhAffA4TMUuwZ4hEGGXj2vUu1JXtW
         h1LKA0G8eCXFtA5Uaej9v1III0GfgJh/uuEVYo6xb+QO+PJFxtpZ54WnwmunelADtT0r
         jl03luLm3xD+3ROQvE1jsJOZz4fWPUPXSD3hYyEYRc1VAlDFZKSY/50p47hymMR8FKbK
         OEQldZbn2bBwdoaoGDMf1e5fn5Udf3V5fX+i7pgjC9YeSrJeGOj5mLkJ3XFNBkNjvU+W
         gUrQ==
X-Gm-Message-State: APjAAAV+sZwmzu6AHWXrvPHrdvsFOSNkwRTDFvLbOW05YYo4/MB6g5b9
	ml55UtYo/hfZ+7oMUcFFUxw=
X-Google-Smtp-Source: APXvYqxBp20etdElQVJqwlilc06bA+Ip3cFeeVWgbEA3X7i990W9iGkS8YnRcDueu8x6QDHtsRsBMQ==
X-Received: by 2002:a67:fc96:: with SMTP id x22mr768581vsp.33.1579645454314;
        Tue, 21 Jan 2020 14:24:14 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:d188:: with SMTP id w8ls2277490vsi.4.gmail; Tue, 21 Jan
 2020 14:24:13 -0800 (PST)
X-Received: by 2002:a67:7703:: with SMTP id s3mr756001vsc.238.1579645453820;
        Tue, 21 Jan 2020 14:24:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579645453; cv=none;
        d=google.com; s=arc-20160816;
        b=MP52xJ+P/fdWq1+KgaenkTZ20ghE7e7x1tKnvcGenVbM0xHtErLN/I07yiuBamXwz3
         Ix0Mdi4SLt0Ql8ctwwxRGiQhVWjNLJCz8eXERHiWb44S7SS3kuFTubvwAbCElgmF4Ab1
         XLW5WTUOpUYv330mYDYR4mXMh6C8VJXGQAMMOV42UAcnN51pkkWORM8jVam3+OGCsS8Q
         ZGSs4Zwbe/njsySaCBeeJs3gkVcnADhYjJRwDUeGgdS7MR5gxG+qWUqdFnq6Cpqy/TvE
         Nfq62fdANd2MDriCG/UTll29BXNQMT8k/fWoj0o7VeyRfIQapK5T9DEEN02tkX41lq/c
         HTQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=SJrNbmsXY+uNHtldg6ujmrZJBSnH5PypztQmMUfyJQ8=;
        b=Ctv3jNi+1KXtmRvWSwL8iQr4GCc6KNNbVUwGcn8F8Z4tAVMiM/b4wgQYs+WSWIjzJV
         wlRyi3Ii0PPWzrajFrWZtAvGJeC7yHWQP3Whq15QPWdMoi0LG+z1zhsse9C+GvC49Zcs
         We1l8YV1MXvcIFig5Pd1cIzJY2EcymmnJCD0wrtBpO3otgqnumD0rJAWBjYG+aifivcm
         SA93NCm4GYuH4r/0KbxiFUSuXSA58vvaSzu6OY0wR7l0TWpqcrNDMs0XOwg8gscWBZ9J
         NgK/wdJJgmFLOut3TensFemt6313EitKYeIUweFGQcNyrI0MqronbjELJPTaH91kvEVz
         7v2g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=l4ra+nRo;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id 75si1396880vkx.3.2020.01.21.14.24.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Jan 2020 14:24:13 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Received: by mail-pl1-x644.google.com with SMTP id c9so1972342plo.1
        for <clang-built-linux@googlegroups.com>; Tue, 21 Jan 2020 14:24:13 -0800 (PST)
X-Received: by 2002:a17:902:bf03:: with SMTP id bi3mr7243112plb.119.1579645452580;
 Tue, 21 Jan 2020 14:24:12 -0800 (PST)
MIME-Version: 1.0
References: <20200118165705.16544-1-ardb@kernel.org> <20200118165705.16544-3-ardb@kernel.org>
In-Reply-To: <20200118165705.16544-3-ardb@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 21 Jan 2020 14:24:01 -0800
Message-ID: <CAKwvOdk83EybXULNANONOtY6pwK5KBtFpZyCXM512YHhmLoVbw@mail.gmail.com>
Subject: Re: [PATCH 2/3] x86/boot/compressed: relax sed symbol type regex for
 LLVM ld.lld
To: Ard Biesheuvel <ardb@kernel.org>
Cc: linux-efi <linux-efi@vger.kernel.org>, Ingo Molnar <mingo@kernel.org>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=l4ra+nRo;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Sat, Jan 18, 2020 at 8:57 AM Ard Biesheuvel <ardb@kernel.org> wrote:
>
> The final build stage of the x86 kernel captures some symbol
> addresses from the decompressor binary and copies them into zoffset.h.
> It uses sed with a regular expression that matches the address, symbol
> type and symbol name, and mangles the captured addresses and the names
> of symbols of interest into #define directives that are added to
> zoffset.h
>
> The symbol type is indicated by a single letter, which we match
> strictly: only letters in the set 'ABCDGRSTVW' are matched, even
> though the actual symbol type is relevant and therefore ignored.
>
> Commit bc7c9d620 ("efi/libstub/x86: Force 'hidden' visibility for
> extern declarations") made a change to the way external symbol
> references are classified, resulting in 'startup_32' now being
> emitted as a hidden symbol. This prevents the use of GOT entries to
> refer to this symbol via its absolute address, which recent toolchains
> (including Clang based ones) already avoid by default, making this
> change a no-op in the majority of cases.
>
> However, as it turns out, the LLVM linker classifies such hidden
> symbols as symbols with static linkage in fully linked ELF binaries,
> causing tools such as NM to output a lowercase 't' rather than an upper
> case 'T' for the type of such symbols. Since our sed expression only
> matches upper case letters for the symbol type, the line describing
> startup_32 is disregarded, resulting in a build error like the following
>
>   arch/x86/boot/header.S:568:18: error: symbol 'ZO_startup_32' can not be
>                                         undefined in a subtraction expression
>   init_size: .long (0x00000000008fd000 - ZO_startup_32 +
>                     (((0x0000000001f6361c + ((0x0000000001f6361c >> 8) + 65536)
>                      - 0x00000000008c32e5) + 4095) & ~4095)) # kernel initialization size
>
> Given that we are only interested in the value of the symbol, let's match
> any character in the set 'a-zA-Z' instead.
>
> Tested-by: Nathan Chancellor <natechancellor@gmail.com>
> Cc: Nick Desaulniers <ndesaulniers@google.com>

Thanks for the patch! This fixes a build breakage for us.
Tested-by: Nick Desaulniers <ndesaulniers@google.com>
Link: https://github.com/ClangBuiltLinux/linux/issues/842

> Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
> ---
>  arch/x86/boot/Makefile | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/x86/boot/Makefile b/arch/x86/boot/Makefile
> index 95410d6ee2ff..748b6d28a91d 100644
> --- a/arch/x86/boot/Makefile
> +++ b/arch/x86/boot/Makefile
> @@ -88,7 +88,7 @@ $(obj)/vmlinux.bin: $(obj)/compressed/vmlinux FORCE
>
>  SETUP_OBJS = $(addprefix $(obj)/,$(setup-y))
>
> -sed-zoffset := -e 's/^\([0-9a-fA-F]*\) [ABCDGRSTVW] \(startup_32\|startup_64\|efi32_stub_entry\|efi64_stub_entry\|efi_pe_entry\|input_data\|kernel_info\|_end\|_ehead\|_text\|z_.*\)$$/\#define ZO_\2 0x\1/p'
> +sed-zoffset := -e 's/^\([0-9a-fA-F]*\) [a-zA-Z] \(startup_32\|startup_64\|efi32_stub_entry\|efi64_stub_entry\|efi_pe_entry\|input_data\|kernel_info\|_end\|_ehead\|_text\|z_.*\)$$/\#define ZO_\2 0x\1/p'
>
>  quiet_cmd_zoffset = ZOFFSET $@
>        cmd_zoffset = $(NM) $< | sed -n $(sed-zoffset) > $@
> --
> 2.17.1
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdk83EybXULNANONOtY6pwK5KBtFpZyCXM512YHhmLoVbw%40mail.gmail.com.
