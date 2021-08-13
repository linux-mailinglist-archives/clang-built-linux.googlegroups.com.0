Return-Path: <clang-built-linux+bncBCS7XUWOUULBB6VA3OEAMGQEJCGFHUQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x637.google.com (mail-pl1-x637.google.com [IPv6:2607:f8b0:4864:20::637])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FD6D3EBD09
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Aug 2021 22:05:16 +0200 (CEST)
Received: by mail-pl1-x637.google.com with SMTP id h19-20020a170902eed3b029012d3624d993sf6791558plb.2
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Aug 2021 13:05:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628885114; cv=pass;
        d=google.com; s=arc-20160816;
        b=w21ASIa+UIFrWZkVdsDUsxEciQcJj00RSz3ehuMhF46ZIXPkgU/HUpkSPVgsYRYuJ2
         82NmgTEVWImylWYsO3FjxEKueTA2rqIUsjC5TgoFHfSuHod/KvdUcWu6daAWBMTruOtR
         NJsbpZFfLQISbMTGrBhRCzDb3X0LjvAa6JLZ94wLjtLxx+ienWEvZCCjjFOsg6XF3d7T
         4H/leB6WLEAxrid3ijWK5k1veh9Oj2673RftswSkH4yLdV1d7T0d2+CJIkclqskZoD18
         i2HBwZjHffGueLV1ZHB0x6gsMCe1m8aoIEuek7LjXEysCDWqBI+niGugK5Evxsg5fuRQ
         PIsw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=esz2t/znzLSxu1xTSSM8PgTwh06L3yvsUTcXjNoaoyU=;
        b=OsRMmXzHdYBG48Kp4Y8HTDT7KURFVFzVK5jobURGM0dRC1ZW4guDxkSwlpVnTH7L88
         4e7oAGW73bP1daF1lDmR62JRi+2XSoDTCHR4AGD1Sw4PL0g9OOG7UrHS4B/A5fA86+LM
         WBjtDzDNVrrouUN9mdEDefI2GJXugBI6tluboPAf6sCNf3QGPq8bI2GCA4bQA036p/4D
         uO46uM9Dl/5VAMcoLhXq4Ej7Zk1TfVBJzn/uR4Y74s8CQd8Axe1INW447tmjeS93b9Ay
         rIaK7TaoHlpOZvJ5nBNirOoujj2aMTW6o5PVqbp9uhhJwM3TraioQc8x+RRUU+BRjpsI
         PY5Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=tsbCgqA+;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::102b as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=esz2t/znzLSxu1xTSSM8PgTwh06L3yvsUTcXjNoaoyU=;
        b=B8ShT4h0ozIYUyL4mQlUdp3Ewcyb8vL41trAF+234gGHRQVBQu/XdjyTpXRPh+VH1E
         MV0BDnjfFUZ/USYhn0mYLblR+tTU6D3fFQeHjD6IQIx1rXGfN6C9jd7m1mOe7aJyRBJ8
         ywzEUPi6GP+OZ7IY8F7JzRBwT/RFIRrOgwViH7/m0qE2YglqNeNMsWQ5DuSlXFTKG/ku
         481lchL3wZH/5VhniO2MeTmQhcOU9kTzFuaw3HPwKhi4iXHh05SqbyJoElxtz7EG7QPw
         yeVdjqQpYK2opZMpxLsXOo4D3faIQ3R9dQ3oHODODe23/rX403UjqnWc2EEvNFh5aZEJ
         7+nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=esz2t/znzLSxu1xTSSM8PgTwh06L3yvsUTcXjNoaoyU=;
        b=QNAlWvnrtrMYj6PBzYJe0Gzck4qpqegROAzlRLJ/KKpjpF5czqYjSEh3LSFDB6SeCk
         6XU0n73S/KkwtTM5oaOBMAvTNMU0Wfm5N7Kf304ThEBmIzZsVU+p6M768WjoyGzs0Fco
         iDR5czMe4X0ehTvkMVB9rPcdhoMN+eHwqNjQd9dIscxg4pHCvMC4rKj1WWTx6dJFgiPO
         lCsAzMOMdxTfKklKioda19tYC0j57Y/SUnnW+WbUrdWQKhQiP20oW8Y4WbVhrmONUSBc
         jWY/MGPFlAtFxrH8NK0T5hIz5k3iXLjC/3N/1yVfGMIVXrWfx5azdbsNmwz45kDr2el7
         38/w==
X-Gm-Message-State: AOAM533T+tTITS5PyRWJz/Proxna19rcSG2rphie9Y80guoo3cijo9Aw
	cSUAX6n4bsSWovSgfeUGcCg=
X-Google-Smtp-Source: ABdhPJyWfaTogLnaHoxA021FSAQ1kazFYAVvj64AZ+PqWv41xlqvfLutvyp/aF1y+6w4+E3MqJSTTQ==
X-Received: by 2002:a63:3c5d:: with SMTP id i29mr3770099pgn.147.1628885114540;
        Fri, 13 Aug 2021 13:05:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:848e:: with SMTP id c14ls1166338plo.1.gmail; Fri, 13
 Aug 2021 13:05:13 -0700 (PDT)
X-Received: by 2002:a17:902:8c83:b029:11b:3f49:f88c with SMTP id t3-20020a1709028c83b029011b3f49f88cmr3320394plo.63.1628885113859;
        Fri, 13 Aug 2021 13:05:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628885113; cv=none;
        d=google.com; s=arc-20160816;
        b=kJJTUYXxKkgHOEA6inMSFBN+5enurgRCceEAqEvkoNCW138ZQexfaHlhIwKucw7Ysm
         6LdeH1g2r1hB5jsjqj9PWLopKivxYNa67MsnSdOAxkT4SflLWrBhk73BBaqw2X6oTQaN
         TT5z087NFdcf3L7L+qlUMyQWL34QSgsyovMu4l4GIfZCIec0SxrjBZhR167t9R7evrZr
         yHflGHC+JsXdzaGQRrlYiZUww6CA45gZHAV/cs8LrFn/1qtSnGzcoDR+RK4XgYDPlcT/
         siEikSvuHnvC0YLcI6ecObx14Oo+cIfD2cH9wW6o7iSyjiwyrKh5xMhgQ/vwlC6D6BCX
         HcSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=LLGFAtJMn9/g+hSmBB/R1jZF7zawczzcNya/wcap1qw=;
        b=HfRnmrKX7mf+tRSaL8KQLzyAPEWLQRM+UU04BfqbSfbLJAzhdZQC0v374VFNLUc96P
         CGvy9zydoEz1cmLPCXHIw+NSl9FylrarDyZxxSiWX3a5lIaZRFVVAxQAE5pZ3UBs/oTF
         Vkftp5vtO6fxQ2PXNyAyacPmeAwhmbEBVZJE2MaDsYGJJzoc4fr8mIf11K0cE4UY+i6d
         pgqazi6rzVtGM7X8f64hm8ctLadK13MA4TTXy6Dgc/4ff2138mo98M/E0x41zegIsIDP
         yKXhP8PqHVqtOm7euvd9Zk9987+IvhpReuLBc4jUpRmOsuQfwdsTWrwLRDObAT+qTvW3
         hieg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=tsbCgqA+;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::102b as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x102b.google.com (mail-pj1-x102b.google.com. [2607:f8b0:4864:20::102b])
        by gmr-mx.google.com with ESMTPS id b14si149864pjg.2.2021.08.13.13.05.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Aug 2021 13:05:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::102b as permitted sender) client-ip=2607:f8b0:4864:20::102b;
Received: by mail-pj1-x102b.google.com with SMTP id hv22-20020a17090ae416b0290178c579e424so17557512pjb.3
        for <clang-built-linux@googlegroups.com>; Fri, 13 Aug 2021 13:05:13 -0700 (PDT)
X-Received: by 2002:a65:5686:: with SMTP id v6mr3851920pgs.174.1628885113391;
        Fri, 13 Aug 2021 13:05:13 -0700 (PDT)
Received: from google.com ([2620:15c:2ce:200:c94e:5de5:2819:8b32])
        by smtp.gmail.com with ESMTPSA id g20sm3204758pfo.20.2021.08.13.13.05.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Aug 2021 13:05:12 -0700 (PDT)
Date: Fri, 13 Aug 2021 13:05:08 -0700
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Daniel Axtens <dja@axtens.net>
Cc: Bill Wendling <morbo@google.com>, Michael Ellerman <mpe@ellerman.id.au>,
	Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Paul Mackerras <paulus@samba.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] ppc: add "-z notext" flag to disable diagnostic
Message-ID: <20210813200508.7bqehxgd6ruerds5@google.com>
References: <20210812204951.1551782-1-morbo@google.com>
 <87sfzde8lk.fsf@linkitivity.dja.id.au>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <87sfzde8lk.fsf@linkitivity.dja.id.au>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=tsbCgqA+;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::102b
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

On 2021-08-14, Daniel Axtens wrote:
>Bill Wendling <morbo@google.com> writes:
>
>> The "-z notext" flag disables reporting an error if DT_TEXTREL is set on
>> PPC with CONFIG=kdump:
>>
>>   ld.lld: error: can't create dynamic relocation R_PPC64_ADDR64 against
>>     local symbol in readonly segment; recompile object files with -fPIC
>>     or pass '-Wl,-z,notext' to allow text relocations in the output
>>   >>> defined in built-in.a(arch/powerpc/kernel/misc.o)
>>   >>> referenced by arch/powerpc/kernel/misc.o:(.text+0x20) in archive
>>       built-in.a
>>
>> The BFD linker disables this by default (though it's configurable in
>> current versions). LLD enables this by default. So we add the flag to
>> keep LLD from emitting the error.
>
>You didn't provide a huge amount of context but I was able to reproduce
>a similar set of errors with pseries_le_defconfig and
>
>make ARCH=powerpc CROSS_COMPILE=powerpc64-linux-gnu- CC="ccache clang-11" LD=ld.lld-11 AR=llvm-ar-11 -j4 vmlinux
>
>I also checked the manpage, and indeed the system ld does not issue this
>warning/error by default.
>
>> ---
>>  arch/powerpc/Makefile | 1 +
>>  1 file changed, 1 insertion(+)
>>
>> diff --git a/arch/powerpc/Makefile b/arch/powerpc/Makefile
>> index 6505d66f1193..17a9fbf9b789 100644
>> --- a/arch/powerpc/Makefile
>> +++ b/arch/powerpc/Makefile
>> @@ -122,6 +122,7 @@ endif
>>
>>  LDFLAGS_vmlinux-y := -Bstatic
>>  LDFLAGS_vmlinux-$(CONFIG_RELOCATABLE) := -pie
>> +LDFLAGS_vmlinux-$(CONFIG_RELOCATABLE) += -z notext
>
>Is there any reason this should be gated on CONFIG_RELOCATABLE? (I tried
>without it and got different but possibly related linker errors...)
>
>Also, is this behaviour new?

This is a longstanding behavior.

https://maskray.me/blog/2020-12-19-lld-and-gnu-linker-incompatibilities
See "Text relocations"

.o files used to link .tmp_vmlinux.kallsyms1 have many R_PPC64_ADDR64
relocations in non-SHF_WRITE sections. There are many text relocations (e.g. in
.rela___ksymtab_gpl+* and .rela__mcount_loc sections) in a -pie link and are
disallowed by LLD:

   ld.lld: error: can't create dynamic relocation R_PPC64_ADDR64 against local symbol in readonly segment; recompile object files with -fPIC or pass '-Wl,-z,notext' to allow text relocations in the output
   >>> defined in arch/powerpc/kernel/head_64.o
   >>> referenced by arch/powerpc/kernel/head_64.o:(__restart_table+0x10)

Newer GNU ld configured with --enable-textrel-check=error will report an error
as well:

   ld/ld-new: read-only segment has dynamic relocations



Text relocations are considered very awful by linker developers.
binutils 2.35 added --enable-textrel-check={no,warn,error}
https://sourceware.org/bugzilla/show_bug.cgi?id=20824

I can imagine that in the future some Linux distributions (especially those
focusing on security) will default their binutils to use
--enable-textrel-check={no,warn,error}.  CONFIG_RELOCATABLE build will break
sooner or later.


In -no-pie links, R_PPC64_ADDR64 relocations are link-time constants.
There are no text relocations, therefore no need for -z notext.

>Kind regards,
>Daniel
>
>>  LDFLAGS_vmlinux	:= $(LDFLAGS_vmlinux-y)
>>
>>  ifdef CONFIG_PPC64
>> --
>> 2.33.0.rc1.237.g0d66db33f3-goog
>
>-- 
>You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
>To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
>To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/87sfzde8lk.fsf%40linkitivity.dja.id.au.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210813200508.7bqehxgd6ruerds5%40google.com.
