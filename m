Return-Path: <clang-built-linux+bncBCTZ5O62V4ORBRVE2WAAMGQE5UIUGBA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93f.google.com (mail-ua1-x93f.google.com [IPv6:2607:f8b0:4864:20::93f])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CFA930951B
	for <lists+clang-built-linux@lfdr.de>; Sat, 30 Jan 2021 13:34:15 +0100 (CET)
Received: by mail-ua1-x93f.google.com with SMTP id z4sf3175986uan.8
        for <lists+clang-built-linux@lfdr.de>; Sat, 30 Jan 2021 04:34:15 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612010054; cv=pass;
        d=google.com; s=arc-20160816;
        b=ml2K9sG87Fb6yUiJDkSJMqvf3F1OuSMd8Koq8gD3f4GUCrIWeZboepAGITTSxucmcl
         1mW9nxRhoQzYACa7y0Nhj6MmSeqxGq3E+nG3Jv7wy/450W8np6p36cEOCxPQ4bUdC7MB
         XTB6Jcwcj+OXF02Elu3zSUj5NoH1LnrY0enho48vpj9x3qxpHM79mop7NExAurp0S6Md
         +JenoWlUm9mjcPDk028n7mEIxHI3ZbMaQCdDrKbhWymDrcOqwpOZBPsICWoSqxYp8B5O
         xsTseNviAO68WtBcVj2y4sMxjU43yj1tYjnsW5WrXVmNuiZ9ru9oAL7xVY936aT+I/xD
         m+Nw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=XCN/KNNHHLJeAK7eyXbrS2pga9xxhTab0Z/mlpwbcVk=;
        b=ixnE3TTWOUQHKt0IgqxsjKR1rY6MSBkhxY6X3oJ7jLxf/UyKACk6co56TE5vw/jHQZ
         OmFt30uvRm1R60LMCjfNd2eXVvnx4Laq8XKYdpp9IOUSTKdMOV2sMD8erKC0EfPMCpv0
         f7waJEVxnjVQNc+bQbSPYEfNHGv0VShz/SuGtMkiKUN/j77VpOM/NAejRdL0x58U6IpZ
         ZEhe3OXXb7t/WU4IFwi92GResa/5Xy5TBwB9Jv9oM4bRJviTssa8GsFByRbfy8TfULUo
         uTkQKrGmogS5bw7gY0JJJdxeOYfEu5ljUgQNZAcqqZoZSlZ3/5fgwvUhQItg3lwIPpWu
         GiCg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JkmqbLLy;
       spf=pass (google.com: domain of viniciustinti@gmail.com designates 2607:f8b0:4864:20::135 as permitted sender) smtp.mailfrom=viniciustinti@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=XCN/KNNHHLJeAK7eyXbrS2pga9xxhTab0Z/mlpwbcVk=;
        b=qq0MFDB+HMpH9yB5ikqaDs8DMaSbVcTbYttDunSHr7SRTtw+swNN7I/qOoZchn5IPP
         UtGghCJzxUedHqsrm8lUOibl+na0LuvsMU3g6HTtAvDt6+FDw77m/db/mjr2ybw3vTEu
         beeFA2/PlDH7HPgGAMRJ6Wu+nvvH82erJuz2XBokZaPBlzAJFWBV8skUp1gAster+Oix
         bPCru2Hqne9yrAhyD5ce/ZVXCE4RT/JDpI2DngvGDiXSqj6sgBkkVUMKUGtidAY1ve9w
         liOrpo2+NwYZAH0U/9q9aGTJYGpIY3DcA8h8URxqpGaDzRg23Ooy6wFW/tuG3T6xr3uB
         8bjQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=XCN/KNNHHLJeAK7eyXbrS2pga9xxhTab0Z/mlpwbcVk=;
        b=DwKHkZqpV/J52Y75SPh8gcCEeMp91A8+hKXMv07uceyMaXyOQaytq/enev6X/LZchf
         UD1jAIWIt3zcF89F5pseSA18sWORPUpsH2oreq048sYWdwkm83gpmrDf9v6KEFBs4D9i
         Uds1W0eYwG7B0L/pizixfgFKmJiuQER/euIZcqtl07II85q6Ng6Rb8Qjmqw/kLPYQ5qp
         DqzIPBv1ovBaX2zoNJUK90oxfNOs51N+LuoEy3ew7WaMw+a6yiAi3Dg/5dvxE1vXXEAe
         ELdvtcd3XVCZs7wsxSg5kDOkbDa+etqfbGb4H2DYd7mEvlNlX4r/NVvERvJ9HU7Y3Z5V
         +QYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=XCN/KNNHHLJeAK7eyXbrS2pga9xxhTab0Z/mlpwbcVk=;
        b=ngpqJ77MqP3aIQ34W7rRQHRtoYJuid6poM3TRjkInuuqO+RM2uykByMW7vVFLeRKXz
         QAr3Bv8JTWHWxVspB4He/I+tqsI+MJgNtoGX9MZuD/PLZghBaNzvuUPCipND/eZr5TeS
         KuhAbFksBnQ6ZoB4fP21ymM3E6R4zryufPaqUdCaxuvW/r1ZCl4WfzwUecyut8YWnFpw
         v98EO7X2WeZZs/bZ4/GhHL2bTUpKEmjy8n8XxKMYqdiPwkOCg8H4dryOoqozNlib86YH
         +PvvsQxjKT5zI7g3Y0zZCHEQSTKx8B1Ex0ukz4bOlQ8aJV4Z2EQKTSqWNpECfHWRtI3g
         d5vQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Cib3Gyv7apSSPR8yFAjDzYHW6Hf6PQpa6Ca6UTblsGfBxzPl+
	knv8SLP+mWrrpOfAiID8RoU=
X-Google-Smtp-Source: ABdhPJxBJp24u7R8xIkCmveVzNknyEuqbAP9JRNuXmJMQ2deWxdC0fA5CBnve5Doinqwixe11fZ0/g==
X-Received: by 2002:a67:b445:: with SMTP id c5mr5148959vsm.19.1612010054304;
        Sat, 30 Jan 2021 04:34:14 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:fb19:: with SMTP id d25ls1465758vsr.11.gmail; Sat, 30
 Jan 2021 04:34:14 -0800 (PST)
X-Received: by 2002:a67:2547:: with SMTP id l68mr5322919vsl.44.1612010053965;
        Sat, 30 Jan 2021 04:34:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612010053; cv=none;
        d=google.com; s=arc-20160816;
        b=1JaqYdPuONiGja4stUHpNIO6Wa7HvoSgXrF2TDDD8+cD9Y+3RQuBSXL5quSotWmfOT
         EhyNnBQHHNU3s9JntQi9JdUFPnyYDxfJGTDEZAmBRs0pyFgar4+2zulkh8iPwA6AT9cG
         jZ5UxfVZbZRn8x5ogJjwdpl2uzfCgAHxITr7PH/yPkiIRd0fSd6AMG1uKlXicxOIldkF
         9nemxUfeT2yCs12fenuELi0cFr4Uk5oVbx9bNUXcJ6KCqh2M0x3Nc3kxJGddAwgpw0rz
         qsAQYN2ss6WxC+kHWhvSaxCG/I69nbqfiBedE3zg4nrRLEnLRFZnOlitY3mrH5/IyP+K
         MkSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=C7cDNKTuTgw0I2CTtx3BBJ3BTnHf7w/oYJgbFlp2Ulg=;
        b=ihciWR5LQl/v5mY4YHNEJVGCjD0Po9KYuWkYmK/yLmM1RfYGUMSt1G7wIs1zG0zPVn
         g8btImEiwpoNTa+DpuSjOb7X8Y1z5hWZuv29ILcpCe5jOhChiF8gUwAMxHIQxOyF4W46
         +SySEo7+HvEKyJ8PMrtklwHcZXmetLLsffgelgOoCx0v0QYaITF309uZWlf0Bk9sQGTN
         9k5aFGAWCslT8IBZy1xdxlnckndG6yatxXGnpV6X+P+rzQO5+Q46fpvI+AHUmxxdOhtD
         hRJVrukkrU/+0d4HWvW5nGnoDCEgEYMErgBPGk4WcgDVr2KJ9Gd4tymtclyLcj5bapoX
         1WUg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JkmqbLLy;
       spf=pass (google.com: domain of viniciustinti@gmail.com designates 2607:f8b0:4864:20::135 as permitted sender) smtp.mailfrom=viniciustinti@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x135.google.com (mail-il1-x135.google.com. [2607:f8b0:4864:20::135])
        by gmr-mx.google.com with ESMTPS id q11si892231ual.1.2021.01.30.04.34.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 30 Jan 2021 04:34:13 -0800 (PST)
Received-SPF: pass (google.com: domain of viniciustinti@gmail.com designates 2607:f8b0:4864:20::135 as permitted sender) client-ip=2607:f8b0:4864:20::135;
Received: by mail-il1-x135.google.com with SMTP id a1so11050879ilr.5
        for <clang-built-linux@googlegroups.com>; Sat, 30 Jan 2021 04:34:13 -0800 (PST)
X-Received: by 2002:a05:6e02:1a2d:: with SMTP id g13mr6528684ile.228.1612010053300;
        Sat, 30 Jan 2021 04:34:13 -0800 (PST)
Received: from llvm-development.us-central1-a.c.llvm-285123.internal (92.190.192.35.bc.googleusercontent.com. [35.192.190.92])
        by smtp.gmail.com with ESMTPSA id 11sm5781105ilq.88.2021.01.30.04.34.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 30 Jan 2021 04:34:12 -0800 (PST)
Date: Sat, 30 Jan 2021 12:34:11 +0000
From: Vinicius Tinti <viniciustinti@gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Jani Nikula <jani.nikula@linux.intel.com>,
	Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
	Rodrigo Vivi <rodrigo.vivi@intel.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] drm/i915: Remove unreachable code
Message-ID: <20210130123411.GB1822@llvm-development.us-central1-a.c.llvm-285123.internal>
References: <20210129181519.69963-1-viniciustinti@gmail.com>
 <161195375417.17568.2762721732398065240@build.alporthouse.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <161195375417.17568.2762721732398065240@build.alporthouse.com>
X-Original-Sender: viniciustinti@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=JkmqbLLy;       spf=pass
 (google.com: domain of viniciustinti@gmail.com designates 2607:f8b0:4864:20::135
 as permitted sender) smtp.mailfrom=viniciustinti@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Fri, Jan 29, 2021 at 08:55:54PM +0000, Chris Wilson wrote:
> Quoting Vinicius Tinti (2021-01-29 18:15:19)
> > By enabling -Wunreachable-code-aggressive on Clang the following code
> > paths are unreachable.
> 
> That code exists as commentary and, especially for sdvo, library
> functions that we may need in future.

I would argue that this code could be removed since it is in git history.
It can be restored when needed.

This will make the code cleaner.

> The ivb-gt1 case => as we now set the gt level for ivb, should we not
> enable the optimisation for ivb unaffected by the w/a? Just no one has
> taken the time to see if it causes a regression.

I don't know. I just found out that the code is unreachable.

> For error state, the question remains whether we should revert to
> uncompressed data if the compressed stream is larger than the original.

I don't know too.

In this last two cases the code could be commented and the decisions
and problems explained in the comment section.

> -Chris

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210130123411.GB1822%40llvm-development.us-central1-a.c.llvm-285123.internal.
