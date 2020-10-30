Return-Path: <clang-built-linux+bncBDYJPJO25UGBBQGI6H6AKGQEQEWM7VI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc39.google.com (mail-oo1-xc39.google.com [IPv6:2607:f8b0:4864:20::c39])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E0712A0E51
	for <lists+clang-built-linux@lfdr.de>; Fri, 30 Oct 2020 20:06:41 +0100 (CET)
Received: by mail-oo1-xc39.google.com with SMTP id 4sf3208548ooc.21
        for <lists+clang-built-linux@lfdr.de>; Fri, 30 Oct 2020 12:06:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1604084800; cv=pass;
        d=google.com; s=arc-20160816;
        b=tT7oiAtP5nf2QIc0KheR9XIGByXB/Kcz5pU4yjd1buK21T+cizp/+nmrE5X/uon4Yq
         Xoy2fjygJQCyldc7QJt6mGwmdkivFkuRLhVUsOR6kCK3jmfnzpA8DsI1Lti49NufpNol
         1qnrktRf6THXI3kSQ0uCCL6zu/RqCQWNIQ/A7vFymntYqwky1avi/h0rauPJ9QQFtqiq
         jVYCimxZdCRCqcKQGzzbMWDqlKkym6d+9apAHITWSrHNya9rfKoT+cJ9EQSc7R1Ut6PZ
         3Kp1OPezCyQJJbNWDUrbhlbacJOPxUUqIM8TfKbD01IcrGIDdvu2zQQKKWcpWESII/6i
         BaYg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=PFEXfEm2aEm0+BilBecb6K2wmuxH/98Zbxd4LRpwewM=;
        b=rU/J2AmqBN6MMn3xrjCV19Vklix/R9BLILjHKF1Fmp2fx8qvPOazp8gt14U9ctCuhl
         fm1vRXC2sSQzK3gTJw4FnYiIK3p0GBiU5RX8DVxmRaJ/58Wqgy0lxNmT5b2odRnRFn1f
         HmZ7owrIw2WiTnIkDVFPp03AiHqNTc8XzxbITBYVa9DMUTvp3OMEJfBXICHyDCs/+pBp
         XrgxhZ/puJE574EJtOQ13qorw7d0Z3X2M80fhur9iMeEC/e8mACKfEIqvqy6RQfuRVE8
         fzsb7MudjamLl1VYT/GWtbWrPisZwyHvFhOYaKkejA6Lvm03r0si7khuqjt2KQeW1iBN
         VIDw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ECUDCKSG;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PFEXfEm2aEm0+BilBecb6K2wmuxH/98Zbxd4LRpwewM=;
        b=Yjslanj02bPDtzDo7YJlX83mcijDI9mzDqde+uXTzPkAmIfAN+1U2zbZBe4rBZKGiL
         pkw7DO1GCKvL1uEDK/nXLCmxRiyziETgG1CL6ZZTOQhZmsAkkCdGpq6xjiu/xJdDQ3lF
         bn3U3JHcz8Rqy5J/FOz2wvwfEGSFZsDB0ApRXpaDKbW1RDc8HZYFXLIYqKN79kK6OZ7B
         BqgmT3ULFRgYy1OYY2K1+BBhs6ktgw+J9gEzW9H5jCY77NI8y7gFhRkt4CL0eFgFemAl
         29h9X3d4zLD8/ytvhadW4qn2d8oJT+7S7Joj3ojY1iTXNCIPDKBmruK4UiWTwy66vvBj
         qgNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PFEXfEm2aEm0+BilBecb6K2wmuxH/98Zbxd4LRpwewM=;
        b=IJSd/ZdISdoQZZr5hmh6mxqDGLPkyVnrAdwTpLNZBGDiOGDjOUQCBYXq12vbf8gYLG
         rd3n5yasnZAm5eYq5ooBuD+zDr68N8Zf7YTOjgklDrcZrjOc7Es833JDe4j/E+c+X07U
         S7JeHfGbwrJ/QX9Ioapwg11hRH2I9HYOokak4EBy/sLBZ+CXNxgTl/r4W2zpXzH+Rdb5
         lj43jcD52t2B4Zx+zXpRZs5aBOJD/Gkk0Dpi7UgubbvfzdJ/vjfmxwZ4MFpffjOlTj9s
         Pcx7U4diLJ7BVXmeT1QG37gYwI1qbkZwXaTo5G0k/FO/vStGQUMlaCGze419PSso8q9r
         Hpow==
X-Gm-Message-State: AOAM531kEnGOghldM5L9TpP0r7njH5pl5cTdJK4xeclZPK3aHFZvFR8h
	JxG5q5c+fnAbBUTOxZuXZx0=
X-Google-Smtp-Source: ABdhPJz6bOWWX2Bz2FIly6Oqmi8pCCM/Cy4JUi39xUYMalQvWhcs5zDfC/NZGObAuFDvguAs+lt3Sg==
X-Received: by 2002:a05:6830:1e70:: with SMTP id m16mr2733420otr.51.1604084800394;
        Fri, 30 Oct 2020 12:06:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:13d8:: with SMTP id e24ls1866279otq.11.gmail; Fri,
 30 Oct 2020 12:06:40 -0700 (PDT)
X-Received: by 2002:a9d:a10:: with SMTP id 16mr2804811otg.86.1604084800046;
        Fri, 30 Oct 2020 12:06:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1604084800; cv=none;
        d=google.com; s=arc-20160816;
        b=QOr5x12SYeUbyal5R/MfnCIhh7spGMMiEIGYablyaTdawMzlAKNLFxCh8eEm//0GKY
         onpifk9u2+rJgG6b2ycxaxWacH4+nNI8ZCfRGySegItwtNA+QyTAlUIXhWgntmH34GdL
         Y2ArU2axtojJlJCj2m0gz22BxBPURv8V/IARngdcUjHbehyf3W7WLQBA/O7EJbJqYQh2
         4WwjnSKB5nGjPPnXBIXqt8yATNhw3tut/xU0G5XfT/S1g6t/pSsMyiFrzKfCZ4hi8HqR
         MDyiI3up5r/nsVUuE6IYN46DnL//yS3/qbUb5RHC7WkpFgrEQ2Z6uNRaE0kipzzcTrzm
         hZag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=RQEa2t9G01U7xDWaaWZe1C3Uxzgnunrmlx0ygY2fWcs=;
        b=iia8NRRREhCuPvA5lmjgEHHkjhpNhAgJs1vccX8SheEaM3mmSBL+JW2/TrNkw6nKJ5
         wR9/dZBY4h2Y03ZMpw1DhvTPEv4rfGUkI/i4RV4hC5f5fk3IGkvM7cy9ImQpVVlo1Nkb
         5lnFe2A7aBed+nE72aEkMyBcxnAfM4iCZKkL/MUPrLfQ9tAA2dRVQKJMBa26HuKkf6C5
         3p6tZG040s+/9Sn5itfImGS6ZeWsROC85F16lGmFl7/Bhg4HUFXlw3Tya3dxrjxtKQNS
         5tjrpovTlmTS4HyT/rrdvRebEqmYIroBB+ivL2jYdHP9r2Xi4d7M6RbJtSS1XBZVtJ1y
         ZcIA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ECUDCKSG;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id a7si464457oie.4.2020.10.30.12.06.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Oct 2020 12:06:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id z24so6022557pgk.3
        for <clang-built-linux@googlegroups.com>; Fri, 30 Oct 2020 12:06:40 -0700 (PDT)
X-Received: by 2002:aa7:9a04:0:b029:163:fe2a:9e04 with SMTP id
 w4-20020aa79a040000b0290163fe2a9e04mr11070049pfj.30.1604084799111; Fri, 30
 Oct 2020 12:06:39 -0700 (PDT)
MIME-Version: 1.0
References: <CA+SOCLLXnxcf=bTazCT1amY7B4_37HTEXL2OwHowVGCb8SLSQQ@mail.gmail.com>
 <20201030190245.92967-1-jiancai@google.com>
In-Reply-To: <20201030190245.92967-1-jiancai@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 30 Oct 2020 12:06:28 -0700
Message-ID: <CAKwvOdmduyqjn7d6mG6CrSqCJC3ikJRphjWfKnqxvC2P=yoU2g@mail.gmail.com>
Subject: Re: [PATCH] crypto: x86/crc32c - fix building with clang ias
To: "# 3.4.x" <stable@vger.kernel.org>
Cc: Greg KH <gregkh@linuxfoundation.org>, Sasha Levin <sashal@kernel.org>, 
	Nathan Chancellor <natechancellor@gmail.com>, Manoj Gupta <manojgupta@google.com>, 
	Luis Lozano <llozano@google.com>, Arnd Bergmann <arnd@arndb.de>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Herbert Xu <herbert@gondor.apana.org.au>, Jian Cai <jiancai@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=ECUDCKSG;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544
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

+ stable

On Fri, Oct 30, 2020 at 12:04 PM Jian Cai <caij2003@gmail.com> wrote:
>
> From: Arnd Bergmann <arnd@arndb.de>
>
> commit 44623b2818f4 ("crypto: x86/crc32c - fix building with clang ias")
> upstream
>
> The clang integrated assembler complains about movzxw:
>
> arch/x86/crypto/crc32c-pcl-intel-asm_64.S:173:2: error: invalid instruction mnemonic 'movzxw'
>
> It seems that movzwq is the mnemonic that it expects instead,
> and this is what objdump prints when disassembling the file.
>
> Fixes: 6a8ce1ef3940 ("crypto: crc32c - Optimize CRC32C calculation with PCLMULQDQ instruction")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
> Signed-off-by: Herbert Xu <herbert@gondor.apana.org.au>
> [jc: Fixed conflicts due to lack of 34fdce6981b969]
> Signed-off-by: Jian Cai <jiancai@google.com>
> ---
>
> Thanks Nathan! This patch addresses Nathan's comments regarding format
> and note.
>
>
>  arch/x86/crypto/crc32c-pcl-intel-asm_64.S | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/x86/crypto/crc32c-pcl-intel-asm_64.S b/arch/x86/crypto/crc32c-pcl-intel-asm_64.S
> index d9b734d0c8cc..3c6e01520a97 100644
> --- a/arch/x86/crypto/crc32c-pcl-intel-asm_64.S
> +++ b/arch/x86/crypto/crc32c-pcl-intel-asm_64.S
> @@ -170,7 +170,7 @@ continue_block:
>
>         ## branch into array
>         lea     jump_table(%rip), bufp
> -       movzxw  (bufp, %rax, 2), len
> +       movzwq  (bufp, %rax, 2), len
>         lea     crc_array(%rip), bufp
>         lea     (bufp, len, 1), bufp
>         JMP_NOSPEC bufp
> --
> 2.29.1.341.ge80a0c044ae-goog
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmduyqjn7d6mG6CrSqCJC3ikJRphjWfKnqxvC2P%3DyoU2g%40mail.gmail.com.
