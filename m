Return-Path: <clang-built-linux+bncBCS7XUWOUULBB2MCR6BQMGQEDEWY2LY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3a.google.com (mail-oo1-xc3a.google.com [IPv6:2607:f8b0:4864:20::c3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A63034F56C
	for <lists+clang-built-linux@lfdr.de>; Wed, 31 Mar 2021 02:25:20 +0200 (CEST)
Received: by mail-oo1-xc3a.google.com with SMTP id h18sf234261oot.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 30 Mar 2021 17:25:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617150313; cv=pass;
        d=google.com; s=arc-20160816;
        b=eUQuSrg5AxZdFJ6brfG2JJOuJ5MxOXI8IaHt7F95m6HqbTO/FYEcrhoeqaPbptBjrU
         zhLrY3qTn0aZ7rAWGZoP859rwME+hQykCQsDWSsFvpLjlQF+HO1YnfNvwojZyxnBac/N
         1CBiohS030m3Mjd10hwJWjTeeO2qMFUtB7EtvcqDM9yv/OZj9sXYCQfo8ubr1y7Vr6YN
         1yB6Ufxw1jPpk7nyKjOMdDHhphz1E8zxCJpMfTbykJtVIcRgNPVe1rsyaWrM4hmhrwP2
         GvAAR5Z6eBZdkZgyUu5Zj/2trLrEvPh07SGnEcMcZD25F4klfT7FvkGD7IK61wTh7rPW
         1Cxg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=HfrcLa4F3xZfA1kg5YWPgIoscsvcACuFNxcLQCmCZM8=;
        b=vInBBBsdJj8Y+OCuxAzf6HSu+1MY5xsNnhMBgbrbVArBHfHeWUjoi/oA7tMWFAfjFs
         tQ+BDVgoHuVoqbmgxQfadDYqruoa1U/nnkD6ZN1ommRqQ1ILR8koRD/oibRYgKL2ZI+c
         A1kKITTfckx5v9bIwiecwXsjRh6bILoS1P6fPBsdYeOsuLzZMJUF9HeVYatFEdy0NJk9
         ddu+g1WDBIylAQKaiFGpK9mr7OPbQbz+KiWeioFpBRROPHy9bcvASKQbg2jaKeg24Frw
         avI5GDO1nCeXrC2An6mpDV7ytHjVueVO+v7sHlIYPrXkDbkW7veC2Yq6f2RaXcsqrkM3
         FpQw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=XiudSGq1;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=HfrcLa4F3xZfA1kg5YWPgIoscsvcACuFNxcLQCmCZM8=;
        b=s1gCDg3wS45Bdxihhni5J9HcN7NVeM8pXHkSxda46IlD9CI17HEOEJMx9V4e6cnkno
         0whyQK88jujseJMO+EL489QE5GpcnDFSHdYbv+lc4x2xAJGQOvVy5jUR5lQTfCu7lDhP
         pbBtzrurOAQNF72JfNqERi7jHkbyk4+zZO2z9l8y4SrG05VNNNMMhhdIJ93sjaPyBQv+
         9Jb3ru9cxPLvafx+u/9uj7+KmkmNzvfe/6T/u53Jutxw5swOr/xBNQ0nNNdZ1jtQwhe2
         oNM1VfDFMUNAS5oHR9wkjy/T+4BtIflIzlIl84SZOLIMPxFXMmlLzuVv9qnjtLzKJAnB
         J+sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HfrcLa4F3xZfA1kg5YWPgIoscsvcACuFNxcLQCmCZM8=;
        b=SSHUbzb6nfeUH9qKwI/IH1rrOywvucXXZiaqBg0TKFLDnaTqX1h9M7KUE26U7MGfiX
         wG2Pxm259TYhpkfiRmncozDoU+a5Exo2job7VXzdYKzrH1mUXQC0S8UGY9U7stOzuuEf
         JTc8tgwFMTs7yGie76eF1stm9MJZNdL0IBvE1tUaHMY5GMPkPLNUG9pGCJI33pZ1XlWj
         2gXSgU/4Z7GjtKZw3r1wf8P2EXwNSw4WyRt1y06xS5HOYaYbihHZWUKLgxo6aDdBtlGH
         025GPQcoilNn68BdlgyTrKCvuWx2UmJ3hTLDflI6fOCBHg2sMLhpjWZ/Rw80MO4eADLh
         jCfw==
X-Gm-Message-State: AOAM533eZvQH06RlOp1GEpM2L4PazGWHfEJ1DlZVqQ67Li1ceX5ApmRz
	s/dpRvtWWcThrnxmbdKGs4A=
X-Google-Smtp-Source: ABdhPJyshLKBBQCaj9PgVbfum6hsusZeSxmSkeN9g15KKjxvuz9HfZtMCgBjSpWuXMQ3W9MY9PPONw==
X-Received: by 2002:a9d:67d2:: with SMTP id c18mr404305otn.105.1617150313583;
        Tue, 30 Mar 2021 17:25:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:2470:: with SMTP id x48ls71924otr.8.gmail; Tue, 30
 Mar 2021 17:25:13 -0700 (PDT)
X-Received: by 2002:a9d:5541:: with SMTP id h1mr401761oti.246.1617150313253;
        Tue, 30 Mar 2021 17:25:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617150313; cv=none;
        d=google.com; s=arc-20160816;
        b=o9JOwG1Cnnm+0SJEIeKLFKW+lwagC6b0OFKjxn4xw7BU27hcqZRBeODxcDTS7ynivu
         BYGusBifxFOfmuy7gcU7dJmIw5CZiPBwfQD+zlSMNZr1ZdsDab+x0vF6ss4IM7wSk9ro
         T1TzViJ9Qj7cXdYuAlHd+q/N1qW9aenjyIZPQE8c+P8QZ7Lr038sgmZPFMz+xG9NJk66
         isggxfcV6x09kJ4OiWpUgOQzyqRyChshJp5V2m8XBdJQcu0Jbga8UPMUVh0YCyJqDEkP
         CZk+0si4GDNIZp4/cJL7vjL2mb0oLAVOp7QwQjXqAwD88f40rlSXhPhq991NLMUm8Q7F
         +fvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=JiHKW01RjgeP+AxOSQjcmRgzm3OlnqFilQWpe+Hu0iU=;
        b=a1iBdTbqr7m9MKM6jjoq1dg78esNMpHCJ9Li0KAyGQDTq/Bhurd5uRN8N0TyUerZff
         93FpJmr1OOQ60EGvJuVbTXnLZoGiSKZqaILpr64pehr4w6fNu1xinYWGm52V3fiOn31e
         hc+Fk0P8pcMnRbunWn/MkU4pIt3SMtq6U8dy6MqjkLu1M3N97xhAxJgeg+uF5IVNxn+o
         1+NmPIJ33VKB/SskdP91EK54e8xpCHx9JcpmHi4hTMgM+idTE9eeMKcZGVuPHlaqR1tT
         JoEiTN53hEcWdx46McbY7FcahRpjnJ7ETTXvGwUK+oTudBDEgdt3Vqjvnj1dndCRoBh3
         jzYA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=XiudSGq1;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id k10si26201otj.2.2021.03.30.17.25.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Mar 2021 17:25:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id p12so8269739pgj.10
        for <clang-built-linux@googlegroups.com>; Tue, 30 Mar 2021 17:25:13 -0700 (PDT)
X-Received: by 2002:a62:ddd2:0:b029:1f1:533b:b1cf with SMTP id w201-20020a62ddd20000b02901f1533bb1cfmr457601pff.56.1617150312427;
        Tue, 30 Mar 2021 17:25:12 -0700 (PDT)
Received: from google.com ([2620:15c:2ce:0:35db:7d2e:3c36:b064])
        by smtp.gmail.com with ESMTPSA id q5sm152275pfk.219.2021.03.30.17.25.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Mar 2021 17:25:11 -0700 (PDT)
Date: Tue, 30 Mar 2021 17:25:07 -0700
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Yonghong Song <yhs@fb.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>, arnaldo.melo@gmail.com,
	ast@kernel.org, bpf@vger.kernel.org, kernel-team@fb.com,
	linux-kbuild@vger.kernel.org, masahiroy@kernel.org,
	michal.lkml@markovi.net, clang-built-linux@googlegroups.com,
	sedat.dilek@gmail.com, morbo@google.com
Subject: Re: [PATCH kbuild] kbuild: add -grecord-gcc-switches to clang build
Message-ID: <20210331002507.xv4sxe27dqirmxih@google.com>
References: <20210328064121.2062927-1-yhs@fb.com>
 <20210329225235.1845295-1-ndesaulniers@google.com>
 <0b8d17be-e015-83c3-88d8-7c218cd01536@fb.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <0b8d17be-e015-83c3-88d8-7c218cd01536@fb.com>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=XiudSGq1;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::542
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Fangrui Song <maskray@google.com>
Reply-To: Fangrui Song <maskray@google.com>
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

On 2021-03-30, 'Yonghong Song' via Clang Built Linux wrote:
>
>
>On 3/29/21 3:52 PM, Nick Desaulniers wrote:
>>(replying to https://lore.kernel.org/bpf/20210328064121.2062927-1-yhs@fb.com/)
>>
>>Thanks for the patch!
>>
>>>+# gcc emits compilation flags in dwarf DW_AT_producer by default
>>>+# while clang needs explicit flag. Add this flag explicitly.
>>>+ifdef CONFIG_CC_IS_CLANG
>>>+DEBUG_CFLAGS	+= -grecord-gcc-switches
>>>+endif
>>>+

Yes, gcc defaults to -grecord-gcc-switches. Clang doesn't.

>>This adds ~5MB/1% to vmlinux of an x86_64 defconfig built with clang. Do we
>>want to add additional guards for CONFIG_DEBUG_INFO_BTF, so that we don't have
>>to pay that cost if that config is not set?
>
>Since this patch is mostly motivated to detect whether the kernel is
>built with clang lto or not. Let me add the flag only if lto is
>enabled. My measurement shows 0.5% increase to thinlto-vmlinux.
>The smaller percentage is due to larger .debug_info section
>(almost double) for thinlto vs. no lto.
>
> ifdef CONFIG_LTO_CLANG
> DEBUG_CFLAGS   += -grecord-gcc-switches
> endif
>
>This will make pahole with any clang built kernels, lto or non-lto.

I share the same concern about sizes. Can't pahole know it is clang LTO
via other means? If pahole just needs to know the one-bit information
(clang LTO vs not), having every compile option seems unnecessary....

>If the maintainer wants further restriction with CONFIG_DEBUG_INFO_BTF,
>I can do that in another revision.
>
>-- 
>You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
>To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
>To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/0b8d17be-e015-83c3-88d8-7c218cd01536%40fb.com.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210331002507.xv4sxe27dqirmxih%40google.com.
