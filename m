Return-Path: <clang-built-linux+bncBDYJPJO25UGBBPOW6PZQKGQEYANNEDA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x140.google.com (mail-il1-x140.google.com [IPv6:2607:f8b0:4864:20::140])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FF991945CA
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Mar 2020 18:49:50 +0100 (CET)
Received: by mail-il1-x140.google.com with SMTP id g79sf6173384ild.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 26 Mar 2020 10:49:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585244989; cv=pass;
        d=google.com; s=arc-20160816;
        b=UCO+YB/SUG8MvlnxcCpK4kpF3i0jGXAUWbhADZeOP++AzBfeppzlmMxSLIooBe+tji
         KMQ67xtsAbd2EU+u0mztzOJcTbVuzaQ2RLaZ2+GSL2nYlP6CRaHPiKqRUMqB3jvFyAwb
         iOhghqSrF1F4OCK9pOpxsO4uG9DAeZYzkHCwiy5I5mDLtVDrZmQ8mie/n5ZDfx0Q/xfY
         w9luVQ7I5xNF3YI92akRPOK7xVH7KAm24QQRhzjuuJoUa9O/vEy0C4L0oyMd++BBjOep
         W7y893JIrNjLYy4LZV2JQC3mJopt1W/AaOB1U+omVMe85xv/t6jRziLoMed7cBwNgOQ5
         sL+Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=krSvN29tInSuOH+hkXCYf02NnGMklToqFPBqi+nXYGg=;
        b=tVKdVUZGjKyr4p9Dv13Vq0Kg3BY+XaKNKYyCGyHg8q+HnuOnOocE9P65/B7PKdknsw
         bvbMwR+a1SuWPL0AYc+2LmrtDgs5NH12oJ1y1TLByWuR5LiyVZp+2R7+AH/IVFEGVLS+
         CC6QAuktBIlr7hneLnGhR8feNCITmRXlQSj94GJmIBMvtuWGBzOtYjog3PBoKzki6C0P
         BZIb9PF2zoi+uw6c4jcsom7uCmWKDpV6qpgTzKdZNmGv0W/bS1iznNeZjkPBcwF5G+DD
         Yhe/ZS3z5arOHfBJnvKHRcBsW8tQmCmq1RkOAPgusfaMvkpecrA18sbPxa5UHMRepifK
         baWQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=tWtR8S5N;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=krSvN29tInSuOH+hkXCYf02NnGMklToqFPBqi+nXYGg=;
        b=Dz/Ek/0VqxJSFAOMxa4gHdMXmRoizulLB33/p7+LHokRSanJgEvCjCAL9nm6SCecyc
         Nz/J1s9zvqVawkMeg5vOIozOFPuNoxzztPaCP+sthHilxx9WAWhfqQNU6PVNGtpvZyMn
         6+HzerHV06ArvR9yomUEZlDoX9WH1xBycCZKIw9m8zxW7OHfaGDqx2jiEYGu3ydxzSV+
         YUZHPJtQKxKbF3VRw/9gYn79uj417do3ggbqIzR8QxcM+uWFrYdstiak37mW9ydwundT
         T4sbFRR0GiF03pRBl4oT/z7myR0fVWTSvuXYcrhQrJ/rDQ7zKEKa4BxLxtQrkurpqcmg
         QKkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=krSvN29tInSuOH+hkXCYf02NnGMklToqFPBqi+nXYGg=;
        b=fJocIY4wAFOCPz+tQYUPFk4G+qRPhphPmWIdOmAESHzGDvBJuPL0lTVlaBXEebnfME
         Xt4+L5uEkh0kLRoDfUfBsodG7J6zC8VQY0gbxNoeQHbKF8TKTdB+pnuSeQUl40Q/IBxg
         HT54ihHMaZnkSKODV40425DuOdXcTsESUiM2LZKXgfXGwP+RnYbSaHN13sRwIRdq/paI
         LLpozubpktK9G5rVvzw+oDJrxQV0I2D5y631hh+bpx2IHRgqFC5Wk5QQ3JeK2c9gT20R
         hVPY8/D49ypWZsrKo5CBpHkfoCb39FdbbwD2DFuOm4ilS7kc2lYyN8e+eAOZUkWN8rlY
         ogeg==
X-Gm-Message-State: ANhLgQ3mSDi7sk2SFU0mNZbLSX2jmsrzxWlzCiAm6VcMe+Hq3geOcX8g
	iAtlRRSBlczRiEPCO07iaZg=
X-Google-Smtp-Source: ADFU+vv2hCag+ueBPE7eqN/a+sJaQzmyPbMO09GJDOh8edWGE5zeX5MDCfgr/MWw+/n3VbQBggm2ug==
X-Received: by 2002:a92:6f10:: with SMTP id k16mr9759413ilc.275.1585244989302;
        Thu, 26 Mar 2020 10:49:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:8890:: with SMTP id d16ls211881ioo.6.gmail; Thu, 26 Mar
 2020 10:49:48 -0700 (PDT)
X-Received: by 2002:a5d:9902:: with SMTP id x2mr8641977iol.81.1585244988915;
        Thu, 26 Mar 2020 10:49:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585244988; cv=none;
        d=google.com; s=arc-20160816;
        b=uG77BQVcC1kgJ4U05VfhU9bT42IkHkuQnNZEGtzf94OO5oVwyeOtV1J4DMByN88NoH
         Xw1dGL16UtRtvxpsbbiVB91ZQRTVrNOUAGdhhixraDaQ9hdE10dRrtaXgYhAuC35P4cF
         GJGCsAkpfuFldX4l7p2NR2tkcoKqI/sKtUsWpOP0ZKa7tykPH+MncpcqSvLpDEl1U3aO
         Bvqf2sd1k+syrla15dTXVpR3ym1pj6rN2PrZNm21gX6PoOBth9zfJfTBQVNADEWAnthQ
         ddu61Ksh2X0DAQCMY0WoSLaLqN3au6cjZMEryTgGGECIIc70ekP1bntwg+y0rAT10du7
         DNvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=6CVzG402jrx7Vd35GjafKVyfM1rK8OmiRNaJdvsplVw=;
        b=Pv2RVVDweDZ24tG+5WoZtW/ASO8Z19K7unL52IVzD6vNP9Aoo4Bq1HlnOapjl0qqqB
         Xy5m4AVpqaF28QR30Dk1f74UgcomrMiCgH143PHo+/xIiPKPyMN5rAPUxUmbKkgReN77
         kXdtBNUa4IkLWft/gJlOhe4gx97poADPW6KiG96z65LflcqjU9QYzEjnRF/dpuWu6hjt
         RaL0F6HXWYlYSgIHs71IU+Tt41wRk369NjkM6lqaFJvvKY0geMpwqq0t5SsQvSmdLseW
         ESfyTwiJD6MUueBm21ZPJCOYMDgvDz5bOC322VqN/h00c3xtbaP2T5GaeaRGpvCvZ93d
         ml2g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=tWtR8S5N;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id t13si135221ilk.5.2020.03.26.10.49.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Mar 2020 10:49:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Received: by mail-pf1-x443.google.com with SMTP id q3so3122856pff.13
        for <clang-built-linux@googlegroups.com>; Thu, 26 Mar 2020 10:49:48 -0700 (PDT)
X-Received: by 2002:a05:6a00:42:: with SMTP id i2mr10055970pfk.108.1585244987994;
 Thu, 26 Mar 2020 10:49:47 -0700 (PDT)
MIME-Version: 1.0
References: <20200326080104.27286-1-masahiroy@kernel.org> <20200326080104.27286-11-masahiroy@kernel.org>
In-Reply-To: <20200326080104.27286-11-masahiroy@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 26 Mar 2020 10:49:35 -0700
Message-ID: <CAKwvOdk=MCePWHD=Kj3K7fD0y8TBZfiFLB0X+gnhPUd=RnrH6A@mail.gmail.com>
Subject: Re: [PATCH v2 10/16] x86: probe assembler capabilities via kconfig
 instead of makefile
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, Thomas Gleixner <tglx@linutronix.de>, 
	Borislav Petkov <bp@alien8.de>, Peter Zijlstra <peterz@infradead.org>, "H . Peter Anvin" <hpa@zytor.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, "Jason A . Donenfeld" <Jason@zx2c4.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Ingo Molnar <mingo@redhat.com>, 
	LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=tWtR8S5N;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443
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

On Thu, Mar 26, 2020 at 1:02 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> From: "Jason A. Donenfeld" <Jason@zx2c4.com>
>
> Doing this probing inside of the Makefiles means we have a maze of
> ifdefs inside the source code and child Makefiles that need to make
> proper decisions on this too. Instead, we do it at Kconfig time, like
> many other compiler and assembler options, which allows us to set up the
> dependencies normally for full compilation units. In the process, the
> ADX test changes to use %eax instead of %r10 so that it's valid in both
> 32-bit and 64-bit mode.

Does KConfig generate -D<foo> flags for KBUILD_CFLAGS and KBUILD_AFLAGS?
Looks like lib/raid6/test/Makefile also generates some of these?

>
> Signed-off-by: Jason A. Donenfeld <Jason@zx2c4.com>
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> ---
>
> Changes in v2: None
>
>  arch/x86/Kconfig           |  2 ++
>  arch/x86/Kconfig.assembler | 17 +++++++++++++++++
>  arch/x86/Makefile          | 10 ----------
>  3 files changed, 19 insertions(+), 10 deletions(-)
>  create mode 100644 arch/x86/Kconfig.assembler
>
> diff --git a/arch/x86/Kconfig b/arch/x86/Kconfig
> index beea77046f9b..707673227837 100644
> --- a/arch/x86/Kconfig
> +++ b/arch/x86/Kconfig
> @@ -2935,3 +2935,5 @@ config HAVE_ATOMIC_IOMAP
>  source "drivers/firmware/Kconfig"
>
>  source "arch/x86/kvm/Kconfig"
> +
> +source "arch/x86/Kconfig.assembler"
> diff --git a/arch/x86/Kconfig.assembler b/arch/x86/Kconfig.assembler
> new file mode 100644
> index 000000000000..91230bf11a14
> --- /dev/null
> +++ b/arch/x86/Kconfig.assembler
> @@ -0,0 +1,17 @@
> +# SPDX-License-Identifier: GPL-2.0
> +# Copyright (C) 2020 Jason A. Donenfeld <Jason@zx2c4.com>. All Rights Reserved.
> +
> +config AS_AVX2
> +       def_bool $(as-instr,vpbroadcastb %xmm0$(comma)%ymm1)
> +
> +config AS_AVX512
> +       def_bool $(as-instr,vpmovm2b %k1$(comma)%zmm5)
> +
> +config AS_SHA1_NI
> +       def_bool $(as-instr,sha1msg1 %xmm0$(comma)%xmm1)
> +
> +config AS_SHA256_NI
> +       def_bool $(as-instr,sha256msg1 %xmm0$(comma)%xmm1)
> +
> +config AS_ADX
> +       def_bool $(as-instr,adox %eax$(comma)%eax)
> diff --git a/arch/x86/Makefile b/arch/x86/Makefile
> index f32ef7b8d5ca..b65ec63c7db7 100644
> --- a/arch/x86/Makefile
> +++ b/arch/x86/Makefile
> @@ -177,16 +177,6 @@ ifeq ($(ACCUMULATE_OUTGOING_ARGS), 1)
>         KBUILD_CFLAGS += $(call cc-option,-maccumulate-outgoing-args,)
>  endif
>
> -# does binutils support specific instructions?
> -avx2_instr :=$(call as-instr,vpbroadcastb %xmm0$(comma)%ymm1,-DCONFIG_AS_AVX2=1)
> -avx512_instr :=$(call as-instr,vpmovm2b %k1$(comma)%zmm5,-DCONFIG_AS_AVX512=1)
> -sha1_ni_instr :=$(call as-instr,sha1msg1 %xmm0$(comma)%xmm1,-DCONFIG_AS_SHA1_NI=1)
> -sha256_ni_instr :=$(call as-instr,sha256msg1 %xmm0$(comma)%xmm1,-DCONFIG_AS_SHA256_NI=1)
> -adx_instr := $(call as-instr,adox %r10$(comma)%r10,-DCONFIG_AS_ADX=1)
> -
> -KBUILD_AFLAGS += $(avx2_instr) $(avx512_instr) $(sha1_ni_instr) $(sha256_ni_instr) $(adx_instr)
> -KBUILD_CFLAGS += $(avx2_instr) $(avx512_instr) $(sha1_ni_instr) $(sha256_ni_instr) $(adx_instr)
> -
>  KBUILD_LDFLAGS := -m elf_$(UTS_MACHINE)
>
>  #
> --
> 2.17.1
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdk%3DMCePWHD%3DKj3K7fD0y8TBZfiFLB0X%2BgnhPUd%3DRnrH6A%40mail.gmail.com.
