Return-Path: <clang-built-linux+bncBCS7XUWOUULBBJ55VL2AKGQEC36D6HA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23a.google.com (mail-oi1-x23a.google.com [IPv6:2607:f8b0:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id A1A8B19EF7E
	for <lists+clang-built-linux@lfdr.de>; Mon,  6 Apr 2020 05:14:48 +0200 (CEST)
Received: by mail-oi1-x23a.google.com with SMTP id 8sf13089535oiq.2
        for <lists+clang-built-linux@lfdr.de>; Sun, 05 Apr 2020 20:14:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586142887; cv=pass;
        d=google.com; s=arc-20160816;
        b=nq3+/xcLPHJxq+n4o/hhX4mVoQOufC7ZLlqg50bQoI5iKDVgpWj8+CFXqcW1/qPUno
         62k6Wy4VFYBeU6liqbKyQhiJ/tKhnLBH80sZzoSGdwxDFBkKL/bL+prBLtXJhYPx/MuH
         RDnRqfjQbUFDggWyt7n6T1ssQt0orzwxoCVbszvGUzlr5EU7Le638IyTuvfq/aucwR+w
         M9jFWAK6qqr/GpfCHxef4VXzd4v2Qo19COVb2wSat5V4Dp5x/uHOXmWUWlCKBTPkc4Dp
         dfvmUVa/ihZgD8lFbRBBWCdcnA/YCHQHi6Sk7qD/hrk2ma9gQJ1WIe+4oORFlF2gUu1s
         ZjCg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=3UNvhGCFM56gCsU68o/XlICVi2kGj/Thdt6/IQ29WAs=;
        b=wM9YRiqRouOs0ruuc1/fT4UM3fOgq507HZdByU4q2c2KXrj052u7B+AFkuHx/lYS7c
         kofdCNx8JFKUOnoDGyHlseS2VftdCZw0NCfAERzrbj8Nv1JStKegcUMfeizixTIr75FH
         /nRkbI6ToIGw16v6CWCmKKGvvQ7OBSB7IAYClsPQ/vComGisUvV0pi7mh0pjsngyIAPW
         3qN4wU/UgRWRtyRpmlngxsJaC5iFcQ3v7ob7gcg8VqK8GxVWNOrjR3nPQIp/VG9FV90W
         GrID+bNu8Jbna4jrBbR8yofyohcFpvjusKZSQ/4qwc+ePs6IE94imeP0ScQks0fa9Oos
         xU0g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="n6l9/PoP";
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=3UNvhGCFM56gCsU68o/XlICVi2kGj/Thdt6/IQ29WAs=;
        b=bsyN9VaU8YRZs5i8FYhrdoX98xNp+H42X1tLdx27Z6wxfeGmrAdCC8cSxmDLT5c+on
         6GcnJD59qDRVEEc+KwsNKf7R6zBT/AzguEA5+mXMfwwCLXGnzFmODXBL2UCTb0+mcIwp
         U1Ue4s0nui4zcaJnGA/Z1Wco1S3FBY9JoiDWZCMeBa6GA9xyRlWoXnO22JN13Bvgj7hM
         ducUyKfkz9jJRGwdJTpler1EWGcamZzKszDAGNQd6gQziyIXfFsfo+1hRAAutg7BBouc
         Co9n1fWequ06LN/iEioJCgmv7SaHEoJqMZv2DaRSHpYhzhshTY2upAVtAnex/dYJE4iz
         5Uyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3UNvhGCFM56gCsU68o/XlICVi2kGj/Thdt6/IQ29WAs=;
        b=ib7/ObZsQ8Q3MjbRwVC1P4c05x74zJ6rCVwHsYwXgVA9Bu+NO0P5n1O0BLi0dcNy6/
         lrdI4ny7kJl1RSFbANe0OIG2py3PoKSCMqDE3yKaELW6cFMFLFirHq8IFow3I3gwBi+V
         LLkwLv+5fS2Ykr5NmyxVg1Mn33SS7ctDuE7n1tFDsmQPkaWg8fKbkuTQgq27V1Etv+t+
         W2yN6mM2U+zD/fFES3T6OO6/eIB/xWQ0ARI9e/wPqqLv0nVQapkqnKDGCup6HW9VB1/n
         jpzRcIHpUdgfFfx4yklbzr7sB8JuUVnMI4TpbamCiwnpS9ahQXNOP6GLUuBf1tRi7mIv
         cvWg==
X-Gm-Message-State: AGi0PuaBKCOWhx6K/fdkefhU7AdnsXrcQMUWS4eZpbTRRsB6aNEpwjbI
	XNWAJ0S0XIeOS6Dn1xowl88=
X-Google-Smtp-Source: APiQypKw6k7G/vcxBtiSezqUUhUhqzhIJbnSSyn44Gq7SnFQHPRY2ukkjpkVuvlU44x2gRj8ul8EjA==
X-Received: by 2002:aca:efd4:: with SMTP id n203mr11659836oih.159.1586142887641;
        Sun, 05 Apr 2020 20:14:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:787:: with SMTP id 7ls6416271oto.3.gmail; Sun, 05 Apr
 2020 20:14:47 -0700 (PDT)
X-Received: by 2002:a9d:6b8b:: with SMTP id b11mr16109871otq.119.1586142887172;
        Sun, 05 Apr 2020 20:14:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586142887; cv=none;
        d=google.com; s=arc-20160816;
        b=uptCq9QGi3j9a5hMu4dIJejZq4DvGmsQteCNXFGXV9+KWtiC60ms4l/5WzFz65o6lL
         lNfCzjlJyM3DB94seZi8pI4YZoPyMm/zsrCx7aH3yegt2HzUNRGmO6Wb96hj3IcBSYTa
         psvs68KFHUAbKXDivl6b/WWUGd5Cckt6NzAkP28HMVy+F48elfYcw1zS2PGzc7DJKMwu
         O2wAyhM5r2qcJdt0H1pUlPFu07s4RpkQkEPH6QBHczcPCviNtA0RiBgpy0nCQU/AQMfS
         +GVN+FfjQAqiees+Luc5qWJpMaexSJpzn2B0nekeb/2UlQmsdEV1/Ynmcs9/vuhKjDFY
         h3bQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=KrMlUKTNeum7x5sltX8KMxycbNc+02GypLAIc2PxYRo=;
        b=Xp6+efCniqYU5IBae+QNfhYn60JWXmRnOcgQD4GWUTFbNdP622fGcyaVW7SMMcuvul
         hSFsB6KioUPhd/CzD89rzUHM40zMtaAMAW0NHMda8jIDPcOcHb+Yy2aNHPhwx6c8vK+Q
         uRypB8DLwKpdeBMHldGBGy5X2gZBkYjYf/gp9r5koDQ2T2PDESkUPszNGM5TqleLGIRk
         xe2XWLu8rQetjlEuiag2nq+urEHyQVEC2TN8gqVVbO48cax+Mu38UD0W8hXZvQ0fQyI6
         ZzAHAjvXMvglFQUL2XUVebGx275dRfy3MEZZ+sUfJ7Sb+DG7Hs0IQesteTEBb6iYFdoE
         aGmw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="n6l9/PoP";
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id d16si858032otp.0.2020.04.05.20.14.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 05 Apr 2020 20:14:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Received: by mail-pl1-x643.google.com with SMTP id g2so5365298plo.3
        for <clang-built-linux@googlegroups.com>; Sun, 05 Apr 2020 20:14:47 -0700 (PDT)
X-Received: by 2002:a17:902:b682:: with SMTP id c2mr18913445pls.36.1586142886153;
        Sun, 05 Apr 2020 20:14:46 -0700 (PDT)
Received: from google.com ([2620:15c:2ce:0:9efe:9f1:9267:2b27])
        by smtp.gmail.com with ESMTPSA id e184sm10357065pfh.219.2020.04.05.20.14.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Apr 2020 20:14:45 -0700 (PDT)
Date: Sun, 5 Apr 2020 20:14:42 -0700
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Jonathan Corbet <corbet@lwn.net>,
	Michal Marek <michal.lkml@markovi.net>,
	Linux Doc Mailing List <linux-doc@vger.kernel.org>,
	LKML <linux-kernel@vger.kernel.org>,
	Matthias =?utf-8?Q?M=C3=A4nnich?= <maennich@google.com>,
	Sandeep Patil <sspatil@google.com>
Subject: Re: [PATCH] kbuild: support 'LLVM' to switch the default tools to
 Clang/LLVM
Message-ID: <20200406031442.2yrjtjp476qzjbqs@google.com>
References: <20200403051709.22407-1-masahiroy@kernel.org>
 <CAKwvOdnaZ6qDVxaPY-GEH8pdUkzH6eqm16ok9_wzRSVRG-1kiQ@mail.gmail.com>
 <CAK7LNAQybfcYiosNU+ybd-Q7-Y2dbLqBVN2XA00wCRnFAoqdew@mail.gmail.com>
 <20200405235507.psjjhqa3cxw57xra@google.com>
 <CAK7LNAS_SQg2nhJ8HKBTq3+dziGpaJZ87fOBRS-ZMdUpKGhX9Q@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <CAK7LNAS_SQg2nhJ8HKBTq3+dziGpaJZ87fOBRS-ZMdUpKGhX9Q@mail.gmail.com>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="n6l9/PoP";       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::643
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

On 2020-04-06, Masahiro Yamada wrote:
>On Mon, Apr 6, 2020 at 8:55 AM 'Fangrui Song' via Clang Built Linux
><clang-built-linux@googlegroups.com> wrote:
>>
>> On 2020-04-06, Masahiro Yamada wrote:
>> >On Sat, Apr 4, 2020 at 3:24 AM Nick Desaulniers <ndesaulniers@google.com> wrote:
>> >>
>> >> On Thu, Apr 2, 2020 at 10:17 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
>> >> >
>> >> > As Documentation/kbuild/llvm.rst implies, building the kernel with a
>> >> > full set of LLVM tools gets very verbose and unwieldy.
>> >> >
>> >> > Provide a single switch 'LLVM' to use Clang and LLVM tools instead of
>> >> > GCC and Binutils. You can pass LLVM=1 from the command line or as an
>> >> > environment variable. Then, Kbuild will use LLVM toolchains in your
>> >> > PATH environment.
>> >> >
>> >> > Please note LLVM=1 does not turn on the LLVM integrated assembler.
>> >> > You need to explicitly pass AS=clang to use it. When the upstream
>> >> > kernel is ready for the integrated assembler, I think we can make
>> >> > it default.
>> >>
>> >> Having this behavior change over time may be surprising.  I'd rather
>> >> that if you want to not use the integrated assembler, you explicitly
>> >> negate it, or just don't use the LLVM=1 syntax, ie. `make CC=clang
>> >> LD=ld.lld ...`.
>> >>
>> >> We could modify how `-no-integrated-as` is chosen when LLVM=1.
>> >>
>> >> make LLVM=1 LLVMIA=0 ... # add `-no-integrated-as`
>> >> # what the flag is doesn't really matter to me, something shorter might be nice.
>> >> make LLVM=1 # use all LLVM tools
>> >>
>> >> Since we got rid of $(AS), it would be appropriate to remove/change it
>> >> there, since no one really relies on AS=clang right now. (We do have 1
>> >> of our 60+ CI targets using it, but we can also change that trivially.
>> >> So I think we have a lot of freedom to change how `-no-integrated-as`
>> >> is set.
>> >>
>> >> This could even be independent of this patch.
>> >
>> >
>> >I also thought a boolean flag is preferred.
>> >
>> >AS=clang will not live long anyway, and
>> >I hesitated to break the compatibility
>> >for the short-term workaround.
>> >
>> >But, if this is not a big deal, I can
>> >replace AS=clang with LLVMIA=1.
>>
>> My mere complaint is that it may be difficult to infer the intention (integrated
>> assembler) from the abbreviation "IA" in "LLVMIA" :/
>>
>> Something with "AS" in the name may be easier for a user to understand,
>> e.g. CLANG_AS or LLVM_AS.
>
>I see 'llvm-as' in my PATH,
>but it is a different kind of tool, right?
>(converter from LLVM assembler *.ll to LLVM bit code *.bc)
>
>So, I thought "LLVM_AS" might be confusing.

You are right. llvm-as converts a textual form of LLVM IR (.ll) to
a binary form bitcode (.bc). LLVM_AS is confusing. CLANG_AS/CLANGAS might be
suitable.

   clang a.c '-###' => clang -cc1     # like gcc invokes cc1
   clang a.s '-###' => clang -cc1as   # this invokes the integrated assembler

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200406031442.2yrjtjp476qzjbqs%40google.com.
