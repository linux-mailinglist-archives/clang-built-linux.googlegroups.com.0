Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBUGGVD3QKGQEX3LQF7Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3b.google.com (mail-oo1-xc3b.google.com [IPv6:2607:f8b0:4864:20::c3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F76D1FCF17
	for <lists+clang-built-linux@lfdr.de>; Wed, 17 Jun 2020 16:06:09 +0200 (CEST)
Received: by mail-oo1-xc3b.google.com with SMTP id y24sf1023715ool.14
        for <lists+clang-built-linux@lfdr.de>; Wed, 17 Jun 2020 07:06:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592402768; cv=pass;
        d=google.com; s=arc-20160816;
        b=EdCOu6qM7lj5H+zohD2GJKIbzfW1vU+iVfid99qvC12ZTGlR6xGSwmjVw4jMerKlWI
         zDtJx/9rJ55dVuIL0loMmXC72ULj9BYeN3RxeGpPoI5b2QqhOWRbLylWVPzUf5HNkgoB
         ijvdmTJcXZ54LjU9szpGroS+rBxMFDP3qPYw7gDoyS/IZIVqPRrdnRHj03+9+sMvWbTG
         gdss2/+ADRRDTE/Tce6+DvhZFtjLgBxM1Cyq2i9MAp0MYEWCEm9VxOzbjl5DxS/gzK+G
         n0aNB++KYsHYLOPN94kAxWELrKlQhMyDIQPI0QnmSshiWRMlGi72EFcGgVJstpZDzGD4
         936A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=GW6H7juiPPL4CaP8YcIwV0D7E1Adw+DhgE5wMqx7HPY=;
        b=YMgXD2+/wEZVsfDOpBa/Ycxb2vf1/mZTsihYy5EfVCE/CDuJ3/FMPMolLX0kXttjQH
         f2SnP0DohNmxF++6HyH0kzPZfsm8L2IZurU9lnpJ6atcbp1/EoEQFQon6QaWMeFfB6E0
         CJFS1B6ApWj7ciamLwcxFO/sEt5v4VuXiMklGph5uofgqbv1CFHzwm4onIxRmsqdoDtl
         Li55QdLu1w5yDHWfyGCXUf1837zxo+53gbhRBvrcmBeB9RnSJPVLuy1oHVxZpHhD4y2M
         un/PyBeuQHHDOG+k9BGCtLHsAcz2Qk+ddgGU0tzP+9pDHvKMYJJcrU3yzssaMAuXLA2K
         Kx9w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GPqcqyZh;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d43 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=GW6H7juiPPL4CaP8YcIwV0D7E1Adw+DhgE5wMqx7HPY=;
        b=bFtvYI4M6i5HETYoavMvAa5Prl8lO9K0LAPZIxXlBE7ByIchFIdnuPtTV2vOrAfhJd
         QR+5cXGWBgvM+9+K2AHNwm3TlLk252btwlpp8h4WHiINrhOTyfA9mVwtSeKaxZsWKuwO
         vl/TjC15etl9JYs3LEmfipKqsZp4TV4nPI3vUMhOcLspIfElNb0f96tV1elyVjjYg1kG
         ptbHB/VYNFpGV991kOCCGfzoXyBdobHMgf9AonWn6MA5VwGXlOF6R1u3JFDBkgUR0Fa3
         lOC9VQEjjukO0vEe8hmlErTxtC4B88kUZSCUMR12n/76uWXxMV2UZ8UGr4UWQeH0YThP
         fDDg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GW6H7juiPPL4CaP8YcIwV0D7E1Adw+DhgE5wMqx7HPY=;
        b=B+o7LD6PEe6CRcWxysQpslYXcisJ4yDh6eQKCY/x92mLb79uKGbSaxbDfjefo7/u1Z
         HjP0lOVIf3ZaiUYLcfZL7H+76ZjHWi+BINR92UUO573muIgUO4aErvxx1P6Wfrke/jJ9
         w4Au4TiE+onsTwm5fnOr/yJ/8/xtQnPoI4iTxnYz67KwRUKjarv6huDzbBsYa0t58u8C
         NzPu6PlUox6qmPQJt0azzzl+3/XpqgD0NVfK+vQZk2E3Cr10j9Gh+OTJhz3/aUUcy9nu
         fghsI7rx0Cl2RwSeW3zFJJbLx5dcfyl/H8Z9DJDDeDPIgvvTB2n4B9l7DVHi5HwKtppC
         CllA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GW6H7juiPPL4CaP8YcIwV0D7E1Adw+DhgE5wMqx7HPY=;
        b=unh+WjIFualKlE/oFgkG5Jss0nmaocVK7v36jwh5kgiyqbxw5RWmyp07RbQ3i+aw39
         fXt3x/LzW1r9i7XvBfQxxacH7PeCOwXfVPrL8b5GAOi6b23s7DTT5rs6h5og6u9GHmQy
         rVfk026viHXVRqutI7mp30Ihrw6spEvyiKVwvZueSDfBWpGu0fZKsDrIZFADv9FMiMkj
         V1Hu3rntPbRyXR4Ca8RdIWfv8ltmqvsQHGYXQEL1mh8Lbi5+SFg8Pj3XPun8pWlf6cBW
         mgLjW3mkKcrpUs1tJum2eUtS0FasyqP8Hv6swevNMYInLNfcUpHIcLSiWm5CFJaYCwEQ
         u0Jw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532xzKHaG4sPWAC/LKBQYunAe1jJf6EdYx0ZmePfekZ7IicnCcYE
	YIAHmTYIeQruN5HG9VQGJhU=
X-Google-Smtp-Source: ABdhPJzI3lbrz4/5QZy6rj7a66OkTS4mmjniiLC/QfKJFyRcVzjJHiAJdTuUet8qnwV6+BR56dTQJg==
X-Received: by 2002:aca:b108:: with SMTP id a8mr7659010oif.21.1592402768066;
        Wed, 17 Jun 2020 07:06:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:e658:: with SMTP id q24ls138764oot.3.gmail; Wed, 17 Jun
 2020 07:06:07 -0700 (PDT)
X-Received: by 2002:a4a:b484:: with SMTP id b4mr6859007ooo.24.1592402767678;
        Wed, 17 Jun 2020 07:06:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592402767; cv=none;
        d=google.com; s=arc-20160816;
        b=UPx2GjTR78U9vctf5+AKu0nF6Jb/q1mAe0Go4zUpW7rQ4OsqpthKqUgg6+l0N+O++p
         kITSRBQVv6X+obCKy+RDBNlCib4KQ1XxnnB+IYcpen8w37XeJmd64bJR/KleLJz5CIDW
         GE0bUAJy+jpn/SCZRo1ESX9OXl9ZRv5CKd6f0C1n6C0nrqS0Krkorge0hhVLF2WkW3ZT
         UNj/6CVc88EBmNdQwrwSYKBzkTtwL1HF4llAZ4UqCJnQ3N+WzbBXi/dJbyIbz7ZA8fnD
         ThAmoo535ISE9KkxTPJmRV0H9gNTRVKa7G5LtCtEVQCOMM4HeP6k3CvNJmvCZngWiJRN
         ycRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=9VJmIeJtxdgjp49wsjZK3ecwmJb56WFgnkBVAfHMidI=;
        b=Bvy+O5KyabC6aQQvdg2mY3iJNiqylv3vcHczCMB+gKYu+99mHXy+ep4rXNi8jIZ2Jb
         R7UDEeheDmzsmD0dqDi7+NsoKpwicKNrrI7mssBs9JefQYvC6an/LRO7MIhG7nEzVmJu
         uLn71S07kcbjfGKZs2Wu1Lzzt5j18jlrmCgOMatVWf6tqj//DDuq9A1A3MqHot30xjI/
         LEdWuoaV5KBE3hCFuhndkp1GLecNA65n4NoBQBV3hI8FoTiJr+yR33IXeVgmnGv5ay3T
         eR+a+FRndqevXKPVsyY2Eu5xFsed2WXsfL+yZpS645IGYicG3HuDTZah2/9CfJuaTL5Q
         n0ww==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GPqcqyZh;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d43 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd43.google.com (mail-io1-xd43.google.com. [2607:f8b0:4864:20::d43])
        by gmr-mx.google.com with ESMTPS id l18si1037280oil.2.2020.06.17.07.06.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Jun 2020 07:06:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d43 as permitted sender) client-ip=2607:f8b0:4864:20::d43;
Received: by mail-io1-xd43.google.com with SMTP id c8so2843124iob.6
        for <clang-built-linux@googlegroups.com>; Wed, 17 Jun 2020 07:06:07 -0700 (PDT)
X-Received: by 2002:a6b:e810:: with SMTP id f16mr8158173ioh.135.1592402767348;
 Wed, 17 Jun 2020 07:06:07 -0700 (PDT)
MIME-Version: 1.0
References: <CA+icZUUWh=NzBwAa3hff6yOxY0ZirKmzOLz=a2eZUbW_cD5ECg@mail.gmail.com>
 <20200616173207.GA1497519@rani.riverdale.lan> <CAKwvOd=XH47E4GzKGw_LLVXzskJ_Z8=jf2k=ebG-o7nXFAqzjg@mail.gmail.com>
 <CA+icZUWm8SRiNLGsu+SXszOSOge2yfvkaBGTXLPKLTKKtFFuDQ@mail.gmail.com>
 <20200617062109.woy2uyefdplw3pst@google.com> <CA+icZUXRUF5vCStZ8GYwC0mMOH2kh3Ce3oguu-oocVR9EhzCbQ@mail.gmail.com>
 <CA+icZUVdZL5ka8FuiR74A0aiQVfEcdGoO4-2BYizRBp9k5SGLQ@mail.gmail.com>
 <CA+icZUWceOpR-vwOi-Q2eLFRNOujfBw9zZ9h31OZ+bB4RzCHoA@mail.gmail.com>
 <CA+icZUXacdF8Fvd=8mz9wS3C_Am5n_yoE42DKc0X3L3ywfKRQw@mail.gmail.com>
 <20200617130547.GA2489039@rani.riverdale.lan> <CA+icZUXfp3COfZFGxvFWkvtaB6Vwf5sbBy5i4+bn6_-3BFd_0w@mail.gmail.com>
In-Reply-To: <CA+icZUXfp3COfZFGxvFWkvtaB6Vwf5sbBy5i4+bn6_-3BFd_0w@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Wed, 17 Jun 2020 16:05:55 +0200
Message-ID: <CA+icZUXMPZ+UHvMgjZfMoL-zouFEfpdb_WWER8foqp-gmqSmxw@mail.gmail.com>
Subject: Re: LLVM/Clang: Integrated assembler: DWARF version 4 and passing
 assembler option
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Fangrui Song <maskray@google.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Masahiro Yamada <masahiroy@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=GPqcqyZh;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d43
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

"I see dead people."

With my 6th sense I now see:

$ llvm-dwarfdump arch/x86/crypto/aes_ctrby8_avx-x86_64.o
arch/x86/crypto/aes_ctrby8_avx-x86_64.o:        file format elf64-x86-64

.debug_info contents:
0x00000000: Compile Unit: length = 0x0000002a version = 0x0002
abbr_offset = 0x0000 addr_size = 0x08 (next unit at 0x0000002e)

0x0000000b: DW_TAG_compile_unit
              DW_AT_stmt_list   (0x00000000)
              DW_AT_low_pc      (0x0000000000000000)
              DW_AT_high_pc     (0x0000000000003cb2)
              DW_AT_name        ("arch/x86/crypto/aes_ctrby8_avx-x86_64.S")
              DW_AT_comp_dir    ("/home/dileks/src/linux-kernel/git")
              DW_AT_producer    ("GNU AS 2.34")
              DW_AT_language    (DW_LANG_Mips_Assembler)

$ llvm-dwarfdump arch/x86/crypto/aesni-intel_asm.o | head -15
arch/x86/crypto/aesni-intel_asm.o:      file format elf64-x86-64

.debug_info contents:
0x00000000: Compile Unit: length = 0x00002ad3 version = 0x0004
abbr_offset = 0x0000 addr_size = 0x08 (next unit at 0x00002ad7)

0x0000000b: DW_TAG_compile_unit
              DW_AT_stmt_list   (0x00000000)
              DW_AT_ranges      (0x00000000
                 [0x0000000000000000, 0x000000000000891f)
                 [0x0000000000000000, 0x000000000000003c))
              DW_AT_name        ("arch/x86/crypto/aesni-intel_asm.S")
              DW_AT_comp_dir    ("/home/dileks/src/linux-kernel/git")
              DW_AT_producer    ("clang version 11.0.0
(https://github.com/llvm/llvm-project
8da5b9083691b557f50f72ab099598bb291aec5f)")
              DW_AT_language    (DW_LANG_Mips_Assembler)

Thanks Fangrui and other involved people.

- Sedat -

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUXMPZ%2BUHvMgjZfMoL-zouFEfpdb_WWER8foqp-gmqSmxw%40mail.gmail.com.
