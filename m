Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBDWH5PVAKGQEYDO3W3Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43e.google.com (mail-wr1-x43e.google.com [IPv6:2a00:1450:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F6A394C36
	for <lists+clang-built-linux@lfdr.de>; Mon, 19 Aug 2019 19:59:43 +0200 (CEST)
Received: by mail-wr1-x43e.google.com with SMTP id s18sf5605803wrt.21
        for <lists+clang-built-linux@lfdr.de>; Mon, 19 Aug 2019 10:59:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566237583; cv=pass;
        d=google.com; s=arc-20160816;
        b=XiVKNgO+ZyxIuvfZ3jhSTHRPfSfUAQcns9iJqr3FFC86yXrc2Y1XsauO5sQNJQz/4N
         /GpQAqGkcF2a5fmOnNzrCUn6Tm9ezpAGpBy0tadlDGEiL4agtt958ubIYJ+oBhRYlZFm
         dtTUwlL4JekH5g+G65CYZjD9qCJw4whsz+5QeOy7ldhrceoFfINKer7p9oiPDZLfwPpo
         Z1fKM5NosAgQHLZjK/WYdjriTyaE8FLwC7TGzETVvVjSwzUyzEj/VmYelwGWni+zXgmg
         DrZC8Xwjj/1olL1wVbIXmT6nTanqWzyYZLhIZNAoVQK3XRdIBnPMTVQjlE0fWVC/VohU
         KrRw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=ABESv3gfKLfLSrz98WqBWiWtvfTuDs7wnnsIh5WHL5s=;
        b=Qp0BH7J4bqEaJm7aJjG1SrxWjGtMlNQkJIyqKuQcIrFIs/5Zza4zuv0VneMb4tMb/h
         RTOR/Bt38afUlInK0linOW9eKeWluiqHhV9B1a+1m/z6GpCB+zftUKvZCgJE7ea9OZTc
         qE3YTP+K+HbujGwGvfFNUjOyfxmWRu2yxR8FQ+Msi0VinAWaTK/qZwpLdk8y2VvDJnHi
         PESyCHTPGWs5SZSyE0uOL1JSvzV8fRHs3XFzOV4G6AX7Fz3RipXGaaxmKQ4za+GKcVdT
         dya0t3NMicZLqA805RKUN4EaN4yN2VjxIRBKBIo1IUV2BuQVTHFma1SaBnOYfqWrpcaG
         RFgg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pbaWq+OV;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ABESv3gfKLfLSrz98WqBWiWtvfTuDs7wnnsIh5WHL5s=;
        b=Z8Tn3rxwi5fBijNyjrujHBIPfCH+UZU0Tv7Pp7JaNfP8wrVv1svGC8cvv7Rsnvno+6
         oszJQUFXtYabMbPri86tg+ib2D8tttYVmtRQ3VuR8gKJ1x9frH6hhUiJ2DDtISjyiQkT
         4tmFLcj5vRfF7eUZT5/Lbb+3ANHwxXkILMFrSf8ytZSMeLeCkEzS+he1LgX+qpMVKJer
         ZTSPI0GvEiHZnZnmZSHBqhgE0q0w04EI57t7Q7fzka4dbJRwp390dItlDQNEk/Co0I5w
         /wOkGudtFNV/PecLowpNKYxjRojCFLGQnCj8v4iGooJS2KRQsWFFPAWUMeSWUTtQnoi9
         Cykw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ABESv3gfKLfLSrz98WqBWiWtvfTuDs7wnnsIh5WHL5s=;
        b=LK9ipmfNMk8qZuAJrSj2R1G6+VW4JvguSfUdi2M4h8La53kB5A/Bq5vaQm9F34obBG
         VGlReXZxET+xc2e2oQ4p1LfGWobxXEnumJqvLuBTdHPiALV6IzGR9+JaEv5k5kHLBORR
         9URA86YtoFMqsDzdGlukQaGpSqnD6IWmvC5QDbJo7pPazwtxWZSQqaSI6j4MFphIeIqm
         t31IGW4Ke3QzgnA46hBj3jb+Ie3DVqHoS+BvmJdxwkJ4sJQ7v+NCCaB+QO/y420eWV6S
         BCE7E5NPVOghJiA6HknPqhnAKBXwp6vqB9bbseExsjESYJy39Ml8WQyoER0/WuuSZ1w/
         9IWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ABESv3gfKLfLSrz98WqBWiWtvfTuDs7wnnsIh5WHL5s=;
        b=Rqy2dNdoTQT9Yd+hokssgxfUg8ZJX0ynXn14+8dr60cviXxmwiREH+kyOUKvyaOwGO
         HYkvI+yoRhYhqov7rKxdsSfohSNIsxtpMnjKdLJ68zgchVOvb+yFa0HUR3QD3GZYpbpB
         72a98B+3lh99V22W6QQYnJtcGRSC4QvFwXETvbuqK2SKyRCZmiADHcSKVJ3To9HYNDYw
         g26n8dRqRinMJQY23+t9E3DriSa39RCLZSWfXseHgryiY1qq86rJRoQGDOIrptHZ/WOe
         QFP7Dnbjtp5zaJEdXFQ+U2TsMaPAAY5cVVUI+ovQEISc/dWytw7Y0Uq7YyzQyYwdiR4g
         KIBA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWJ5CB4LQD/as8uHvtWGzDkHSVV9dimWfo/xKrhSxe0q2Muh9tq
	Zh2WSBFAG5h6QYQ418yXbPo=
X-Google-Smtp-Source: APXvYqxtkfvfZGusytRfAqUtm0YdiCqQAM65ryVqUYsz2NYS/mpC1NqKplqaihg+/0eIQm3ewIltcg==
X-Received: by 2002:a5d:54c4:: with SMTP id x4mr29281113wrv.155.1566237582859;
        Mon, 19 Aug 2019 10:59:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:ab1b:: with SMTP id q27ls4770032wrc.7.gmail; Mon, 19 Aug
 2019 10:59:42 -0700 (PDT)
X-Received: by 2002:adf:d1b4:: with SMTP id w20mr29344200wrc.301.1566237582318;
        Mon, 19 Aug 2019 10:59:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566237582; cv=none;
        d=google.com; s=arc-20160816;
        b=MayLMueGgaIneOeDgpW6MnM/pm/AWXpDnW7/dn443ewRXlyIfwrKsdcpApCKq1+iRo
         mjdn9bx0QFA+foiFLMDFoA2K+sCWGjFFvcv1kZtxaNpBxqy/UaDQRVKcC548gAnY1Yo0
         WNvPFShi9IAlhzjg2k6igGdl4GCJLo2HtJBCGHkEabTeRTnDtRoIKQ1qwIJ/9J0ds8yU
         kca1pRxvvjUU1uACHw4RgbHlnAM/FgfHElfjrRQZmbdtK0ShayR0zFhC63KD0UKlbjf6
         VgBKrb/OQQSYYsYvgUNPcotQz5dtrJqg2qPB+/THU5TrlpISHLPTKgmgP4uvk6jBu1uW
         qpNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=CuXX/eaXDYLAgDccWkYi0yxUiNmU914Hix0kLzwUtik=;
        b=SW9EMtpQtBjK2lCq+Jn899Wmj2DWVABiuSNmTLE8U6DHnCspHjVhSQtZhaCrKGcjjG
         YL7m1wQYWNzCng6AKN/wOH+CsUQdEDc+nEWFbbVwsI5czXHtICaNI9ZW5wQNXqgW8gKv
         cnhfiNWgxKpkgZ4hMGJrT2FgUa94miDo+PRqC58s6xEejLVq5hK9rvwrPq/gSaaZGHhs
         YPqSELnKhvNql4d9m0x9ip804jpwhNa2/GdBgCJ5yt+mLyBP6FT9bog7DU/0gSQKM4OY
         mWv8oQ/lRSGRsRFGHfqH1v+hyzIhuZdtjv31r8+Su2f9WVcgF/FHMsA7VmHiCfxbQ600
         iHFQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pbaWq+OV;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com. [2a00:1450:4864:20::443])
        by gmr-mx.google.com with ESMTPS id p4si516703wme.2.2019.08.19.10.59.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Aug 2019 10:59:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) client-ip=2a00:1450:4864:20::443;
Received: by mail-wr1-x443.google.com with SMTP id k2so9647972wrq.2
        for <clang-built-linux@googlegroups.com>; Mon, 19 Aug 2019 10:59:42 -0700 (PDT)
X-Received: by 2002:a5d:69c8:: with SMTP id s8mr27547794wrw.353.1566237581965;
 Mon, 19 Aug 2019 10:59:41 -0700 (PDT)
MIME-Version: 1.0
References: <20190812215052.71840-1-ndesaulniers@google.com> <20190812215052.71840-11-ndesaulniers@google.com>
In-Reply-To: <20190812215052.71840-11-ndesaulniers@google.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Mon, 19 Aug 2019 19:59:29 +0200
Message-ID: <CA+icZUX=BPPH7rH13OkDzmc1L42hxcWDw+c_G7sf7G8wcHiPAQ@mail.gmail.com>
Subject: Re: [PATCH 11/16] x86: prefer __section from compiler_attributes.h
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: akpm@linux-foundation.org, jpoimboe@redhat.com, yhs@fb.com, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, Thomas Gleixner <tglx@linutronix.de>, 
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, "H. Peter Anvin" <hpa@zytor.com>, x86@kernel.org, 
	Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, Martin KaFai Lau <kafai@fb.com>, 
	Song Liu <songliubraving@fb.com>, Armijn Hemel <armijn@tjaldur.nl>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Allison Randal <allison@lohutok.net>, 
	Juergen Gross <jgross@suse.com>, Frederic Weisbecker <frederic@kernel.org>, 
	Brijesh Singh <brijesh.singh@amd.com>, Enrico Weigelt <info@metux.net>, 
	Kate Stewart <kstewart@linuxfoundation.org>, Hannes Reinecke <hare@suse.com>, 
	Sean Christopherson <sean.j.christopherson@intel.com>, 
	"Rafael J. Wysocki" <rafael.j.wysocki@intel.com>, Pu Wen <puwen@hygon.cn>, 
	linux-kernel@vger.kernel.org, netdev@vger.kernel.org, bpf@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=pbaWq+OV;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::443
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Mon, Aug 12, 2019 at 11:52 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> Reported-by: Sedat Dilek <sedat.dilek@gmail.com>
> Suggested-by: Josh Poimboeuf <jpoimboe@redhat.com>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>

Tested-by: Sedat Dilek <sedat.dilek@gmail.com> [ Linux v5.3-rc5 ]

Patchset "for-5.3/x86-section-name-escaping":

include/linux/compiler.h: remove unused KENTRY macro
include/linux: prefer __section from compiler_attributes.h
include/asm-generic: prefer __section from compiler_attributes.h
x86: prefer __section from compiler_attributes.h

Thanks.

- Sedat -

> ---
>  arch/x86/include/asm/cache.h       | 2 +-
>  arch/x86/include/asm/intel-mid.h   | 2 +-
>  arch/x86/include/asm/iommu_table.h | 5 ++---
>  arch/x86/include/asm/irqflags.h    | 2 +-
>  arch/x86/include/asm/mem_encrypt.h | 2 +-
>  arch/x86/kernel/cpu/cpu.h          | 3 +--
>  6 files changed, 7 insertions(+), 9 deletions(-)
>
> diff --git a/arch/x86/include/asm/cache.h b/arch/x86/include/asm/cache.h
> index abe08690a887..bb9f4bf4ec02 100644
> --- a/arch/x86/include/asm/cache.h
> +++ b/arch/x86/include/asm/cache.h
> @@ -8,7 +8,7 @@
>  #define L1_CACHE_SHIFT (CONFIG_X86_L1_CACHE_SHIFT)
>  #define L1_CACHE_BYTES (1 << L1_CACHE_SHIFT)
>
> -#define __read_mostly __attribute__((__section__(".data..read_mostly")))
> +#define __read_mostly __section(.data..read_mostly)
>
>  #define INTERNODE_CACHE_SHIFT CONFIG_X86_INTERNODE_CACHE_SHIFT
>  #define INTERNODE_CACHE_BYTES (1 << INTERNODE_CACHE_SHIFT)
> diff --git a/arch/x86/include/asm/intel-mid.h b/arch/x86/include/asm/intel-mid.h
> index 8e5af119dc2d..f51f04aefe1b 100644
> --- a/arch/x86/include/asm/intel-mid.h
> +++ b/arch/x86/include/asm/intel-mid.h
> @@ -43,7 +43,7 @@ struct devs_id {
>
>  #define sfi_device(i)                                                          \
>         static const struct devs_id *const __intel_mid_sfi_##i##_dev __used     \
> -       __attribute__((__section__(".x86_intel_mid_dev.init"))) = &i
> +       __section(.x86_intel_mid_dev.init) = &i
>
>  /**
>  * struct mid_sd_board_info - template for SD device creation
> diff --git a/arch/x86/include/asm/iommu_table.h b/arch/x86/include/asm/iommu_table.h
> index 1fb3fd1a83c2..7d190710eb92 100644
> --- a/arch/x86/include/asm/iommu_table.h
> +++ b/arch/x86/include/asm/iommu_table.h
> @@ -50,9 +50,8 @@ struct iommu_table_entry {
>
>  #define __IOMMU_INIT(_detect, _depend, _early_init, _late_init, _finish)\
>         static const struct iommu_table_entry                           \
> -               __iommu_entry_##_detect __used                          \
> -       __attribute__ ((unused, __section__(".iommu_table"),            \
> -                       aligned((sizeof(void *)))))     \
> +               __iommu_entry_##_detect __used __section(.iommu_table)  \
> +               __aligned((sizeof(void *)))                             \
>         = {_detect, _depend, _early_init, _late_init,                   \
>            _finish ? IOMMU_FINISH_IF_DETECTED : 0}
>  /*
> diff --git a/arch/x86/include/asm/irqflags.h b/arch/x86/include/asm/irqflags.h
> index 8a0e56e1dcc9..68db90bca813 100644
> --- a/arch/x86/include/asm/irqflags.h
> +++ b/arch/x86/include/asm/irqflags.h
> @@ -9,7 +9,7 @@
>  #include <asm/nospec-branch.h>
>
>  /* Provide __cpuidle; we can't safely include <linux/cpu.h> */
> -#define __cpuidle __attribute__((__section__(".cpuidle.text")))
> +#define __cpuidle __section(.cpuidle.text)
>
>  /*
>   * Interrupt control:
> diff --git a/arch/x86/include/asm/mem_encrypt.h b/arch/x86/include/asm/mem_encrypt.h
> index 0c196c47d621..db2cd3709148 100644
> --- a/arch/x86/include/asm/mem_encrypt.h
> +++ b/arch/x86/include/asm/mem_encrypt.h
> @@ -50,7 +50,7 @@ void __init mem_encrypt_free_decrypted_mem(void);
>  bool sme_active(void);
>  bool sev_active(void);
>
> -#define __bss_decrypted __attribute__((__section__(".bss..decrypted")))
> +#define __bss_decrypted __section(.bss..decrypted)
>
>  #else  /* !CONFIG_AMD_MEM_ENCRYPT */
>
> diff --git a/arch/x86/kernel/cpu/cpu.h b/arch/x86/kernel/cpu/cpu.h
> index c0e2407abdd6..7ff9dc41a603 100644
> --- a/arch/x86/kernel/cpu/cpu.h
> +++ b/arch/x86/kernel/cpu/cpu.h
> @@ -38,8 +38,7 @@ struct _tlb_table {
>
>  #define cpu_dev_register(cpu_devX) \
>         static const struct cpu_dev *const __cpu_dev_##cpu_devX __used \
> -       __attribute__((__section__(".x86_cpu_dev.init"))) = \
> -       &cpu_devX;
> +       __section(.x86_cpu_dev.init) = &cpu_devX;
>
>  extern const struct cpu_dev *const __x86_cpu_dev_start[],
>                             *const __x86_cpu_dev_end[];
> --
> 2.23.0.rc1.153.gdeed80330f-goog
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUX%3DBPPH7rH13OkDzmc1L42hxcWDw%2Bc_G7sf7G8wcHiPAQ%40mail.gmail.com.
