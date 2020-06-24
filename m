Return-Path: <clang-built-linux+bncBCS7XUWOUULBBQEZZ33QKGQEA647AKI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33f.google.com (mail-ot1-x33f.google.com [IPv6:2607:f8b0:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C095207A36
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 19:26:26 +0200 (CEST)
Received: by mail-ot1-x33f.google.com with SMTP id h25sf1860954ote.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 10:26:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593019585; cv=pass;
        d=google.com; s=arc-20160816;
        b=FKs/FW+5vTkrMgbeC9lxUl2pL7kSDZRgkHxHI7Yy9h/1PDVaEYek7josMTWmUVJMS7
         MOKulUOIW+uYiszXAVa+lMpU6/KnyfAJ23IMFOTQHNFG7xy7lQD2GsvgPRfdciyx2+p0
         5YB+CuFpgaH/0gWo4KsJwM7ExskvyPS12IE5MA82ULF8kwUWDE6gGFtG3b9U5tXE0y5J
         33WXKC4BdQ01bZ6qryp38xyLI8qQjXTPN+PUw72XNiGJJQa7UkqlRgqPVehf+3vC7HvS
         A213ssRbdqCbZTU3bh/2E8UU/y8HWEzIPwp+ALrba6BxWT8XbsnL/unBGi5I8HGmWSnf
         7Tfw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=vL+P6H/3mdY4Tnpsa1Qu9UdHxeJmUK8dlJMCrPA6dc0=;
        b=seB3PHIoElUZPPfv03vjU10olUsuv7xv/M0vjmxn021tSLFOwBfmn/+pLywj4wcsQF
         G3rrVSmRL6feF/LRnltD6r3BZptZqEiHEQsPaJL9OdVgl1/BZM81sSVxH0/xmKO6dhOa
         r5DIvr/tzXL14aKKlF8JCUEAtQ2yiPoY3TEinctkWnUqpyR8uZpx+9yZR1S3de9eym2R
         6ET2tcHhtUYCzPEstmWlFZdAhJTgSXi9CTdklENGQaLuNBdzDk9rq7MP2eQmU6H+YPng
         8gGaI4AQW7rJVmebPXsHCmpMXJIxL4CAdD49nn78p8FSde8CPqh4UDhzWBfPyIsZxvKx
         L/7Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=HHUTbvXU;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=vL+P6H/3mdY4Tnpsa1Qu9UdHxeJmUK8dlJMCrPA6dc0=;
        b=YzdLB5KeEjWgvTah7UeQi8Qb8wg9pi8zcJ/StHbHAcOQxdrqyxl1nzj47BPwsS26Wx
         +qQdqNJsS86Y++lNB+vXdX2bQPgAeopOUTcl99UOB7mvpao7wBanFvxq4DKpuNnKz1+S
         sGuDC7TRbXudpLRccGALyhqMh1tV+dW2aag6rJLl6bVHfPBkhZZI4nPca1imNWlsXGco
         8AcEayicnmp5bQihk7bJ8d2C8KxU7yFGu3Xe9wABjPHC+5GmCHgkoJkmt1h8A587bbbX
         anhYLgA6DjTPPMm0LncPVvg59jqSD06w4j64xuYxoQ2AaJQ4zI412hYqLOKJpHp3urDJ
         v9hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vL+P6H/3mdY4Tnpsa1Qu9UdHxeJmUK8dlJMCrPA6dc0=;
        b=WwoTRwbLkqItpOIIxmFOQopz4px7/eyL+HbHtlbZr6WjCryL6qjJNGY0YpmZhG31fN
         aFXSVFan6igHMnhiplf7TkuH5h5EMjwxiAF+gokL5pggjQhYRfteJo/F0abRXPx1JdYb
         tKEMx1Cpk6HkRQ80xJJJpnALA8nyAilBy/tyUqoRE36jCRFMo3KIU2+H2gSqOadfT56+
         csMxYlNoZXGGLplT0vJTMdFYC94D5zm8sXj+FSIXVoi1rC3zAd6mhKSv8VNPFNSpupVI
         JuHkutYu3kQpbfz5FIn1UVBVsVqe7VA59vm2icF3jD0sReMwAxLGoIiglFEohyXx4395
         Rv8g==
X-Gm-Message-State: AOAM531RPfHqtAhEKLQDxndCln5KDIykp1SPrkV6U5JtE2Ep4+ywuwXn
	sr4eeXdHSl6+UIjZK0PkFH8=
X-Google-Smtp-Source: ABdhPJyufcNVisTi1nkknxYoGp0kjdKPMzzxkZ8Lg8FWmc0JsLsdCn4jk6XKIbq05Fb7dF6FeYZdEA==
X-Received: by 2002:a9d:2e3:: with SMTP id 90mr4722308otl.320.1593019584975;
        Wed, 24 Jun 2020 10:26:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:3116:: with SMTP id b22ls629287ots.6.gmail; Wed, 24
 Jun 2020 10:26:24 -0700 (PDT)
X-Received: by 2002:a9d:7f9a:: with SMTP id t26mr24747056otp.103.1593019584620;
        Wed, 24 Jun 2020 10:26:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593019584; cv=none;
        d=google.com; s=arc-20160816;
        b=FdEooIGvQSoEYhJByv250hLAAg1lTU1AJdff/dqA8vI8yI5ponLcAEDyBgEK6EUcR2
         BKOxa3fG33QaKsg5UE0LW5ew7dkheisz3acXOvt5XlD56xwK+ZfJHzmjDsQt9N5Etn2k
         2evoY/sOxjKgZxcNbcH5h41NbCUpZOjYCep5rZclFR1fEuWFOqatTk8REBFXkc2FHryE
         /AzEMJpiwcRcF7WFS0wNYVFKTG+2/nyd4b82VyEQLhX+28HA4DWPs07lRILGaxplNx93
         7am+4XmeaCvuwAoboGYNc8oFwIX+61yXxVZIbkiJVdmG4/eTCRdxvDxV97qI+QPoG06N
         6InQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=MnQWlAViaAXgR6ChKk9flTU7iy/dP/Hqi3HZ30RWfcA=;
        b=L9qmc8HGpB2Ze54ymytO9lgq53Q+7/uOTn13Wjb+EZ603qQV1LmYAE8Ps9xh8dwxqH
         JrJPqZoVuBytC/MGo8UpcZZWyc/hqhKLiB6uwO01EPil+lsrReZv364jP+53RF2EUi3L
         OzrTaBtsWofdIBsyOABdEdnBVzmSjbd208EXcbu0XnmH+9I2W1d+snE+jvDJ/jyBEPtg
         tI9+LEh34rFRt1bBj97N6HOSxTqj3fzBZvOJqFxuLPKyIZHI3dw9yjAGuZFjRa+s0UTT
         jeSvQ0xjPAIx9lSlMNrpjrERDroN2xPL62IU5MLnYm8C4pQWcYoO7YqUCoVuVWW5N/Hn
         2EhQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=HHUTbvXU;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id k69si1227657oih.3.2020.06.24.10.26.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Jun 2020 10:26:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Received: by mail-pl1-x644.google.com with SMTP id k6so1302067pll.9
        for <clang-built-linux@googlegroups.com>; Wed, 24 Jun 2020 10:26:24 -0700 (PDT)
X-Received: by 2002:a17:90a:f3d6:: with SMTP id ha22mr29151692pjb.193.1593019583946;
        Wed, 24 Jun 2020 10:26:23 -0700 (PDT)
Received: from google.com ([2620:15c:2ce:0:9efe:9f1:9267:2b27])
        by smtp.gmail.com with ESMTPSA id i191sm21217005pfe.99.2020.06.24.10.26.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Jun 2020 10:26:22 -0700 (PDT)
Date: Wed, 24 Jun 2020 10:26:20 -0700
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Kees Cook <keescook@chromium.org>, Will Deacon <will@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Peter Collingbourne <pcc@google.com>,
	James Morse <james.morse@arm.com>, Borislav Petkov <bp@suse.de>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>,
	Russell King <linux@armlinux.org.uk>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>, x86@kernel.org,
	clang-built-linux@googlegroups.com, linux-arch@vger.kernel.org,
	linux-efi@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 2/9] vmlinux.lds.h: Add .symtab, .strtab, and
 .shstrtab to STABS_DEBUG
Message-ID: <20200624172620.654hhjetiyzpgoxw@google.com>
References: <20200624014940.1204448-1-keescook@chromium.org>
 <20200624014940.1204448-3-keescook@chromium.org>
 <20200624153930.GA1337895@rani.riverdale.lan>
 <20200624161643.73x6navnwryckuit@google.com>
 <20200624171121.GA1377921@rani.riverdale.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20200624171121.GA1377921@rani.riverdale.lan>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=HHUTbvXU;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::644
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


On 2020-06-24, Arvind Sankar wrote:
>On Wed, Jun 24, 2020 at 09:16:43AM -0700, Fangrui Song wrote:
>>
>> On 2020-06-24, Arvind Sankar wrote:
>> >On Tue, Jun 23, 2020 at 06:49:33PM -0700, Kees Cook wrote:
>> >> When linking vmlinux with LLD, the synthetic sections .symtab, .strtab,
>> >> and .shstrtab are listed as orphaned. Add them to the STABS_DEBUG section
>> >> so there will be no warnings when --orphan-handling=warn is used more
>> >> widely. (They are added above comment as it is the more common
>> >
>> >Nit 1: is "after .comment" better than "above comment"? It's above in the
>> >sense of higher file offset, but it's below in readelf output.
>>
>> I mean this order:)
>>
>>    .comment
>>    .symtab
>>    .shstrtab
>>    .strtab
>>
>> This is the case in the absence of a linker script if at least one object file has .comment (mostly for GCC/clang version information) or the linker is LLD which adds a .comment
>>
>> >Nit 2: These aren't actually debugging sections, no? Is it better to add
>> >a new macro for it, and is there any plan to stop LLD from warning about
>> >them?
>>
>> https://reviews.llvm.org/D75149 "[ELF] --orphan-handling=: don't warn/error for unused synthesized sections"
>> described that .symtab .shstrtab .strtab are different in GNU ld.
>> Since many other GNU ld synthesized sections (.rela.dyn .plt ...) can be renamed or dropped
>> via output section descriptions, I don't understand why the 3 sections
>> can't be customized.
>
>So IIUC, lld will now warn about .rela.dyn etc only if they're non-empty?

HEAD and future 11.0.0 will not warn about unused synthesized sections
like .rela.dyn

For most synthesized sections, empty = unused.

>>
>> I created a feature request: https://sourceware.org/bugzilla/show_bug.cgi?id=26168
>> (If this is supported, it is a consistent behavior to warn for orphan
>> .symtab/.strtab/.shstrtab
>>
>> There may be 50% chance that the maintainer decides that "LLD diverges"
>> I would disagree: there is no fundamental problems with .symtab/.strtab/.shstrtab which make them special in output section descriptions or orphan handling.)
>>
>
>.shstrtab is a little special in that it can't be discarded if the ELF
>file contains any sections at all. But yeah, there's no reason they
>can't be renamed or placed in a custom location in the file.

https://sourceware.org/pipermail/binutils/2020-March/000179.html
proposes -z nosectionheader. With this option, I believe .shstrtab is
not needed. /DISCARD/ : { *(.shstrtab) }  should achieve a similar effect.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200624172620.654hhjetiyzpgoxw%40google.com.
