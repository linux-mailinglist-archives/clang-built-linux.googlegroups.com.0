Return-Path: <clang-built-linux+bncBCDZTXMP2EPRBQ4SVL2QKGQEXNFANDI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3e.google.com (mail-vs1-xe3e.google.com [IPv6:2607:f8b0:4864:20::e3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 24FBD1BF26E
	for <lists+clang-built-linux@lfdr.de>; Thu, 30 Apr 2020 10:16:05 +0200 (CEST)
Received: by mail-vs1-xe3e.google.com with SMTP id f22sf1122499vsa.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 30 Apr 2020 01:16:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588234564; cv=pass;
        d=google.com; s=arc-20160816;
        b=S5JFAXQF3rDPlfMNZFU7UPA/JQQ9vUA/V24aP/37G7wE++0l6jkOzuQ5wqj4d91i3t
         x6S9jTquZhucprbNxM5dqat92Mg5O6cj6ojMueXsdg9QUEpb3K9nCWDnvD1QCz+rBTro
         IXZqa2KDz9OYPKADiAmJWm6VZYhG/nxYkTyH5JK4kcv2TdEXTYsKQV+DFtT3GfX6VSPF
         L5OjNoXE8qomb+FhYNHBpbJlCYfktGXeVmbI4fvy6CTo2xQROhvCUQ1WPlSW9+WBTSX9
         YU6e3DZcFYHeECZc3hLmmh6+YG1D1JPnWHTHaGq7IQfpxXpIqLEX4TKplAldH4th1XS0
         Cvzw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=QZvUhUYObv6K0pBN00oNMvtIuQszpYCsWjQ1e66oxzQ=;
        b=clArAHz3MCZzy+SpzIZkKVkurvSxakaUsSjpMpIPhlpxgJ9XY3oXf9VzbiVZ/gaouo
         dRE2yFXqSZBEUlUlPdMuvZuI3huwqtdyYk1nMJPx/lWTn0FSMlvugp/yEJJSWsMKmbzh
         TSK1QGd/XtE796ES18ok/HDuN80xEMdKLb0bDUCU1J1be7THSmUq3BEalJY1sdWPwxIf
         HrhT5obvx1NW8vi3ouUOOIS21YryRJQCsgn/tTl0sz8LZ4MbANAJZ9g7KPbHB6obIMIo
         tfLnHW0xOEjhJEunSeZDOUWTAd+pmwLF3n9T4+q+g4fSWIw9fgK/taFuctHamm0eA164
         euDw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="Mmo/bEoB";
       spf=pass (google.com: domain of jolsa@redhat.com designates 205.139.110.120 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=QZvUhUYObv6K0pBN00oNMvtIuQszpYCsWjQ1e66oxzQ=;
        b=B2zQSG9/355nqH8YpAChyUEQ86jGmMzkIVSERy3yMiipgvuh2CHTuYTCtEOTXuSLJw
         tcrqj2ZZzqZ1BbHS/A/lhk5DLa9V8amFEfeg367UA5MyViXo20vXMW23Wt1IEJcGYDAW
         DimzlFBMpeD6K07fxjoVDOMobEKNEQ7W7fr70o5NhxNAidiBF4lTXiaCNeiwg6BqMuHO
         aW5rMMyBwQ8bDL4P9WJu0S/WyEB77VH4bi0ZfhMvL4/IweWVsINI8fMJ9nx4Darr+O0V
         SdnnjZ9aaIuclGr5V3sebPVEtbTixJcZcnl+RXbPb6W9r2tp2r7AZKh4gu6ZEkeCw0eB
         A3MQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=QZvUhUYObv6K0pBN00oNMvtIuQszpYCsWjQ1e66oxzQ=;
        b=j3QRLzO7AmHDF1zg4yZw4CWBuif8ckt+yD1NxE+5xi8IFJYR0tpZstK43NsqhC+2wk
         RYtBoIEfTeUx8T3FPxSmMAP4KUXYRGapB5dDAyEM0kThSE0MQ3W4ZvrC9MqkZqVZBwJ7
         AdkA092cEl2BYRfRXcjf6qLz8BR7ZQNuULVED1Gjb0p+cPitoI/CAYxAmW8k3PkxruHp
         t217b9ZtKxG+ClMFsvgOeUbtUSu3kj/qI/4wM/I/CWUvlIV4IhNQhuDlek+8tpO2rXjZ
         RDRrymX9wUo+27mWZGv61qpfjCSHwKr45JjFh9fi749UeE6vjsSO+juwFUeRTqPNjjbF
         yZuQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuYZaWxSoh035GFddNGM2ofoW0jRYFFJMOngWSGsfDuDfSrhRh7u
	woaf/ig7NPxIyz3uSM0ashc=
X-Google-Smtp-Source: APiQypJVLx+sxg6J8wjkOEvbhTPdU50bb/R3YbjhGOahm4WcW8LIoq0ryvL1WUigYn6dLmNSxTW2qA==
X-Received: by 2002:ab0:48a6:: with SMTP id x35mr1402611uac.138.1588234563855;
        Thu, 30 Apr 2020 01:16:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:c319:: with SMTP id r25ls244928vsj.4.gmail; Thu, 30 Apr
 2020 01:16:03 -0700 (PDT)
X-Received: by 2002:a67:f5d6:: with SMTP id t22mr1841833vso.73.1588234563495;
        Thu, 30 Apr 2020 01:16:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588234563; cv=none;
        d=google.com; s=arc-20160816;
        b=OAebC+ErM7NtQGZAyNo59grwe9ASDiIzzyXsQ1a0ImX6s21qbmtc5xOoX9Hg96YXhH
         h9emU/9OTwkRJ0AFKJXm6l9lj0wpLAMm+Y2RGfULZ3ZE94yXOp/rCWaCOHgMVs4FnCP7
         q72ghug3R3sXYXoFLygPoBDIjc1ngH0xVJgZgNBKAQ7McukUPTVCWzLRG/TpQGqfztGA
         Z8x6lzeCXjXtcOdeDVwtvNSd9PFvinQJhmXcmXkPGIYfg4zkP4IUC1af6Wb5w3VX8UDP
         XiefxxnnvynqPzzmkyvUwwpk7kcXpy/jX/5yFrHQ+XDbewuDZiEGQBhNNwUvSTGF9xHB
         R3Ew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=XWFBCycrzpYryQQUalteW2/Qk7N32f3MKAGykOY2kJY=;
        b=hysXhwLLgugxFrq8vGwRbkz5WqETci1bQlK/F79/OmzCXIyI2Vbj+oJZ59UKMkXv5P
         Bvr3aHTdKadnvhlIk8lSVZ2nzxkZOgRgjbhga3eggoi8HQfX5jM2oF0IgttHmvD5KiVi
         N5SAPJD+rQiqNOnW7jz1T7UDaGNp8G7P6m7ZWElHx5H/DY0808N//cvawIbavOsN4e/y
         MjYysLN/HcDygfL8XMtWkwqVCcOjRKZMCXfw4kKwM09PPTCtfYNO7lHsWlAUnIh+iRAd
         7dVOFgRGrEhcWLeU4LxdtJrbSkyVML924GQo8OEddYvBZ6s4AhVPcyEhEcj3BljgkktJ
         zvUA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="Mmo/bEoB";
       spf=pass (google.com: domain of jolsa@redhat.com designates 205.139.110.120 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by gmr-mx.google.com with ESMTPS id u20si106924uan.1.2020.04.30.01.16.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 30 Apr 2020 01:16:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of jolsa@redhat.com designates 205.139.110.120 as permitted sender) client-ip=205.139.110.120;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-258-x9Pn4iPLMIutuPhv_WeicQ-1; Thu, 30 Apr 2020 04:15:55 -0400
X-MC-Unique: x9Pn4iPLMIutuPhv_WeicQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id DE791872FE0;
	Thu, 30 Apr 2020 08:15:53 +0000 (UTC)
Received: from krava (unknown [10.40.192.9])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id ACA3E5D9F1;
	Thu, 30 Apr 2020 08:15:47 +0000 (UTC)
Date: Thu, 30 Apr 2020 10:15:41 +0200
From: Jiri Olsa <jolsa@redhat.com>
To: Ian Rogers <irogers@google.com>
Cc: Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>,
	Arnaldo Carvalho de Melo <acme@kernel.org>,
	Mark Rutland <mark.rutland@arm.com>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Namhyung Kim <namhyung@kernel.org>, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Stephane Eranian <eranian@google.com>
Subject: Re: [PATCH v2] perf mem2node: avoid double free related to realloc
Message-ID: <20200430081541.GA1681583@krava>
References: <20200320182347.87675-1-irogers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200320182347.87675-1-irogers@google.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Original-Sender: jolsa@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b="Mmo/bEoB";
       spf=pass (google.com: domain of jolsa@redhat.com designates
 205.139.110.120 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
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

On Fri, Mar 20, 2020 at 11:23:47AM -0700, Ian Rogers wrote:
> Realloc of size zero is a free not an error, avoid this causing a double
> free. Caught by clang's address sanitizer:
> 
> ==2634==ERROR: AddressSanitizer: attempting double-free on 0x6020000015f0 in thread T0:
>     #0 0x5649659297fd in free llvm/llvm-project/compiler-rt/lib/asan/asan_malloc_linux.cpp:123:3
>     #1 0x5649659e9251 in __zfree tools/lib/zalloc.c:13:2
>     #2 0x564965c0f92c in mem2node__exit tools/perf/util/mem2node.c:114:2
>     #3 0x564965a08b4c in perf_c2c__report tools/perf/builtin-c2c.c:2867:2
>     #4 0x564965a0616a in cmd_c2c tools/perf/builtin-c2c.c:2989:10
>     #5 0x564965944348 in run_builtin tools/perf/perf.c:312:11
>     #6 0x564965943235 in handle_internal_command tools/perf/perf.c:364:8
>     #7 0x5649659440c4 in run_argv tools/perf/perf.c:408:2
>     #8 0x564965942e41 in main tools/perf/perf.c:538:3
> 
> 0x6020000015f0 is located 0 bytes inside of 1-byte region [0x6020000015f0,0x6020000015f1)
> freed by thread T0 here:
>     #0 0x564965929da3 in realloc third_party/llvm/llvm-project/compiler-rt/lib/asan/asan_malloc_linux.cpp:164:3
>     #1 0x564965c0f55e in mem2node__init tools/perf/util/mem2node.c:97:16
>     #2 0x564965a08956 in perf_c2c__report tools/perf/builtin-c2c.c:2803:8
>     #3 0x564965a0616a in cmd_c2c tools/perf/builtin-c2c.c:2989:10
>     #4 0x564965944348 in run_builtin tools/perf/perf.c:312:11
>     #5 0x564965943235 in handle_internal_command tools/perf/perf.c:364:8
>     #6 0x5649659440c4 in run_argv tools/perf/perf.c:408:2
>     #7 0x564965942e41 in main tools/perf/perf.c:538:3
> 
> previously allocated by thread T0 here:
>     #0 0x564965929c42 in calloc third_party/llvm/llvm-project/compiler-rt/lib/asan/asan_malloc_linux.cpp:154:3
>     #1 0x5649659e9220 in zalloc tools/lib/zalloc.c:8:9
>     #2 0x564965c0f32d in mem2node__init tools/perf/util/mem2node.c:61:12
>     #3 0x564965a08956 in perf_c2c__report tools/perf/builtin-c2c.c:2803:8
>     #4 0x564965a0616a in cmd_c2c tools/perf/builtin-c2c.c:2989:10
>     #5 0x564965944348 in run_builtin tools/perf/perf.c:312:11
>     #6 0x564965943235 in handle_internal_command tools/perf/perf.c:364:8
>     #7 0x5649659440c4 in run_argv tools/perf/perf.c:408:2
>     #8 0x564965942e41 in main tools/perf/perf.c:538:3
> 
> v2: add a WARN_ON_ONCE when the free condition arises.
> 
> Signed-off-by: Ian Rogers <irogers@google.com>

I overlooked v2 for this, sry

Acked-by: Jiri Olsa <jolsa@redhat.com>

thanks,
jirka

> ---
>  tools/perf/util/mem2node.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/tools/perf/util/mem2node.c b/tools/perf/util/mem2node.c
> index 797d86a1ab09..c84f5841c7ab 100644
> --- a/tools/perf/util/mem2node.c
> +++ b/tools/perf/util/mem2node.c
> @@ -1,5 +1,6 @@
>  #include <errno.h>
>  #include <inttypes.h>
> +#include <asm/bug.h>
>  #include <linux/bitmap.h>
>  #include <linux/kernel.h>
>  #include <linux/zalloc.h>
> @@ -95,7 +96,7 @@ int mem2node__init(struct mem2node *map, struct perf_env *env)
>  
>  	/* Cut unused entries, due to merging. */
>  	tmp_entries = realloc(entries, sizeof(*entries) * j);
> -	if (tmp_entries)
> +	if (tmp_entries || WARN_ON_ONCE(j == 0))
>  		entries = tmp_entries;
>  
>  	for (i = 0; i < j; i++) {
> -- 
> 2.25.1.696.g5e7596f4ac-goog
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200430081541.GA1681583%40krava.
