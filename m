Return-Path: <clang-built-linux+bncBDY3L7WOT4DBBX6MW6CAMGQELHTQ4IA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x438.google.com (mail-wr1-x438.google.com [IPv6:2a00:1450:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 102BD370955
	for <lists+clang-built-linux@lfdr.de>; Sun,  2 May 2021 01:38:08 +0200 (CEST)
Received: by mail-wr1-x438.google.com with SMTP id t18-20020adfdc120000b02900ffe4432d8bsf1368226wri.6
        for <lists+clang-built-linux@lfdr.de>; Sat, 01 May 2021 16:38:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619912287; cv=pass;
        d=google.com; s=arc-20160816;
        b=oPyr299DLzD7euUYHHdRWr3arLlhelTmO0Hi/r8hkcM0iif01jKwdC3rpHw5fvjTA1
         LkQ6/A7+7S+ry9aiC8gxSPYD1hr/Mspdma/UxLuXRVnzPht4jfWLKIMbpZboJE2wokZL
         ika1ki390rT90EI6EVuz2kqf3z5nTR+Ygm+BCBqjJJwaf72+TkI/yZWGG/G6j73ZHZOR
         UkRBkuyUBPXp/LMK3+6HbUxfVmTebHfLRbaVO/Lw/fFXiBSt0be/Mn+dBIVuufLcWY8J
         +dLvNgAe2jmtkD+3SdKH2kAhhnQtu6HMQAtInk7dH42mez/fN0nCqrAyplr8Jrmpufcg
         cmYQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=NxYQ5iyAzbi/pQRzqhB34LjpThi4DL1DzhzUFstImKQ=;
        b=GBsLM7NLQX8B5+y+ezC+soKzaJCTao55QpkALuKynGdsCExshe0+nsoFKucmnM59+r
         QHc7DEhu0zx2wTYWyfLnXpA4+F8iBZ+c6QaS1jSwkn8XnJ910rrGN5nuc6XB5IketFt7
         dCEmENGDl79Fhn0/8FgPysAtPFIRqrJhE47MUmfBE1TzWac2240lC5ZpM0HvK4N0VN9v
         Bjf0UmkVpnf4bGhdFtRY2gnnt/s+gFUs29AB9xdCkpxYzSJfGvWvRP5PNvcnqIen2nYS
         2s+UNnS+6FVnT5qvf6Yh0QNEMe9EWbPs5xT90hOSJz+RXce3ouAi3gmmyG3JL1wW8979
         Dxqw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of mh@glandium.org designates 2a02:20c8:2640::2 as permitted sender) smtp.mailfrom=mh@glandium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=NxYQ5iyAzbi/pQRzqhB34LjpThi4DL1DzhzUFstImKQ=;
        b=nIMraZbhXhdJKN7sb+oWPSuWbsDr9ByFYUnprUQu4wiUs2Xe9J+HgFVXzNiXOMUOoR
         y4kjukM5kOrE8ZehrG0kVDNwNQ9uN/dLiM+oOFWOvlHtgwPhwlyXkVuTj+d8kaOXkKCk
         ZJpshyAEpEunvQ9TMf2d6OC+FwcDYdHeA7a6vwbOcGrQMk8d5LNFA/U+sQvavBsbro9F
         3CUmBpnyGVYmtghIZmAJXLNc3KwyftbBweLwEittomiOYgvIDf4uoI1YVmCc+tS96af7
         DWpYsk5ueNGc53pZ/vAcmYDkq4pznIOcnKJ0vJBwAM5mYTLC7ja1i5B+U72zCH+Oq1sK
         ZZLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=NxYQ5iyAzbi/pQRzqhB34LjpThi4DL1DzhzUFstImKQ=;
        b=oiYCiG/N4Eo0V3s8gZh2jsj9e6TZMeeqN9Oh6SwN9KLyqbx/LnzBCCajLSggVJvM+o
         RyoVWVijUh204I6L2P4+1hLeWzOv/HTwuR75GJGc0jojxLYSO6F+m2ZPMT87xSc8W9lm
         GzTmJsgUMryRsmT8Azw3KBYIjR98S3DxqO8zDGymH/lLYT2KyDIrDA34JahvElmpS1DP
         awCxxh5BU9jTK28U/ZjnOCzbLE9C5T+aWBUdx7h3nhHhIg6FaT9oYTYP9sUpW13PY24x
         qPidh8WLCDUwUVFItVqZ7ruOqncR70gbntENiSKWXRfqapUZ6VtwmiLbAuZ+iu47wokh
         ahfA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532jxJ/xZeG3JLyYFLJiomXoV3siU2aLveD+08IqF+brEzs4XxWp
	f1J/VXu5sMxZYccSPEo0A/I=
X-Google-Smtp-Source: ABdhPJwPF+MrpDNqbg3o3L16NW5d9PArIK87hX45K894BdTTKTyWxj1DZzyAGIIGF8nmXz+qIzIxtg==
X-Received: by 2002:a1c:f204:: with SMTP id s4mr13662609wmc.8.1619912287701;
        Sat, 01 May 2021 16:38:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:600c:1909:: with SMTP id j9ls180963wmq.3.canary-gmail;
 Sat, 01 May 2021 16:38:06 -0700 (PDT)
X-Received: by 2002:a1c:4302:: with SMTP id q2mr8587684wma.1.1619912286760;
        Sat, 01 May 2021 16:38:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619912286; cv=none;
        d=google.com; s=arc-20160816;
        b=PR9rFZSJe/3TNScDCbBDndPxHVMcQ4tMRxBbWgdFALnoHIxJYqao6BftyBkFqDYTMc
         a3pQsUjbglVrFHuY36YZp1hnd+nM6OiG3JHrFLtoCiKqKGfHr1hhgjC3Hf8eOKVAmiLz
         yv9zY/SaR5ARYRt9q5HHGnCN5tczFfYW8A9DlYmXuWldDqHteYaqYWC7LSSY02e2WJ/q
         jaSS60yGruGoHYKB4VslY1fJVeXrazi4eA4d7DvdJo6VAl6y62EMXFD58ik/edLolDsq
         CjVGXUezwSs7Qv40TqQfFockcs7abvD2Upg7MmwOd8rFLuVRZNWx2UF2dHy6Hk2/tLNK
         NrOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=z9kPgoe+TFJguSOx0d+kkU5YLn+A9XKtJbjFp+0lcG0=;
        b=Iok3ZSxDgfE5rKQlJfLqi8gjrIEVENDD2A1x40h50fmT1N/6rEnTahBetbiLALQ97E
         lnb324xFj7qDmbKNO3QuJRWXNh1mihOE1ldCLJPw65NlukbTaZqs0Q7Kz2qPtQYeEu01
         4Tka7o/y1wWXGpZrZGQkZpxsht4Ij0AZS4lf9lwM80jxdHD3PV9yxe23rOHXj0iRpVzx
         nM/KB0FDW2lcu3qWK133hP3dAinwODCtXX0BcWwKouf+4D505MmRfHyBYQ9k0/oZImth
         YmYRkAhIVLgu9hBrv+fLKsfzpwAfH5wF49Yj4OoKlY/CV2MNXlOePVquLO4mg2at2Xcc
         yJ5Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of mh@glandium.org designates 2a02:20c8:2640::2 as permitted sender) smtp.mailfrom=mh@glandium.org
Received: from vuizook.err.no (vuizook.err.no. [2a02:20c8:2640::2])
        by gmr-mx.google.com with ESMTPS id l5si511075wrs.0.2021.05.01.16.38.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 01 May 2021 16:38:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh@glandium.org designates 2a02:20c8:2640::2 as permitted sender) client-ip=2a02:20c8:2640::2;
Received: from [2400:4160:1877:2b00:fc5f:fa70:7483:1006] (helo=glandium.org)
	by vuizook.err.no with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mh@glandium.org>)
	id 1lczBQ-0005em-Kb; Sat, 01 May 2021 23:38:01 +0000
Received: from glandium by goemon.lan with local (Exim 4.92)
	(envelope-from <mh@glandium.org>)
	id 1lczBK-0005aQ-5j; Sun, 02 May 2021 08:37:54 +0900
Date: Sun, 2 May 2021 08:37:54 +0900
From: Mike Hommey <mh@glandium.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Linus Torvalds <torvalds@linux-foundation.org>,
	Tom Stellard <tstellar@redhat.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Fangrui Song <maskray@google.com>,
	Serge Guelton <sguelton@redhat.com>,
	Sylvestre Ledru <sylvestre@mozilla.com>
Subject: Re: Very slow clang kernel config ..
Message-ID: <20210501233754.4he27eoteqvplywu@glandium.org>
References: <CAHk-=wjmNOoX8iPtYsM8PVa+7DE1=5bv-XVe_egP0ZOiuT=7CQ@mail.gmail.com>
 <CAKwvOdmMF_v9TzBtFn2S1qSS_yCDO8D-u3WhBehUM7gzjcdjUQ@mail.gmail.com>
 <CAKwvOdk+V2dc31guafFM=N2ez4SrwCmah+mimUG3MzPMx_2efQ@mail.gmail.com>
 <CAKwvOdn3uXniVedgtpD8QFAd-hdVuVjGPa4-n0h64PTxT4XhWg@mail.gmail.com>
 <CAKwvOdm3D=dqKw=kx46PLaiqfHOZJL3QFKGc8kxqJqpwdFFWqw@mail.gmail.com>
 <CAKwvOdkp_P8BCtFuKqDrtC_=A89ZfDf66Yr3FL2e=ojwv4KaMA@mail.gmail.com>
 <CAHk-=wi1yiBBr3b3RbCEte6-yzAApsZN5zRdr3xoW8Av9jOX=Q@mail.gmail.com>
 <CAKwvOdk0nxxUATg2jEKgx4HutXCMXcW92SX3DT+uCTgqBwQHBg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdk0nxxUATg2jEKgx4HutXCMXcW92SX3DT+uCTgqBwQHBg@mail.gmail.com>
X-GPG-Fingerprint: 182E 161D 1130 B9FC CD7D  B167 E42A A04F A6AA 8C72
User-Agent: NeoMutt/20180716
X-Spam-Status: (score 2.2): No, score=2.2 required=5.0 tests=RDNS_NONE,SPF_FAIL,SPF_HELO_FAIL autolearn=disabled version=3.4.2
X-Original-Sender: mh@glandium.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of mh@glandium.org designates 2a02:20c8:2640::2 as
 permitted sender) smtp.mailfrom=mh@glandium.org
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

On Fri, Apr 30, 2021 at 06:48:11PM -0700, Nick Desaulniers wrote:
> On Fri, Apr 30, 2021 at 6:22 PM Linus Torvalds
> <torvalds@linux-foundation.org> wrote:
> >
> > On Fri, Apr 30, 2021 at 5:25 PM Nick Desaulniers
> > <ndesaulniers@google.com> wrote:
> > >
> > > Ah, no, sorry, these are the runtime link editor/loader. So probably
> > > spending quite some time resolving symbols in large binaries.
> >
> > Yeah. Appended is the profile I see when I profile that "make
> > oldconfig", so about 45% of all time seems to be spent in just symbol
> > lookup and relocation.
> >
> > And a fair amount of time just creating and tearing down that huge
> > executable (with a lot of copy-on-write overhead too), with the kernel
> > side of that being another 15%. The cost of that is likely also fairly
> > directly linked to all the dynamic linking costs, which brings in all
> > that data.
> >
> > Just to compare, btw, this is the symbol lookup overhead for the gcc case:
> >
> >    1.43%  ld-2.33.so             do_lookup_x
> >    0.96%  ld-2.33.so             _dl_relocate_object
> >    0.69%  ld-2.33.so             _dl_lookup_symbol_x
> >
> > so it really does seem to be something very odd going on with the clang binary.
> >
> > Maybe the Fedora binary is built some odd way, but it's likely just
> > the default clang build.
> >
> >              Linus
> >
> > ----
> >   23.59%  ld-2.33.so          _dl_lookup_symbol_x
> >   11.41%  ld-2.33.so          _dl_relocate_object
> >    9.95%  ld-2.33.so          do_lookup_x
> >    4.00%  [kernel.vmlinux]    copy_page
> >    3.98%  [kernel.vmlinux]    next_uptodate_page
> >    3.05%  [kernel.vmlinux]    zap_pte_range
> >    1.81%  [kernel.vmlinux]    clear_page_rep
> >    1.68%  [kernel.vmlinux]    asm_exc_page_fault
> >    1.33%  ld-2.33.so          strcmp
> >    1.33%  ld-2.33.so          check_match
> 
> 47.61% spent in symbol table lookup. Nice. (Not counting probably a
> fair amount of the libc calls below).
> 
> >    0.92%  libLLVM-12.so       llvm::StringMapImpl::LookupBucketFor
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
> Tom, is one of the above intentionally set for clang builds on Fedora?
> I'm guessing it's intentional that there are packages for
> libLLVM-12.so and libclang-cpp.so.12, perhaps they have other
> dependents?

Have you tried building clang/llvm with -Bsymbolic-functions?

Mike

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210501233754.4he27eoteqvplywu%40glandium.org.
