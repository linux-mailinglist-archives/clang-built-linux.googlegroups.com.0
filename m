Return-Path: <clang-built-linux+bncBCS7XUWOUULBBRUQYGCAMGQEP7MD7MY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x539.google.com (mail-pg1-x539.google.com [IPv6:2607:f8b0:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AF1B37200E
	for <lists+clang-built-linux@lfdr.de>; Mon,  3 May 2021 21:00:24 +0200 (CEST)
Received: by mail-pg1-x539.google.com with SMTP id g5-20020a63f4050000b02901f6c7b9a6d0sf3441532pgi.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 03 May 2021 12:00:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620068423; cv=pass;
        d=google.com; s=arc-20160816;
        b=EjnTPS/n1JdPAQ0pevwBH/XC4K+eZt5103q42SiZMzAjMEjpzvyf0fBrd4AE0Xry1D
         yOzUHk01TPKkdNipYcThRoGX11z9rKN8vNnjAV92PozAyTc4YpgzqUBEfVqp43gwQKO5
         QZG9Wa2Jr/BZZVFEV4DKY+sxaQkMoQJNmrohlm6TwiOlrvNUBkHvmYFEZNgRtXNPOL0e
         FElsboyCfDtdGt287LGTi3tbVUa91gB41Kg5ig1ioKs73xg8x0RqJkbUXknfdWU8nhU0
         YJQuCWA7GdzIVIhJ10n7l8dLzZ8UIJOdlmKf92D0n4mlexRcewjcRVVIwO5+qHSNqlpa
         j5Hg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=tYUqvqnQHC/5lnfIgeYVrY6kor6j3SgV7v9FepEhgBQ=;
        b=Ol6O8M3Jhtts/7TvixX71rfYdqojJ+Aep49sps2MBrnOC1BZgOxoxqrX+WXY5AQFtT
         1i0dBowMlk/Ws4z31gW6gB05Sn1FWfdn/1aocIKATPnRIUsWJE0yagPu7kaTpOBb+GXM
         Ev64dXj+LFe9UwN9piwxf66cU2vSSSpU/VOp4V1T4N2ueld6P4c8L3BwbTH0FMQBIs3S
         O9UCm8aB6UDocXXge4rpuQv2CqwUJfKKkNenvHRV9JDwZqA1gYI9Uetptdc0v7KUUVQf
         kfpGR26owi94JRaVfjWfwzjDRyOWNAXmgqmW4R8iqvo+NmFgwF9h3KphwXw6YKw+Tsik
         WWVg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=RsH4uqpO;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::42f as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=tYUqvqnQHC/5lnfIgeYVrY6kor6j3SgV7v9FepEhgBQ=;
        b=kInuHgAoP5GxVRpRON/DuxBSwQqJvBHDdyR807Ur2Pghqcr2MBaVD1PaHfOtDrSCqz
         m7Ij7yEldYgnlfnDQJZFUS5+/dBCpc1lZYDwskbWsyMtf/jhLOaHBnL4jy0sxyrwBESk
         2iYfoSgTIywGiL8n9Sz6b6ZyKnMU3VlSnnxtgNlMEDr4O/jh0eYHrzpgws9lSxeLx8u+
         M/OvYAm2MW1k90bTOwjSUl6tZdTWERT89iPwlyD9ubeJ7IL+w5E1ljE6YKa1W/NqGBpP
         vglAMAKJvAqpMnK6rgox4QY83YE/30myF+6CHVbzQJNY1awXr5ZhMcK1qvfB4cV1Ey2G
         tVCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tYUqvqnQHC/5lnfIgeYVrY6kor6j3SgV7v9FepEhgBQ=;
        b=tty0RoKZC9P4RfE0MweVyPFUUj/8M2qRVfRQXcdflWFRrCln40H7XzhDI02EVOn3Ob
         fHAcK2HijkYDP6yISvJmCt5HqG7dha+b+qEUHPhT9P41/ooE7UQfLoz7nox3aqKOGc+h
         Gb2vW2ssIG5BAfvWordSk5TWClv0c5VqPIMeJHk/SBcyH9ulRc+llQjUnM9HuEYwJtFg
         mfYw06ePMrnDj9Bt7lvkQRLKmSAZaeUmulKf506iEqlyZGsWBfEoKZgBH0djyJ7T4bOd
         woXcq3+Qge9bWAJsLgPZaunCv2aPUzDgy2olXkoKvyhkQ+nGvJOl77Gs1THUBME+3nGJ
         /O6Q==
X-Gm-Message-State: AOAM530W/OJcYNZJFcmPV0XKDSm6a9KLRSgVM2+MGItIVq2Ju9KvCU0T
	lf39vsRtD8vgmzmI1z0/K88=
X-Google-Smtp-Source: ABdhPJyuRoI9sdBpYo1AywAGe3gmKBrkpBiwWfs2sDSR0lcZkKFuigrzuzNhp9mMl7aV87jFU9H+kw==
X-Received: by 2002:a17:90a:cc11:: with SMTP id b17mr22738762pju.119.1620068422948;
        Mon, 03 May 2021 12:00:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:aa46:: with SMTP id c6ls8241294plr.4.gmail; Mon, 03
 May 2021 12:00:22 -0700 (PDT)
X-Received: by 2002:a17:90a:304e:: with SMTP id q14mr22726833pjl.55.1620068422422;
        Mon, 03 May 2021 12:00:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620068422; cv=none;
        d=google.com; s=arc-20160816;
        b=wdyJ8I512cvMm7sK9yva9eFrHB8kjBzKP3yP3CVytjXiaJsiLEH3+g8CjxhHdKXykk
         KzDacAuyrejRnvd4ssWRQT5peCJjuE6z88tRa0vKsa6QmnBiMvxrpnov7LBrAHgwmmP+
         YCXC8n6BdaNIUOlM6G2k/VcBKaOV1FZ3S/1dtvgJVLAHARPsYfHwXMnmqOiC06zTOl8I
         d1bs1/cGgn9B7TMuk+X/qLZBkTQkhypOs9CQELvY2hTEF/FIHkpyuwO8siyjaVvsDqDA
         DjV0j9YVGGkI3cZIrD0v1oxLIoCqV3fKX5dDLdzlIOIC8U07T4aGL7PNi/krA7mA/kGz
         Gp/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Q6rKBqfbWpNRJxPhhgqP74nxWxLm0jUmEd6rteF8gEQ=;
        b=IfPtqF4oaY5PPwG6TCV65EJ1LzPfOB13g91ef8f1HXvw1cScXi9bb2yjKzNkV9GBUc
         5zJNiTTd7BHoaKtDgpDF/W3W1MA4XSlqaTIw3ribSKhHiXitQya/sqQkPh7p/S/34Y70
         P3RB6bYs9RANLG+xy9+++HGaaKynn6pKBSdESW5bZzUQUax9A5LmBEaKHdBzN2IoW0VW
         pVUkzX2aUF+clxXFXR88b7fX45eUr1Hqn4N5Vz6w05rIBPRhDWteSoW64Yj2IbAS+RiI
         Yk62s2CWr/w85RDGI28WxO4hZQDmFw5VxA2JXVp9i7LnQNQIRS1qN3G1j6KpQcZNN5SD
         b/mg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=RsH4uqpO;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::42f as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x42f.google.com (mail-pf1-x42f.google.com. [2607:f8b0:4864:20::42f])
        by gmr-mx.google.com with ESMTPS id o13si36676plg.5.2021.05.03.12.00.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 May 2021 12:00:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::42f as permitted sender) client-ip=2607:f8b0:4864:20::42f;
Received: by mail-pf1-x42f.google.com with SMTP id k19so1927013pfu.5
        for <clang-built-linux@googlegroups.com>; Mon, 03 May 2021 12:00:22 -0700 (PDT)
X-Received: by 2002:a17:90a:1d44:: with SMTP id u4mr140512pju.46.1620068421951;
        Mon, 03 May 2021 12:00:21 -0700 (PDT)
Received: from google.com ([2620:15c:2ce:200:b55f:a57:7a3c:5bf7])
        by smtp.gmail.com with ESMTPSA id a185sm9629161pfd.70.2021.05.03.12.00.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 May 2021 12:00:21 -0700 (PDT)
Date: Mon, 3 May 2021 12:00:17 -0700
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Tom Stellard <tstellar@redhat.com>
Cc: Dan Aloni <dan@kernelim.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Serge Guelton <sguelton@redhat.com>,
	Sylvestre Ledru <sylvestre@mozilla.com>
Subject: Re: Very slow clang kernel config ..
Message-ID: <20210503190017.3r6mzy7xqx2bfwmk@google.com>
References: <CAHk-=wjmNOoX8iPtYsM8PVa+7DE1=5bv-XVe_egP0ZOiuT=7CQ@mail.gmail.com>
 <CAKwvOdmMF_v9TzBtFn2S1qSS_yCDO8D-u3WhBehUM7gzjcdjUQ@mail.gmail.com>
 <CAKwvOdk+V2dc31guafFM=N2ez4SrwCmah+mimUG3MzPMx_2efQ@mail.gmail.com>
 <CAKwvOdn3uXniVedgtpD8QFAd-hdVuVjGPa4-n0h64PTxT4XhWg@mail.gmail.com>
 <CAKwvOdm3D=dqKw=kx46PLaiqfHOZJL3QFKGc8kxqJqpwdFFWqw@mail.gmail.com>
 <CAKwvOdkp_P8BCtFuKqDrtC_=A89ZfDf66Yr3FL2e=ojwv4KaMA@mail.gmail.com>
 <CAHk-=wi1yiBBr3b3RbCEte6-yzAApsZN5zRdr3xoW8Av9jOX=Q@mail.gmail.com>
 <CAKwvOdk0nxxUATg2jEKgx4HutXCMXcW92SX3DT+uCTgqBwQHBg@mail.gmail.com>
 <20210502051909.pac2pycninc7fl53@gmail.com>
 <6c4febd7-f826-9935-4163-138b1fed8278@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <6c4febd7-f826-9935-4163-138b1fed8278@redhat.com>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=RsH4uqpO;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::42f
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

On 2021-05-03, Tom Stellard wrote:
>On 5/1/21 10:19 PM, Dan Aloni wrote:
>>On Fri, Apr 30, 2021 at 06:48:11PM -0700, Nick Desaulniers wrote:
>>>On Fri, Apr 30, 2021 at 6:22 PM Linus Torvalds
>>><torvalds@linux-foundation.org> wrote:
>>>>    0.92%  libLLVM-12.so       llvm::StringMapImpl::LookupBucketFor
>>>
>>>^ wait a minute; notice how in your profile the `Shared Object` is
>>>attributed to `libLLVM-12.so` while mine is `clang-13`?  Clang can be
>>>built as either having libllvm statically linked or dynamically; see
>>>the cmake variables
>>>LLVM_BUILD_LLVM_DYLIB:BOOL
>>>LLVM_LINK_LLVM_DYLIB:BOOL
>>>BUILD_SHARED_LIBS:BOOL
>>>https://llvm.org/docs/CMake.html
>>>
>>>I think those are frowned upon; useful for cutting down on developers
>>>iteration speed due to not having to relink llvm when developing
>>>clang. But shipping that in production? I just checked and it doesn't
>>>look like we do that for AOSP's build of LLVM.
>>
>>There's also `-DLLVM_ENABLE_LTO=Thin` that enables LTO for building LLVM
>>and Clang themselves, considered they can be bootstrapped like this
>>using a previous version of Clang. Combining that with a non-shared
>>library build mode for both Clang and LLVM, the result is possibly the
>>fastest and most optimized build that is achievable.  Unfortunately I
>>see distributions neglecting to enable this in packaging this as well.
>>
>>On a side note, I'm also a Fedora user and agree with Linus about this.
>>I'd like to see an opt-in bypass of the shared library policy via
>>something like `dnf install clang-optimized` that would install the
>>fastest and most optimized Clang build regardless of RPM install size.
>>
>
>I have experimented with creating a static version of clang in the past,
>but never really found a solution I liked enough to upstream into Fedora.
>e.g. This solution[1] that we're using to bootstrap clang in our internal
>clang-as-the-default-cc Fedora buildroots that we use for testing.
>
>If someone could file a bug[2] against the clang package in Fedora (or RHEL even)
>with some data or other information that shows the downsides of the shared
>build of of clang, that would be really helpful.
>
>-Tom
>
>[1] https://src.fedoraproject.org/fork/tstellar/rpms/clang/c/dea2413c6822cc7aa7a08ebe73d10abf8216259f?branch=clang-minimal
>[2] https://bugzilla.redhat.com/
>

I have filed https://bugzilla.redhat.com/show_bug.cgi?id=1956484 with
information from my previous reply https://lore.kernel.org/lkml/20210501235549.vugtjeb7dmd5xell@google.com/

-fpic (.so) -fno-semantic-interposition -Wl,-Bsymbolic-functions is very
close to -fpic/-fpie (.a) in terms of performance.


(
If Fedora is willing to use -fprofile-use (profile guided optimization)
or ThinLTO, that's great as well, with the cost of much longer build time.)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210503190017.3r6mzy7xqx2bfwmk%40google.com.
