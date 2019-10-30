Return-Path: <clang-built-linux+bncBD7I3CGX5IPRBKP547WQKGQE7UDZFNA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43a.google.com (mail-wr1-x43a.google.com [IPv6:2a00:1450:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id 48B7CEA54C
	for <lists+clang-built-linux@lfdr.de>; Wed, 30 Oct 2019 22:20:42 +0100 (CET)
Received: by mail-wr1-x43a.google.com with SMTP id z9sf2040339wrq.11
        for <lists+clang-built-linux@lfdr.de>; Wed, 30 Oct 2019 14:20:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572470442; cv=pass;
        d=google.com; s=arc-20160816;
        b=kQbiwxunE5a/iQVaPjduM/mO+yfHDlAGaASsCd5XPJV9GrslUCw3cUpiBs5wBKNQJA
         KFoSJQ1SygoqrgaXIyQjm05IhdTn/52+Kf0ZhgRNr2SjZ9jLLiPwIGPj7ChqVGbjDK/e
         B2QD/RQWtqX9p6PEdA/letmXlxMtA6LmgwEKpiZnj4nUWrFteuZ7VFoes1vTBcYjqUg7
         MdM0knz0dTUJGPzq7UFXvKBaejECaCdUpI/XBSdDXNDPIcQM40mYwYDB2R+ejZQYnALn
         +d0q1jMjJLEUFAiAGoSlD48FuzFpAOxZTh3xG2GgWMl2izdri+NEpDKX9s4Undj5Yo3A
         fWcg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=0w/ZYOEJr8cnChQ+X66ur5ZvSTjb+vCOgWYuzd0PFdY=;
        b=witzDJLtvhyYsd5o+xYnWNIaL8us01qd/pLfBnmj61G0ChSovGajuyEnapFNyHG4Vl
         qUqRaNt6LDcFALbPBfTuMiavLDKelVro1s2ZZhCIB4RuxGVihKwkPwFk+CBkMmQNgZJP
         jqNq7GrWic/22qz/iPYzUUosmETdrw+Rad0C78Rd4BQvE1oVjaq4JOYa8xVq51h9VIdk
         Kicvgt3wIYUdUPrD+p/tUmCQENzzaqWJaHjndJ1lQ1RTqu9pYgo05iFkI8opuHckT6hO
         ue+hKDbwl9zCLoscADRQpJEYiw1d7vNTSkyv9oaDbCsQTlo5kvZyHbJN5Z4Y71DaqKcX
         O3sA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@rasmusvillemoes.dk header.s=google header.b=PuXwjRWN;
       spf=pass (google.com: domain of linux@rasmusvillemoes.dk designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=linux@rasmusvillemoes.dk
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0w/ZYOEJr8cnChQ+X66ur5ZvSTjb+vCOgWYuzd0PFdY=;
        b=C7v2j9LgBSkpYEY+BMcDtxVIS2etHVZrkOUFV7o4yWQOvOmj9HXFzKQLEM1AAJ5BUh
         92lbMeOMchGzTFZ7IJaaGsw9YeDfLLBkxeGKOIsKsFSLkhIlfrReT9CTf+ycQuha68VP
         wudS1oNil4jF8GkzqDluKHnSsSZRbkS7ioa8BnTKohLgXmwm1FfVuReFJt28aMB+Y51O
         GLdMdP/bo8H8FpJoRlrrRNwZfPx7/UJb2XtWR11vroQl9nbcVHSuBhD2DrpJVhSPSWgt
         n4xEM41XTNTWQ0lMKtOcIzGNt47kUoWoBbXVW1wM7RVw2qVLBYAFXmn/FXXR0JPeCJrP
         zf2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=0w/ZYOEJr8cnChQ+X66ur5ZvSTjb+vCOgWYuzd0PFdY=;
        b=mpFm+Um+CIfOh/F/UCfunan0A8c3LuYRyEMlunjTWHQQ6V4iD9iC1yPpDfkVe4U6Qa
         mLls2yXiF/D+w/7bEjYR8WNAZ7S+P+W+6CoDPP6oYwxOPHYl+VcknDZziwdu4le4Bqp2
         OQamAjYx8summCs+d3iRIfm1sLN5u3Mi+v8IvDProwRjq8/Uf3QAcPEq3UXg4VJDEJDp
         Cd42eUmfrYq49pIg+6+0p4SLYdzNHiYG8qQb0pOvf5k6odJ6GH/XdX5QPh6A6Q55DcR7
         BqgHNHz2cfF6Rqlggm3NwH2iNXG1u8ipGdf5cQC2zgqdSB0Y4vh3YiYYQ6onmGoSkHAe
         wjVA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUj0GRyCSnAKneS6XwMlDeHC1seAE5ABPzMC9oaGhMv6aDO/H36
	iygKTN0dUhxX/zzNCWrenjM=
X-Google-Smtp-Source: APXvYqxbvHp+aDT2pqWhcw2oLadirIIanxct5e48Lf2C/XmnROnRtycckjYvV2y0j/jXDUSh8J8Ojg==
X-Received: by 2002:a7b:c747:: with SMTP id w7mr1561957wmk.62.1572470441970;
        Wed, 30 Oct 2019 14:20:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:ca45:: with SMTP id m5ls415247wml.1.canary-gmail; Wed,
 30 Oct 2019 14:20:41 -0700 (PDT)
X-Received: by 2002:a1c:16:: with SMTP id 22mr1593967wma.0.1572470441172;
        Wed, 30 Oct 2019 14:20:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572470441; cv=none;
        d=google.com; s=arc-20160816;
        b=F69Xz1GPPjhdVoufNJmndUfuagfuJtozT40P5KsOJHf2W02DgmfaqxcrxB4urjd5S+
         CstIk9UJn02R/c5uyIiwTSdndt3rZ0fwSb8LRXw+r5+pQQd6/Ec2rKVONew7pnP2Umxu
         iuy7wX4nV96608uq5QUyuHMAERy5NJUO5QeuzNj6BrR5WfVP920CIJiUxoRRm5DTQczQ
         /avJYco/iRDD/Fj2fkBMDLE6el/A5tVivper+78P3Vy2l9mGJRxXF3Gv8v1KzBajhpUn
         5h1hfDgSvweY5sFJfSiRz9+4TDZlTmaGy5VfzmWXnkBH/rFAM4GMkyAU1/9vzP2pnymv
         GJEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=bCCM/FRoxM1DGbV5FxJ1654B4s7XPuP0KBkaEzbQ0SY=;
        b=Yy6RcHh7CAQracO3P8Djc/MkD6qO2TgRutf2aqjC5k8r7KEYK2kbjZj04ebhtAczfl
         KJZPhYQQY0Jb6ZX/KU80Xspzz5uropA3rgCVR0wvJTv8tQZFx8owm+PSv6a4iEEHRJCg
         4nG346ZLXcgkZM5hO5zKK2q/kLtjLrwNj98omYh0yATaz0NM0B+Y/8BDFWUuyx0lmBTN
         AuaZ28JJ77D0xmJkv82zijZiEuMv7z4vpC/fTK+Cdl+pE+S3XKJ+iKzOKVptzkVU0R2x
         4IRyj7fnmgxyEVAvOVZPlW/0IzCDxoxEiqjwvkWVuuF4QcXckA8mBLxZbLhc/qfdhdBO
         gDXQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@rasmusvillemoes.dk header.s=google header.b=PuXwjRWN;
       spf=pass (google.com: domain of linux@rasmusvillemoes.dk designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=linux@rasmusvillemoes.dk
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com. [2a00:1450:4864:20::342])
        by gmr-mx.google.com with ESMTPS id e17si142423wre.3.2019.10.30.14.20.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Oct 2019 14:20:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of linux@rasmusvillemoes.dk designates 2a00:1450:4864:20::342 as permitted sender) client-ip=2a00:1450:4864:20::342;
Received: by mail-wm1-x342.google.com with SMTP id g19so3755725wmh.4
        for <clang-built-linux@googlegroups.com>; Wed, 30 Oct 2019 14:20:41 -0700 (PDT)
X-Received: by 2002:a7b:cb05:: with SMTP id u5mr1410088wmj.36.1572470440796;
        Wed, 30 Oct 2019 14:20:40 -0700 (PDT)
Received: from [192.168.1.149] (ip-5-186-115-54.cgn.fibianet.dk. [5.186.115.54])
        by smtp.gmail.com with ESMTPSA id h124sm1393305wmf.30.2019.10.30.14.20.39
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 30 Oct 2019 14:20:40 -0700 (PDT)
Subject: Re: [PATCH 01/16] dyndbg: drop trim_prefix, obsoleted by __FILE__s
 relative path
To: Jim Cromie <jim.cromie@gmail.com>, jbaron@akamai.com,
 linux-kernel@vger.kernel.org
Cc: greg@kroah.com, clang-built-linux@googlegroups.com,
 Jonathan Corbet <corbet@lwn.net>, Randy Dunlap <rdunlap@infradead.org>,
 linux-doc@vger.kernel.org
References: <20191029200001.9640-1-jim.cromie@gmail.com>
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
Message-ID: <07db7036-b46f-c157-5737-e3d96c808f14@rasmusvillemoes.dk>
Date: Wed, 30 Oct 2019 22:20:39 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191029200001.9640-1-jim.cromie@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: linux@rasmusvillemoes.dk
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@rasmusvillemoes.dk header.s=google header.b=PuXwjRWN;
       spf=pass (google.com: domain of linux@rasmusvillemoes.dk designates
 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=linux@rasmusvillemoes.dk
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

On 29/10/2019 21.00, Jim Cromie wrote:
> Regarding:
> commit 2b6783191da7 ("dynamic_debug: add trim_prefix() to provide source-root relative paths")
> commit a73619a845d5 ("kbuild: use -fmacro-prefix-map to make __FILE__ a relative path")
> 
> 2nd commit broke dynamic-debug's "file $fullpath" query form, but
> nobody noticed because 1st commit trimmed prefixes from control-file
> output, so the click-copy-pasting of fullpaths into new queries had
> ceased; that query form became unused.
> 
> So remove the function and callers; its purpose was to strip the
> prefix from __FILE__, which is now gone.

I agree with the intent, but I wonder if this is premature. I mean, the
-fmacro-prefix-map is only for gcc 8+, so this ends up printing the full
paths when the compiler is just a little old (and the kernel was built
out-of-tree).

I don't think keeping the current workaround for a year or two more
should hurt; when int skip = strlen(__FILE__) -
strlen("lib/dynamic_debug.c"); evaluates to 0 (in-tree build, or build
with new enough gcc), I'm pretty sure gcc optimizes the rest of the
function away (it should know that strncmp(x, y, 0) gives 0, and even if
it didn't, the conditional assigns 0 to skip which it already is, so gcc
just needs to know that strncmp() is pure).

> 
> Also drop "file $fullpath" from docs, and tweak example to cite column
> 1 of control-file as valid "file $input".

That part certainly makes sense, since the $fullpath hasn't actually
been in the control file for a long time.

Rasmus

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/07db7036-b46f-c157-5737-e3d96c808f14%40rasmusvillemoes.dk.
