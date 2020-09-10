Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBGW75D5AKGQENNSICHQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73f.google.com (mail-qk1-x73f.google.com [IPv6:2607:f8b0:4864:20::73f])
	by mail.lfdr.de (Postfix) with ESMTPS id A502A26477D
	for <lists+clang-built-linux@lfdr.de>; Thu, 10 Sep 2020 15:52:27 +0200 (CEST)
Received: by mail-qk1-x73f.google.com with SMTP id c67sf3646880qkd.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 10 Sep 2020 06:52:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599745946; cv=pass;
        d=google.com; s=arc-20160816;
        b=LexU3U2fXw7DvRwFvy5IflO+jTiFFDgSwUAPuAp2H6HQrzSw4WhR5YD8k1Gm2Ezj+6
         Mz758lKDo82j/di1b6YYpPPf4gtlj2FlJFw3uZMK5GTyYKAqrBLW4VYbQXGJjvs3c8Ba
         FVvUsNz/OQgSIXeWY9I7rS9gO2ky097MyIxi+Q7QChS2gRUEsnkiXnEFQRqmvmfA8Eov
         qJADY30Z9x6xarpvKnZTLGi1g3oaJ7e2x6JC6sGdvSFCyqnNsFjEEadWJgdals6hxTAM
         yBudy6VK5kSCWGcFMG8cVS5MMjBMd74gspupUUsUFdufaSeLDCV/olEIslt6+1NXdvos
         xubw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-filter:sender
         :dkim-signature;
        bh=LpODt5yTzMDrWfhral8JsdCCbDZZ6OixmtvXRvF8ZhI=;
        b=LCJjMGV5ff7IjNdigV2Eh8CcLW+P60Vr2+S+vfHuGhkfmtf1e6MlnFePM9H1TUvUYa
         MAv5t6tV/z50lApWuMnLJ6B8N1u//FskB8MmJx2rJ6SdWARbWlysraxYxHap3aL2GwTy
         LMypAhQ+gReCdwE6XDSehEgXfyqs6wlT1ozVN1avgqDfg/EYu9z6J0bts6FA5WKLDGsl
         temcVbAA2ix0HgorB4gMTgpDFOC9bhv8gqJoy+6iQtQfEr64tkQKk2Yvf9otsYXTd2Yq
         yRv8fdqmyc33+cysnXDWRCgo5baNHyFTAr3po6ZPG49RckPM9AFo8OEuVCpd0BmG5xGM
         uiZw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=IwK2cMh3;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.77 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=LpODt5yTzMDrWfhral8JsdCCbDZZ6OixmtvXRvF8ZhI=;
        b=JJHlgyWy6ldXr5Uvaqfjt4YvFn58tLrBjr2xDJntlRbUHF7d03C03skYRU0NJBbYUW
         j9z5U/XkKhBFex2Za0+ssnF5YYH3ImLpc/ODTecKSXmLHnvmpsAIU4aS7c/Q8QeIoF7i
         pf8kbX90XNHKiMlSRIoJH2qw8miduQruF0wg6ReDCim9sBuVG8e+g4Y4hMXQOg+EoGZk
         mdmPKUZbJg1ppqxxnkOaH+Qzlnw8mVS2FV/FKCO8n9bRPIU5IKPwbhTMHjoy7fEqeKIj
         jUUAd0SEFaaAbeJYzBG17JwhA8gn13SBeh9PBBgqsh7I2boz16xqABEjIZeVo1WhtyUY
         7zEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:from:to:cc:subject:date
         :message-id:in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LpODt5yTzMDrWfhral8JsdCCbDZZ6OixmtvXRvF8ZhI=;
        b=bQS5yHDuMpfHFjH++gRQnD22fstRlcpp+v8e2mY3W1hQYApDJ2K660O3OFYUFcOr1U
         3EOiOkvvA8kg3wbF/HU0TCU+MgJrlcxDGLWWQKScHCxhB0PeVFdMzfivIIcfMjJgrQ1z
         zWn22nh1uW0G5IMuKr+lGgQGe3h7r6sjK6aDpNb5zLV1f0rpLpzbNqNG7IdoT4QO9k8h
         ktRJMcik+8B22jpRvuLm+eivy1vv1w16VDDy/2ncBj3SbeuXDEW4Tgldq2ryDnMrixHL
         5UDW4HruZpzxwNt5C1k2vme83grGkEKFcMuEvXrqY01Liqbuq3r9StJJgXSTPpaor9qM
         AytQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530gF5yINYHbI6IpM8eUA/FQ2KwcSHox0e8fRw9oCnOJqJ+2Bu7n
	dR5+cNb/BV4dtRrShVWb6GA=
X-Google-Smtp-Source: ABdhPJwAyPaCzIKJE8NRGonh+rJwMqhl4doNfbX7JbtgWtpT05NgbIHAvv5aQiZKTgPJCGi5Qz9jQA==
X-Received: by 2002:ae9:e70b:: with SMTP id m11mr7859685qka.210.1599745946571;
        Thu, 10 Sep 2020 06:52:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:9c44:: with SMTP id w4ls1507496qve.10.gmail; Thu, 10 Sep
 2020 06:52:26 -0700 (PDT)
X-Received: by 2002:a0c:c385:: with SMTP id o5mr1848221qvi.92.1599745946100;
        Thu, 10 Sep 2020 06:52:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599745946; cv=none;
        d=google.com; s=arc-20160816;
        b=ZZGzYOGydwNqw3lBUngYTHrU0MdzmHihYF//SaUuESgKCQ/FhgjtDkZei9CvjHuMIY
         1HpKAYH/s/Rj4WeS/xV+k1LBcYbihhXd5vPCFjel2C3AwXtLDLIw5BZwtu2UNut7+O3Z
         p4LNyLkUixmd2zbchEI1Lw8GrNbf1O1D40nRvqWK21RmJtQQgP2UWAfSVCbIZ2Jb7G5r
         LOIAesOMh+Pxh81MUI6GfRYTfY6MaLg4jXKVhruuFNyujYa3Bz/O2RgNKySFKR7WxC3C
         o4qH3Ma3mDfxAsJr43C+v5Trzz+pjNu+Cu9p5WJu5mwEkca2J0IUpL0VHtYwo1vdyh1j
         6ghA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature:dkim-filter;
        bh=GfWXsevD+/JY+AqdR3iC3oPYU2Z7Pjb6F8wdpSkfPC0=;
        b=zmksJ1R/FV9NdFS02bYNbtP+veN7PSjc1TeRxubV5RWaK0NVexqOwl9lfhc5yThSAK
         hcZbZLI9KA2u+2t3qonY4YuoJTPdB/lFHLQw7FioOnYhiVgSWBGqjU9Dl7GNne4sxl9S
         YR00HWRY73yzYtdy2lQGkvZYUZN7HjLEQ4W5q+XeeQdeQHHj9yk1k3E8Qse379tR4Y/Y
         baaez5qp9FVyhJV/sge7naqnWgHFEHnCMocnQxE5Ky5oseTdYS34eVbt4CzO4ZG3e5Pm
         8kRiVY1wq5+sLFnFanKY5wk9i/hPUQxRrDeuJxMpLI67vohHFuA9NqWZzIGbGwDYnx0n
         SH8g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=IwK2cMh3;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.77 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-10.nifty.com (conuserg-10.nifty.com. [210.131.2.77])
        by gmr-mx.google.com with ESMTPS id x13si312950qtp.0.2020.09.10.06.52.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 10 Sep 2020 06:52:26 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.77 as permitted sender) client-ip=210.131.2.77;
Received: from oscar.flets-west.jp (softbank126090211135.bbtec.net [126.90.211.135]) (authenticated)
	by conuserg-10.nifty.com with ESMTP id 08ADpSIx001308;
	Thu, 10 Sep 2020 22:51:31 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-10.nifty.com 08ADpSIx001308
X-Nifty-SrcIP: [126.90.211.135]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-kbuild@vger.kernel.org
Cc: Ingo Molnar <mingo@redhat.com>, Masahiro Yamada <masahiroy@kernel.org>,
        Michal Marek <michal.lkml@markovi.net>,
        Nathan Chancellor <natechancellor@gmail.com>,
        Nick Desaulniers <ndesaulniers@google.com>,
        clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org
Subject: [PATCH 3/4] kbuild: remove cc-option test of -fno-stack-check
Date: Thu, 10 Sep 2020 22:51:19 +0900
Message-Id: <20200910135120.3527468-3-masahiroy@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200910135120.3527468-1-masahiroy@kernel.org>
References: <20200910135120.3527468-1-masahiroy@kernel.org>
MIME-Version: 1.0
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=IwK2cMh3;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.77 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Content-Type: text/plain; charset="UTF-8"
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

The minimal compiler versions, GCC 4.9 and Clang 10 support this flag.

Here is the godbolt:
https://godbolt.org/z/59cK6o

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Makefile b/Makefile
index 1b6abecc5cab..5102c89d3167 100644
--- a/Makefile
+++ b/Makefile
@@ -934,7 +934,7 @@ KBUILD_CFLAGS	+= -fno-merge-all-constants
 KBUILD_CFLAGS	+= $(call cc-option,-fmerge-constants)
 
 # Make sure -fstack-check isn't enabled (like gentoo apparently did)
-KBUILD_CFLAGS  += $(call cc-option,-fno-stack-check,)
+KBUILD_CFLAGS  += -fno-stack-check
 
 # conserve stack if available
 KBUILD_CFLAGS   += $(call cc-option,-fconserve-stack)
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200910135120.3527468-3-masahiroy%40kernel.org.
