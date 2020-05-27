Return-Path: <clang-built-linux+bncBDYJPJO25UGBB6GWXL3AKGQEV7AK3PA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33b.google.com (mail-ot1-x33b.google.com [IPv6:2607:f8b0:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id EB3A61E4CA4
	for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 20:03:37 +0200 (CEST)
Received: by mail-ot1-x33b.google.com with SMTP id s4sf156603oth.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 11:03:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590602617; cv=pass;
        d=google.com; s=arc-20160816;
        b=cI5EMI1HzUSD/6g8iNf8TxxxdPOwTBQSUzKWPoXmTFfOxcsfHS2yeKom7+LLPtcVoQ
         9FnkVtSoivGyNa+WpT4ywSdpDypk4F8dQ3F7oaHlh9Qi5tD3mQphV03hi7N6z8+u6Fk0
         nMoRFSpwtjTahfcRVlfFMnSCqPMlGev1dhOp4+LT48Ey7nJmbdBuUtjdWJmLKUPAitMc
         x2p37nunWcgxCR2ek1vyd5JgL4hwelg6B3J9i4tSG/m0g5Z0FBFFxBRb21URazM8Z2H3
         kuFEIR2DXrPmgfa8GMXlbfsTq9026AG/W7S/M8/USWoN9LldgG/zdK8hnYpdLladj+R8
         /oVg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=Y7qbkuRrSdCfKehK9W5uMCT4E/l4SRNWu+PfsiFYeq8=;
        b=GAjEV9rotBY01UHWQcIJAw1kwC97lt1l6vUJP6YIs75QAaSFhqmd7IyQKaD7Uo+YxE
         gVTQBlZAtbMTp67UfAYIhQi9yVb5HhI5QAE11fC7vmlz6SgwXO/93iTTX6IZxL5qS9r/
         Z+yODxjHh8HUbT5RixNpwyxI9hr/1GALMixUWKnCb1uJTsxtBfmU6voqjtSV1nqe9/UM
         OPaANTUSgNCtR4GgYg8e8eogQYJfBtfyNGGvBih2bQwAkegMTFj8YZcM6PzQnXQts87T
         8j/PebEEG2JxY6X9uT+p1T1Qd6GFlq0aPZJ5C94a1IRj8QHHxuV5P7UED5ANalyaSjlX
         vzwg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Juuy34H7;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Y7qbkuRrSdCfKehK9W5uMCT4E/l4SRNWu+PfsiFYeq8=;
        b=Hk4A5vEacri1qmMCSlE7XB8U1EXIVNNVvfz1kNZYsNEjrobGrP6NIx8U66bCB9OaLB
         0m9l0PQ7vDV9Jv/Jtvr0m3GJScga0xOQim3FrmwNp9PhVN4xS2hU2j6ptS6tztjmetsm
         gS9eKQYdcKwK7dZe9APMaP+Q6t1GgD2TgIXd5MbIDlduofJDtaJ6HysYXeID+Bvt896o
         ah3+g/GcipqZrcFPVD94Mk8DZNV/Rvh7LaThm5E616O9YcoUrTT8lobF5yizj7OxKo5f
         uBUpke9ZI5sspXO50TE60eyaMRPnLYtAqris0/9+4cDm/RLoaeIbShPwGPOdYYKeupMe
         Juww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Y7qbkuRrSdCfKehK9W5uMCT4E/l4SRNWu+PfsiFYeq8=;
        b=FvVRsK9ueQGMm08egnBzFDdPqM5JULS0tYmDa4jBiUL+cshj9TF+5RXwR/bJxeV5Lv
         yiOhr+WlyWuoNTiMU/OID2AQqFIl4jOjzZKKG2KbWVFHjy+hTHO9B2BNardvVrwJq57g
         ow0iyV9OgSyDzoj0feMZMCZINdtAxIjEw7x4ms6yzRYBWxBBV4I5bcf/jsSKz8YQl+hB
         geCx/5ybSfS/Zyx3KN6mgI3A7qdNooM2ajJqFiEPxhDtsEoCtzoLTA8Xya52wxEQJ2Oj
         3yhOFg1MIENHm5lE6498vbhfY4SFzDCt0Z5zYpAYCih/ZVGOE/4hgbdxgUSGkcTMPOii
         6J3w==
X-Gm-Message-State: AOAM530o45zHisyIdfYTWm+BkzEkVoo7Q5XloIxhsf4Od5C7fM5pGM6Z
	cvUz2Bhh9QQip+jRMCe27dw=
X-Google-Smtp-Source: ABdhPJzATA7oVQ+3RqKy+rCzqqrBzCivgB6RrWk31YN5xH/obpxEnv5/f+L/TwJnQb7a0oBWajlqXQ==
X-Received: by 2002:aca:4d04:: with SMTP id a4mr3594183oib.27.1590602616849;
        Wed, 27 May 2020 11:03:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:19af:: with SMTP id k44ls3262874otk.4.gmail; Wed, 27 May
 2020 11:03:36 -0700 (PDT)
X-Received: by 2002:a9d:7cd0:: with SMTP id r16mr5738062otn.94.1590602616480;
        Wed, 27 May 2020 11:03:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590602616; cv=none;
        d=google.com; s=arc-20160816;
        b=QYL5Ar5XiopcD4PShpCIUR2kASQ2UMKLldhRtY4jPvLoph0MGdmmGchtebifcZqL+w
         mhmbMLcq+6bFbjtQqlvskYcaalVcP5oAB74zfo/XAV3NrzVkAYM7PyFZ9DX90aT03v4p
         AlLfW1lzvtSaEFsRI2LfpuYZt83FA+B6GOBhxiNpxeC+XNXpIsGQ4xvd12Y+A3HhIus0
         eqovXQWBwV6sv8GmhX5qlOkI+Ye12Sc2HkoZFdmtoqO3Wy1RNjVWWOOma1VHVykKH2th
         3eMkLEAxpktjOICEQT1Y77ECimTVu6g7llKpU/qk0Vvj49FVaaWEKdHXDVQzgW/PUOXf
         +UfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=1i+2CYKnygDzk/GvSPMFnlsBZ+PDQAs0JHC2OCU8Rpg=;
        b=QXefs+uc9kM+CPLIAGoTXy9dY8z4EvP7BPGzHfjF5rZMhR6kJ7DOW8yfpT5WS7iQhE
         6FFTXSJPIp4WeJfT8S61wMU0hgWcazejl4mUnCnbH3+n3wFkJ1Ig+pk4JYS2Ix3T3SUe
         3krZu0SUJ+gfRa/XqTuuKwPdTFiDLr7zGEAuVzCfhmKCZnwjNsSe1OSuzHw396EmZjK7
         PzFpRakwO8pSxH/KV852uQrSZSWU82s9SuAbKLB2FrtySYfDMw0HZYLL0ztOP0atA3XE
         btJ09oW/fXqxeEr4Z24WtHjPacwncLEzocJr8ZZ+PSNAroBtqdggG3rdNf5CeZh9RZtN
         wCoQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Juuy34H7;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id l21si316906otp.0.2020.05.27.11.03.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 May 2020 11:03:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id e11so11207238pfn.3
        for <clang-built-linux@googlegroups.com>; Wed, 27 May 2020 11:03:36 -0700 (PDT)
X-Received: by 2002:aa7:8c44:: with SMTP id e4mr5128942pfd.108.1590602615524;
 Wed, 27 May 2020 11:03:35 -0700 (PDT)
MIME-Version: 1.0
References: <20200527141435.1716510-1-arnd@arndb.de>
In-Reply-To: <20200527141435.1716510-1-arnd@arndb.de>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 27 May 2020 11:03:24 -0700
Message-ID: <CAKwvOdnNxj-MdKj3aWoefF2W9PPG-TSeNU4Ym-N8NODJB5Yw_w@mail.gmail.com>
Subject: Re: [PATCH] arm64: fix clang integrated assembler build
To: Arnd Bergmann <arnd@arndb.de>
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	"# 3.4.x" <stable@vger.kernel.org>, Alexios Zavras <alexios.zavras@intel.com>, 
	Enrico Weigelt <info@metux.net>, Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Bill Wendling <morbo@google.com>, 
	Jian Cai <jiancai@google.com>, Fangrui Song <maskray@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Juuy34H7;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441
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

On Wed, May 27, 2020 at 7:14 AM Arnd Bergmann <arnd@arndb.de> wrote:
>
> clang and gas seem to interpret the symbols in memmove.S and
> memset.S differently, such that clang does not make them
> 'weak' as expected, which leads to a linker error, with both
> ld.bfd and ld.lld:
>
> ld.lld: error: duplicate symbol: memmove
> >>> defined at common.c
> >>>            kasan/common.o:(memmove) in archive mm/built-in.a
> >>> defined at memmove.o:(__memmove) in archive arch/arm64/lib/lib.a
>
> ld.lld: error: duplicate symbol: memset
> >>> defined at common.c
> >>>            kasan/common.o:(memset) in archive mm/built-in.a
> >>> defined at memset.o:(__memset) in archive arch/arm64/lib/lib.a
>
> Copy the exact way these are written in memcpy_64.S, which does
> not have the same problem.
>
> I don't know why this makes a difference, and it would be good
> to have someone with a better understanding of assembler internals
> review it.
>
> It might be either a bug in the kernel or a bug in the assembler,
> no idea which one. My patch makes it work with all versions of
> clang and gcc, which is probably helpful even if it's a workaround
> for a clang bug.

+ Bill, Fangrui, Jian
I think we saw this bug or a very similar bug internally around the
ordering of .weak to .global.

>
> Cc: stable@vger.kernel.org
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
> ---
>  arch/arm64/lib/memcpy.S  | 3 +--
>  arch/arm64/lib/memmove.S | 3 +--
>  arch/arm64/lib/memset.S  | 3 +--
>  3 files changed, 3 insertions(+), 6 deletions(-)
>
> diff --git a/arch/arm64/lib/memcpy.S b/arch/arm64/lib/memcpy.S
> index e0bf83d556f2..dc8d2a216a6e 100644
> --- a/arch/arm64/lib/memcpy.S
> +++ b/arch/arm64/lib/memcpy.S
> @@ -56,9 +56,8 @@
>         stp \reg1, \reg2, [\ptr], \val
>         .endm
>
> -       .weak memcpy
>  SYM_FUNC_START_ALIAS(__memcpy)
> -SYM_FUNC_START_PI(memcpy)
> +SYM_FUNC_START_WEAK_PI(memcpy)
>  #include "copy_template.S"
>         ret
>  SYM_FUNC_END_PI(memcpy)
> diff --git a/arch/arm64/lib/memmove.S b/arch/arm64/lib/memmove.S
> index 02cda2e33bde..1035dce4bdaf 100644
> --- a/arch/arm64/lib/memmove.S
> +++ b/arch/arm64/lib/memmove.S
> @@ -45,9 +45,8 @@ C_h   .req    x12
>  D_l    .req    x13
>  D_h    .req    x14
>
> -       .weak memmove
>  SYM_FUNC_START_ALIAS(__memmove)
> -SYM_FUNC_START_PI(memmove)
> +SYM_FUNC_START_WEAK_PI(memmove)
>         cmp     dstin, src
>         b.lo    __memcpy
>         add     tmp1, src, count
> diff --git a/arch/arm64/lib/memset.S b/arch/arm64/lib/memset.S
> index 77c3c7ba0084..a9c1c9a01ea9 100644
> --- a/arch/arm64/lib/memset.S
> +++ b/arch/arm64/lib/memset.S
> @@ -42,9 +42,8 @@ dst           .req    x8
>  tmp3w          .req    w9
>  tmp3           .req    x9
>
> -       .weak memset
>  SYM_FUNC_START_ALIAS(__memset)
> -SYM_FUNC_START_PI(memset)
> +SYM_FUNC_START_WEAK_PI(memset)
>         mov     dst, dstin      /* Preserve return value.  */
>         and     A_lw, val, #255
>         orr     A_lw, A_lw, A_lw, lsl #8
> --
> 2.26.2

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnNxj-MdKj3aWoefF2W9PPG-TSeNU4Ym-N8NODJB5Yw_w%40mail.gmail.com.
