Return-Path: <clang-built-linux+bncBCS7XUWOUULBBJH2XH5AKGQEUS7VJBI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x339.google.com (mail-ot1-x339.google.com [IPv6:2607:f8b0:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F689259AF5
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Sep 2020 18:56:05 +0200 (CEST)
Received: by mail-ot1-x339.google.com with SMTP id g2sf781757otr.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 01 Sep 2020 09:56:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598979364; cv=pass;
        d=google.com; s=arc-20160816;
        b=ieMrmgxurCByMoHRDuSz4ZkSVuKo7v187raANMZ2A/qirAxLeEVv8+Y1FJ23zkoTy9
         Y215Cz6z0hj3iGja65jwjcNOWXNer7no8FXfQDhNFKGdJjBft2RGypATP5nj8O1vdjVt
         x7GSsguuxE51X6vM95gUZ6N56n5a24h0ZxhSqNqLGUQq8RE5gZmY0gQXPhI4uNtSIeeF
         Qb4/IX7xNGbQCivtdpuMPiaQOiP3WrKW2VefOq0/PR7TRe/2zYWf53ufjendQy/CQb8W
         zbU9Xok7NSrzdTCqYKbHySiVXapkVdBB7cLPtF0E6CxoXm15X87qv8yx1LAR4UjusAhw
         k5fg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=ui5Ppig0c3nXAIxXMbJGerHGOUjzYhQVHr20MiqZRWY=;
        b=HpHj4L4j6fWZ4XaqrPY6pwXxmicZ/iKXJJ3R+2o0WR0PkTpYZz33l/FFyuVHYDrb4o
         3jd6kJ79IRWYJJTri0nTsg4s+PxgQ5u2Qt4eIS/Dd/zSOsZOGM/eQ/Txk3N6/TZK2SiH
         3YDWnQDJGzHrWu8ENepaU5jeuwiJNrXXVKU1dbtC/m3l+iK78BQsPjZPs+6gmYI+e6I6
         od43D/75HzqO9LiSqr3ZL9nUi7wr5xXYMVGFEaqtkHebDLwLHL7g+4TGWoxRPL92vxSW
         iFrhJUdUG+62zvbruKOIpVvw4pQsOuQE9Fgp7T2JcFVNjdaWibagoilv8ePPKULmKzbo
         ou6g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="f/97Fv/K";
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=ui5Ppig0c3nXAIxXMbJGerHGOUjzYhQVHr20MiqZRWY=;
        b=M8K1160yxhP8aNrAUxt0Y07TiJ37iahtWar3jtnV3idrm3KUmbHVGKV+WbB5nH6D4L
         sjZIVH0OD0SxjtAiTm7jjKSlxFkLy2u9jlfBisJEIVdmUH+ETS+b2wMTInOb0rTbCDf8
         qxR4KLhouhvZsX+nHumQofCitQdKaRZMAA6ZT2SdY76W+/j2uVPTvZvrDfSlbxZG39PA
         oyfOL8QylJobLb75QvkCx8PH+kv5Yp2glCPQK6wwcJyWkNZufytLLiaP4Pkkem7sjVrz
         atUxLuZj923hWh2BOEhlbEABByFP1YjrUs5bUGa8Y97mpWgR/eBplUWJHMx/I72yCwG5
         IVpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ui5Ppig0c3nXAIxXMbJGerHGOUjzYhQVHr20MiqZRWY=;
        b=EPKDCE4G5C8caGWhYxVUHI9+XJpNEHO0UruqdHVOu7heMd0XQEXXEhkMh3hNDJ0fbZ
         N4v+B4AW70YBRY5m7hkRfnQK8LODJ+7dejoBogS889e572pfGfLEIP8aOviPosZz2JBO
         7mpi5B+B0SxETzBVgbZH7r4i/lT6do3wkdzmLoBzHSBWFt0OZWwRS7563e6BtpEo2VSw
         xneY9Pc/mEv7y3F9ZGRm43A/9NhrPfnY/5Bhk39jzCKcAqJZeleHDrpK9P+SyZXmBFMt
         ze4v+FaNTiNwFC7zkG9lRF9KO1cd6m2fNRyTx2zwPNg9T5/8fasaJ2+4jK5upaR55FSc
         DTcA==
X-Gm-Message-State: AOAM5335RdeDl1fyZpuQI3ZiaK9jl4eFqp1CTa48kq1pgYJcsTjpRizf
	2kk8SXW1d+Jsg5QKZOMio88=
X-Google-Smtp-Source: ABdhPJwJSXtEucSodbWiPVf0v1BPPs2ixfuB7L9V0EykqJKg3jeem2yPMCY5snr8JRa69tWjU9C3EQ==
X-Received: by 2002:a05:6830:1209:: with SMTP id r9mr2179293otp.206.1598979364128;
        Tue, 01 Sep 2020 09:56:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:2513:: with SMTP id g19ls126503ooa.0.gmail; Tue, 01 Sep
 2020 09:56:03 -0700 (PDT)
X-Received: by 2002:a4a:c909:: with SMTP id v9mr2006017ooq.43.1598979363762;
        Tue, 01 Sep 2020 09:56:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598979363; cv=none;
        d=google.com; s=arc-20160816;
        b=t4Usg/79p15uwC0tcNkn/EGAIFqLz2XrWUwypqA8U1GxygBCl2j+8Hwe39EOGUl6j7
         9kWS748yhK8GxwEyA3/h4SlJxt53WZTRn5/rDLAQRzMk/smQJJ6utPJ//X75QcTj7Lmd
         lOPGlIuTzYAURHb2yW/5EP57cRhOht7wZp5tMs0FTOT+rcDFJAtrVJOF3YHPe+Xq+U4O
         joGWDpNYNsXuqhuNwxjqlwDIU3/u3NEK4ineFaCzvON4fuYedUrTlQarpbMhj+XJOYUY
         8CCBXJZ1p3AY0/CZmmg09xkyMrqR6z7keUyA4kpaLmGZpVdYefvpl6zccX70SIdm/SHB
         TlRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=UCJggNANOsFIJdFQUE2H7KD/0UnjI1YMnTYdBOtZHzI=;
        b=YbkPhNWDvTGbEDsScxPLmpo9m9eOCm0mfjfLlmbNCc8TGnn3xacS7SphAjuT3za/yn
         7NCmsXNmUjq2ryWJPiQwM5XGh2yp5bk3Y3OXmCVxR5fkepJw0Y5qeHlZD8T3TIcTh7RT
         0vsp1GP7YLQMUsyYtulI5eenSj/czVuXt2D/zzhzENtGJebmygHRif3Vu6L876k5Xmn8
         6Ko78Mcoug035By+t4affElglUxU+MI8pTz3bZd/igLmbJkOHvxTo/cnUdyj+cJ294uV
         GT6ubxngcOBlS4acAX1BnK3aGfwx/IHAZZcgLNAGmeRvQp+ffWYMBBLXUl8mglDAV/az
         JUDw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="f/97Fv/K";
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id m19si172806otn.1.2020.09.01.09.56.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Sep 2020 09:56:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Received: by mail-pf1-x443.google.com with SMTP id o68so1142520pfg.2
        for <clang-built-linux@googlegroups.com>; Tue, 01 Sep 2020 09:56:03 -0700 (PDT)
X-Received: by 2002:a63:8f41:: with SMTP id r1mr2168810pgn.375.1598979362793;
        Tue, 01 Sep 2020 09:56:02 -0700 (PDT)
Received: from google.com ([2620:15c:2ce:0:a6ae:11ff:fe11:4abb])
        by smtp.gmail.com with ESMTPSA id 205sm2651217pfz.14.2020.09.01.09.56.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Sep 2020 09:56:01 -0700 (PDT)
Date: Tue, 1 Sep 2020 09:55:58 -0700
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>
Cc: Andrew Morton <akpm@linux-foundation.org>,
	Kees Cook <keescook@chromium.org>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Sedat Dilek <sedat.dilek@gmail.com>, Marco Elver <elver@google.com>,
	Andrey Konovalov <andreyknvl@google.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	clang-built-linux@googlegroups.com,
	Daniel Borkmann <daniel@iogearbox.net>,
	Alexei Starovoitov <ast@kernel.org>, Will Deacon <will@kernel.org>,
	Vincenzo Frascino <vincenzo.frascino@arm.com>,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/7] Revert "kbuild: disable clang's default use of
 -fmerge-all-constants"
Message-ID: <20200901165558.sgzbui6khedvwy3o@google.com>
References: <20200901002326.1137289-1-ndesaulniers@google.com>
 <20200901002326.1137289-3-ndesaulniers@google.com>
 <20200901045516.GA1561318@ubuntu-n2-xlarge-x86>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20200901045516.GA1561318@ubuntu-n2-xlarge-x86>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="f/97Fv/K";       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::443
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



On 2020-08-31, Nathan Chancellor wrote:
>On Mon, Aug 31, 2020 at 05:23:21PM -0700, Nick Desaulniers wrote:
>> This reverts commit 87e0d4f0f37fb0c8c4aeeac46fff5e957738df79.
>>
>> This was fixed in clang-6; the minimum supported version of clang in the
>> kernel is clang-10 (10.0.1).
>>
>> Link: https://reviews.llvm.org/rL329300.
>> Link: https://github.com/ClangBuiltLinux/linux/issues/9
>> Suggested-by: Nathan Chancellor <natechancellor@gmail.com>
>> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
>
>Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

How about expanding "This was fixed in clang-6" to be
-fno-merge-all-constants has been the default since clang-6?

(Both gcc|clang -fmerge-all-constants can cause an assertion failure for
the example on https://bugs.llvm.org/show_bug.cgi?id=18538 )

Reviewed-by: Fangrui Song <maskray@google.com>

>> ---
>>  Makefile | 9 ---------
>>  1 file changed, 9 deletions(-)
>>
>> diff --git a/Makefile b/Makefile
>> index 37739ee53f27..144ac6a073ff 100644
>> --- a/Makefile
>> +++ b/Makefile
>> @@ -932,15 +932,6 @@ KBUILD_CFLAGS += $(call cc-disable-warning, maybe-uninitialized)
>>  # disable invalid "can't wrap" optimizations for signed / pointers
>>  KBUILD_CFLAGS	+= $(call cc-option,-fno-strict-overflow)
>>
>> -# clang sets -fmerge-all-constants by default as optimization, but this
>> -# is non-conforming behavior for C and in fact breaks the kernel, so we
>> -# need to disable it here generally.
>> -KBUILD_CFLAGS	+= $(call cc-option,-fno-merge-all-constants)
>> -
>> -# for gcc -fno-merge-all-constants disables everything, but it is fine
>> -# to have actual conforming behavior enabled.
>> -KBUILD_CFLAGS	+= $(call cc-option,-fmerge-constants)
>> -
>>  # Make sure -fstack-check isn't enabled (like gentoo apparently did)
>>  KBUILD_CFLAGS  += $(call cc-option,-fno-stack-check,)
>>
>> --
>> 2.28.0.402.g5ffc5be6b7-goog
>>
>
>-- 
>You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
>To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
>To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200901045516.GA1561318%40ubuntu-n2-xlarge-x86.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200901165558.sgzbui6khedvwy3o%40google.com.
