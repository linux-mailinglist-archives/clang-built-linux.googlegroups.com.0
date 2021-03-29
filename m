Return-Path: <clang-built-linux+bncBDYJPJO25UGBBNNURGBQMGQEODKUT3Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73b.google.com (mail-qk1-x73b.google.com [IPv6:2607:f8b0:4864:20::73b])
	by mail.lfdr.de (Postfix) with ESMTPS id E4C7634DC15
	for <lists+clang-built-linux@lfdr.de>; Tue, 30 Mar 2021 00:52:38 +0200 (CEST)
Received: by mail-qk1-x73b.google.com with SMTP id c1sf13285983qke.8
        for <lists+clang-built-linux@lfdr.de>; Mon, 29 Mar 2021 15:52:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617058358; cv=pass;
        d=google.com; s=arc-20160816;
        b=k6SNsAh6ZWaePH3hqzwE9eNJShL9KbiOoc/3HHcIr5GugjZPUolVOTc1DVjkXl6mON
         T2yDrDIoTq5TsRSuYRC7tQp3ETYlBVAy+v4dNFMHiRhXR6odAMeFMeVG4Cq+NhW0MiWK
         /UIfC5z3eWmU9MZxnFdJSPIDvPtRRW8Jt8hfRuDyf07q1bN4w+hKNKuIQcNMZ4a8Ml6I
         obUPLvDrzDBPAOjR+vonaGvLtksa58yqrYIEmNP2Kasiu44GIa/vYqafVaZpzbFrR1gL
         E5NtCjIRz2THNomSTgO/LxH7tCm2luFTKexiPj5ggdIUzMYIQYp3Dqv0ynMmyzzVGymB
         y+sA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=E90G1NyaTdQ9LRuRBToyQWfIcoLWyzAdt4WBWW3x9qk=;
        b=eBje6uZeVpt4iCR5JWPGDGSXmrz0kxn3NpBCKVTR7j0zG7Ojx+eqFy5+amUP76mkCB
         K12wG8EST2ADi4QLXIryTTp9QX7RkgzedNIukKUMFc7kgN0qCigJopVdx+GmbuAEzgFY
         GFjQd6Z6dalOYYOvtkQ4UUzyEZf16dhHdjpoLuSnzmjg3kWn8u8WfeC53WSwPD3JaoC9
         k2F9Fzw7kFKISpGd9MMlq8LThV9fda+V5BQCEB9UuLEyDu6oKXR+3dfT+bUfBbLrlX68
         8A0egskHhhb1AwXPTlt92/DrSP6YK44kMM4iDIsLWJrZ9vqC8FSPix8x5uIsiDOLuwDS
         Yxeg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=i2KpWGdI;
       spf=pass (google.com: domain of 3nvpiyawkahwsijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3NVpiYAwKAHwsijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=E90G1NyaTdQ9LRuRBToyQWfIcoLWyzAdt4WBWW3x9qk=;
        b=pcnRp8HW0M9DAJrjXw9ZpSadYxXWsx1rXTp+YFhalXfNvu9jawd/486IEQojCNxRtd
         KiWm1Rgn/bImRDEaa0Je6itZz5CyCh0IH8Fx9v1Hi88or/v91VBXPHcv3g7Nu8OHCv6B
         JgGKLmAAPABr8XZHWl8yYEjmTPWTI3T7EUc4f+BCjpFg4wxMlY/N9IsooNUsaNV4PsDb
         x1tLFUdil5/xweQQVRpKtUwMDg4fbtsgQ+vy6ES0WE8dgGHz2x5yZZyTq+HCYMtExvCc
         VOI/PRNFs1XTyo842DqOVdX7pLpYVXy5H/jZqzpqI89G9S1nuhLPy7KpJM16FKakjm9D
         GSPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=E90G1NyaTdQ9LRuRBToyQWfIcoLWyzAdt4WBWW3x9qk=;
        b=W4HyObRiQ4lMBmQbepDheoxoI89ZH4jeXxmRYgMAET3rC5kvNZJO+bSUPi5TnCd74B
         k/K1ICWr7aNDPZ7WPEGgQTN/Lvht7C+KpBB1Lyo3Jity2RuKBcXwfc5IC9GBFg+Yjv8U
         O6hikjoul+N0FEv8/RFscirS1OTdRwy5rz+gDBJ3ZDo0VoloTTkKqKNeMCUL47MY1Hfg
         M68aML+ry76zAkc2No5mfRHwMtuBio4vKkJav05KTB1+jg1ZDpZ+LDqF/G9ceQovCum7
         WiAbzMURdVjlJ/ntK80sIn1JZ+KayZRcRubLXWsZhc5OLx3rwVKCDkporfs+doSKTt7Q
         GG0w==
X-Gm-Message-State: AOAM533ccDAuBj3NSA/UsLjCIHc0eRIHplkpVbeL+Aw3GrvACLrrBrWL
	1oWZAkN/72oCHeTyfLD3iqI=
X-Google-Smtp-Source: ABdhPJxz2D7KquFRnDERcrofn5MfCcBHmLY1Wxsv+cLl4a33bDXB1HHg9lnOGtwgLXTOwgBlxEiBZA==
X-Received: by 2002:ac8:45c4:: with SMTP id e4mr6056702qto.267.1617058358077;
        Mon, 29 Mar 2021 15:52:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:4455:: with SMTP id w21ls9361623qkp.7.gmail; Mon,
 29 Mar 2021 15:52:37 -0700 (PDT)
X-Received: by 2002:a05:620a:749:: with SMTP id i9mr28524227qki.40.1617058357694;
        Mon, 29 Mar 2021 15:52:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617058357; cv=none;
        d=google.com; s=arc-20160816;
        b=XRUJCNugw/tAI0I6CxryLlkzVtNm7M1tqIL4PW/nhi0Sx+MmSK873ghJHRaC2Sgwmr
         fc47TWLyQ0oXC03RBR1MOKu/6kxjfjADe7o4t5HQBpt1ZiO8VYA4HvzgWKvcpw0xuVNU
         8VG7T+RUMIf+IvSbf3Rw9n1swV7e6fY+b03sMXzgRH3taFmw5VVKvHe9wppDys8jDJHx
         65zC2OdxlMMTTTSva9RC0S/0X18P1pQXMb0WEsEd0fHdI2+mMfZA4X3WvOdZx+w3Z3UM
         Oe/2DoxmlWZZJhXmBurpYMnBfoJXqMKc7HrKSJ4Y601oJA+M8QUJyF3ct4N05jD/MoH1
         hypA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=q+pONZ+c5gzLHZlc8vklxdpHbUYpIrWC8EjxE4Qzlnc=;
        b=fX/S9vvw044Kt/fVMdJa6N2c+r9SI1dEBdaRA2ISFeWvNHsKWOewrC9r0FTxCdv8r/
         Mv6NxAR7EDVhy++pvpaD+BlKB+LArHDpgW/M4dZreFOjqTq++c/OPcA0TFI1uet0JvPN
         o6moNWNYYn5Wb4f5BNgavKrBDUMjlQP4f2KiVxCTXV9x6LeoElKX2fqmJ99qNJilDcmb
         DTdb7u2fLy1UO/aJkWEf9yYAItfzNSA8TLQoqyfY5aNC3w2fq0qvik33t/vjb9ZkECcK
         MZ04+G1fE6KPhshfZtgYlT2kqOTHJd3yFPY8ngb0u+NYapaUpHRljKryXaVwetyldTRI
         W6ww==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=i2KpWGdI;
       spf=pass (google.com: domain of 3nvpiyawkahwsijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3NVpiYAwKAHwsijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x84a.google.com (mail-qt1-x84a.google.com. [2607:f8b0:4864:20::84a])
        by gmr-mx.google.com with ESMTPS id d3si234130qki.3.2021.03.29.15.52.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Mar 2021 15:52:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3nvpiyawkahwsijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) client-ip=2607:f8b0:4864:20::84a;
Received: by mail-qt1-x84a.google.com with SMTP id w2so8560081qts.18
        for <clang-built-linux@googlegroups.com>; Mon, 29 Mar 2021 15:52:37 -0700 (PDT)
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:c959:2751:3fb4:47b1])
 (user=ndesaulniers job=sendgmr) by 2002:ad4:4431:: with SMTP id
 e17mr27689931qvt.37.1617058357412; Mon, 29 Mar 2021 15:52:37 -0700 (PDT)
Date: Mon, 29 Mar 2021 15:52:35 -0700
In-Reply-To: <20210328064121.2062927-1-yhs@fb.com>
Message-Id: <20210329225235.1845295-1-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20210328064121.2062927-1-yhs@fb.com>
X-Mailer: git-send-email 2.31.0.291.g576ba9dcdaf-goog
Subject: Re: [PATCH kbuild] kbuild: add -grecord-gcc-switches to clang build
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: yhs@fb.com
Cc: arnaldo.melo@gmail.com, ast@kernel.org, bpf@vger.kernel.org, 
	kernel-team@fb.com, linux-kbuild@vger.kernel.org, masahiroy@kernel.org, 
	michal.lkml@markovi.net, clang-built-linux@googlegroups.com, 
	sedat.dilek@gmail.com, morbo@google.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=i2KpWGdI;       spf=pass
 (google.com: domain of 3nvpiyawkahwsijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3NVpiYAwKAHwsijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
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

(replying to https://lore.kernel.org/bpf/20210328064121.2062927-1-yhs@fb.com/)

Thanks for the patch!

> +# gcc emits compilation flags in dwarf DW_AT_producer by default
> +# while clang needs explicit flag. Add this flag explicitly.
> +ifdef CONFIG_CC_IS_CLANG
> +DEBUG_CFLAGS	+= -grecord-gcc-switches
> +endif
> +

This adds ~5MB/1% to vmlinux of an x86_64 defconfig built with clang. Do we
want to add additional guards for CONFIG_DEBUG_INFO_BTF, so that we don't have
to pay that cost if that config is not set?

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210329225235.1845295-1-ndesaulniers%40google.com.
