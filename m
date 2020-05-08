Return-Path: <clang-built-linux+bncBCVLJ7OQWEPBBD5P232QKGQEQA5VL4Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd40.google.com (mail-io1-xd40.google.com [IPv6:2607:f8b0:4864:20::d40])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E0EE1CB607
	for <lists+clang-built-linux@lfdr.de>; Fri,  8 May 2020 19:32:00 +0200 (CEST)
Received: by mail-io1-xd40.google.com with SMTP id e141sf2530923iof.8
        for <lists+clang-built-linux@lfdr.de>; Fri, 08 May 2020 10:32:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588959119; cv=pass;
        d=google.com; s=arc-20160816;
        b=Nc28fMrpWqMM5cAu5Xf0NiDiBLhdkfXluzIe1FMfEiZOlX+A3rk2YBIwmHYwsdVA24
         qrixSEEO6XgdB8Pw98OWmfUYEe7LDTeZnEhjIIqKATtXxpzN2uLPWKhcdfaWia6T4Wo1
         2WTu0rzXYny4jqNGNpsew90FzEWfd2GgE7u2yx7Zpq5EiicwmKmJlxQgV2au6cyLJ4+B
         zfWBv5kw/4ZQuz6o3wYh+I8g36RZMu+RxrPQ6MMVNraWJ2YGGcnH7E+rUNXo/Cb/FiAi
         MKdIPu9ySZUqwN7W2CSJytR1n1cM+kkTaC3v93GuRytL4xRRXTxyWPopxasxwQgpr+aO
         n6tg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:dkim-filter:sender:dkim-signature;
        bh=kO3mILTTG0Z8oRDAvcRsmap6tP/ffTt4klL9qkNCs5g=;
        b=H1P+38A6QWsXyohvg2lEG5LLs7wyYqGzPuiJDA+8hvV3hOdfWZCtTc0SYAA0rUd4nv
         GkMaoOBVohMs5O0TK8t+sMKiFfc/BsJe0c/oCpHpb2WeKxkYVz6jPkuZS5/wzZM/JcK+
         o8GbRO4WvsW4+bVe2HhQiFODJGX4odxVpbeGicClYExoszwSk4R+uRE8xIBBvPY0HYt6
         TsN1z6df/ghoP/P34JLtQEmBSUD4o0bg9Tv5gNW1hZ92hus89ia1iI7tyA94Ch+hdWS0
         JIWGww03UvVRwllrtHBHNxKzMiSm6ww1pZFObEEljyNA2ApTmOXxRNnqgt1CqrtgMcJO
         ksOA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@zytor.com header.s=2020042201 header.b=qyX9hwha;
       spf=pass (google.com: domain of hpa@zytor.com designates 198.137.202.136 as permitted sender) smtp.mailfrom=hpa@zytor.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=zytor.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kO3mILTTG0Z8oRDAvcRsmap6tP/ffTt4klL9qkNCs5g=;
        b=TgQ+Fz0C+7xvTW8C/ERy6o9trrSW3Um5xC1I0FfVku3Rl8Mraw/ga2XTAcitwK7Yp5
         rtRruW3kL8eOk/sBEXhy81D6RXkQVgdlUVxThHdW0pwlB6CQqpjt/jZQQqs14QyKZXC9
         gfIAPMkKaVB1l/dggub0poLvmmvweCRzskLLYIfbwiscTZa2Ta5vI5fU5oHlFEJkAwc8
         L+zlWDs4Gi/zARW3C9LuPeapU77dNEF8KwKYGf7pkUjp5lt4bNqsi2TVUPShLAuWUAq3
         /hIOondSas0DZt9t5raOJbdE46T8q91AboeuA4bYvHzxLJsz1STHcoE3JED5hRq8sRbF
         l53g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:subject:to:cc:references:from
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kO3mILTTG0Z8oRDAvcRsmap6tP/ffTt4klL9qkNCs5g=;
        b=NpMm8IFPTgWEJ+WP/gXLxedo3JWOFvHR84Wdatal9tnoD3Hlq/uBYogqkrmyMlvg1e
         y7A6iYiBVvaDo+6zPHTvtkA9ZgN51ho+lhWvajT0+lfSRcYnVf/TuOanW9rZ8G2dte/A
         g6QTxBlOMTddjET+q0ava7uhg0TlUK+VDHPwCm+iyUYdYX0KXsKr6LedT/ALVSEOlPmj
         be8CwbjMyLr4z/bgtaDOoelB2hivOoskWY4ZRX6BTd0yCm4sr8lOF9wl1AOK14r7i60g
         Z5N6LKxp6OLxOuib80aKj67nd1n6UORfiR2+GRw5vxew1jZSwz6KnoOsYYSs6IGEHzWP
         728w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuaBMlbWqErGh7duUsVj611cbq+3cv0j0X1A5KIJ7GIkXMXgoex9
	addQprHoBKUlYa/nYEQriH0=
X-Google-Smtp-Source: APiQypKQF3o5SC85cZnvdgDX23fA5F7AylwD+RtXGrEhFLFqPB/cgZIP9j8o6qnm8y6/cWjCZyGffQ==
X-Received: by 2002:a92:607:: with SMTP id x7mr3673663ilg.218.1588959119271;
        Fri, 08 May 2020 10:31:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:80a:: with SMTP id u10ls879839ilm.9.gmail; Fri, 08
 May 2020 10:31:58 -0700 (PDT)
X-Received: by 2002:a92:c911:: with SMTP id t17mr4118919ilp.229.1588959118851;
        Fri, 08 May 2020 10:31:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588959118; cv=none;
        d=google.com; s=arc-20160816;
        b=ezvSV+4uWnjEYSOp6f5XtwN6je1bI1B9OucIJmRUETnzH0/z7bepCeTeufpmoAP6nz
         MeXX9oW9jwkjCAl2oR3iRDcSRAYstHYGFceSmfywH0KUyV55HTbfOFBrB9V+trvW62TM
         lFc392uzbJ03rChnAFZYSN1b0p09ITpI08FDjV9ECNuLjEywTPUMNLBituDXjngJaJFx
         F09r/9Cq9rd2dq8oZONRwrdiBoP+ebec9CmT5fJvJe/gayTQYRjgVy2zJ6NOnYO+KveJ
         K/QnETl2MzEgQZ4O+q1OMo478qoYvRHRTNrpTaXjpUD7UAH0ZZRpuRGlUo9sGGIEilDE
         lhJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature:dkim-filter;
        bh=j4Wt5+zHny+jNVeWIommm01rPqJoQDpyDmv65ZQS5Sw=;
        b=h2Av4yLm7l81Tc/xFI6vfx516dQ5IL5ZjLg3Lw/VX9XWzH39her35Vb6nXtcEGMgLE
         Qr2l7OvkkggPPj+aDx88l+XJ1kVpy9cwIvU3EICbAEngOcjippLst8/S5SE3rRmpaxrU
         YUWhTJgXtyuw9qC9yHpfUCGA1k/tw+CdQdGBTCM70qRtmZoe48Xz5NoaKs4wimuwdWFe
         cJmn+bBQiMY0+rMaUPFUwFHzLLVFiwcUfb9zhybJn3d7RIKY63aPcivUnjmY+0Nx15DQ
         SqTNR9JE/wH5ioQzoFmZkj2cvXf4FDoWKELt+jSdcyNLsO25lsA9WmMztkQRercQnZ4w
         a6CQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@zytor.com header.s=2020042201 header.b=qyX9hwha;
       spf=pass (google.com: domain of hpa@zytor.com designates 198.137.202.136 as permitted sender) smtp.mailfrom=hpa@zytor.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=zytor.com
Received: from mail.zytor.com (terminus.zytor.com. [198.137.202.136])
        by gmr-mx.google.com with ESMTPS id x4si174798iof.0.2020.05.08.10.31.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 May 2020 10:31:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of hpa@zytor.com designates 198.137.202.136 as permitted sender) client-ip=198.137.202.136;
Received: from carbon-x1.hos.anvin.org ([IPv6:2601:646:8600:3281:e7ea:4585:74bd:2ff0])
	(authenticated bits=0)
	by mail.zytor.com (8.15.2/8.15.2) with ESMTPSA id 048HVftM3921978
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NO);
	Fri, 8 May 2020 10:31:41 -0700
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.zytor.com 048HVftM3921978
Subject: Re: [PATCH] x86: bitops: fix build regression
To: Nick Desaulniers <ndesaulniers@google.com>,
        Brian Gerst <brgerst@gmail.com>
Cc: Peter Zijlstra <peterz@infradead.org>,
        Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>,
        Borislav Petkov <bp@alien8.de>, Sedat Dilek <sedat.dilek@gmail.com>,
        stable <stable@vger.kernel.org>,
        Jesse Brandeburg <jesse.brandeburg@intel.com>,
        "kernelci . org bot" <bot@kernelci.org>,
        Andy Shevchenko <andriy.shevchenko@intel.com>,
        Ilie Halip <ilie.halip@gmail.com>,
        the arch/x86 maintainers
 <x86@kernel.org>,
        Marco Elver <elver@google.com>,
        "Paul E. McKenney" <paulmck@kernel.org>,
        Daniel Axtens <dja@axtens.net>,
        Masahiro Yamada <yamada.masahiro@socionext.com>,
        Luc Van Oostenryck <luc.vanoostenryck@gmail.com>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>
References: <20200505174423.199985-1-ndesaulniers@google.com>
 <8A776DBC-03AF-485B-9AA6-5920E3C4ACB2@zytor.com>
 <20200507113422.GA3762@hirez.programming.kicks-ass.net>
 <CAMzpN2hXUYvLuTA63N56ef4DEzyWXt_uVVq6PV0r8YQT-YN42g@mail.gmail.com>
 <CAKwvOd=a3MR7osKBpbq=d41ieo7G9FtOp5Kok5por1P5ZS9s4g@mail.gmail.com>
 <CAKwvOd=Ogbp0oVgmF2B9cePjyWnvLLFRSp2EnaonA-ZFN3K7Dg@mail.gmail.com>
 <CAMzpN2gu4stkRKTsMTVxyzckO3SMhfA+dmCnSu6-aMg5QAA_JQ@mail.gmail.com>
 <CAKwvOd=hVKrFU+imSGeX+MEKMpW97gE7bzn1C637qdns9KSnUA@mail.gmail.com>
From: "H. Peter Anvin" <hpa@zytor.com>
Message-ID: <8f53b69e-86cc-7ff9-671e-5e0a67ff75a2@zytor.com>
Date: Fri, 8 May 2020 10:31:36 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <CAKwvOd=hVKrFU+imSGeX+MEKMpW97gE7bzn1C637qdns9KSnUA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: hpa@zytor.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@zytor.com header.s=2020042201 header.b=qyX9hwha;       spf=pass
 (google.com: domain of hpa@zytor.com designates 198.137.202.136 as permitted
 sender) smtp.mailfrom=hpa@zytor.com;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=zytor.com
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

On 2020-05-08 10:21, Nick Desaulniers wrote:
>>
>> One last suggestion.  Add the "b" modifier to the mask operand: "orb
>> %b1, %0".  That forces the compiler to use the 8-bit register name
>> instead of trying to deduce the width from the input.
> 
> Ah right: https://gcc.gnu.org/onlinedocs/gcc/Extended-Asm.html#x86Operandmodifiers
> 
> Looks like that works for both compilers.  In that case, we can likely
> drop the `& 0xff`, too.  Let me play with that, then I'll hopefully
> send a v3 today.
> 

Good idea. I requested a while ago that they document these modifiers; they
chose not to document them all which in some ways is good; it shows what they
are willing to commit to indefinitely.

	-hpa

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/8f53b69e-86cc-7ff9-671e-5e0a67ff75a2%40zytor.com.
