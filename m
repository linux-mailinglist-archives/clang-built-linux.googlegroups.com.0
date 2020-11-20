Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBMWO4D6QKGQEBWXKKEY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3a.google.com (mail-oo1-xc3a.google.com [IPv6:2607:f8b0:4864:20::c3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AA5D2BB6BA
	for <lists+clang-built-linux@lfdr.de>; Fri, 20 Nov 2020 21:29:40 +0100 (CET)
Received: by mail-oo1-xc3a.google.com with SMTP id p13sf296511oop.8
        for <lists+clang-built-linux@lfdr.de>; Fri, 20 Nov 2020 12:29:39 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605904179; cv=pass;
        d=google.com; s=arc-20160816;
        b=UHhDwnUSC5rComqVP/CFD0RxqsIaVGfPBXtxgi+OuVRH3zN5uQ9pD2h8/hhfePKEMT
         /pLlDx3vTgtO2fdaxqn5jxVNPOyX5o6yeN6LuNhp406BqV8kcKR+ve+YS++ZPhAdfbL2
         Nd4/0PhntFLaz6SjbC+8THEOC8rdYdxD2Y6lqf3aHdfzMTonFy9gaF5v0bUMBF5SWvDs
         3cVAYGCQWk9W7L8vwJ7vgHb8iyVIGkpzDGBazY4X6Yn8LhMzFxoP6nM4M/v3rk66O21g
         pxUJx2hyeY6/61E5DO5UfRRhsZSxXTIi5XyNtc1dXVcg8EoEMuWnaglb/xLPgsTKJGrJ
         giXA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=d8MVPonX6yyio0w7M3wzv/uPy5nZjUrLJ7IjX79tu3I=;
        b=JgVgCfVjqLxzBhh2HxfK6u/WUVloGDCxOgV1+elmpOCpONcOWcfqYx7frhoHr71M49
         1zqmEXttMXB9ileQfffUktWyNMeyTSWLaYW8aggcU+enqwNvIn0Ng5f/4lbCWyrWI6/9
         WapQ3WBkEUCUldFCzq4hTP8x3eY3wWgkyZqmw5mnEUDhUZclFWmAj4HggzJqp1J53gps
         nPMer4hjTwsfY1vlDKhLmqYxExLym9diWBZBJ7zS+5Uj29cKDObMtGz6MDijpmnxJ4+M
         nLhS9IcbOeQmHgnMRI4q4+ZCgSpALwlwgdmXp5F24oNFGCf8m6YQNT12PEoCalxGSGs6
         JrKw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="slPQ//pe";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=d8MVPonX6yyio0w7M3wzv/uPy5nZjUrLJ7IjX79tu3I=;
        b=ay7tXbvs9Kplj5jIOywFQd9K33YjrGXSWWaBdxTmm8ZZ530JCRaEyVjVKqxkzjWV+b
         KhkrJw8lHXZrTREv25/R64dvNbAW5gTX0l4Qejl5U62P3394zNAq+8Od4ygwgoeoua96
         El38851ESBxXjPfJDiwrgKY3EElkTcaFUzxLhzZ3cp/1nBIeD05Bi957AfXWi3LM+O6L
         BkR6M9fVC5VyDCwJaziazX+CMXGHhTbrRRolFEpJYEjFNlzkSfqGxq0u1m5fsGCj/srB
         DzJXqV5ODQa6CeP+wKRS/ACjYTDl0g1UcHPYQakYzaLbR3kmx9NDGA80nogX2oyBHc0H
         bltg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=d8MVPonX6yyio0w7M3wzv/uPy5nZjUrLJ7IjX79tu3I=;
        b=a/Ys4etqg4/YF1Ygza2imtPkVk0Xfk16QExlubNWymRN+mya+KoVmKSf/L7wJz+czW
         k2JmwuaBsW3Obue/NvrSy0KtYtjg5zmmgq5XE2eRuLkUeq/quZV9Wanxyv0f+IHGCptl
         dvpsIY9j1bFvHfIH7+//cARRwdybJ0TeR5n2Kwm2JFRcylXulyAIuAPWHWYpL70zAJwM
         tIFWiXESwPIfTYOm0d5gBLDH0+obVidN7Zgof/JHf9VMpnvuUCnSVRO8SkAUAczy9u+n
         EhPbjIUKKpiVn60BP9GroQ32tpqAiBFKxQ4dI2wOox6RQDftrqAEXhGsEuWPCHVJZynH
         5KZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=d8MVPonX6yyio0w7M3wzv/uPy5nZjUrLJ7IjX79tu3I=;
        b=mCx9xN4pIA0du9quqneEbx+GyNx3EoVvH/NmLNGM5nIxln9NQVtWVeyDZDc+WjvN6X
         X9HWHOxyLYs8lmEZBzOimLOhDJLDwHG4heSlxb5wOSK4RXzA7z8TNcLEJVpgYnhLJ+G7
         b8Eogvyap684psB9KNLMvxxyG7GBTsBZBRDq2T7+quSh2eK5AagctNiGARJahc/q2LrB
         SDAmjz6BMv5OftwqDOoeFifOhaVhJWIDKiD0lzw5/l/+H0d1y39sU3dDjqDv4RLtS5dY
         7Jbxj7JRnUc6U1uqzUS4CQ3oOF04X+HAUfMyrc2zuF6j+Cz92INQ3EGIWa7/Ebf6QroY
         gfCg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530q8KfTcc/hIQaSvfjcR+65N1/K4lLUNg9vQhDZXbruIT2Diqw8
	QQW9JiZOJiIWyl+hoxNYX5g=
X-Google-Smtp-Source: ABdhPJzsKNseAn2DqgPEn+aklDkbHqufpVof5z4Mtnhe6PF7ORZtCS1AUVt1AscBHIIqgk5ZtNLdFg==
X-Received: by 2002:aca:7506:: with SMTP id q6mr7692603oic.128.1605904178912;
        Fri, 20 Nov 2020 12:29:38 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:4c92:: with SMTP id a140ls353002oob.6.gmail; Fri, 20 Nov
 2020 12:29:38 -0800 (PST)
X-Received: by 2002:a4a:8552:: with SMTP id l18mr15392650ooh.10.1605904178534;
        Fri, 20 Nov 2020 12:29:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605904178; cv=none;
        d=google.com; s=arc-20160816;
        b=1BZtxzOLioC7rJcRoCHSYSgAxuBFwWTjWeTHsShbONeFmtd0RIGOFBSi3AmuSqgaGU
         jkISN6qfVtUiwscRCLdh63YNmNiYxaxiaJH/2c2c3krafnKPJb6hRubyUPl6UhvhIRRD
         ve4941+QUAKaUUVJZ7clg+nOjrH15r8rsuJ1pYuv/mQTQNb51pzNSjTSEU48rzCzyDQ3
         qzQeKKkAHiFxjyE44GqqIP2SVKX6Qi9n1leuj9XHrCidVOuhnOuuuqSj6dxBxUoHry/f
         phln727icC2Q9HM+WNoOZG9q6nsBUwcKdCNT+BA9bKrUT2fx536y9o7GNflKNeI7BThl
         jEbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=fWEyiKtLOwc5BKH8g+Q/g+4/sPbOaRfc0dXxralt2Mw=;
        b=K2CoqEW/fm1AlZmckba7CI/QTyVr7eluYsWZ+n9ULrAObTia9XyVXZS894DI0VDPOe
         WooNSSft9VuLKdWlh7Shz5sdaeu8ZpRf0UR6QB24oJMpXruM9JpPgvvnnyFDOuhHDgAm
         o37Ch3WcHxQ0X43kARI7zPTFo34/bJ00Cd3cnwbs/0qnwgHTWS6tWjvTku6bmu2Svy8E
         AN2DQ9lqReHDXbzDH+wkcNBiOmPFQ0Kd1B8oOftnXPzWFV1V/0+fJwiw12FbI9wPrTOq
         DUN9U4ucGb1VboGLef924zyuNO69Egn+ELHtJdLo6CVdcAsqzycO8kjeEpSh9Em2uWCX
         jGmQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="slPQ//pe";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qt1-x843.google.com (mail-qt1-x843.google.com. [2607:f8b0:4864:20::843])
        by gmr-mx.google.com with ESMTPS id f16si432149otc.0.2020.11.20.12.29.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Nov 2020 12:29:38 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) client-ip=2607:f8b0:4864:20::843;
Received: by mail-qt1-x843.google.com with SMTP id l7so1796505qtp.8
        for <clang-built-linux@googlegroups.com>; Fri, 20 Nov 2020 12:29:38 -0800 (PST)
X-Received: by 2002:ac8:3496:: with SMTP id w22mr17736541qtb.222.1605904178000;
        Fri, 20 Nov 2020 12:29:38 -0800 (PST)
Received: from ubuntu-m3-large-x86 ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id v32sm2850385qtb.42.2020.11.20.12.29.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Nov 2020 12:29:36 -0800 (PST)
Date: Fri, 20 Nov 2020 13:29:35 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Kees Cook <keescook@chromium.org>
Cc: Sami Tolvanen <samitolvanen@google.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Steven Rostedt <rostedt@goodmis.org>, Will Deacon <will@kernel.org>,
	Josh Poimboeuf <jpoimboe@redhat.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Kernel Hardening <kernel-hardening@lists.openwall.com>,
	linux-arch <linux-arch@vger.kernel.org>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	LKML <linux-kernel@vger.kernel.org>, linux-pci@vger.kernel.org
Subject: Re: [PATCH v7 02/17] kbuild: add support for Clang LTO
Message-ID: <20201120202935.GA1220359@ubuntu-m3-large-x86>
References: <20201118220731.925424-1-samitolvanen@google.com>
 <20201118220731.925424-3-samitolvanen@google.com>
 <CAKwvOdnYTMzaahnBqdNYPz3KMdnkp=jZ4hxiqkTYzM5+BBdezA@mail.gmail.com>
 <CABCJKucj_jUwoiLc35R7qFe+cNKTWgT+gsCa5pPiY66+1--3Lg@mail.gmail.com>
 <202011201144.3F2BB70C@keescook>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202011201144.3F2BB70C@keescook>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="slPQ//pe";       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Fri, Nov 20, 2020 at 11:47:21AM -0800, Kees Cook wrote:
> On Fri, Nov 20, 2020 at 08:23:11AM -0800, Sami Tolvanen wrote:
> > Changing the ThinLTO config to a choice and moving it after the main
> > LTO config sounds like a good idea to me. I'll see if I can change
> > this in v8. Thanks!
> 
> Originally, I thought this might be a bit ugly once GCC LTO is added,
> but this could be just a choice like we're done for the stack
> initialization. Something like an "LTO" choice of NONE, CLANG_FULL,
> CLANG_THIN, and in the future GCC, etc.

Having two separate choices might be a little bit cleaner though? One
for the compiler (LTO_CLANG versus LTO_GCC) and one for the type
(THINLTO versus FULLLTO). The type one could just have a "depends on
CC_IS_CLANG" to ensure it only showed up when needed.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201120202935.GA1220359%40ubuntu-m3-large-x86.
