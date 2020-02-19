Return-Path: <clang-built-linux+bncBDYNJBOFRECBBDONWPZAKGQE5QHFM3Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x340.google.com (mail-wm1-x340.google.com [IPv6:2a00:1450:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id F090F163DF9
	for <lists+clang-built-linux@lfdr.de>; Wed, 19 Feb 2020 08:41:01 +0100 (CET)
Received: by mail-wm1-x340.google.com with SMTP id z7sf1035594wmi.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 18 Feb 2020 23:41:01 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582098061; cv=pass;
        d=google.com; s=arc-20160816;
        b=i1ogxCO5a8IR9fD0GS8eqK6aN8IpG7x+23RT9wcXgaNrpPTleEgrDY/t6O3/OebDZh
         DwsIpVD/XoQLFBF0Q8xTU30qM5YmnHrTbTD33xxswu2TfqxxRL8dJ1uSt5s3swHppsxz
         CfDNMH7T+asKix9sNOTq9MMpifUedpbVRZxp7V7C9yIvyz4diCxpqrVDbY+kUozxDfTb
         Vp+QGbf75YStc+Kv4QZSvQpFNjHc+1Rfnw6cfHMVcsp1tS+g0Ux/gknBc7K4OkRrcAtn
         1uWBTFgLUHI8Y1fC95gDmb41LVO4gRHIHfUPsaLY36oLVm6fPRNx3rVddt6ApUEEa2q/
         KQrQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=8tUSvQ2ULmz0tEyUr922dqraWz7CllKV7K9hrCdhgTo=;
        b=i7h0Xsx6Xhu8G5KtWhr7wPiqsveCWUKh1fgO0vJVhHa1ebLptnfN/vMPsgN2a1ocXw
         oXHeSjf9kQMaC0NNiMbOiZWX1iI4DDzlLjVxR3p+Cw/fH5Hmck5NizJKaapb5PibY78N
         ttf3hEqnbb1Qh78ThiKFh1bKbZqLWiFQXZDsMZ283/e3ZuAlF+cjt+bBZXN3BLw8HpQn
         Pls0k2+q0s7MUXE/e/VeWKWGcTlpvPXicRTTljFm2yN2PcOnKXd1we/fznuAgf4fDAQS
         NXcYycm6KRp1HycFjCG1Mh6IwPf42WZrwQvw1bVjFtwZmjxqDwaxhNBaHdTqmV85ZZ/V
         +GZg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=kTNAFKeN;
       spf=pass (google.com: domain of ard.biesheuvel@linaro.org designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=ard.biesheuvel@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8tUSvQ2ULmz0tEyUr922dqraWz7CllKV7K9hrCdhgTo=;
        b=SyS1sqBLluXTgPpjaFrBQAYfEtDVL6PdZHFAQWjlknKQwM537NpSzVm5vdIj4GpWsk
         lG7lyrY0fhClTyPkf6pf+5Tj3sgdxsWgtaNbtc8t7dasPwDbuKuL8gfUNX1py4tccnVK
         sHOTC7T1ovOdU62ophvFeKLWvldtxPdI0IsZaZ2F50KMgFkEVYkF/ZyC6f7HNPfYL6Sp
         drxKOvloYo1BoahTQ7oUp5c8+Hm637SBtxzcB7WnGCqo0QnDsPF54J4S9L5edgtdp7pM
         XL1poeOrov6nYdDl/3ApptByJVEaLDuXp189YFCzpLv5LJkh9bKh6Cm+zABwEQrfTCMU
         Ny2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8tUSvQ2ULmz0tEyUr922dqraWz7CllKV7K9hrCdhgTo=;
        b=Mggl/d72uDNFZ8gO4wBZh4q7rgNyTFXlLsxmOYDfTBbURbNYM9og/Hdjsjf+vooaJD
         tVKSa2gqNtIzLzKt8qcwqvb3mzGMSQOvESh/KMffS2BS0k8+R6MYZVPxCHcA2eJLlZI8
         /2CMENZ3fEcA16ze72r5d7SiHgKZ5B1wbe9qtA3RKtfXdNOoUu8hDXaRVj89yGr0FkPL
         Xqx1eIzNLAitKNjWHrc5lzgyu+da8s6Pi0m/yFaYVSu4MM5aLx/CzawtqNKIluMxKseo
         tel/7SplAGPRZ1R2824ChrX44CaLiNFMABMlpnyauGBAPJcDvU89r6HDkfYDpOiM6/kZ
         s3Zw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVDVmAERoA/PYkn1XT9hAjJ0sanF0ylzbCApvvf8ThopMi/083H
	VDDvddl0sIeguq1A3FJOZc0=
X-Google-Smtp-Source: APXvYqwqqwejQJvis+ZnikcblNnJnELmQ0l1AgxGscpeU0fuBW6b+aYqTrPNQHAe/ZqtzekEp/kVVw==
X-Received: by 2002:a1c:f003:: with SMTP id a3mr8461700wmb.41.1582098061621;
        Tue, 18 Feb 2020 23:41:01 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:638b:: with SMTP id p11ls153309wru.3.gmail; Tue, 18 Feb
 2020 23:41:01 -0800 (PST)
X-Received: by 2002:adf:f707:: with SMTP id r7mr33067113wrp.194.1582098061073;
        Tue, 18 Feb 2020 23:41:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582098061; cv=none;
        d=google.com; s=arc-20160816;
        b=ddmgmBHjTzwi57akfv95AVMjIRFXJWAwsYBIJjbhJ+VupO5g8FO5wX83rUNDkA7ueE
         BcizLvDNAnC87vGXA2LaBX3dIayqAMkBzYwFuaaAbswP825iNLejDiUGQ0ju9b2TXWGD
         WgmJ4nv5hnRutouR3EQHcL6drGCJ0C+A6rwx8ZAjg7iwNV+PboS5OkP741+xlDuvNUoU
         Rtn1F/jloXiTjhrTxgHzfBu15VEVrtu+vprZcIBptE8/SOLu9O6OLu07eT89XJ7njR8W
         q84IivutjHb2XbaA7AUFlvRgsHsXe6DRO90DK880Njqtk9f5263dmw9XlxPMHBough/z
         RBLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=+GRLqrD8FueaUCHAoE5W7lTJg+Amhm25j14mDfWmjkA=;
        b=UpJGWopkUIABNRfx9CP+uPV4A5jvmwQ4ry9SXuP2DZkArp4TkGNCctiJi8rJ0RbMj7
         NCeVNh/1bLlnCBpIMtpSLxJsLKdAf12N0x11TMeotJQMyf7W1W9FnbkGVN5eD49jwan4
         HIYSp2HtWSLCGvUfMORKkPSHASNxOoQbkFVJihnvH2Hjei4qYzxfKIZJ0mPk1LjzNvJP
         W/q3R1/ig/QqOUvFkV2m0P5wF+3RIKcKyXtJ5UK7GqHK7aFbjg+ZZbRn/t1P6O0nu3tj
         aGfNNxe2eGZKe9+xg2WQdUzXLWxbw1flpUzlUGr/aohdgybc0Adi6E2YrrfVcMUyLB6x
         dMXA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=kTNAFKeN;
       spf=pass (google.com: domain of ard.biesheuvel@linaro.org designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=ard.biesheuvel@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com. [2a00:1450:4864:20::442])
        by gmr-mx.google.com with ESMTPS id d16si61764wrv.4.2020.02.18.23.41.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Feb 2020 23:41:01 -0800 (PST)
Received-SPF: pass (google.com: domain of ard.biesheuvel@linaro.org designates 2a00:1450:4864:20::442 as permitted sender) client-ip=2a00:1450:4864:20::442;
Received: by mail-wr1-x442.google.com with SMTP id z7so26910558wrl.13
        for <clang-built-linux@googlegroups.com>; Tue, 18 Feb 2020 23:41:01 -0800 (PST)
X-Received: by 2002:a5d:5188:: with SMTP id k8mr34117209wrv.151.1582098060684;
 Tue, 18 Feb 2020 23:41:00 -0800 (PST)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200219000817.195049-1-samitolvanen@google.com> <20200219000817.195049-13-samitolvanen@google.com>
In-Reply-To: <20200219000817.195049-13-samitolvanen@google.com>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Wed, 19 Feb 2020 08:40:47 +0100
Message-ID: <CAKv+Gu9HpKBO-r+Ker47sPxvHBWLa6NAHe4P71x=K4Wiy2ybwQ@mail.gmail.com>
Subject: Re: [PATCH v8 12/12] efi/libstub: disable SCS
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Masami Hiramatsu <mhiramat@kernel.org>, 
	Mark Rutland <mark.rutland@arm.com>, James Morse <james.morse@arm.com>, 
	Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>, 
	Laura Abbott <labbott@redhat.com>, Marc Zyngier <maz@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Jann Horn <jannh@google.com>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ard.biesheuvel@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=kTNAFKeN;       spf=pass
 (google.com: domain of ard.biesheuvel@linaro.org designates
 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=ard.biesheuvel@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

On Wed, 19 Feb 2020 at 01:09, Sami Tolvanen <samitolvanen@google.com> wrote:
>
> Disable SCS for the EFI stub and allow x18 to be used.
>
> Suggested-by: James Morse <james.morse@arm.com>
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> ---
>  drivers/firmware/efi/libstub/Makefile | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/drivers/firmware/efi/libstub/Makefile b/drivers/firmware/efi/libstub/Makefile
> index 98a81576213d..dff9fa5a3f1c 100644
> --- a/drivers/firmware/efi/libstub/Makefile
> +++ b/drivers/firmware/efi/libstub/Makefile
> @@ -30,6 +30,9 @@ KBUILD_CFLAGS                 := $(cflags-y) -DDISABLE_BRANCH_PROFILING \
>                                    $(call cc-option,-fno-stack-protector) \
>                                    -D__DISABLE_EXPORTS
>
> +#  remove SCS flags from all objects in this directory
> +KBUILD_CFLAGS := $(filter-out -ffixed-x18 $(CC_FLAGS_SCS), $(KBUILD_CFLAGS))
> +

I don't see why you'd need to remove -ffixed-x18 again here. Not using
x18 anywhere in the kernel is a much more maintainable approach.

In fact, now that I think of it, the EFI AArch64 platform binding
forbids the use of x18, so it would be better to add the -ffixed-x18
unconditionally for arm64 (even though the reason it forbids it is to
ensure compatibility with an OS using it as a platform register, and
so nothing is actually broken atm).

>  GCOV_PROFILE                   := n
>  KASAN_SANITIZE                 := n
>  UBSAN_SANITIZE                 := n
> --
> 2.25.0.265.gbab2e86ba0-goog
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKv%2BGu9HpKBO-r%2BKer47sPxvHBWLa6NAHe4P71x%3DK4Wiy2ybwQ%40mail.gmail.com.
