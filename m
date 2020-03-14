Return-Path: <clang-built-linux+bncBCDZTXMP2EPRB4GRWPZQKGQEI3OSBFQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x137.google.com (mail-il1-x137.google.com [IPv6:2607:f8b0:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 424491855D6
	for <lists+clang-built-linux@lfdr.de>; Sat, 14 Mar 2020 15:23:46 +0100 (CET)
Received: by mail-il1-x137.google.com with SMTP id h87sf9419836ild.11
        for <lists+clang-built-linux@lfdr.de>; Sat, 14 Mar 2020 07:23:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584195825; cv=pass;
        d=google.com; s=arc-20160816;
        b=DwqDllOXipKPv+RCYDvWqEXb5/kAVfa4Vfcy3SgBRQxsuCcrAAh+iMgIbdOrRy+q8u
         ea/oYIG6h8WkbzSR046nBXFQv0iJoWgl/Vbi4MzNIUlqntbuug6G0NAyFlnMdgtpehya
         gAIj7G/5tJ28czTBUYnyWM5K3u9dNbAKXNSRwNu6KP5BYm+hXYIFaHjhD64MOA5Zcu65
         UqQUjplY4DnryA7zjFP7QDjzahYD743i4fApHJyxCZUjFUdW2sLib81ns9OefSbwn4Tv
         0+KfziS4k4JFpov0cS3j8qMJw9PDXj8gkEpUCk+aY7li2PZI22c3pwrXTxELbhbfQ5jV
         IlVw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=4HZcwaOtQ7eL6nTDvh8oNo2LL6OUy3JHLMP5nylmdp8=;
        b=X3JZnVafp81y/rzvlHk1UT2kC6Wkj9/Urrte3IpBOhKTxDIsoUnxAV1ECFQTRjW/Pd
         +aQ8RIw/SpFyYO14Ry14zzS228Or/plhqUcY/3FJmztg3zPbli3b83wPL9vUN016T8yJ
         5hEK3d1QNcSB9W1HYAEVn4wLqIsbzJkZjCo5sSrvfT4tenbfXw4GPN3M9mdJ9GYnc/R8
         OkWsqxl3ZV4QBPdZa4htVWyi/74xOY0j3yTuUvx0LVobvgC/P5osOZymcaCsYJm3nSik
         8KzPZegzniUfIhUBI+yoJY7wxA9BqylmmDKyMvv504LnuQRvIm05m0R7lvGeAcQmMJtS
         iYgg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="F/c+HX7M";
       spf=pass (google.com: domain of jolsa@redhat.com designates 205.139.110.61 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4HZcwaOtQ7eL6nTDvh8oNo2LL6OUy3JHLMP5nylmdp8=;
        b=qJ2lgVIKZHzeQusLf3OQX4q20DAq02ehkDfz4KEhbywVCek3W94BNIuH1MXaZTpGsp
         Kf4JsZSq6JQ21NzeN4ydgC5czKGOmVkhdOeWaWh0wUSDGrDcR/uKcVplmFXwOG2Iy/4+
         kKWAdC+ey0WMbVlHPFgDrBGcz9+3ePtvxlXzBNbzRuSeFZDa6PfLheq4EJYjNNk/BnAe
         G8TOF752SrLKg5iEtrJyXN8MfKwEzDAsrcpxqkDrWFOUUMildIiqVDIf6VW5VB+yaOyX
         LLHj+aQUVVAkpTXkJafjvx4qw6sIbzy7UdqrmLgXFXhuMclo4/U79R382wiNY1gJVx8Q
         CuzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=4HZcwaOtQ7eL6nTDvh8oNo2LL6OUy3JHLMP5nylmdp8=;
        b=fvGqzEsr/o7/Ye8qMwy/5YE4dFdRfvtpEGFehXSyhdjFoyUoUbytGKC5FTZoNSWwmj
         2uhVkZbvJFGa+/qP16LlxSpJ5YSVK+NE3br3/UtXgVYF7ZEbi/5yNaSuL52gM2jYZXVn
         zsz8xTjRy35uTiF+AgYb167jdSiCZa0lCLmWXm4YVXdqcRivCgwuTQbA/tbWCWpJ38MY
         bq0F6qkShWPnDpvZVr20Xsv/Crali+bifUE+qJfi5sdlvz1fd6j8p3pJSHCaUYKrjc1J
         M32QQ+OOiVmtrvuZNniC1kYgPqII3eFMbY8DttR5v01T1+1XEmCOKAoTeJs69g1DMeDV
         2rSw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ25MaFZYsD1FbyaJNbXJ5bQ1/ltoB2aeTKjoRlRfGXhe1KwE2os
	khIvJ2WnnWi0Bo5CXpUuuqo=
X-Google-Smtp-Source: ADFU+vsbLmDhqW5ElPjC0lCDOEWGdIW6XrTqubzCIQmSVn7mPfLvHsTuilNJXw4GckWxb6wUcRt7Rw==
X-Received: by 2002:a92:8d0e:: with SMTP id s14mr18447225ild.117.1584195825057;
        Sat, 14 Mar 2020 07:23:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:194:: with SMTP id 142ls3530230ilb.4.gmail; Sat, 14 Mar
 2020 07:23:44 -0700 (PDT)
X-Received: by 2002:a92:8151:: with SMTP id e78mr19841299ild.227.1584195824614;
        Sat, 14 Mar 2020 07:23:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584195824; cv=none;
        d=google.com; s=arc-20160816;
        b=EMR+8hEFkTF1WjPenV2XRw/x6qLOTk+22U5IG57wz7BEg9P74HVNWegx5p06O7QAkI
         nLn5Y2XqU4kcnWz+9Hb5asBRBorWV4UwEzQCbHwYrJqaQnVposVn9oT2ETrUXeEU0cR+
         LbJoxClsfIbQpVB50jME/h6j84G8vzSIoSf1IFNCTRgdJpaOIjh01NYjhtcH+gw5JiOZ
         L3DbfV1vTxudrYsiGUFk07H0v5qgDnSgeoBDFtxl30/YNKIUJoJQ3Nhq/1LZW2tCXAZ9
         /hmksP1ZouHJMxZxjXSfUdoS4sjxiJ3qS4EE9MuZ0dF82ozGv06aVvsuc6CyM7N7UxDa
         RcfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=VrADU/PINzBsLrlwn0rNGO/SJpZ9lJsqfzDpikUYU20=;
        b=Nafbb2CRD1xILXg4w9PlFWWXPKFASCRewHWFDNKb64N/NKc7zduLtvup+1YbT5Bnz4
         yLFAw0OQvw7lTeH50hnoQg6AGeUXKoyUhlb2dVOm5ra7v+IMVV4qvQDLg+MrfM1R9SwC
         MNx3UfJO6qMY62QQS21SzWPGRrnjlqG/4AW0X+x1aUh72hP+unufZBpFHfT/+S4VTVqS
         thDUh2+0DMyKP1n0689OKJi1vAvgfHoSLjc0f44i5MFNsW8m9XKpTzX5IGr9CoqiePlq
         uDscAvoIzFVb/pXef2K4giyqfYpDFeC7YXIQK5Nllz+5XAiuAqWc83/GyG1Jx4lILEO1
         PH4g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="F/c+HX7M";
       spf=pass (google.com: domain of jolsa@redhat.com designates 205.139.110.61 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com. [205.139.110.61])
        by gmr-mx.google.com with ESMTPS id t10si722463ilf.3.2020.03.14.07.23.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 14 Mar 2020 07:23:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of jolsa@redhat.com designates 205.139.110.61 as permitted sender) client-ip=205.139.110.61;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-492-RM77OEpTPjauMLoiGcXSRA-1; Sat, 14 Mar 2020 10:23:40 -0400
X-MC-Unique: RM77OEpTPjauMLoiGcXSRA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 84481800D4E;
	Sat, 14 Mar 2020 14:23:38 +0000 (UTC)
Received: from krava (ovpn-204-34.brq.redhat.com [10.40.204.34])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4E5995C1B0;
	Sat, 14 Mar 2020 14:23:35 +0000 (UTC)
Date: Sat, 14 Mar 2020 15:23:32 +0100
From: Jiri Olsa <jolsa@redhat.com>
To: Ian Rogers <irogers@google.com>
Cc: Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>,
	Arnaldo Carvalho de Melo <acme@kernel.org>,
	Mark Rutland <mark.rutland@arm.com>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Namhyung Kim <namhyung@kernel.org>, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Stephane Eranian <eranian@google.com>
Subject: Re: [PATCH] perf mem2node: avoid double free related to realloc
Message-ID: <20200314142332.GB492969@krava>
References: <20200314042826.166953-1-irogers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200314042826.166953-1-irogers@google.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Original-Sender: jolsa@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b="F/c+HX7M";
       spf=pass (google.com: domain of jolsa@redhat.com designates
 205.139.110.61 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
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

On Fri, Mar 13, 2020 at 09:28:26PM -0700, Ian Rogers wrote:
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
> Signed-off-by: Ian Rogers <irogers@google.com>
> ---
>  tools/perf/util/mem2node.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/tools/perf/util/mem2node.c b/tools/perf/util/mem2node.c
> index 797d86a1ab09..7f97aa69eb65 100644
> --- a/tools/perf/util/mem2node.c
> +++ b/tools/perf/util/mem2node.c
> @@ -95,7 +95,7 @@ int mem2node__init(struct mem2node *map, struct perf_env *env)
>  
>  	/* Cut unused entries, due to merging. */
>  	tmp_entries = realloc(entries, sizeof(*entries) * j);
> -	if (tmp_entries)
> +	if (j == 0 || tmp_entries)

nice catch.. I wonder if we should fail in here, or at least
warn that there're no entris.. which is really strange ;-)

thanks,
jirka

>  		entries = tmp_entries;
>  
>  	for (i = 0; i < j; i++) {
> -- 
> 2.25.1.481.gfbce0eb801-goog
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200314142332.GB492969%40krava.
