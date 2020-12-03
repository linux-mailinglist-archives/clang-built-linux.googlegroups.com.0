Return-Path: <clang-built-linux+bncBCS7XUWOUULBBP4UUX7AKGQEUQ4R5SQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x237.google.com (mail-oi1-x237.google.com [IPv6:2607:f8b0:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ABA92CDFAE
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Dec 2020 21:27:44 +0100 (CET)
Received: by mail-oi1-x237.google.com with SMTP id f15sf1498423oig.11
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Dec 2020 12:27:44 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607027263; cv=pass;
        d=google.com; s=arc-20160816;
        b=otqHhCqAu50KyESI0qnJmOYRv+R3sKeGYqL6XB2R90HUrPTeoC+zz47RMbwaH11ZZv
         lkOquVIPz/GUxpRiiBAC9h/Nkzj9yN33fdV1vLtYVNANwHRgKPC1JDqkcMqFCza9efmG
         SrrOp0BkUbXkmROXGs3dhrMKI91tpO4OnNFMH7b6nzN1Xvghal34UAWQI1HNbTOYpkEs
         QmXjfy4eeW/qr3EGX7HdB64E9yMUPJX3YXDaCDn1dhj62Rar9omqnybUv7ws3DE0qbe1
         Ca8rQgG9ZojI0yDtI2U5VlY36kwbGB/r3sVAXe0M6y4pDyZS2ymp1IsIXDSVeH3bkTK9
         fEEw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=P6JuHUArGllJnuzZ7J5ehxkkZGObDOhbWNgVlMspV5I=;
        b=oRW+DzXSuOfYLvIDQk6ptdrxSYsGKQC0kBFqxk5/uffGZW33P69XCHqgkGbc0SaQ1X
         FnDx15KG0xfn/bQCdUP6SgRl9xuXuU6a1R7YY022ZPjI679Zk38ANy5d1S6rW+DlZ+BA
         eqPGR46b7WI/qHGYtQENPhJF9ksHJoPo+L8AVMaR75IizMgJX/Re1l3a9FUFGYudcQDL
         cPgR3s54b/kUhi5JLx4V+oppUIV1POM/hSNqpOYHhMZ7o9qMQf+QM8atnhjxtH9DW7tJ
         kf6D/zBKf/C+sbDnGcqVFiqqetgBfsKBI5DqSi2DNcKN5VBdJYJ5d2JnHSmhWsQ6zhET
         rO5Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=P5vIYvPK;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=P6JuHUArGllJnuzZ7J5ehxkkZGObDOhbWNgVlMspV5I=;
        b=TRP50LBiUANfr2mqjHcrr0eVSaYKMFKJ6vow4LE8JNPG4pipMAYn/KV2+eOKafu+fm
         CVQy65zeXT1rofHOW1j/8Cn346JJwneOwXV9bmb6HoVnwPbcoybwXbK16zyprD/9TQu3
         wmmz1ZYgJ1dtsAbq/qrXKTQUItQvMN1LTcabzmJS1gF8CwjiI4Qi9R/LvZCr/oLHoCax
         PanF6OpNYKnjyLxoILhkVbo3Sx/gMikjiDUZdFmPhnPKUjP5YnEWSjFPbn8qPsYopqxd
         vHQGmPNQbaT0tf/HpcDB/PZVCQEQyjy57eyjEBCW4zCyk1o7caNWuIBRov+a9jy9lXDc
         m2aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=P6JuHUArGllJnuzZ7J5ehxkkZGObDOhbWNgVlMspV5I=;
        b=EmRL5PBCjeD69NHwiemwiyPYYSc8VtFjSZ09TkmQUuPpEjLmNqG0vaDk495FZZ9Amp
         9IOJsG+heamkONebDfeU0Og/7e4DGqB948mJ2jccDwRGsmRY0qCx2lIGeZkUMOyz7NLe
         6leZfbsukB8WQEBtqFE6g1hHEXxPlp9737TVQJ/hsBKEKl9xs33Vfl/Cb/cTcPAvhFZf
         jXPfJqEoDYB4qdEHWHViOGFRM6KLl5PQSNoP1ZAAPxMuO+s4qRd039hdJYPhFSt8wKQr
         td2yGr5xBYxSU5OO4FTs38Sqox7zlps5jmQ3mtjxP13kn+XF1HzLS5f227/o/lO1ogjo
         ch1w==
X-Gm-Message-State: AOAM530IgmVmcYSC2eabQf4A/dSL5enfYNkpZJb5MH+LJDzKAiBJ6akN
	vbGX3ixbuQzMbErtZVflFKc=
X-Google-Smtp-Source: ABdhPJy1Mwx45/PmV7Vjo5B3BoWOYojCICsZb46KzLNoOH1aZyfpPWWAQ15hwx3ZSfq5txEQulDK1A==
X-Received: by 2002:a05:6830:1e08:: with SMTP id s8mr854647otr.144.1607027263316;
        Thu, 03 Dec 2020 12:27:43 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:5e41:: with SMTP id h62ls454792oob.4.gmail; Thu, 03 Dec
 2020 12:27:42 -0800 (PST)
X-Received: by 2002:a4a:e70a:: with SMTP id y10mr749810oou.86.1607027262884;
        Thu, 03 Dec 2020 12:27:42 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607027262; cv=none;
        d=google.com; s=arc-20160816;
        b=yiUrPYwRHh/rXu4W2rVq8vhGQs/ysn9B3m13QHU4fjGhbZy5w0RiswSa1ZLIU0s07+
         c4EWVTO2bmjU47Pyjjamz3BIgTDv+YX+DDJSKJv6f5qrQxRUtTsPxs8laCwfcphybCwE
         RGhEkVXB1HLWuenlTgC6LXZRNkKzFHy2Z8ucOuozHfAmK9WiFTdROBDGgCaJ8jfCwHOo
         d3QDRo9uoVSWF6+hL5wQAWL13tTprxlKe9IkHTmpH4hjRnitsUgWwukN8hsBwejvP4jL
         ZDzndrIgI6gBaBAdfQ3fSrmiWY8G8RTB3ab832TyKwx+qieUaG6eEPfhZy/KSCuKFmY+
         /I4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=6c6iTUosRVrmzGiP/7D9+PLxepmiQNzcidmSqRByqjY=;
        b=uy4Z8R8NZYbSX3H7vQAi5gGAmzaD0NilF118A8p+KuCR4ThzaGVRHtJUImLrNEf/R7
         v7W3jOFzrtRR1x0E+Pupdq5TjoYk899qHPdodfc++/gxIvRdWNGQ6JMDAakXrbAQzmvT
         nGc0w3oL3u7LxzJb2M019T0l9ERTmkqyaK8lBBYJEU1wy8N9ktQUxO+uiM7QfJzlpjLI
         iw6Se8TGvJZIkboF/b1NN6gngY+X8BvdEkIe3YA3ipat0GZsIx4S9ZPBwu5Dv1Wlayde
         FqFjnSd/pp0zJhorcYKG6IvfWh83pCSkPGjTMxxY11QHLXroCDszwA9KWNqwevcViJaO
         35Mg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=P5vIYvPK;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com. [2607:f8b0:4864:20::1043])
        by gmr-mx.google.com with ESMTPS id b4si47099ots.4.2020.12.03.12.27.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Dec 2020 12:27:42 -0800 (PST)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) client-ip=2607:f8b0:4864:20::1043;
Received: by mail-pj1-x1043.google.com with SMTP id m5so1798758pjv.5
        for <clang-built-linux@googlegroups.com>; Thu, 03 Dec 2020 12:27:42 -0800 (PST)
X-Received: by 2002:a17:902:b7c3:b029:da:76bc:2aa9 with SMTP id v3-20020a170902b7c3b02900da76bc2aa9mr671331plz.21.1607027262306;
        Thu, 03 Dec 2020 12:27:42 -0800 (PST)
Received: from google.com ([2620:15c:2ce:0:a6ae:11ff:fe11:4abb])
        by smtp.gmail.com with ESMTPSA id o14sm2008267pgh.1.2020.12.03.12.27.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Dec 2020 12:27:41 -0800 (PST)
Date: Thu, 3 Dec 2020 12:27:37 -0800
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Arnd Bergmann <arnd@arndb.de>, linux-arch <linux-arch@vger.kernel.org>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	kernel test robot <lkp@intel.com>, dwmw@amazon.co.uk,
	Peter Zijlstra <peterz@infradead.org>,
	Kees Cook <keescook@chromium.org>, Sam Ravnborg <sam@ravnborg.org>,
	Jakub Jelinek <jakub@redhat.com>
Subject: Re: [PATCH] firmware_loader: Align .builtin_fw to 8
Message-ID: <20201203202737.7c4wrifqafszyd5y@google.com>
References: <20201203170529.1029105-1-maskray@google.com>
 <CAKwvOd=8trq9qndYvf8KD4_3XVfaT_BXcNZhrKP67-YH9WQL0g@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <CAKwvOd=8trq9qndYvf8KD4_3XVfaT_BXcNZhrKP67-YH9WQL0g@mail.gmail.com>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=P5vIYvPK;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1043
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

On 2020-12-03, Nick Desaulniers wrote:
>On Thu, Dec 3, 2020 at 9:05 AM Fangrui Song <maskray@google.com> wrote:
>>
>> arm64 references the start address of .builtin_fw (__start_builtin_fw)
>> with a pair of R_AARCH64_ADR_PREL_PG_HI21/R_AARCH64_LDST64_ABS_LO12_NC
>> relocations. The compiler is allowed to emit the
>> R_AARCH64_LDST64_ABS_LO12_NC relocation because struct builtin_fw in
>> include/linux/firmware.h is 8-byte aligned.
>>
>> The R_AARCH64_LDST64_ABS_LO12_NC relocation requires the address to be a
>> multiple of 8, which may not be the case if .builtin_fw is empty.
>> Unconditionally align .builtin_fw to fix the linker error.
>>
>> Fixes: 5658c76 ("firmware: allow firmware files to be built into kernel image")
>> Link: https://github.com/ClangBuiltLinux/linux/issues/1204
>> Reported-by: kernel test robot <lkp@intel.com>
>> Signed-off-by: Fangrui Song <maskray@google.com>
>> ---
>>  include/asm-generic/vmlinux.lds.h | 1 +
>>  1 file changed, 1 insertion(+)
>>
>> diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vmlinux.lds.h
>> index b2b3d81b1535..3cd4bd1193ab 100644
>> --- a/include/asm-generic/vmlinux.lds.h
>> +++ b/include/asm-generic/vmlinux.lds.h
>> @@ -459,6 +459,7 @@
>>         }                                                               \
>>                                                                         \
>>         /* Built-in firmware blobs */                                   \
>> +       ALIGN_FUNCTION();                                               \
>
>Thanks for the patch!
>
>I'm going to repeat my question from the above link
>(https://github.com/ClangBuiltLinux/linux/issues/1204#issuecomment-737610582)
>just in case it's not naive:
>
>ALIGN_FUNCTION() C preprocessor macro seems to be used to realign
>code, while STRUCT_ALIGN() seems to be used to realign data.  It looks
>to me like only data is put into .builtin_fw.  If these relocations
>require an alignment of 8, than multiples of 8 should also be fine
>(STRUCT_ALIGN in 32 for all toolchain version, except gcc 4.9 which is
>64; both are multiples of 8 though).  It looks like only structs are
>placed in .builtin_fw; ie. data.  In that case, I worry that using
>ALIGN_FUNCTION/8 might actually be under-aligning data in this
>section.

Regarding STRUCT_ALIGN (32 for GCC>4.9) in
include/asm-generic/vmlinux.lds.h, it is probably not suitable for
.builtin_fw

* Its comment is a bit unclear. It probably should mention that the
   32-byte overalignment is only for global structure variables which are
   at least 32 byte large. But this is just my observation. Adding a GCC
   maintainer to comment on this.
* Even if GCC does overalign defined global struct variables, it is unlikely
   that GCC will leverage this property for undefined `extern struct
   builtin_fw __start_builtin_fw[]` (drivers/base/firmware_loader/main.c)

To make .builtin_fw aligned, I agree that ALIGN_FUNCTION() is probably a
misuse. Maybe I should just use `. = ALIGN(8)` if the kernel linker
script prefers `. = ALIGN(8)` to an output section alignment
(https://sourceware.org/binutils/docs/ld/Output-Section-Description.html#Output-Section-Description
https://lld.llvm.org/ELF/linker_script.html#output-section-alignment)

>Though, in https://github.com/ClangBuiltLinux/linux/issues/1204#issuecomment-737625134
>you're comment:
>
>>> In GNU ld, the empty .builtin_fw is removed
>
>So that's a difference in behavior between ld.bfd and ld.lld, which is
>fine, but it makes me wonder whether we should instead or additionally
>be discarding this section explicitly via linker script when
>CONFIG_FW_LOADER is not set?

Short answer: No, we should not discard .builtin_fw

   .builtin_fw        : AT(ADDR(.builtin_fw) - LOAD_OFFSET) {
   __start_builtin_fw = .; ... }

In LLD, either a section reference (`ADDR(.builtin_fw)`) or a
non-PROVIDE symbol assignment __start_builtin_fw makes the section non-discardable.

It can be argued that discarding an output section with a symbol
assignment (GNU ld) is strange because the symbol (st_shndx) will be
defined relative to an arbitrary unrelated section. Retaining the
section can avoid some other issues.

>>         .builtin_fw        : AT(ADDR(.builtin_fw) - LOAD_OFFSET) {      \
>>                 __start_builtin_fw = .;                                 \
>>                 KEEP(*(.builtin_fw))                                    \
>> --
>> 2.29.2.576.ga3fc446d84-goog
>>
>
>
>-- 
>Thanks,
>~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201203202737.7c4wrifqafszyd5y%40google.com.
