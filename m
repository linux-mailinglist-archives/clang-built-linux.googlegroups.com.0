Return-Path: <clang-built-linux+bncBCS7XUWOUULBB37YZX3QKGQE4EPYJAY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x138.google.com (mail-il1-x138.google.com [IPv6:2607:f8b0:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FE8A2078CA
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 18:16:49 +0200 (CEST)
Received: by mail-il1-x138.google.com with SMTP id q19sf1905744ilj.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 09:16:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593015408; cv=pass;
        d=google.com; s=arc-20160816;
        b=tJKUSFzW4XUyGv5MjASoOLmd0m56PFmEhOmJzKRWPoRPOgm/kcYfh6QO+M6oSZZCii
         o9NFbEEb2gGRFSmoE0qHBPfAAehLDrDfhMchnLjgHnUT1c10944y+kA1hDZQxIkSirMF
         JGL2fjNVvzARFRcXryEpEJ6HSv5LOkdlKUs3C3F5GjVJtdgZRjQImqdPAgesIkUcLEg9
         cs/UZWxxGm3RGW9gCT3g0PY/GmFmYwf7C4pdMWEUUDbbvZ7ziplPD2d7Nv7psQ5pBJfl
         s99/s8ooRjH7d1rczKp5Z/DW4u/rcXA24fyrPVAVe7LkbzeSdO38wQ939aBep9qpCsyc
         OoWA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=+3J/am6VU1FGzCPVeyZpJhVViKnSb/14lPIzjnXeNOA=;
        b=eSjUAOVbhGr5ASFfJlV29K0E+MItswbZvixCt5wGBfzjvzWSGqX2tyJx/eWXDdnbEl
         u4NiIFxdcR6Ul0VhTk4aRaf2qoTySPSlp6VKvWG/PUd9lOPj0e/Bb64jryDoURx1Ue0H
         tyzDQfHEMSMHn3kIYWIvM3zof6ctG6Zri5IK19uw50+v1m42LlF+9Z6J7HhE+ALYZuJ1
         txytcQM0MVbriV56ECa7HlTVxdNCjZmWOEcHa7smWSJOucRq+c9h4+ezDS05VXxqdoQL
         rz7AZc0V5hCygltUgd1Z05vtmvzsv0pm2vsxgme9UGzIkkRS1KOzP2FgWH0iAArHMOCk
         vbXg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=IOKX5uP5;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=+3J/am6VU1FGzCPVeyZpJhVViKnSb/14lPIzjnXeNOA=;
        b=pO7qmOKehHSvOsZvdaAjrU36FinG0YtvVwlSqsUitzhjAdZwfnmW4OTd3jhygnSOWW
         32EpMxfdK2J4kX27yZiihUpmrevbxyP0DSK/O+j+8536Os4PyzNJMcQRXTmnkg5qKgMB
         9fRC0KquFfasndJsEA+PZL8+JoPhYcNbhoKCMo8A0DChLYhGMlggKlJan94VjVU3xp4n
         IbZrsBPao2BWHlyKIANOOs3wXrpePqej3IWRzVhojg/ICkm/2f0csup3KqTLohP1nOlp
         rCcVylWKUijTtqwIhkA3tTS4cwMcu8rV92RW+RWHzh5YkHDAuidM8ZafC3WlmXXdfkEN
         87og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+3J/am6VU1FGzCPVeyZpJhVViKnSb/14lPIzjnXeNOA=;
        b=kpjm2AF+iFClhVMRnCY44rYFJefO/stEmWg45Tzf5T6GHkTy3v9zuFI7dYJXkVFpAT
         LL5s7QizDZGCj6SMycNX8QZ2f3C96XS57/qVG+X9COkwky37NuL/H+i7WES3RuYpssG6
         GtgwHmDVScmBprH2CiKwESxK+A1wFYJdFut2QAPoPs5rBHrWg/zZm+01XgfhAmN87XnT
         JWLoKQVjs0Yhnn08hOImSfC5V7a2bqELBam7jVqDlAFtKHxnWnf036KuTjMFpvtMVGIH
         Hi45HzQCls6LrmRz4tf5rpbUV6ZmsFrcfqHstavPUNtqBeLVpmG02v5HbpppEaBptjtI
         DLgQ==
X-Gm-Message-State: AOAM531NXcXeM04EcS4m2kUOWHYdZlIh3Pwu3EZOdQv23ExdDsut1rYv
	MMN/0kR9r82c6prztczAZjM=
X-Google-Smtp-Source: ABdhPJwYfYDnts8SzvpFG1Eu2TxsLMpX4Yq9dm7i4x0i2HgxKTSE42Eimm/KzaKyLAOCqdgQzqTuuA==
X-Received: by 2002:a92:db44:: with SMTP id w4mr14547550ilq.306.1593015407924;
        Wed, 24 Jun 2020 09:16:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5e:d719:: with SMTP id v25ls593173iom.6.gmail; Wed, 24 Jun
 2020 09:16:47 -0700 (PDT)
X-Received: by 2002:a5d:9310:: with SMTP id l16mr32903905ion.194.1593015407507;
        Wed, 24 Jun 2020 09:16:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593015407; cv=none;
        d=google.com; s=arc-20160816;
        b=H0N+UdTcbFp836+7sEedQXnsmHB66GiAB8a2rKR/EAF5E7PopUqiEGChiQoNwb0Q5L
         YMeNZwCUDE1FTLp7i1sD988azaHWvRqNxOL+2c/GBBzFjaHMkOFCdanhlDKPcaQRoZv5
         j7+8JxFCTQ6PHjgtZ2h0YaNRviDd1ZUOHkjEkXJoRrygk47hS759+LrTc8VK2FO7beQl
         TxZqYRB5bsvHlkL0zGHoQ5rWSrRRsi/xIboCYDtL7+H4LRBpckqT7YRrhqrf7Um5QD60
         HPEsEQBN7+qfQL70FRUCMJ/TbSCGAE/0I+rLGvQ/d23knF7r8HQ1iQ4OG/ax5DOcE+pB
         WW9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=r9Atz1n5S97FsyRtwbW9FxEwVR3HptLSj7YkFtdgBWc=;
        b=BIaPEPplu3+rfysejK5tibI29Nwykm26jMOaEJSNK4xpnMlrRTGCeUYHAXrZJPN+2C
         U2qr9FaWRpdlJ3S9RvyoxvK0SXQQ+ry/twCokkRw01sbv5bChtv/fV7DSH/v6a4AZi+/
         JqNfbLyHZkwlw4Hka5jqKNutJPs5OyDlnLuFUSv0UFkJU8dp6HaZH1wEbjJKf4MZWEx3
         /yYLJycsTyZIZtV+pxUtXpW6Rp7YvkOKJQAsEo7HQNel4aIt/4Dg8KH2WQl6bb2R3Jvm
         pvVBzOXyKhTT6kDKsYAjRWNCYaltRa+4VVKRyVk4Xyh35xuq4EdiJD8RTOIF+9ItoP5V
         0lkA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=IOKX5uP5;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id z11si1083338ilq.5.2020.06.24.09.16.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Jun 2020 09:16:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Received: by mail-pl1-x644.google.com with SMTP id f2so1232228plr.8
        for <clang-built-linux@googlegroups.com>; Wed, 24 Jun 2020 09:16:47 -0700 (PDT)
X-Received: by 2002:a17:90a:7c4e:: with SMTP id e14mr29364901pjl.175.1593015406860;
        Wed, 24 Jun 2020 09:16:46 -0700 (PDT)
Received: from google.com ([2620:15c:2ce:0:9efe:9f1:9267:2b27])
        by smtp.gmail.com with ESMTPSA id oc6sm6480133pjb.43.2020.06.24.09.16.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Jun 2020 09:16:46 -0700 (PDT)
Date: Wed, 24 Jun 2020 09:16:43 -0700
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
Message-ID: <20200624161643.73x6navnwryckuit@google.com>
References: <20200624014940.1204448-1-keescook@chromium.org>
 <20200624014940.1204448-3-keescook@chromium.org>
 <20200624153930.GA1337895@rani.riverdale.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20200624153930.GA1337895@rani.riverdale.lan>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=IOKX5uP5;       spf=pass
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
>On Tue, Jun 23, 2020 at 06:49:33PM -0700, Kees Cook wrote:
>> When linking vmlinux with LLD, the synthetic sections .symtab, .strtab,
>> and .shstrtab are listed as orphaned. Add them to the STABS_DEBUG section
>> so there will be no warnings when --orphan-handling=warn is used more
>> widely. (They are added above comment as it is the more common
>
>Nit 1: is "after .comment" better than "above comment"? It's above in the
>sense of higher file offset, but it's below in readelf output.

I mean this order:)

   .comment
   .symtab
   .shstrtab
   .strtab

This is the case in the absence of a linker script if at least one object file has .comment (mostly for GCC/clang version information) or the linker is LLD which adds a .comment

>Nit 2: These aren't actually debugging sections, no? Is it better to add
>a new macro for it, and is there any plan to stop LLD from warning about
>them?

https://reviews.llvm.org/D75149 "[ELF] --orphan-handling=: don't warn/error for unused synthesized sections"
described that .symtab .shstrtab .strtab are different in GNU ld.
Since many other GNU ld synthesized sections (.rela.dyn .plt ...) can be renamed or dropped
via output section descriptions, I don't understand why the 3 sections
can't be customized.

I created a feature request: https://sourceware.org/bugzilla/show_bug.cgi?id=26168
(If this is supported, it is a consistent behavior to warn for orphan
.symtab/.strtab/.shstrtab

There may be 50% chance that the maintainer decides that "LLD diverges"
I would disagree: there is no fundamental problems with .symtab/.strtab/.shstrtab which make them special in output section descriptions or orphan handling.)

>> order[1].)
>>
>> ld.lld: warning: <internal>:(.symtab) is being placed in '.symtab'
>> ld.lld: warning: <internal>:(.shstrtab) is being placed in '.shstrtab'
>> ld.lld: warning: <internal>:(.strtab) is being placed in '.strtab'
>>
>> [1] https://lore.kernel.org/lkml/20200622224928.o2a7jkq33guxfci4@google.com/
>>
>> Reported-by: Fangrui Song <maskray@google.com>
>> Reviewed-by: Fangrui Song <maskray@google.com>
>> Signed-off-by: Kees Cook <keescook@chromium.org>
>> ---
>>  include/asm-generic/vmlinux.lds.h | 5 ++++-
>>  1 file changed, 4 insertions(+), 1 deletion(-)
>>
>> diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vmlinux.lds.h
>> index 1248a206be8d..8e71757f485b 100644
>> --- a/include/asm-generic/vmlinux.lds.h
>> +++ b/include/asm-generic/vmlinux.lds.h
>> @@ -792,7 +792,10 @@
>>  		.stab.exclstr 0 : { *(.stab.exclstr) }			\
>>  		.stab.index 0 : { *(.stab.index) }			\
>>  		.stab.indexstr 0 : { *(.stab.indexstr) }		\
>> -		.comment 0 : { *(.comment) }
>> +		.comment 0 : { *(.comment) }				\
>> +		.symtab 0 : { *(.symtab) }				\
>> +		.strtab 0 : { *(.strtab) }				\
>> +		.shstrtab 0 : { *(.shstrtab) }
>>
>>  #ifdef CONFIG_GENERIC_BUG
>>  #define BUG_TABLE							\
>> --
>> 2.25.1
>>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200624161643.73x6navnwryckuit%40google.com.
