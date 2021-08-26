Return-Path: <clang-built-linux+bncBDEPT3NHSUCBBN4OT6EQMGQENUHJRLA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53b.google.com (mail-pg1-x53b.google.com [IPv6:2607:f8b0:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CA143F8C83
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Aug 2021 18:54:21 +0200 (CEST)
Received: by mail-pg1-x53b.google.com with SMTP id k28-20020a63ff1c0000b029023b84262596sf448768pgi.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 26 Aug 2021 09:54:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629996855; cv=pass;
        d=google.com; s=arc-20160816;
        b=NnM8Sw4XdY4AeX/SMYt2N/6tTP8kkW/AysLPrjQMzREBPUkXzRAO/q6Ks42ZFuUdg2
         Ul/4kB6BdryapzAQ19t1We4H7iIckIp11iaFC7Gw9Pr1jEBAZEIlna8XDhoCuLYaupbY
         NlAvTD31//ZSJhTOpL3IHRqouvcJK72yAgo+sEeg5a4l/bIFLBmHVu6UcK8/YBO9FOHu
         qm0g5tVhdZFd0u0Due8Fx5DdLHkDdAWn6/qZ9n1U1wn23oAPp7FbwY+L1PWLnnxwmCYZ
         MygOGtG0IibOK+Ka++ICrtMSXAVIxlI5jiE1hdu0+zF85JGOUTYwcPBq2yOGyyIZ3wI8
         xtPg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=9CD5qIJLDUOIfc1w0xaWpvBYCPXvoJg87jVqutI9WaQ=;
        b=WIDf9MGmGJnfyidi7wamEuEDfAENLLlmrqxvb0nuHNxP5eHV01I0E5VP5YLeA3EGCx
         zLxxFy/2YWTpv4p4PEwyWwpKKG/JPvl1rlQExMhk6BwBSfQwzujWixxzGtfE9+VVR6qe
         3KoPCHMKzLETvMIjECV9zfJDMLSYTcsIeuZL7zZ2vGvXdpLBrHh/2nvKTGHmgoFKYrRd
         /oPWCBmjJxwl+hejMdp/Xji7SUbd2VfdrmyBRf/WN/DMhJMJ4NP5bFhU2Y17gsUBtHWC
         6gYWrh416/Lh3+wQoLNcQsTX+dAmfNIC8hfpJJHSWIg6MHimD3Ecn4cIvmuZFPF4DRqC
         PJXA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=EAJWiRYZ;
       spf=pass (google.com: domain of luto@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=luto@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9CD5qIJLDUOIfc1w0xaWpvBYCPXvoJg87jVqutI9WaQ=;
        b=llGprQuSzDsfkH9Bk/wrU1zjV3YwZ2CMI9OkGB5BkLoRyHFjkwigjt7gqke7cU2DTO
         bT0QyZc10P3jU46C4w3K0FhhQ89RwZT9MRxa1tjoM7dUjIpxEVTEIX9EGZd34xm2XJ7q
         pq+akvUTN4VRm4nHhyBanZr4J8fC80Y7kqShzWHfonzBiEkxIMY3ZQUO82iU1Ktjdnan
         p65Mx8BtYo5tjazcqxqaMgbOcQDeiTKG8BgXWiT6hQad3vhuDYaYVOyKqFYGsBkHQ78z
         32QK5Sp7Mt7wkFh0z34iJKLHwLLdP+pGHQeIIVXLBH7bUyNJy3hHkzYUB0WEo20BGd0D
         jMFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=9CD5qIJLDUOIfc1w0xaWpvBYCPXvoJg87jVqutI9WaQ=;
        b=ZddMzpbMUAagri+7BjzrBQA9Jsbi4fPD9cpEuKA+aG4soU2O/6sjJgxom17X8VSpJt
         XNUCIVSywkXWVqHP1FyNiKra0xxjdGDyaTlZIOOZ4e40BOFrOOevP9x1dd3mchPmM/sB
         ck3M9Pq2XjGlsOCfd0ohMxqoCrLE9UR28OCpxHwrqcum8zyj+YpTUzdXjqU/IqjCOkBS
         yaOm0iPYGISK+cb3ji2frGr4E8Chd2qoEfeCjhcLRU2aWCNhlDovVD2jyNllnpQtnyb0
         9/e8/TqV1vPvKkqBxLDK9zN/CVWngoQuxx/afN+UVEn7MnP2UtAMolIeqZiPPLHN3by1
         ETlg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531VhLgw6aMLBKUlv3Pog/LI6cZrE7nZ1pFsJwWO+aZhXz5nwcIC
	/uf4HdeTOnEdjHF07A+IfVo=
X-Google-Smtp-Source: ABdhPJxL3YYTEBHAsg7r19dxAz139eo45tELHtlKZwCTMo+JwxkfnpmGWuBqP+Th5KJg8Y/LJqE0EQ==
X-Received: by 2002:a17:902:6949:b029:12c:591a:2ed7 with SMTP id k9-20020a1709026949b029012c591a2ed7mr4545546plt.14.1629996855158;
        Thu, 26 Aug 2021 09:54:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6a00:d69:: with SMTP id n41ls1044969pfv.10.gmail; Thu,
 26 Aug 2021 09:54:14 -0700 (PDT)
X-Received: by 2002:a63:391:: with SMTP id 139mr4182685pgd.410.1629996854526;
        Thu, 26 Aug 2021 09:54:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629996854; cv=none;
        d=google.com; s=arc-20160816;
        b=ztrm8NiTysgGqh119JGNaTHLVbTSBYp1xqZNdO4lw5tiEXZcekkUIeJOZalYl4DNKm
         GlYZgSYRv8XkW4SKv9pZWmzKlQGZjPqqSqf6gay43IhIX4zfDkN+nGCm4jT+tHTkagvf
         f8UlAdjwtBFLqQR3oSBfFwNeNK1Jmkm9msyU3OCcrRtz2t/psmeqlXnDriDs12ro9H3A
         i8F6QPLruV1NSkGUmJf0wv0C87LG27IafN09pgqrvc6uvrStO+Bss6iBIe09ZJi0Wz/8
         vx9761pKVHRuchUVmkey4o1BZ3ruJNm462n3P4mSZwBdsug8YfKJRPFyfV7x99mD/R2I
         N7fw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=TBkcmlylVLwtrmvjyHC52tIuAZYnp5M+zT5JSr1wQ1M=;
        b=v5igs+G/lGif3nFmN/+H4bGNK66A11JK93A2RAqBV7oimYh2PPeMqPXItj9Xv/aCTv
         iIypGUyUsHKPb4GLwMojk4R7V6afo4df5v+U2xh0bCX3Zz6+IWLVSABbNjqNx9ZfDn/c
         GU5gsQfu1tbJDANl3OSgMwW2Qv/OVDrA3ZhMIecUBZwKe9DAU208pBSLqG+P706x/6xA
         A+k6dVzrtoS1er2ArFNAJvP6m5qwOoH1nEaaC7apZ00stldGQARyHr+i/TI5mXzBGxmt
         +ZcE5Lwlpk+bljcm3dIRsJOmOsCvwB8HFohQVab8gpBjUB39BhJBifA1oP+6/N+YKgbZ
         ygtg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=EAJWiRYZ;
       spf=pass (google.com: domain of luto@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=luto@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id u5si861824pji.0.2021.08.26.09.54.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Aug 2021 09:54:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of luto@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id AA38560FD9;
	Thu, 26 Aug 2021 16:54:13 +0000 (UTC)
Subject: Re: [PATCH v2 07/14] x86: Use an opaque type for functions not
 callable from C
To: Sami Tolvanen <samitolvanen@google.com>, x86@kernel.org
Cc: Kees Cook <keescook@chromium.org>, Josh Poimboeuf <jpoimboe@redhat.com>,
 Peter Zijlstra <peterz@infradead.org>, Nathan Chancellor
 <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>,
 Sedat Dilek <sedat.dilek@gmail.com>, linux-hardening@vger.kernel.org,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
References: <20210823171318.2801096-1-samitolvanen@google.com>
 <20210823171318.2801096-8-samitolvanen@google.com>
From: Andy Lutomirski <luto@kernel.org>
Message-ID: <b2b0247a-39ad-097b-8fab-023ee378c806@kernel.org>
Date: Thu, 26 Aug 2021 09:54:11 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210823171318.2801096-8-samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: luto@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=EAJWiRYZ;       spf=pass
 (google.com: domain of luto@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=luto@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On 8/23/21 10:13 AM, Sami Tolvanen wrote:
> The kernel has several assembly functions that are not directly callable
> from C. Use an opaque type for these function prototypes to make misuse
> harder, and to avoid the need to annotate references to these functions
> for Clang's Control-Flow Integrity (CFI).

You have:

typedef const u8 *asm_func_t;

This is IMO a bit confusing.  asm_func_t like this is an *address* of a
function, not a function.

To be fair, C is obnoxious, but I think this will lead to more confusion
than is idea.  For example:

> -extern void __fentry__(void);
> +DECLARE_ASM_FUNC_SYMBOL(__fentry__);

Okay, __fentry__ is the name of a symbol, and the expression __fentry__
is a pointer (or an array that decays to a pointer, thanks C), which is
at least somewhat sensible.  But:

> -extern void (*paravirt_iret)(void);
> +extern asm_func_t paravirt_iret;

Now paravirt_iret is a global variable that points to an asm func.  I
bet people will read this wrong and, worse, type it wrong.

I think that there a couple ways to change this that would be a bit nicer.

1. typedef const u8 asm_func_t[];

This is almost nice, but asm_func_t will still be accepted as a function
argument, and the automatic decay rules will probably be confusing.

2. Rename asm_func_t to asm_func_ptr.  Then it's at least a bit more clear.

3. Use an incomplete struct:

struct asm_func;

typedef struct asm_func asm_func;

extern asm_func some_func;

void *get_ptr(void)
{
    return &some_func;
}

No macros required, and I think it's quite hard to misuse this by
accident.  asm_func can't be passed as an argument or used as a variable
because it has incomplete type, and there are no arrays so the decay
rules aren't in effect.

--Andy

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/b2b0247a-39ad-097b-8fab-023ee378c806%40kernel.org.
