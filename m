Return-Path: <clang-built-linux+bncBCH6BRHDXYLRB6UXWOCAMGQEEKLCGYI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe39.google.com (mail-vs1-xe39.google.com [IPv6:2607:f8b0:4864:20::e39])
	by mail.lfdr.de (Postfix) with ESMTPS id 82E9337052A
	for <lists+clang-built-linux@lfdr.de>; Sat,  1 May 2021 05:33:15 +0200 (CEST)
Received: by mail-vs1-xe39.google.com with SMTP id q4-20020a67cc040000b02902221bedbe6bsf283268vsl.8
        for <lists+clang-built-linux@lfdr.de>; Fri, 30 Apr 2021 20:33:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619839994; cv=pass;
        d=google.com; s=arc-20160816;
        b=mvkZa8OIKb5DCEAO/Nv/KerluhQYPZG/rFkP+WuzWUHyICUHcPSLNYCtD8+Zdto/IN
         uVIWWeUQJPgKFSs7cT3nqwayT60dFu5nBYs5zhWzt3+B5RyYBem03qsxDI4/Gh38Wci6
         S2Z1artocsOUKxAGDJfsvX3brTk9i23kOgBxnUdLyYjyaxIKQ+3PSb+Q5cVsO4gC98QV
         B/C39xg69Zn2oqpmR9XrUp0TcoSyAE0wA97uRaq/Qo31LcdMNP5rj0oqVZnibYeE6F7G
         ZWcwhch0oj9VLQBBb0lF3bQR1UdBgMAYnq2+dkjPwk8zsYf+xCalRBRDn1NNVpnC7FID
         ojiA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=jQJpToyAYJzSPB84pksWN+NfwmRlTQjqQv8XMId26aM=;
        b=lLiCpK1PYA32ThHucopv15lty4BxBq2s87f+V7UuqyEE5OzKM1GsiGfm1E9dn84Dup
         bp5x/0eAGmM/5e0G23Edld2fSDuEau1zfU4H/0XwlPT5Ck+4V4aT7zxQt7UP8ZImv8Z+
         HSS/fvaPSYBU0M67bjkCRZ9ehAIdMn7kC6HFoUMmSSB5oo41rHVCsXgsgvk4JkvmMjtH
         C0EMhW0aUYdprF5gYm+6bUGhrp3rZ2meEPkoHFAizGZqhSmBpkd+nOtdAn3RafYda+j1
         JopWjewLzP1jzrTEF0IC+z+Pz9qB7hDOt2abxskIrB6O/c6d8aNoB4ukrnpvorB0RCA8
         AGYA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="jG+/9m2s";
       spf=pass (google.com: domain of tstellar@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=tstellar@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=jQJpToyAYJzSPB84pksWN+NfwmRlTQjqQv8XMId26aM=;
        b=MuLy2tqMbFUJKQH2B3Xe51J2zS/0glKfwic8JcJyqTArslG1bPKLpcRK+Wd5Ku+R4W
         FX2WlvoFOFr0DEpAcnlHGURdAxMaiP8fl8OqWszHRLb37cVTu3Ew0sFMW2h/Xt4F7rVR
         EYmrpt8sNvGt9XcrIFzFskiZ/mw8G/YEC3WFGPm48o1Ty06SMFmBmp4DEZ6T+EfZNbJ+
         Egpj+hTz4hPeOHKJPGLDkANbA0v1yHiQpAEUVvJup8nUy9slyN8tP/q3TEkJoyYXiFdI
         hKjzh/+hn8V99kux2aqP8pfPFpwIubwLMmSwYj2N8wuCQHZew3hEpcLJWPLLbJNg2qy0
         Qk3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=jQJpToyAYJzSPB84pksWN+NfwmRlTQjqQv8XMId26aM=;
        b=HfzSsz3uAeWJpkurNjOVtvJZAkVFcAtEc05gygkd0VJt2nnmo1pwiubl27y8U2J0Bc
         PXXyaBazFHtTMuOIau8XJsD+aKEuXYAgbdRYspc3M21JIHA7f/9ZWrkDVulN28l8l4Fd
         AHR95AU3ebkNJBcd2VEzr6mz4h7OqHM+5OXs/XzWq3MZntQkOSaNmIyjrtJXSFaD/il1
         644AIEltylOyN4DQEMrT+iDFwZdNYFbFFI06832odurjeNMVpJ1R5jKzxos3u2f43fPc
         KzzsBJIJya6Q81hEFuRFXU5cFGGV0sASDHOL2chrJupl9hy7e2vJYTp4dozDpzZERjl9
         SNaQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532La8AhP+5gor/X+Fk1OWSqn6gMO8c/7txHOIkrbrTWH1Sg8sPE
	NU4PBG0fPcXP71N5Iro5aFY=
X-Google-Smtp-Source: ABdhPJy3zDHBhajqpSy90ikdC73UXB2JMyanGJb2Kw0YpTtwvHRbBy+wxAGTx8dXwXhZWOPkikAdLQ==
X-Received: by 2002:ab0:2a8d:: with SMTP id h13mr8197968uar.24.1619839994323;
        Fri, 30 Apr 2021 20:33:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:2702:: with SMTP id n2ls1658836vsn.2.gmail; Fri, 30 Apr
 2021 20:33:13 -0700 (PDT)
X-Received: by 2002:a67:7383:: with SMTP id o125mr9670697vsc.3.1619839993674;
        Fri, 30 Apr 2021 20:33:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619839993; cv=none;
        d=google.com; s=arc-20160816;
        b=VgyV+431URuqvRtxe3LmD0+dzB0JdAuVcFgWWxziE6wzxvUG1pBxIJ30OI5hiI7lCi
         DFn/IzQ6gLp09fFUvl+qtFfrcOnzAddPb63R12C3I/ejctZ3clsu6pQW6qzBBadn8XtD
         QuCvVoGxptsM77IGTWHiBUShlZJtvzoRVToR5UCAcd6MMOPIT6o3D0VFei+v+8OXbgdX
         SE2zLQ0D8xpKuE8BUVE3O/a8guNIuRyHIL6IS/dhRjBcTWGBIXG9JP6zwOGKxwG9LHCB
         mLMJfYQ3UdIMFBXx4q88qM3BUndmp9nFLgw2X7m/knyJh5LAv251rYR/fFckXqcwUk27
         tR9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=0ic6WLfM9JZHskkeRs9yuPGyluIWG+pwNAwtsEHdTo4=;
        b=YBHO8dYD8Q5bmjr7dpVNlkt8d89lB00DkP1y7Rv2diraHWVO3UOKbrWhZe7ad6VhJG
         g9p/ZraYfDKZAJeHFqUF25CZYzJvEH9zbQj43I40U/urbx1wdSMEhtJFVlq3iQWKxKlB
         D2JxcdMWQWwhhodlXFcLpiV3vjw9U3G8c1sL0Ps2S2/bk2271C7x52TO0EzB2LwaROgO
         cMJDFaBQewCWD6MB/jO/lQJKxoIglbsnj/fWfvAR0RI7KAWdQeudqaQn0vP/FDUmQWwq
         9Nab0pjCoBoxaVMhlGsFFGVd2D3mqMu4XdMSLZ0toZtrJRaWNmn7Cu7GD/mkmLcx/4q9
         T6rw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="jG+/9m2s";
       spf=pass (google.com: domain of tstellar@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=tstellar@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.133.124])
        by gmr-mx.google.com with ESMTPS id f9si780645vkm.2.2021.04.30.20.33.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Apr 2021 20:33:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of tstellar@redhat.com designates 170.10.133.124 as permitted sender) client-ip=170.10.133.124;
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com
 [209.85.219.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-462-E_Ip46yPPOmuUWgzAfL0Pg-1; Fri, 30 Apr 2021 23:32:33 -0400
X-MC-Unique: E_Ip46yPPOmuUWgzAfL0Pg-1
Received: by mail-qv1-f70.google.com with SMTP id w9-20020a0cdf890000b029019aa511c767so109441qvl.18
        for <clang-built-linux@googlegroups.com>; Fri, 30 Apr 2021 20:32:33 -0700 (PDT)
X-Received: by 2002:a05:620a:29cc:: with SMTP id s12mr8967720qkp.72.1619839952682;
        Fri, 30 Apr 2021 20:32:32 -0700 (PDT)
X-Received: by 2002:a05:620a:29cc:: with SMTP id s12mr8967712qkp.72.1619839952465;
        Fri, 30 Apr 2021 20:32:32 -0700 (PDT)
Received: from tstellar.remote.csb (97-120-157-68.ptld.qwest.net. [97.120.157.68])
        by smtp.gmail.com with ESMTPSA id r18sm3668831qtn.90.2021.04.30.20.32.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Apr 2021 20:32:32 -0700 (PDT)
Subject: Re: Very slow clang kernel config ..
To: Nick Desaulniers <ndesaulniers@google.com>,
 Linus Torvalds <torvalds@linux-foundation.org>
Cc: Masahiro Yamada <masahiroy@kernel.org>,
 Nathan Chancellor <nathan@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Fangrui Song <maskray@google.com>, Serge Guelton <sguelton@redhat.com>,
 Sylvestre Ledru <sylvestre@mozilla.com>
References: <CAHk-=wjmNOoX8iPtYsM8PVa+7DE1=5bv-XVe_egP0ZOiuT=7CQ@mail.gmail.com>
 <CAKwvOdmMF_v9TzBtFn2S1qSS_yCDO8D-u3WhBehUM7gzjcdjUQ@mail.gmail.com>
 <CAKwvOdk+V2dc31guafFM=N2ez4SrwCmah+mimUG3MzPMx_2efQ@mail.gmail.com>
 <CAKwvOdn3uXniVedgtpD8QFAd-hdVuVjGPa4-n0h64PTxT4XhWg@mail.gmail.com>
 <CAKwvOdm3D=dqKw=kx46PLaiqfHOZJL3QFKGc8kxqJqpwdFFWqw@mail.gmail.com>
 <CAKwvOdkp_P8BCtFuKqDrtC_=A89ZfDf66Yr3FL2e=ojwv4KaMA@mail.gmail.com>
 <CAHk-=wi1yiBBr3b3RbCEte6-yzAApsZN5zRdr3xoW8Av9jOX=Q@mail.gmail.com>
 <CAKwvOdk0nxxUATg2jEKgx4HutXCMXcW92SX3DT+uCTgqBwQHBg@mail.gmail.com>
From: Tom Stellard <tstellar@redhat.com>
Message-ID: <1c5e05fa-a246-9456-ff4e-287960acb18c@redhat.com>
Date: Fri, 30 Apr 2021 20:32:29 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.1
MIME-Version: 1.0
In-Reply-To: <CAKwvOdk0nxxUATg2jEKgx4HutXCMXcW92SX3DT+uCTgqBwQHBg@mail.gmail.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: tstellar@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b="jG+/9m2s";
       spf=pass (google.com: domain of tstellar@redhat.com designates
 170.10.133.124 as permitted sender) smtp.mailfrom=tstellar@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

On 4/30/21 6:48 PM, Nick Desaulniers wrote:
> On Fri, Apr 30, 2021 at 6:22 PM Linus Torvalds
> <torvalds@linux-foundation.org> wrote:
>>
>> On Fri, Apr 30, 2021 at 5:25 PM Nick Desaulniers
>> <ndesaulniers@google.com> wrote:
>>>
>>> Ah, no, sorry, these are the runtime link editor/loader. So probably
>>> spending quite some time resolving symbols in large binaries.
>>
>> Yeah. Appended is the profile I see when I profile that "make
>> oldconfig", so about 45% of all time seems to be spent in just symbol
>> lookup and relocation.
>>
>> And a fair amount of time just creating and tearing down that huge
>> executable (with a lot of copy-on-write overhead too), with the kernel
>> side of that being another 15%. The cost of that is likely also fairly
>> directly linked to all the dynamic linking costs, which brings in all
>> that data.
>>
>> Just to compare, btw, this is the symbol lookup overhead for the gcc case:
>>
>>     1.43%  ld-2.33.so             do_lookup_x
>>     0.96%  ld-2.33.so             _dl_relocate_object
>>     0.69%  ld-2.33.so             _dl_lookup_symbol_x
>>
>> so it really does seem to be something very odd going on with the clang binary.
>>
>> Maybe the Fedora binary is built some odd way, but it's likely just
>> the default clang build.
>>
>>               Linus
>>
>> ----
>>    23.59%  ld-2.33.so          _dl_lookup_symbol_x
>>    11.41%  ld-2.33.so          _dl_relocate_object
>>     9.95%  ld-2.33.so          do_lookup_x
>>     4.00%  [kernel.vmlinux]    copy_page
>>     3.98%  [kernel.vmlinux]    next_uptodate_page
>>     3.05%  [kernel.vmlinux]    zap_pte_range
>>     1.81%  [kernel.vmlinux]    clear_page_rep
>>     1.68%  [kernel.vmlinux]    asm_exc_page_fault
>>     1.33%  ld-2.33.so          strcmp
>>     1.33%  ld-2.33.so          check_match
> 
> 47.61% spent in symbol table lookup. Nice. (Not counting probably a
> fair amount of the libc calls below).
> 
>>     0.92%  libLLVM-12.so       llvm::StringMapImpl::LookupBucketFor
> 
> ^ wait a minute; notice how in your profile the `Shared Object` is
> attributed to `libLLVM-12.so` while mine is `clang-13`?  Clang can be
> built as either having libllvm statically linked or dynamically; see
> the cmake variables
> LLVM_BUILD_LLVM_DYLIB:BOOL
> LLVM_LINK_LLVM_DYLIB:BOOL
> BUILD_SHARED_LIBS:BOOL
> https://llvm.org/docs/CMake.html
> 
> I think those are frowned upon; useful for cutting down on developers
> iteration speed due to not having to relink llvm when developing
> clang. But shipping that in production? I just checked and it doesn't
> look like we do that for AOSP's build of LLVM.
> 

BUILD_SHARED_LIBS is the only one that is discouraged and we don't use
that in Fedora any more.  We just use LLVM_LINK_LLVM_DYLIB and the
clang equivalent.

> Tom, is one of the above intentionally set for clang builds on Fedora?
> I'm guessing it's intentional that there are packages for
> libLLVM-12.so and libclang-cpp.so.12, perhaps they have other
> dependents?
> 

Yes, it's intentional.  Dynamic linking libraries from other packages is
the Fedora policy[1], and clang and llvm are separate packages (in Fedora).

- Tom

[1] https://docs.fedoraproject.org/en-US/packaging-guidelines/#_statically_linking_executables

>>     0.83%  [kernel.vmlinux]    rmqueue_bulk
>>     0.77%  conf                yylex
>>     0.75%  libc-2.33.so        __gconv_transform_utf8_internal
>>     0.74%  libc-2.33.so        _int_malloc
>>     0.69%  libc-2.33.so        __strlen_avx2
>>     0.62%  [kernel.vmlinux]    pagecache_get_page
>>     0.58%  [kernel.vmlinux]    page_remove_rmap
>>     0.56%  [kernel.vmlinux]    __handle_mm_fault
>>     0.54%  [kernel.vmlinux]    filemap_map_pages
>>     0.54%  libc-2.33.so        __strcmp_avx2
>>     0.54%  [kernel.vmlinux]    __free_one_page
>>     0.52%  [kernel.vmlinux]    release_pages

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1c5e05fa-a246-9456-ff4e-287960acb18c%40redhat.com.
